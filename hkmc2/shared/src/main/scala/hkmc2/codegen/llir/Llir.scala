package hkmc2.codegen.llir

import mlscript._
import mlscript.utils._
import mlscript.utils.shorthands._

import hkmc2.utils.legacy_document._
import hkmc2.syntax._

import util.Sorting
import collection.immutable.SortedSet
import language.implicitConversions
import collection.mutable.{Map as MutMap, Set as MutSet, HashMap, ListBuffer}

final case class LowLevelIRError(message: String) extends Exception(message)

case class Program(
  classes: Set[ClassInfo],
  defs: Set[Func],
  main: Node,
):
  override def toString: String =
    val t1 = classes.toArray
    val t2 = defs.toArray
    Sorting.quickSort(t1)
    Sorting.quickSort(t2)
    s"Program({${t1.mkString(",\n")}}, {\n${t2.mkString("\n")}\n},\n$main)"

  def show(hiddenNames: Set[Str] = Set.empty) = toDocument(hiddenNames).print
  def toDocument(hiddenNames: Set[Str] = Set.empty) : Document =
    val t1 = classes.toArray
    val t2 = defs.toArray
    Sorting.quickSort(t1)
    Sorting.quickSort(t2)
    given Conversion[String, Document] = raw
    stack(
      stack_list(t1.filter(x => !hiddenNames.contains(x.name)).map(_.toDocument).toList) |> indent,
      stack_list(t2.map(_.toDocument).toList) |> indent,
      main.toDocument |> indent
    )

implicit object ClassInfoOrdering extends Ordering[ClassInfo] {
  def compare(a: ClassInfo, b: ClassInfo) = a.id.compare(b.id)
}

case class ClassInfo(
  id: Int,
  name: Str,
  fields: Ls[Str],
):
  var parents: Set[Str] = Set.empty
  var methods: Map[Str, Func] = Map.empty
  override def hashCode: Int = id
  override def toString: String =
    s"ClassInfo($id, $name, [${fields mkString ","}], parents: ${parents mkString ","}, methods:\n${methods mkString ",\n"})"

  def show = toDocument.print
  def toDocument: Document =
    given Conversion[String, Document] = raw
    val extension = if parents.isEmpty then "" else " extends " + parents.mkString(", ")
    if methods.isEmpty then
      "class" <:> name <#> "(" <#> fields.mkString(",") <#> ")" <#> extension
    else
      stack(
        "class" <:> name <#> "(" <#> fields.mkString(",") <#> ")" <#> extension <:> "{",
        stack_list( methods.map { (_, func) => func.toDocument |> indent }.toList),
        "}"
      )

case class Name(str: Str):
  def trySubst(map: Map[Str, Name]) = map.getOrElse(str, this)
  override def toString: String = str

object FuncRef:
  def fromName(name: Str) = FuncRef(Right(name))
  def fromName(name: Name) = FuncRef(Right(name.str))
  def fromFunc(func: Func) = FuncRef(Left(func))

class FuncRef(var func: Either[Func, Str]):
  def name: String = func.fold(_.name, x => x)
  def expectFn: Func = func.fold(identity, x => throw Exception(s"Expected a def, but got $x"))
  def getFunc: Opt[Func] = func.left.toOption
  override def equals(o: Any): Bool = o match {
    case o: FuncRef => o.name == this.name
    case _ => false
  }

object ClassRef:
  def fromName(name: Str) = ClassRef(Right(name))
  def fromName(name: Name) = ClassRef(Right(name.str))
  def fromClass(cls: ClassInfo) = ClassRef(Left(cls))

class ClassRef(var cls: Either[ClassInfo, Str]):
  def name: String = cls.fold(_.name, x => x) 
  def expectCls: ClassInfo = cls.fold(identity, x => throw Exception(s"Expected a class, but got $x"))
  def getClass: Opt[ClassInfo] = cls.left.toOption
  override def equals(o: Any): Bool = o match {
    case o: ClassRef => o.name == this.name
    case _ => false
  }

implicit object FuncOrdering extends Ordering[Func] {
  def compare(a: Func, b: Func) = a.id.compare(b.id)
}

case class Func(
  id: Int,
  name: Str,
  params: Ls[Name],
  resultNum: Int,
  body: Node
):
  var recBoundary: Opt[Int] = None
  override def hashCode: Int = id

  override def toString: String =
    val ps = params.map(_.toString).mkString("[", ",", "]")
    s"Def($id, $name, $ps, \n$resultNum, \n$body\n)"

  def show = toDocument.print
  def toDocument: Document =
    given Conversion[String, Document] = raw
    stack(
      "def" <:> name <#> "(" <#> params.map(_.toString).mkString(",")  <#> ")" <:> "=",
      body.toDocument |> indent
    )

sealed trait TrivialExpr:
  import Expr._
  override def toString: String
  def show: String
  def toDocument: Document
  def toExpr: Expr = this match { case x: Expr => x }

