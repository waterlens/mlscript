package hkmc2
package codegen
package llir

import scala.collection.mutable.ListBuffer
import scala.collection.mutable.{HashMap => MutMap}

import mlscript.utils.*
import mlscript.utils.shorthands.*
import hkmc2.utils.*
import hkmc2.document.*
import hkmc2.Message.MessageContext

import hkmc2.syntax.Tree
import hkmc2.semantics.*
import hkmc2.codegen.llir.{ Program => LlirProgram, Node, Func }
import hkmc2.codegen.Program
import hkmc2.codegen.cpp.Expr.StrLit


def err(msg: Message)(using Raise): Unit =
  raise(ErrorReport(msg -> N :: Nil,
    source = Diagnostic.Source.Compilation))

def errStop(msg: Message)(using Raise) =
  err(msg)
  throw LowLevelIRError("stopped")

final case class FuncInfo(paramsSize: Int)

final case class BuiltinSymbols(
  var callableSym: Opt[Local] = None,
  var thisSym: Opt[Local] = None,
  var builtinSym: Opt[Local] = None,
  fieldSym: MutMap[Int, Local] = MutMap.empty,
  applySym: MutMap[Int, Local] = MutMap.empty,
  tupleSym: MutMap[Int, Local] = MutMap.empty,
):
  def hiddenClasses = callableSym.toSet

final case class Ctx(
  def_acc: ListBuffer[Func],
  class_acc: ListBuffer[ClassInfo],
  symbol_ctx: Map[Local, Local] = Map.empty,
  fn_ctx: Map[Local, FuncInfo] = Map.empty, // is a known function
  class_ctx: Map[Local, ClassInfo] = Map.empty,
  flow_ctx: Map[Path, Local] = Map.empty,
  is_top_level: Bool = true,
  method_class: Opt[Symbol] = None,
  free_vars: Set[Local] = Set.empty,
  builtin_sym: BuiltinSymbols = BuiltinSymbols()
):
  def addFuncName(n: Local, paramsSize: Int) = copy(fn_ctx = fn_ctx + (n -> FuncInfo(paramsSize)))
  def findFuncName(n: Local)(using Raise) = fn_ctx.get(n) match
    case None => errStop(msg"Function name not found: ${n.toString()}")
    case Some(value) => value
  def addClassInfo(n: Local, m: ClassInfo) = copy(class_ctx = class_ctx + (n -> m))
  def addName(n: Local, m: Local) = copy(symbol_ctx = symbol_ctx + (n -> m))
  def findName(n: Local)(using Raise) = symbol_ctx.get(n) match
    case None => errStop(msg"Name not found: ${n.toString}")
    case Some(value) => value
  def findClassInfo(n: Local)(using Raise) = class_ctx.get(n) match
    case None => errStop(msg"Class not found: ${n.toString}")
    case Some(value) => value
  def addKnownClass(n: Path, m: Local) = copy(flow_ctx = flow_ctx + (n -> m))
  def setClass(c: Symbol) = copy(method_class = Some(c))
  def setFreeVars(n: Set[Local]) = copy(free_vars = free_vars)
  def nonTopLevel = copy(is_top_level = false)

object Ctx:
  def empty = Ctx(ListBuffer.empty, ListBuffer.empty)

