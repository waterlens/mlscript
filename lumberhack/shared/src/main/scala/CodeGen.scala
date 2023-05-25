package mlscript
package lumberhack

import mlscript.lumberhack.utils.*
import mlscript.utils.shorthands.*
import mlscript.utils.*
import Expr.*
import ai.serenade.treesitter.{Parser, Node, Tree, Languages}
import com.github.sbt.jni.syntax.NativeLoader
import scala.collection.mutable.{Map => MutMap}
import mlscript.utils.lastWords

enum NestedPat {
  case WildcardPat
  case IdPat(n: Str)
  case CtorPat(c: Str, field: Ls[NestedPat])
}

// NOTE: "/Users/<name>/Library/Java/Extensions/libjava-tree-sitter-ocaml-haskell.dylib" should exist
object FromHaskell extends NativeLoader("java-tree-sitter-ocaml-haskell") {
  def apply(program: Str)(using d: Deforest, output: Str => Unit): Program = {
    val parser = new Parser()
    parser.setLanguage(Languages.haskell())
    // parser.setLanguage(Languages.ocaml())
    val tree = parser.parseString(program)
    val treeRootNode = tree.getRootNode()
    // output(treeRootNode.pp)
    // output(treeRootNode.getNodeString())
    fromHaskellToPrgm(treeRootNode)(using program)
  }
  
  extension (n: Node) {
    def getSrcContent(using prgmStr: Str): Str = prgmStr.slice(n.getStartByte(), n.getEndByte())
    def getAllChilds = (0 until n.getChildCount()).map(n.getChild(_))
    def pp: Str = {
       s"\"${n.getType()}\" (" + n.getAllChilds.map(c => c.pp).mkString("\n").linesIterator.map("\n\t" + _).mkString + ")"
    }
    
    def toPattern(using prgmStr: Str): NestedPat = n.getType() match {
      case "pat_apply" => ???
      case "pat_as" => ???
      case "pat_infix" => ???
      case "pat_irrefutable" => ???
      case "pat_list" => ???
      case "pat_literal" => ???
      case "pat_name" => NestedPat.IdPat(n.getSrcContent)
      case "pat_negation" => ???
      case "pat_parens" => ???
      case "pat_record" => ???
      case "pat_strict" => ???
      case "pat_tuple" => ???
      case "pat_unboxed_tuple" => ???
      case "pat_wildcard" => ???
    }

    def toExpr(using ctx: Expr.Ctx, inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str): Expr = {
      n.getType() match {
        case "ERROR" => lastWords("haskell parse error")
        case "exp_arithmetic_sequence" => ???
        case "exp_lambda" => {
          val allChilds = n.getAllChilds
          assert(allChilds.head.getType() == "\\")
          val paramPat = allChilds.tail.takeWhile(_.getType().startsWith("pat_")).map(_.toPattern)
          val paramIds = paramPat.map {
            case NestedPat.IdPat(n) => n -> d.nextIdent(false, Var(n))
            case _ => lastWords("not supported")
          }
          val bodyExpr = allChilds.last.toExpr(using ctx ++ paramIds)
          paramIds.unzip._2.foldRight(bodyExpr)(Expr.Function(_, _))
        }
        case "exp_list" => {
          val res = (1 until n.getChildCount() by 2).foldRight(Ctor(Var("N"), Nil)) {case (head, tail) =>
            Ctor(Var("C"), n.getChild(head).toExpr :: tail :: Nil)
          }
          res
        }
        case "exp_parens" => {
          assert(n.getChildCount() == 3)
          n.getChild(1).toExpr
        }
        case "exp_apply" => {
          // must have two or more childs
          val res = n.getAllChilds.toList match {
            case f :: a :: rest => rest.foldLeft(Call(f.toExpr, a.toExpr))((e, n) => Call(e, n.toExpr))
            case _ => lastWords("cannot be single")
          }
          res
        }
        case "exp_name" => {
          val nameStr = n.getSrcContent
          val res = Ref(ctx(nameStr))
          res
        }
        case "exp_literal" => {
          val child = n.getChild(0)
          child.getType() match {
            case "integer" => Const(IntLit(child.getSrcContent.toInt))
            case "string" => Const(StrLit(child.getSrcContent.drop(1).dropRight(1)))
            // case "con_list" => 
          }
        }
        case "exp_infix" => {
          val childs = n.getAllChilds
          val (l, op, r) = childs.length match {
            case 3 => (childs(0), childs(1), childs(2))
            case 5 => (childs(0), childs(2), childs(4)) // for "l `op` r"
            case _ => lastWords("infix operator wrong")
          }
          op.getSrcContent match {
            case "$" => Call(l.toExpr, r.toExpr)
            case op => Call(Call(Ref(ctx(op)), l.toExpr), r.toExpr)
          }
        }
      }
    }
  }