private def showArguments(args: Ls[TrivialExpr]) = args map (_.show) mkString ","

enum Expr:
  case Ref(name: Name) extends Expr, TrivialExpr 
  case Literal(lit: hkmc2.syntax.Literal) extends Expr, TrivialExpr
  case CtorApp(cls: ClassRef, args: Ls[TrivialExpr])
  case Select(name: Name, cls: ClassRef, field: Str)
  case BasicOp(name: Str, args: Ls[TrivialExpr])
  case AssignField(assignee: Name, cls: ClassRef, field: Str, value: TrivialExpr)
  
  override def toString: String = show

  def show: String =
    toDocument.print
  
  def toDocument: Document = 
    given Conversion[String, Document] = raw
    this match
      case Ref(s) => s.toString
      case Literal(Tree.BoolLit(lit)) => s"$lit"
      case Literal(Tree.IntLit(lit)) => s"$lit"
      case Literal(Tree.DecLit(lit)) => s"$lit"
      case Literal(Tree.StrLit(lit)) => s"$lit"
      case Literal(Tree.UnitLit(undefinedOrNull)) => if undefinedOrNull then "undefined" else "null"
      case CtorApp(cls, args) =>
        cls.name <#> "(" <#> (args |> showArguments) <#> ")"
      case Select(s, cls, fld) =>
        s.toString <#> ".<" <#> cls.name <#> ":" <#> fld <#> ">"
      case BasicOp(name: Str, args) =>
        name <#> "(" <#> (args |> showArguments) <#> ")"
      case AssignField(assignee, clsInfo, fieldName, value) => 
        stack(
          "assign"
          <:> (assignee.toString + "." + fieldName)
          <:> ":="
          <:> value.toDocument
        )

enum Pat:
  case Lit(lit: hkmc2.syntax.Literal)
  case Class(cls: ClassRef)

  def isTrue = this match
    case Class(cls) => cls.name == "True"
    case _ => false
  
  def isFalse = this match
    case Class(cls) => cls.name == "False"
    case _ => false

  override def toString: String = this match
    case Lit(lit) => s"$lit"
    case Class(cls) => s"${cls.name}"

enum Node:
  // Terminal forms:
  case Result(res: Ls[TrivialExpr])
  case Jump(func: FuncRef, args: Ls[TrivialExpr])
  case Case(scrutinee: TrivialExpr, cases: Ls[(Pat, Node)], default: Opt[Node])
  case Panic(msg: Str)
  // Intermediate forms:
  case LetExpr(name: Name, expr: Expr, body: Node)
  case LetMethodCall(names: Ls[Name], cls: ClassRef, method: Name, args: Ls[TrivialExpr], body: Node)
  case LetCall(names: Ls[Name], func: FuncRef, args: Ls[TrivialExpr], body: Node)

  override def toString: String = show

  def show: String =
    toDocument.print

  def toDocument: Document =
    given Conversion[String, Document] = raw
    this match
    case Result(res) => (res |> showArguments)
    case Jump(jp, args) =>
      "jump"
      <:> jp.name
      <#> "("
      <#> (args |> showArguments)
      <#> ")"
    case Case(x, Ls((true_pat, tru), (false_pat, fls)), N) if true_pat.isTrue && false_pat.isFalse =>
      val first = "if" <:> x.toString
      val tru2 = indent(stack("true" <:> "=>", tru.toDocument |> indent))
      val fls2 = indent(stack("false" <:> "=>", fls.toDocument |> indent))
      Document.Stacked(Ls(first, tru2, fls2))
    case Case(x, cases, default) =>
      val first = "case" <:> x.toString <:> "of"
      val other = cases flatMap {
        case (pat, node) =>
          Ls(pat.toString <:> "=>", node.toDocument |> indent)
      }
      default match
        case N => stack(first, (Document.Stacked(other) |> indent))
        case S(dc) =>
          val default = Ls("_" <:> "=>", dc.toDocument |> indent)
          stack(first, (Document.Stacked(other ++ default) |> indent))
    case Panic(msg) => "panic" <:> "\"" <#> msg <#> "\""
    case LetExpr(x, expr, body) => 
      stack(
        "let"
          <:> x.toString
          <:> "="
          <:> expr.toDocument
          <:> "in",
        body.toDocument)
    case LetMethodCall(xs, cls, method, args, body) =>
      stack(
        "let"
          <:> xs.map(_.toString).mkString(",")
          <:> "="
          <:> cls.name
          <#> "."
          <#> method.toString
          <#> "("
          <#> args.map{ x => x.toString }.mkString(",")
          <#> ")"
          <:> "in",
        body.toDocument)
    case LetCall(xs, func, args, body) => 
      stack(
        "let*"
          <:> "("
          <#> xs.map(_.toString).mkString(",")
          <#> ")"
          <:> "="
          <:> func.name
          <#> "("
          <#> args.map{ x => x.toString }.mkString(",")
          <#> ")"
          <:> "in",
        body.toDocument)

