package mlscript.compiler.ir

import mlscript._
import mlscript.utils._
import mlscript.utils.shorthands._
import mlscript.compiler.ir._
import mlscript.compiler.optimizer._

import collection.mutable.{Map as MutMap, Set as MutSet, HashMap, ListBuffer}
import annotation.unused
import util.Sorting
import scala.collection.immutable.SortedSet

final case class IRError(message: String) extends Exception(message)

case class Program(
  val classes: Set[ClassInfo],
  val defs: Set[Defn],
  val main: Node,
):
  override def equals(o: Any): Bool = o match {
    case o: Program if this.isInstanceOf[Program] =>
      o.classes == classes &&
      o.defs == defs &&
      o.main == main
    case _ => false
  }
  override def toString: String =
    val t1 = classes.toArray
    val t2 = defs.toArray
    Sorting.quickSort(t1)
    Sorting.quickSort(t2)
    s"Program({${t1.mkString(",")}}, {\n${t2.mkString("\n")}\n},\n$main)"

implicit object ClassInfoOrdering extends Ordering[ClassInfo] {
  def compare(a: ClassInfo, b: ClassInfo) = a.id.compare(b.id)
}

case class ClassInfo(
  val id: Int,
  val ident: Str,
  val fields: Ls[Str],
):
  override def equals(o: Any): Bool = o match {
    case o: ClassInfo if this.isInstanceOf[ClassInfo] => o.id == id
    case _ => false
  }
  override def hashCode: Int = id
  override def toString: String =
    s"ClassInfo($id, $ident, [${fields mkString ","}])"

case class Name(val str: Str):
  override def equals(o: Any): Bool = o match {
    case Name(s2) => str == s2
    case _ => false
  }

  def copy: Name = Name(str)
  def trySubst(map: Map[Str, Name]) = map.getOrElse(str, this)
  
  override def toString: String =
    str

class DefnRef(var defn: Either[Defn, Str]):
  def getName: String = defn match {
    case Left(godef) => godef.getName
    case Right(name) => name
  }
  def expectDefn: Defn = defn match {
    case Left(godef) => godef
    case Right(name) => throw Exception(s"Expected a def, but got $name")
  }
  
  def getDefn: Opt[Defn] = defn match {
    case Left(godef) => Some(godef)
    case Right(name) => None
  }

  override def equals(o: Any): Bool = o match {
    case o: DefnRef if this.isInstanceOf[DefnRef] =>
      o.getName == this.getName
    case _ => false
  }


implicit object DefOrdering extends Ordering[Defn] {
  def compare(a: Defn, b: Defn) = a.id.compare(b.id)
}

case class Defn(
  val id: Int,
  val name: Str,
  val params: Ls[Name],
  val resultNum: Int,
  var specialized: Opt[Ls[Opt[Intro]]],
  val body: Node
):

  override def equals(o: Any): Bool = o match {
    case o: Defn if this.isInstanceOf[Defn] =>
      o.id == id &&
      o.body == body
    case _ => false
  }
  override def hashCode: Int = id
  def getName: String = name

  override def toString: String =
    val ps = params.map(_.toString).mkString("[", ",", "]")
    val spec = specialized.map(_.toSeq.sorted.mkString("[", ",", "]")).toString()
    s"Def($id, $name, $ps,\nS: $spec,\n$resultNum, \n$body\n)"

sealed trait TrivialExpr:
  import Expr._
  override def toString: String
  def show: String
  def toDocument: Document

  def map_name_of_texpr(f: Name => Name): TrivialExpr = this match
    case x: Ref => Ref(f(x.name))
    case x: Literal => x

  def to_expr: Expr = this match { case x: Expr => x }

private def show_args(args: Ls[TrivialExpr]) = args map (_.show) mkString ","

enum Expr:
  case Ref(name: Name) extends Expr, TrivialExpr 
  case Literal(lit: Lit) extends Expr, TrivialExpr
  case CtorApp(name: ClassInfo, args: Ls[TrivialExpr])
  case Select(name: Name, cls: ClassInfo, field: Str)
  case BasicOp(name: Str, args: Ls[TrivialExpr])
  
  override def toString: String = show

  def show: String =
    toDocument.print
  
  def toDocument: Document = this match
    case Ref(s) => s.toString |> raw
    case Literal(IntLit(lit)) => s"$lit" |> raw
    case Literal(DecLit(lit)) => s"$lit" |> raw
    case Literal(StrLit(lit)) => s"$lit" |> raw
    case Literal(UnitLit(lit)) => s"$lit" |> raw
    case CtorApp(ClassInfo(_, name, _), args) =>
      raw(name) <#> raw("(") <#> raw(args |> show_args) <#> raw(")")
    case Select(s, _, fld) =>
      raw(s.toString) <#> raw(".") <#> raw(fld)
    case BasicOp(name: Str, args) =>
      raw(name) <#> raw("(") <#> raw(args |> show_args) <#> raw(")")

  def map_name(f: Name => Name): Expr = this match
    case Ref(name) => Ref(f(name))
    case Literal(lit) => Literal(lit)
    case CtorApp(cls, args) => CtorApp(cls, args.map(_.map_name_of_texpr(f)))
    case Select(x, cls, field) => Select(f(x), cls, field)
    case BasicOp(name, args) => BasicOp(name, args.map(_.map_name_of_texpr(f)))

  def loc_marker: LocMarker = this match
    case Ref(name) => LocMarker.MRef(name.str)
    case Literal(lit) => LocMarker.MLit(lit)
    case CtorApp(name, args) => LocMarker.MCtorApp(name, args.map(_.to_expr.loc_marker))
    case Select(name, cls, field) => LocMarker.MSelect(name.str, cls, field)
    case BasicOp(name, args) => LocMarker.MBasicOp(name, args.map(_.to_expr.loc_marker))
  