  val supportedTopLevelHaskellNodeType = Set("top_splice", "function")
  def haskellBuiltinFunsList(using d: Deforest): Program = {
    val haskellBuiltinFuns = Set("map", "filter", "foldl", "foldr", "zip", "zipWith", "head", "tail", "enumFromTo", "enumFromThenTo")
    val builtins = """
fun map(f, ls) = if ls is
  C(h, t) then C(f(h), map(f, t))
  N then N
fun filter(f, ls) = if ls is
  C(h, t) then if f(h) then C(h, filter(f, t)) else filter(f, t)
  N then N
fun enumFromTo(a, b) = if a <= b then C(a, enumFromTo(a + 1, b)) else N
fun enumFromThenTo(a, t, b) = if a <= b then C(a, enumFromThenTo(t, 2 * t - a, b), b) else N
    """
    val builtinPrgms = {
      val lumberhackBuiltinFph = new FastParseHelpers(builtins)
      val origin = Origin("_lumberhack_builtin", 0, lumberhackBuiltinFph)
      val lexer = new NewLexer(origin, _ => (), dbg = false)
      val tokens = lexer.bracketedTokens
      val p = new NewParser(origin, tokens, _ => (), dbg = false, N) {
        def doPrintDbg(msg: => Str): Unit = ()
      }
      val res = p.parseAll(p.typingUnit).entities
      val prgm = Program.fromPgrm(Pgrm(res))
      prgm
    }
    builtinPrgms
  }
  def fromHaskellToPrgm(rootNode: Node)(using prgmStr: Str, d: Deforest, output: Str => Unit): Program = {
    val haskellBuiltinPrgm = haskellBuiltinFunsList
    val (defs, main) = rootNode.getAllChilds.filter(n => supportedTopLevelHaskellNodeType(n.getType())).partition(_.getType() == "function")
    given initCtx: Expr.Ctx = {
      val res = MutMap.empty[String, Ident]
      defs.foreach { deff =>
        val defNameNode = deff.getAllChilds.head
        assert(defNameNode.getType() == "variable")
        val defName = defNameNode.getSrcContent
        res.getOrElseUpdate(defNameNode.getSrcContent, d.nextIdent(true, Var(defName)))
      }
      res
    } ++ d.lumberhackKeywordsIds ++ haskellBuiltinPrgm.defAndExpr._1.map { case (funDef, _) =>
      funDef.tree.name -> funDef
    }|> (_.toMap)
    val content = rootNode.getAllChilds.flatMap { c => c.getType() match {
      case "signature" => None
      case "function" => None // TODO:
      case "top_splice" =>
        assert(c.getChildCount() == 1)
        Some(Right(c.getChild(0).toExpr(using initCtx, None)))
      case _ => lastWords("unsupported")
    }}

    Program(haskellBuiltinPrgm.contents ::: content.toList)
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
      emptyLines = false
    ).print
  }
}

object HaskellGen extends CodeGen {
  def validate(p: Program): Unit = ??? //maybe we should check if the program can be translated at all

  val primitives = Map("add" -> "(+)", "sub" -> "(-)")
  val lumberhackPrimitiveCtors = Set("C", "N", "P2", "P3")

  override def transform_id(id: Ident): Document =
    if id.isDef then id.pp(using InitPpConfig) else id.pp(using InitPpConfig.showIuidOn)
  override def transform_progdef(pd: ProgDef): Document = {
    pd.body match {
      case bodyFun@Function(param, body) => {
        val (params, innerBody) = bodyFun.takeParamsOut
        transform_id(pd.id) <:> " " <:> Lined(params.map(transform_id), " ") <:> " = " <:> rec(innerBody)
      }
      case _ => transform_id(pd.id) <:> " = " <:> rec(pd.body)
    }
  }
  
