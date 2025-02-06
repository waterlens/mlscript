package hkmc2
package codegen
package llir

import scala.collection.mutable.ListBuffer

import mlscript.utils.*
import mlscript.utils.shorthands.*
import hkmc2.utils.*
import hkmc2.document.*
import hkmc2.Message.MessageContext

import hkmc2.syntax.Tree
import hkmc2.semantics.*
import hkmc2.codegen.llir.{ Program => LlirProgram, Node, Func }
import hkmc2.codegen.Program


def err(msg: Message)(using Raise): Unit =
  raise(ErrorReport(msg -> N :: Nil,
    source = Diagnostic.Source.Compilation))

def errStop(msg: Message)(using Raise) =
  err(msg)
  throw LowLevelIRError("stopped")

final case class FuncInfo (
  name: Name,
  paramsSize: Int,
)

final case class Ctx(
  def_acc: ListBuffer[Func],
  class_acc: ListBuffer[ClassInfo],
  symbol_ctx: Map[Str, Name] = Map.empty,
  fn_ctx: Map[Local, FuncInfo] = Map.empty, // is a known function
  class_ctx: Map[Local, Name] = Map.empty,
  block_ctx: Map[Local, Name] = Map.empty,
  is_top_level: Bool = true,
  method_class: Opt[Symbol] = None,
  free_vars: Set[Local] = Set.empty,
):
  def addFuncName(n: Local, m: Name, paramsSize: Int) = copy(fn_ctx = fn_ctx + (n -> FuncInfo(m, paramsSize)))
  def findFuncName(n: Local)(using Raise) = fn_ctx.get(n) match
    case None =>
      errStop(msg"Function name not found: ${n.toString()}")
    case Some(value) => value
  def addClassName(n: Local, m: Name) = copy(class_ctx = class_ctx + (n -> m))
  def findClassName(n: Local)(using Raise) = class_ctx.get(n) match
    case None =>
      errStop(msg"Class not found: ${n.toString}")
    case Some(value) => value
  def addName(n: Str, m: Name) = copy(symbol_ctx = symbol_ctx + (n -> m))
  def findName(n: Str)(using Raise): Name = symbol_ctx.get(n) match
    case None =>
      errStop(msg"Name not found: $n")
    case Some(value) => value
  def setClass(c: Symbol) = copy(method_class = Some(c))
  def setFreeVars(n: Set[Local]) = copy(free_vars = free_vars)
  def nonTopLevel = copy(is_top_level = false)

object Ctx:
  def empty = Ctx(ListBuffer.empty, ListBuffer.empty)


