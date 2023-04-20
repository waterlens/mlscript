package mlscript
package lumberhack

import mlscript.utils.*, shorthands.*
import lumberhack.utils.*

case class Ident(isDef: Bool, tree: Var, uid: Uid[Ident]) {
  def pp(using config: PrettyPrintConfig): Str = s"${tree.name}${if config.showIuid then s"${toSuperscript(uid.toString)}" else ""}"
  def copyToNewDeforest(using newd: Deforest): Ident = newd.nextIdent(isDef, tree)
}
case class ProgDef(id: Ident, body: Expr)
case class Program(contents: Ls[ProgDef \/ Expr])(using d: Deforest) {
  def pp(using config: PrettyPrintConfig): Str =
    contents.sortBy{
      case Left(pdef) => pdef.id.pp(using InitPpConfig)
      case Right(expr) => ""
    }.map {
      case L(pd) => s"def ${pd.id.pp(using InitPpConfig)} = ${pd.body.pp}"
      case R(e: Expr.LetIn) => e.pp.linesIterator.filter(_.nonEmpty).map(_.drop(1)).mkString("\n")
      case R(e) => e.pp
    }.mkString("\n")
  
  def pp(callTree: CallTrees)(using config: PrettyPrintConfig): Str = {
    def rec(tree: CallTree, defs: Map[Ident, Expr]): Str = tree match {
      case CallTree.Continue(current, calls) => {
        val currentIdentStr = callTree.store(current)
        val currentFunBody = {
          val tmp = this.defAndExpr._1.filterKeys(_ == currentIdentStr).toSet
          assert(tmp.size == 1)
          tmp.head
        }

        val currentFunPp = currentFunBody._2 match {
          case e: Expr.LetIn => e.pp.linesIterator.filter(_.nonEmpty).map(_.drop(1)).mkString("\n")
          case e => e.pp
        }
        val nextMods = calls.calls.map(rec(_, defs)).filter(_.nonEmpty).mkString("\n").linesIterator.map("\t" + _).mkString("\n")
        s"def ${currentIdentStr.pp(using InitPpConfig)} = \n" +
        s"${currentFunPp.linesIterator.map("\t" + _).mkString("\n")}" +
        (if nextMods.isEmpty() then "" else s"\n\twhere\n$nextMods")
      }
      // case CallTree.Knot(current, prev) => s"module ${callTree.store(current).pp(using InitPpConfig)} = {${callTree.store(prev).pp(using InitPpConfig)}}"
      case CallTree.Knot(current, prev) => ""
    }
    
    val topLevelExprsPp = this.defAndExpr._2.map(_.pp).mkString("\n")
    val newDefsPp = callTree.calls.map(rec(_, this.defAndExpr._1)).mkString("\n")
    topLevelExprsPp + "\n" + newDefsPp
  }
  
  lazy val defAndExpr: (Map[Ident, Expr], List[Expr]) = contents.partitionMap(identity).mapFirst(_.map(pd => pd.id -> pd.body).toMap)

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

  lazy val evaluated: List[Expr] = defAndExpr._2.map(_.evaluate(using defAndExpr._1))
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

trait RefTrait { this: Expr.Ref =>
  override def equals(x: Any): Boolean = x match {
    case r@Expr.Ref(otherId) => this.id == otherId && this.uid == r.uid
    case _ => false
  }
  override def hashCode(): Int = (this.id, this.uid).hashCode()
  def toPath(pol: PathElemPol = PathElemPol.In): Path = Path(PathElem.Normal(this)(pol) :: Nil)
}
enum Expr(using val deforest: Deforest) {
  case Const(lit: Lit)(using Deforest)
  case Ref(id: Ident)(using Deforest) extends Expr with RefTrait
  case Call(lhs: Expr, rhs: Expr)(using Deforest)
  case Ctor(name: Var, args: Ls[Expr])(using Deforest)
  case LetIn(id: Ident, rhs: Expr, body: Expr)(using Deforest)
  case Match(scrut: Expr, arms: Ls[(Var, Ls[Ident], Expr)])(using Deforest)
  case IfThenElse(scrut: Expr, thenn: Expr, elze: Expr)(using Deforest)
  case Function(param: Ident, body: Expr)(using Deforest)
  case Sequence(fst: Expr, snd: Expr)(using Deforest)
  
  type MultiLineExprs = LetIn | Sequence

  val uid: Uid[Expr] = deforest.euid.nextUid
  deforest.exprs += uid -> this
  
  def pp(using config: PrettyPrintConfig): Str =
    val res: fansi.Str = (if (config.showEuid) Console.CYAN + uid.toString + ": " + Console.RESET else "") + (
      this match
        case Const(lit) => Console.YELLOW + lit.idStr + Console.RESET
        case Ref(id) => if id.isDef
          then id.tree.name + (if config.showRefEuid then s"^$uid" else "")
          else id.pp
        case Call(Call(Ref(Ident(_, Var(op), _)), fst), snd) if Deforest.lumberhackIntBinOps(op) => s"(${fst.pp} $op ${snd.pp})"
        case Call(lhs, rhs) => s"(${lhs.pp} ${rhs.pp})"
        case Sequence(fst, snd) if config.multiline =>
          val sndStr = snd match {
            case b: MultiLineExprs => b.pp.dropWhile(c => c == '\n' || c.isWhitespace)
            case _ => {
              val res = snd.pp
              val resLines = res.linesIterator.toSeq
              if resLines.length > 1 then {
                resLines.map("\t" + _).mkString("\n").dropWhile(c => c == '\n' || c.isWhitespace)
              } else { res }
            }
          }
          s"\n\t${fst.pp}\n\t$sndStr"
        case Sequence(fst, snd) => s"${fst.pp}; ${snd.pp}"
        case Ctor(name, args) =>
          s"${Console.BLUE}[$name${Console.RESET}${args.map(" " + _.pp).mkString + Console.BLUE}]${Console.RESET}"
        case LetIn(id, rhs, body) if config.multiline => {
          val rhsStr = rhs match {
            case r: MultiLineExprs => rhs.pp.linesIterator.map("\t" + _).mkString("\n")
            case _ => {
              val res = rhs.pp
              val resLines = res.linesIterator.toSeq
              if resLines.length > 1 then {
                resLines.map("\t" + _).mkString("\n").dropWhile(c => c == '\n' || c.isWhitespace)
              } else { res }
            }
          }
          val bodyStr = body match {
            case b: MultiLineExprs => b.pp.dropWhile(c => c == '\n' || c.isWhitespace)
            case _ => {
              val res = body.pp
              val resLines = res.linesIterator.toSeq
              if resLines.length > 1 then {
                resLines.map("\t" + _).mkString("\n").dropWhile(c => c == '\n' || c.isWhitespace)
              } else { res }
            }
          }
          s"\n\t${Console.BOLD}let${Console.RESET} ${id.pp} = ${rhsStr}" + s"\n\t${Console.BOLD}in${Console.RESET} $bodyStr"
        }
        case LetIn(id, rhs, body) => s"${Console.BOLD}let${Console.RESET} ${id.pp} = ${rhs.pp}" + s"\n${Console.BOLD}in${Console.RESET} ${body.pp}"
        case Match(scrut, arms) if config.multiline => s"${Console.BOLD}case${Console.RESET} ${scrut.pp} ${Console.BOLD}of${Console.RESET} {${
          "\n\t" + arms.map { case (v, ids, e) =>
            s"${Console.BLUE + v.name + Console.RESET}${ids.map(" " + _.pp).mkString} => ${
              e.pp.linesIterator.map("\t" + _).mkString("\n").dropWhile(_ == '\t')
            }"
          }.mkString("\n\t| ")
        }}"
        case Match(scrut, arms) => s"${Console.BOLD}case${Console.RESET} ${scrut.pp} ${Console.BOLD}of${Console.RESET} {${
          arms.map { case (v, ids, e) =>
            s"${Console.BLUE + v.name + Console.RESET}${ids.map(" " + _.pp).mkString} => ${e.pp}"
          }.mkString(" | ")
        }}"
        case Function(param, body) => s"(${Console.BOLD}fun${Console.RESET} ${param.pp} -> ${body.pp})"
        case IfThenElse(scrut, thenn, elze) => 
          s"${Console.BOLD}if${Console.RESET} ${scrut.pp} ${Console.BOLD}then${Console.RESET} " +
          s"${thenn.pp} ${Console.BOLD}else${Console.RESET} ${elze.pp}"
    )
    res.plainText
  
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
  
  def subst(using mapping: Map[Ident, Expr], d: Deforest): Expr = this match {
    case c: Const => c
    case Ref(id) => mapping.getOrElse(id, this)
    case Call(f, p) => Call(f.subst, p.subst)
    case Ctor(n, args) => Ctor(n, args.map(_.subst))
    case LetIn(id, value, body) => LetIn(id, value.subst, body.subst)
    case Match(scrut, arms) => Match(scrut.subst, arms.map((n, args, body) => (n, args, body.subst)))
    case IfThenElse(cond, thenn, elze) => IfThenElse(cond.subst, thenn.subst, elze.subst)
    case Function(p, body) => Function(p, body.subst)
    case Sequence(f, s) => Sequence(f.subst, s.subst)
  }

  // NOTE: eval order?
  def evaluate(using ctx: Map[Ident, Expr], d: Deforest): Expr = d.Trace.trace(
    this.pp(using InitPpConfig.showIuidOn.multilineOn)
  ){ this match {
    case c: Const => c
    case Ref(id) if Deforest.lumberhackKeywords(id.tree.name) => this
    case Ref(id) => ctx.get(id) match {
      case Some(v) => v.evaluate
      // case None => this
    }
    case Call(f, p) => f.evaluate match {
      case Function(arg, body) => body.subst(using Map(arg -> p.evaluate)).evaluate
      case c: Ctor => throw Exception("\n" + c.pp(using InitPpConfig.showIuidOn.multilineOn))
      case newF => Call(newF, p.evaluate)
      // case newF => Call(newF, p.evaluate)
    }
    case Ctor(name, args) => Ctor(name, args.map(_.evaluate))
    case LetIn(id, value, body) => body.subst(using Map(id -> value)).evaluate
    case Match(scrut, arms) => scrut.evaluate match {
      case Ctor(name, args) => {
        val branch = arms.find((n, _, _) => n == name).get
        val bindings = {
          assert(args.length == branch._2.length)
          branch._2.zip(args)
        }
        branch._3.subst(using bindings.toMap).evaluate
      }
      case s: Function => throw Exception("\n" + s.pp(using InitPpConfig.showIuidOn.multilineOn))
      // case s if s == scrut => Match(s, arms.map((v, args, body) => (v, args, body.evaluate)))
      case s => Match(s, arms.map((v, args, body) => (v, args, body.evaluate)))
    }
    case IfThenElse(cond, thenn, elze) => cond match {
      case Ctor(n, Nil) if n.name == "False" => elze.evaluate
      case Ctor(n, Nil) if n.name == "True" => thenn.evaluate
      case a: (LetIn | Function) => throw Exception("\n" + a.pp(using InitPpConfig.showIuidOn.multilineOn))
      // case c if c == cond => IfThenElse(c, thenn.evaluate, elze.evaluate)
      case c => IfThenElse(c.evaluate, thenn.evaluate, elze.evaluate)
    }
    case Function(param, body) => Function(param, body)
    case Sequence(a, b) => Sequence(a.evaluate, b.evaluate)
  }}(_.pp(using InitPpConfig.showIuidOn.multilineOn))
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
    // case Blk((NuFunDef(_, name, Nil, L(e))) :: Nil) => fromTerm(e) // do not allow let binding at the last
    case Blk((e: Term) :: t) => Sequence(fromTerm(e), fromTerm(Blk(t)))
    case Blk((NuFunDef(_, name, Nil, L(e))) :: t) =>
      val id = d.nextIdent(false, name) // TODO deforest local let bindings? false ~> true
      given Ctx = ctx + (name.name -> id)
      LetIn(id, fromTerm(e), fromTerm(Blk(t)))
      
    // single element tuple as brackets
    case Tup((N -> Fld(_, _, t)) :: Nil) => fromTerm(t)
    case _ => lastWords(s"unsupported: $t (${t.getClass})") // unsupported
}

