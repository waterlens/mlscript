package mlscript
package lumberhack

import mlscript.lumberhack.utils.*
import mlscript.utils.shorthands.*
import Expr.*
import ai.serenade.treesitter.{Parser, Node, Tree, Languages}
import com.github.sbt.jni.syntax.NativeLoader
import mlscript.utils.lastWords


// NOTE: "/Users/<name>/Library/Java/Extensions/libjava-tree-sitter.dylib" should exist
object FromHaskell extends NativeLoader("java-tree-sitter-ocaml-haskell") {
  def apply(program: Str)(using d: Deforest, output: Str => Unit) = {
    val parser = new Parser()
    parser.setLanguage(Languages.haskell())
    // parser.setLanguage(Languages.ocaml())
    val tree = parser.parseString(program)
    val treeRootNode = tree.getRootNode()
    output(treeRootNode.pp)
    // output(treeRootNode.getNodeString())
    // val res = fromHaskellToPrgm(treeRootNode)(using program)
    // output(res.pp(using InitPpConfig.showIuidOn.multilineOn))
    // res
  }
  extension (n: Node) {
    def getSrcContent(using prgmStr: Str): Str = prgmStr.slice(n.getStartByte(), n.getEndByte())
    def getAllChilds = (0 until n.getChildCount()).map(n.getChild(_))
    def pp: Str = {
       s"\"${n.getType()}\" (" + n.getAllChilds.map(c => c.pp).mkString("\n").linesIterator.map("\n\t" + _).mkString + ")"
    }

    def toExpr(using inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str): Expr = {
      n.getType() match {
        case "exp_apply" => {
          // must have two or more childs
          val res = n.getAllChilds.toList match {
            case f :: a :: rest => rest.foldLeft(Call(f.toExpr, a.toExpr))((e, n) => Call(e, n.toExpr))
            case _ => lastWords("cannot be single")
          }
          // output(res.pp(using InitPpConfig.showIuidOn))
          res
        }
        case "exp_name" => {
          val res = Ref(d.nextIdent(false, Var(n.getSrcContent)))
          // output(res.pp(using InitPpConfig.showIuidOn))
          res
        }
        case "exp_literal" => {
          val child = n.getChild(0)
          child.getType() match {
            case "integer" => Const(IntLit(child.getSrcContent.toInt))
            case "string" => Const(StrLit(child.getSrcContent.drop(1).dropRight(1)))
          }
        }
        case "exp_infix" => {
          val childs = n.getAllChilds
          assert(childs.length == 3)
          val l = childs(0)
          val op = childs(1)
          val r = childs(2)
          op.getSrcContent match {
            case "$" => Call(l.toExpr, r.toExpr)
            // case op if Deforest.lumberhackIntBinOps(op) => Call(Call())
            case _ => ???
          }
          
        }

      }
    }
  }

  def fromHaskellToPrgm(rootNode: Node)(using prgmStr: Str, d: Deforest, output: Str => Unit): Program = {
    given Deforest = Deforest(true)
    val content = rootNode.getAllChilds.flatMap { c => c.getType() match {
      case "signature" => None
      case "function" => ???
      case "top_splice" =>
        assert(c.getChildCount() == 1)
        Some(Right(c.getChild(0).toExpr(using None)))
    }}
    Program(content.toList)
  }

}



trait CodeGen {
  //implicit def printName(name: Name)(implicit printUniqueIds: Boolean): Document

  protected implicit def stringToDoc(s: String): Raw = Raw(s)

  val primitives: Map[String, Document]
  def transform_id(id: Ident): Document = 
    primitives.getOrElse(id.tree.toString, Raw(id.tree.toString + "_" + id.uid.toString))
    
  def transform_progdef(pd: ProgDef): Document

  def rec(e: Expr): Document
  def binOp(e1: Expr, op: String, e2: Expr) = "(" <:> rec(e1) <:> " " + op + " " <:> rec(e2) <:> ")"
  
