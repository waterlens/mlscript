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
import scala.collection.immutable

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
  case BoolTrue
  case BoolFalse

  lazy val toLumberhackType = this match {
    case ListCons => "LH_C"
    case ListNil => "LH_N"
    case Tuple(n) => s"LH_P$n"
    case BoolTrue => "True"
    case BoolFalse => "False"
  }
}
object BuiltInTypes {
  def contains(c: Str) = c.matches("LH_P\\d+") || Set("LH_C", "LH_N")(c)
  def fromStr(c: Str) = c match {
    case "LH_C" => Some(ListCons)
    case "LH_N" => Some(ListNil)
    case "True" => Some(BoolTrue)
    case "False" => Some(BoolFalse)
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
    val pp = treeRootNode.pp
    if pp.contains("ERROR") then lastWords(s"parse error:\n $pp")
    // output(treeRootNode.pp)
    // output(treeRootNode.getNodeString())
    fromHaskellToPrgm(treeRootNode)(using program)
    // if not copy, some exprids may be shared, but is's ok since it will be expanded and copied later
    // fromHaskellToPrgm(treeRootNode)(using program).copyDefsToNewDeforest(using Deforest(d.debug))._1._1
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
        case "con_list" => NestedPat.CtorPat(BuiltInTypes.ListNil.toLumberhackType, Nil)
        case "char" => NestedPat.LitPat(CharLit(n.getSrcContent(1)))
        case "string" => {
          val content = n.getSrcContent.drop(1).dropRight(1)
          content.foldRight(NestedPat.CtorPat(BuiltInTypes.ListNil.toLumberhackType, Nil)){ case (x, i) =>
            NestedPat.CtorPat(BuiltInTypes.ListCons.toLumberhackType, NestedPat.LitPat(CharLit(x)) :: i :: Nil)
          }
        }
      }
      case "pat_name" => n.getChild(0).getType() match {
        case "variable" => NestedPat.IdPat(n.getSrcContent)
        case "constructor" => NestedPat.CtorPat(n.getSrcContent, Nil)
      }
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
  given nodeToExprableHs: Conversion[Node, ToExprable] with {
    override def apply(n: Node): ToExprable = new ToExprable {
      override def toExpr(using ctx: Ctx, inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str): Expr = n.getType() match {
        case "ERROR" => lastWords(s"haskell parse error: `${n.getSrcContent}`")
        case "exp_arithmetic_sequence" => {
          val args = n.getAllChilds.drop(1).dropRight(1)
          args.map(_.getType()).toList match {
            case _ :: ".." :: Nil =>
              Call(Ref(ctx("enumFrom")), args(0).toExpr)
            case _ :: "comma" :: _ :: ".." :: Nil =>
              Call(Call(Ref(ctx("enumFromThen")), args(0).toExpr), args(2).toExpr)
            case _ :: ".." :: _ :: Nil =>
              Call(Call(Ref(ctx("enumFromTo")), args(0).toExpr), args(2).toExpr)
            case _ :: "comma" :: _ :: ".." :: _ :: Nil =>
              Call(Call(Call(Ref(ctx("enumFromThenTo")), args(0).toExpr), args(2).toExpr), args(4).toExpr)
            case _ => lastWords(s"not supported: ${n.getSrcContent}")
          }
        }
        case "exp_lambda" => {
          val allChilds = n.getAllChilds
          assert(allChilds.head.getType() == "\\")
          val paramPat = allChilds.tail.takeWhile(_.getType().startsWith("pat_")).map(_.toPattern)
          val paramIds = paramPat.map { // for lambdas, only id patterns are supported for now
            case NestedPat.IdPat(n) => n -> d.nextIdent(false, Var(n))
            case _ => lastWords(s"not supported: ${n.getSrcContent}")
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
            // NOTE: special case for list comprehension generating lazy lists
            case f :: a :: Nil if f.getSrcContent == "lazy" && (a.getType() == "exp_list_comprehension") =>
              val allChilds = a.getAllChilds
              val elemGenerationNode = allChilds(1)
              assert(elemGenerationNode.getType().startsWith("exp_"))
              val allQualifiers = allChilds.filter(_.getType() == "qual")
              handleListComprehension(
                elemGenerationNode,
                allQualifiers.toList,
                Expr.Call(Expr.Ref(ctx("lazy")), Expr.Ctor(Var(BuiltInTypes.ListNil.toLumberhackType), Nil)),
                Map.empty,
                produceLazyList = true
              )
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
            case "(" => {
              val op = n.getChild(1)
              assert(op.getType() == "operator")
              Ref(ctx(op.getSrcContent))
            }
          }
        }
        case "exp_literal" => {
          val child = n.getChild(0)
          child.getType() match {
            case "integer" => Const(IntLit(child.getSrcContent.toInt))
            case "con_list" => Ctor(Var(BuiltInTypes.ListNil.toLumberhackType), Nil)
            case "char" => Const(CharLit(child.getSrcContent(1)))
            case "string" => child.getSrcContent.drop(1).dropRight(1).foldRight(Ctor(Var("LH_N"), Nil)) {
              case (c, acc) => Ctor(Var("LH_C"), Const(CharLit(c)) :: acc :: Nil)
            }
            case "float" => Const(DecLit(BigDecimal(child.getSrcContent)))
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
            case "mod" => Call(Call(Ref(ctx("%")), l.toExpr), r.toExpr)
            case "++" => Call(Call(Ref(ctx("mappend")), l.toExpr), r.toExpr)
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
        case "exp_let_in" => {
          val allChilds = n.getAllChilds
          val defNode = allChilds(0).getChild(1).getChild(0)
          assert(defNode.getType() == "function")
          val letId = defNode.getChild(0).getType() match {
            case "variable" =>
              d.nextIdent(false, Var(defNode.getChild(0).getSrcContent))
            case t => lastWords(s"unsupported: $t for let decl")
          }
          val newCtx = ctx + (letId.tree.name -> letId)
          val value = defNode.getChild(2).toExpr(using newCtx)
          val body = allChilds(1).getChild(1).toExpr(using newCtx)
          LetIn(letId, value, body)
        }
        case "exp_cond" => {
          IfThenElse(
            n.getChild(1).toExpr,
            n.getChild(3).toExpr,
            n.getChild(5).toExpr,
          )
        }
        case "exp_case" => {
          val allChilds = n.getAllChilds
          val scrut = allChilds(1).toExpr
          val arms = allChilds(3).getAllChilds.filter(_.getType() == "alt").map { altNode =>
            val pat = altNode.getChild(0).toPattern :: Nil
            val body = new ToExprable {
              override def toExpr(using
                ctx: Ctx,
                inDef: Option[Ident],
                d: Deforest,
                output: Str => Unit,
                prgmStr: Str
              ): Expr = {
                altNode.getChild(2).toExpr
              }
            }
            (pat, body, Map.empty[String, Ident])
          }
          val matchIdent = d.nextIdent(false, Var("_lh_matchIdent"))
          LetIn(
            matchIdent,
            scrut,
            mergeMatchPatterns(
              matchIdent :: Nil,
              arms.toList,
              Expr.Ref(ctx("error"))
            )
          )
        }
        case _ => lastWords(n.getSrcContent)
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
                case CharLit(value) => s"'$value'"
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
          }) ++ { elze match {
            // case Call(Ref(id), Const(StrLit(lit)))
            //   if id.tree.name == "error" && lit == "match error" => None
            case _ => Some((Var("_"), Nil, elze))
          }} // else branch is still needed, otherwise there maybe type error
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
    elemGen: Node, quals: List[Node], rest: Expr, comprehCtx: Expr.Ctx, produceLazyList: Bool = false
  )(using
    ctx: Expr.Ctx, inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str
  ): Expr = {
    if quals.isEmpty then {
      if produceLazyList then
        Expr.Call(
          Expr.Ref(ctx("lazy")),
          Expr.Ctor(
            Var(BuiltInTypes.ListCons.toLumberhackType),
            elemGen.toExpr(using ctx ++ comprehCtx) :: rest :: Nil
          )
        )
      else
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
                      comprehCtx,
                      produceLazyList = produceLazyList
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
        handleListComprehension(elemGen, quals.tail, rest, comprehCtx, produceLazyList = produceLazyList),
        rest
      )
      case "let" => lastWords(s"unsupported: ${quals.head.getNodeString()}")
      case _ => lastWords(s"unsupported: ${quals.head.getNodeString()}")
    }
  }

  val supportedTopLevelHaskellNodeType = Set("top_splice", "function")
  def haskellBuiltinFunsList(using d: Deforest): Program = {
    val haskellBuiltinFuns = Set(
      "map", "map_lz",
      "filter", "filter_lz",
      "foldl", "foldr", "foldr_lz",
      "zip", "zip_nl_lz", "zip_lz_nl", "zip_lz_lz",
      "zipWith", "zipWith_nl_lz", "zipWith_lz_nl", "zipWith_lz_lz",
      "head", "head_lz",
      "tail", "tail_lz",
      "enumFromTo", "enumFromThenTo", "enumFrom", "enumFromThen",
      "repeat",
      "iterate",
      "take", "take_lz",
      "length", "length_lz",
      "mappend",
      "sum",
      "atIndex", "atIndex_lz",
      "concat",
      "reverse"
    )
    // be careful, for example `map_lz` cannot be defined as
    // fun map_lz(f, lz) = if force(ls) is
    //    LH_C(h, t) then lazy(LH_C(f(h), map_lz(f, t)))
    //    LH_N then lazy(LH_N)
    // as this will cause map_lz to *eagerly force* `ls` everytime it is called
    // and all `force` not wrapped by `lazy` should cause error
    val builtins = """
fun map(f, ls) = if ls is
  LH_C(h, t) then LH_C(f(h), map(f, t))
  LH_N then LH_N
fun map_lz(f, ls) = lazy(if force(ls) is
  LH_C(h, t) then LH_C(f(h), map_lz(f, t))
  LH_N then LH_N)

fun filter(f, ls) = if ls is
  LH_C(h, t) then if f(h) then LH_C(h, filter(f, t)) else filter(f, t)
  LH_N then LH_N
fun filter_lz(f, ls) = lazy(if force(ls) is
  LH_C(h, t) then if f(h) then LH_C(h, filter_lz(f, t)) else filter_lz(f, t)
  LH_N then LH_N)

fun foldl(f, i, ls) = if ls is
  LH_C(h, t) then foldl(f, f(i, h), t)
  LH_N then i
fun foldr(f, i, ls) = if ls is
  LH_C(h, t) then f(h, foldr(f, i, t))
  LH_N then i
fun foldr_lz(f, i, ls) = lazy(if force(ls) is
  LH_C(h, t) then f(h, foldr_lz(f, i, t))
  LH_N then i)

fun zip(xs, ys) = if xs is
  LH_C(hx, tx) then if ys is
    LH_C(hy, ty) then LH_C(LH_P2(hx, hy), zip(tx, ty))
    LH_N then LH_N
  LH_N then LH_N
fun zip_nl_lz(xs, ys) = if xs is
  LH_C(hx, tx) then if force(ys) is
    LH_C(hy, ty) then LH_C(LH_P2(hx, hy), zip_nl_lz(tx, ty))
    LH_N then LH_N
  LH_N then LH_N
fun zip_lz_nl(xs, ys) = if ys is
  LH_C(hy, ty) then if force(xs) is
    LH_C(hx, tx) then LH_C(LH_P2(hx, hy), zip_lz_nl(tx, ty))
    LH_N then LH_N
  LH_N then LH_N
fun zip_lz_lz(xs, ys) = lazy(if force(xs) is
  LH_C(hx, tx) then if force(ys) is
    LH_C(hy, ty) then LH_C(LH_P2(hx, hy), zip_lz_lz(tx, ty))
    LH_N then LH_N
  LH_N then LH_N)

fun zipWith(f, xs, ys) = if xs is
  LH_C(hx, tx) then if ys is
    LH_C(hy, ty) then LH_C(f(hx, hy), zipWith(f, tx, ty))
    LH_N then LH_N
  LH_N then LH_N
fun zipWith_nl_lz(f, xs, ys) = if xs is
  LH_C(hx, tx) then if force(ys) is
    LH_C(hy, ty) then LH_C(f(hx, hy), zipWith_nl_lz(f, tx, ty))
    LH_N then LH_N
  LH_N then LH_N
fun zipWith_lz_nl(f, xs, ys) = if ys is
  LH_C(hy, ty) then if force(xs) is
    LH_C(hx, tx) then LH_C(f(hx, hy), zipWith_lz_nl(f, tx, ty))
    LH_N then LH_N
  LH_N then LH_N
fun zipWith_lz_lz(f, xs, ys) = lazy(if force(xs) is
  LH_C(hx, tx) then if force(ys) is
    LH_C(hy, ty) then LH_C(f(hx, hy), zipWith_lz_lz(f, tx, ty))
    LH_N then LH_N
  LH_N then LH_N)

fun head(ls) = if ls is
  LH_C(h, t) then h
  LH_N then error
fun head_lz(ls) = if force(ls) is
  LH_C(h, t) then h
  LH_N then error

fun tail(ls) = if ls is
  LH_C(h, t) then t
  LH_N then error
fun tail_lz(ls) = if force(ls) is
  LH_C(h, t) then t
  LH_N then error

fun enumFromTo(a, b) = if a <= b then LH_C(a, enumFromTo(a + 1, b)) else LH_N
fun enumFromThenTo(a, t, b) = if a <= b then LH_C(a, enumFromThenTo(t, 2 * t - a, b)) else LH_N
fun enumFrom(a) = lazy(LH_C(a, enumFrom(a + 1)))
fun enumFromThen(a, t) = lazy(LH_C(a, enumFromThen(t, 2 * t - a)))

fun repeat(x) = lazy(LH_C(x, repeat(x)))

fun iterate(f, x) = lazy(LH_C(x, iterate(f, f(x))))

fun take(n, ls) = if n > 0 then (
  if ls is
    LH_C(h, t) then LH_C(h, take(n - 1, t))
    LH_N then LH_N
) else LH_N
fun take_lz(n, ls) = if n > 0 then (
  if force(ls) is
    LH_C(h, t) then LH_C(h, take_lz(n - 1, t))
    LH_N then LH_N
) else LH_N

fun length(ls) = if ls is
  LH_C(h, t) then 1 + length(t)
  LH_N then 0

fun mappend(xs, ys) = if xs is
  LH_C(h, t) then LH_C(h, mappend(t, ys))
  LH_N then ys

fun sum(ls) = if ls is
  LH_C(h, t) then h + (sum(t))
  LH_N then 0

fun atIndex(n, ls) =
  if n < 0 then
    error
  else
    if ls is
      LH_C(h, t) then
        if n == 0 then h else atIndex(n - 1, t)
      LH_N then error
fun atIndex_lz(n, ls) =
  if n < 0 then
    error
  else
    if force(ls) is
      LH_C(h, t) then
        if n == 0 then h else atIndex_lz(n - 1, t)
      LH_N then error
fun concat(lss) = if lss is
  LH_C(h, t) then mappend(h, concat(t))
  LH_N then LH_N

fun reverse(ls) = reverse_helper(ls, LH_N)
fun reverse_helper(ls, a) = if ls is
  LH_C(h, t) then reverse_helper(t, LH_C(h, a))
  LH_N then a
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

  def handleFunDefs(
    name: String,
    defNodes: IndexedSeq[Node]
  )(using initCtx: Expr.Ctx,
    prgmStr: Str,
    d: Deforest,
    output: Str => Unit
  ): (Ident, Expr) = {
    val funName = initCtx(name)
    val patsAndBodies = defNodes.map { n =>
      val patsOrEqNode = n.getChild(1)
      val declsNode = n.getAllChilds.find(_.getType() == "decls")
      val (whereDecls, newCtx) = declsNode match {
        case Some(declsNode) => {
          val allWhereDecls = declsNode.getAllChilds.filterNot { a => 
            val nodeType = a.getType()
            nodeType == "comment" || nodeType == "signature"
          }
          assert(allWhereDecls.forall(_.getType() == "function"), allWhereDecls.map(_.getType()).mkString("|"))
          val allWhereDeclsGrouped = allWhereDecls.groupBy(_.getChild(0).getSrcContent)
          val decledCtx = allWhereDeclsGrouped.keys.map(n => n -> d.nextIdent(false, Var(n)))
          val newInitCtx = initCtx ++ decledCtx
          (
            allWhereDeclsGrouped.map { case (name, defNodes) =>
              (handleFunDefs(name, defNodes)(using newInitCtx))
            },
            decledCtx
          )
        }
        case None => (Map.empty, Map.empty)
      }
      val (patterns, innerMainBodyIdx) = patsOrEqNode.getType() match {
        case "patterns" => (patsOrEqNode.getAllChilds.map(_.toPattern).toList, 3)
        case "=" => (Nil, 2)
      }
      val innerMainBodyToExprable = whereDecls.size match {
        case 0 => nodeToExprableHs(n.getChild(innerMainBodyIdx))
        case 1 => new ToExprable {
          val name = whereDecls.head._1
          val rhs = whereDecls.head._2
          val inner = nodeToExprableHs(n.getChild(innerMainBodyIdx))
          override def toExpr(using ctx: Ctx, inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str): Expr = {
            LetIn(name, rhs, inner.toExpr(using ctx ++ newCtx))
          }
        }
        case _ => new ToExprable {
          val inner = nodeToExprableHs(n.getChild(innerMainBodyIdx))
          override def toExpr(using ctx: Ctx, inDef: Option[Ident], d: Deforest, output: Str => Unit, prgmStr: Str): Expr = {
            LetGroup(whereDecls, inner.toExpr(using ctx ++ newCtx))
          }
        }
      }
      (
        patterns,
        innerMainBodyToExprable,
        Map.empty[String, Ident]
      )
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
        Expr.Ref(initCtx("error"))
      }
    )(using initCtx, Some(funName))
    val funDef = funArgNames.foldRight(body) { case (arg, acc) => Expr.Function(arg, acc)(using d, Some(funName)) }
    (funName, funDef)
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

    // NOTE: `where` is not fully handled, it cannot refer to parameters of the outer function
    val funcDefs = defs.groupBy(_.getChild(0).getSrcContent).map { case (name, defNodes) =>
      val (funName, funDef) = handleFunDefs(name, defNodes)
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

object FromOcaml extends NativeLoader("java-tree-sitter-ocaml-haskell") {
  def apply(program: Str)(using d: Deforest, output: Str => Unit): Program = {
    val parser = new Parser()
    parser.setLanguage(Languages.ocaml())
    val tree = parser.parseString(program)
    val treeRootNode = tree.getRootNode()
    output(treeRootNode.pp)
    ???
  }

  given NodeExtension with {
    extension (n: Node) override def toPattern(using prgmStr: Str): NestedPat = ???
  }
  given nodeToExprableOcaml: Conversion[Node, ToExprable] with {
    override def apply(x: Node): ToExprable = ???
  }

  def ocamlBuiltinFunsList(using d: Deforest): Program = {
    val ocamlBuiltinFuns = Set("map", "filter", "zip", "fold_left", "fold_right", "combine", "head", "tail", "enumFromTo", "enumFromThenTo", "length")
    val builtins = """
fun map(f, ls) = if ls is
  LH_C(h, t) then LH_C(f(h), map(f, t))
  LH_N then LH_N
fun filter(f, ls) = if ls is
  LH_C(h, t) then if f(h) then LH_C(h, filter(f, t)) else filter(f, t)
  LH_N then LH_N
fun fold_left(f, i, ls) = if ls is
  LH_C(h, t) then foldl(f, f(i, h), t)
  LH_N then i
fun fold_right(f, i, ls) = if ls is
  LH_C(h, t) then f(h, foldr(f, i, t))
  LH_N then i
fun combine(xs, ys) = if xs is
  LH_C(hx, tx) then if ys is
    LH_C(hy, ty) then LH_C(LH_P2(hx, hy), zip(tx, ty))
    LH_N then LH_N
  LH_N then LH_N
fun length(ls) = if ls is
  LH_C(h, t) then 1 + length(t)
  LH_N then 0
fun zip(xs, yx) = if xs is
  LH_C(hx, tx) then if ys is
    LH_C(hy, ty) then LH_C(LH_P2(hx, hy), zip(tx, ty))
    LH_N then LH_N
  LH_M then LH_N
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
}



trait CodeGen {
  protected implicit def stringToDoc(s: String): Raw = Raw(s)
  
  val primitives: Map[String, String]
  val headers: Document
  
  def transformId(id: Ident): Document
  def transFromProgDef(pd: ProgDef): Document
  def transformMatchArm(dtor: Var, params: List[Ident]): Document
  
  def rec(e: Expr): Document

  def generateTypeInfo(d: Deforest): String

  def apply(p: Program, bigLetRec: Boolean = true): String
}

class HaskellGen extends CodeGen {
  override val primitives = Map("add" -> "(+)", "sub" -> "(-)")

  override def generateTypeInfo(d: Deforest): String = {
    // def getCtorFieldTypes(ctor: Var, d: Defoest) = 
    
    val allCtors = d.ctorExprToType.values
    val allDtors = d.dtorExprToType.values
    val ctorFields = {
      val res = MutMap.empty[String, List[Set[Either[ProdStrat, Strat[ConsStratEnum.ConsVar]]]]]
      allCtors.foreach { case ProdStratEnum.MkCtor(ctor, args) => 
        res.updateWith(ctor.name) {
          case None => Some(args.map(a => Set(Left(a))))
          case Some(fieldsInfo) => {
            assert(fieldsInfo.length == args.length)
            Some((fieldsInfo lazyZip args).map { case (s, e) =>
              s + Left(e)
            })
          }
        }
      }
      var tvarCount = -1
      val tmp = res.collect { case (ctorName, fields) if !Set("True", "False")(ctorName) => ctorName -> {
        fields.zipWithIndex.map { case (a, index) =>
          if (
            a.forall(_.asInstanceOf[Left[ProdStrat, Nothing]].value.s.isInstanceOf[ProdStratEnum.MkCtor])
            || (ctorName == "LH_C" && index == 1)
          ) then
            "LH_BIGADT_PLACEHOLDER"
          else
            s"t${tvarCount += 1; tvarCount}"
        }
      }}
      val bigADTFullName = "LH_BIGADT" + (0 to tvarCount).map(i => s" t$i").mkString
      val finalRes = "data " + bigADTFullName + " = " + tmp.map { case (ctorName, fields) => ctorName -> { fields.map {
        case "LH_BIGADT_PLACEHOLDER" => s"($bigADTFullName)"
        case v => v
      }}}.map { case (ctorName, fields) => s"$ctorName${fields.map(f => s" $f").mkString}" }.mkString(" | ")
      finalRes
    }
    ctorFields

  }

  override def apply(p: Program, bigLetRec: Boolean = true): String = {
    Stacked(
      p.contents.sortBy {
        case Left(progDef) => progDef.id.tree.name
        case Right(expr) => ""
      }.map {
        case L(pd) => transFromProgDef(pd)
        case R(e) => rec(e)
      },
      emptyLines = false
    ).print
  }
  override def transformId(id: Ident): Document =
    if id.isDef then id.pp(using InitPpConfig) else id.pp(using InitPpConfig.showIuidOn)
  override def transFromProgDef(pd: ProgDef): Document = {
    pd.body match {
      case bodyFun@Function(param, body) => {
        val (params, innerBody) = bodyFun.takeParamsOut
        transformId(pd.id) <:> " " <:> Lined(params.map(transformId), " ") <:> " = " <:> rec(innerBody)
      }
      case _ => transformId(pd.id) <:> " = " <:> rec(pd.body)
    }
  }
  
  override def transformMatchArm(dtor: Var, params: List[Ident]): Document = {
    BuiltInTypes.fromStr(dtor.name) -> params match {
      case Some(BuiltInTypes.ListCons) -> (h :: t :: Nil) => "(" <:> transformId(h) <:> " : " <:> transformId(t) <:> ") -> "
      case Some(BuiltInTypes.ListNil) -> Nil => "[] -> "
      case Some(BuiltInTypes.Tuple(n)) -> fields => {
        assert(fields.length == n)
        "(" <:> Lined(fields.map(f => transformId(f)), ", ") <:> ") -> "
      }
      case Some(BuiltInTypes.BoolTrue) -> Nil => "True -> "
      case Some(BuiltInTypes.BoolFalse) -> Nil => "False -> "
      case None -> (idPat :: Nil) if dtor.name == "_" => transformId(idPat) <:> " -> "
      case None -> Nil if dtor.name == "_" => "_ -> "
      case _ => dtor.name <:> " " <:> Lined(params.map(arg => transformId(arg)) :+ Raw("-> "), " ")
    }
  }

  override val headers = stack("import Criterion.Main\n")

  // one-line, indentation is hard
  override def rec(e: Expr): Document = recSingleline(e)

  def recSingleline(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) if Deforest.lumberhackKeywords(id.tree.name) => id.tree.name
    case Ref(id) => transformId(id)
    case Call(Call(Ref(Ident(_, Var(op), _)), fst), snd) if Deforest.lumberhackBinOps(op) =>
      "(" <:> recSingleline(fst) <:> s" $op " <:> recSingleline(snd) <:> ")"
    case Call(Ref(Ident(_, Var("primId"), _)), arg) => recSingleline(arg)
    case Call(lhs, rhs) =>
      "(" <:> recSingleline(lhs) <:> " " <:> recSingleline(rhs) <:> ")"
    case Ctor(name, args) =>
      // "(" <:> name.name <:> " " <:> Lined(args.map(arg => recSingleline(arg)), " ") <:> ")"
      (BuiltInTypes.fromStr(name.name).map {
        case BuiltInTypes.ListCons => "(" <:> recSingleline(args(0)) <:> ":" <:> recSingleline(args(1)) <:> ")"
        case BuiltInTypes.ListNil => Raw("[]")
        case BuiltInTypes.BoolTrue => Raw("True")
        case BuiltInTypes.BoolFalse => Raw("False")
        case BuiltInTypes.Tuple(n) =>
          assert(n == args.length)
          "(" <:> Lined(args.map(recSingleline(_)).toList, ", ") <:> ")"
      }).getOrElse(
        "(" <:> name.name <:> " " <:> Lined(args.map(arg => recSingleline(arg)), " ") <:> ")"
      )
    case LetIn(id, rhs, body) => 
      "(let " <:> transformId(id) <:> " = " <:> recSingleline(rhs) <:> " in " <:> recSingleline(body) <:> ")"
    case Match(scrut, arms) => 
      "(case " <:> recSingleline(scrut) <:> " of {" <:> 
      Lined(arms.map{ case (v, args, body) => transformMatchArm(v, args) <:> recSingleline(body) }, "; ") <:> "})"
    case f: Function =>
      val (params, body) = f.takeParamsOut
      "(\\" <:> Lined(params.map(transformId), " ") <:> " -> " <:> recSingleline(body) <:> ")"
    case IfThenElse(s, t, e) => "(if " <:> recSingleline(s) <:> " then " <:> recSingleline(t) <:> " else " <:> recSingleline(e) <:> ")"
    case _ => lastWords("unsupported: " + e.pp(using InitPpConfig.showIuidOn))
  }

  def recMultiline(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) => transformId(id)
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
        "(let " <:> transformId(id) <:> " = " <:> recMultiline(rhs) <:> " in",
        Indented(recMultiline(body)),
        ")"
      )
    case Match(scrut, arms) => 
      Stacked(
        ("case " <:> recMultiline(scrut) <:> " of") :: 
        arms.map{case (v, args, body) => stack(
          // Indented(v.name <:> " " <:> Lined(args.map(arg => transformId(arg)) :+ Raw("-> "), " ") <:> recMultiline(body))
          Indented(transformMatchArm(v, args) <:> recMultiline(body))
        )}
      )
    case f: Function =>
      val (params, body) = f.takeParamsOut
      stack(
        "(\\" <:> Lined(params.map(transformId), " ") <:> " -> ",
        Indented(recMultiline(body) <:> ")")
      )
    case IfThenElse(s, t, e) => "if " <:> recMultiline(s) <:> " then " <:> recMultiline(t) <:> " else " <:> recMultiline(e)
    case _ => lastWords("unsupported: " + e.pp(using InitPpConfig.showIuidOn))
  }



}