final class LlirBuilder(using Elaborator.State)(tl: TraceLogger, uid: FreshInt):
  import tl.{trace, log, logs}
  
  def er = Expr.Ref
  def nr = Node.Result
  def sr(x: Local) = er(x)
  def nsr(xs: Ls[Local]) = xs.map(er(_))

  private def allocIfNew(l: Local)(using Raise, Scope): String =
    trace[Str](s"allocIfNew begin: $l", x => s"allocIfNew end: $x"):
      if summon[Scope].lookup(l).isDefined then
        getVar_!(l)
      else
        summon[Scope].allocateName(l)

  private def getVar_!(l: Local)(using Raise, Scope): String =
    trace[Str](s"getVar_! begin", x => s"getVar_! end: $x"):
      l match
      case ts: semantics.TermSymbol =>
        ts.owner match
        case S(owner) => ts.id.name
        case N =>
          ts.id.name
      case ts: semantics.BlockMemberSymbol => // this means it's a locally-defined member
        ts.nme
      case ts: semantics.InnerSymbol =>
        summon[Scope].findThis_!(ts)
      case _ => summon[Scope].lookup_!(l)
  
  private def freeVarsFilter(fvs: Set[Local]) =
    trace[Set[Local]](s"freeVarsFilter begin", x => s"freeVarsFilter end: $x"):
      fvs.filter:
        case _: (BuiltinSymbol | TopLevelSymbol | ClassSymbol | MemberSymbol[?]) => false
        case x => true

  private def symMap(s: Local)(using ctx: Ctx)(using Raise, Scope) =
    ctx.findName(s)

  private def newTemp = TempSymbol(N, "x")
  private def newNamedTemp(name: Str) = TempSymbol(N, name)
  private def newNamed(name: Str) = VarSymbol(Tree.Ident(name))
  private def newClassSym(name: Str) =
    ClassSymbol(Tree.TypeDef(hkmc2.syntax.Cls, Tree.Empty(), N, N), Tree.Ident(name))
  private def newTupleSym(len: Int) =
    ClassSymbol(Tree.TypeDef(hkmc2.syntax.Cls, Tree.Empty(), N, N), Tree.Ident(s"Tuple$len"))
  private def newMemSym(name: Str) = TermSymbol(hkmc2.syntax.ImmutVal, None, Tree.Ident(name))
  private def newMethodSym(name: Str) = TermSymbol(hkmc2.syntax.Fun, None, Tree.Ident(name))
  private def newBuiltinSym(name: Str) = BuiltinSymbol(name, false, false, false, false)
  private def builtinField(n: Int)(using Ctx) = summon[Ctx].builtin_sym.fieldSym.getOrElseUpdate(n, newMemSym(s"field$n"))
  private def builtinApply(n: Int)(using Ctx) = summon[Ctx].builtin_sym.applySym.getOrElseUpdate(n, newMethodSym(s"apply$n"))
  private def builtinTuple(n: Int)(using Ctx) = summon[Ctx].builtin_sym.tupleSym.getOrElseUpdate(n, newTupleSym(n))
  private def builtinCallable(using ctx: Ctx) : Local =
    ctx.builtin_sym.callableSym match
      case None => 
        val sym = newBuiltinSym("Callable")
        ctx.builtin_sym.callableSym = Some(sym);
        sym
      case Some(value) => value
  private def builtinThis(using ctx: Ctx) : Local =
    ctx.builtin_sym.thisSym match
      case None => 
        val sym = newBuiltinSym("<this>")
        ctx.builtin_sym.thisSym = Some(sym);
        sym
      case Some(value) => value
  private def builtin(using ctx: Ctx) : Local =
    ctx.builtin_sym.builtinSym match
      case None => 
        val sym = newBuiltinSym("<builtin>")
        ctx.builtin_sym.builtinSym = Some(sym);
        sym
      case Some(value) => value

  private def bBind(name: Opt[Local], e: Result, body: Block)(k: TrivialExpr => Ctx ?=> Node)(ct: Block)(using ctx: Ctx)(using Raise, Scope): Node =
    trace[Node](s"bBind begin: $name", x => s"bBind end: ${x.show}"):
      bResult(e):
        case r: Expr.Ref =>
          given Ctx = ctx.addName(name.getOrElse(newTemp), r.sym)
          log(s"bBind ref: $name -> $r")
          bBlock(body)(k)(ct)
        case l: Expr.Literal =>
          val v = newTemp
          given Ctx = ctx.addName(name.getOrElse(newTemp), v)
          log(s"bBind lit: $name -> $v")
          Node.LetExpr(v, l, bBlock(body)(k)(ct))
  
  private def bArgs(e: Ls[Arg])(k: Ls[TrivialExpr] => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope): Node =
    trace[Node](s"bArgs begin", x => s"bArgs end: ${x.show}"):
      e match
      case Nil => k(Nil)
      case Arg(spread, x) :: xs => bPath(x):
        case r: TrivialExpr => bArgs(xs):
          case rs: Ls[TrivialExpr] => k(r :: rs)
  
  private def bPaths(e: Ls[Path])(k: Ls[TrivialExpr] => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope): Node =
    trace[Node](s"bArgs begin", x => s"bArgs end: ${x.show}"):
      e match
      case Nil => k(Nil)
      case x :: xs => bPath(x):
        case r: TrivialExpr => bPaths(xs):
          case rs: Ls[TrivialExpr] => k(r :: rs)
  
  private def bNestedFunDef(e: FunDefn)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope): Node =
    val FunDefn(_own, sym, params, body) = e
    // generate it as a single named lambda expression that may be self-recursing
    if params.length == 0 then
      errStop(msg"Function without arguments not supported: ${params.length.toString}")
    else
      val fstParams = params.head
      val wrappedLambda = params.tail.foldRight(body)((params, acc) => Return(Value.Lam(params, acc), false))
      bLam(Value.Lam(fstParams, wrappedLambda), S(sym.nme), S(sym))(k)(using ctx)

  private def bFunDef(e: FunDefn)(using ctx: Ctx)(using Raise, Scope): Func =
    trace[Func](s"bFunDef begin: ${e.sym}", x => s"bFunDef end: ${x.show}"):
      val FunDefn(_own, sym, params, body) = e
      assert(ctx.is_top_level)
      if params.length == 0 then
        errStop(msg"Function without arguments not supported: ${params.length.toString}")
      else 
        val paramsList = params.head.params
        val ctx2 = paramsList.foldLeft(ctx)((acc, x) => acc.addName(x.sym, x.sym)).nonTopLevel
        val pl = paramsList.map(_.sym)
        val wrappedLambda = params.tail.foldRight(body)((params, acc) => Return(Value.Lam(params, acc), false))
        Func(
          uid.make, sym, params = pl, resultNum = 1,
          body = bBlockWithEndCont(wrappedLambda)(x => Node.Result(Ls(x)))(using ctx2)
        )

  private def bMethodDef(e: FunDefn)(using ctx: Ctx)(using Raise, Scope): Func =
    trace[Func](s"bFunDef begin: ${e.sym}", x => s"bFunDef end: ${x.show}"):
      val FunDefn(_own, sym, params, body) = e
      if !ctx.is_top_level then
        errStop(msg"Non top-level definition ${sym.nme} not supported")
      else if params.length == 0 then
        errStop(msg"Function without arguments not supported: ${params.length.toString}")
      else 
        val paramsList = params.head.params
        val ctx2 = paramsList.foldLeft(ctx)((acc, x) => acc.addName(x.sym, x.sym)).nonTopLevel
        val pl = paramsList.map(_.sym)
        val wrappedLambda = params.tail.foldRight(body)((params, acc) => Return(Value.Lam(params, acc), false))
        Func(
          uid.make, sym, params = pl, resultNum = 1,
          body = bBlockWithEndCont(wrappedLambda)(x => Node.Result(Ls(x)))(using ctx2)
        )

  private def bClsLikeDef(e: ClsLikeDefn)(using ctx: Ctx)(using Raise, Scope): ClassInfo =
    trace[ClassInfo](s"bClsLikeDef begin", x => s"bClsLikeDef end: ${x.show}"):
      val ClsLikeDefn(
        _own, isym, _sym, kind, paramsOpt, parentSym, methods, privateFields, publicFields, preCtor, ctor) = e
      if !ctx.is_top_level then
        errStop(msg"Non top-level definition ${isym.toString()} not supported")
      else
        val clsDefn = isym.defn.getOrElse(die)
        val clsParams = paramsOpt.fold(Nil)(_.paramSyms)
        val clsFields = publicFields.map(_.sym)
        given Ctx = ctx.setClass(isym)
        val funcs = methods.map(bMethodDef)
        def parentFromPath(p: Path): Set[Local] = p match
          case Value.Ref(l) => Set(fromMemToClass(l))
          case Select(Value.Ref(l), Tree.Ident("class")) => Set(fromMemToClass(l))
          case _ => errStop(msg"Unsupported parent path ${p.toString()}")
        ClassInfo(
          uid.make,
          isym,
          clsParams ++ clsFields,
          parentSym.fold(Set.empty)(parentFromPath),
          funcs.map(f => f.name -> f).toMap,
        )
  
  private def bLam(lam: Value.Lam, nameHint: Opt[Str], recName: Opt[Local])(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bLam begin", x => s"bLam end: ${x.show}"):
      val Value.Lam(params, body) = lam
      // Generate an auxiliary class inheriting from Callable
      val freeVars = freeVarsFilter(lam.freeVars -- lam.body.definedVars -- ctx.fn_ctx.keySet)
      val name = newClassSym(s"Lambda${nameHint.fold("")(x => "_" + x)}")
      val args = freeVars.toList.map(symMap)
      val clsParams = args
      val ctx2 = ctx.setFreeVars(freeVars)
      val applyParams = params.params.map(x => x -> x.sym)
      val ctx3 = applyParams.foldLeft(ctx2)((acc, x) => acc.addName(x._1.sym, x._1.sym)).nonTopLevel
      val ctx4 = recName.fold(ctx3)(x => ctx3.addName(x, builtinThis))
      val pl = applyParams.map(_._1.sym)
      val method = Func(
        uid.make,
        builtinApply(params.params.length),
        params = pl,
        resultNum = 1,
        body = bBlockWithEndCont(body)(x => Node.Result(Ls(x)))(using ctx4)
      )
      ctx.class_acc += ClassInfo(
        uid.make,
        name,
        clsParams,
        Set(builtinCallable),
        Map(method.name -> method),
      )
      val v: Local = newTemp
      val new_ctx = recName.fold(ctx)(x => ctx.addName(x, v))
      Node.LetExpr(v, Expr.CtorApp(name, args.map(sr)), k(v |> sr)(using new_ctx))

  private def bValue(v: Value)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bValue { $v } begin", x => s"bValue end: ${x.show}"):
      v match
      case Value.Ref(l: TermSymbol) if l.owner.nonEmpty =>
        k(l |> sr)
      case Value.Ref(sym) if sym.nme.isCapitalized =>
        val v: Local = newTemp
        Node.LetExpr(v, Expr.CtorApp(fromMemToClass(sym), Ls()), k(v |> sr))
      case Value.Ref(l) => 
        ctx.fn_ctx.get(l) match
          case Some(f) =>
            val tempSymbols = (0 until f.paramsSize).map(x => newNamed("arg"))
            val paramsList = PlainParamList(
              (0 until f.paramsSize).zip(tempSymbols).map((_n, sym) =>
                Param(FldFlags.empty, sym, N)).toList)
            val app = Call(v, tempSymbols.map(x => Arg(false, Value.Ref(x))).toList)(true, false)
            bLam(Value.Lam(paramsList, Return(app, false)), S(l.nme), N)(k)
          case None =>
            k(ctx.findName(l) |> sr)
      case Value.This(sym) => errStop(msg"Unsupported value: This")
      case Value.Lit(lit) => k(Expr.Literal(lit))
      case lam @ Value.Lam(params, body) => bLam(lam, N, N)(k)
      case Value.Arr(elems) =>
        bArgs(elems):
          case args: Ls[TrivialExpr] =>
            val v: Local = newTemp
            Node.LetExpr(v, Expr.CtorApp(builtinTuple(elems.length), args), k(v |> sr))
        
  
  private def getClassOfField(p: FieldSymbol)(using ctx: Ctx)(using Raise, Scope): Local =
    trace[Local](s"bClassOfField { $p } begin", x => s"bClassOfField end: $x"):
      p match
      case ts: TermSymbol => ts.owner.get
      case ms: MemberSymbol[?] => 
        ms.defn match
        case Some(d: ClassLikeDef) => d.owner.get
        case Some(d: TermDefinition) => d.owner.get
        case Some(value) => errStop(msg"Member symbol without class definition ${value.toString}")
        case None => errStop(msg"Member symbol without definition ${ms.toString}") 
  
  private def fromMemToClass(m: Symbol)(using ctx: Ctx)(using Raise, Scope): Local =
    trace[Local](s"bFromMemToClass $m", x => s"bFromMemToClass end: $x"):
      m match
      case ms: MemberSymbol[?] =>
        ms.defn match
        case Some(d: ClassLikeDef) => d.sym.asClsLike.getOrElse(errStop(msg"Class definition without symbol"))
        case Some(d: TermDefinition) => d.sym
        case Some(value) => errStop(msg"Member symbol without class definition ${value.toString}")
        case None => errStop(msg"Member symbol without definition ${ms.toString}") 
      case _ => errStop(msg"Unsupported symbol kind ${m.toString}")
        
  
  private def bPath(p: Path)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bPath { $p } begin", x => s"bPath end: ${x.show}"):
      p match
      case s @ Select(Value.Ref(cls: ClassSymbol), name) if ctx.method_class.contains(cls) =>
        s.symbol match
          case None =>
            ctx.flow_ctx.get(p) match
              case Some(cls) =>
                k(cls |> sr)
              case None =>
                errStop(msg"Unsupported selection by users")
          case Some(s) =>
            k(s |> sr)
      case s @ DynSelect(qual, fld, arrayIdx) =>
        errStop(msg"Unsupported dynamic selection")
      case s @ Select(qual, name) =>
        log(s"bPath Select: $qual.$name with ${s.symbol}")
        s.symbol match
          case None =>
            ctx.flow_ctx.get(qual) match
              case Some(cls) =>
                bPath(qual):
                  case q: Expr.Ref =>
                    val v: Local = newTemp
                    val field = name.name
                    Node.LetExpr(v, Expr.Select(q.sym, cls, field), k(v |> sr))
                  case q: Expr.Literal =>
                    errStop(msg"Unsupported select on literal")
              case None =>
                log(s"${ctx.flow_ctx}")
                errStop(msg"Unsupported selection by users")
          case Some(value) =>
            bPath(qual):
              case q: Expr.Ref =>
                val v: Local = newTemp
                val cls = getClassOfField(s.symbol.get)
                val field = name.name
                Node.LetExpr(v, Expr.Select(q.sym, cls, field), k(v |> sr))
              case q: Expr.Literal =>
                errStop(msg"Unsupported select on literal")
      case x: Value => bValue(x)(k)

  private def bResult(r: Result)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bResult begin", x => s"bResult end: ${x.show}"):
      r match
      case Call(Value.Ref(sym: BuiltinSymbol), args) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v: Local = newTemp
            Node.LetExpr(v, Expr.BasicOp(sym, args), k(v |> sr))
      case Call(Value.Ref(sym), args) if sym.nme.isCapitalized =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v: Local = newTemp
            Node.LetExpr(v, Expr.CtorApp(fromMemToClass(sym), args), k(v |> sr))
      case Call(s @ Value.Ref(sym), args) =>
            val v: Local = newTemp
            ctx.fn_ctx.get(sym) match
              case Some(f) =>
                bArgs(args):
                  case args: Ls[TrivialExpr] =>
                    Node.LetCall(Ls(v), sym, args, k(v |> sr))
              case None =>
                bPath(s):
                  case f: TrivialExpr =>
                    bArgs(args):
                      case args: Ls[TrivialExpr] =>
                        Node.LetMethodCall(Ls(v), builtinCallable, builtinApply(args.length), f :: args, k(v |> sr))
      case Call(Select(Value.Ref(_: TopLevelSymbol), Tree.Ident("builtin")), args) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v: Local = newTemp
            Node.LetCall(Ls(v), builtin, args, k(v |> sr))
      case Call(Select(Select(Value.Ref(_: TopLevelSymbol), Tree.Ident("console")), Tree.Ident("log")), args) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v: Local = newTemp
            Node.LetCall(Ls(v), builtin, Expr.Literal(Tree.StrLit("println")) :: args, k(v |> sr))
      case Call(Select(Select(Value.Ref(_: TopLevelSymbol), Tree.Ident("Math")), Tree.Ident(mathPrimitive)), args) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v: Local = newTemp
            Node.LetCall(Ls(v), builtin, Expr.Literal(Tree.StrLit(mathPrimitive)) :: args, k(v |> sr))
      case Call(s @ Select(r @ Value.Ref(sym), Tree.Ident(fld)), args) if s.symbol.isDefined =>
        bPath(r):
          case r =>
            bArgs(args):
              case args: Ls[TrivialExpr] =>
                val v: Local = newTemp
                log(s"Method Call Select: $r.$fld with ${s.symbol}")
                Node.LetMethodCall(Ls(v), getClassOfField(s.symbol.get), fromMemToClass(s.symbol.get), r :: args, k(v |> sr))
      case Call(_, _) => errStop(msg"Unsupported kind of Call ${r.toString()}")
      case Instantiate(
        Select(Value.Ref(sym), Tree.Ident("class")), args) =>
        bPaths(args):
          case args: Ls[TrivialExpr] =>
            val v: Local = newTemp
            Node.LetExpr(v, Expr.CtorApp(fromMemToClass(sym), args), k(v |> sr))
      case Instantiate(cls, args) =>
        errStop(msg"Unsupported kind of Instantiate")
      case x: Path => bPath(x)(k)

  private def bBlockWithEndCont(blk: Block)(k: TrivialExpr => Ctx ?=> Node)(using Ctx)(using Raise, Scope) : Node =
    bBlock(blk)(k)(End(""))

  private def bBlock(blk: Block)(k: TrivialExpr => Ctx ?=> Node)(ct: Block)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bBlock begin", x => s"bBlock end: ${x.show}"):
      blk match
      case Match(scrut, arms, dflt, rest) =>
        bPath(scrut):
          case e: TrivialExpr =>
            val nextCont = Begin(rest, ct)
            val jp: Local = newNamedTemp("j")
            val fvset = freeVarsFilter(nextCont.freeVars -- nextCont.definedVars)
            val fvs1 = fvset.toList
            log(s"Match free vars: $fvset ${nextCont.freeVars} ${nextCont.definedVars} $fvs1")
            val new_ctx = fvs1.foldLeft(ctx)((acc, x) => acc.addName(x, x))
            val fvs = fvs1.map(new_ctx.findName(_))
            def cont(x: TrivialExpr)(using ctx: Ctx) = Node.Jump(
              jp,
              fvs1.map(x => ctx.findName(x)).map(sr)
            )
            val casesList: Ls[(Pat, Node)] = arms.map:
              case (Case.Lit(lit), body) =>
                (Pat.Lit(lit), bBlock(body)(cont)(nextCont)(using ctx))
              case (Case.Cls(cls, _), body) =>
                (Pat.Class(cls), bBlock(body)(cont)(nextCont)(using ctx))
              case (Case.Tup(len, inf), body) =>
                val ctx2 = ctx.addKnownClass(scrut, builtinTuple(len))
                (Pat.Class(builtinTuple(len)), bBlock(body)(cont)(nextCont)(using ctx2))
            val defaultCase = dflt.map(bBlock(_)(cont)(nextCont)(using ctx))
            val jpdef = Func(
              uid.make,
              jp,
              params = fvs,
              resultNum = 1,
              bBlock(rest)(k)(ct)(using new_ctx),
            )
            summon[Ctx].def_acc += jpdef
            Node.Case(e, casesList, defaultCase)
      case Return(res, implct) => bResult(res)(x => Node.Result(Ls(x)))
      case Throw(Instantiate(Select(Value.Ref(_), ident), Ls(Value.Lit(Tree.StrLit(e))))) if ident.name == "Error" =>
        Node.Panic(e)
      case Label(label, body, rest) => TODO("Label not supported")
      case Break(label) => TODO("Break not supported")
      case Continue(label) => TODO("Continue not supported")
      case Begin(sub, rest) =>
        // re-associate rest blocks to correctly handle the continuation
        sub match
          case _: BlockTail => 
            val definedVars = sub.definedVars
            definedVars.foreach(allocIfNew)
            bBlock(sub)(x => bBlock(rest)(k)(ct))(Begin(rest, ct))
          case Assign(lhs, rhs, rest2) =>
            bBlock(Assign(lhs, rhs, Begin(rest2, rest)))(k)(ct)
          case Begin(sub, rest2) =>
            bBlock(Begin(sub, Begin(rest2, rest)))(k)(ct)
          case Define(defn, rest2) =>
            bBlock(Define(defn, Begin(rest2, rest)))(k)(ct)
          case Match(scrut, arms, dflt, rest2) =>
            bBlock(Match(scrut, arms, dflt, Begin(rest2, rest)))(k)(ct)
          case _ => TODO(s"Other non-tail sub components of Begin not supported $sub")
      case TryBlock(sub, finallyDo, rest) => TODO("TryBlock not supported")
      case Assign(lhs, rhs, rest) =>
        bBind(S(lhs), rhs, rest)(k)(ct)
      case AssignField(lhs, nme, rhs, rest) => TODO("AssignField not supported")
      case Define(fd @ FunDefn(_own, sym, params, body), rest) =>
        if ctx.is_top_level then
          val f = bFunDef(fd)
          ctx.def_acc += f
          bBlock(rest)(k)(ct)
        else
          bNestedFunDef(fd):
            case r: TrivialExpr =>
              bBlock(rest)(k)(ct)
      case Define(_: ClsLikeDefn, rest) => bBlock(rest)(k)(ct)
      case End(msg) => k(Expr.Literal(Tree.UnitLit(false)))
      case _: Block =>
        val docBlock = blk.showAsTree
        errStop(msg"Unsupported block: $docBlock")
  
  def registerClasses(b: Block)(using ctx: Ctx)(using Raise, Scope): Ctx =
    b match
    case Define(cd @ ClsLikeDefn(_own, isym, sym, kind, _paramsOpt, parentSym, methods, privateFields, publicFields, preCtor, ctor), rest) =>
      val c = bClsLikeDef(cd)
      ctx.class_acc += c
      val new_ctx = ctx.addClassInfo(isym, c)
      log(s"Define class: ${isym.toString()} -> ${ctx}")
      registerClasses(rest)(using new_ctx)
    case _ =>
      b.subBlocks.foldLeft(ctx)((ctx, rest) => registerClasses(rest)(using ctx))

  def registerInternalClasses(using ctx: Ctx)(using Raise, Scope): Ctx =
    ctx.builtin_sym.tupleSym.foldLeft(ctx):
      case (ctx, (len, sym)) =>
        val c = ClassInfo(uid.make, sym, (0 until len).map(x => builtinField(x)).toList, Set.empty, Map.empty)
        ctx.class_acc += c
        ctx.addClassInfo(sym, c)
  
  def registerFunctions(b: Block)(using ctx: Ctx)(using Raise, Scope): Ctx =
    b match
    case Define(fd @ FunDefn(_own, sym, params, body), rest) =>
      if params.length == 0 then
        errStop(msg"Function without arguments not supported: ${params.length.toString}")
      val ctx2 = ctx.addFuncName(sym, params.head.params.length)
      log(s"Define function: ${sym.nme} -> ${ctx2}")
      registerFunctions(rest)(using ctx2)
    case _ =>
      b.subBlocks.foldLeft(ctx)((ctx, rest) => registerFunctions(rest)(using ctx))
  
  def bProg(e: Program)(using Raise, Scope, Ctx): (LlirProgram, Ctx) =
    var ctx = summon[Ctx]
    
    // * Classes may be defined after other things such as functions,
    // * especially now that the elaborator moves all functions to the top of the block.
    ctx = registerClasses(e.main)(using ctx)
    ctx = registerFunctions(e.main)(using ctx)
    
    log(s"Classes: ${ctx.class_ctx}")

    val entry = bBlockWithEndCont(e.main)(x => Node.Result(Ls(x)))(using ctx)

    ctx = registerInternalClasses(using ctx)
    
    val prog = LlirProgram(ctx.class_acc.toSet, ctx.def_acc.toSet, entry)

    ctx.class_acc.clear()
    ctx.def_acc.clear()
    
    (prog, ctx)

