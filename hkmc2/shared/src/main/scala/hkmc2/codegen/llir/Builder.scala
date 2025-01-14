package hkmc2
package codegen
package llir

import scala.collection.mutable.ListBuffer

import mlscript.utils.*
import mlscript.utils.shorthands.*
import hkmc2.document.*
import hkmc2.utils.Scope
import hkmc2.utils.TraceLogger
import hkmc2.Message.MessageContext

import hkmc2.syntax.Tree
import hkmc2.semantics.*
import hkmc2.codegen.llir.{ Program => LlirProgram, Node, Func }
import FuncRef.fromName
import hkmc2.codegen.Program


def err(msg: Message)(using Raise): Unit =
  raise(ErrorReport(msg -> N :: Nil,
    source = Diagnostic.Source.Compilation))

final case class Ctx(
  def_acc: ListBuffer[Func],
  class_acc: ListBuffer[ClassInfo],
  symbol_ctx: Map[Str, Name] = Map.empty,
  fn_ctx: Map[Local, Name] = Map.empty, // is a known function
  class_ctx: Map[Local, Name] = Map.empty,
  block_ctx: Map[Local, Name] = Map.empty,
):
  def addFuncName(n: Local, m: Name) = copy(fn_ctx = fn_ctx + (n -> m))
  def findFuncName(n: Local)(using Raise) = fn_ctx.get(n) match
    case None =>
      err(msg"Function name not found: ${n.toString()}")
      Name("error")
    case Some(value) => value
  def addClassName(n: Local, m: Name) = copy(class_ctx = class_ctx + (n -> m))
  def findClassName(n: Local)(using Raise) = class_ctx.get(n) match
    case None =>
      err(msg"Class name not found: ${n.toString()}")
      Name("error")
    case Some(value) => value
  def addName(n: Str, m: Name) = copy(symbol_ctx = symbol_ctx + (n -> m))
  def findName(n: Str)(using Raise): Name = symbol_ctx.get(n) match
    case None =>
      err(msg"Name not found: $n")
      Name("error")
    case Some(value) => value
  def reset =
    def_acc.clear()
    class_acc.clear()

object Ctx:
  val empty = Ctx(ListBuffer.empty, ListBuffer.empty)


