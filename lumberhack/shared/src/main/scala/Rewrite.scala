package mlscript
package lumberhack

import scala.collection.mutable
import mlscript.utils.*, shorthands.*
import mlscript.Function as FunctionTerm
import Expr.*
import scala.collection.mutable.Map as MutMap
import lumberhack.utils.*
import ConsStratEnum.*
import ProdStratEnum.*


class FusionStrategy(d: Deforest) {
  val (upperBounds, lowerBounds) = d.upperBounds.map{(id, ls) => (id, ls.map(_._2))}.toMap -> d.lowerBounds.map{(id, ls) => (id, ls.map(_._2))}.toMap
  
  val involvedDtors = d.fusionMatch.values.flatten.toSet
  val involvedCtors = d.fusionMatch.keySet

  private def findToEndCons(v: ConsVar, cache: Set[ConsVar]): Set[ConsVar] = {
    if upperBounds.get(v.uid) match { case None => true; case Some(v) => v.isEmpty } then Set(v)
    else upperBounds(v.uid).foldLeft(Set()){(acc, ub) => ub.s match {
      case cv: ConsVar if cache(cv) => acc + cv
      case cv: ConsVar => acc ++ findToEndCons(cv, cache + cv)
      case _ => acc
    }}
  }
  private def findToEndProd(v: ProdVar, cache: Set[ProdVar]): Set[ProdVar] = {
    if lowerBounds.get(v.uid) match { case None => true; case Some(v) => v.isEmpty } then Set(v)
    else lowerBounds(v.uid).foldLeft(Set()){(acc, lb) => lb.s match {
      case pv: ProdVar if cache(pv) => acc + pv
      case pv: ProdVar => acc ++ findToEndProd(pv, cache + pv)
      case _ => acc
    }}
  }


  val ctorFinalDestinations: Map[MkCtor, Set[ConsStratEnum]] = {
    val res = MutMap.empty[MkCtor, Set[ConsStratEnum]].withDefaultValue(Set())
    d.ctorDestinations.foreach { (ctor, dests) => if involvedCtors(ctor.euid) then
      dests.foreach { dest => dest match {
        case c: (NoCons | Destruct) => res += ctor -> (res(ctor) + c)
        case cv: ConsVar => res += ctor -> (res(ctor) ++ findToEndCons(cv, Set(cv)))
        case _ => ??? // unreachable
      }}
    }
    res.toMap
  }

  val dtorFinalSources: Map[Destruct, Set[ProdStratEnum]] = {
    val res = MutMap.empty[Destruct, Set[ProdStratEnum]].withDefaultValue(Set())
    d.dtorSources.foreach { (dtor, sources) => if involvedDtors(dtor.euid) then 
      sources.foreach { src => src match {
        case s: (NoProd | MkCtor) => res += dtor -> (res(dtor) + s)
        case pv: ProdVar => res += dtor -> (res(dtor) ++ findToEndProd(pv, Set(pv)))
        case _ => ??? // unreachable
      }}
    }
    res.toMap
  }

  def ppCtorMap(m: Map[MkCtor, Set[ConsStratEnum]]): Str = m.toSeq.sortBy(_._1.euid.asInstanceOf[Int]).map { (ctor, dests) =>
    (d.exprs.get(ctor.euid) match {
      case Some(value) => value.pp(using InitPpConfig.showIuidOn) + s": ${ctor.euid}"
      case None => ctor.pp(using InitPpConfig)
    }) + " --->\n" + dests.toSeq.sortBy(_.euid.asInstanceOf[Int]).map {
      case dtor: Destruct => "\t" + (d.exprs.get(dtor.euid) match {
        case Some(v) => v.pp(using InitPpConfig.showIuidOn) + s": ${dtor.euid}"
        case None => dtor.pp(using InitPpConfig)
      })
      case ty => "\t" + ty.pp(using InitPpConfig)
    }.mkString("\n")
  }.mkString("\n")
  def ppDtorMap(m: Map[Destruct, Set[ProdStratEnum]]): Str = m.toSeq.sortBy(_._1.euid.asInstanceOf[Int]).map { (dtor, dests) =>
    (d.exprs.get(dtor.euid) match {
      case Some(v) => v.pp(using InitPpConfig.showIuidOn) + s": ${dtor.euid}"
      case None => dtor.pp(using InitPpConfig)
    }) + " --->\n" + dests.toSeq.sortBy(_.euid.asInstanceOf[Int]).map {
      case ctor: MkCtor => "\t" + (d.exprs.get(ctor.euid) match {
        case Some(v) => v.pp(using InitPpConfig.showIuidOn) + s": ${ctor.euid}"
        case None => ctor.pp(using InitPpConfig)
      })
      case ty => "\t" + ty.pp(using InitPpConfig)
    }.mkString("\n")
  }.mkString("\n")


