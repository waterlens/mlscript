package mlscript
package lumberhack

import scala.collection.mutable
import mlscript.utils.*, shorthands.*
import mlscript.Function as FunctionTerm
import Expr.*
import scala.collection.mutable.Map as MutMap
import lumberhack.utils.*

trait ExprRewrite { this: Expr =>
  // ctx should initially contain the keywords and the ids of original function definitions
  def rewriteExpand(using ctx: Expr.Ctx, currentPath: Path, newd: Deforest, pathToIdent: Map[Path, Ident], refMap: Map[Expr.Ref, Expr.Ref]): Expr = {
    this match {
      case Const(lit) => Const(lit)
      case Call(lhs, rhs) => Call(lhs.rewriteExpand, rhs.rewriteExpand)
      case Sequence(f, s) => Sequence(f.rewriteExpand, s.rewriteExpand)
      case Ctor(name, args) => Ctor(name, args.map(_.rewriteExpand))
      case LetIn(id, rhs, body) =>
        val newId = id.copyToNewDeforest
        LetIn(newId, rhs.rewriteExpand, body.rewriteExpand(using ctx + (id.tree.name -> newId)))
      case Match(scrut, arms) =>
        Match(scrut.rewriteExpand, arms.map {(ctor, args, body) =>
          val newArgs = args.map(a => a.tree.name -> a.copyToNewDeforest)
          given Expr.Ctx = ctx ++ newArgs
          (ctor, newArgs.map(_._2), body.rewriteExpand)
        })
      case IfThenElse(s, t, e) => IfThenElse(s.rewriteExpand, t.rewriteExpand, e.rewriteExpand)
      case Function(param, body) =>
        val newParam = param.copyToNewDeforest
        Function(newParam, body.rewriteExpand(using ctx + (newParam.tree.name -> newParam)))
      case ref@Ref(id) => if id.isDef then { // a function def
        pathToIdent.get(currentPath ::: refMap(ref).toPath()) match {
          case Some(id) => Ref(id)            // either a knot or a new def
          case None => Ref(ctx(id.tree.name)) // hopeless to continue, should use the original definition
        } 
      } else Ref(ctx(id.tree.name)) // a parameter or match binder or builtin keyword
    } 
  }

  def rewriteFusion(using fusionMatch: Map[ExprId, ExprId], newd: Deforest): Expr = {
    this match {
      case Const(lit) => Const(lit)
      case Call(lhs, rhs) => Call(lhs.rewriteFusion, rhs.rewriteFusion)
      case Sequence(f, s) => Sequence(f.rewriteFusion, s.rewriteFusion)
      case LetIn(id, rhs, body) => LetIn(id, rhs.rewriteFusion, body.rewriteFusion)
      case IfThenElse(s, t, e) => IfThenElse(s.rewriteFusion, t.rewriteFusion, e.rewriteFusion)
      case Function(param, body) => Function(param, body.rewriteFusion)
      case Ref(id) => Ref(id)
      case Match(scrut, arms) => if fusionMatch.valuesIterator.contains(this.uid)
        then scrut.rewriteFusion
        else Match(scrut.rewriteFusion, arms.map{(n, args, body) => (n, args, body.rewriteFusion)})
      case Ctor(name, args) => fusionMatch.get(this.uid).map { matchId =>
        val matchArm = newd.exprs(matchId).asInstanceOf[Match].arms.find(_._1 == name).get
        (matchArm._2 zip args).foldRight(matchArm._3.rewriteFusion){(t_i, acc) => LetIn(t_i._1, t_i._2.rewriteFusion, acc)}
      }.orElse(Some(Ctor(name, args.map(_.rewriteFusion)))).get
    }
  }
}

