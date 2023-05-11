package mlscript
package lumberhack

import mlscript.lumberhack.utils.*
import mlscript.utils.shorthands.*
import Expr.*
import ai.serenade.treesitter.{Parser, Node, Tree, Languages}
import com.github.sbt.jni.syntax.NativeLoader


// NOTE: "/Users/<name>/Library/Java/Extensions/libjava-tree-sitter.dylib" should exist
object FromHaskell extends NativeLoader("java-tree-sitter") {
  def f() = {
    val parser = new Parser()
    parser.setLanguage(Languages.haskell())
    // why segfault
    val treeRootNode = parser.parseString("f :: Int -> Int -> Int\nf a b = a + b\nf 2 3").getRootNode()
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

  def transform_progdef(pd: ProgDef): Document = {
    pd.body match {
      case Ref(Ident(_, mlscript.Var("primitive"), _)) => Raw("")
      case Function(param, body) => transform_id(pd.id) <:> " " <:>
        transform_id(param) <:> " = " <:> rec(body)
      case _ => transform_id(pd.id) <:> " = " <:> rec(pd.body)
    }
  }

  val headers = Raw("")
  def rec(e: Expr): Document = e match {
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
