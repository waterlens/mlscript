package hkmc2
package codegen

import scala.annotation.tailrec

import mlscript.utils.*, shorthands.*
import hkmc2.utils.*
import hkmc2.utils.SymbolSubst
import hkmc2.Message.MessageContext

import syntax.{Literal, Tree, ParamBind}
import semantics.*
import semantics.Elaborator.ctx
import semantics.Elaborator.State

object HandlerLowering:

  private val pcIdent: Tree.Ident = Tree.Ident("pc")
  private val nextIdent: Tree.Ident = Tree.Ident("next")
  private val tailIdent: Tree.Ident = Tree.Ident("tail")
  
  extension (p: Path)
    def pc = p.selN(pcIdent)
    def value = p.selN(Tree.Ident("value"))
    def next = p.selN(nextIdent)
    def tail = p.selN(tailIdent)
  
  private case class LinkState(res: Path, cls: Path, uid: StateId)
  
  // isHandleFree: whether the current block is inside a function or top level directly free of any handler in scope
  // isTopLevel:
  // whether the current block is the top level block, as we do not emit code for continuation class on the top level
  // since we cannot return an effect signature on the top level (we are not in a function so return statement are invalid)
  // and we do not have any `return` statement in the top level block so we do not need the `ReturnCont` workarounds.
  // ctorThis: the path to `this` in the constructor, this is used to insert `return this;` at the end of constructor.
  // linkAndHandle:
  // a function that takes a LinkState and returns a block that links the continuation class and handles the effect
  // this is a convenience function which initializes the continuation class in function context or throw an error in top level
  private case class HandlerCtx(
    isHandleFree: Bool,
    isTopLevel: Bool,
    ctorThis: Option[Path],
    linkAndHandle: LinkState => Block
  )
  
  type StateId = BigInt

import HandlerLowering.*