  lazy val ppCtorFinalDestinations: Str = ppCtorMap(ctorFinalDestinations)
  lazy val ppDtorFinalSources: Str = ppDtorMap(dtorFinalSources)

  private def removeCtor(
    ctorDests: Map[MkCtor, Set[ConsStratEnum]],
    dtorSrcs: Map[Destruct, Set[ProdStratEnum]],
    rm: Set[ProdStratEnum]
  ): Map[MkCtor, Set[ConsStratEnum]] -> Map[Destruct, Set[ProdStratEnum]] = {
    if rm.isEmpty then ctorDests -> dtorSrcs else {
      val (newCtorDests, toDeleteCtors) = ctorDests.partition(c => !rm(c._1))
      removeDtor(newCtorDests, dtorSrcs, toDeleteCtors.values.flatten.toSet)
    }
  }
  private def removeDtor(
    ctorDests: Map[MkCtor, Set[ConsStratEnum]],
    dtorSrcs: Map[Destruct, Set[ProdStratEnum]],
    rm: Set[ConsStratEnum]
  ): Map[MkCtor, Set[ConsStratEnum]] -> Map[Destruct, Set[ProdStratEnum]] = {
    if rm.isEmpty then ctorDests -> dtorSrcs else {
      val (newDtorSrcs, toDeleteDtors) = dtorSrcs.partition(d => !rm(d._1))
      removeCtor(ctorDests, newDtorSrcs, toDeleteDtors.values.flatten.toSet)
    }
  }
  
  val afterRemoveMultipleMatch = {
    val toRmDtor = dtorFinalSources.filter(_._2.exists(p => p match {
      case _: MkCtor => false
      case _ => true
    })).keySet.asInstanceOf[Set[ConsStratEnum]]
    val res = removeDtor(ctorFinalDestinations, dtorFinalSources, toRmDtor)

    // val ctorDests = res._1
    // val allDtors = ctorDests.values.flatten.map(ctor => d.exprs(ctor.euid))
    // val disjointSetsOfDtors = {
    //   val repsToElems = MutMap.empty[Expr, Set[Expr]]
    //   val elemToReps = MutMap.empty[Expr, Expr]
    //   allDtors.foreach( dtor =>
    //     repsToElems.keys.find(rep => dtor.alphaRenamingCheck(rep)) match {
    //       case None => repsToElems += (dtor -> Set(dtor)); elemToReps += (dtor -> dtor)
    //       case Some(rep) => repsToElems.update(rep, repsToElems(rep) + dtor); elemToReps += (dtor -> rep)
    //     }
    //   )
    //   repsToElems.toMap -> elemToReps.toMap
    // }
    
    val toRmCtor = res._1.filter(_._2.size > 1).keySet.asInstanceOf[Set[ProdStratEnum]]
    removeCtor(res._1, res._2, toRmCtor)
  }
}



