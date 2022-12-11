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
  
  /*
   * Invariant about the keys of defInstances:
   *   Each LHS should be an Expr.Ctor
   *   Each RHS should be an Expr.Match
   *   Several distinct ctor LHS will often be paired with the same match RHS
   *   Each RHS can be associated with at most one LHS per match branch/arm (a LHS for the corresponding matched ctor)
   *   Each LHS can be associated with at most one RHS, and that RHS will contain a match arm/branch corresponding to it
   * 
   *  Handling of def references:
   *    This function should rewrite Ref occurrences referring to defs
   *      to the new defs created for the corresponding reference paths.
   *    Moreover, `defMap` will contain a mapping for paths that are NOT keys in `defInstances`
   *      (so, paths that will NOT be associated wth a new def in the final program)
   *      to paths that ARE keys in `defInstances`, to which they should be rewritten
   *    For example, consider the original program (notation `n:x` means "reference x with uid n"):
   *      def a = /* a impl */ ... 1:b ...
   *      def b = /* b impl */ ... 2:b ... // notice the recursive occurrence 2:b
   *      3:a + 4:a
   *    together with:
   *      defInstances = Map(
   *        3:a -> /* a impl */ ..., 3:a/1:b -> /* b impl */ ..., 3:a/1:b/2:b -> /* b impl */ ...,
   *        4:a -> /* a impl */ ..., 4:a/1:b -> /* b impl */ ...
   *      )
   *    and
   *      defMap = Map(
   *        3:a/1:b/2:b/2:b -> 4:a/1:b,
   *        4:a/1:b/2:b -> 4:a/1:b
   *      )
   *    The rewritten program should look like:
   *      def 3:a         = /* a impl */ ... 3:a/1:b ...
   *      def 4:a         = /* a impl */ ... 4:a/1:b ...
   *      def 3:a/1:b     = /* b impl */ ... 3:a/1:b/2:b ...
   *      def 3:a/1:b/2:b = /* b impl */ ... 4:a/1:b ...
   *      def 4:a/1:b     = /* b impl */ ... 4:a/1:b ...
   *      3:a + 4:a
  */
  val defInstances = mutable.Map.empty[Path, Set[ExprId -> ExprId]]
  val (pdefs, exprs) = p.contents.partition(c => c.isLeft)
  val pdefNamesToBodies = pdefs.collect{case L(pd) => pd.id -> pd.body}.toMap
  val csToMs: Map[(Path, ExprId), (Path, Match)] = {
    val res = mutable.Map.empty[(Path, ExprId), (Path, Match)]
    defInstancesMap foreach { case ((pp, cp), exprMap) =>
      exprMap foreach { case (ctor, matchh) => res.updateWith(pp, ctor) {
        case S(v) if v._2.uid == matchh => S(v)
        case S(v) =>
          lastWords(
            s"\n${pprint2(pp).plainText} to `${d.exprs(ctor).pp}` \n" +
            s"\talready has ${pprint2(v._1).plainText} to `${v._2.pp}` \n" +
            s"\tbut here comes another match ${pprint2(cp).plainText} to `${d.exprs(matchh).pp}`"
          )
        case N => S(cp, d.exprs(matchh) match { case m: Match => m; case _ => die })
      } }
    }
    res.toMap
  }
  val msToCs: Map[(Path, ExprId), (Path, Ctor)] = {
    val res = mutable.Map.empty[(Path, ExprId), (Path, Ctor)]
    defInstancesMap foreach { case ((pp, cp), exprMap) =>
      exprMap foreach { case (ctor, matchh) => res.updateWith(cp, matchh) {
        case S(a) => {
          d.log(a._2.pp(using level = 0, showUids = true) +
            " ||uses the same match as|| " +
            d.exprs(ctor).pp(using level = 0, showUids = true)
          )
          S(a)
        }
        case N => S(pp, d.exprs(ctor) match { case c: Ctor => c; case _ => die })
      } }
    }
    res.toMap
  }
  val newDefs = MutMap.empty[Path, L[ProgDef]]
  val defIds = MutMap.empty[Path, Ident]
  val id2Path = MutMap.empty[String, Path]
  val newExprs = exprs.collect{case R(e) => R(rewriteExpr(e)(using d, Nil -> Nil))}

  def genId(p: Path)(using d: Deforest): Ident =
    d.nextIdent(isDef=true, Var(p.map(r => s"${r._1.id.tree}'${r._1.id.uid}'${r._1.uid}").mkString("_")))

  def writeInstance(di: Path, root: Path): Ident = {
    defIds.get(di) match {
      case Some(id) => id
      case None => {
        val id = genId(root ::: di)(using d)
        defIds += (di -> id)
        id2Path += ((id.tree.name) -> di)
        newDefs.get(di) match {
          case Some(_) => ???
          case None => {
            newDefs += (di -> (if (di.length - di.distinct.length) < 10 then {
              val pdef = di.last._1.id
              val oldBody = pdefNamesToBodies(pdef)
              val newBody = rewriteExpr(oldBody)(using d, di -> root)
              L(ProgDef(id, newBody))
            } else {
              val newBody = Const(StrLit("RECURSE_TOO_LONG"))(using d)
              L(ProgDef(id, newBody))
            }))
          }
        }
        id
      }
    }
  }

  def findMatchWithoutPrefix(longest: Path)(using map: Map[(Path, ExprId), (Path, Match | Ctor)], uid: Uid[Expr]): Ls[Path] = {
    val rest = longest match {
      case Nil => Nil
      case _ :: t => findMatchWithoutPrefix(t)
    }
    if map.isDefinedAt(longest -> uid) then longest :: rest else rest
  }
  
  def rewriteExpr(e: Expr)(using d: Deforest, pathAndRoot: Path -> Path): Expr = {
    val p = pathAndRoot._1
    e match {
      // case Ctor(name, args) => Ctor(name, args.map(rewriteExpr))
      // case Match(scrut, arms) => Match(rewriteExpr(scrut), arms.map{case (v, args, body) => (v, args, rewriteExpr(body))})

      // TODO: what about the search for recursive things?
      case Ctor(name, args) => {
        val suffix = findMatchWithoutPrefix(p)(using csToMs, e.uid)
        suffix match {
          case Nil => Ctor(name, args.map(rewriteExpr))
          case longest :: t => {
            val root = p.slice(0, p.length - longest.length)
            if t.length > 0 then println(s"************MORE THAN ONE MATCH: ${t}************")
            val matchExpr = csToMs(longest -> e.uid)
            val arm = matchExpr._2.arms.find(a => a._1 === name).get
            // NOTE: the matching case expr *should* share the same root
            // by the (assumed) property of the path generated by the constraint solver
            (arm._2 zip args).foldRight(rewriteExpr(arm._3)(using d, matchExpr._1 -> root)){(t_i, acc) => 
              LetIn(t_i._1, rewriteExpr(t_i._2), acc)
            }
          }
        }
      }

      case Match(scrut, arms) => {
        // this search path should also be using the suffix thing
        val suffix = findMatchWithoutPrefix(p)(using msToCs, e.uid)
        suffix match {
          case Nil => Match(rewriteExpr(scrut), arms.map{case (v, args, body) => (v, args, rewriteExpr(body))})
          case longest :: t => {
            if t.length > 0 then println(s"************MORE THAN ONE MATCH:\n${suffix.map(pprint2.apply(_)).mkString("\n")}\n************")
            if msToCs.contains(longest -> e.uid) then rewriteExpr(scrut) else Match(rewriteExpr(scrut), arms.map{case (v, args, body) => (v, args, rewriteExpr(body))})
          }
        }
      }

      case r@Ref(id) => if id.isDef then {
        val newPath = p :+ (r -> r.uid)
        // TODO: what about the search for recursive things?
        Ref(writeInstance(defMap.getOrElse(newPath, newPath), pathAndRoot._2))
      } else { r }
      
      case Const(lit) => e
      case Call(lhs, rhs) => Call(rewriteExpr(lhs), rewriteExpr(rhs))
      case LetIn(id, rhs, body) => LetIn(id, rewriteExpr(rhs), rewriteExpr(body))
      case Function(param, body) => Function(param, rewriteExpr(body))
      case IfThenElse(scrut, thenn, elze) => IfThenElse(rewriteExpr(scrut), rewriteExpr(thenn), rewriteExpr(elze))
    }
  }
  

  def rewrite: Program = {
    given Deforest = d;
    
    defInstancesMap.foreach { case ((p1, p2), s) =>
      defInstances.updateWith(p1){ case S(prev) => S(prev ++ s); case N => S(s) }
      defInstances.updateWith(p2){ case S(prev) => S(prev ++ s); case N => S(s) }
    }
    // Checking some of the invariants:
    defInstances.valuesIterator.foreach { s =>
      s.iterator.map(t => d.exprs(t._1) -> d.exprs(t._2)).foreach {
        case (l: Ctor, r: Match) =>
          assert(r.arms.exists(a => a._1 === l.name))
        case _ => die
      }
    }
    // TODO: assertions might not be perfectly valid?
    // defInstances.keysIterator.foreach(di => assert(!defMap.contains(di)))
    // defMap.valuesIterator.foreach(d => assert(defInstances.contains(d)))
    Program(pdefs ++ newDefs.values ++ newExprs)
  }
}