trait ProgramRewrite { this: Program =>
  private def copyDefsToNewDeforest(using newd: Deforest): Program -> Map[Expr.Ref, Expr.Ref] -> Expr.Ctx = {
    val refMaps = scala.collection.mutable.Map.empty[Expr.Ref, Expr.Ref]
    def copyExpr(e: Expr)(using ctx: Expr.Ctx, newd: Deforest): Expr = e match {
      case Expr.Const(lit: Lit) => Expr.Const(lit)
      case r@Expr.Ref(id: Ident) =>
        val res = Expr.Ref(ctx(id.tree.name))
        assert(!refMaps.contains(res))
        refMaps += (res -> r)
        res
      case Expr.Call(lhs: Expr, rhs: Expr) => Expr.Call(copyExpr(lhs), copyExpr(rhs))
      case Expr.Sequence(fst: Expr, snd: Expr) => Expr.Sequence(copyExpr(fst), copyExpr(snd))
      case Expr.Ctor(name: Var, args: Ls[Expr]) => Expr.Ctor(name, args.map(copyExpr))
      case Expr.LetIn(id: Ident, rhs: Expr, body: Expr) =>
        val newId = id.copyToNewDeforest
        Expr.LetIn(newId, copyExpr(rhs), copyExpr(body)(using ctx + (id.tree.name -> newId)))
      case Expr.Match(scrut: Expr, arms: Ls[(Var, Ls[Ident], Expr)]) =>
        Expr.Match(copyExpr(scrut), arms.map {(ctor, args, body) =>
          val newArgs = args.map(a => a.tree.name -> a.copyToNewDeforest)
          given Expr.Ctx = ctx ++ newArgs
          (ctor, newArgs.map(_._2), copyExpr(body))
        })
      case Expr.IfThenElse(scrut: Expr, thenn: Expr, elze: Expr) => Expr.IfThenElse(copyExpr(scrut), copyExpr(thenn), copyExpr(elze))
      case Expr.Function(param: Ident, body: Expr) =>
        val newParam = param.copyToNewDeforest
        Expr.Function(newParam, copyExpr(body)(using ctx + (newParam.tree.name -> newParam)))
    }
    given ctx: Expr.Ctx = Deforest.lumberhackKeywords.map {
      n => n -> newd.nextIdent(false, Var(n))
    } ++ this.defAndExpr._1.keySet.map(id => id.tree.name -> id.copyToNewDeforest) |> (_.toMap)

    Program(
      this.defAndExpr._2.map { e => R(copyExpr(e)) }
      ::: this.defAndExpr._1.map { (id, body) => L(ProgDef(ctx(id.tree.name), copyExpr(body))) }.toList
    ) -> refMaps.toMap -> ctx
  }

  def expandedWithNewDeforest(callTrees: CallTrees): Program -> Deforest = {
    given newd: Deforest(false)
    val copiedOriginalProgram -> refMaps -> initContext = this.copyDefsToNewDeforest
    val pathToIdent = callTrees.generatePathToIdent
    assert({
      val a = pathToIdent.values.map(_.pp(using InitPpConfig)).toSet
      val b = pathToIdent.values.map(_.pp(using InitPpConfig.showIuidOn)).toSet
      b.size == a.size
    })
    
    val newDefs = {
      var defined = List.empty[Ident -> Path]
      pathToIdent.keys.foreach { p =>
        // make sure to only register those that are real new defs
        // if p.pp(using InitPpConfig.showRefEuidOn.pathAsIdentOn) == pathToIdent(p).pp(using InitPpConfig.showRefEuidOn.pathAsIdentOn)
        if callTrees.originalDefs(p) then defined = (pathToIdent(p) -> p) :: defined
      }
      val res = defined.map { (id, p) =>
        assert(p.p.nonEmpty)
        val identKey = p.p.last match
          case PathElem.Normal(ref) => initContext(ref.id.tree.name)
          case PathElem.Star(elms) => ???
        val newBody: Expr = copiedOriginalProgram.defAndExpr._1(identKey).rewriteExpand(using initContext, p, newd, pathToIdent, refMaps)
        L(ProgDef(id, newBody))
      }
      res
    }
    Program(
      copiedOriginalProgram.defAndExpr._2.map(e => R(e.rewriteExpand(using initContext, Path(Nil), newd, pathToIdent, refMaps)))
      // ++ copiedOriginalProgram.defAndExpr._1.iterator.map((id, body) => L(ProgDef(id, body)))
      ++ newDefs
    ) -> newd
    
  }

  def rewrite(fusionMatch: Map[ExprId, Set[ExprId]], d: Deforest): Program = {
    given Map[ExprId, ExprId] = fusionMatch.map { (p, cs) => p -> cs.head }
    given Deforest = d
    Program(
      this.defAndExpr._2.map { e => R(e.rewriteFusion) }
      ::: this.defAndExpr._1.map { (id, body) => L(ProgDef(id, body.rewriteFusion)) }.toList
    )
  }
}