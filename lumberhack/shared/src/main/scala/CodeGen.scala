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
  case LitPat(n: Lit)
  case CtorPat(c: Str, field: Ls[NestedPat])
}

enum BuiltInTypes {
  case ListCons
  case ListNil
  case Tuple(n: Int)

  lazy val toLumberhackType = this match {
    case ListCons => "LH_C"
    case ListNil => "LH_N"
    case Tuple(n) => s"LH_P$n"
  }
}
object BuiltInTypes {
  def contains(c: Str) = c.matches("LH_P\\d+") || Set("LH_C", "LH_N")(c)
  def fromStr(c: Str) = c match {
    case "LH_C" => Some(ListCons)
    case "LH_N" => Some(ListNil)
    case tup if tup.matches("LH_P\\d+") => Some(Tuple(tup.drop(4).toInt))
    case _ => None
  }
}

// NOTE: "/Users/<name>/Library/Java/Extensions/libjava-tree-sitter-ocaml-haskell.dylib" should exist
object FromHaskell extends NativeLoader("java-tree-sitter-ocaml-haskell") {
  def apply(program: Str)(using d: Deforest, output: Str => Unit): Program = {
    val parser = new Parser()
    parser.setLanguage(Languages.haskell())
    // parser.setLanguage(Languages.ocaml())
    val tree = parser.parseString(program)
    val treeRootNode = tree.getRootNode()
    output(treeRootNode.pp)
    ???
    // output(treeRootNode.getNodeString())
    // fromHaskellToPrgm(treeRootNode)(using program)
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
        case "exp_arithmetic_sequence" => {
          val args = (1 until n.getChildCount() by 2).map(i => n.getChild(i).toExpr)
          if args.length == 2 then
            Call(Call(Ref(ctx("enumFromTo")), args(0)), args(1))
          else // must be 3 then
            Call(Call(Call(Ref(ctx("enumFromThenTo")), args(0)), args(1)), args(2))
        }
        case "exp_lambda" => {
          val allChilds = n.getAllChilds
          assert(allChilds.head.getType() == "\\")
          val paramPat = allChilds.tail.takeWhile(_.getType().startsWith("pat_")).map(_.toPattern)
          val paramIds = paramPat.map { // for lambdas, only id patterns are supported for now
            case NestedPat.IdPat(n) => n -> d.nextIdent(false, Var(n))
            case _ => lastWords("not supported")
          }
          val bodyExpr = allChilds.last.toExpr(using ctx ++ paramIds)
          paramIds.unzip._2.foldRight(bodyExpr)(Expr.Function(_, _))
        }
        case "exp_tuple" => {
          val args = (1 until n.getChildCount() by 2).map(i => n.getChild(i).toExpr)
          Ctor(Var(BuiltInTypes.Tuple(args.length).toLumberhackType), args.toList)
        }
        case "exp_list" => {
          val res = (1 until n.getChildCount() by 2).foldRight(Ctor(Var(BuiltInTypes.ListNil.toLumberhackType), Nil)) {case (head, tail) =>
            Ctor(Var(BuiltInTypes.ListCons.toLumberhackType), n.getChild(head).toExpr :: tail :: Nil)
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
    val haskellBuiltinFuns = Set("map", "filter", "foldl", "foldr", "zip", "head", "tail", "enumFromTo", "enumFromThenTo")
    val builtins = """
fun map(f, ls) = if ls is
  LH_C(h, t) then LH_C(f(h), map(f, t))
  LH_N then LH_N
fun filter(f, ls) = if ls is
  LH_C(h, t) then if f(h) then LH_C(h, filter(f, t)) else filter(f, t)
  LH_N then LH_N
fun foldl(f, i, ls) = if ls is
  LH_C(h, t) then foldl(f, f(i, h), t)
  LH_N then i
fun foldr(f, i, ls) = if ls is
  LH_C(h, t) then f(h, foldr(f, i, t))
  LH_N then i
fun zip(xs, ys) = if xs is
  LH_C(hx, tx) then if ys is
    LH_C(hy, ty) then LH_C(LH_P2(hx, hy), zip(tx, ty))
    LH_N then LH_N
  LH_N then LH_N
fun head(ls) = if ls is
  LH_C(h, t) then h
  LH_N then primitive
fun tail(ls) = if ls is
  LH_C(h, t) then t
  LH_N then primitive
fun enumFromTo(a, b) = if a <= b then LH_C(a, enumFromTo(a + 1, b)) else LH_N
fun enumFromThenTo(a, t, b) = if a <= b then LH_C(a, enumFromThenTo(t, 2 * t - a, b)) else LH_N
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
  def recMultiline(e: Expr): Document
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

  override def apply(p: Program): String = {
    Stacked( 
      headers ::
      p.contents.collect{ content =>
        content match
          case L(pd) => transform_progdef(pd)
          case R(e) => rec(e)
      },
      emptyLines = false
    ).print
  }
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
    case "LH_C" -> (h :: t :: Nil) => "(" <:> transform_id(h) <:> " : " <:> transform_id(t) <:> ") -> "
    case "LH_N" -> Nil => "[] -> "
    case _ => dtor.name <:> " " <:> Lined(params.map(arg => transform_id(arg)) :+ Raw("-> "), " ")
  }

  override val headers = stack(
    "module Main where",
    "import Criterion.Main"
  )

  // one-line, indentation is hard
  override def rec(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) => transform_id(id)
    case Call(Call(Ref(Ident(_, Var(op), _)), fst), snd) if Deforest.lumberhackIntBinOps(op) =>
      "(" <:> rec(fst) <:> s" $op " <:> rec(snd) <:> ")"
    case Call(Ref(Ident(_, Var("primId"), _)), arg) => rec(arg)
    case Call(lhs, rhs) =>
      "(" <:> rec(lhs) <:> " " <:> rec(rhs) <:> ")"
    case Ctor(name, args) =>
      (BuiltInTypes.fromStr(name.name).map {
        case BuiltInTypes.ListCons => "(" <:> rec(args(0)) <:> ":" <:> rec(args(1)) <:> ")"
        case BuiltInTypes.ListNil => Raw("[]")
        case BuiltInTypes.Tuple(n) =>
          assert(n == args.length)
          "(" <:> Lined(args.map(rec(_)).toList, " ") <:> ")"
      }).getOrElse(
        "(" <:> name.name <:> " " <:> Lined(args.map(arg => rec(arg)), " ") <:> ")"
      )
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
    case Ctor(name, args) =>
      (BuiltInTypes.fromStr(name.name).map {
        case BuiltInTypes.ListCons => "(" <:> rec(args(0)) <:> ":" <:> rec(args(1)) <:> ")"
        case BuiltInTypes.ListNil => Raw("[]")
        case BuiltInTypes.Tuple(n) =>
          assert(n == args.length)
          "(" <:> Lined(args.map(rec(_)).toList, " ") <:> ")"
      }).getOrElse(
        "(" <:> name.name <:> " " <:> Lined(args.map(arg => rec(arg)), " ") <:> ")"
      )
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
  def recMultiline(e: Expr): Document = ???
}
