package mlscript
package lumberhack

import scala.collection.mutable
import mlscript.utils.*, shorthands.*
import mlscript.Function as FunctionTerm
import Expr.*
import scala.collection.mutable.Map as MutMap
import scala.collection.mutable.Set as MutSet
import lumberhack.utils.*
import ConsStratEnum.*
import ProdStratEnum.*

type RewriteCtx = Map[Ident, Ident]
class FusionStrategy(d: Deforest) {
  val (upperBounds, lowerBounds) = d.upperBounds.map{(id, ls) => (id, ls.map(_._2))}.toMap -> d.lowerBounds.map{(id, ls) => (id, ls.map(_._2))}.toMap
  
  val involvedDtors = d.fusionMatch.values.flatten.toSet
  val involvedCtors = d.fusionMatch.keySet

  private def findToEndCons(v: ConsVar, cache: Set[ConsVar]): Set[ConsVar] = {
    if upperBounds.get(v.uid) match { case None => true; case Some(v) => v.isEmpty } then Set(v)
    else upperBounds(v.uid).foldLeft(Set()){(acc, ub) => ub.s match {
      case cv: ConsVar if cache(cv) => acc
      case cv: ConsVar => acc ++ findToEndCons(cv, cache + cv)
      case _ => acc
    }}
  }
  private def findToEndProd(v: ProdVar): Set[ProdVar] = {
    def find(vuid: TypeVarId, cache: Set[TypeVarId]): Set[TypeVarId] = {
      // if lowerBounds.get(vuid).nonEmpty then
      //   Set()
      // else
      val realLowerBounds = upperBounds.filter { (_, ubs) => ubs.exists { ub =>
        ub.s match {
          case ConsVar(uid, name) => uid == vuid && !cache(uid)
          case _ => false
        }
      }}.keySet
      // ++ (lowerBounds.getOrElse(vuid, Nil).flatMap { _.s match {
      //   case ProdVar(uid, _) => Some(uid)
      //   case _ => None
      // }})
      // assert(realLowerBounds.isEmpty)
      (if realLowerBounds.isEmpty then Set(vuid) else realLowerBounds.flatMap(b => find(b, cache + vuid)))
        .filter(lowerBounds.get(_).isEmpty)
    }
    find(v.uid, Set()).map(id => ProdVar(id, d.varsName(id))()(using d.noExprId))
    // if lowerBounds.get(v.uid) match { case None => true; case Some(v) => v.isEmpty } then Set(v)
    // else lowerBounds(v.uid).foldLeft(Set()){(acc, lb) => lb.s match {
    //   // case pv: ProdVar if cache(pv) => acc
    //   // case pv: ProdVar => acc ++ findToEndProd(pv, cache + pv)
    //   case pv: ProdVar => ??? // lowerBounds cannot have any prodvar
    //   case _ => acc
    // }}
  }


