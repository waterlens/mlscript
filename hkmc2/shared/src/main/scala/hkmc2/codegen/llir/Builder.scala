package hkmc2
package codegen.llir

import hkmc2.codegen._
import hkmc2.codegen.llir.{ Program => LlirProgram, Node, Func }
import mlscript.utils._
import mlscript.utils.shorthands._
import hkmc2.semantics.BuiltinSymbol
import hkmc2.syntax.Tree.UnitLit
import hkmc2.{Raise, raise, Diagnostic, ErrorReport, Message}
import hkmc2.Message.MessageContext
import hkmc2.codegen.llir.FuncRef.fromName
import scala.collection.mutable.ListBuffer
import hkmc2.codegen.js.Scope
import hkmc2._
import hkmc2.document._
import hkmc2.semantics.Elaborator.State
import hkmc2.codegen.Program
import hkmc2.utils.TraceLogger


def err(msg: Message)(using Raise): Unit =
  raise(ErrorReport(msg -> N :: Nil,
  source = Diagnostic.Source.Compilation))

final case class Ctx(
  symbol_ctx: Map[Str, Name] = Map.empty,
  fn_ctx: Map[Local, Name] = Map.empty, // is a known function
  closure_ctx: Map[Local, Name] = Map.empty, // closure name
  class_ctx: Map[Local, Name] = Map.empty,
  block_ctx: Map[Local, Name] = Map.empty,
  def_acc: ListBuffer[Func] = ListBuffer.empty,
):
  def addName(n: Str, m: Name) = copy(symbol_ctx = symbol_ctx + (n -> m))
  def findName(n: Str)(using Raise): Name = symbol_ctx.get(n) match
    case None =>
      err(msg"Name not found: $n")
      Name("error")
    case Some(value) => value

object Ctx:
  val empty = Ctx()


final class LlirBuilder(tl: TraceLogger)(fresh: Fresh, fnUid: FreshInt):
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
    val FunDefn(sym, params, body) = e
    if params.length != 1 then
      err(msg"Unsupported number of parameters: ${params.length.toString}")
    val paramsList = params.head.params.map(x => summon[Scope].allocateName(x.sym)).map(Name(_))
    Func(
      fnUid.make,
      sym.nme,
      params = paramsList,
      resultNum = 1,
      body = bBlock(body)(x => Node.Result(Ls(x)))
    )

  private def bValue(v: Value)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bValue begin", x => s"bValue end: ${x.show}"):
      v match
      case Value.Ref(l) => k(ctx.findName(getVar_!(l)) |> sr)
      case Value.This(sym) => err(msg"Unsupported value: This"); Node.Result(Ls())
      case Value.Lit(lit) => k(Expr.Literal(lit))
      case Value.Lam(params, body) => err(msg"Unsupported value: Lam"); Node.Result(Ls())
      case Value.Arr(elems) => err(msg"Unsupported value: Arr"); Node.Result(Ls())
  
  private def bPath(p: Path)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bPath begin", x => s"bPath end: ${x.show}"):
      p match
      case Select(qual, name) => err(msg"Unsupported path: Select"); Node.Result(Ls())
      case x: Value => bValue(x)(k)

  private def bResult(r: Result)(k: TrivialExpr => Ctx ?=> Node)(using ctx: Ctx)(using Raise, Scope) : Node =
    trace[Node](s"bResult begin", x => s"bResult end: ${x.show}"):
      r match
      case Call(Value.Ref(sym: BuiltinSymbol), args) =>
        bArgs(args):
          case args: Ls[TrivialExpr] =>
            val v = fresh.make
            Node.LetExpr(v, Expr.BasicOp(sym.nme, args), k(v |> sr))
      case Call(Select(Value.Ref(sym: BuiltinSymbol), name), args) =>
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
      case Instantiate(cls, args) => ???
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
      case Throw(exc) => TODO("Throw not supported")
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
      case Define(FunDefn(sym, params, body), rest) =>
        val f = bFunDef(FunDefn(sym, params, body))
        ctx.def_acc += f
        bBlock(rest)(k)
      case End(msg) => k(Expr.Literal(UnitLit(false)))
      case _: Block =>
        val docBlock = blk.showAsTree
        err(msg"Unsupported block: $docBlock")
        Node.Result(Ls())

  def bProg(e: Program)(using Raise, Scope): LlirProgram =
    val ctx = Ctx.empty
    given Ctx = ctx
    ctx.def_acc.clear()
    val entry = bBlock(e.main)(x => Node.Result(Ls(x)))
    LlirProgram(Set.empty, ctx.def_acc.toSet, entry)