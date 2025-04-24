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
import collection.mutable.{HashMap => MutHMap, HashSet => MutHSet, LinkedHashMap => MutLMap, LinkedHashSet => MutLSet}
import scala.collection.mutable.ListBuffer
import hkmc2.syntax.Literal
import hkmc2.syntax.Tree.IntLit

final case class OptErr(message: String) extends Exception(message)

private def oErrStop(msg: Message)(using Raise) =
  raise(ErrorReport(msg -> N :: Nil,
    source = Diagnostic.Source.Compilation))
  throw OptErr("stopped")

def notBuiltinLetCall(node: Node.LetCall) =
  node.func.nme =/= "<builtin>"

def notBuiltin(sym: Local) =
  sym.nme =/= "<builtin>"

def notCallable(sym: Local) =
  sym.nme =/= "Callable"

def showSym(sym: Local) = s"${sym.nme}$$${sym.uid.toString()}"

class Status[T](var elem: T):
  def get = elem
  def set(newElem: T) = elem = newElem

final class LlirOpt(using Elaborator.State, Raise)(tl: TraceLogger, freshInt: FreshInt, flags: Set[Str]):
  import tl.{log, trace, traceNot}

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

  def newFunSym(name: Str) = BlockMemberSymbol(name, Nil)
  def newTemp = TempSymbol(N, "x")
  val placeHolderSym = TempSymbol(N, "<placeholder>")

  // We have 3 similar but different maps here:
  // * RenameUtil: it's used when need rename with an existing mapping.
  //     The term must be closed.
  // * SubstUtil: it's used when need substitution with an existing mapping.
  //     If there's no mapping of a name, it will raise an error.
  // * MapUtil: it's used when need map with an existing mapping.
  //     It only replace the name if there's a mapping for the name, left other names unchanged.
  class RenameUtil(var map: Map[Local, Local] = Map.empty):
    def subst(sym: Local): Local = map.get(sym) match
      case Some(x) => x
      case None =>
        val nu = newTemp
        map += (sym, nu)
        nu
    def subst(sym: IterableOnce[Local]): Iterator[Local] = sym.iterator.map(subst)
    def substT(sym: TrivialExpr): TrivialExpr = sym.foldRef(x => Expr.Ref(subst(x)))
    def substT(sym: IterableOnce[TrivialExpr]): Iterator[TrivialExpr] = sym.iterator.map(substT)

  class SubstUtil[K, V](val map: Map[K, V]):
    def subst(k: K) = map.getOrElse(k, oErrStop(s"Key $k not found"))
    def subst(k: IterableOnce[K]): Iterator[V] = k.iterator.map(subst)

  class MapTexprUtil(val map: Map[Local, TrivialExpr]):
    def subst(k: Local) = map.getOrElse(k, Expr.Ref(k))
    def subst(k: IterableOnce[Local]): Iterator[TrivialExpr] = k.iterator.map(subst)
    def substT(sym: TrivialExpr): TrivialExpr = sym.foldRef(subst)
    def substT(sym: IterableOnce[TrivialExpr]): Iterator[TrivialExpr] = sym.iterator.map(substT)

  class MapUtil(val map: Map[Local, Local]):
    def subst(k: Local) = map.getOrElse(k, k)
    def subst(k: IterableOnce[Local]): Iterator[Local] = k.iterator.map(subst)
    def substT(sym: TrivialExpr): TrivialExpr = sym.foldRef(x => Expr.Ref(subst(x)))
    def substT(sym: IterableOnce[TrivialExpr]): Iterator[TrivialExpr] = sym.iterator.map(substT)

  def renameExpr(expr: Expr)(using s: RenameUtil): Expr = expr match
    case Expr.Ref(sym) => Expr.Ref(s.subst(sym))
    case Expr.Literal(lit) => expr
    case Expr.CtorApp(cls, args) => Expr.CtorApp(cls, s.substT(args).toList)
    case Expr.Select(name, cls, field) => Expr.Select(s.subst(name), cls, field)
    case Expr.BasicOp(name, args) => Expr.BasicOp(name, s.substT(args).toList)
    case Expr.AssignField(assignee, cls, field, value) => Expr.AssignField(s.subst(assignee), cls, field, s.substT(value))
  
  def renameNode(node: Node)(using s: RenameUtil): Node = node match
    case Node.Result(res) => Node.Result(s.substT(res).toList)
    case Node.Jump(func, args) => Node.Jump(func, s.substT(args).toList) 
    case Node.Case(scrutinee, cases, default) =>
      Node.Case(s.substT(scrutinee), cases.map:
        case (pat, body) => pat -> renameNode(body),
        default.map(renameNode(_)))
    case Node.Panic(msg) => Node.Panic(msg)
    case Node.LetExpr(name, expr, body) =>
      val nuName = s.subst(name)
      val nuExpr = renameExpr(expr)
      Node.LetExpr(nuName, nuExpr, renameNode(body))
    case Node.LetMethodCall(names, cls, method, args, body) =>
      val nuNames = names.map(s.subst)
      Node.LetMethodCall(nuNames, cls, method, s.substT(args).toList, renameNode(body))
    case Node.LetCall(names, func, args, body) =>
      val nuNames = names.map(s.subst)
      Node.LetCall(nuNames, func, s.substT(args).toList, renameNode(body))
  
  def mapExpr(expr: Expr)(using s: MapUtil): Expr = expr match
    case Expr.Ref(sym) => Expr.Ref(s.subst(sym))
    case Expr.Literal(lit) => expr
    case Expr.CtorApp(cls, args) => Expr.CtorApp(cls, s.substT(args).toList)
    case Expr.Select(name, cls, field) => Expr.Select(s.subst(name), cls, field)
    case Expr.BasicOp(name, args) => Expr.BasicOp(name, s.substT(args).toList)
    case Expr.AssignField(assignee, cls, field, value) => Expr.AssignField(s.subst(assignee), cls, field, s.substT(value))

  def mapNode(node: Node)(using s: MapUtil): Node = node match
    case Node.Result(res) => Node.Result(s.substT(res).toList)
    case Node.Jump(func, args) => Node.Jump(func, s.substT(args).toList) 
    case Node.Case(scrutinee, cases, default) =>
      Node.Case(s.substT(scrutinee), cases.map:
        case (pat, body) => pat -> mapNode(body),
        default.map(mapNode(_)))
    case Node.Panic(msg) => Node.Panic(msg)
    case Node.LetExpr(name, expr, body) =>
      val nuName = s.subst(name)
      val nuExpr = mapExpr(expr)
      Node.LetExpr(nuName, nuExpr, mapNode(body))
    case Node.LetMethodCall(names, cls, method, args, body) =>
      val nuNames = names.map(s.subst)
      Node.LetMethodCall(nuNames, cls, method, s.substT(args).toList, mapNode(body))
    case Node.LetCall(names, func, args, body) =>
      val nuNames = names.map(s.subst)
      Node.LetCall(nuNames, func, s.substT(args).toList, mapNode(body))
  
  
  enum IInfo:
    case BoolCtor(b: Bool) // boolean literal as a special case
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

  object ProgInfo:
    def fromProgram(prog: LlirProgram) =
      ProgInfo(
        activeParams = MutHMap.from(prog.defs.iterator.map(f => f.name -> f.params.map(_ => SortedSet.empty[E]))),
        activeResults = MutHMap.from(prog.defs.iterator.map(f => f.name -> List.fill(f.resultNum)(N))),
        func = MutHMap.from(prog.defs.map(f => f.name -> f)),
        classes = MutHMap.from(prog.classes.map(c => c.name -> c)),
        entry = prog.entry
      )

  case class ProgStat(
    classes_size: Int,
    func_size: Int
  ):
    override def toString(): String = s"class size: $classes_size func size: $func_size"
  
  case class ProgInfo(
    activeParams: MutHMap[Local, Ls[SortedSet[E]]],
    activeResults: MutHMap[Local, Ls[Opt[I]]],
    func: MutHMap[Local, Func],
    classes: MutHMap[Local, ClassInfo],
    entry: Local,
  ):
    def toProgram =
      LlirProgram(classes.values.toSet, func.values.toSet, entry = entry)

    def getActiveParams(func: Local) =
      activeParams.getOrElse(func, oErrStop(s"Function $func with empty activeParams"))

    def getActiveResults(func: Local) =
      activeResults.getOrElse(func, oErrStop(s"Function $func with empty activeResults"))
    
    def getFunc(sym: Local): Func =
      func.getOrElse(sym, oErrStop(s"Function $sym not found"))
    
    def getClass(sym: Local): ClassInfo =
      classes.getOrElse(sym, oErrStop(s"Class $sym not found"))

    def setActiveParams(func: Local, aps: Ls[SortedSet[E]]) = 
      activeParams.update(func, aps)

    def setActiveResults(func: Local, ars: Ls[Opt[I]]) =
      activeResults.update(func, ars)

    def getStat =
      ProgStat(
        classes_size = classes.values.map(_.size).sum,
        func_size = func.values.map(_.size).sum
      )

  private object EliminationAnalysis:
    case class Env(
      val def_count: MutHMap[Local, Int] = MutHMap.empty,
      val elims: MutHMap[Local, MutHSet[E]] = MutHMap.empty,
      val defn: Local,
      val visited: MutHSet[Local] = MutHSet.empty,
    )

  enum Loc:
    case CallSite(func: Local, args: Ls[TrivialExpr])
    case CaseSite(scrutinee: TrivialExpr)
    case ExprBinder(assignee: Local)
    case Other

    def matches(node: Node) = (node, this) match
      case (Node.Jump(func, args), CallSite(f, a)) => func === f && args === a
      case (Node.LetCall(_, func, args, _), CallSite(f, a)) => func === f && args === a
      case (Node.Case(scrutinee, _, _), CaseSite(s)) => scrutinee === s
      case (Node.LetExpr(assignee, _, _), ExprBinder(a)) => assignee === a
      case _ => false
  
  private class EliminationAnalysis(info: ProgInfo):
    import EliminationAnalysis.Env
    def addE(sym: Local, e: E)(using env: Env) =
      env.elims.getOrElseUpdate(sym, MutHSet.empty) += e

    def addBackwardE(sym: Local, e: E, newLoc: Loc)(using env: Env) =
      import EInfo.*
      val e2 = e match
        case E(_, Des) | E(_, IndDes) => Some(E(newLoc, IndDes))
        case E(_, Pass) => Some(E(newLoc, Pass))
        case _ => None
      for e2 <- e2 do env.elims.getOrElseUpdate(sym, MutHSet.empty).add(e2)

    def addDef(sym: Local)(using env: Env) =
      env.def_count.update(sym, env.def_count.getOrElse(sym, 0) + 1)

    def fTExprWithLoc(x: TrivialExpr, loc: Loc)(using env: Env): Unit =
      x.iterRef(addE(_, E(loc, EInfo.Pass)))

    def fExprWithLoc(x: Expr, loc: Loc)(using env: Env): Unit = x match
      case Expr.Ref(name) => addE(name, E(loc, EInfo.Pass))
      case Expr.Literal(lit) =>
      case Expr.CtorApp(name, args) => args.foreach(fTExprWithLoc(_, loc))
      case Expr.Select(name, cls, field) => addE(name, E(loc, EInfo.Sel(cls, field)))
      case Expr.BasicOp(name, args) => args.foreach(fTExprWithLoc(_, loc))
      case Expr.AssignField(assignee, _, _, value) => TODO("fExprWithLoc: AssignField")

    def fNode(node: Node)(using env: Env): Unit = 
      def fDef(func: Local, args: Ls[TrivialExpr], funcDefn: Func)(using env: Env) =
        val aps = info.getActiveParams(func)
        args.iterator.zip(aps).foreach:
          case (Expr.Ref(x), ys) => ys.foreach(y => addBackwardE(x, y, Loc.CallSite(func, args)))
          case _ =>
        if !env.visited.contains(func) && notBuiltin(func) then
          env.visited.add(func)
          val funcDefn = info.getFunc(func)
          funcDefn.params.foreach(addDef)
          val newEnv = env.copy(defn = func)
          fNode(funcDefn.body)(using newEnv)
      node match
      case Node.Result(res) => res.foreach(fTExprWithLoc(_, Loc.Other))
      case Node.Jump(func, args) =>
        args.foreach(fTExprWithLoc(_, Loc.Other))
        if notBuiltin(func) then
          fDef(func, args, info.getFunc(func))
      case Node.Case(s @ Expr.Ref(scrutinee), cases, default) =>
        val loc = Loc.CaseSite(s)
        addE(scrutinee, E(loc, EInfo.Pass))
        addE(scrutinee, E(loc, EInfo.Des))
        cases.foreach { case (cls, body) => fNode(body) }
        default.foreach(fNode)
      case Node.Case(_, cases, default) => 
        cases.foreach { case (cls, body) => fNode(body) }
        default.foreach(fNode)
      case Node.Panic(msg) =>
      case Node.LetExpr(name, expr, body) =>
        fExprWithLoc(expr, Loc.ExprBinder(name))
        addDef(name)
        fNode(body)
      case Node.LetMethodCall(names, cls, method, args, body) =>
        // TODO: LetMethodCall
        fNode(body)
      case Node.LetCall(names, func, args, body) =>
        names.foreach(addDef)
        args.foreach(fTExprWithLoc(_, Loc.Other))
        if notBuiltin(func) then
          fDef(func, args, info.getFunc(func))
        fNode(body)
      
    def run() =
      var changed = true
      var env = Env(defn = placeHolderSym)
      while changed do
        changed = false
        env = Env(defn = placeHolderSym)
        info.func.values.foreach: func =>
          val old = info.getActiveParams(func.name)
          func.params.foreach(addDef(_)(using env))
          fNode(func.body)(using env)
          val nu = func.params.iterator.map(p => env.elims.getOrElse(p, MutHSet.empty).toSortedSet).toList
          changed |= old =/= nu
          info.setActiveParams(func.name, nu)
      env

  private object IntroductionAnalysis:
    case class Env(
      intros: MutHMap[Local, I] = MutHMap.empty,
      default_intro: Ls[Opt[I]], // the intro of panic
    )
  
  private class IntroductionAnalysis(info: ProgInfo):
    import IntroductionAnalysis.Env
    def mergeIntroSet(loc: Loc, is: Set[I]): Opt[I] =
      if is.nonEmpty then
        val i = is.head
        val iInfo = i.info
        if is.forall(_.info === iInfo) then
          S(I(loc, iInfo))
        else
          S(I(loc, IInfo.Mixed(is)))  
      else N
    def mergeIntros(xs: Ls[Ls[Opt[I]]], loc: Loc): Ls[Opt[I]] =
      traceNot[Ls[Opt[I]]](s"mergeIntros: $xs"):
        val xst = xs.transpose
        xst.map: ys =>
          val z = ys.flatMap:
            case N => Set.empty[I]
            case S(I(loc, IInfo.Mixed(i))) => i
            case S(i) => Set(i)
          .toSet
          mergeIntroSet(loc, z)

    def addI(sym: Local, i: I)(using env: Env) =
      traceNot[Unit](s"addI: ${sym.nme}$$${sym.uid.toString()} -> $i"):
        if env.intros.contains(sym) then
          oErrStop(s"Multiple introductions of ${sym.nme}$$${sym.uid.toString()}")
        env.intros.update(sym, i)
    
    
    def addITExpr(te: TrivialExpr, i: I)(using env: Env) = te match
      case Expr.Ref(x) => addI(x, i)
      case _ => ()

    // given the arguments of a function call, we find their intro-info and propagate them to the function's parameters
    def bindIInfo(args: Ls[TrivialExpr], params: Ls[Symbol])(using env: Env) =
      args.iterator.zip(params).foreach:
        case (Expr.Ref(x), p) if env.intros.contains(x) => env.intros.addOne(p -> env.intros(x))
        case (Expr.Literal(Tree.BoolLit(b)), p) => env.intros.addOne(p -> I(Loc.Other, IInfo.BoolCtor(b)))
        case _ => ()
    
    def fTExprWithLoc(x: TrivialExpr, loc: Loc)(using env: Env): Opt[I] = x match
      case Expr.Ref(name) => env.intros.get(name)
      case Expr.Literal(Tree.BoolLit(b)) => S(I(loc, IInfo.BoolCtor(b)))
      case _ => N

    def fExprWithLoc(e: Expr, loc: Loc)(using env: Env): Opt[I] = e match
      case Expr.Ref(sym) => env.intros.get(sym)
      case Expr.CtorApp(cls, args) => S(I(loc, IInfo.Ctor(cls)))
      case Expr.Literal(Tree.BoolLit(b)) => S(I(loc, IInfo.BoolCtor(b)))
      case _ => N

    def fNode(node: Node)(using env: Env): Ls[Opt[I]] = 
      traceNot[Ls[Opt[I]]](s"fNode: $node"):
        node match
        case Node.Result(res) => res.map(f => fTExprWithLoc(f, Loc.Other))
        case Node.Jump(func, args) => 
          info.getActiveResults(func).map:
            case N => N
            case S(I(loc, i)) => S(I(Loc.CallSite(func, args), i))
        case Node.Case(scrutinee, cases, default) =>
          val casesIntros = cases.map:
            case (Pat.Class(cls), body) =>
              // addITExpr(scrutinee, I(node, IInfo.Ctor(cls)))
              fNode(body)
            case (Pat.Lit(lit), body) => fNode(body)
          default match
            case N => mergeIntros(casesIntros, Loc.CaseSite(scrutinee))
            case S(x) => mergeIntros(casesIntros :+ fNode(x), Loc.CaseSite(scrutinee))
        case Node.Panic(msg) => env.default_intro
        case Node.LetExpr(name, expr, body) =>
          for i <- fExprWithLoc(expr, Loc.ExprBinder(name)) do addI(name, i)
          fNode(body)
        case Node.LetMethodCall(names, cls, method, args, body) => fNode(body)
        case Node.LetCall(names, func, args, body) =>
          if notBuiltin(func) then
            val funcDefn = info.getFunc(func)
            val ars = info.getActiveResults(func)
            names.iterator.zip(ars).foreach:
              case (rv, S(I(oldLoc, i))) => addI(rv, I(Loc.CallSite(func, args), i))
              case _ => ()
          fNode(body)
      
    def run() =
      var changed = true
      var env = Env(default_intro = Nil)
      while changed do
        changed = false
        env = Env(default_intro = Nil)
        info.func.values.foreach: func =>
          val old = info.getActiveResults(func.name)
          val nu = fNode(func.body)(using env.copy(default_intro = List.fill(func.resultNum)(N)))
          assert(old.length === nu.length, s"old: $old, nu: $nu")
          changed |= old =/= nu
          info.setActiveResults(func.name, nu)
      env

  private def bindByOrder(bindings: Ls[(Local, Expr)], cont: Node): Node = 
    // more efficient using mutation, but anyway
    bindings match
      case Nil => cont
      case (name, expr) :: xs =>
        Node.LetExpr(name, expr, bindByOrder(xs, cont)) 

  enum KnownClass:
    case Ctor(cls: Local)
    case BoolCtor(b: Bool)

  private class Splitting(info: ProgInfo):
    case class PreFunc(sym: Local, results: Ls[Local], body: PreFuncBody, orig: Func)
    case class PreSelections(selections: Ls[Selection], results: Ls[Local], orig: Func)
    case class PostFunc(sym: Local, params: Ls[Local], body: PostFuncBody, orig: Func)
    case class PreFuncBody(body: Node => Node)
    case class PostFuncBody(body: Node)
  
    case class Env(
      i: IntroductionAnalysis.Env,
      e: EliminationAnalysis.Env,
      possibleSplitting: MutHMap[Loc, (Ls[Symbol], PreFuncBody, PostFuncBody)] = MutHMap.empty,
      workingList: MutLSet[Func] = MutLSet.empty,
    )

    // symbol destruction descriptor
    case class SymDDesc(
      knownClass: KnownClass,
      isIndirect: Bool,
      e: E
    )

    // symbol selection descriptor
    case class SymSDesc(
      hasPass: Bool, // if this symbol was passed to another pass, it's necessary to re-assemble it
      selected: SortedSet[Str]
    )

    case class SDesc(
      argumentsDDesc: MutLMap[Local, SymDDesc] = MutLMap.empty,
      argumentsSDesc: MutLMap[Local, SymSDesc] = MutLMap.empty,
      firstDestructedSym: Opt[Local] = N,
      mixingProducer: MutLMap[Local, (Loc, Symbol)] = MutLMap.empty, // producer -> (call_site, variable bound to the return value)
    ):
      override def toString(): String =
        s"argumentsDDesc: ${argumentsDDesc.map(_.toString()).mkString(",")}, " +
        s"argumentsSDesc: ${argumentsSDesc.map(_.toString()).mkString(",")}, " +
        s"firstDestructedSym: ${firstDestructedSym.map(_.toString()).getOrElse("N")}, " +
        s"mixingProducer: ${mixingProducer.map(_.toString()).mkString(",")}"

    def symAndIntroOfTExpr(te: TrivialExpr)(using env: Env): Opt[(Opt[Local], I)] = te match
      case Expr.Ref(x) => for i <- env.i.intros.get(x) yield (S(x), i)
      case Expr.Literal(Tree.BoolLit(b)) => S((N, I(Loc.Other, IInfo.BoolCtor(b))))
      case _ => none
    
    def findProducer(loc: Loc) = loc match
      case Loc.CallSite(producer, _) => some(producer)
      case _ => none
    
    // how this function reflects the splitting decision?
    // if argumentsDesc is non-empty, it means the callee is a target of been splitted
    // if mixingProducer is non-empty, it means a call happens before is a mixing producer,
    //   as well as the splitting target
    def checkSTarget(func: Func, args: Ls[TrivialExpr])(using env: Env): SDesc =
      trace[SDesc](s"checkSTarget: ${func.name}(${showArguments(args)})", desc => s"checkSTarget end: $desc"):
        val activeParams = info.getActiveParams(func.name)
        val params = func.params
        val argsIntros = args.iterator.map(symAndIntroOfTExpr)
        val firstD = DestructUtils.getFirstDestructed(func.body)
        val argumentsDDesc = MutLMap.empty[Local, SymDDesc]
        val argumentsSDesc = MutLMap.empty[Local, SymSDesc]
        val mixingProducer = MutLMap.empty[Local, (Loc, Symbol)]
        argsIntros.zip(params.iterator.zip(activeParams.iterator)).foreach:
          case ((S((S(arg), I(loc, IInfo.Ctor(cls))))), (param, elims)) =>
            var allElimsSelOrPass = true
            val selected = MutLSet.empty[Str]
            var hasPass = false
            for e <- elims do e match
              case E(loc, EInfo.Des) => allElimsSelOrPass = false; argumentsDDesc.update(param, SymDDesc(KnownClass.Ctor(cls), false, e))
              case E(loc, EInfo.IndDes) => allElimsSelOrPass = false; argumentsDDesc.update(param, SymDDesc(KnownClass.Ctor(cls), true, e))
              case E(loc, EInfo.Sel(cls, field)) => selected.add(field)
              case E(loc, EInfo.Pass) => hasPass = true
            if allElimsSelOrPass && selected.nonEmpty then
              // if this flag is true, it means that we can probably do arguments flattening
              log(s"selected: $selected, allElimsSelOrPass: $allElimsSelOrPass")
              argumentsSDesc.update(param, SymSDesc(hasPass, selected.toSortedSet))
          
          case ((S((_, I(loc, IInfo.BoolCtor(b))))), (param, elims)) =>
            for e <- elims do e match
              case E(loc, EInfo.Des) => argumentsDDesc.update(param, SymDDesc(KnownClass.BoolCtor(b), false, e))
              case E(loc, EInfo.IndDes) => argumentsDDesc.update(param, SymDDesc(KnownClass.BoolCtor(b), true, e))
              case _ => ()
          case (S((S(arg), I(loc, IInfo.Mixed(is)))), (param, elims)) =>
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
                // we store the arg, so we known which return value in the call site lead to the splitting
                for p <- producer do 
                  mixingProducer.update(p, (loc, arg))
              case _ =>
          case _ => ()
        SDesc(argumentsDDesc, argumentsSDesc, firstD, mixingProducer)

    def memoCall(callNode: Node.LetCall)(k: Node => Env ?=> Node)(using env: Env): Unit =
      val Node.LetCall(names, func, args, body) = callNode
      env.possibleSplitting.update(Loc.CallSite(func, args), (names, PreFuncBody(node => k(node)(using env)), PostFuncBody(body)))

    // there's another strategy to split a callee of functions calls
    // they can be categorized into several kinds:
    // 1. the elimination happens in a nested call
    //    a). the elimination happens in a most-out level, which means it isn't contained by any other case.
    //        so what need to do is simply split the callee into 3 parts, namely pre, call, and post.
    //        this mode is called A mode
    //    b). it's inside a case
    //        it's a little difficult to handle, but if this happens, how about to delegate it to the 3rd case
    //        as we already have a mechanism to handle it.
    // 2. the elimination happens in a nested jump
    //    similar to case 1, but only 2 parts for 2.a, which is called B mode
    // 3. the elimination happens in a case
    //    a). still the case is the outmost one, which is called C mode
    //        in this case, the function is split into 1 + #(case arms) parts
    //    b). it's inside another case
    //        still, split the outmost case first
    // 
    // In any case and sub-case above, it should be guaranteed that the node contains at least one let-call,
    // jump, or case node. Otherwise, the splitting is problematic, which implies a bug in the algorithm.
    
    case class CallShape(
      func: Local,
      returns: Opt[Ls[Local]],
      args: Ls[TrivialExpr],
    )

    case class CaseShape(
      scrutinee: TrivialExpr,
      cases: Ls[(Pat, PostFunc)],
      default: Opt[PostFunc],
    )

    enum SplittingMode:
      case A(pre: PreFunc, post: PostFunc, callS: CallShape)
      case B(pre: PreFunc, callS: CallShape)
      case C(pre: PreFunc, caseS: CaseShape)
      case D(pre: PreSelections, post: PostFunc)

    case class ComposeResult(
      // args * (a tail node * returns by the node before the hole) -> node 
      k: (Ls[TrivialExpr], Opt[(Node, Ls[Local])]) => Node,
      newFunc: Ls[Func],
      invalidFunc: Func
    )

    def reComposePreFunc(subst: RenameUtil, preBody: Node => Node, origParams: Ls[Local], preSym: Local, results: Ls[Local]): Func =
      trace[Func](s"reComposePreFunc begin ${origParams.map(showSym)} ${results.map(showSym)}", f => s"reComposePreFunc end: $f"):
        val preParams = subst.subst(origParams)
        val preNode = renameNode(preBody(Node.Result(results.map(Expr.Ref(_)))))(using subst)
        val preFunc = Func(freshInt.make, preSym, preParams.toList, results.length, preNode)
        preFunc

    def reComposePostFunc(subst: RenameUtil, params: Ls[Local], postBody: Node, postSym: Local, resultNum: Int): Func =
      trace[Func](s"reComposePostFunc begin: ${params.map(showSym)} $postBody", f => s"reComposePostFunc end: $f"):
        val postParams = subst.subst(params)
        val postNode = renameNode(postBody)(using subst)
        val postFunc = Func(freshInt.make, postSym, postParams.toList, resultNum, postNode)
        postFunc

    def reComposeWithArgs(
      sm: SplittingMode, knownClass: Opt[Local]): ComposeResult = sm match
        case SplittingMode.A(
          PreFunc(preSym, results, PreFuncBody(preBody), orig),
          PostFunc(postSym, params, PostFuncBody(postBody), _),
          CallShape(func, nestedReturns, nestedArgs)) =>
          val preFunc = reComposePreFunc(RenameUtil(), preBody, orig.params, preSym, results)
          val postFunc = reComposePostFunc(RenameUtil(), params, postBody, postSym, orig.resultNum)
          val k = (args: Ls[TrivialExpr], tailNode: Opt[(Node, Ls[Local])]) =>
            // alpha rename the nestedReturns, results, nestedArgs, and params
            // since they may be reused in different contexts
            val subst = RenameUtil()
            val nuNestedReturns = subst.subst(nestedReturns.get)
            val nuResults = subst.subst(results)
            val nuNestedArgs = subst.substT(nestedArgs)
            val nuParams = subst.subst(params)
            Node.LetCall(nuResults.toList, preSym, args, 
              Node.LetCall(nuNestedReturns.toList, func, nuNestedArgs.toList, 
              tailNode match
              case None => Node.Jump(postSym, nuParams.map(Expr.Ref(_)).toList)
              case Some((node, returns)) =>
                val nuReturns = subst.subst(returns)
                Node.LetCall(nuReturns.toList, postSym, nuParams.map(Expr.Ref(_)).toList, mapNode(node)(using MapUtil(subst.map.toMap)))))
          ComposeResult(k, List(preFunc, postFunc), orig)
        case SplittingMode.B(
          PreFunc(preSym, results, PreFuncBody(preBody), orig),
          CallShape(func, nestedReturns, nestedArgs)) =>
          val preFunc = reComposePreFunc(RenameUtil(), preBody, orig.params, preSym, results)
          val k = (args: Ls[TrivialExpr], tailNode: Opt[(Node, Ls[Local])]) =>
            val subst = RenameUtil()
            // there are no nested returns since in original function it's a jump
            val nuResults = subst.subst(results)
            val nuNestedArgs = subst.substT(nestedArgs)
            Node.LetCall(nuResults.toList, preSym, args,
              tailNode match
              case None => Node.Jump(func, nuNestedArgs.toList)
              case Some((node, returns)) =>
                val nuReturns = subst.subst(returns)
                Node.LetCall(nuReturns.toList, func, nuNestedArgs.toList, mapNode(node)(using MapUtil(subst.map.toMap))))
          ComposeResult(k, List(preFunc), orig)
        case SplittingMode.D(
          PreSelections(selections, results, orig),
          PostFunc(postSym, params, PostFuncBody(postBody), _)) =>
          val postFunc = reComposePostFunc(RenameUtil(), params, postBody, postSym, orig.resultNum)
          val k = (args: Ls[TrivialExpr], tailNode: Opt[(Node, Ls[Local])]) =>
            val literals = orig.params.iterator.zip(args).flatMap:
              case (param, e @ Expr.Literal(_)) => S(param -> e)
              case _ => N
            .toList
            val argsM = orig.params.iterator.zip(args).flatMap:
              case (param, Expr.Ref(name)) => S(param -> name)
              case _ => N
            val subst = RenameUtil(argsM.toMap)
            val nuParams = subst.subst(params)
            val n1 = tailNode match
              case None => Node.Jump(postSym, nuParams.map(Expr.Ref(_)).toList)
              case Some((node, returns)) =>
                val nuReturns = subst.subst(returns)
                Node.LetCall(nuReturns.toList, postSym, nuParams.map(Expr.Ref(_)).toList, mapNode(node)(using MapUtil(subst.map.toMap)))
            val n2 = selections.foldRight(n1):
              case (Selection(binder, nSelected, cls, field), acc) =>
                val nthArg = args.lift(nSelected).get match
                  case Expr.Literal(_) => oErrStop(s"selection on literal")
                  case Expr.Ref(name) => name
                Node.LetExpr(subst.subst(binder), Expr.Select(nthArg, cls, field), acc)
            bindByOrder(literals.map((param, e) => subst.subst(param) -> e), n2)
          ComposeResult(k, List(postFunc), orig)
        // the most complicated case
        case SplittingMode.C(
          PreFunc(preSym, results, PreFuncBody(preBody), orig),
          CaseShape(scrutinee, cases, default)) =>
          val preFunc = reComposePreFunc(RenameUtil(), preBody, orig.params, preSym, results)
          var matchedPat = none[Pat]
    
          val allPostFunc = cases.map:
            case (pat, PostFunc(postSym, params, PostFuncBody(postBody), _)) =>
              val postFunc = reComposePostFunc(RenameUtil(), params, postBody, postSym, orig.resultNum)
              (pat, knownClass) match
                case (Pat.Class(cls), S(cls2)) if cls === cls2 => matchedPat = some(pat)
                case _ =>
              (params, pat, postFunc)
          val defaultPostFunc = default.map:
            case PostFunc(postSym, params, PostFuncBody(postBody), _) =>
              (params, reComposePostFunc(RenameUtil(), params, postBody, postSym, orig.resultNum))

          def tailNodeLetCall(postFunc: Func, postFvs: Ls[Local], returns: Ls[Local], node: Node)(using subst: RenameUtil) = 
            // the reason for postFvs instead of postFunc.params is that the later has been renamed
            // so they cannot be correctly renamed with another RenameUtil
            val postArgs = subst.subst(postFvs).map(Expr.Ref(_)).toList
            val subst2 = RenameUtil()
            val nuReturns = subst2.subst(returns)
            Node.LetCall(nuReturns.toList, postFunc.name, postArgs, mapNode(node)(using MapUtil(subst2.map.toMap)))
          def tailNodeJump(postFunc: Func, postFvs: Ls[Local])(using subst: RenameUtil) = 
            val postArgs = subst.subst(postFvs).map(Expr.Ref(_)).toList
            Node.Jump(postFunc.name, postArgs)
          def tailNodeChoose(postFvs: Ls[Local], postFunc: Func, tailNode: Opt[(Node, Ls[Local])])(using subst: RenameUtil) =
            tailNode match
            case None => tailNodeJump(postFunc, postFvs)
            case Some((node, returns)) => tailNodeLetCall(postFunc, postFvs, returns, node)
          // the supplied node should be trivial, otherwise we actually duplicate stuff here
          val k = (args: Ls[TrivialExpr], tailNode: Opt[(Node, Ls[Local])]) =>
            given subst: RenameUtil = RenameUtil()
            val nuResults = subst.subst(results)
            val nuScrutinee = subst.substT(scrutinee)
            (knownClass, matchedPat) match
            case (None, _) => 
              Node.LetCall(nuResults.toList, preSym, args,
                Node.Case(nuScrutinee, allPostFunc.map:
                  case (args, pat, postFunc) =>
                    pat -> tailNodeChoose(args, postFunc, tailNode),
                  defaultPostFunc.map((args, postFunc) =>
                    tailNodeChoose(args, postFunc, tailNode))))
            case (Some(_), None) =>
              // only keep the default case if there's one
              defaultPostFunc match
                case None => 
                  Node.LetCall(nuResults.toList, preSym, args,
                    Node.Case(nuScrutinee, allPostFunc.map:
                      case (args, pat, postFunc) =>
                        pat -> tailNodeChoose(args, postFunc, tailNode),
                      defaultPostFunc.map((args, postFunc) =>
                        tailNodeChoose(args, postFunc, tailNode))))
                case Some((args2, postFunc)) =>
                  Node.LetCall(nuResults.toList, preSym, args,
                    tailNodeChoose(args2, postFunc, tailNode))
            case (Some(_), Some(matched)) =>
              Node.LetCall(nuResults.toList, preSym, args,
                allPostFunc.flatMap:
                  case (args, pat, postFunc) => if pat === matched then
                    S(tailNodeChoose(args, postFunc, tailNode)) else N
                .head)
          ComposeResult(k, preFunc :: allPostFunc.map(_._3) ++ defaultPostFunc.map(_._2).toList, orig)

    
    def sFunc(func: Func, splitPos: Loc): SplittingMode =
      traceNot[SplittingMode](s"sFunc: ${func.name |> showSym}, $splitPos"):
        sNode(func.body, splitPos, func)(identity)

    def sNode(node: Node, splitPos: Loc, thisFunc: Func)(acc: Node => Node): SplittingMode = 
      trace[SplittingMode](s"sNode: ${acc(Node.Panic("placeholder"))} -> $node"): 
        node match
        case Node.Result(res) => oErrStop(s"sNode: unexpected Result $res")
        case Node.Jump(func, args) =>
          // B mode
          val sym = newFunSym(s"${thisFunc.name.nme}_pre")
          val pfBody = PreFuncBody(acc)
          val fvs = FreeVarAnalysis(info.func).run(node)
          val results = fvs.toList
          val pf = PreFunc(sym, results, pfBody, thisFunc)
          val cs = CallShape(func, none, args)
          SplittingMode.B(pf, cs)
        case Node.Case(scrutinee, cases, default) =>
          // C mode
          val sym = newFunSym(s"${thisFunc.name.nme}_pre")
          val pfBody = PreFuncBody(acc)
          val fvs = FreeVarAnalysis(info.func).run(node)
          val results = fvs.toList
          val pf = PreFunc(sym, results, pfBody, thisFunc)
          val cases2 = cases.zipWithIndex.map:
            case ((pat, body), i) =>
              val sym = newFunSym(s"${thisFunc.name.nme}_case$i")
              val fvs = FreeVarAnalysis(info.func).run(body)
              val pfBody = PostFuncBody(body)
              val pf = PostFunc(sym, fvs.toList, pfBody, thisFunc)
              (pat, pf)
          val default2 = default.map: node =>
              val sym = newFunSym(s"${thisFunc.name.nme}_default")
              val fvs = FreeVarAnalysis(info.func).run(node)
              val pfBody = PostFuncBody(node)
              val pf = PostFunc(sym, fvs.toList, pfBody, thisFunc)
              pf
          val caseS = CaseShape(scrutinee, cases2, default2)
          SplittingMode.C(pf, caseS)
        case Node.Panic(msg) => oErrStop("sNode: unexpected Panic")
        case Node.LetExpr(name, expr, body) =>
          sNode(body, splitPos, thisFunc)(x => acc(Node.LetExpr(name, expr, x)))
        case Node.LetMethodCall(names, cls, method, args, body) =>
          sNode(body, splitPos, thisFunc)(x => acc(Node.LetMethodCall(names, cls, method, args, x)))
        case Node.LetCall(names, func, args, body) =>
          if splitPos.matches(node) then
            // A mode
            val sym = newFunSym(s"${thisFunc.name.nme}_pre")
            val pfBody = PreFuncBody(acc)
            val fvs = FreeVarAnalysis(info.func).run(node)
            val results = fvs.toList
            val pf = PreFunc(sym, results, pfBody, thisFunc)
            val cs = CallShape(func, some(names), args)
            val postFvs = FreeVarAnalysis(info.func).run(body)
            val sym2 = newFunSym(s"${thisFunc.name.nme}_post")
            SplittingMode.A(pf, PostFunc(sym2, postFvs.toList, PostFuncBody(body), thisFunc), cs)
          else
            sNode(body, splitPos, thisFunc)(x => acc(Node.LetCall(names, func, args, x)))
    
    def srFunc(func: Func, selected: Set[Str]): SplittingMode =
      traceNot[SplittingMode](s"srFunc: ${func.name |> showSym}, $selected"):
        srNode(func.body, selected, func)(Nil)

    case class Selection(binder: Local, nthParam: Int, cls: Local, field: Str)
    
    def srNode(node: Node, selected: Set[Str], thisFunc: Func)(acc: Ls[Selection]): SplittingMode =
      trace[SplittingMode](s"srNode: ${acc} -> $node"):
        node match
        case Node.LetExpr(name, Expr.Select(sym, cls, fld), body) =>
          val selectedPos = thisFunc.params.indexOf(sym)
          assert(selected.contains(fld) && selectedPos =/= -1, s"srNode: unexpected selected: $fld, $selected")
          srNode(body, selected, thisFunc)(Selection(name, selectedPos, cls, fld) :: acc)
        case _ =>
          val fvs = FreeVarAnalysis(info.func).run(node)
          val results = fvs.toList
          val pss = PreSelections(acc.reverse, results, thisFunc)
          val sym2 = newFunSym(s"${thisFunc.name.nme}_sr_post")
          SplittingMode.D(pss, PostFunc(sym2, results, PostFuncBody(node), thisFunc))
    
    // yet another thing is to avoid duplication. once we split a function
    // the sub-components of the function will be wrapped into a new function
    // so the original function should be correspondingly updated.
    def rFunc(orig: Func, cr: ComposeResult)(using env: Env): Unit =
      val s = RenameUtil()
      val nuParams = s.subst(orig.params).toList
      val nuArgs = nuParams.map(Expr.Ref(_)).toList
      val ComposeResult(k, newFuncs, invalidFunc) = cr
      assert(orig.name === invalidFunc.name, s"rFunc: invalidFunc: $invalidFunc, orig: $orig")
      env.workingList.remove(invalidFunc)
      val nuFunc = Func(
        orig.id,
        orig.name,
        nuParams,
        orig.resultNum,
        k(nuArgs, None)
      )
      newFuncs.foreach(f => info.func.update(f.name, f))
      info.func.update(invalidFunc.name, nuFunc)

    def wrapPost(node: Node)(using env: Env, thisFunc: Func): Node =
      trace[Node](s"wrapPost begin: $node", jump => s"wrapPost end: $jump"):
        val fvs = FreeVarAnalysis(info.func).run(node).toList
        val sym = newFunSym(s"${thisFunc.name.nme}_caller_post")
        log(s"wrapPost free vars: ${sym |> showSym} -> ${fvs.map(showSym)}")
        val s = RenameUtil()
        val nuBody = renameNode(node)(using s)
        val nuParams = s.subst(fvs).toList
        val nuFunc = Func(freshInt.make, sym, nuParams, thisFunc.resultNum, nuBody)
        info.func.update(sym, nuFunc)
        Node.Jump(sym, fvs.map(Expr.Ref(_)))

    

    // sym: the symbol of the mixing producer
    // loc: the location of the call site where the mixing producer is called
    // argI: the name bound to the return value of the mixing producer
    def liftOutMixingProducer(sym: Symbol, loc: Loc, argI: Symbol)(using env: Env, thisFunc: Func): Node =
      if !env.possibleSplitting.contains(loc) then
        oErrStop(s"mixing producer not found: ${loc}")
      val (names, preBody, postBody) = env.possibleSplitting(loc)
      val (func, args) = loc match
        case Loc.CallSite(func, args) => (func, args)
        case _ => oErrStop(s"unexpected loc: $loc")
      
      val n = names.indexOf(argI)
      if n == -1 then
        oErrStop(s"unexpected mixing producer: ${argI} not found in $names")
      
      // get the intro info of the mixing producer
      // so we can find the correct splitting position
      log(s"finding splitting pos of ${func |> showSym}")
      val i_mix = info.getActiveResults(func)(n).getOrElse(oErrStop(s"unexpected mixing producer intro info: ${func}"))
      val s_loc = i_mix match
        case I(loc, info) => loc

      val old = info.getFunc(func)
      log(s"splitting mixing producer: ${old.name |> showSym}")
      val sm = sFunc(info.getFunc(func), s_loc)
      val cr = reComposeWithArgs(sm, N)
      rFunc(old, cr)
      val nuBody = wrapPost(postBody.body)
      preBody.body(cr.k(args, S(nuBody, names)))
    
    def fNodeCases(arms: Ls[(Pat, Node)], oldI: Opt[I], dflt: Option[Node], scrutinee: TrivialExpr, acc: Ls[(Pat, Node)])
                  (k: Node => Env ?=> Node)(using env: Env, thisFunc: Func, changed: Status[Bool]): Node =
      trace[Node](s"fNodeCases: ${if arms.isEmpty then "empty" else arms.head}"):
        arms match
          case Nil =>
            dflt match
              case None => k(Node.Case(scrutinee, acc.reverse, N))
              case Some(d) =>
                scrutinee.iterRef(x =>
                  for i <- oldI do env.i.intros.update(x, i))
                fNode(d): nuDflt =>
                  k(Node.Case(scrutinee, acc.reverse, S(nuDflt)))
          case (p @ Pat.Class(cls), body) :: rest =>
            scrutinee.iterRef(x =>
              env.i.intros.update(x, I(Loc.CaseSite(scrutinee), IInfo.Ctor(cls))))
            fNode(body): nuBody =>
              fNodeCases(rest, oldI, dflt, scrutinee, (p, nuBody) :: acc)(k)
          case (p @ Pat.Lit(lit), body) :: rest =>
            fNode(body): nuBody =>
              fNodeCases(rest, oldI, dflt, scrutinee, (p, nuBody) :: acc)(k)

    
    def fNode(node: Node)(k: Node => Env ?=> Node)(using env: Env, thisFunc: Func, changed: Status[Bool]): Node =
      trace[Node](s"split fNode: $node"):
        node match
        case Node.Result(res) => k(node)
        case Node.Jump(func, args) =>
          val sDesc = checkSTarget(info.getFunc(func), args)
          def trySplit = (sDesc.argumentsDDesc.isEmpty, sDesc.mixingProducer.isEmpty) match
            case (_, false) => 
              changed.set(true)
              val (sym, (loc, argI)) = sDesc.mixingProducer.head
              liftOutMixingProducer(sym, loc, argI)
            case (true, _) => k(node)
            case (false, _) =>
              changed.set(true)
              val desc = sDesc.argumentsDDesc.head
              val (sym, SymDDesc(knownC, isInd, e)) = desc
              val old = info.getFunc(func)
              log(s"splitting: ${old.name |> showSym}")
              val sm = sFunc(old, e.loc)
              val cr = reComposeWithArgs(sm, N)
              rFunc(old, cr)
              val nuBody = cr.k(args, None)
              k(nuBody)
          def tryFlatten =
            // argument flattening
            val (sym, SymSDesc(hasPass, selected)) = sDesc.argumentsSDesc.head
            if hasPass then k(node) // TODO: handle this case
            else 
              changed.set(true)
              val old = info.getFunc(func)
              log(s"flattening: ${old.name |> showSym}")
              val sm = srFunc(old, selected)
              val cr = reComposeWithArgs(sm, N)
              rFunc(old, cr)
              val nuBody = cr.k(args, None)
              k(nuBody)
          if sDesc.argumentsSDesc.isEmpty then trySplit
          else tryFlatten
        case Node.Case(scrutinee, cases, default) =>
          def fallback =
            val oldI = scrutinee match
              case Expr.Ref(x) => env.i.intros.get(x)
              case _ => N
            fNodeCases(cases, oldI, default, scrutinee, Nil)(k)
          symAndIntroOfTExpr(scrutinee) match
            case Some((S(scrutinee), I(loc, IInfo.Mixed(i)))) =>
              // manual checkSTarget
              val p = findProducer(loc)
              p match
                case Some(p) => 
                  changed.set(true)
                  liftOutMixingProducer(p, loc, scrutinee)
                case None => fallback
            case _ => fallback
        case Node.Panic(msg) => k(node)
        case Node.LetExpr(name, expr, body) =>
          fNode(body): inner =>
            k(Node.LetExpr(name, expr, inner))
        case Node.LetMethodCall(names, cls, method, args, body) =>
          fNode(body): inner =>
            k(Node.LetMethodCall(names, cls, method, args, inner))
        case node @ Node.LetCall(names, func, args, body) =>
          if notBuiltin(func) then
            val sDesc = checkSTarget(info.getFunc(func), args)
            def trySplit = (sDesc.argumentsDDesc.isEmpty, sDesc.mixingProducer.isEmpty) match
              case (_, false) => 
                val (sym, (loc, argI)) = sDesc.mixingProducer.head
                changed.set(true)
                liftOutMixingProducer(sym, loc, argI)
              case (true, _) =>
                memoCall(node)(k)
                fNode(body): inner =>
                  k(Node.LetCall(names, func, args, inner))
              case (false, _) =>
                changed.set(true)
                val desc = sDesc.argumentsDDesc.head
                val (sym, SymDDesc(knownC, isInd, e)) = desc
                val old = info.getFunc(func)
                log(s"splitting: ${old.name |> showSym}")
                val sm = sFunc(old, e.loc)
                val cr = reComposeWithArgs(sm, N)
                rFunc(old, cr)
                val tail = wrapPost(body)
                val nuBody = cr.k(args, S(tail, names))
                log(s"nuBody: $nuBody")
                k(nuBody)
            def tryFlatten =
              // argument flattening
              val (sym, SymSDesc(hasPass, selected)) = sDesc.argumentsSDesc.head
              if hasPass then k(node) // TODO: handle this case
              else
                changed.set(true)
                val old = info.getFunc(func)
                log(s"flattening: ${old.name |> showSym}")
                val sm = srFunc(old, selected)
                val cr = reComposeWithArgs(sm, N)
                rFunc(old, cr)
                val tail = wrapPost(body)
                val nuBody = cr.k(args, S(tail, names))
                log(s"nuBody: $nuBody")
                k(nuBody)
            if sDesc.argumentsSDesc.isEmpty then trySplit
            else tryFlatten
          else
            fNode(body): inner =>
              k(Node.LetCall(names, func, args, inner))

    def fFunc(func: Func)(using env: Env, changed: Status[Bool]): Unit =
      traceNot[Unit](s"split fFunc: ${func.name |> showSym}"):
        val nuFunc = Func(func.id, func.name, func.params, func.resultNum, fNode(func.body)(identity)(using env, func))
        info.func.update(func.name, nuFunc)
            
    def run(using changed: Status[Bool]) =
      val i = IntroductionAnalysis(info)
      val iEnv = i.run()
      val e = EliminationAnalysis(info)
      val eEnv = e.run()
      val env = Env(iEnv, eEnv)
      env.workingList.addAll(info.func.values)
      log(s"workingList: ${env.workingList.iterator.map(_.name).toList}")
      while env.workingList.nonEmpty do
        val func = env.workingList.head
        env.workingList.remove(func)
        fFunc(func)(using env)

  private class Simplify(info: ProgInfo):
    def simplify(using Status[Bool]) =
      val newFuncs = info.func.map:
        case (name, func) =>
          val uses = UsefulnessAnalysis()
          uses.run(func)
          var newBody = removeDeadBindings(func.body)(using uses.getUsed)
          newBody = removeTrivialCallAndJump(newBody)(using MapUtil(Map.empty))
          newBody = removeTrivialDestruction(newBody)(using KnownCtors(Map.empty), MapUtil(Map.empty))
          newBody = constantFolding(newBody)(using Map.empty)
          func.name -> func.copy(body = newBody)
      info.func.clear()
      info.func.addAll(newFuncs)
      val reachable = ProgDfs(info).dfs(true)
      log(s"reachableFuncs: ${reachable.funcs.map(showSym).toList}")
      log(s"unreachableFuncs: ${info.func.keys.filterNot(reachable.funcs.contains(_)).map(showSym).toList}")
      log(s"reachableClasses: ${reachable.classes.map(showSym).toList}")
      log(s"unreachableClasses: ${info.classes.keys.filterNot(reachable.classes.contains(_)).map(showSym).toList}")
      if info.func.size =/= reachable.funcs.size then
        summon[Status[Bool]].set(true)
      info.func.filterInPlace((k, _) => reachable.funcs.contains(k))
      if info.classes.size =/= reachable.classes.size then
        summon[Status[Bool]].set(true)
      info.classes.filterInPlace((k, _) => reachable.classes.contains(k))

    case class KnownCtors(map: Map[Local, (KnownClass, Map[Str, TrivialExpr])])

    private def removeDeadBindings(node: Node)(using uses: Set[Local]): Node = node match
      case Node.Result(res) => node
      case Node.Jump(func, args) => node
      case Node.Panic(msg) => node
      case Node.Case(scrutinee, cases, default) =>
        Node.Case(scrutinee,
          cases.map:
            case (pat, body) => pat -> removeDeadBindings(body),
          default.map(removeDeadBindings(_)))
      case Node.LetExpr(name, expr, body) =>
        if uses.contains(name) then
          Node.LetExpr(name, expr, removeDeadBindings(body))
        else
          log(s"removing dead binding: ${{showSym(name)}}")
          removeDeadBindings(body)
      case Node.LetMethodCall(names, cls, method, args, body) =>
        Node.LetMethodCall(names, cls, method, args, removeDeadBindings(body))
      case Node.LetCall(names, func, args, body) =>
        Node.LetCall(names, func, args, removeDeadBindings(body))
    
    private def removeTrivialDestruction(expr: Expr)(using kc: KnownCtors, m: MapUtil)(using s: Status[Bool]): Expr = expr match
      case Expr.Ref(name) => Expr.Ref(m.subst(name))
      case Expr.Literal(lit) => expr
      case Expr.CtorApp(cls, args) => Expr.CtorApp(cls, m.substT(args).toList)
      case Expr.Select(name, cls, field) => Expr.Select(m.subst(name), cls, field)
      case Expr.BasicOp(name, args) => Expr.BasicOp(name, m.substT(args).toList)
      case Expr.AssignField(assignee, cls, field, value) => 
        Expr.AssignField(m.subst(assignee), cls, field, m.substT(value))
    
    private def removeTrivialDestruction(node: Node)(using kc: KnownCtors, m: MapUtil)(using s: Status[Bool]): Node = node match
      case Node.Result(res) => Node.Result(res.map(m.substT))
      case Node.Jump(func, args) => Node.Jump(func, m.substT(args).toList)
      case Node.Panic(msg) => node
      case Node.Case(Expr.Literal(Tree.BoolLit(b)), cases, default) =>
        (cases.find:
          case (Pat.Lit(Tree.BoolLit(b2)), _) => b === b2
          case _ => false) match
            case None => 
              val nuCases = cases.map:
                case (pat, body) => pat -> removeTrivialDestruction(body)(using kc, m)
              val nuDefault = default.map(removeTrivialDestruction(_)(using kc, m))
              Node.Case(Expr.Literal(Tree.BoolLit(b)), nuCases, nuDefault)
            case Some((_pat, body)) => 
              s.set(true)
              removeTrivialDestruction(body)(using kc, m)
      case Node.Case(Expr.Ref(scrutinee), cases, default) if kc.map.contains(m.subst(scrutinee)) =>
        val (knownCls, args) = kc.map(m.subst(scrutinee))
        (cases.find:
          case (Pat.Class(cls2), _) => knownCls match
            case KnownClass.Ctor(cls) => cls === cls2
            case KnownClass.BoolCtor(b) => false
          case (Pat.Lit(Tree.BoolLit(b)), _) => knownCls match
            case KnownClass.Ctor(cls) => false
            case KnownClass.BoolCtor(b2) => b === b2
          case _ => false) match
            case None => 
              val nuCases = cases.map:
                case (pat, body) => pat -> removeTrivialDestruction(body)(using kc, m)
              val nuDefault = default.map(removeTrivialDestruction(_)(using kc, m))
              Node.Case(Expr.Ref(m.subst(scrutinee)), nuCases, nuDefault)
            case Some((_pat, body)) => 
              s.set(true)
              removeTrivialDestruction(body)(using kc, m)
      case Node.Case(scrutinee, cases, default) =>
        val nuCases = cases.map:
          case (pat, body) => pat -> removeTrivialDestruction(body)(using kc, m)
        val nuDefault = default.map(removeTrivialDestruction(_)(using kc, m))
        Node.Case(m.substT(scrutinee), nuCases, nuDefault)
      case Node.LetExpr(name, Expr.Select(x, cls, field), body) if kc.map.contains(m.subst(x)) =>
        val (cls2, args) = kc.map(m.subst(x))
        assert(cls2 match
          case KnownClass.Ctor(cls2) => cls === cls2
          case KnownClass.BoolCtor(b) => false 
        )
        val value = args.get(if field.forall(_.isDigit) then s"field$field" else field)
        value match
          case Some(Expr.Ref(y)) =>
            s.set(true)
            val newM = MapUtil(m.map + (name -> y))
            removeTrivialDestruction(body)(using kc, newM)
          case Some(lit: Expr.Literal) =>
            s.set(true)
            Node.LetExpr(name, lit, removeTrivialDestruction(body)(using kc, m))
          case None => oErrStop(s"removeTrivialDestruction: unknown field $field in $args")
      case Node.LetExpr(name, Expr.CtorApp(cls, args), body) =>
        val nuArgs = args.map(m.substT)
        val fieldMap = info.getClass(cls).fields.iterator.map(_.nme).zip(nuArgs).toMap
        val nuKC = kc.map + (name -> (KnownClass.Ctor(cls), fieldMap))
        Node.LetExpr(name, Expr.CtorApp(cls, nuArgs), removeTrivialDestruction(body)(using KnownCtors(nuKC), m))
      case Node.LetExpr(name, expr, body) =>
        val nuExpr = removeTrivialDestruction(expr)(using kc, m)
        Node.LetExpr(name, nuExpr, removeTrivialDestruction(body)(using kc, m))
      case Node.LetMethodCall(names, cls, method, args, body) =>
        Node.LetMethodCall(names, cls, method, m.substT(args).toList, removeTrivialDestruction(body)(using kc, m))
      case Node.LetCall(names, func, args, body) =>
        Node.LetCall(names, func, m.substT(args).toList, removeTrivialDestruction(body)(using kc, m))
    
    private def constantFolding(texpr: TrivialExpr)(using m: Map[Local, Literal]): TrivialExpr =
      texpr match
      case Expr.Ref(sym) => m.get(sym).fold(texpr)(x => Expr.Literal(x))
      case Expr.Literal(lit) => texpr
    
    private def opFold(op: Str, xs: Ls[TrivialExpr]): Opt[Expr] =
      import Expr.{Literal => L}
      import Tree.{IntLit => IL, BoolLit => BL, DecLit => DL}
      (op, xs) match
        // for int
        case ("+", List(L(IL(x)), L(IL(y)))) => Some(L(IL(x + y)))
        case ("-", List(L(IL(x)), L(IL(y)))) => Some(L(IL(x - y)))
        case ("*", List(L(IL(x)), L(IL(y)))) => Some(L(IL(x * y)))
        case ("/", List(L(IL(x)), L(IL(y)))) => Some(L(IL(x / y)))
        case ("%", List(L(IL(x)), L(IL(y)))) => Some(L(IL(x % y)))
        case ("==" | "===", List(L(IL(x)), L(IL(y)))) => Some(L(BL(x === y)))
        case ("!=" | "!==", List(L(IL(x)), L(IL(y)))) => Some(L(BL(x =/= y)))
        case ("<", List(L(IL(x)), L(IL(y)))) => Some(L(BL(x < y)))
        case ("<=", List(L(IL(x)), L(IL(y)))) => Some(L(BL(x <= y)))
        case (">", List(L(IL(x)), L(IL(y)))) => Some(L(BL(x > y)))
        case (">=", List(L(IL(x)), L(IL(y)))) => Some(L(BL(x >= y)))
        // for decimal
        case ("+", List(L(DL(x)), L(DL(y)))) => Some(L(DL(x + y)))
        case ("-", List(L(DL(x)), L(DL(y)))) => Some(L(DL(x - y)))
        case ("*", List(L(DL(x)), L(DL(y)))) => Some(L(DL(x * y)))
        case ("/", List(L(DL(x)), L(DL(y)))) => Some(L(DL(x % y)))
        case ("==" | "===", List(L(DL(x)), L(DL(y)))) => Some(L(BL(x === y)))
        case ("!=" | "!==", List(L(DL(x)), L(DL(y)))) => Some(L(BL(x =/= y)))
        case ("<", List(L(DL(x)), L(DL(y)))) => Some(L(BL(x < y)))
        case ("<=", List(L(DL(x)), L(DL(y)))) => Some(L(BL(x <= y)))
        case (">", List(L(DL(x)), L(DL(y)))) => Some(L(BL(x > y)))
        case (">=", List(L(DL(x)), L(DL(y)))) => Some(L(BL(x >= y)))
        //
        case _ => N

    private def constantFolding(expr: Expr)(using m: Map[Local, Literal]): Expr = expr match
      case Expr.Ref(sym) => m.get(sym).fold(expr)(x => Expr.Literal(x))
      case Expr.Literal(lit) => expr
      case Expr.CtorApp(cls, args) => Expr.CtorApp(cls, args.map(constantFolding(_)))
      case Expr.Select(name, cls, field) => Expr.Select(name, cls, field)
      case Expr.BasicOp(name, args) =>
        val args2 = args.map(constantFolding(_))
        opFold(name.nme, args2) match
          case Some(res) => res
          case None => Expr.BasicOp(name, args2)
      case Expr.AssignField(assignee, cls, field, value) =>
        Expr.AssignField(assignee, cls, field, constantFolding(value))
    
    private def constantFolding(node: Node)(using m: Map[Local, Literal])(using s: Status[Bool]): Node = node match
      case Node.Result(res) => Node.Result(res.map(constantFolding(_)))
      case Node.Jump(func, args) => Node.Jump(func, args.map(constantFolding(_)))
      case Node.Panic(msg) => node
      case Node.Case(scrutinee, cases, default) =>
        Node.Case(constantFolding(scrutinee), cases.map:
          case (pat, body) => pat -> constantFolding(body),
          default.map(constantFolding(_)))
      case Node.LetExpr(name, expr, body) =>
        val nuExpr = constantFolding(expr)
        nuExpr match
          case Expr.Literal(lit) =>
            s.set(true)
            val newM = m + (name -> lit)
            Node.LetExpr(name, nuExpr, constantFolding(body)(using newM))
          case _ =>
            Node.LetExpr(name, nuExpr, constantFolding(body))
      case Node.LetMethodCall(names, cls, method, args, body) =>
        val nuArgs = args.map(constantFolding(_))
        Node.LetMethodCall(names, cls, method, nuArgs, constantFolding(body))
      case Node.LetCall(names, func, args, body) =>
        val nuArgs = args.map(constantFolding(_))
        Node.LetCall(names, func, nuArgs, constantFolding(body))
    
    private def removeTrivialCallAndJump(expr: Expr)(using m: MapUtil)(using Status[Bool]): Expr = expr match
      case Expr.Ref(name) => Expr.Ref(m.subst(name))
      case Expr.Literal(lit) => expr
      case Expr.CtorApp(cls, args) => Expr.CtorApp(cls, m.substT(args).toList)
      case Expr.Select(name, cls, field) => Expr.Select(m.subst(name), cls, field)
      case Expr.BasicOp(name, args) => Expr.BasicOp(name, m.substT(args).toList)
      case Expr.AssignField(assignee, cls, field, value) => 
        Expr.AssignField(m.subst(assignee), cls, field, m.substT(value))

    private def removeTrivialCallAndJump(node: Node)(using MapUtil)(using s: Status[Bool]): Node = node match
      case Node.Result(res) => Node.Result(summon[MapUtil].substT(res).toList)
      case Node.Jump(func, args) =>
        def pass = Node.Jump(func, args.map(summon[MapUtil].substT))
        if notBuiltin(func) then
          val funcDefn = info.getFunc(func)
          val nuArgs = summon[MapUtil].substT(args).toList
          val m = SubstUtil(funcDefn.params.zip(nuArgs).toMap)
          log(s"checking: ${funcDefn.name |> showSym}")
          funcDefn.body match
            case Node.Result(res) =>
              s.set(true)
              Node.Result(res.map(_.foldRef(m.subst)))
            case Node.Jump(func, args) =>
              s.set(true)
              Node.Jump(func, args.map(_.foldRef(m.subst)))
            case p @ Node.Panic(_) => s.set(true); p
            case p @ Node.LetCall(xs, callee, args2, node2: Terminator) =>
              s.set(true)
              val r = RenameUtil()
              val nuXs = r.subst(xs).toList
              val nuArgs2 = args2.map(_.foldRef(m.subst))
              val oldM = summon[MapUtil]
              val tmpM = MapUtil(m.map.iterator.flatMap:
                case (name, Expr.Ref(res)) => Some(name -> res)
                case (name, _) => None
              .toMap)
              val newM = MapUtil(oldM.map ++ r.map.toMap)
              val literals = m.map.iterator.flatMap:
                case (name, Expr.Ref(res)) => None
                case (name, expr) => Some(name -> expr.toExpr)
              val nuNode = removeTrivialCallAndJump(node2)(using tmpM)
              Node.LetCall(nuXs, callee, nuArgs2, bindByOrder(literals.toList,
                removeTrivialCallAndJump(nuNode)(using newM)))
            case _ => pass
        else
          pass
      case Node.Case(scrutinee, cases, default) =>
        Node.Case(summon[MapUtil].substT(scrutinee), cases.map:
          case (pat, body) => pat -> removeTrivialCallAndJump(body),
          default.map(removeTrivialCallAndJump(_)))
      case Node.Panic(msg) => node
      case Node.LetExpr(name, expr, body) => 
        val nuExpr = removeTrivialCallAndJump(expr)
        Node.LetExpr(name, nuExpr, removeTrivialCallAndJump(body))
      case Node.LetMethodCall(names, cls, method, args, body) => 
        val nuArgs = summon[MapUtil].substT(args).toList
        Node.LetMethodCall(names, cls, method, nuArgs, removeTrivialCallAndJump(body))
      case Node.LetCall(names, func, args, body) =>
        val nuArgs = summon[MapUtil].substT(args).toList
        def pass = Node.LetCall(names, func, nuArgs, removeTrivialCallAndJump(body))
        if notBuiltin(func) then
          val funcDefn = info.getFunc(func)
          val m = SubstUtil(funcDefn.params.zip(nuArgs).toMap)
          log(s"checking: ${funcDefn.name |> showSym}")
          funcDefn.body match
            case Node.Result(res) =>
              s.set(true)
              val nuRes = res.map(_.foldRef(m.subst))
              val oldM = summon[MapUtil]
              val newM = MapUtil(oldM.map ++ names.iterator.zip(nuRes).flatMap:
                case (name, Expr.Ref(res)) => Some(name -> res)
                case (name, _) => None
              )
              val literals = names.iterator.zip(nuRes).flatMap:
                case (name, Expr.Ref(res)) => None
                case (name, expr) => Some(name -> expr.toExpr)
              bindByOrder(literals.toList,
                 removeTrivialCallAndJump(body)(using newM))
            case Node.Jump(func, args) =>
              s.set(true)
              Node.LetCall(names, func, args.map(_.foldRef(m.subst)), removeTrivialCallAndJump(body))
            case p @ Node.Panic(_) => s.set(true); p
            case Node.LetCall(xs, callee, args, p @ Node.Panic(_)) => s.set(true); p
            case Node.LetCall(xs, callee, args2, Node.Result(res)) =>
              s.set(true)
              val r = RenameUtil()
              val nuXs = r.subst(xs).toList
              val nuSubst = MapTexprUtil((r.map.iterator.map:
                case (k, v) => k -> Expr.Ref(v)).toMap)
              val nuArgs2 = args2.map(_.foldRef(m.subst))
              val nuRes = res.map(_.foldRef(MapTexprUtil(m.map).subst).foldRef(nuSubst.subst))
              val oldM = summon[MapUtil]
              val newM = MapUtil(oldM.map ++ names.iterator.zip(nuRes).flatMap:
                case (name, Expr.Ref(res)) => Some(name -> res)
                case (name, _) => None
              )
              val literals = names.iterator.zip(nuRes).flatMap:
                case (name, Expr.Ref(res)) => None
                case (name, expr) => Some(name -> expr.toExpr)
              Node.LetCall(nuXs, callee, nuArgs2, bindByOrder(literals.toList,
                removeTrivialCallAndJump(body)(using newM)))
            case _ =>  
              pass
        else
          pass

  def run(prog: LlirProgram)(using Status[Bool]) =
    val info = ProgInfo.fromProgram(prog)
    val optStat = ListBuffer.empty[(Str, ProgStat)]
    optStat.addOne(("orig", info.getStat))
    if flags.contains("simp") then
      val simp = Simplify(info)
      val changed = Status(true)
      while changed.get do
        changed.set(false)
        val prev = info.toProgram
        try 
          simp.simplify(using changed)
        catch case e: Exception =>
          log(s"exception: $e")
          log(s"last prog: ${prev.show()}")
          throw e
      optStat.addOne(("simp", info.getStat))
    if !flags.contains("!split") then
      val splitting = Splitting(info)
      splitting.run(using summon[Status[Bool]])
      optStat.addOne(("split", info.getStat))
    if flags.contains("simp2") then
      val simp = Simplify(info)
      val changed = Status(true)
      while changed.get do
        changed.set(false)
        val prev = info.toProgram
        try 
          simp.simplify(using changed)
        catch case e: Exception =>
          log(s"exception: $e")
          log(s"last prog: ${prev.show()}")
          throw e
      optStat.addOne(("simp2", info.getStat))
    (info.toProgram, optStat.toList)

    
  class ProgDfs(info: ProgInfo):
    import Node._
    import Expr._
    
    case class FuncAndClass(funcs: Ls[Local] = Nil, classes: Ls[Local] = Nil):
      def addF(func: Local): FuncAndClass = copy(funcs = func :: funcs)
      def addC(cls: Local): FuncAndClass = copy(classes = cls :: classes)

    case class Buf(funcs: ListBuffer[Local] = ListBuffer.empty, classes: ListBuffer[Local] = ListBuffer.empty)

    private object Successors:
      def find(expr: Expr)(using acc: FuncAndClass): FuncAndClass =
        expr match
          case Ref(sym) => acc
          case Literal(lit) => acc
          case CtorApp(cls, args) => acc.addC(cls)
          case Select(name, cls, field) => acc.addC(cls)
          case BasicOp(name, args) => acc
          case AssignField(assignee, cls, field, value) => acc.addC(cls)

      def find(node: Node)(using acc: FuncAndClass): FuncAndClass =
        node match
          case Result(res) => acc
          case Jump(func, args) => if notBuiltin(func) then acc.addF(func) else acc
          case Case(scrutinee, cases, default) =>
            val acc1 = cases.map(_._1).foldLeft(acc):
              (acc, pat) => pat match
                case Pat.Class(cls) => acc.addC(cls)
                case Pat.Lit(lit) => acc
            val acc2 = cases.map(_._2) ++ default.toList
            acc2.foldLeft(acc1)((acc, x) => find(x)(using acc))
          case Panic(msg) => acc
          case LetExpr(name, expr, body) => 
            val acc2 = find(expr)
            find(body)(using acc2)
          case LetMethodCall(names, cls, method, args, body) => find(body)(using acc.addC(cls))
          case LetCall(names, func, args, body) => find(body)(using if notBuiltin(func) then acc.addF(func) else acc)

      def find(func: Func): FuncAndClass = find(func.body)(using FuncAndClass())

    private def dfs(using visited: MutHMap[Local, Bool], out: Buf, postfix: Bool)(x: Func): Unit =
      trace[Unit](s"dfs: ${{showSym(x.name)}}"):
        visited.update(x.name, true)
        if !postfix then
          out.funcs += x.name
        val successors = Successors.find(x)
        successors.funcs.foreach:
          y => if !visited(y) then
            dfs(info.getFunc(y))
        successors.classes.foreach: y =>
          if notCallable(y) && !visited(y) then
            dfs(info.getClass(y))
        if postfix then
          out.funcs += x.name

    private def dfs(using visited: MutHMap[Local, Bool], out: Buf, postfix: Bool)(x: ClassInfo): Unit =
      trace[Unit](s"dfs: ${{showSym(x.name)}}"):
        visited.update(x.name, true)
        if !postfix then
          out.classes += x.name
        x.parents.foreach: y =>
          if notCallable(y) && !visited(y) then
            dfs(info.getClass(y))
        x.methods.values.foreach: m =>
          val successors = Successors.find(m.body)(using FuncAndClass())
          successors.funcs.foreach: y =>
            if !visited(y) then
              dfs(info.getFunc(y))
          successors.classes.foreach: y =>
            if notCallable(y) && !visited(y) then
              dfs(info.getClass(y))
        if postfix then
          out.classes += x.name
    
    private def dfs(using visited: MutHMap[Local, Bool], out: Buf, postfix: Bool)(x: Node): Unit =
      trace[Unit](s"dfs: $x"):
        val successors = Successors.find(x)(using FuncAndClass())
        successors.funcs.foreach: y =>
          if !visited(y) then
            dfs(info.getFunc(y))
        successors.classes.foreach: y =>
          if notCallable(y) && !visited(y) then
            dfs(info.getClass(y))

    def dfs(postfix: Bool): FuncAndClass =
      val visited = MutHMap[Local, Bool]()
      val allFuncsClassesMethods = info.func.keys ++ info.classes.iterator.keys
      visited.addAll(allFuncsClassesMethods.map(k => k -> false))
      val out = Buf(ListBuffer.empty, ListBuffer.empty)
      dfs(using visited, out, postfix)(info.func.get(info.entry).get)
      FuncAndClass(out.funcs.toList, out.classes.toList)