  val ctorFinalDestinations: Map[MkCtor, Set[ConsStratEnum]] = {
    val res = MutMap.empty[MkCtor, Set[ConsStratEnum]].withDefaultValue(Set())
    d.ctorDestinations.foreach { (ctor, dests) => if involvedCtors(ctor.euid) then
      dests.foreach { dest => dest match {
        case c: (NoCons | Destruct) => res += ctor -> (res(ctor) + c)
        // case cv: ConsVar => res += ctor -> (res(ctor) ++ findToEndCons(cv, Set(cv)))
        case cv: ConsVar => ()
        // case cv: ConsVar => if d.upperBounds(cv.uid).isEmpty then res += ctor -> (res(ctor) + cv)
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
        // case pv: ProdVar => res += dtor -> (res(dtor) ++ findToEndProd(pv))
        case pv: ProdVar => ()
        // case pv: ProdVar => if d.lowerBounds(pv.uid).isEmpty then res += dtor -> (res(dtor) + pv)
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
    // remove those dtors with primitive ctors flowing in
    val toRmDtor = dtorFinalSources.filter(_._2.exists(p => p match {
      case _: MkCtor => false
      case _ => true
    })).keySet.asInstanceOf[Set[ConsStratEnum]]
    val res = removeDtor(ctorFinalDestinations, dtorFinalSources, toRmDtor)

    // remove those ctors with primitive dtors as destinations
    val toRmCtor = res._1.filter(_._2.exists {
      case _: Destruct => false
      case _ => true
    }).keySet.asInstanceOf[Set[ProdStratEnum]]
    val res1 = removeCtor(res._1, res._2, toRmCtor)

    // TODO: also needs to remember the merging, and change its subsequent calls
    // val ctorDests = res._1
    // val allDtors = ctorDests.values.flatten.filter(d => d.isInstanceOf[Destruct]).map(dtor => d.exprs(dtor.euid))
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
    
    // remove those ctors with multiple dtors
    val toRmCtor1 = res1._1.filter(_._2.size > 1).keySet.asInstanceOf[Set[ProdStratEnum]]
    removeCtor(res1._1, res1._2, toRmCtor1)
  }

  // assume that there is already no multiple match clashes, can be more efficient
  val afterRemoveRecursiveStrategies = {
    
    val ctorsInExprCache = MutMap.empty[ExprId, Set[MkCtor]]
    def getCtorsInExpr(e: Expr): Set[MkCtor] = {
      ctorsInExprCache.getOrElseUpdate(e.uid, {
        e match {
          case Const(lit: Lit) => Set.empty
          case Ref(id: Ident) => Set.empty
          case Call(lhs: Expr, rhs: Expr) => getCtorsInExpr(lhs) ++ getCtorsInExpr(rhs)
          case ce@Ctor(name: Var, args: Ls[Expr]) => d.ctorExprToType.get(ce.uid).toSet
          case LetIn(id: Ident, rhs: Expr, body: Expr) => getCtorsInExpr(rhs) ++ getCtorsInExpr(body)
          case me@Match(scrut: Expr, arms: Ls[(Var, Ls[Ident], Expr)]) => {
            val dtorType = d.dtorExprToType(me.uid)
            afterRemoveMultipleMatch._2.get(dtorType) match {
              // if there is a match, only the scrut will be possibly exposed to further fusion possibilities
              case Some(_) => getCtorsInExpr(scrut)
              // case Some(ctors) => getCtorsInExpr(scrut) ++ (ctors.flatMap { ctor =>
              //   val alsoCheckedCtor = ctor.asInstanceOf[MkCtor]
              //   getCtorsInExpr(arms.find(_._1 == alsoCheckedCtor.ctor).get._3)
              // })
              case None => getCtorsInExpr(scrut) ++ arms.flatMap(a => getCtorsInExpr(a._3))
            }
          }
          case IfThenElse(scrut: Expr, thenn: Expr, elze: Expr) => getCtorsInExpr(scrut) ++ getCtorsInExpr(thenn) ++ getCtorsInExpr(elze)
          case Function(param: Ident, body: Expr) => getCtorsInExpr(body)
          case Sequence(fst: Expr, snd: Expr) => getCtorsInExpr(fst) ++ getCtorsInExpr(snd)
        }
      })
    }

    def getCtorsInStrategy(ctor: MkCtor, dtor: Destruct): Set[MkCtor] = {
      val res = d.exprs(dtor.euid).asInstanceOf[Expr.Match].arms.find(_._1 == ctor.ctor).map { m =>
        getCtorsInExpr(m._3)
      }.getOrElse(Set())
      // getCtorsInExpr(matchingArm._3)
      res
    }

    def findCycle(ctor: MkCtor, dtor: Destruct): Set[MkCtor] = d.Trace.trace("findCycle: [" + ctor.pp(using InitPpConfig) + " ---> " + dtor.pp(using InitPpConfig) + "]"){
      val cache = MutSet(ctor)

      def go(strats: Set[(MkCtor, ConsStratEnum)]): Set[MkCtor] = {
        val res = strats.flatMap((c, d) => getCtorsInStrategy(c, d.asInstanceOf[Destruct]))
        val retained = res.flatMap(c => afterRemoveMultipleMatch._1.get(c).flatMap(d => {
          // since it's aleaday after strategy clash elimination
          assert(d.size == 1)
          Some(c -> d.head)
        }))
        val cycled = retained.filter(c => !cache.add(c._1))
        if retained.isEmpty then Set.empty else
          if cycled.nonEmpty then cycled.map(_._1) else go(retained)
      }
      go(Set(ctor -> dtor))
    }(s => "remove: " + s.map(_.pp(using InitPpConfig)).mkString(";;"))

    val toRmCtor = afterRemoveMultipleMatch._1.flatMap { (c, ds) =>
      assert(ds.size == 1)
      findCycle(c, ds.head.asInstanceOf[Destruct])
    }
    removeCtor(afterRemoveMultipleMatch._1, afterRemoveMultipleMatch._2, toRmCtor.toSet)
  }

  val afterRemoveIdpatternAndWildcardPattern = {
    val toRmCtor = afterRemoveRecursiveStrategies._1.filterNot { case (ctor, dtors) =>
      assert(dtors.size == 1)
      dtors.forall(ds => ds.asInstanceOf[ConsStratEnum.Destruct].destrs.exists(d => d.ctor == ctor.ctor))
    }.keys
    removeCtor(afterRemoveRecursiveStrategies._1, afterRemoveRecursiveStrategies._2, toRmCtor.toSet)
  }
  
  val finallyFilteredStrategies = afterRemoveIdpatternAndWildcardPattern
  val scopeExtrusionInfo: Map[ExprId, List[Ident]] = {
    // val dtorExprs = finallyFilteredStrategies._2.keys.flatMap { de =>
    //   val expr = d.exprs(de.euid).asInstanceOf[Expr.Match]
    //   expr.inDef.map(expr -> d.prgm.get.defAndExpr._1(_))
    // }
    // dtorExprs.map { (me, _) =>
    //   me.uid -> me.arms.flatMap { (_, ids, body) =>
    //     body.outOfScopeIds(using (ids ++ d.prgm.get.defAndExpr._1.keys).toSet)
    //   }
    // }.toMap
    finallyFilteredStrategies._2.keys.map { de =>
      val expr = d.exprs(de.euid).asInstanceOf[Expr.Match]
      expr.uid -> (expr.arms.flatMap { (_, ids, body) =>
        body.outOfScopeIds(using (ids ++ d.prgm.get.defAndExpr._1.keys).toSet)
      }.distinct)
    }.toMap
  }
}



trait ExprRewrite { this: Expr =>
  // ctx should initially contain the keywords and the ids of original function definitions
  def rewriteExpand(using ctx: RewriteCtx, currentPath: Path, newd: Deforest, pathToIdent: Map[Path, Ident], refMap: Map[Expr.Ref, Expr.Ref], inDef: Option[Ident]): Expr = {
    this match {
      case Const(lit) => Const(lit)
      case Call(lhs, rhs) => Call(lhs.rewriteExpand, rhs.rewriteExpand)
      case Sequence(f, s) => Sequence(f.rewriteExpand, s.rewriteExpand)
      case Ctor(name, args) => Ctor(name, args.map(_.rewriteExpand))
      case LetIn(id, rhs, body) =>
        val newId = id.copyToNewDeforest
        LetIn(newId, rhs.rewriteExpand(using ctx + (id -> newId)), body.rewriteExpand(using ctx + (id -> newId)))
      case Match(scrut, arms) =>
        Match(scrut.rewriteExpand, arms.map {(ctor, args, body) =>
          val newArgs = args.map(a => a -> a.copyToNewDeforest)
          given RewriteCtx = ctx ++ newArgs
          (ctor, newArgs.map(_._2), body.rewriteExpand)
        })
      case IfThenElse(s, t, e) => IfThenElse(s.rewriteExpand, t.rewriteExpand, e.rewriteExpand)
      case Function(param, body) =>
        val newParam = param.copyToNewDeforest
        Function(newParam, body.rewriteExpand(using ctx + (param -> newParam)))
      case ref@Ref(id) => if id.isDef then { // a function def
        pathToIdent.get(currentPath ::: refMap(ref).toPath()) match {
          case Some(id) => Ref(id)            // either a knot or a new def
          case None => Ref(ctx(id)) // hopeless to continue, should use the original definition
        } 
      } else Ref(ctx(id)) // a parameter or match binder or builtin keyword
    } 
  }

  def rewriteFusion(
    using ctx: RewriteCtx,
    fusionMatch: Map[ExprId, ExprId],
    newd: Deforest,
    inDef: Option[Ident],
    scopeExtrusionInfo: Map[ExprId, List[Ident]]
  ): Expr = {
    this match {
      case Const(lit) => Const(lit)
      case Call(lhs, rhs) => Call(lhs.rewriteFusion, rhs.rewriteFusion)
      case Sequence(f, s) => Sequence(f.rewriteFusion, s.rewriteFusion)
      case LetIn(id, rhs, body) =>
        val newId = id.copyToNewDeforest
        val newCtx = ctx + (id -> newId)
        LetIn(newId, rhs.rewriteFusion(using newCtx), body.rewriteFusion(using newCtx))
      case IfThenElse(s, t, e) => IfThenElse(s.rewriteFusion, t.rewriteFusion, e.rewriteFusion)
      case Function(param, body) =>
        val newParamId = param.copyToNewDeforest
        val newCtx = ctx + (param -> newParamId)
        Function(newParamId, body.rewriteFusion(using newCtx))
      case Ref(id) => Ref(ctx.getOrElse(id, id))
      case Match(scrut, arms) => {
        if fusionMatch.valuesIterator.contains(this.uid) then {
          val extrudedIds = scopeExtrusionInfo(this.uid)
          // val extrudedIds = scopeExtrusionInfo.getOrElse(this.uid, Nil)
          extrudedIds.foldLeft(scrut.rewriteFusion){
            (acc, id) => Call(acc, Ref(ctx.getOrElse(id, id)))
          }
        } else {
          Match(scrut.rewriteFusion, arms.map{(n, args, body) => (n, args, body.rewriteFusion)})
        }
      }
      case Ctor(name, args) => fusionMatch.get(this.uid).map { matchId =>
        val matchArm = newd.exprs(matchId).asInstanceOf[Match].arms.find(_._1 == name).get
        val newIds = matchArm._2.map(i => i -> i.copyToNewDeforest)
        val newCtx = ctx ++ newIds.toMap
        
        val extrudedIds = scopeExtrusionInfo(matchId).map(original =>
          newCtx.getOrElse(original, original) -> Ref(original.copyToNewDeforest)
          // original -> Ref(original.copyToNewDeforest)
        ).reverse
        // val extrudedIds =
        //   scopeExtrusionInfo.getOrElse(matchId, Nil).map(original => original -> Ref(original.copyToNewDeforest)).reverse
        val innerAfterExtrusionHandling =
          matchArm._3.rewriteFusion(using newCtx).subst(using extrudedIds.toMap)
        val inner = extrudedIds.foldLeft(innerAfterExtrusionHandling){ (acc, newId) =>
          Function(newId._2.id, acc)
        }
        (newIds zip args).foldRight(inner){(t_i, acc) => 
          LetIn(t_i._1._2, t_i._2.rewriteFusion, acc)
        }
      }.orElse(Some(Ctor(name, args.map(_.rewriteFusion)))).get
    }
  }

  def outOfScopeIdsSet(using set: Set[Ident]): Set[Ident] = this match {
    case Const(lit: Lit) => Set.empty
    case Ref(id: Ident) if Deforest.lumberhackKeywords(id.tree.name) => Set.empty
    case Ref(id: Ident) => if set(id) then Set.empty else Set(id)
    case Call(lhs: Expr, rhs: Expr) => lhs.outOfScopeIdsSet ++ rhs.outOfScopeIdsSet
    case Ctor(name: Var, args: Ls[Expr]) => args.flatMap(_.outOfScopeIdsSet).toSet
    case LetIn(id: Ident, rhs: Expr, body: Expr) => rhs.outOfScopeIdsSet(using set + id) ++ body.outOfScopeIdsSet(using set + id)
    case Match(scrut: Expr, arms: Ls[(Var, Ls[Ident], Expr)]) =>
      scrut.outOfScopeIdsSet ++ (arms.flatMap { (_, newIds, body) => body.outOfScopeIdsSet(using set ++ newIds) })
    case IfThenElse(scrut: Expr, thenn: Expr, elze: Expr) =>
      scrut.outOfScopeIdsSet ++ thenn.outOfScopeIdsSet ++ elze.outOfScopeIdsSet
    case Function(param: Ident, body: Expr) => body.outOfScopeIdsSet(using set + param)
    case Sequence(fst: Expr, snd: Expr) => fst.outOfScopeIdsSet ++ snd.outOfScopeIdsSet
  }
  def outOfScopeIds(using set: Set[Ident]): List[Ident] = {
    this.outOfScopeIdsSet.toList.sortBy(_.uid.asInstanceOf[Int])
  }
  def substId(using ctx: RewriteCtx, d: Deforest, inDef: Option[Ident]): Expr = this match {
    case c: Const => c
    case Ref(id) => Ref(ctx.getOrElse(id, id))
    case Call(f, p) => Call(f.substId, p.substId)
    case Ctor(n, args) => Ctor(n, args.map(_.substId))
    case LetIn(id, value, body) => LetIn(id, value.substId, body.substId)
    case Match(scrut, arms) => Match(scrut.substId, arms.map((n, args, body) => (n, args, body.substId)))
    case IfThenElse(cond, thenn, elze) => IfThenElse(cond.substId, thenn.substId, elze.substId)
    case Sequence(f, s) => Sequence(f.substId, s.substId)
    case Function(p, body) => Function(p, body.substId(using ctx.filterKeys(_ != p).toMap))
  }
  def popOutLambdas(using
    newd: Deforest,
    inDef: Option[Ident],
  ): Expr = {
    def mergeFunctionsInDifferentBranches(fs: List[Function]): List[Ident] -> List[Expr] = {
      val fsWithParamOut = fs.map(_.takeParamsOut)
      val minLength = fsWithParamOut.map(_._1.length).min
      val popOutParamIds = (0 until minLength).map(i => newd.nextIdent(false, Var(s"_lh_popOutId_$i")))
      val newBodies = fsWithParamOut.map { case (ps, body) =>
        val psSplit = ps.splitAt(minLength)
        val mapping = psSplit._1.zip(popOutParamIds).toMap
        val newBody = body.substId(using mapping)
        psSplit._2.foldRight(newBody)(Function(_, _))
      }
      popOutParamIds.toList -> newBodies
    }
    this match {
      case e: (Call | Const | Ref | Ctor) => e
      case Function(param, body) => Function(param, body.popOutLambdas)
      case LetIn(id, v, body) => body.popOutLambdas match {
        case f: Function => {
          val (allArg, fBody) = f.takeParamsOut
          allArg.foldRight[Expr](LetIn(id, v, fBody))(Function(_, _))
        }
        case _ => this
      }
      case Sequence(fst, snd) => snd.popOutLambdas match {
        case f: Function => {
          val (allArg, fBody) = f.takeParamsOut
          allArg.foldRight[Expr](Sequence(fst, fBody))(Function(_, _))
        }
        case _ => this
      }
      case IfThenElse(b, t, e) => (t.popOutLambdas, e.popOutLambdas) match {
        case (f1: Function, f2: Function) => {
          val mergeRes = mergeFunctionsInDifferentBranches(f1 :: f2 :: Nil)
          mergeRes._1.foldRight[Expr](IfThenElse(b, mergeRes._2(0), mergeRes._2(1)))(Function(_, _))
        }
        case (t, e) => IfThenElse(b, t, e)
      }
      case Match(s, arms) => {
        val armsPoppedOut = arms.map(_._3.popOutLambdas)
        if armsPoppedOut.forall(_.isInstanceOf[Function]) then
          val mergeRes = mergeFunctionsInDifferentBranches(armsPoppedOut.asInstanceOf[List[Function]])
          val newMatchArms = arms.zip(mergeRes._2).map { case (ctor, vars, _) -> newBody =>
            (ctor, vars, newBody)
          }
          mergeRes._1.foldRight[Expr](Match(s, newMatchArms))(Function(_, _))
        else
          this
      }
    }  
  }
}

trait ProgramRewrite { this: Program =>
  def copyDefsToNewDeforest(using newd: Deforest): Program -> Map[Expr.Ref, Expr.Ref] -> RewriteCtx = {
    val refMaps = scala.collection.mutable.Map.empty[Expr.Ref, Expr.Ref]
    def copyExpr(e: Expr)(using ctx: RewriteCtx, newd: Deforest, inDef: Option[Ident]): Expr = e match {
      case Expr.Const(lit: Lit) => Expr.Const(lit)
      case r@Expr.Ref(id: Ident) =>
        val res = Expr.Ref(ctx(id))
        assert(!refMaps.contains(res))
        refMaps += (res -> r)
        res
      case Expr.Call(lhs: Expr, rhs: Expr) => Expr.Call(copyExpr(lhs), copyExpr(rhs))
      case Expr.Sequence(fst: Expr, snd: Expr) => Expr.Sequence(copyExpr(fst), copyExpr(snd))
      case Expr.Ctor(name: Var, args: Ls[Expr]) => Expr.Ctor(name, args.map(copyExpr))
      case Expr.LetIn(id: Ident, rhs: Expr, body: Expr) =>
        val newId = id.copyToNewDeforest
        Expr.LetIn(newId, copyExpr(rhs)(using ctx + (id -> newId)), copyExpr(body)(using ctx + (id -> newId)))
      case Expr.Match(scrut: Expr, arms: Ls[(Var, Ls[Ident], Expr)]) =>
        Expr.Match(copyExpr(scrut), arms.map {(ctor, args, body) =>
          val newArgs = args.map(a => a -> a.copyToNewDeforest)
          given RewriteCtx = ctx ++ newArgs
          (ctor, newArgs.map(_._2), copyExpr(body))
        })
      case Expr.IfThenElse(scrut: Expr, thenn: Expr, elze: Expr) => Expr.IfThenElse(copyExpr(scrut), copyExpr(thenn), copyExpr(elze))
      case Expr.Function(param: Ident, body: Expr) =>
        val newParam = param.copyToNewDeforest
        Expr.Function(newParam, copyExpr(body)(using ctx + (param -> newParam)))
    }
    
    given ctx: RewriteCtx = Deforest.lumberhackKeywords.map {
      n => {
        // new and old identifier ids for the primitives should be the same
        val newAndOldId = newd.nextIdent(false, Var(n))
        newAndOldId -> newAndOldId
      }
    } ++ this.defAndExpr._1.keySet.map(id => id -> id.copyToNewDeforest) |> (_.toMap)

    Program(
      this.defAndExpr._2.map { e => given Option[Ident] = None; R(copyExpr(e)) }
      ::: this.defAndExpr._1.map { (id, body) =>
        given Option[Ident] = Some(ctx(id))
        L(ProgDef(ctx(id), copyExpr(body)))
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
          case PathElem.Normal(ref) => initContext(ref.id)
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
    val fusionStrategy = FusionStrategy(d)
    given Deforest = d
    given Map[ExprId, ExprId] = fusionStrategy.finallyFilteredStrategies._1.map { (ctor, dtors) =>
      assert(dtors.size == 1 && dtors.head.isInstanceOf[Destruct])
      ctor.euid -> dtors.head.euid
    }
    // given Map[ExprId, List[Ident]] = Map.empty.withDefaultValue(Nil)
    given Map[ExprId, List[Ident]] = fusionStrategy.scopeExtrusionInfo
    Program(
      this.defAndExpr._2.map { e => given Option[Ident] = None; R(e.rewriteFusion(using Map.empty)) }
      ::: this.defAndExpr._1.map { (id, body) =>
        given Option[Ident] = Some(id)
        L(ProgDef(id, body.rewriteFusion(using Map.empty)))
      }.toList
    )
  }

  def popOutLambdas: Program -> Deforest = {
    given newd: Deforest = Deforest(false)
    val copied -> _ -> _ = this.copyDefsToNewDeforest
    newd(copied)
    val (newProg, finalD) =
      copied.expandedWithNewDeforest(CallTree.callTreeUsingNonSplitKnot(newd))
    Program(
      newProg.defAndExpr._2.map { e => given Option[Ident] = None; R(e.popOutLambdas) }
      ::: newProg.defAndExpr._1.map { case (id, body) =>
        given Option[Ident] = Some(id)
        L(ProgDef(id, body.popOutLambdas))
      }.toList
    ) -> finalD
  }
}