class OCamlGen(val usePolymorphicVariant: Bool, val backToBuiltInType: Bool = false) extends CodeGen {
  override val primitives = Map(
    "add" -> "(+)", "sub" -> "(-)", "%" -> "mod", "==" -> "=", "error" -> "(failwith \"error\")", "/=" -> "<>",
    "force" -> "Lazy.force", "polyEq" -> "=", "polyLt" -> "<", "polyGt" -> ">", "polyLeq" -> "<=",
    "polyGeq" -> ">=", "polyNeq" -> "<>", "div" -> "/", "ceiling" -> "ceil", "lumberhack_obj_magic" -> "Obj.magic"
  )
  def transformPrimitive(p: String): String = primitives.getOrElse(p, p)

  override def generateTypeInfo(d: Deforest): String = {
    // the type of every field is generic as this seems does not affect the run time and allocation
    // evaluation result in ocaml
    val allCtors = d.ctorExprToType.values
    val allDtors = d.dtorExprToType.values
    var tvarCount = -1
    val ctorFields = {
      val res = MutMap.empty[String, List[String]]
      allCtors.collect { case ProdStratEnum.MkCtor(ctor, args)
        if !(Set("True", "False", "Int", "_")(ctor.name) || ctor.name.startsWith("LH_")) => 
        val fields = res.getOrElseUpdate(
          ctor.name,
          args.map { _ =>
            tvarCount += 1
            s"'t$tvarCount"
          }
        )
        assert(fields.length == args.length)
      }
      allDtors.collect { case ConsStratEnum.Destruct(dtors) => dtors.collect {
        case Destructor(ctor, args) if !(Set("True", "False", "Int", "_")(ctor.name) || ctor.name.startsWith("LH_")) =>
          val fields = res.getOrElseUpdate(
            ctor.name,
            args.map { _ =>
              tvarCount += 1
              s"'t$tvarCount"
            }
          )
          assert(fields.length == args.length)
      }}
      res.toMap
    }
    val vars = (0 to tvarCount).map(i => s"'t$i").mkString(", ")
    val bigADTFullName = (if vars.nonEmpty then s"($vars) " else "") + "lh_bigadt"
    val finalRes = "\ntype " + bigADTFullName + " = " + ctorFields.map { case (ctorName, fields) =>
      s"$ctorName ${if fields.isEmpty then "" else ("of " + fields.mkString(" * "))}"
    }.mkString(" | ")
    if ctorFields.nonEmpty then (finalRes + ";;") else ""
  }
  override def transFromProgDef(pd: ProgDef): Document = {
    pd.body match {
      case bodyFun@Function(param, body) => {
        val (params, innerBody) = bodyFun.takeParamsOut
        stack(
          transformId(pd.id) <:> Lined(params.map(p => " " <:> transformId(p)), "") <:> " =",
          Indented(rec(innerBody))
        )
      }
      case _ => stack(
        transformId(pd.id) <:> " =",
        Indented(rec(pd.body))
      )
    }
  }

