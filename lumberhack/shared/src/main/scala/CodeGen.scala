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

trait NodeExtension {
  extension (n: Node) {
    def getSrcContent(using prgmStr: Str): Str = prgmStr.slice(n.getStartByte(), n.getEndByte())
    def getAllChilds = (0 until n.getChildCount()).map(n.getChild(_))
    def pp: Str = {
       s"\"${n.getType()}\" (" + n.getAllChilds.map(c => c.pp).mkString("\n").linesIterator.map("\n\t" + _).mkString + ")"
    }
    def toPattern(using prgmStr: Str): NestedPat
  }
}
trait ToExprable {
  def toExpr(using ctx: Expr.Ctx, inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str): Expr
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
  given NodeExtension with {
    extension (n: Node) override def toPattern(using prgmStr: Str): NestedPat = n.getType() match {
      case "pat_as" => ???
      case "pat_irrefutable" => ???
      case "pat_negation" => ???
      case "pat_record" => ???
      case "pat_strict" => ???
      case "pat_unboxed_tuple" => ???
      case "pat_apply" => {
        val childs = n.getAllChilds
        NestedPat.CtorPat(
          childs(0).getSrcContent,
          childs.tail.map(_.toPattern).toList
        )
      }
      case "pat_infix" => {
        val childs = n.getAllChilds
        assert(childs.length == 3)
        childs(1).getType() match {
          case "constructor_operator" => NestedPat.CtorPat(
            BuiltInTypes.ListCons.toLumberhackType, childs(0).toPattern :: childs(2).toPattern :: Nil
          )
          case other => lastWords(s"unsupported: $other")
        }
      }
      case "pat_list" => {
        val elems = (1 until n.getChildCount() by 2).map(i => n.getChild(i).toPattern)
        elems.foldRight(NestedPat.CtorPat(BuiltInTypes.ListNil.toLumberhackType, Nil)) { case (e, acc) =>
          NestedPat.CtorPat(BuiltInTypes.ListCons.toLumberhackType, e :: acc :: Nil)
        }
      }
      case "pat_literal" => n.getChild(0).getType() match {
        case "integer" => NestedPat.LitPat(IntLit(n.getSrcContent.toInt))
        case "string" => NestedPat.LitPat(StrLit(n.getSrcContent))
        case "con_list" => NestedPat.CtorPat(BuiltInTypes.ListNil.toLumberhackType, Nil)
      }
      case "pat_name" => NestedPat.IdPat(n.getSrcContent)
      case "pat_parens" => {
        val childs = n.getAllChilds
        assert(childs.length == 3)
        childs(1).toPattern
      }
      case "pat_tuple" => {
        val args = (1 until n.getChildCount() by 2).map(i => n.getChild(i).toPattern)
        NestedPat.CtorPat(BuiltInTypes.Tuple(args.length).toLumberhackType, args.toList)
      }
      case "pat_wildcard" => NestedPat.WildcardPat
    }
  }
  given node2ToExprableHs: Conversion[Node, ToExprable] with {
    override def apply(n: Node): ToExprable = new ToExprable {
      override def toExpr(using ctx: Ctx, inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str): Expr = n.getType() match {
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
            case ctor :: rest if ctor.getType() == "exp_name" && ctor.getChild(0).getType() == "constructor" =>
              Ctor(Var(ctor.getSrcContent), rest.map(_.toExpr))
            case f :: a :: rest => rest.foldLeft(Call(f.toExpr, a.toExpr))((e, n) => Call(e, n.toExpr))
            case _ => lastWords("cannot be single")
          }
          res
        }
        case "exp_name" => {
          val child = n.getChild(0)
          child.getType() match {
            case "constructor" => Ctor(Var(child.getSrcContent), Nil)
            case "variable" =>
              val nameStr = n.getSrcContent
              val res = Ref(ctx(nameStr))
              res
          }
        }
        case "exp_literal" => {
          val child = n.getChild(0)
          child.getType() match {
            case "integer" => Const(IntLit(child.getSrcContent.toInt))
            case "string" => Const(StrLit(child.getSrcContent.drop(1).dropRight(1)))
            case "con_list" => Ctor(Var(BuiltInTypes.ListNil.toLumberhackType), Nil)
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
            case ":" => Ctor(Var(BuiltInTypes.ListCons.toLumberhackType), l.toExpr :: r.toExpr :: Nil)
            case "." =>
              val param = d.nextIdent(false, Var("_lh_funcomp_x"))
              Function(
                param,
                Call(l.toExpr, Call(r.toExpr, Ref(param)))
              )
            case op => Call(Call(Ref(ctx(op)), l.toExpr), r.toExpr)
          }
        }
        case "exp_list_comprehension" => {
          val allChilds = n.getAllChilds
          val elemGenerationNode = allChilds(1)
          assert(elemGenerationNode.getType().startsWith("exp_"))
          val allQualifiers = allChilds.filter(_.getType() == "qual")
          handleListComprehension(
            elemGenerationNode,
            allQualifiers.toList,
            Expr.Ctor(Var(BuiltInTypes.ListNil.toLumberhackType), Nil),
            Map.empty
          )
        }
      }
    }
  }

  def mergeMatchPatterns(
    vars: List[Ident], patList: List[(List[NestedPat], ToExprable, Expr.Ctx)], elze: Expr
  )(using
    ctx: Expr.Ctx, inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str
  ): Expr = {
    if vars.isEmpty then {
      if patList.isEmpty then
        elze
      else
        val h = patList.head
        assert(h._1.isEmpty)
        h._2.toExpr(using ctx ++ h._3)
    } else {
      assert(patList.nonEmpty)
      assert(vars.length == patList.head._1.length && patList.forall(_._1.length == patList.head._1.length))
  
      val firstPatterns = patList.map(_._1.head)
      
      if firstPatterns.forall(
        fstPat => fstPat.isInstanceOf[NestedPat.IdPat]
        || fstPat.isInstanceOf[NestedPat.WildcardPat.type]
      ) then { // the var and wildcard rule
        val newPats = patList.map { case (pats, n, matchCtx) => (
          pats.tail,
          n,
          matchCtx ++ (pats.head match {
            case NestedPat.IdPat(n) => Some(n -> vars.head)
            case NestedPat.WildcardPat => None
            case _ => lastWords(s"unreachable: ${pats.head}")
          })
        )}
        mergeMatchPatterns(vars.tail, newPats, elze)
      } else if firstPatterns.forall(_.isInstanceOf[NestedPat.LitPat]) then {
        // literal, similar to the ctor
        val reorderedLits = {
          var litsOrder: List[Lit] = Nil
          val tempStore = scala.collection.mutable.Map.empty[Lit, List[(List[NestedPat], ToExprable, Expr.Ctx)]]
          patList.foreach { case (ps, n, matchCtx) =>
            val litPat = ps.head.asInstanceOf[NestedPat.LitPat]
            val lit = litPat.n
            tempStore.updateWith(lit) {
              case None =>
                litsOrder = lit :: litsOrder
                Some((ps, n, matchCtx) :: Nil)
              case Some(value) => Some((ps, n, matchCtx) :: value)
            }
          }
          litsOrder.reverse.map(l => tempStore(l).reverse)
        }
        Expr.Match(
          Ref(vars.head),
          (reorderedLits.map { sameLitPatList =>
            assert(sameLitPatList.nonEmpty)
            val sampleFirstLitPat = sameLitPatList.head._1.head.asInstanceOf[NestedPat.LitPat]
            val currentLit = sampleFirstLitPat.n
            val body = mergeMatchPatterns(
              vars.tail,
              sameLitPatList.map { case (litPatAndMore, n, matchCtx) =>
                (litPatAndMore.tail, n, matchCtx)
              },
              elze
            )
            (
              Var(currentLit match {
                case IntLit(value) => s"$value"
                case StrLit(value) => s"\"$value\""
                case l => lastWords(s"unsupported: $l")
              }),
              Nil,
              body
            )
          }) :+ (Var("_"), Nil, elze)
        )
      } else if firstPatterns.forall(_.isInstanceOf[NestedPat.CtorPat]) then {
        // the ctor rule
        val reorderedCtors = {
          var ctorOrder: List[String] = Nil
          val tempStore = scala.collection.mutable.Map.empty[String, List[(List[NestedPat], ToExprable, Expr.Ctx)]]
          patList.foreach { case (ps, n, matchCtx) =>
            val ctorPat = ps.head.asInstanceOf[NestedPat.CtorPat]
            val ctorName = ctorPat.c
            tempStore.updateWith(ctorName) {
              case None =>
                ctorOrder = ctorName :: ctorOrder
                Some((ps, n, matchCtx) :: Nil)
              case Some(value) => Some((ps, n, matchCtx) :: value)
            }
          }
          ctorOrder.reverse.map(c => tempStore(c).reverse)
        }
        Expr.Match(
          Ref(vars.head),
          (reorderedCtors.map { sameCtorPatList =>
            assert(sameCtorPatList.nonEmpty)
            val sampleFirstCtorPat = sameCtorPatList.head._1.head.asInstanceOf[NestedPat.CtorPat]
            val currentCtor = sampleFirstCtorPat.c
            val newPatParams = sampleFirstCtorPat.field.zipWithIndex.map { case (pat, idx) =>
              d.nextIdent(false, Var(s"_lh${inDef.map("_" + _.tree.name).getOrElse("")}_${currentCtor}_$idx"))
            }
            val body = mergeMatchPatterns(
              newPatParams ::: vars.tail,
              sameCtorPatList.map { case (ctorPatAndMore, n, matchCtx) =>
                val newPats = ctorPatAndMore.head.asInstanceOf[NestedPat.CtorPat].field ::: ctorPatAndMore.tail
                (newPats, n, matchCtx)
              },
              elze
            )
            (
              Var(currentCtor),
              newPatParams,
              body
            )
          }) :+ (Var("_"), Nil, elze)
        )
      } else if firstPatterns.forall(!_.isInstanceOf[NestedPat.LitPat]) then {
        // the mix of ctors, vars or wildcards
        val groupedPats = {
          var prev = patList.head._1.head
          var res: List[List[(List[NestedPat], ToExprable, Expr.Ctx)]] = (patList.head :: Nil) :: Nil
          patList.tail.foreach { p =>
            if (
              (p._1.head.isInstanceOf[NestedPat.CtorPat] && prev.isInstanceOf[NestedPat.CtorPat])
              || (
                (p._1.head.isInstanceOf[NestedPat.IdPat] || p._1.head.isInstanceOf[NestedPat.WildcardPat.type])
                && (prev.isInstanceOf[NestedPat.IdPat] || prev.isInstanceOf[NestedPat.WildcardPat.type])
              )
            ) then {
              prev = p._1.head
              res = (p :: res.head) :: res.tail
            } else {
              res = (p :: Nil) :: res
            }
          }
          res.map(_.reverse).reverse
        }
        groupedPats.foldRight(elze) { case (patGroup, accElse) =>
          mergeMatchPatterns(
            vars,
            patGroup,
            accElse
          )
        }
        // lastWords(s"unsupported: $firstPatterns")
      } else if firstPatterns.forall(!_.isInstanceOf[NestedPat.CtorPat]) then {
        // the mix of literals, vars or wildcards
        val groupedPats = {
          // grouped such that the original order is preserved, and all the members of each group
          // either start with either the same literal pattern or, idpattern or wildcard pattern
          var prev = patList.head._1.head
          var res: List[List[(List[NestedPat], ToExprable, Expr.Ctx)]] = (patList.head :: Nil) :: Nil
          patList.tail.foreach { p =>
            if (
              (p._1.head.isInstanceOf[NestedPat.LitPat] && prev.isInstanceOf[NestedPat.LitPat])
              || (
                (p._1.head.isInstanceOf[NestedPat.IdPat] || p._1.head.isInstanceOf[NestedPat.WildcardPat.type])
                && (prev.isInstanceOf[NestedPat.IdPat] || prev.isInstanceOf[NestedPat.WildcardPat.type])
              )
            ) then {
              prev = p._1.head
              res = (p :: res.head) :: res.tail
            }
            else {
              res = (p :: Nil) :: res
            }
          }
          res.map(_.reverse).reverse
        }
        groupedPats.foldRight(elze) { case (patGroup, accElse) =>
          mergeMatchPatterns(
            vars,
            patGroup,
            accElse
          )
        }
      } else {
        lastWords(
          s"unsupported (mostly will also be a type error to mix ctor patterns and literal patterns): $firstPatterns"
        )
      }
    }
  }

  def handleListComprehension(
    elemGen: Node, quals: List[Node], rest: Expr, comprehCtx: Expr.Ctx
  )(using
    ctx: Expr.Ctx, inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str
  ): Expr = {
    if quals.isEmpty then {
      Expr.Ctor(
        Var(BuiltInTypes.ListCons.toLumberhackType),
        elemGen.toExpr(using ctx ++ comprehCtx) :: rest :: Nil
      )
    } else quals.head.getChild(0).getType() match {
      case "bind_pattern" => {
        val childs = quals.head.getChild(0).getAllChilds
        assert(childs.length == 3)
        val pat = childs(0).toPattern
        val srcList = childs(2).toExpr(using ctx ++ comprehCtx)
        val recFunName = d.nextIdent(false, Var(s"_lh_listcomp_fun"))
        val recFunPara = d.nextIdent(false, Var(s"_lh_listcomp_fun_para"))
        val recFunLsH = d.nextIdent(false, Var(s"_lh_listcomp_fun_ls_h"))
        val recFunLsT = d.nextIdent(false, Var(s"_lh_listcomp_fun_ls_t"))
        val recFunBody = Expr.Function(
          recFunPara,
          Expr.Match(
            Expr.Ref(recFunPara),
            (
              Var(BuiltInTypes.ListCons.toLumberhackType),
              recFunLsH :: recFunLsT :: Nil,
              // handleListComprehension(
              //   elemGen,
              //   quals.tail,
              //   Expr.Call(Ref(recFunName), Ref(recFunLsT)),
              //   comprehCtx + (
              //     pat.asInstanceOf[NestedPat.IdPat].n -> recFunLsH
              //   )
              // )
              mergeMatchPatterns(
                recFunLsH :: Nil,
                (
                  pat :: Nil,
                  new ToExprable {
                    override def toExpr(using
                      ctx: Ctx,
                      inDef: Option[Ident],
                      d: Deforest,
                      output: Str => Unit,
                      prgmStr: Str
                    ): Expr = handleListComprehension(
                      elemGen,
                      quals.tail,
                      Expr.Call(Ref(recFunName), Ref(recFunLsT)),
                      comprehCtx
                    )
                  },
                  comprehCtx
                ) :: Nil,
                Expr.Call(Ref(recFunName), Ref(recFunLsT)),
              )
            ) :: (
              Var(BuiltInTypes.ListNil.toLumberhackType),
              Nil,
              rest
            ) :: Nil
          )
        )
        Expr.LetIn(
          recFunName,
          recFunBody,
          Expr.Call(Ref(recFunName), srcList)
        )
      }
      case exp if exp.startsWith("exp_") => Expr.IfThenElse(
        quals.head.getChild(0).toExpr(using ctx ++ comprehCtx),
        handleListComprehension(elemGen, quals.tail, rest, comprehCtx),
        rest
      )
      case "let" => lastWords(s"unsupported: ${quals.head.getNodeString()}")
      case _ => lastWords(s"unsupported: ${quals.head.getNodeString()}")
    }
  }

  val supportedTopLevelHaskellNodeType = Set("top_splice", "function")
  def haskellBuiltinFunsList(using d: Deforest): Program = {
    val haskellBuiltinFuns = Set("map", "filter", "foldl", "foldr", "zip", "head", "tail", "enumFromTo", "enumFromThenTo", "length")
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
fun length(ls) = if ls is
  LH_C(h, t) then 1 + length(t)
  LH_N then 0
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
    val (defs, main) = rootNode.getAllChilds
      .filter(n => supportedTopLevelHaskellNodeType(n.getType()))
      .partition(_.getType() == "function")

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
    } |> (_.toMap)

    val funcDefs = defs.groupBy(_.getChild(0).getSrcContent).map { case (name, defNodes) =>
      val funName = initCtx(name)
      val patsAndBodies = defNodes.map { n =>
        val patsOrEqNode = n.getChild(1)
        patsOrEqNode.getType() match {
          case "patterns" => {
            val pats = patsOrEqNode.getAllChilds.map(_.toPattern)
            assert(n.getChild(2).getSrcContent == "=") // do not support guard equation for now
            (pats.toList, node2ToExprableHs(n.getChild(3)), Map.empty[String, Ident])
          }
          case "=" => { // top level def without parameters
            (Nil, node2ToExprableHs(n.getChild(2)), Map.empty[String, Ident])
          }
        }
      }
      val funArgNames = {
        val numOfArgs = patsAndBodies.map(_._1.length).toSet
        assert(numOfArgs.size == 1)
        (1 to numOfArgs.head).map(idx => d.nextIdent(false, Var(s"_lh_${name}_arg$idx")))
      }
      val body = mergeMatchPatterns(
        funArgNames.toList,
        patsAndBodies.toList,
        {
          given Option[Ident] = Some(funName)
          Expr.Call(Expr.Ref(initCtx("error")), Expr.Const(StrLit("match error")))
        }
      )(using initCtx, Some(funName))
      val funDef = funArgNames.foldRight(body) { case (arg, acc) => Expr.Function(arg, acc)(using d, Some(funName)) }
      Left(ProgDef(funName, funDef))
    }

    val content = main.flatMap { c => c.getType() match {
      case "top_splice" =>
        assert(c.getChildCount() == 1)
        Some(Right(c.getChild(0).toExpr(using initCtx, None)))
      case _ => lastWords("unsupported")
    }}

    Program(haskellBuiltinPrgm.contents ::: funcDefs.toList ::: content.toList)
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
  
  def transformMatchArmToHaskellType(dtor: Var, params: List[Ident]): Document = {
    BuiltInTypes.fromStr(dtor.name) -> params match {
      case Some(BuiltInTypes.ListCons) -> (h :: t :: Nil) => "(" <:> transform_id(h) <:> " : " <:> transform_id(t) <:> ") -> "
      case Some(BuiltInTypes.ListNil) -> Nil => "[] -> "
      case Some(BuiltInTypes.Tuple(n)) -> fields => {
        assert(fields.length == n)
        "(" <:> Lined(fields.map(f => transform_id(f)), ", ") <:> ") -> "
      }
      case None -> (idPat :: Nil) if dtor.name == "_" => transform_id(idPat) <:> " -> "
      case None -> Nil if dtor.name == "_" => "_ -> "
      case _ => dtor.name <:> " " <:> Lined(params.map(arg => transform_id(arg)) :+ Raw("-> "), " ")
    }
  }

  override val headers = stack(
    "module Main where",
    "import Criterion.Main"
  )

  // one-line, indentation is hard
  override def rec(e: Expr): Document = recSingleline(e)

  def recSingleline(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) if Deforest.lumberhackKeywords(id.tree.name) => id.tree.name
    case Ref(id) => transform_id(id)
    case Call(Call(Ref(Ident(_, Var(op), _)), fst), snd) if Deforest.lumberhackBinOps(op) =>
      "(" <:> recSingleline(fst) <:> s" $op " <:> recSingleline(snd) <:> ")"
    case Call(Ref(Ident(_, Var("primId"), _)), arg) => recSingleline(arg)
    case Call(lhs, rhs) =>
      "(" <:> recSingleline(lhs) <:> " " <:> recSingleline(rhs) <:> ")"
    case Ctor(name, args) =>
      (BuiltInTypes.fromStr(name.name).map {
        case BuiltInTypes.ListCons => "(" <:> recSingleline(args(0)) <:> ":" <:> recSingleline(args(1)) <:> ")"
        case BuiltInTypes.ListNil => Raw("[]")
        case BuiltInTypes.Tuple(n) =>
          assert(n == args.length)
          "(" <:> Lined(args.map(recSingleline(_)).toList, ", ") <:> ")"
      }).getOrElse(
        "(" <:> name.name <:> " " <:> Lined(args.map(arg => recSingleline(arg)), " ") <:> ")"
      )
    case LetIn(id, rhs, body) => 
      "(let " <:> transform_id(id) <:> " = " <:> recSingleline(rhs) <:> " in " <:> recSingleline(body) <:> ")"
    case Match(scrut, arms) => 
      "(case " <:> recSingleline(scrut) <:> " of {" <:> 
      Lined(arms.map{ case (v, args, body) => transformMatchArmToHaskellType(v, args) <:> recSingleline(body) }, "; ") <:> "})"
    case f: Function =>
      val (params, body) = f.takeParamsOut
      "(\\" <:> Lined(params.map(transform_id), " ") <:> " -> " <:> recSingleline(body) <:> ")"
    case IfThenElse(s, t, e) => "(if " <:> recSingleline(s) <:> " then " <:> recSingleline(t) <:> " else " <:> recSingleline(e) <:> ")"
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