class Simplify {
  val idFunCache = mutable.Map.empty[Ident, Boolean]
  def isIdDef(n: Ident)(using id2Path: Map[Str, Path], newDefs: Map[Path, L[ProgDef]], d: Deforest): Boolean =
    idFunCache.getOrElseUpdate(n, {
      idFunCache += n -> false
      (id2Path.get(n.tree.name).flatMap(newDefs.get) match {
        case Some(L(ProgDef(_, body))) => equivToId(simplifyId(body))
        case _ => false
      })
    })
  def equivToId(e: Expr)(using id2Path: Map[Str, Path], newDefs: Map[Path, L[ProgDef]], d: Deforest): Boolean = e match {
    case Function(x, Ref(y)) => x == y
    case Ref(id) => isIdDef(id)
    case _ => false
  }
  def simplifyId(e: Expr)(using id2Path: Map[Str, Path], newDefs: Map[Path, L[ProgDef]], d: Deforest): Expr = e match {
    case Call(lhs, rhs) if equivToId(lhs) => simplifyId(rhs)
    case Call(lhs, rhs) => Call(simplifyId(lhs), simplifyId(rhs))
    case Ctor(s, args) => Ctor(s, args.map(simplifyId))
    case Match(s, arms) => Match(simplifyId(s), arms.map{
      case (v, args, body) => (v, args, simplifyId(body))
    })
    case LetIn(id, rhs, body) => LetIn(id, simplifyId(rhs), simplifyId(body))
    case Function(param, body) => Function(param, simplifyId(body))
    case IfThenElse(scrut, thenn, elze) => IfThenElse(simplifyId(scrut), simplifyId(thenn), simplifyId(elze))
    case _ => e
  }

  def simplify(newDefs: Map[Path, L[ProgDef]], newExprs: Iterable[R[Expr]])(using id2Path: Map[Str, Path], d: Deforest) =
    val res = newDefs.values.map {
      case L(ProgDef(id, body)) => L(ProgDef(id, simplifyId(body)(using id2Path, newDefs, d)))
    } ++ newExprs.map {
      case R(e) => R(simplifyId(e)(using id2Path, newDefs, d))
    }
    Program(res.toList)
}