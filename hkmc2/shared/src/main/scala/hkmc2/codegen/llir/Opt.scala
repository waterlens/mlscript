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
import scala.collection.mutable.ListBuffer

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
      val e2 = e match
        case E(_, Des) | E(_, IndDes) => Some(E(newLoc, IndDes))
        case E(_, Pass) => Some(E(newLoc, Pass))
        case _ => None
      for e2 <- e2 do env.elims.getOrElseUpdate(sym, MutHSet.empty).add(e2)

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

    // given the arguments of a function call, we find their intro-info and propagate them to the function's parameters
    def bindIInfo(args: Ls[TrivialExpr], params: Ls[Symbol])(using env: Env) =
      args.iterator.zip(params).foreach:
        case (Expr.Ref(x), p) if env.intros.contains(x) => env.intros.addOne(p -> env.intros(x))
        case _ => ()
    
    def fTExprWithLoc(x: TrivialExpr, loc: Loc)(using env: Env): Opt[I] = x match
      case Expr.Ref(name) => env.intros.get(name)
      case _ => N

    def fExprWithLoc(e: Expr, loc: Loc)(using env: Env): Opt[I] = e match
      case Expr.Ref(sym) => env.intros.get(sym)
      case Expr.CtorApp(cls, args) => S(I(loc, IInfo.Ctor(cls)))
      case _ => N

    def fNode(node: Node)(using env: Env): Ls[Opt[I]] = node match
      case Node.Result(res) => res.map(f => fTExprWithLoc(f, node))
      case Node.Jump(func, args) => 
        info.getActiveResults(func).map:
          case N => N
          case S(I(loc, i)) => S(I(node, i))
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
        for i <- fExprWithLoc(expr, node) do addI(name, i)
        fNode(body)
      case Node.LetMethodCall(names, cls, method, args, body) => fNode(body)
      case Node.LetCall(names, func, args, body) =>
        val funcDefn = info.getFunc(func)
        val ars = info.getActiveResults(func)
        names.iterator.zip(ars).foreach:
          case (rv, S(I(oldLoc, i))) => addI(rv, I(node, i))
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
  case class PreFuncBody(body: Node => Node)
  case class PostFuncBody(body: Node)
  
  private class Splitting(info: FnInfo):
    case class RefEqNode(node: Node):
      override def equals(that: Any) = that match
        case RefEqNode(thatNode) => node eq thatNode
        case _ => false
      override def hashCode = node.hashCode
    
    case class Env(
      i: IntroductionAnalysis.Env,
      e: EliminationAnalysis.Env,
      possibleSplitting: MutHMap[RefEqNode, (PreFuncBody, PostFuncBody)] = MutHMap.empty,
    )

    case class SymDDesc(
      knownClass: Local,
      isIndirect: Bool,
      e: E
    )

    case class SDesc(
      func: Func,
      argumentsDesc: MutHMap[Local, SymDDesc] = MutHMap.empty,
      firstDestructedSym: Opt[Local] = N,
      mixingProducer: MutHMap[Local, Func] = MutHMap.empty,
    )

    def symAndIntroOfTExpr(te: TrivialExpr)(using env: Env): Opt[(Local, I)] = te match
      case Expr.Ref(x) => for i <- env.i.intros.get(x) yield (x, i)
      case _ => none
    
    def findProducer(loc: Loc) = loc match
      case Loc(Node.LetCall(_, producer, _, _)) => some(producer)
      case _ => none
    
    def checkSTarget(func: Func, args: Ls[TrivialExpr])(using env: Env) =
      val activeParams = info.getActiveParams(func.name)
      val params = func.params
      val argsIntros = args.iterator.map(symAndIntroOfTExpr)
      val firstD = DestructUtils.getFirstDestructed(func.body)
      var argumentsDesc = MutHMap.empty[Local, SymDDesc]
      val mixingProducer = MutHMap.empty[Local, Func]
      argsIntros.zip(params.iterator.zip(activeParams.iterator)).foreach:
        case ((S((arg, I(loc, IInfo.Ctor(cls))))), (param, elims)) =>
          for e <- elims do e match
            case E(loc, EInfo.Des) => argumentsDesc.update(param, SymDDesc(cls, false, e))
            case E(loc, EInfo.IndDes) => argumentsDesc.update(param, SymDDesc(cls, true, e))
            case _ =>
        case (S((arg, I(loc, IInfo.Mixed(is)))), (p, elims)) =>
          for e <- elims do e match
            case E(_, EInfo.Des | EInfo.IndDes) =>
              // what to do with a mixing producer?
              // it's different with other kinds of splitting
              // 
              // for example, in f0, we have following program:
              //   ... #1
              // let x1 = f1() in
              //   ... #2
              // let x2 = f2(x1) in
              //   ... #3
              // where x1 is `IInfo.Mixed`
              // 
              // what we need to to is splitting f1
              // let ... = f1_pre() in
              // case ... of 
              //   C1(...) => let x1 = f1_post1(...) in
              //              jump f0_post(x1)
              //   C2(...) => let x1' = f1_post2(...) in
              //              jump f0_post(x1')
              // 
              // f0_post will looks like
              //   ... #2
              // let x2 = f2(x1) in
              //   ... #2
              // the problem is how to correctly collect all structures necessary for `f0_post``.
              // as we are traversing over the node chain, we shall accumulate the continuation that with a node hole.
              // 
              // in the example above, when we see f2(x1) and find the producer of x1 should be splitted,
              // we already have the continuation until `... in #1`
              // (we need record the pre-cont before every possible splitting position).
              // though, it's still necessary to obtain `... #2` to `... #3` directly.
              // how to do that? it's just a node following the f1() call, so it's naturally included by the LetCall node
              // it also indicates that yet another kind of context should be carefully maintained.
              // another point is worth noticing that we need to do alpha-renaming after using the pre-cont and post-cont!!!
              val producer = findProducer(loc)
              for p <- producer do 
                mixingProducer.update(p, info.getFunc(p))
            case _ =>
        case _ => ()
      SDesc(func, argumentsDesc, firstD, mixingProducer)

    def memoCall(callNode: Node.LetCall)(k: Node => Env ?=> Node)(using env: Env): Unit =
      val Node.LetCall(names, func, args, body) = callNode
      env.possibleSplitting.update(RefEqNode(callNode), (PreFuncBody(node => k(node)(using env)), PostFuncBody(body)))

    def fNode(node: Node)(k: Node => Env ?=> Node)(using env: Env): Node = node match
      case Node.Result(res) => k(node)
      case Node.Jump(func, args) =>
        checkSTarget(info.getFunc(func), args)
        k(node)
      case Node.Case(scrutinee, cases, default) =>
        symAndIntroOfTExpr(scrutinee) match
          case Some((scrutinee, I(loc, IInfo.Mixed(i)))) =>
            ???
          case _ =>
            val nuCases = cases.map:
              case (p @ Pat.Class(cls), body) =>
                val old = env.i.intros.put(cls, I(node, IInfo.Ctor(cls)))
                val nuBody = fNode(body)(x => x)
                for i <- old do env.i.intros.update(cls, i)
                (p, nuBody)
              case (p @ Pat.Lit(lit), body) => 
                (p, fNode(body)(x => x))
            val dfltCase = default.map(fNode(_)(x => x))
            k(Node.Case(scrutinee, nuCases, dfltCase))
      case Node.Panic(msg) => node
      case Node.LetExpr(name, expr, body) =>
        fNode(body): inner =>
          k(Node.LetExpr(name, expr, inner))
      case Node.LetMethodCall(names, cls, method, args, body) =>
        fNode(body): inner =>
          k(Node.LetMethodCall(names, cls, method, args, inner))
      case node @ Node.LetCall(names, func, args, body) =>
        checkSTarget(info.getFunc(func), args)
        memoCall(node)(k)
        fNode(body): inner =>
          k(Node.LetCall(names, func, args, inner))
    