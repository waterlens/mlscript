package hkmc2
package codegen
package llir

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

import language.implicitConversions
import annotation.tailrec
import collection.immutable._
import collection.mutable.{HashMap => MutHMap}
import collection.mutable.{HashSet => MutHSet, Set => MutSet}
import collection.mutable.{MultiMap, Queue}
import javax.imageio.event.IIOWriteProgressListener
import hkmc2.syntax.Keyword.`do`

final case class OptErr(message: String) extends Exception(message)

private def oErrStop(msg: Message)(using Raise) =
  raise(ErrorReport(msg -> N :: Nil,
    source = Diagnostic.Source.Compilation))
  throw OptErr("stopped")

final class LlirOpt(using Elaborator.State, Raise)(tl: TraceLogger):
  import tl.{log, trace}

  object DestructUtils:
    @tailrec
    def getFirstDestructed(node: Node): Opt[Local] = node match
      case Node.Result(res) => N
      case Node.Jump(func, args) => N
      case Node.Case(Expr.Ref(scrut), cases, default) => S(scrut)
      case Node.Case(_, _, _) => N
      case Node.Panic(msg) => N
      case Node.LetExpr(name, expr, body) => getFirstDestructed(body)
      case Node.LetMethodCall(names, cls, method, args, body) => N
      case Node.LetCall(names, func, args, body) => N
    
    def isDestructed(node: Node) = getFirstDestructed(node).isDefined

  case class Loc(node: Node)
  given Conversion[Node, Loc] = Loc(_)

  enum IInfo:
    case Ctor(c: Local)
    case Mixed(i: Set[I])
    case Tuple(n: Int)

  enum EInfo:
    case Pass
    case Des
    case IndDes
    case Sel(cls: Local, fld: Str)

  case class E(loc: Loc, info: EInfo)
  case class I(loc: Loc, info: IInfo)

  implicit object EOrdering extends Ordering[E]:
    override def compare(a: E, b: E) = a.info.toString.compare(b.info.toString)
  implicit object IOrdering extends Ordering[I]:
    override def compare(a: I, b: I) = a.info.toString.compare(b.info.toString)

  case class FnInfo(
    activeParams: MutHMap[Local, Ls[SortedSet[E]]] = MutHMap.empty,
    activeResults: MutHMap[Local, Ls[Opt[I]]] = MutHMap.empty,
    func: MutHMap[Local, Func] = MutHMap.empty,
  ):
    def getActiveParams(func: Local) =
      activeParams.getOrElse(func, oErrStop(s"Function $func with empty activeParams"))

    def getActiveResults(func: Local) =
      activeResults.getOrElse(func, oErrStop(s"Function $func with empty activeResults"))
    
    def getFunc(sym: Local): Func =
      func.getOrElse(sym, oErrStop(s"Function $func not found"))

    def setActiveParams(func: Local, aps: Ls[SortedSet[E]]) = 
      activeParams.update(func, aps)

    def setActiveResults(func: Local, ars: Ls[Opt[I]]) =
      activeResults.update(func, ars)

  private object EliminationAnalysis:
    case class Env(
      val def_count: MutHMap[Local, Int] = MutHMap.empty,
      val elims: MutHMap[Local, MutHSet[E]] = MutHMap.empty,
      val defn: Local,
      val visited: MutHSet[Local] = MutHSet.empty,
    )
  private class EliminationAnalysis(info: FnInfo):
    import EliminationAnalysis.Env
    def addE(sym: Local, e: E)(using env: Env) =
      assert(env.def_count.getOrElse(sym, 0) <= 1, s"Multiple definitions of $sym")
      env.elims.getOrElseUpdate(sym, MutHSet.empty) += e

    def addBackwardE(sym: Local, e: E, newLoc: Loc)(using env: Env) =
      assert(env.def_count.getOrElse(sym, 0) <= 1, s"Multiple definitions of $sym")
      import EInfo.*
      for
        e2 <- e match
          case E(_, Des) | E(_, IndDes) => Some(E(newLoc, IndDes))
          case E(_, Pass) => Some(E(newLoc, Pass))
          case _ => None
        _ = env.elims.getOrElseUpdate(sym, MutHSet.empty).add(e2)
      yield ()

    def addDef(sym: Local)(using env: Env) =
      env.def_count.update(sym, env.def_count.getOrElse(sym, 0) + 1)

    def fTExprWithLoc(x: TrivialExpr, loc: Loc)(using env: Env): Unit = x match
      case Expr.Ref(name) => addE(name, E(loc, EInfo.Pass))
      case _ => ()

    def fExprWithLoc(x: Expr, loc: Loc)(using env: Env): Unit = x match
      case Expr.Ref(name) => addE(name, E(loc, EInfo.Pass))
      case Expr.Literal(lit) =>
      case Expr.CtorApp(name, args) => args.foreach(fTExprWithLoc(_, loc))
      case Expr.Select(name, cls, field) => addE(name, E(loc, EInfo.Sel(cls, field)))
      case Expr.BasicOp(name, args) => args.foreach(fTExprWithLoc(_, loc))
      case Expr.AssignField(assignee, _, _, value) => TODO("fExprWithLoc: AssignField")

    def getFunc(func: Local)(using env: Env): Func =
      info.func.getOrElse(func, oErrStop(s"Function $func not found"))


    def fNode(node: Node)(using env: Env): Unit = 
      def fDef(func: Local, args: Ls[TrivialExpr], funcDefn: Func)(using env: Env) =
        val aps = info.getActiveParams(func)
        args.iterator.zip(aps).foreach:
          case (Expr.Ref(x), ys) => ys.foreach(y => addBackwardE(x, y, node))
          case _ => oErrStop("fNode: Jump")
        if !env.visited.contains(func) then
          env.visited.add(func)
          val funcDefn = getFunc(func)
          funcDefn.params.foreach(addDef)
          val newEnv = env.copy(defn = func)
          fNode(funcDefn.body)(using newEnv)
      node match
      case Node.Result(res) => res.foreach(fTExprWithLoc(_, node))
      case Node.Jump(func, args) =>
        args.foreach(fTExprWithLoc(_, node))
        fDef(func, args, getFunc(func))
      case Node.Case(Expr.Ref(scrutinee), cases, default) =>
        addE(scrutinee, E(node, EInfo.Pass))
        addE(scrutinee, E(node, EInfo.Des))
        cases.foreach { case (cls, body) => fNode(body) }
        default.foreach(fNode)
      case Node.Case(_, cases, default) => 
        cases.foreach { case (cls, body) => fNode(body) }
        default.foreach(fNode)
      case Node.Panic(msg) =>
      case Node.LetExpr(name, expr, body) =>
        fExprWithLoc(expr, node)
        addDef(name)
        fNode(body)
      case Node.LetMethodCall(names, cls, method, args, body) =>
        // TODO: LetMethodCall
        fNode(body)
      case Node.LetCall(names, func, args, body) =>
        names.foreach(addDef)
        args.foreach(fTExprWithLoc(_, node))
        fDef(func, args, getFunc(func))
        fNode(body)
      
    def run(prog: LlirProgram) =
      var changed = true
      while changed do
        changed = false
        prog.defs.foreach: func =>
          val old = info.getActiveParams(func.name)
          val env = Env(defn = func.name)
          func.params.foreach(addDef(_)(using env))
          fNode(func.body)(using env)
          val nu = func.params.iterator.map(p => env.elims.getOrElse(p, MutHSet.empty).toSortedSet).toList
          changed |= old != nu
          info.setActiveParams(func.name, nu)

  private object IntroductionAnalysis:
    case class Env(
      intros: MutHMap[Local, I] = MutHMap.empty,
      default_intro: Ls[Opt[I]], // the intro of panic
    )
  private class IntroductionAnalysis(info: FnInfo):
    import IntroductionAnalysis.Env
    def mergeIntros(xs: Ls[Ls[Opt[I]]], loc: Loc): Ls[Opt[I]] =
      val xst = xs.transpose
      xst.map: ys =>
        val z = ys.flatMap:
          case N => Set.empty[I]
          case S(I(loc, IInfo.Mixed(i))) => i
          case S(i) => Set(i)
        .toSet
        if z.nonEmpty then S(I(loc, IInfo.Mixed(z))) else N

    def addI(sym: Local, i: I)(using env: Env) =
      if env.intros.contains(sym) then
        throw OptErr(s"Multiple introductions of $sym")
      env.intros.addOne(sym -> i)

    def fTExprWithLoc(x: TrivialExpr, loc: Loc)(using env: Env): Opt[I] = x match
      case Expr.Ref(name) => env.intros.get(name)
      case _ => N

    def fExprWithLoc(e: Expr, loc: Loc)(using env: Env): Opt[I] = e match
      case Expr.Ref(sym) => env.intros.get(sym)
      case Expr.CtorApp(cls, args) => S(I(loc, IInfo.Ctor(cls)))
      case _ => N

    def fNode(node: Node)(using env: Env): Ls[Opt[I]] = node match
      case Node.Result(res) => res.map(f => fTExprWithLoc(f, node))
      case Node.Jump(func, args) => info.getActiveResults(func)
      case Node.Case(scrutinee, cases, default) =>
        val casesIntros = cases.map:
          case (Pat.Class(cls), body) =>
            addI(cls, I(node, IInfo.Ctor(cls)))
            fNode(body)
          case (Pat.Lit(lit), body) => fNode(body)
        default match
          case N => mergeIntros(casesIntros, node)
          case S(x) => mergeIntros(casesIntros :+ fNode(x), node)
      case Node.Panic(msg) => env.default_intro
      case Node.LetExpr(name, expr, body) =>
        for
          i <- fExprWithLoc(expr, node)
          _ = addI(name, i)
        yield ()
        fNode(body)
      case Node.LetMethodCall(names, cls, method, args, body) =>
        fNode(body)
      case Node.LetCall(names, func, args, body) =>
        val funcDefn = info.getFunc(func)
        val ars = info.getActiveResults(func)
        funcDefn.params.iterator.zip(ars).foreach:
          case (p, S(i)) => addI(p, i)
          case _ => ()
        fNode(body)
    
    def run(prog: LlirProgram) =
      var changed = true
      while changed do
        changed = false
        prog.defs.foreach: func =>
          val old = info.getActiveResults(func.name)
          val nu = fNode(func.body)(using Env(default_intro = List.fill(func.params.length)(N)))
          assert(old.length == nu.length, s"old: $old, nu: $nu")
          changed |= old != nu
          info.setActiveResults(func.name, nu)

  case class PreFunc(sym: Local, results: Ls[Local])
  case class PostFunc(sym: Local, params: Ls[Local])

  // given the arguments of a function call, we find their intro-info and propagate them to the function's parameters
  private def bindIInfo(args: Ls[TrivialExpr], params: Ls[Symbol])(using env: IntroductionAnalysis.Env) =
    args.iterator.zip(params).foreach:
      case (Expr.Ref(x), p) if env.intros.contains(x) => env.intros.addOne(p -> env.intros(x))
      case _ => ()

  // given the intro-info of a function's parameters, update the intros env
  private def updateIInfo(func: Func, intros: Ls[Opt[I]])(using env: IntroductionAnalysis.Env) =
    func.params.iterator.zip(intros).foreach:
      case (p, S(i)) => env.intros.addOne(p -> i)
      case _ => ()

  
  private class Splitting(info: FnInfo):
    def f() = ???