  override def transformMatchArm(dtor: Var, params: List[Ident]): Document = {
    BuiltInTypes.fromStr(dtor.name) -> params match {
      case Some(BuiltInTypes.BoolTrue) -> Nil => "true -> "
      case Some(BuiltInTypes.BoolFalse) -> Nil => "false -> "
      case Some(otherBuiltInTypes) -> params if backToBuiltInType =>
        otherBuiltInTypes -> params match {
          case BuiltInTypes.ListCons -> (h :: t :: Nil) => "(" <:> transformId(h) <:> " :: " <:> transformId(t) <:> ") -> "
          case BuiltInTypes.ListNil -> Nil => "[] -> "
          case BuiltInTypes.Tuple(n) -> fields => {
            assert(fields.length == n)
            "(" <:> Lined(fields.map(f => transformId(f)), ", ") <:> ") -> "
          }
        }
      case None -> (idPat :: Nil) if dtor.name == "_" => transformId(idPat) <:> " -> "
      case None -> Nil if dtor.name == "_" => "_ -> "
      case None -> Nil if dtor.name.matches("\\d+|'.'") => s"${dtor.name} -> " // int or char literal pattern
      case _ => (if this.usePolymorphicVariant then "`" else "") <:> s"${dtor.name}" <:> {
        if params.nonEmpty then
          "(" <:> Lined(params.map(arg => transformId(arg)), ", ") <:> ")"
        else
          ""
      } <:> Raw(" -> ")
    }
  }

