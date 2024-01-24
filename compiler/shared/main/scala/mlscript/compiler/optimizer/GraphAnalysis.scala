package mlscript.compiler.optimizer

import mlscript.*
import mlscript.compiler.*
import mlscript.utils.*
import shorthands.*

import scala.annotation.tailrec
import scala.collection.immutable.*
import scala.collection.mutable.{HashMap => MutHMap}
import scala.collection.mutable.{HashSet => MutHSet, Set => MutSet}

class UsefulnessAnalysis(verbose: Bool = false): 
  import GOExpr._
  import GONode._

  def log(x: Any) = if verbose then println(x)
  
  val uses = MutHMap[(Name, Int), Int]()
  val defs = MutHMap[Name, Int]()

  private def addDef(x: Name) =
    defs.update(x, defs.getOrElse(x, 0) + 1)
  
  private def addUse(x: Name) =
    val def_count = defs.get(x) match
      case None => throw GraphOptimizingError(s"Use of undefined variable $x")
      case Some(value) => value
    val key = (x, defs(x))
    uses.update(key, uses.getOrElse(key, 0) + 1)
  
  private def f(x: TrivialExpr): Unit = x match
    case Ref(name) => addUse(name)
    case _ => ()

  private def f(x: GOExpr): Unit = x match
    case Ref(name) => addUse(name)
    case Literal(lit) =>
    case CtorApp(name, args) => args.foreach(f)
    case Select(name, cls, field) => addUse(name)
    case BasicOp(name, args) => args.foreach(f)
  
  private def f(x: GONode): Unit = x match
    case Result(res) => res.foreach(f)
    case Jump(defn, args) => args.foreach(f)
    case Case(scrut, cases) => addUse(scrut); cases.foreach { case (cls, body) => f(body) }
    case LetExpr(name, expr, body) => f(expr); addDef(name); f(body)
    case LetCall(names, defn, args, body) => args.foreach(f); names.foreach(addDef); f(body)
  
  def run(x: GODef) =
    x.params.foreach(addDef)
    f(x.body)
    uses.toMap

class FreeVarAnalysis(extended_scope: Bool = true, verbose: Bool = false):
  import GOExpr._
  import GONode._

  private val visited = MutHSet[Str]()
  private def f(using defined: Set[Str])(defn: GODef, fv: Set[Str]): Set[Str] =
    val defined2 = defn.params.foldLeft(defined)((acc, param) => acc + param.str)
    f(using defined2)(defn.body, fv)
  private def f(using defined: Set[Str])(expr: GOExpr, fv: Set[Str]): Set[Str] = expr match
    case Ref(name) => if (defined.contains(name.str)) fv else fv + name.str
    case Literal(lit) => fv
    case CtorApp(name, args) => args.foldLeft(fv)((acc, arg) => f(using defined)(arg.to_expr, acc))
    case Select(name, cls, field) => if (defined.contains(name.str)) fv else fv + name.str
    case BasicOp(name, args) => args.foldLeft(fv)((acc, arg) => f(using defined)(arg.to_expr, acc))
  private def f(using defined: Set[Str])(node: GONode, fv: Set[Str]): Set[Str] = node match
    case Result(res) => res.foldLeft(fv)((acc, arg) => f(using defined)(arg.to_expr, acc))
    case Jump(defnref, args) =>
      var fv2 = args.foldLeft(fv)((acc, arg) => f(using defined)(arg.to_expr, acc))
      if (extended_scope && !visited.contains(defnref.getName))
        val defn = defnref.expectDefn
        visited.add(defn.name)
        val defined2 = defn.params.foldLeft(defined)((acc, param) => acc + param.str)
        fv2 = f(using defined2)(defn, fv2)
      fv2
    case Case(scrut, cases) =>
      val fv2 = if (defined.contains(scrut.str)) fv else fv + scrut.str
      cases.foldLeft(fv2) {
        case (acc, (cls, body)) => f(using defined)(body, acc)
      }
    case LetExpr(name, expr, body) =>
      val fv2 = f(using defined)(expr, fv)
      val defined2 = defined + name.str
      f(using defined2)(body, fv2)
    case LetCall(resultNames, defnref, args, body) =>
      var fv2 = args.foldLeft(fv)((acc, arg) => f(using defined)(arg.to_expr, acc))
      val defined2 = resultNames.foldLeft(defined)((acc, name) => acc + name.str)
      if (extended_scope && !visited.contains(defnref.getName))
        val defn = defnref.expectDefn
        visited.add(defn.name)
        val defined2 = defn.params.foldLeft(defined)((acc, param) => acc + param.str)
        fv2 = f(using defined2)(defn, fv2)
      f(using defined2)(body, fv2)
  def run(node: GONode) = f(using Set.empty)(node, Set.empty)
  def run_with(node: GONode, defined: Set[Str]) = f(using defined)(node, Set.empty)