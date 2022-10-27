package mlscript.lumberhack

import fastparse.*
import fastparse.Parsed.Failure
import fastparse.Parsed.Success
import mlscript.utils.*, shorthands.*
import ammonite.ops.*
import fastparse.Parsed.{Success, Failure}
import mlscript.{Var, FastParseHelpers, MLParser, Origin, NewLexer, NewParser, Pgrm}

import ProdStratEnum.*, ConsStratEnum.*
import pprint.Tree, pprint.Tree.*

object pprint2 extends pprint.PPrinter() {
  override def treeify(x: Any, escapeUnicode: Boolean, showFieldNames: Boolean): Tree = x match
    case r @ Expr.Ref(id @ Ident(_, Var(nme), uid)) =>
      // Literal(treeify(id, escapeUnicode, showFieldNames))
      Literal(s"$nme:${uid}^${r.uid}")
    case Ident(_, Var(nme), uid) => Literal(s"$nme:$uid")
    case Var(nme) => Literal(nme)
    case s@Strat(strat) => Apply("", Iterator(treeify(s.path, escapeUnicode, showFieldNames), treeify(strat, escapeUnicode, showFieldNames)))
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
    case MkCtor(v, args) =>
      Apply(v.name, args.iterator.map(treeify(_, escapeUnicode, showFieldNames)))
    case Nil => Literal("ɛ")
    case (r: Expr.Ref, _: Uid[Expr]) => treeify(r, escapeUnicode, showFieldNames)
    case x :: xs =>  Infix(
      treeify(x, escapeUnicode, showFieldNames),
      "⋅",
      treeify(xs, escapeUnicode, showFieldNames),
    )
    case _ => super.treeify(x, escapeUnicode, showFieldNames)
}


object Runner:
  def apply(fileName: Str): Unit =
    val fileContents = os.read(os.Path(fileName, pwd))
    val fph = new FastParseHelpers(fileContents)
    val origin = Origin(fileName, 0, fph)
    val lexer = new NewLexer(origin, _ => (), dbg = false)
    val tokens = lexer.bracketedTokens
    val parser = new NewParser(origin, tokens, _ => (), dbg = false, N) {
      def doPrintDbg(msg: => Str): Unit = if (dbg) println(msg)
    }
    val res = parser.parseAll(parser.typingUnit)
    // val mlp = MLParser(Origin(fileName, 0, fph))
    // val res = fastparse.parse(fph.blockStr, mlp.pgrm)
    // println("========= PARSED =========")
    // pprint2.pprintln(res)
    
    given d: Deforest(true)
    val p = Program.fromPgrm(Pgrm(res.entities))
    println("========= NAMED =========")
    // pprint2.pprintln(p)
    println(p.pp(using true))
    println("========= TYPED =========")
    val ty = d(p)
    pprint2.pprintln(ty)
    // pprint2.pprintln(d.state)
    pprint2.pprintln(d.constraints)
    // pprint2.pprintln(d.constraints.map { case l -> r => s"$l  <:  $r" })
    println("========= RESOLVE =========")
    // d.resolveConstraints
    d.resolveConstraints
    println("====== lists of constraints ======")
    // d.cnstrsList.foreach { c =>
    //   println(s"${pprint2.apply(c._1).toString} : ${pprint2.apply(c._2).toString}")
    // }
    // val cnstrMap = d.cnstrsList.groupBy(c => (c._1.path, c._2.path))
    // cnstrMap.foreach { case (p, xs) =>
    //   print(pprint2(p._1).toString + " ==> " + pprint2(p._2).toString + ":")
    //   println(xs.toArray.map {
    //     case (p, c) => s"\n\t${pprint2(p.s).toString()}  <-->  ${pprint2(c.s).toString()}"
    //   }.sorted.mkString)
    // }
    println("====== recursive =======")
    d.recursiveConstr._1.foreach { c => 
      println(s"${pprint2.apply(c._1).toString} :::: ${pprint2.apply(c._2).toString}")
    }
    println("====== defInstance ======")
    d.defInstances.foreach { case (p, xs) =>
      print(pprint2(p._1).toString + " ==> " + pprint2(p._2).toString + ":")
      println(xs.toArray.map {
        case (p, c) => s"\n\t$p: ${d.exprs(p).pp}  <-->  $c: ${d.exprs(c).pp}"
      }.sorted.mkString)
    }
    println("====== rewrite ======")
    val newProgram = Rewrite.rewrite(p, d,
      d.defInstances.map { case (ps, s) => (ps, s.toSet) }.toMap,
      d.recursiveConstr._2.toMap
    )
    println(newProgram.pp(using false))
    // println(newProgram)
    // println("========= OCAML =========")
    // println(OCamlGen(p))
        
  