  override def rec(e: Expr): Document = recMultiline(e)
  def recMultiline(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) if Deforest.lumberhackKeywords(id.tree.name) =>
      transformPrimitive(id.tree.name)
    case Ref(id) => transformId(id)
    case Call(Ref(Ident(_, Var("primId"), _)), arg) => rec(arg)
    case Call(Call(Ref(Ident(_, Var(op), _)), fst), snd)
      if Deforest.lumberhackBinOps(op) || Deforest.lumberhackPolyOps(op) || (op == "div") =>
      "(" <:> rec(fst) <:> s" ${transformPrimitive(op)} " <:> rec(snd) <:> ")"
    case Call(lhs, rhs) =>
      "(" <:> rec(lhs) <:> " " <:> rec(rhs) <:> ")"
    case Ctor(name, args) => //All constructors are polymorphic variants with tuple arguments
      (BuiltInTypes.fromStr(name.name).flatMap {
        case BuiltInTypes.BoolTrue => Some(Raw("true"))
        case BuiltInTypes.BoolFalse => Some(Raw("false"))
        case otherBuiltInTypes if !backToBuiltInType => None
        case BuiltInTypes.ListCons => Some("(" <:> rec(args(0)) <:> "::" <:> rec(args(1)) <:> ")")
        case BuiltInTypes.ListNil => Some(Raw("[]"))
        case BuiltInTypes.Tuple(n) =>
          assert(n == args.length)
          Some("(" <:> Lined(args.map(rec(_)).toList, ", ") <:> ")")
      }).getOrElse(
        (if this.usePolymorphicVariant then "(`" else "(") <:> name.name <:> {
          if args.nonEmpty then
            "(" <:> Lined(args.map(arg => rec(arg)), ", ") <:> ")"
          else
            ""
        } <:> ")"
      )
    case LetIn(id, rhs, body) => 
      stack(
        "(let rec " <:> transformId(id) <:> " = " <:> rec(rhs) <:> " in",
        Indented(rec(body)) <:> ")"
      )
    case LetGroup(defs, body) =>
      val first = "let rec " <:> transformId(defs.head._1) <:> " = " <:> rec(defs.head._2)
      val rest = defs.tail.map { case (d, r) =>
        "and " <:> transformId(d) <:> " = " <:> rec(r)
      }
      Stacked((first :: rest.toList) :+ ("in " <:> rec(body)))
    case Match(scrut, arms) => 
      Stacked(
        ("(match " <:> rec(scrut) <:> " with") ::
        arms.map { case (v, args, body) => stack(
          Indented("| " <:> transformMatchArm(v, args)),
          Indented(Indented(rec(body)))
        )}
      ) <:> ")"
    case f: Function =>
      val (params, body) = f.takeParamsOut
      stack(
        "(fun " <:> Lined(params.map(transformId), " ") <:> " -> ",
        Indented(rec(body)) <:> ")"
      )
    case IfThenElse(s, t, e) => stack(
      "(if " <:> rec(s) <:> " then",
      Indented(rec(t)),
      "else",
      Indented(rec(e)) <:> ")"
    )
    case e => lastWords(s"not supported: ${e.pp(using InitPpConfig.showIuidOn)}")
  }


  override val headers = stack(
    Raw("(* #use \"topfind\";;\n#require \"core_unix.command_unix\";;\n#require \"core_bench\";; *)"),
    Raw("open Core_bench;;"),
    Raw("""
let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))""")
  )

  override def apply(p: Program, bigLetRec: Boolean = true): String = {
    val callsInfo = p.d.callsInfo._2.toMap
    def isIndependent(id: Ident): Boolean = {
      val callees = callsInfo(id)
      // if want to use big let rec, should always return false
      (callees.isEmpty || callees.forall(_.id == id)) && (!bigLetRec)
    }

    val sortedContent = p.contents.sortBy {
      case Left(progDef) => progDef.id.tree.name
      case Right(expr) => ""
    }

    val independentDefs = sortedContent.collect {
      case Left(df) if isIndependent(df.id) => (Raw("let rec ") <:> transFromProgDef(df) <:> Raw(";;")).print
    }.mkString("\n")
    val laterDefs = sortedContent.collect {
      case Left(df) if !isIndependent(df.id) => transFromProgDef(df).print
    }.mkString("\nand ")
    Stacked(
      { if independentDefs.nonEmpty then 
        Raw(independentDefs) :: Nil
      else
        Nil
      } :::
      { if laterDefs.nonEmpty then
        ("let rec " <:> Raw(laterDefs) <:> ";;") :: Nil
      else
        Nil
      } :::
      sortedContent.collect {
        case R(e) => rec(e)
      },
      emptyLines = false
    ).print
  }
  override def transformId(id: Ident): Document = {
    def fromSubscript(i: String) = i.flatMap {
      case '₀' => "_d0"; case '₁' => "_d1"; case '₂' => "_d2"
      case '₃' => "_d3"; case '₄' => "_d4"; case '₅' => "_d5"
      case '₆' => "_d6"; case '₇' => "_d7"; case '₈' => "_d8"
      case '₉' => "_d9"; case c => c.toString()
    }
    def fromSuperscript(i: String) = i.flatMap {
      case '⁰' => "_0"; case '¹' => "_1"; case '²' => "_2"
      case '³' => "_3"; case '⁴' => "_4"; case '⁵' => "_5"
      case '⁶' => "_6"; case '⁷' => "_7"; case '⁸' => "_8"
      case '⁹' => "_9"; case c => c.toString()
    }
    fromSuperscript(fromSubscript(
      if id.isDef then id.pp(using InitPpConfig) else id.pp(using InitPpConfig.showIuidOn)
    ))
  }
}