final class LlirBuilder(tl: TraceLogger)(fresh: Fresh, fnUid: FreshInt, clsUid: FreshInt):
  import tl.{trace, log}
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
        // ts.trmTree
      case ts: semantics.InnerSymbol =>
        summon[Scope].findThis_!(ts)
      case _ => summon[Scope].lookup_!(l)
  
  private def bBind(name: Opt[Str], e: Result, body: Block)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope): Node =
    trace[Node](s"bBind begin: $name", x => s"bBind end: ${x.show}"):
      bResult(e):
        case r: Expr.Ref =>
          given Ctx = ctx.addName(name.getOrElse(fresh.make.str), r.name)
          log(s"bBind ref: $name -> $r")
          bBlock(body)(k)
        case l: Expr.Literal =>
          val v = fresh.make
          given Ctx = ctx.addName(name.getOrElse(fresh.make.str), v)
          log(s"bBind lit: $name -> $v")
          Node.LetExpr(v, l, bBlock(body)(k))
  
  private def bArgs(e: Ls[Arg])(k: Ls[TrivialExpr] => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope): Node =
    trace[Node](s"bArgs begin", x => s"bArgs end: ${x.show}"):
      e match
      case Nil => k(Nil)
      case Arg(spread, x) :: xs => bPath(x):
        case r: TrivialExpr => bArgs(xs):
          case rs: Ls[TrivialExpr] => k(r :: rs)
  
  private def bFunDef(e: FunDefn)(using ctx: Ctx)(using Raise, Scope): Func =
    trace[Func](s"bFunDef begin: ${e.sym}", x => s"bFunDef end: ${x.show}"):
      val FunDefn(sym, params, body) = e
      if params.length != 1 then
        err(msg"Curried function not supported: ${params.length.toString}")
      val paramsList = params.head.params.map(x => x -> summon[Scope].allocateName(x.sym))
      val new_ctx = paramsList.foldLeft(ctx)((acc, x) => acc.addName(getVar_!(x._1.sym), x._2 |> nme))
      val pl = paramsList.map(_._2).map(nme)
      Func(
        fnUid.make,
        sym.nme,
        params = pl,
        resultNum = 1,
        body = bBlock(body)(x => Node.Result(Ls(x)))(using new_ctx)
      )

  private def bClsLikeDef(e: ClsLikeDefn)(using ctx: Ctx)(using Raise, Scope): ClassInfo =
    trace[ClassInfo](s"bClsLikeDef begin", x => s"bClsLikeDef end: ${x.show}"):
      val ClsLikeDefn(sym, kind, parentSym, methods, privateFields, publicFields, preCtor, ctor) = e
      val clsDefn = sym.defn.getOrElse(die)
      val clsParams = clsDefn.paramsOpt.fold(Nil)(_.paramSyms)
      val clsFields = publicFields.map(_.sym)
      ClassInfo(
        clsUid.make,
        sym.nme,
        clsParams.map(_.nme) ++ clsFields.map(_.nme),
      )

  private def bValue(v: Value)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bValue begin", x => s"bValue end: ${x.show}"):
      v match
      case Value.Ref(l) => k(ctx.findName(getVar_!(l)) |> sr)
      case Value.This(sym) => err(msg"Unsupported value: This"); Node.Result(Ls())
      case Value.Lit(lit) => k(Expr.Literal(lit))
      case Value.Lam(params, body) => err(msg"Unsupported value: Lam"); Node.Result(Ls())
      case Value.Arr(elems) => err(msg"Unsupported value: Arr"); Node.Result(Ls())
  
  private def getClassOfMem(p: FieldSymbol)(using ctx: Ctx)(using Raise, Scope): Local =
    trace[Local](s"bMemSym begin", x => s"bMemSym end: $x"):
      p match
      case ts: TermSymbol => ts.owner.get
      case ms: MemberSymbol[?] => ms.defn.get.sym
  
  private def bPath(p: Path)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bPath begin", x => s"bPath end: ${x.show}"):
      p match
      case Select(Value.Ref(_: TopLevelSymbol), name) if name.name.head.isUpper =>
        val v = fresh.make
        Node.LetExpr(v, Expr.CtorApp(ClassRef.fromName(name.name), Ls()), k(v |> sr))
      // field selection
      case s @ Select(qual, name) => 
        log(s"bPath Select: $qual.$name with ${s.symbol}")
        bPath(qual):
          case q: Expr.Ref =>
            val v = fresh.make
            val cls = ClassRef.fromName(ctx.findClassName(getClassOfMem(s.symbol.get)))
            val field = name.name
            Node.LetExpr(v, Expr.Select(q.name, cls, field), k(v |> sr))
          case q: Expr.Literal =>
            err(msg"Unsupported select on literal")
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
      case Call(Select(Value.Ref(_: TopLevelSymbol), name), args) if name.name.head.isUpper =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v = fresh.make
            Node.LetExpr(v, Expr.CtorApp(ClassRef.fromName(name.name), args), k(v |> sr))
      case Call(Select(Value.Ref(_: TopLevelSymbol), name), args) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v = fresh.make
            Node.LetCall(Ls(v), FuncRef.fromName(name.name), args, k(v |> sr))
      case Call(Select(Value.Ref(_: BuiltinSymbol), name), args) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v = fresh.make
            Node.LetExpr(v, Expr.CtorApp(ClassRef.fromName(name.name), args), k(v |> sr))
      case Call(Value.Ref(name), args) if ctx.fn_ctx.contains(name) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v = fresh.make
            val fn = ctx.fn_ctx.get(name).get
            Node.LetCall(Ls(v), FuncRef.fromName(fn), args, k(v |> sr))
      case Call(fn, args) =>
        bPath(fn):
          case f: TrivialExpr =>
            bArgs(args):
              case args: Ls[TrivialExpr] =>
                val v = fresh.make
                Node.LetMethodCall(Ls(v), ClassRef(R("Callable")), Name("apply" + args.length), f :: args, k(v |> sr))
      case Instantiate(cls, args) =>
        err(msg"Unsupported result: Instantiate")
        Node.Result(Ls())
      case x: Path => bPath(x)(k)

  private def bBlock(blk: Block)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bBlock begin", x => s"bBlock end: ${x.show}"):
      blk match
      case Match(scrut, arms, dflt, rest) =>
        bPath(scrut):
          case e: TrivialExpr =>
            val jp = fresh.make("j")
            // guess: the value of Match itself in Block is useless
            // val res = fresh.make
            val fvset = (rest.freeVars -- rest.definedVars).map(allocIfNew)
            val fvs1 = fvset.toList
            val new_ctx = fvs1.foldLeft(ctx)((acc, x) => acc.addName(x, fresh.make))
            val fvs = fvs1.map(new_ctx.findName(_))
            def cont(x: TrivialExpr)(using Ctx) = Node.Jump(
              FuncRef.fromName(jp),
              /* x :: */ fvs1.map(x => summon[Ctx].findName(x)).map(sr)
            )
            given Ctx = new_ctx
            val casesList: Ls[(Pat, Node)] = arms.map:
              case (Case.Lit(lit), body) =>
                (Pat.Lit(lit), bBlock(body)(cont))
              case (Case.Cls(cls, _), body) =>
                (Pat.Class(ClassRef.fromName(cls.nme)), bBlock(body)(cont))
              case (Case.Tup(len, inf), body) =>
                (Pat.Class(ClassRef.fromName("Tuple" + len.toString())), bBlock(body)(cont))
            val defaultCase = dflt.map(bBlock(_)(cont))
            val jpdef = Func(
              fnUid.make,    
              jp.str,
              params = /* res :: */ fvs,
              resultNum = 1,
              bBlock(rest)(k),
            )
            summon[Ctx].def_acc += jpdef
            Node.Case(e, casesList, defaultCase)
      case Return(res, implct) => bResult(res)(x => Node.Result(Ls(x)))
      case Throw(Instantiate(Select(Value.Ref(globalThis), ident), Ls(Value.Lit(Tree.StrLit(e))))) if ident.name == "Error" =>
        Node.Panic(e)
      case Label(label, body, rest) => ???
      case Break(label) => TODO("Break not supported")
      case Continue(label) => TODO("Continue not supported")
      case Begin(sub, rest) =>
        // re-associate rest blocks to correctly handle the continuation
        sub match
          case _: BlockTail => 
            val definedVars = sub.definedVars
            definedVars.foreach(allocIfNew)
            bBlock(sub):
              x => bBlock(rest)(k)
          case Assign(lhs, rhs, rest2) =>
            bBlock(Assign(lhs, rhs, Begin(rest2, rest)))(k)
          case Begin(sub, rest2) =>
            bBlock(Begin(sub, Begin(rest2, rest)))(k)
          case Define(defn, rest2) =>
            bBlock(Define(defn, Begin(rest2, rest)))(k)
          case Match(scrut, arms, dflt, rest2) =>
            bBlock(Match(scrut, arms, dflt, Begin(rest2, rest)))(k)
          case _ => TODO(s"Other non-tail sub components of Begin not supported $sub")
      case TryBlock(sub, finallyDo, rest) => TODO("TryBlock not supported")
      case Assign(lhs, rhs, rest) =>
        val name = allocIfNew(lhs)
        bBind(S(name), rhs, rest)(k)
      case AssignField(lhs, nme, rhs, rest) => TODO("AssignField not supported")
      case Define(fd @ FunDefn(sym, params, body), rest) =>
        val f = bFunDef(fd)
        ctx.def_acc += f
        val new_ctx = ctx.addFuncName(sym, Name(f.name))
        bBlock(rest)(k)(using new_ctx)
      case Define(cd @ ClsLikeDefn(sym, kind, parentSym, methods, privateFields, publicFields, preCtor, ctor), rest) =>
        val c = bClsLikeDef(cd)
        ctx.class_acc += c
        val new_ctx = ctx.addClassName(sym, Name(c.name))
        bBlock(rest)(k)(using new_ctx)
      case End(msg) => k(Expr.Literal(Tree.UnitLit(false)))
      case _: Block =>
        val docBlock = blk.showAsTree
        err(msg"Unsupported block: $docBlock")
        Node.Result(Ls())

  def bProg(e: Program)(using Raise, Scope): LlirProgram =
    val ctx = Ctx.empty
    given Ctx = ctx
    ctx.reset
    val entry = bBlock(e.main)(x => Node.Result(Ls(x)))
    LlirProgram(ctx.class_acc.toSet, ctx.def_acc.toSet, entry)