  def transformMatchArmToHaskellType(dtor: Var, params: List[Ident]): Document = dtor.name -> params match {
    case "C" -> (h :: t :: Nil) => "(" <:> transform_id(h) <:> " : " <:> transform_id(t) <:> ") -> "
    case "N" -> Nil => "[] -> "
    case _ => dtor.name <:> " " <:> Lined(params.map(arg => transform_id(arg)) :+ Raw("-> "), " ")
  }

  override val headers = Raw("")

  // one-line, indentation is hard
  override def rec(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) => transform_id(id)
    case Call(Call(Ref(Ident(_, Var(op), _)), fst), snd) if Deforest.lumberhackIntBinOps(op) =>
      "(" <:> rec(fst) <:> s" $op " <:> rec(snd) <:> ")"
    case Call(lhs, rhs) =>
      "(" <:> rec(lhs) <:> " " <:> rec(rhs) <:> ")"
    case Ctor(name, args) if lumberhackPrimitiveCtors(name.name) => name.name match {
      case "C" => "(" <:> rec(args(0)) <:> ":" <:> rec(args(1)) <:> ")"
      case "N" => "[]"
      case _ => lastWords("not supported")
    }
    case Ctor(name, args) =>
      "(" <:> name.name <:> " " <:> Lined(args.map(arg => rec(arg)), " ") <:> ")"
    case LetIn(id, rhs, body) => 
      "(let " <:> transform_id(id) <:> " = " <:> rec(rhs) <:> " in " <:> rec(body) <:> ")"
    case Match(scrut, arms) => 
      "(case " <:> rec(scrut) <:> " of {" <:> 
      Lined(arms.map{ case (v, args, body) => transformMatchArmToHaskellType(v, args) <:> rec(body) }, "; ") <:> "})"
    case f: Function =>
      val (params, body) = f.takeParamsOut
      "(\\" <:> Lined(params.map(transform_id), " ") <:> " -> " <:> rec(body) <:> ")"
    case IfThenElse(s, t, e) => "(if " <:> rec(s) <:> " then " <:> rec(t) <:> " else " <:> rec(e) <:> ")"
    case _ => lastWords("unsupported: " + e.pp(using InitPpConfig.showIuidOn))
  }

  def recMultiline(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) => transform_id(id)
    case Call(Call(Ref(Ident(_, Var(op), _)), fst), snd) if Deforest.lumberhackIntBinOps(op) =>
      recMultiline(fst) <:> s" $op " <:> recMultiline(snd)
    case Call(lhs, rhs) =>
      // "(" <:> recMultiline(lhs) <:> " " <:> recMultiline(rhs) <:> ")"
      stack(
        "(" <:> recMultiline(lhs),
        Indented(recMultiline(rhs)) <:> ")"
      )
    case Ctor(name, args) if lumberhackPrimitiveCtors(name.name) => name.name match {
      case "C" => "(" <:> recMultiline(args(0)) <:> ":" <:> recMultiline(args(1)) <:> ")"
      case "N" => "[]"
      case _ => lastWords("not supported")
    }
    case Ctor(name, args) =>
      "(" <:> name.name <:> " " <:> Lined(args.map(arg => recMultiline(arg)), " ") <:> ")"
    case LetIn(id, rhs, body) => 
      stack(
        "(let " <:> transform_id(id) <:> " = " <:> recMultiline(rhs) <:> " in",
        Indented(recMultiline(body)),
        ")"
      )
    case Match(scrut, arms) => 
      Stacked(
        ("case " <:> recMultiline(scrut) <:> " of") :: 
        arms.map{case (v, args, body) => stack(
          // Indented(v.name <:> " " <:> Lined(args.map(arg => transform_id(arg)) :+ Raw("-> "), " ") <:> recMultiline(body))
          Indented(transformMatchArmToHaskellType(v, args) <:> recMultiline(body))
        )}
      )
    case f: Function =>
      val (params, body) = f.takeParamsOut
      stack(
        "(\\" <:> Lined(params.map(transform_id), " ") <:> " -> ",
        Indented(recMultiline(body) <:> ")")
      )
    case IfThenElse(s, t, e) => "if " <:> recMultiline(s) <:> " then " <:> recMultiline(t) <:> " else " <:> recMultiline(e)
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
    case e => lastWords(s"not supported: ${e.pp(using InitPpConfig.showIuidOn)}")
  }
}