object DistillerGen extends CodeGen {
  override def generateTypeInfo(d: Deforest): String = ???
  def makeBenchFiles(programs: List[(String, Program)]): String = ???
  override val headers: Document = ""
  override val primitives: Map[String, String] = Map(
    "+" -> "plus", "-" -> "minus", "*" -> "mul", "mult" -> "mul", "/" -> "div",
    ">" -> "gt", "<" -> "lt", "==" -> "eqNat",
    "<=" -> "le", ">=" -> "ge"
  )

  override def rec(e: Expr): Document = recSingleline(e)
  def recSingleline(e: Expr): Document = e match {
    case Const(lit) => Raw(lit.idStr)
    case Ref(id) if Deforest.lumberhackKeywords(id.tree.name) => id.tree.name
    case Ref(id) => transformId(id)
    case Call(Call(Ref(Ident(_, Var(op), _)), fst), snd) if Deforest.lumberhackBinOps(op) =>
      "(" <:> s"${primitives.getOrElse(op, op)} " <:> recSingleline(fst) <:> " " <:> recSingleline(snd) <:> ")"
    case Call(Ref(Ident(_, Var("primId"), _)), arg) => recSingleline(arg)
    case Call(lhs, rhs) =>
      "(" <:> recSingleline(lhs) <:> " " <:> recSingleline(rhs) <:> ")"
    case Ctor(name, args) if args.length > 0 =>
      "(" <:> name.name <:> "(" <:> Lined(args.map(arg => recSingleline(arg)), ", ") <:> "))"
    case Ctor(name, args) => 
      "(" <:> name.name <:> ")"
    case LetIn(id, rhs, body) => 
      "(let " <:> transformId(id) <:> " = " <:> recSingleline(rhs) <:> " in " <:> recSingleline(body) <:> ")"
    case LetGroup(_, _) => lastWords("mutual recursive let groups not supported")
    case Match(scrut, arms) => 
      "(case " <:> recSingleline(scrut) <:> " of " <:> 
      Lined(arms.map{ case (v, args, body) => transformMatchArm(v, args) <:> recSingleline(body) }, " | ") <:> ")"
    case f: Function =>
      val (params, body) = f.takeParamsOut
      "(\\" <:> Lined(params.map(transformId), " ") <:> " -> " <:> recSingleline(body) <:> ")"
    case IfThenElse(s, t, e) =>
      "(case " <:> recSingleline(s) <:> " of True -> (" <:> recSingleline(t) <:> ") | False -> (" <:> recSingleline(e) <:> "))"
    case _ => lastWords("unsupported: " + e.pp(using InitPpConfig.showIuidOn))
  }
  override def transFromProgDef(pd: ProgDef): Document = {
    pd.body match {
      case bodyFun@Function(param, body) => {
        val (params, innerBody) = bodyFun.takeParamsOut
        stack(
          transformId(pd.id) <:> Lined(params.map(p => " " <:> transformId(p)), "") <:> " =",
          Indented(rec(innerBody))
        )
      }
      case _ => stack(
        transformId(pd.id) <:> " =",
        Indented(rec(pd.body))
      )
    }
  }
  override def transformMatchArm(dtor: Var, params: List[Ident]): Document = {
    BuiltInTypes.fromStr(dtor.name) -> params match {
      // case Some(BuiltInTypes.ListCons) -> (h :: t :: Nil) => "(" <:> transformId(h) <:> " : " <:> transformId(t) <:> ") -> "
      // case Some(BuiltInTypes.ListNil) -> Nil => "[] -> "
      // case Some(BuiltInTypes.Tuple(n)) -> fields => {
      //   assert(fields.length == n)
      //   "(" <:> Lined(fields.map(f => transformId(f)), ", ") <:> ") -> "
      // }
      // case Some(BuiltInTypes.BoolTrue) -> Nil => "True -> "
      // case Some(BuiltInTypes.BoolFalse) -> Nil => "False -> "
      // case None -> (idPat :: Nil) if dtor.name == "_" => transformId(idPat) <:> " -> "
      // case None -> Nil if dtor.name == "_" => "_ -> "
      case _ if params.length > 0 => dtor.name <:> "(" <:> Lined(params.map(arg => transformId(arg)), ", ") <:> ") -> "
      case _ => dtor.name <:> " -> "
    }
  }
  override def transformId(id: Ident): Document = {
    def fromSubscript(i: String) = i.flatMap {
      case '₀' => "_d0"; case '₁' => "_d1"; case '₂' => "_d2"
      case '₃' => "_d3"; case '₄' => "_d4"; case '₅' => "_d5"
      case '₆' => "_d6"; case '₇' => "_d7"; case '₈' => "_d8"
      case '₉' => "_d9"; case c => c.toString()
    }
    def fromSuperscript(i: String) = i.flatMap {
      case '⁰' => "_0"; case '¹' => "_1"; case '²' => "_2"
      case '³' => "_3"; case '⁴' => "_4"; case '⁵' => "_5"
      case '⁶' => "_6"; case '⁷' => "_7"; case '⁸' => "_8"
      case '⁹' => "_9"; case c => c.toString()
    }
    fromSuperscript(fromSubscript(
      if id.isDef then id.pp(using InitPpConfig) else id.pp(using InitPpConfig.showIuidOn)
    ))
  }

  override def apply(p: Program, bigLetRec: Boolean): String = {
    Stacked(
      p.contents.sortBy {
        case Left(progDef) => progDef.id.tree.name
        case Right(expr) => ""
      }.map {
        case R(e) => "main = " <:> rec(e) <:> ";"
        case L(pd) => transFromProgDef(pd) <:> ";"
      },
      emptyLines = false
    ).print.dropRight(1)
  }
}