enum Node:
  // Terminal forms:
  case Result(res: Ls[TrivialExpr])
  case Jump(defn: DefnRef, args: Ls[TrivialExpr])
  case Case(scrut: Name, cases: Ls[(ClassInfo, Node)])
  // Intermediate forms:
  case LetExpr(name: Name, expr: Expr, body: Node)
  case LetCall(names: Ls[Name], defn: DefnRef, args: Ls[TrivialExpr], body: Node)

  var tag = DefnTag(-1)

  def attach_tag(x: FreshInt): Node =
    this.tag = DefnTag(x.make)
    this
  def attach_tag_as[V](x: FreshInt): V =
    attach_tag(x).asInstanceOf[V]
  def copy_tag(x: Node) =
    this.tag = x.tag
    this

  override def toString: String = show

  def show: String =
    toDocument.print

  def map_name(f: Name => Name): Node = this match
    case Result(res) => Result(res.map(_.map_name_of_texpr(f)))
    case Jump(defn, args) => Jump(defn, args.map(_.map_name_of_texpr(f)))
    case Case(scrut, cases) => Case(f(scrut), cases.map { (cls, arm) => (cls, arm.map_name(f)) })
    case LetExpr(name, expr, body) => LetExpr(f(name), expr.map_name(f), body.map_name(f))
    case LetCall(names, defn, args, body) => LetCall(names.map(f), defn, args.map(_.map_name_of_texpr(f)), body.map_name(f))  
  
  def copy(ctx: Map[Str, Name]): Node = this match
    case Result(res) => Result(res.map(_.map_name_of_texpr(_.trySubst(ctx))))
    case Jump(defn, args) => Jump(defn, args.map(_.map_name_of_texpr(_.trySubst(ctx))))
    case Case(scrut, cases) => Case(ctx(scrut.str), cases.map { (cls, arm) => (cls, arm.copy(ctx)) })
    case LetExpr(name, expr, body) => 
      val name_copy = name.copy
      LetExpr(name_copy, expr.map_name(_.trySubst(ctx)), body.copy(ctx + (name_copy.str -> name_copy)))
    case LetCall(names, defn, args, body) => 
      val names_copy = names.map(_.copy)
      LetCall(names_copy, defn, args.map(_.map_name_of_texpr(_.trySubst(ctx))), body.copy(ctx ++ names_copy.map(x => x.str -> x)))

  private def toDocument: Document = this match
    case Result(res) => raw(res |> show_args) <:> raw(s"-- $tag")
    case Jump(jp, args) =>
      raw("jump")
      <:> raw(jp.getName)
      <#> raw("(")
      <#> raw(args |> show_args)
      <#> raw(")")
      <:> raw(s"-- $tag") 
    case Case(x, Ls((tcls, tru), (fcls, fls))) if tcls.ident == "True" && fcls.ident == "False" =>
      val first = raw("if") <:> raw(x.toString) <:> raw(s"-- $tag") 
      val tru2 = indent(raw("true") <:> raw ("=>") <:> tru.toDocument)
      val fls2 = indent(raw("false") <:> raw ("=>") <:> fls.toDocument)
      Document.Stacked(Ls(first, tru2, fls2))
    case Case(x, cases) =>
      val first = raw("case") <:> raw(x.toString) <:> raw("of") <:> raw(s"-- $tag") 
      val other = cases map {
        case (ClassInfo(_, name, _), node) =>
          indent(raw(name) <:> raw("=>") <:> node.toDocument)
      }
      Document.Stacked(first :: other)
    case LetExpr(x, expr, body) => 
      stack(
        raw("let")
          <:> raw(x.toString)
          <:> raw("=")
          <:> expr.toDocument
          <:> raw(s"-- $tag") ,
        raw("in") <:> body.toDocument |> indent)
    case LetCall(xs, defn, args, body) => 
      stack(
        raw("let*")
          <:> raw("(")
          <#> raw(xs.map(_.toString).mkString(","))
          <#> raw(")")
          <:> raw("=")
          <:> raw(defn.getName)
          <#> raw("(")
          <#> raw(args.map{ x => x.toString }.mkString(","))
          <#> raw(")")
          <:> raw(s"-- $tag") ,
        raw("in") <:> body.toDocument |> indent
      )

  def loc_marker: LocMarker =
    val marker = this match
      case Result(res) => LocMarker.MResult(res.map(_.to_expr.loc_marker))
      case Jump(defn, args) => LocMarker.MJump(defn.getName, args.map(_.to_expr.loc_marker))
      case Case(scrut, cases) => LocMarker.MCase(scrut.str, cases.map(_._1))
      case LetExpr(name, expr, _) => LocMarker.MLetExpr(name.str, expr.loc_marker)
      case LetCall(names, defn, args, _) => LocMarker.MLetCall(names.map(_.str), defn.getName, args.map(_.to_expr.loc_marker))
    marker.tag = this.tag
    marker