class HandlerLowering(using TL, Raise, Elaborator.State, Elaborator.Ctx):

  private def funcLikeHandlerCtx(ctorThis: Option[Path]) =
    HandlerCtx(true, false, ctorThis, state =>
      val tmp = freshTmp()
      blockBuilder
        .assignFieldN(state.res.tail, nextIdent, Instantiate(
          state.cls.selN(Tree.Ident("class")),
          Value.Lit(Tree.IntLit(state.uid)) :: Nil))
        .assignFieldN(state.res, tailIdent, state.res.tail.next)
        .ret(state.res))
  private val functionHandlerCtx = funcLikeHandlerCtx(N)
  private def ctorCtx(ctorThis: Path) = funcLikeHandlerCtx(S(ctorThis))
  private def handlerCtx(using HandlerCtx): HandlerCtx = summon
  private val predefPath: Path = State.globalThisSymbol.asPath.selN(Tree.Ident("Predef"))
  private val predefSym: ModuleSymbol = ctx.Builtins.Predef
  private val effectSigPath: Path = predefPath.selN(Tree.Ident("__EffectSig")).selN(Tree.Ident("class"))
  private val effectSigSym: ClassSymbol = predefSym.tree.definedSymbols.get("__EffectSig").get.asCls.get
  private val contClsPath: Path = predefPath.selN(Tree.Ident("__Cont")).selN(Tree.Ident("class"))
  private val retClsPath: Path = predefPath.selN(Tree.Ident("__Return")).selN(Tree.Ident("class"))
  private val retClsSym: ClassSymbol = predefSym.tree.definedSymbols.get("__Return").get.asCls.get
  private val appendInContPath: Path = predefPath.selN(Tree.Ident("__appendInCont"))
  private val mkEffectPath: Path = predefPath.selN(Tree.Ident("__mkEffect"))
  private val handleBlockImplPath: Path = predefPath.selN(Tree.Ident("__handleBlockImpl"))
  
  private def freshTmp(dbgNme: Str = "tmp") = new TempSymbol(N, dbgNme)
  
  private def rtThrowMsg(msg: Str) = Throw(
    Instantiate(State.globalThisSymbol.asPath.selN(Tree.Ident("Error")),
    Value.Lit(Tree.StrLit(msg)) :: Nil)
  )
  
  object PureCall:
    def apply(fun: Path, args: List[Path]) = Call(fun, args.map(Arg(false, _)))(true, false)
    def unapply(res: Result) = res match
      case Call(fun, args) => args.foldRight[Opt[List[Path]]](S(Nil)): (arg, acc) =>
          acc.flatMap: acc =>
            arg match
              case Arg(false, p) => S(p :: acc)
              case _ => N
        .map((fun, _))
      case _ => N
  
  object ResumptionPoint:
    private val resumptionSymbol = freshTmp("resumptionPoint")
    def apply(res: Local, uid: StateId, rest: Block) =
      Assign(res, PureCall(Value.Ref(resumptionSymbol), List(Value.Lit(Tree.IntLit(uid)))), rest)
    def unapply(blk: Block) = blk match
      case Assign(res, PureCall(Value.Ref(`resumptionSymbol`), List(Value.Lit(Tree.IntLit(uid)))), rest) =>
        Some(res, uid, rest)
      case _ => None
  
  object ReturnCont:
    private val returnContSymbol = freshTmp("returnCont")
    def apply(res: Local, uid: StateId) =
      Assign(res, PureCall(Value.Ref(returnContSymbol), List(Value.Lit(Tree.IntLit(uid)))), End(""))
    def unapply(blk: Block) = blk match
      case Assign(res, PureCall(Value.Ref(`returnContSymbol`), List(Value.Lit(Tree.IntLit(uid)))), _) => 
        Some(res, uid)
      case _ => None
  
  // placeholder for effectful Results, such as Call, Instantiate and anything else that could
  // return a continuation
  object ResultPlaceholder:
    private val callSymbol = freshTmp("resultPlaceholder")
    def apply(res: Local, uid: StateId, canRet: Bool, r: Result, rest: Block) =
      Assign(
        res,
        PureCall(Value.Ref(callSymbol), List(Value.Lit(Tree.IntLit(uid)), Value.Lit(Tree.BoolLit(canRet)))),
        Assign(res, r, rest))
    def unapply(blk: Block) = blk match
      case Assign(
          res,
          PureCall(Value.Ref(`callSymbol`), List(Value.Lit(Tree.IntLit(uid)), Value.Lit(Tree.BoolLit(canRet)))),
          Assign(_, c, rest)) =>
        Some(res, uid, canRet, c, rest)
      case _ => None
  
  object StateTransition:
    private val transitionSymbol = freshTmp("transition")
    def apply(uid: StateId) =
      Return(PureCall(Value.Ref(transitionSymbol), List(Value.Lit(Tree.IntLit(uid)))), false)
    def unapply(blk: Block) = blk match
      case Return(PureCall(Value.Ref(`transitionSymbol`), List(Value.Lit(Tree.IntLit(uid)))), false) =>
        S(uid)
      case _ => N
  
  object FnEnd:
    private val fnEndSymbol = freshTmp("fnEnd")
    def apply() = Return(PureCall(Value.Ref(fnEndSymbol), Nil), false)
    def unapply(blk: Block) = blk match
      case Return(PureCall(Value.Ref(`fnEndSymbol`), Nil), false) => true
      case _ => false
  
  private class FreshId:
    var id: Int = 0
    def apply() =
      val tmp = id
      id += 1
      tmp
  private val freshId = FreshId()
  
  // id: the id of the current state
  // blk: the block of code within this state
  // sym: the variable to which the resumed value should set
  class BlockState(val id: StateId, val blk: Block, val sym: Opt[Local])
  
  // does not include the entry point
  def partitionBlock(blk: Block, labelIds: Map[Symbol, (StateId, StateId)] = Map.empty): Ls[BlockState] = 
    // for readability :)
    case class PartRet(head: Block, states: Ls[BlockState])

    // * returns (truncated input block, child block states)
    // * blk: The block to transform
    // * labelIds: maps label IDs to the state at the start of the label and the state after the label
    // * jumpTo: what state End should jump to, if at all 
    // * freshState: uid generator
    // TODO: don't split within Match, Begin and Labels when not needed, ideally keep it intact.
    // Need careful analysis for this.
    def go(blk: Block)(implicit labelIds: Map[Symbol, (StateId, StateId)], afterEnd: Option[StateId]): PartRet =
      blk match
      case ResumptionPoint(result, uid, rest) =>
        val PartRet(head, states) = go(rest)
        PartRet(StateTransition(uid), BlockState(uid, head, S(result)) :: states)

      case Match(scrut, arms, dflt, rest) => 
        val restParts = go(rest)
        val restId: StateId = restParts.head match
          case StateTransition(uid) => uid
          case _ => freshId()
        
        val armsParts = arms.map((cse, blkk) => (cse, go(blkk)(afterEnd = S(restId))))
        val dfltParts = dflt.map(blkk => go(blkk)(afterEnd = S(restId)))

        val states_ = restParts.states ::: armsParts.flatMap(_._2.states)
        val states = dfltParts match
          case N => states_
          case S(value) => value.states ::: states_

        val newArms = armsParts.map((cse, partRet) => (cse, partRet.head))
        
        restParts.head match
          case StateTransition(_) =>
            PartRet(
              Match(scrut, newArms, dfltParts.map(_.head), StateTransition(restId)),
              states
            )
          case _ =>
            PartRet(
              Match(scrut, newArms, dfltParts.map(_.head), StateTransition(restId)),
              BlockState(restId, restParts.head, N) :: states
            )
      case l @ Label(label, body, rest) =>
        val startId = freshId() // start of body

        val PartRet(restNew, restParts) = go(rest)

        val endId: StateId = restNew match // start of rest
          case StateTransition(uid) => uid 
          case _ => freshId()

        val PartRet(bodyNew, parts) = go(body)(using labelIds + (label -> (startId, endId)), S(endId))
        
        restNew match
          case StateTransition(_) =>
            PartRet(
              StateTransition(startId), 
              BlockState(startId, bodyNew, N) :: parts ::: restParts
            )
          case _ =>
            PartRet(
              StateTransition(startId), 
              BlockState(startId, bodyNew, N) :: BlockState(endId, restNew, N) :: parts ::: restParts
            )

      case Break(label) =>
        val (start, end) = labelIds.get(label) match
          case N => raise(InternalError(
            msg"Could not find label '${label.nme}'" ->
            label.toLoc :: Nil,
            source = Diagnostic.Source.Compilation))
            return PartRet(blk, Nil)
          case S(value) => value
        PartRet(StateTransition(end), Nil)
      case Continue(label) =>
        val (start, end) = labelIds.get(label) match
          case N => raise(InternalError(
            msg"Could not find label '${label.nme}'" ->
            label.toLoc :: Nil,
            source = Diagnostic.Source.Compilation))
            return PartRet(blk, Nil)
          case S(value) => value
        PartRet(StateTransition(start), Nil)

      case Begin(sub, rest) => 
        val PartRet(restNew, restParts) = go(rest)
        restNew match
          case StateTransition(uid) => 
            val PartRet(subNew, subParts) = go(sub)(afterEnd = S(uid))
            PartRet(subNew, subParts ::: restParts)
          case _ =>
            val restId = freshId()
            val PartRet(subNew, subParts) = go(sub)(afterEnd = S(restId))
            PartRet(subNew, BlockState(restId, restNew, N) :: subParts ::: restParts)

      case Define(defn, rest) => 
        val PartRet(head, parts) = go(rest)
        PartRet(Define(defn, head), parts)
      // implicit returns is used inside constructors when call occur in tail position,
      // which may transition to `return this;` (inserted in second pass) after the implicit return
      case End(_) | Return(_, true) => afterEnd match
        case None => PartRet(FnEnd(), Nil)
        case Some(value) => PartRet(StateTransition(value), Nil)
      // identity cases
      case Assign(lhs, rhs, rest) =>
        val PartRet(head, parts) = go(rest)
        PartRet(Assign(lhs, rhs, head), parts)
      case blk @ AssignField(lhs, nme, rhs, rest) =>
        val PartRet(head, parts) = go(rest)
        PartRet(AssignField(lhs, nme, rhs, head)(blk.symbol), parts)
      case Return(_, _) => PartRet(blk, Nil)
      // ignored cases
      case TryBlock(sub, finallyDo, rest) => ??? // ignore
      case Throw(_) => PartRet(blk, Nil)
      case _: HandleBlock => lastWords("unexpected handleBlock") // already translated at this point
      case _: HandleBlockReturn => lastWords("unexpected handleBlockReturn") // already translated at this point

    val result = go(blk)(using labelIds, N)
    result.states
  
  /**
   * The actual translation:
   * 1. add call markers, transform class, function, lambda and sub handler blocks
   * 2.
   *   a) generate continuation class
   *   b) generate normal function body
   * 3. float out definitions
   */
  
  private def translateBlock(b: Block, h: HandlerCtx): Block =
    given HandlerCtx = h
    val stage1 = firstPass(b)
    val stage2 = secondPass(stage1)
    if h.isTopLevel then stage2 else thirdPass(stage2)
  
  private def firstPass(b: Block)(using HandlerCtx): Block =
    val transformer = new BlockTransformerShallow(SymbolSubst()):
      override def applyBlock(b: Block) = b match
        case b: HandleBlock =>
          val rest = applyBlock(b.rest)
          translateHandleBlock(b.copy(rest = rest))
        // This block optimizes tail-calls in the handler transformation. We do not optimize implicit returns.
        // Implicit returns are used in top level and constructor:
        // For top level, this correspond to the last statement which should also be checked for effect.
        // For constructor, we will append `return this;` after the implicit return so it is not a tail call.
        case Return(c @ Call(fun, args), false) if handlerCtx.isHandleFree =>
          val fun2 = applyPath(fun)
          val args2 = args.mapConserve(applyArg)
          val c2 = if (fun2 is fun) && (args2 is args) then c else Call(fun2, args2)(c.isMlsFun, c.mayRaiseEffects)
          if c2 is c then b else Return(c2, false)
        // Optimization to avoid generation of unnecessary variables
        case Assign(lhs, c @ Call(fun, args), rest) if c.mayRaiseEffects =>
          val fun2 = applyPath(fun)
          val args2 = args.mapConserve(applyArg)
          val c2 = if (fun2 is fun) && (args2 is args) then c else Call(fun2, args2)(c.isMlsFun, c.mayRaiseEffects)
          ResultPlaceholder(lhs, freshId(), !handlerCtx.isHandleFree, c2, applyBlock(rest))
        case Assign(lhs, c @ Instantiate(cls, args), rest) =>
          val cls2 = applyPath(cls)
          val args2 = args.mapConserve(applyPath)
          val c2 = if (cls2 is cls) && (args2 is args) then c else Instantiate(cls2, args2)
          ResultPlaceholder(lhs, freshId(), !handlerCtx.isHandleFree, c2, applyBlock(rest))
        case _ => super.applyBlock(b)
      override def applyResult2(r: Result)(k: Result => Block): Block = r match
        case c @ Call(fun, args) if c.mayRaiseEffects =>
          val res = freshTmp("res")
          val fun2 = applyPath(fun)
          val args2 = args.mapConserve(applyArg)
          val c2 = if (fun2 is fun) && (args2 is args) then c else Call(fun2, args2)(c.isMlsFun, c.mayRaiseEffects)
          ResultPlaceholder(res, freshId(), !handlerCtx.isHandleFree, c2, k(Value.Ref(res)))
        case c @ Instantiate(cls, args) =>
          val res = freshTmp("res")
          val cls2 = applyPath(cls)
          val args2 = args.mapConserve(applyPath)
          val c2 = if (cls2 is cls) && (args2 is args) then c else Instantiate(cls2, args2)
          ResultPlaceholder(res, freshId(), !handlerCtx.isHandleFree, c2, k(Value.Ref(res)))
        case r => super.applyResult2(r)(k)
      override def applyLam(lam: Value.Lam): Value.Lam = Value.Lam(lam.params, translateBlock(lam.body, functionHandlerCtx))
      override def applyDefn(defn: Defn): Defn = defn match
        case f: FunDefn => translateFun(f)
        case c: ClsLikeDefn => translateCls(c)
        case _: ValDefn => super.applyDefn(defn)
    transformer.applyBlock(b)
  
  private def secondPass(b: Block)(using HandlerCtx): Block =
    val cls = if handlerCtx.isTopLevel then N else genContClass(b)
    cls match
      case None => genNormalBody(b, BlockMemberSymbol("", Nil))
      case Some(cls) => Define(cls, genNormalBody(b, cls.sym))
  
  // moves definitions to the top level of the block
  private def thirdPass(b: Block): Block =
    // to ensure the fun and class references in the continuation class are properly scoped,
    // we move all function defns to the top level of the handler block
    val (blk, defns) = b.floatOutDefns
    defns.foldLeft(blk)((acc, defn) => Define(defn, acc))
  
  private def translateFun(f: FunDefn): FunDefn =
    FunDefn(f.owner, f.sym, f.params, translateBlock(f.body, functionHandlerCtx))
  
  private def translateCls(cls: ClsLikeDefn): ClsLikeDefn =
    cls.copy(methods = cls.methods.map(translateFun),
      ctor = translateBlock(cls.ctor, ctorCtx(cls.sym.asClsLike.getOrElse(wat("asClsLike", cls.sym)).asPath)))
  
  // Handle block becomes a FunDefn and CallPlaceholder
  private def translateHandleBlock(h: HandleBlock): Block =
    val sym = BlockMemberSymbol(s"handleBlock$$", Nil)
    val lbl = freshTmp("handlerBody")
    val lblLoop = freshTmp("handlerLoop")
    val tmp = freshTmp("retCont")
    def prepareBody(b: Block): Block =
      
      val transform = new BlockTransformerShallow(SymbolSubst()):
        override def applyBlock(b: Block): Block = 
          b match
          case Return(res, implct) =>
            // In case res is effectful, it will be handled in translateBlock
            Assign(tmp, res, Return(Instantiate(retClsPath, tmp.asPath :: Nil), implct))
          case HandleBlockReturn(res) =>
            Return(res, false)
          case _ => super.applyBlock(b)
      transform.applyBlock(b)
    
    val handlerBody = translateBlock(prepareBody(h.body), HandlerCtx(false, false, N, state => blockBuilder
      .assignFieldN(state.res.tail, nextIdent, Instantiate(state.cls, Value.Lit(Tree.IntLit(state.uid)) :: Nil))
      .ret(PureCall(handleBlockImplPath, state.res :: h.lhs.asPath :: Nil))))
    
    val handlers = h.handlers.map: handler =>
      val lam = Value.Lam(
        PlainParamList(Param(FldFlags.empty, handler.resumeSym, N) :: Nil),
        translateBlock(handler.body, functionHandlerCtx.copy(isHandleFree = false)))
      val tmp = freshTmp()
      FunDefn(
        S(h.cls),
        handler.sym, handler.params, Return(PureCall(mkEffectPath, h.lhs.asPath :: lam :: Nil), false))
    
    val clsDefn = ClsLikeDefn(
      N, // no owner
      h.cls,
      BlockMemberSymbol(h.cls.id.name, Nil),
      syntax.Cls,
      N,
      S(h.par), handlers, Nil, Nil,
      Assign(freshTmp(), Call(Value.Ref(State.builtinOpsMap("super")), h.args.map(_.asArg))(true, true), End()), End()) // TODO: handle effect in super call
    // NOTE: the super call is inside the preCtor
    // during resumption we need to resume both the this.x = x bindings done in JSBuilder and the ctor
    
    val body = blockBuilder
      .define(clsDefn)
      .assign(h.lhs, Instantiate(Value.Ref(clsDefn.sym), Nil))
      .rest(handlerBody)
    
    val defn = FunDefn(
      N, // no owner
      sym, PlainParamList(Nil) :: Nil, body)
    
    val result = Define(defn, ResultPlaceholder(h.res, freshId(), true, Call(sym.asPath, Nil)(true, true), h.rest))
    result
  
  private def genContClass(b: Block)(using HandlerCtx): Opt[ClsLikeDefn] =
    val clsSym = ClassSymbol(
      Tree.DummyTypeDef(syntax.Cls),
      Tree.Ident("Cont$")
    )
    
    val pcVar = VarSymbol(Tree.Ident("pc"))
    
    var trivial = true
    def prepareBlock(b: Block): Block =
      val transform = new BlockTransformerShallow(SymbolSubst()):
        override def applyBlock(b: Block): Block = b match
          case Define(_: (ClsLikeDefn | FunDefn), rst) => applyBlock(rst)
          case ResultPlaceholder(res, uid, canRet, c, rest) =>
            trivial = false
            blockBuilder
              .assign(res, c)
              .ifthen(
                res.asPath,
                Case.Cls(effectSigSym, effectSigPath),
                ReturnCont(res, uid)
              )
              .chain(ResumptionPoint(res, uid, _))
              .staticif(canRet, _.ifthen(
                res.asPath,
                Case.Cls(retClsSym, retClsPath),
                blockBuilder.ret(if handlerCtx.isHandleFree then res.asPath.value else res.asPath)
              ))
              .rest(applyBlock(rest))
          case _ => super.applyBlock(b)
      transform.applyBlock(b)
    val actualBlock = handlerCtx.ctorThis match
      case N => prepareBlock(b)
      case S(thisPath) => Begin(prepareBlock(b), Return(thisPath, false))
    if trivial then return N
    
    val parts = partitionBlock(actualBlock)
    val loopLbl = freshTmp("contLoop")
    val pcSymbol = TermSymbol(ParamBind, S(clsSym), pcIdent)
    
    def transformPart(blk: Block): Block = 
      val transform = new BlockTransformerShallow(SymbolSubst()):
        override def applyBlock(b: Block): Block = b match
          case ReturnCont(res, uid) =>
            blockBuilder
              .assign(pcSymbol, Value.Lit(Tree.IntLit(uid)))
              .ret(PureCall(appendInContPath, res.asPath :: clsSym.asPath :: Nil))
          case StateTransition(uid) =>
            blockBuilder
              .assign(pcSymbol, Value.Lit(Tree.IntLit(uid)))
              .continue(loopLbl)
          case FnEnd() =>
            blockBuilder.break(loopLbl)
          case _ => super.applyBlock(b)
      transform.applyBlock(blk)

    // match block representing the function body
    val mainMatchCases = parts.toList.map(b => (Case.Lit(Tree.IntLit(b.id)), transformPart(b.blk)))
    val mainMatchBlk = Match(
      pcSymbol.asPath,
      mainMatchCases,
      N,
      End()
    )

    val lbl = blockBuilder.label(loopLbl, mainMatchBlk).rest(End())
    
    val resumedVal = VarSymbol(Tree.Ident("value$"))

    def createAssignment(sym: Local) = Assign(sym, resumedVal.asPath, End())
    
    val assignedResumedCases = for 
      b   <- parts
      sym <- b.sym
    yield Case.Lit(Tree.IntLit(b.id)) -> createAssignment(sym) // NOTE: assume sym is in localsMap

    // assigns the resumed value
    val resumeBody = 
      if assignedResumedCases.isEmpty then
        lbl
      else
        Match(
          pcSymbol.asPath,
          assignedResumedCases,
          N,
          lbl
        )
    
    val resumeSym = BlockMemberSymbol("resume", List())
    val resumeFnDef = FunDefn(
      S(clsSym), // owner
      resumeSym,
      List(PlainParamList(List(Param(FldFlags.empty, resumedVal, N)))),
      resumeBody
    )
    
    S(ClsLikeDefn(
      N, // no owner
      clsSym,
      BlockMemberSymbol(clsSym.nme, Nil),
      syntax.Cls,
      S(PlainParamList(Param(FldFlags.empty, pcVar, N) :: Nil)),
      S(contClsPath),
      resumeFnDef :: Nil,
      Nil,
      Nil,
      Assign(freshTmp(), PureCall(
        Value.Ref(State.builtinOpsMap("super")), // refers to Predef.__Cont which is pure
        Value.Lit(Tree.UnitLit(true)) :: Value.Lit(Tree.UnitLit(true)) :: Nil), End()),
      End()))
  
  private def genNormalBody(b: Block, clsSym: BlockMemberSymbol)(using HandlerCtx): Block =
    val transform = new BlockTransformerShallow(SymbolSubst()):
      override def applyBlock(b: Block): Block = b match
        case ResultPlaceholder(res, uid, canRet, c, rest) =>
          blockBuilder
            .assign(res, c)
            .ifthen(
              res.asPath,
              Case.Cls(effectSigSym, effectSigPath),
              handlerCtx.linkAndHandle(LinkState(res.asPath, clsSym.asPath, uid))
            )
            .staticif(canRet && !handlerCtx.isTopLevel, _.ifthen(
              res.asPath,
              Case.Cls(retClsSym, retClsPath),
              blockBuilder.ret(if handlerCtx.isHandleFree then res.asPath.value else res.asPath)
            ))
            .rest(applyBlock(rest))
        case _ => super.applyBlock(b)
    
    transform.applyBlock(b)

  def translateTopLevel(b: Block): Block =
    translateBlock(b, HandlerCtx(true, true, N, _ => rtThrowMsg("Unhandled effects")))
    