final class LlirBuilder(using Elaborator.State)(tl: TraceLogger)(fresh: Fresh, fnUid: FreshInt, clsUid: FreshInt):
  import tl.{trace, log, logs}
  
  def er = Expr.Ref
  def nr = Node.Result
  def nme(x: Str) = Name(x)
  def sr(x: Str) = er(Name(x))
  def sr(x: Name) = er(x)
  def nsr(xs: Ls[Name]) = xs.map(er(_))

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
        case _ => true
  
  private def bBind(name: Opt[Str], e: Result, body: Block)(k: TrivialExpr => Ctx ?=> Node)(ct: Block)(using ctx: Ctx)(using Raise, Scope): Node =
    trace[Node](s"bBind begin: $name", x => s"bBind end: ${x.show}"):
      bResult(e):
        case r: Expr.Ref =>
          given Ctx = ctx.addName(name.getOrElse(fresh.make.str), r.name)
          log(s"bBind ref: $name -> $r")
          bBlock(body)(k)(ct)
        case l: Expr.Literal =>
          val v = fresh.make
          given Ctx = ctx.addName(name.getOrElse(fresh.make.str), v)
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
  
  private def bFunDef(e: FunDefn)(using ctx: Ctx)(using Raise, Scope): Func =
    trace[Func](s"bFunDef begin: ${e.sym}", x => s"bFunDef end: ${x.show}"):
      val FunDefn(_own, sym, params, body) = e
      if !ctx.is_top_level then
        errStop(msg"Non top-level definition ${sym.nme} not supported")
      else if params.length != 1 then
        errStop(msg"Curried function or zero arguments function not supported: ${params.length.toString}")
      else 
        val paramsList = params.head.params.map(x => x -> summon[Scope].allocateName(x.sym))
        val ctx2 = paramsList.foldLeft(ctx)((acc, x) => acc.addName(getVar_!(x._1.sym), x._2 |> nme))
        val ctx3 = ctx2.nonTopLevel
        val pl = paramsList.map(_._2).map(nme)
        Func(
          fnUid.make,
          sym.nme,
          params = pl,
          resultNum = 1,
          body = bBlockWithEndCont(body)(x => Node.Result(Ls(x)))(using ctx3)
        )

  private def bMethodDef(e: FunDefn)(using ctx: Ctx)(using Raise, Scope): Func =
    trace[Func](s"bFunDef begin: ${e.sym}", x => s"bFunDef end: ${x.show}"):
      val FunDefn(_own, sym, params, body) = e
      if !ctx.is_top_level then
        errStop(msg"Non top-level definition ${sym.nme} not supported")
      else if params.length != 1 then
        errStop(msg"Curried function or zero arguments function not supported: ${params.length.toString}")
      else 
        val paramsList = params.head.params.map(x => x -> summon[Scope].allocateName(x.sym))
        val ctx2 = paramsList.foldLeft(ctx)((acc, x) => acc.addName(getVar_!(x._1.sym), x._2 |> nme))
        val ctx3 = ctx2.nonTopLevel
        val pl = paramsList.map(_._2).map(nme)
        Func(
          fnUid.make,
          sym.nme,
          params = pl,
          resultNum = 1,
          body = bBlockWithEndCont(body)(x => Node.Result(Ls(x)))(using ctx3)
        )

  private def bClsLikeDef(e: ClsLikeDefn)(using ctx: Ctx)(using Raise, Scope): ClassInfo =
    trace[ClassInfo](s"bClsLikeDef begin", x => s"bClsLikeDef end: ${x.show}"):
      val ClsLikeDefn(
        _own, _isym, sym, kind, paramsOpt, parentSym, methods, privateFields, publicFields, preCtor, ctor) = e
      if !ctx.is_top_level then
        errStop(msg"Non top-level definition ${sym.nme} not supported")
      else
        val clsDefn = sym.defn.getOrElse(die)
        val clsParams = paramsOpt.fold(Nil)(_.paramSyms)
        val clsFields = publicFields.map(_.sym)
        given Ctx = ctx.setClass(sym)
        val funcs = methods.map(bMethodDef)
        def parentFromPath(p: Path): Set[Str] = p match
          case Value.Ref(l) => Set(l.nme)
          case Select(Value.Ref(l), Tree.Ident("class")) => Set(l.nme)
          case _ => errStop(msg"Unsupported parent path ${p.toString()}")
        ClassInfo(
          clsUid.make,
          sym.nme,
          clsParams.map(_.nme) ++ clsFields.map(_.nme),
          parentSym.fold(Set.empty)(parentFromPath),
          funcs.map(f => f.name -> f).toMap,
        )
  
  private def bLam(lam: Value.Lam)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bLam begin", x => s"bLam end: ${x.show}"):
      val Value.Lam(params, body) = lam
      // Generate an auxiliary class inheriting from Callable
      val freeVars = freeVarsFilter(lam.freeVars -- lam.body.definedVars -- ctx.fn_ctx.keySet)
      val name = fresh.make("Lambda")
      val clsParams = freeVars.toList.map(_.nme)
      val args = freeVars.toList.map(allocIfNew)
      val ctx2 = ctx.setFreeVars(freeVars)
      val applyParams = params.params.map(x => x -> summon[Scope].allocateName(x.sym))
      val ctx3 = applyParams.foldLeft(ctx2)((acc, x) => acc.addName(getVar_!(x._1.sym), x._2 |> nme)).nonTopLevel
      val pl = applyParams.map(_._2).map(nme)
      val method = Func(
        fnUid.make,
        s"apply${params.params.length}",
        params = pl,
        resultNum = 1,
        body = bBlockWithEndCont(body)(x => Node.Result(Ls(x)))(using ctx3)
      )
      ctx.class_acc += ClassInfo(
        clsUid.make,
        name.str,
        clsParams,
        Set("Callable"),
        Map(method.name -> method),
      )
      val v = fresh.make
      Node.LetExpr(v, Expr.CtorApp(ClassRef.fromName(name), args.map(sr)), k(v |> sr)(using ctx))

  private def bValue(v: Value)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bValue { $v } begin", x => s"bValue end: ${x.show}"):
      v match
      case Value.Ref(l: TermSymbol) if l.owner.nonEmpty =>
        k(Name(l.name) |> sr)
      case Value.Ref(sym) if sym.nme.isCapitalized =>
        val v = fresh.make
        Node.LetExpr(v, Expr.CtorApp(ClassRef.fromName(sym.nme), Ls()), k(v |> sr))
      case Value.Ref(l) => 
        val x = getVar_!(l)
        ctx.fn_ctx.get(l) match
          case Some(f) =>
            val tempSymbols = (0 until f.paramsSize).map(x => VarSymbol(Tree.Ident(fresh.make("arg").str)))
            val paramsList = PlainParamList((0 until f.paramsSize).zip(tempSymbols).map((_n, sym) => Param(FldFlags.empty, sym, N)).toList)
            val app = Call(v, tempSymbols.map(x => Arg(false, Value.Ref(x))).toList)(true, false)
            bLam(Value.Lam(paramsList, Return(app, false)))(k)
          case None =>
            log(s"bValue Ref: $x")
            k(ctx.findName(x) |> sr)
      case Value.This(sym) => errStop(msg"Unsupported value: This")
      case Value.Lit(lit) => k(Expr.Literal(lit))
      case lam @ Value.Lam(params, body) => bLam(lam)(k)
      case Value.Arr(elems) => errStop(msg"Unsupported value: Arr")
  
  private def getClassOfMem(p: FieldSymbol)(using ctx: Ctx)(using Raise, Scope): Local =
    trace[Local](s"bMemSym { $p } begin", x => s"bMemSym end: $x"):
      p match
      case ts: TermSymbol => ts.owner.get
      case ms: MemberSymbol[?] => ms.defn.get.sym
  
  private def bPath(p: Path)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bPath { $p } begin", x => s"bPath end: ${x.show}"):
      p match
      case Select(Value.Ref(cls: ClassSymbol), name) if ctx.method_class.contains(cls) =>
        k(Name(name.name) |> sr)
      case s @ DynSelect(qual, fld, arrayIdx) =>
        errStop(msg"Unsupported dynamic selection")
      case s @ Select(qual, name) =>
        log(s"bPath Select: $qual.$name with ${s.symbol}")
        s.symbol match
          case None =>
            errStop(msg"Unsupported selection by users")
          case Some(value) =>
            bPath(qual):
              case q: Expr.Ref =>
                val v = fresh.make
                val cls = ClassRef.fromName(getClassOfMem(s.symbol.get).nme)
                val field = name.name
                Node.LetExpr(v, Expr.Select(q.name, cls, field), k(v |> sr))
              case q: Expr.Literal =>
                errStop(msg"Unsupported select on literal")
                Node.Result(Ls())
      case x: Value => bValue(x)(k)

  private def bResult(r: Result)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bResult begin", x => s"bResult end: ${x.show}"):
      r match
      case Call(Value.Ref(sym: BuiltinSymbol), args) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v = fresh.make
            Node.LetExpr(v, Expr.BasicOp(sym.nme, args), k(v |> sr))
      case Call(Value.Ref(sym), args) if sym.nme.head.isUpper =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v = fresh.make
            Node.LetExpr(v, Expr.CtorApp(ClassRef.fromName(sym.nme), args), k(v |> sr))
      case Call(s @ Value.Ref(sym), args) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v = fresh.make
            ctx.fn_ctx.get(sym) match
              case Some(f) =>
                Node.LetCall(Ls(v), FuncRef.fromName(f.name), args, k(v |> sr))
              case None =>
                bPath(s):
                  case f: TrivialExpr =>
                    Node.LetMethodCall(Ls(v), ClassRef(R("Callable")), Name("apply" + args.length), f :: args, k(v |> sr))
      case Call(s @ Select(r @ Value.Ref(sym), Tree.Ident(fld)), args) if s.symbol.isDefined =>
        bPath(r):
          case r =>
            bArgs(args):
              case args: Ls[TrivialExpr] =>
                val v = fresh.make
                log(s"Method Call Select: $r.$fld with ${s.symbol}")
                errStop(msg"Unsupported method call")
      case Call(_, _) => errStop(msg"Unsupported kind of Call ${r.toString()}")
      case Instantiate(
        Select(Value.Ref(sym), Tree.Ident("class")), args) =>
        bPaths(args):
          case args: Ls[TrivialExpr] =>
            val v = fresh.make
            Node.LetExpr(v, Expr.CtorApp(ClassRef.fromName(sym.nme), args), k(v |> sr))
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
            val jp = fresh.make("j")
            val fvset = freeVarsFilter(nextCont.freeVars -- nextCont.definedVars).map(allocIfNew)
            val fvs1 = fvset.toList
            log(s"Match free vars: $fvset ${nextCont.freeVars} ${nextCont.definedVars} $fvs1")
            val new_ctx = fvs1.foldLeft(ctx)((acc, x) => acc.addName(x, fresh.make))
            val fvs = fvs1.map(new_ctx.findName(_))
            def cont(x: TrivialExpr)(using ctx: Ctx) = Node.Jump(
              FuncRef.fromName(jp),
              fvs1.map(x => ctx.findName(x)).map(sr)
            )
            val casesList: Ls[(Pat, Node)] = arms.map:
              case (Case.Lit(lit), body) =>
                (Pat.Lit(lit), bBlock(body)(cont)(nextCont)(using ctx))
              case (Case.Cls(cls, _), body) =>
                (Pat.Class(ClassRef.fromName(cls.nme)), bBlock(body)(cont)(nextCont)(using ctx))
              case (Case.Tup(len, inf), body) =>
                (Pat.Class(ClassRef.fromName("Tuple" + len.toString())), bBlock(body)(cont)(nextCont)(using ctx))
            val defaultCase = dflt.map(bBlock(_)(cont)(nextCont)(using ctx))
            val jpdef = Func(
              fnUid.make,    
              jp.str,
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
        val name = allocIfNew(lhs)
        bBind(S(name), rhs, rest)(k)(ct)
      case AssignField(lhs, nme, rhs, rest) => TODO("AssignField not supported")
      case Define(fd @ FunDefn(_own, sym, params, body), rest) =>
        if params.length != 1 then
          errStop(msg"Curried function or zero arguments function not supported: ${params.length.toString}")
        val ctx2 = ctx.addFuncName(sym, Name(sym.nme), params.head.params.length)
        val f = bFunDef(fd)(using ctx2)
        ctx.def_acc += f
        bBlock(rest)(k)(ct)(using ctx2)
      case Define(_: ClsLikeDefn, rest) => bBlock(rest)(k)(ct)
      case End(msg) => k(Expr.Literal(Tree.UnitLit(false)))
      case _: Block =>
        val docBlock = blk.showAsTree
        errStop(msg"Unsupported block: $docBlock")
  
  def registerClasses(b: Block)(using ctx: Ctx)(using Raise, Scope): Ctx =
    b match
    case Define(cd @ ClsLikeDefn(_own, isym, sym, kind, _paramsOpt, parentSym, methods, privateFields, publicFields, preCtor, ctor), rest) =>
      val c = bClsLikeDef(cd)
      val new_ctx = ctx.addClassName(sym, Name(c.name)).addClassName(isym, Name(c.name))
      ctx.class_acc += c
      log(s"Define class: ${sym.nme} -> ${new_ctx}")
      registerClasses(rest)(using new_ctx)
    case _ =>
      b.subBlocks.foldLeft(ctx)((ctx, rest) => registerClasses(rest)(using ctx))

  def registerFunctions(b: Block)(using ctx: Ctx)(using Raise, Scope): Ctx =
    b match
    case Define(fd @ FunDefn(_own, sym, params, body), rest) =>
      if params.length != 1 then
        errStop(msg"Curried function or zero arguments function not supported: ${params.length.toString}")
      val ctx2 = ctx.addFuncName(sym, Name(sym.nme), params.head.params.length)
      log(s"Define function: ${sym.nme} -> ${ctx2}")
      registerFunctions(rest)(using ctx2)
    case _ =>
      b.subBlocks.foldLeft(ctx)((ctx, rest) => registerFunctions(rest)(using ctx))
  
  def bProg(e: Program)(using Raise, Scope): LlirProgram =
    var ctx = Ctx.empty
    
    // * Classes may be defined after other things such as functions,
    // * especially now that the elaborator moves all functions to the top of the block.
    ctx = registerClasses(e.main)(using ctx)
    ctx = registerFunctions(e.main)(using ctx)
    
    log(s"Classes: ${ctx.class_ctx}")

    val entry = bBlockWithEndCont(e.main)(x => Node.Result(Ls(x)))(using ctx)
    LlirProgram(ctx.class_acc.toSet, ctx.def_acc.toSet, entry)