enum Intro:
  case ICtor(c: Str)
  case ILam(n: Int)
  case IMulti(n: Int)
  case IMix(i: Set[Intro])

  override def toString: String = this match
    case ICtor(c) => s"ICtor($c)"
    case ILam(n) => s"ILam($n)"
    case IMulti(n) => s"IMulti($n)"
    case IMix(i) => s"IMix(${i.toSeq.sorted.mkString(",")})"

  def toShortString: String = this match
    case ICtor(c) => s"C($c)"
    case ILam(n) => s"L$n"
    case IMulti(n) => s"M$n"
    case IMix(i) => s"X(${i.toSeq.map(_.toShortString).sorted.mkString})"

  override def equals(o: Any): Boolean = o match
    case o: Intro if this.isInstanceOf[Intro] =>
      (o, this) match
        case (ICtor(c1), ICtor(c2)) => c1 == c2
        case (ILam(n1), ILam(n2)) => n1 == n2
        case (IMulti(n1), IMulti(n2)) => n1 == n2
        case (IMix(i1), IMix(i2)) => 
          i1 == i2
        case _ => false
    case _ => false

implicit object IntroOrdering extends Ordering[Intro]:
  override def compare(a: Intro, b: Intro) = a.toString.compare(b.toString)
case class DefnTag(inner: Int):
  def is_valid = inner >= 0
  override def equals(x: Any): Bool = x match
    case o: DefnTag if this.isInstanceOf[DefnTag] =>
      (this, o) match
        case (DefnTag(a), DefnTag(b)) => this.is_valid && o.is_valid && a == b
    case _ => false
  override def toString(): String = if is_valid then s"#$inner" else "#x"

case class DefnLocMarker(val defn: Str, val marker: LocMarker):
  override def toString: String = s"$defn:$marker"
  def matches = marker.matches _

enum LocMarker:
  case MRef(name: Str)
  case MLit(lit: Lit)
  case MCtorApp(name: ClassInfo, args: Ls[LocMarker])
  case MSelect(name: Str, cls: ClassInfo, field: Str)
  case MBasicOp(name: Str, args: Ls[LocMarker])
  case MResult(res: Ls[LocMarker])
  case MJump(name: Str, args: Ls[LocMarker])
  case MCase(scrut: Str, cases: Ls[ClassInfo])
  case MLetExpr(name: Str, expr: LocMarker)
  case MLetCall(names: Ls[Str], defn: Str, args: Ls[LocMarker])
  var tag = DefnTag(-1)

  def toDocument: Document = this match
    case MResult(res) => raw("...")
    case MJump(jp, args) =>
      raw("jump")
      <:> raw(jp)
      <:> raw("...")
    case MCase(x, Ls(tcls, fcls)) if tcls.ident == "True" && fcls.ident == "False" =>
      raw("if") <:> raw(x.toString) <:> raw("...")
    case MCase(x, cases) =>
      raw("case") <:> raw(x.toString) <:> raw("of") <:> raw("...")
    case MLetExpr(x, expr) => 
      raw("let")
        <:> raw(x.toString)
        <:> raw("=")
        <:> raw("...")
    case MLetCall(xs, defn, args) =>
      raw("let*")
        <:> raw("(")
        <#> raw(xs.map(_.toString).mkString(","))
        <#> raw(")")
        <:> raw("=")
        <:> raw(defn)
        <:> raw("...")
    case MRef(s) => s.toString |> raw
    case MLit(IntLit(lit)) => s"$lit" |> raw
    case MLit(DecLit(lit)) => s"$lit" |> raw
    case MLit(StrLit(lit)) => s"$lit" |> raw
    case MLit(UnitLit(lit)) => s"$lit" |> raw
    case _ => raw("...")

  def show = s"$tag-" + toDocument.print

  override def toString(): String = show

  def matches(x: Node): Bool = this.tag == x.tag

  override def equals(x: Any): Boolean = x match
    case x: LocMarker if this.isInstanceOf[LocMarker] =>
      this.tag == x.tag
    case _ => false
