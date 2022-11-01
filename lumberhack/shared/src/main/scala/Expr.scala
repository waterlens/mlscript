package mlscript
package lumberhack

import mlscript.utils.*, shorthands.*
import lumberhack.utils.*

case class Ident(isDef: Bool, tree: Var, uid: Uid[Ident])
case class ProgDef(id: Ident, body: Expr)
case class Program(contents: Ls[ProgDef \/ Expr]) {
  def pp(using showUids: Bool = false): Str =
    contents.iterator.map {
      // case L(pd) => s"def ${pd.id.tree} = ${pd.body.pp}\n"
      // case R(e) => s"${e.pp}\n"
      case L(pd) => s"def ${pprint2(pd.id).plainText} = ${pd.body.pp}"
      case R(e) => e.pp
    }.mkString("\n")
}

object Program {
  def fromPgrm(p: Pgrm)(using d: Deforest): Program = {
    val (_, (typeDefs, stmts)) = p.desugared
    given ctx: Expr.Ctx = Iterator("primitive").map {
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
  case Function(param: Ident, body: Expr)(using Deforest)
  
  val uid: Uid[Expr] = deforest.euid.nextUid
  deforest.exprs += uid -> this
  
  def pp(using level: Int = 1, showUids: Bool = false): Str =
    val res: fansi.Str = (if (showUids) Console.CYAN + uid.toString + ": " + Console.RESET else "") + (
      this match
        case Const(lit) => Console.YELLOW + lit.idStr + Console.RESET
        case Ref(id) => pprint2(id)
        case Call(lhs, rhs) => s"(${lhs.pp} ${rhs.pp})"
        case Ctor(name, args) =>
          s"${Console.BLUE}[$name${Console.RESET}${args.map(" " + _.pp).mkString + Console.BLUE}]${Console.RESET}"
        case LetIn(id, rhs, body) => {
          val rhsStr = rhs.pp(using level + 1, showUids)
          val inStr = if rhsStr.linesIterator.length == 1 then "in" else ("\n" + "\t" * level + "in")
          "\n" + "\t" * level +
          s"${Console.BOLD}let${Console.RESET} ${pprint2(id)} = ${rhsStr} ${Console.BOLD}" +
          inStr +
          s"${Console.RESET} ${body.pp}"
        }
        case Match(scrut, arms) => s"${Console.BOLD}case${Console.RESET} ${scrut.pp} ${Console.BOLD}of${Console.RESET} {${arms.map {
            case (v, ids, e) =>
              s"${Console.BLUE + v.name + Console.RESET}${ids.map(id => " " + pprint2(id)).mkString} -> ${e.pp}"
          }.mkString(" | ")}}"
        case Function(param, body) => s"${Console.BOLD}fun${Console.RESET} ${pprint2(param)} -> ${body.pp}"
    )
    res.plainText
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
        case L(IfThen(Var(ctor), _)) => ctor.isCapitalized
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
    case Bra(false, t) => fromTerm(t)
    // single element tuple as brackets
    case Tup((N -> Fld(_, _, t)) :: Nil) => fromTerm(t)
    case _ => lastWords(s"unsupported: $t (${t.getClass})") // unsupported
}