  val headers: Document
  def apply(p: Program): String = {
    Stacked( 
      headers ::
      p.contents.collect{ content =>
        content match
          case L(pd) => transform_progdef(pd)
      } ++ 
      p.contents.collect{ content =>
        content match
          case R(e) => rec(e)
      },
      emptyLines=true
    ).print
  }
}

object HaskellGen extends CodeGen {
  def validate(p: Program): Unit = ??? //maybe we should check if the program can be translated at all

  val primitives = Map("add" -> "(+)", "sub" -> "(-)")


  override def transform_id(id: Ident): Document = id.pp(using InitPpConfig.showIuidOn)
  override def transform_progdef(pd: ProgDef): Document = {
    pd.body match {
      case Ref(Ident(_, mlscript.Var("primitive"), _)) => Raw("")
      case Function(param, body) => transform_id(pd.id) <:> " " <:>
        transform_id(param) <:> " = " <:> rec(body)
      case _ => transform_id(pd.id) <:> " = " <:> rec(pd.body)
    }
  }

  override val headers = Raw("")
  override def rec(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) => transform_id(id)
    case Call(lhs, rhs) =>
      "(" <:> rec(lhs) <:> " " <:> rec(rhs) <:> ")"
    case Ctor(name, args) =>
      "(" <:> name.name <:> " " <:> Lined(args.map(arg => rec(arg)), " ") <:> ")"
    case LetIn(id, rhs, body) => 
      stack(
        "let " <:> transform_id(id) <:> " = " <:> rec(rhs) <:> " in",
        rec(body)
      )
    case Match(scrut, arms) => 
      Stacked(
        ("case " <:> rec(scrut) <:> " of") :: 
        arms.map{case (v, args, body) => stack(
          Indented(v.name <:> " " <:> Lined(args.map(arg => transform_id(arg)) :+ Raw("-> "), " ") <:> rec(body))
        )}
      )
    case Function(param, body) => 
      stack(
        "\\ " <:> transform_id(param) <:> " -> ",
        Indented(rec(body))
      )
    case IfThenElse(s, t, e) => "if " <:> rec(s) <:> " then " <:> rec(t) <:> " else " <:> rec(e)
    case _ => lastWords("unsupported: " + e.pp(using InitPpConfig.showIuidOn))
  }
}

object OCamlGen extends CodeGen {
  def validate(p: Program): Unit = ??? //maybe we should check if the program can be translated at all

  val primitives = Map("add" -> "(+)", "sub" -> "(-)")

  def transform_progdef(pd: ProgDef): Document = {
    pd.body match {
      case Ref(Ident(_, mlscript.Var("primitive"), _)) => Raw("")
      case Function(param, body) => "let "<:> transform_id(pd.id) <:> " " <:>
        transform_id(param) <:> " = " <:> rec(body)
      case _ => "let " <:> transform_id(pd.id) <:> " = " <:> rec(pd.body)
    }
  }

  val headers = Raw("")
  def rec(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) => transform_id(id)
    case Call(lhs, rhs) =>
      "(" <:> rec(lhs) <:> " " <:> rec(rhs) <:> ")"
    case Ctor(name, args) => //All constructors are polymorphic variants with tuple arguments
      "`" <:> name.name <:> " " <:> "(" <:> Lined(args.map(arg => rec(arg)), ", ") <:> ")"
    case LetIn(id, rhs, body) => 
      stack(
        "let " <:> transform_id(id) <:> " = " <:> rec(rhs) <:> " in",
        rec(body)
      )
    case Match(scrut, arms) => 
      Stacked(
        ("match " <:> rec(scrut) <:> " with") :: 
        arms.map{case (v, args, body) => stack(
          "| " <:> "`" <:> v.name <:> " " <:> "(" <:> Lined(args.map(arg => transform_id(arg)), ", ") <:> ")" <:> " ->",
          Indented(rec(body))
        )}
      )
    case Function(param, body) => 
      stack(
        "fun " <:> transform_id(param) <:> " -> ",
        Indented(rec(body))
      )
  }
}
