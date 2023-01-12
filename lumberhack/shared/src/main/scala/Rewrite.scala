package mlscript
package lumberhack

import scala.collection.mutable
import mlscript.utils.*, shorthands.*
import mlscript.Function as FunctionTerm
import Expr.*
import scala.collection.mutable.Map as MutMap

class Rewrite(p: Program, val d: Deforest,
  defInstancesMap: Map[(Path, Path), Set[ExprId -> ExprId]],
  defMap: Map[Path, Path],
) {
  // val defInstances = mutable.Map.empty[Path, Set[ExprId -> ExprId]]
  // val (pdefs, exprs) = p.contents.partition(c => c.isLeft)
  // val pdefNamesToBodies = pdefs.collect{case L(pd) => pd.id -> pd.body}.toMap
  // val csToMs: Map[(Path, ExprId), (Path, Match)] = {
  //   val res = mutable.Map.empty[(Path, ExprId), (Path, Match)]
  //   defInstancesMap foreach { case ((pp, cp), exprMap) =>
  //     exprMap foreach { case (ctor, matchh) => res.updateWith(pp, ctor) {
  //       case S(v) if v._2.uid == matchh => S(v)
  //       case S(v) =>
  //         lastWords(
  //           s"\n${pprint2(pp).plainText} to `${d.exprs(ctor).pp}` \n" +
  //           s"\talready has ${pprint2(v._1).plainText} to `${v._2.pp}` \n" +
  //           s"\tbut here comes another match ${pprint2(cp).plainText} to `${d.exprs(matchh).pp}`"
  //         )
  //       case N => S(cp, d.exprs(matchh) match { case m: Match => m; case _ => die })
  //     } }
  //   }
  //   res.toMap
  // }
  // val msToCs: Map[(Path, ExprId), (Path, Ctor)] = {
  //   val res = mutable.Map.empty[(Path, ExprId), (Path, Ctor)]
  //   defInstancesMap foreach { case ((pp, cp), exprMap) =>
  //     exprMap foreach { case (ctor, matchh) => res.updateWith(cp, matchh) {
  //       case S(a) => {
  //         d.Trace.log(a._2.pp(using level = 0, showUids = true) +
  //           " ||uses the same match as|| " +
  //           d.exprs(ctor).pp(using level = 0, showUids = true)
  //         )
  //         S(a)
  //       }
  //       case N => S(pp, d.exprs(ctor) match { case c: Ctor => c; case _ => die })
  //     } }
  //   }
  //   res.toMap
  // }
  // val newDefs = MutMap.empty[Path, L[ProgDef]]
  // val defIds = MutMap.empty[Path, Ident]
  // val id2Path = MutMap.empty[String, Path]
  // val newExprs = exprs.collect{case R(e) => R(rewriteExpr(e)(using d, Nil -> Nil))}

  // def genId(p: Path)(using d: Deforest): Ident =
  //   d.nextIdent(isDef=true, Var(p.map(r => s"${r._1.id.tree}'${r._1.id.uid}'${r._1.uid}").mkString("_")))

  // def writeInstance(di: Path, root: Path): Ident = {
  //   defIds.get(di) match {
  //     case Some(id) => id
  //     case None => {
  //       val id = genId(root ::: di)(using d)
  //       defIds += (di -> id)
  //       id2Path += ((id.tree.name) -> di)
  //       newDefs.get(di) match {
  //         case Some(_) => ???
  //         case None => {
  //           newDefs += (di -> (if (di.length - di.distinct.length) < 10 then {
  //             val pdef = di.last._1.id
  //             val oldBody = pdefNamesToBodies(pdef)
  //             val newBody = rewriteExpr(oldBody)(using d, di -> root)
  //             L(ProgDef(id, newBody))
  //           } else {
  //             val newBody = Const(StrLit("RECURSE_TOO_LONG"))(using d)
  //             L(ProgDef(id, newBody))
  //           }))
  //         }
  //       }
  //       id
  //     }
  //   }
  // }

  // def findMatchWithoutPrefix(longest: Path)(using map: Map[(Path, ExprId), (Path, Match | Ctor)], uid: Uid[Expr]): Ls[Path] = {
  //   val rest = longest match {
  //     case Nil => Nil
  //     case _ :: t => findMatchWithoutPrefix(t)
  //   }
  //   if map.isDefinedAt(longest -> uid) then longest :: rest else rest
  // }
  
  // def rewriteExpr(e: Expr)(using d: Deforest, pathAndRoot: Path -> Path): Expr = {
  //   val p = pathAndRoot._1
  //   e match {
  //     case Ctor(name, args) => Ctor(name, args.map(rewriteExpr))
  //     case Match(scrut, arms) => Match(rewriteExpr(scrut), arms.map{case (v, args, body) => (v, args, rewriteExpr(body))})
  //     case r@Ref(id) => if id.isDef then {
  //       val newPath = p :+ (r -> r.uid)
  //       Ref(writeInstance(defMap.getOrElse(newPath, newPath), pathAndRoot._2))
  //     } else { r }
  //     case Const(lit) => e
  //     case Call(lhs, rhs) => Call(rewriteExpr(lhs), rewriteExpr(rhs))
  //     case LetIn(id, rhs, body) => LetIn(id, rewriteExpr(rhs), rewriteExpr(body))
  //     case Function(param, body) => Function(param, rewriteExpr(body))
  //     case IfThenElse(scrut, thenn, elze) => IfThenElse(rewriteExpr(scrut), rewriteExpr(thenn), rewriteExpr(elze))
  //   }
  // }
  

  // def rewrite: Program = {
  //   given Deforest = d;
    
  //   defInstancesMap.foreach { case ((p1, p2), s) =>
  //     defInstances.updateWith(p1){ case S(prev) => S(prev ++ s); case N => S(s) }
  //     defInstances.updateWith(p2){ case S(prev) => S(prev ++ s); case N => S(s) }
  //   }

  //   Program(newDefs.values.toList ++ newExprs)
  // }
}