trait ExprRewrite { this: Expr =>
  // ctx should initially contain the keywords and the ids of original function definitions
  def rewriteExpand(using ctx: Expr.Ctx, currentPath: Path, newd: Deforest, pathToIdent: Map[Path, Ident], refMap: Map[Expr.Ref, Expr.Ref], inDef: Option[Ident]): Expr = {
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

  def rewriteFusion(using ctx: Expr.Ctx, fusionMatch: Map[ExprId, ExprId], newd: Deforest, inDef: Option[Ident]): Expr = {
    this match {
      case Const(lit) => Const(lit)
      case Call(lhs, rhs) => Call(lhs.rewriteFusion, rhs.rewriteFusion)
      case Sequence(f, s) => Sequence(f.rewriteFusion, s.rewriteFusion)
      case LetIn(id, rhs, body) => LetIn(id, rhs.rewriteFusion, body.rewriteFusion)
      case IfThenElse(s, t, e) => IfThenElse(s.rewriteFusion, t.rewriteFusion, e.rewriteFusion)
      case Function(param, body) =>
        val newParamId = param.copyToNewDeforest
        val newCtx = ctx + (newParamId.tree.name -> newParamId)
        Function(newParamId, body.rewriteFusion(using newCtx))
      case Ref(id) => Ref(ctx.getOrElse(id.tree.name, id))
      case Match(scrut, arms) => if fusionMatch.valuesIterator.contains(this.uid)
        then scrut.rewriteFusion
        else Match(scrut.rewriteFusion, arms.map{(n, args, body) => (n, args, body.rewriteFusion)})
      case Ctor(name, args) => fusionMatch.get(this.uid).map { matchId =>
        val matchArm = newd.exprs(matchId).asInstanceOf[Match].arms.find(_._1 == name).get
        val newIds = matchArm._2.map(_.copyToNewDeforest)
        val newCtx = ctx ++ newIds.map(id => id.tree.name -> id).toMap
        (newIds zip args).foldRight(matchArm._3.rewriteFusion(using newCtx)){(t_i, acc) => 
          LetIn(t_i._1, t_i._2.rewriteFusion, acc)
        }
      }.orElse(Some(Ctor(name, args.map(_.rewriteFusion)))).get
    }
  }
}

trait ProgramRewrite { this: Program =>
  private def copyDefsToNewDeforest(using newd: Deforest): Program -> Map[Expr.Ref, Expr.Ref] -> Expr.Ctx = {
    val refMaps = scala.collection.mutable.Map.empty[Expr.Ref, Expr.Ref]
    def copyExpr(e: Expr)(using ctx: Expr.Ctx, newd: Deforest, inDef: Option[Ident]): Expr = e match {
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
      this.defAndExpr._2.map { e => given Option[Ident] = None; R(copyExpr(e)) }
      ::: this.defAndExpr._1.map { (id, body) =>
        given Option[Ident] = Some(ctx(id.tree.name))
        L(ProgDef(ctx(id.tree.name), copyExpr(body)))
      }.toList
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
        val newBody: Expr = copiedOriginalProgram.defAndExpr._1(identKey)
          .rewriteExpand(using initContext, p, newd, pathToIdent, refMaps, Some(id))
        L(ProgDef(id, newBody))
      }
      res
    }
    Program(
      copiedOriginalProgram.defAndExpr._2.map(e => R(e.rewriteExpand(using initContext, Path(Nil), newd, pathToIdent, refMaps, None)))
      // ++ copiedOriginalProgram.defAndExpr._1.iterator.map((id, body) => L(ProgDef(id, body)))
      ++ newDefs
    ) -> newd
    
  }

  def rewrite(d: Deforest): Program = {
    // given Map[ExprId, ExprId] = d.fusionMatch.map { (p, cs) => p -> cs.head }.toMap
    given Deforest = d
    given Map[ExprId, ExprId] = FusionStrategy(d).afterRemoveMultipleMatch._1.map { (ctor, dtors) =>
      assert(dtors.size == 1 && dtors.head.isInstanceOf[Destruct])
      ctor.euid -> dtors.head.euid
    }
    Program(
      this.defAndExpr._2.map { e => given Option[Ident] = None; R(e.rewriteFusion(using Map.empty)) }
      ::: this.defAndExpr._1.map { (id, body) =>
        given Option[Ident] = Some(id)
        L(ProgDef(id, body.rewriteFusion(using Map.empty)))
      }.toList
    )
  }
}