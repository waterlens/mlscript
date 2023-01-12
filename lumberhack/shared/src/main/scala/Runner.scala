package mlscript
package lumberhack

import fastparse.*
import fastparse.Parsed.Failure
import fastparse.Parsed.Success
import mlscript.utils.*, shorthands.*
import ammonite.ops.*
import fastparse.Parsed.{Success, Failure}
import ProdStratEnum.*, ConsStratEnum.*
import pprint.Tree, pprint.Tree.*

object pprint2 extends pprint.PPrinter() {
  override def treeify(x: Any, escapeUnicode: Boolean, showFieldNames: Boolean): Tree = x match
    case r @ Expr.Ref(id @ Ident(_, Var(nme), uid)) => Literal(s"$nme:${uid}^${r.uid}")
    case Ident(_, Var(nme), uid) => Literal(s"$nme:$uid")
    case Var(nme) => Literal(nme)
    case s@Strat(strat) => Apply("", Iterator(
      Literal(s"${s.path.pp}"),
      treeify(strat, escapeUnicode, showFieldNames)))
    case ConsVar(uid, n) => Literal(s"${uid}" + "'" + n)
    case ProdVar(uid, n) => Literal(s"${uid}" + "'" + n)
    case ProdFun(l, r) => Infix(
      treeify(l, escapeUnicode, showFieldNames),
      "=>",
      Apply("", Iterator(treeify(r, escapeUnicode, showFieldNames))),
    )
    case ConsFun(l, r) => Infix(
      treeify(l, escapeUnicode, showFieldNames),
      "=>",
      Apply("", Iterator(treeify(r, escapeUnicode, showFieldNames))),
    )
    case MkCtor(v, args) if args.length > 0 =>
      Apply(v.name, args.iterator.map(treeify(_, escapeUnicode, showFieldNames)))
    case MkCtor(v, _) => Literal(v.name)
    case Nil => Literal("ɛ")
    case (r: Expr.Ref, _) => treeify(r, escapeUnicode, showFieldNames)
    case x :: xs =>  Infix(
      treeify(x, escapeUnicode, showFieldNames),
      "⋅",
      treeify(xs, escapeUnicode, showFieldNames),
    )
    case _ => super.treeify(x, escapeUnicode, showFieldNames)
}


object Runner:
  def apply(fileName: Str): Unit = ???