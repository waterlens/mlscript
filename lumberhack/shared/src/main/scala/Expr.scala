package mlscript
package lumberhack

import mlscript.utils.*, shorthands.*
import lumberhack.utils.*

case class Ident(isDef: Bool, tree: Var, uid: Uid[Ident]) {
  def pp(using showUid: Boolean = true): Str = s"${tree.name}${if showUid then s":$uid" else ""}"
  def copyToNewDeforest(using newd: Deforest): Ident = newd.nextIdent(isDef, tree)
}
case class ProgDef(id: Ident, body: Expr)
case class Program(contents: Ls[ProgDef \/ Expr]) {
  def pp(using showUids: Bool = false): Str =
    contents.sortBy{
      case Left(pdef) => pdef.id.pp(using false)
      case Right(expr) => ""
    }.map {
      case L(pd) => s"def ${pd.id.pp(using true)} = ${pd.body.pp()}"
      case R(e) => e.pp()
    }.mkString("\n")
  
  lazy val defAndExpr: (Map[Ident, Expr], List[Expr]) = contents.partitionMap(identity).mapFirst(_.map(pd => pd.id -> pd.body).toMap)

  private def copyDefsToNewDeforest(using newd: Deforest): Program -> Map[Expr.Ref -> ExprId, Expr.Ref] = {
    val refMaps = scala.collection.mutable.Map.empty[Expr.Ref -> ExprId, Expr.Ref]
    def copyExpr(e: Expr)(using ctx: Expr.Ctx, newd: Deforest): Expr = e match {
      case Expr.Const(lit: Lit) => Expr.Const(lit)
      case r@Expr.Ref(id: Ident) =>
        val res = Expr.Ref(ctx(id.tree.name))
        assert(!refMaps.contains(res -> res.uid))
        refMaps += ((res -> res.uid) -> r)
        res
      case Expr.Call(lhs: Expr, rhs: Expr) => Expr.Call(copyExpr(lhs), copyExpr(rhs))
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
    ) -> refMaps.toMap
  }

  def expandedWithNewDeforest(callTree: List[CallTree]): Program -> Deforest = {
    given newd: Deforest(false)
    val (copiedOriginalProgram, refMaps) = this.copyDefsToNewDeforest
    val pathToIdent = CallTree.generatePathToIdent(callTree)
    assert({
      val a = pathToIdent.values.map(_.pp(using false)).toSet
      val b = pathToIdent.values.map(_.pp(using true)).toSet
      b.size == a.size
    })
    val initContext = Deforest.lumberhackKeywords.map {
      n => n -> newd.nextIdent(false, Var(n))
    } ++ copiedOriginalProgram.defAndExpr._1.keys.map(k => k.tree.name -> k) |> (_.toMap)
    
    val newDefs = {
      var defined = List.empty[Ident -> Path]
      pathToIdent.keys.foreach { p =>
        if p.pp(using false) == pathToIdent(p).pp(using false) then defined = (pathToIdent(p) -> p) :: defined
      }
      val res = defined.map { (id, p) =>
        assert(p.p.nonEmpty)
        val identKey = p.p.last match
          case PathElem.Normal(ref, _) => initContext(ref.id.tree.name)
          case PathElem.Star(elms) => ???
        val newBody: Expr = copiedOriginalProgram.defAndExpr._1(identKey).rewriteExpand(using initContext, p, newd, pathToIdent, refMaps)
        L(ProgDef(id, newBody))
      }
      res
    }
    Program(
      copiedOriginalProgram.defAndExpr._2.map(e => R(e.rewriteExpand(using initContext, Path(Nil), newd, pathToIdent, refMaps)))
      ++ copiedOriginalProgram.defAndExpr._1.iterator.map((id, body) => L(ProgDef(id, body)))
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

object Program {
  def fromPgrm(p: Pgrm)(using d: Deforest): Program = {
    val (_, (typeDefs, stmts)) = p.desugared
    given ctx: Expr.Ctx = Deforest.lumberhackKeywords.map {
      n => n -> d.nextIdent(false, Var(n))
    } ++ stmts.iterator.collect {
      case Def(_, nme, _, _) => nme.name -> d.nextIdent(true, nme)
    } |> (_.toMap)
    Program(stmts.map {
      case t: Term => R(Expr.fromTerm(t))
      case Def(_, nme, L(rhs), _) =>
        L(ProgDef(ctx(nme.name), Expr.fromTerm(rhs)))
      case t => throw new Exception("unsupported: " + t)
    })
  }
}

enum Expr(using val deforest: Deforest) {
  case Const(lit: Lit)(using Deforest)
  case Ref(id: Ident)(using Deforest)
  case Call(lhs: Expr, rhs: Expr)(using Deforest)
  case Ctor(name: Var, args: Ls[Expr])(using Deforest)
  case LetIn(id: Ident, rhs: Expr, body: Expr)(using Deforest)
  case Match(scrut: Expr, arms: Ls[(Var, Ls[Ident], Expr)])(using Deforest)
  case IfThenElse(scrut: Expr, thenn: Expr, elze: Expr)(using Deforest)
  case Function(param: Ident, body: Expr)(using Deforest)
  
  val uid: Uid[Expr] = deforest.euid.nextUid
  deforest.exprs += uid -> this
  
  def pp(multiline: Bool = true)(using showEuids: Bool = false): Str =
    val res: fansi.Str = (if (showEuids) Console.CYAN + uid.toString + ": " + Console.RESET else "") + (
      this match
        case Const(lit) => Console.YELLOW + lit.idStr + Console.RESET
        case Ref(id) => id.pp(using true) + "^" + uid
        case Call(lhs, rhs) => s"(${lhs.pp(multiline)} ${rhs.pp(multiline)})"
        case Ctor(name, args) =>
          s"${Console.BLUE}[$name${Console.RESET}${args.map(" " + _.pp(multiline)).mkString + Console.BLUE}]${Console.RESET}"
        case LetIn(id, rhs, body) if multiline => {
          val rhsStr = rhs match {
            case r: LetIn => "\n\t" + rhs.pp(multiline).linesIterator.map("\t" + _).mkString("\n").dropWhile(_ == '\t')
            case _ => rhs.pp(multiline)
          }
          s"${Console.BOLD}let${Console.RESET} ${id.pp(using true)} = ${rhsStr}" + s"\n${Console.BOLD}in${Console.RESET} ${body.pp(multiline)}"
        }
        case LetIn(id, rhs, body) => s"${Console.BOLD}let${Console.RESET} ${id.pp(using true)} = ${rhs.pp(multiline)}" + s"\n${Console.BOLD}in${Console.RESET} ${body.pp(multiline)}"
        case Match(scrut, arms) if multiline => s"${Console.BOLD}case${Console.RESET} ${scrut.pp(multiline)} ${Console.BOLD}of${Console.RESET} {${
          "\n\t" + arms.map { case (v, ids, e) =>
            s"${Console.BLUE + v.name + Console.RESET}${ids.map(" " + _.pp(using true)).mkString} => ${
              e.pp(multiline).linesIterator.map("\t" + _).mkString("\n").dropWhile(_ == '\t')
            }"
          }.mkString("\n\t| ")
        }}"
        case Match(scrut, arms) => s"${Console.BOLD}case${Console.RESET} ${scrut.pp(multiline)} ${Console.BOLD}of${Console.RESET} {${
          arms.map { case (v, ids, e) =>
            s"${Console.BLUE + v.name + Console.RESET}${ids.map(" " + _.pp(using true)).mkString} => ${e.pp(multiline)}"
          }.mkString(" | ")
        }}"
        case Function(param, body) => s"(${Console.BOLD}fun${Console.RESET} ${param.pp(using true)} -> ${body.pp(multiline)})"
        case IfThenElse(scrut, thenn, elze) => 
          s"${Console.BOLD}if${Console.RESET} ${scrut.pp(multiline)} ${Console.BOLD}then${Console.RESET} " +
          s"${thenn.pp(multiline)} ${Console.BOLD}else${Console.RESET} ${elze.pp(multiline)}"
    )
    res.plainText
  
  // ctx should initially contain the keywords and the ids of original function definitions
  def rewriteExpand(using ctx: Expr.Ctx, currentPath: Path, newd: Deforest, pathToIdent: Map[Path, Ident], refMap: Map[Expr.Ref -> ExprId, Expr.Ref]): Expr = {
    this match {
      case Const(lit) => Const(lit)
      case Call(lhs, rhs) => Call(lhs.rewriteExpand, rhs.rewriteExpand)
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
        pathToIdent.get(currentPath ::: Path(PathElem.Normal(refMap(ref -> ref.uid), refMap(ref -> ref.uid).uid)(PathElemPol.In) :: Nil)) match {
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
object Expr {
  type Ctx = Map[Str, Ident]

  def fromTerm(t: Term)(using d: Deforest, ctx: Ctx): Expr = t match
    case lit: Lit => Const(lit)
    case v @ Var(nme) =>
      if (nme.isCapitalized) Ctor(v, Nil)
      else Ref(ctx(nme))
    case Lam(Tup((N -> Fld(false, false, v: Var)) :: args), b) =>
      val id = d.nextIdent(false, v)
      given Ctx = ctx + (v.name -> id)
      args match {
        case Nil => Function(id, fromTerm(b))
        case _ :: _ => Function(id, fromTerm(Lam(Tup(args), b)))
      }
    case App(v: Var, Tup(args)) if v.name.isCapitalized => Ctor(v, args.map(a => fromTerm(a._2.value)))
    case App(l, Tup((N -> Fld(_, _, a)) :: args)) => args.foldLeft(Call(fromTerm(l), fromTerm(a))) {
      case (c, (N -> Fld(_, _, a))) => Call(c, fromTerm(a))
      case _ => ???
    }
    case Let(false, name, rhs, body) =>
      val id = d.nextIdent(false, name) // TODO deforest local let bindings? false ~> true
      given Ctx = ctx + (name.name -> id)
      LetIn(id, fromTerm(rhs), fromTerm(body))
    case If(IfOpApp(lhs, Var("is"), IfBlock(lines)), N)
      if lines.forall { _ match {
        case L(IfThen(App(Var(ctor), Tup((N -> Fld(false, false, _: Var)) :: _)), _)) => ctor.isCapitalized
        case L(IfThen(Var(ctor), _)) if (ctor.isCapitalized || ctor == "_") => true
        case _ => false
      } } => Match(
        fromTerm(lhs),
        lines.map {
          case L(IfThen(App(ctorName: Var, Tup(args)), rhs)) => {
            val argMap = args.map { case (N -> Fld(false, false, a: Var)) => (a.name, d.nextIdent(false, a)); case _ => ??? };
            (ctorName, argMap.unzip._2, fromTerm(rhs)(using d, ctx ++ argMap))
          }
          case L(IfThen(ctorName: Var, rhs)) => (ctorName, Nil, fromTerm(rhs))
          case _ => ???
        }
      )
    case If(IfThen(expr, rhs), S(elze)) =>
      IfThenElse(fromTerm(expr), fromTerm(rhs), fromTerm(elze))
    case Bra(false, t) => fromTerm(t)
    case Blk((e: Term) :: Nil) => fromTerm(e)
    // single element tuple as brackets
    case Tup((N -> Fld(_, _, t)) :: Nil) => fromTerm(t)
    case _ => lastWords(s"unsupported: $t (${t.getClass})") // unsupported
}

