package mlscript
package lumberhack

import mlscript.{DiffTests, ModeType, TypingUnit, Term, Pgrm}
import mlscript.utils.shorthands.Str
import mlscript.codegen.Helpers.inspect as showStructure
import scala.collection.mutable.StringBuilder

class DiffTestLumberhack extends DiffTests {
  import DiffTestLumberhack.*
  override def postProcess(mode: ModeType, basePath: List[Str], testName: Str, unit: TypingUnit, output: Str => Unit): Unit = {
    // output("Parsed AST:\n")
    // output(Pgrm(unit.entities).toString())
    // output("Parsed AST:\n")
    
    output(">>>>>>>>>> Original >>>>>>>>>>")
    given d: Deforest(mode.stdout)
    val (allowErr, filteredEntities) = unit.entities match {
      case Var("_LUMBERHACK_ERROR") :: t => (true, t)
      case l => (false, l)
    }
    val originalProgram = Program.fromPgrm(Pgrm(filteredEntities))
    val constraints = d(originalProgram)
    // output(originalProgram.pp(using true))
    output(originalProgram.pp)
    output("<<<<<<<<<< Original <<<<<<<<<<")

    if mode.stdout || mode.verbose then {
      output("\n>>>>>>>>>> initial constraints >>>>>>>>>>")
      output(d.constraints.map((p, c) => s"${p.pp(using true)} <: ${c.pp(using true)}").mkString("\n"))
      output("<<<<<<<<<< initial constraints <<<<<<<<<<")
    }
    try {
      d.resolveConstraints

      output("\n>>>>>>> knots >>>>>>>")
      d.recursiveConstr.foreach { r =>
        output(s"${r._1._1.pp} <: ${r._1._2.pp}")
        r._2.foreach { p =>
          output(s"\t${p._1.pp}  --->  ${p._2.pp}")
          if !p._1.p.containsSlice(p._2.p) then output("\t!!NOT SUB-PATH")
        }
      }
      output("<<<<<<< knots <<<<<<<")

      output("\n>>>>>>> splitted knots >>>>>>>")
      d.actualKnotsUsingSplit._1.foreach { (k, v) =>
        output(s"${k.pp(using false)} --> ${v.map(v => s"${v.pp(using false)}").mkString("\n\t")}")
        
        if v.size > 1 then output("\t!!MORE THAN ONE MATCH")
        if !v.forall(vp => k.p.startsWith(vp.p)) then output("\t!!NOT PREFIX")
      }
      output("<<<<<<< splitted knots <<<<<<<")
      
      output("\n>>>>>>> expansion >>>>>>>")
      // output(d.callTreeUsingSplitKnot.map(_.pp).mkString("\n"))
      output(d.callTreeUsingNonSplitKnot.map(_.pp).mkString("\n"))
      output("<<<<<<< expansion <<<<<<<")

      if mode.stdout || mode.verbose then {
        output("\n>>>>>>> type variable bounds >>>>>>>")
        val tvs = d.upperBounds.keySet ++ d.lowerBounds.keySet
        tvs.foreach { tv =>
          val ub = d.upperBounds(tv).map(u => s"${u._1.pp} < ${u._2.pp(using true)}")
          val lb = d.lowerBounds(tv).map(l => s"${l._2.pp(using true)} < ${l._1.rev.pp}")
          val tvName = d.varsName(tv)
          output(tvName + ":")
          ub.foreach(u => output(s"\t${tvName}${u}"))
          lb.foreach(l => output(s"\t${l}${tvName}"))
          output("--------------")
        }
        output("<<<<<<< type variable bounds <<<<<<<")
      }
      
      // output(("------- defInstance -------"))
      // d.defInstances.foreach { case (p, xs) =>
      //   output((pprint2(p._1).plainText + " ==> " + pprint2(p._2).plainText + ":"))
      //   output((xs.toArray.map {
      //     case (p, c) => s"\n\t$p: ${d.exprs(p).pp}  <-->  $c: ${d.exprs(c).pp}"
      //   }.sorted.mkString.substring(1)))
      // }
      // output("\n>>>>>>>>>> Expanded >>>>>>>>>>")
      // val rewritter = Rewrite(originalProgram, d,
      //   d.defInstances.map { case (ps, s) => (ps, s.toSet) }.toMap,
      //   d.recursiveConstr._2.toMap
      // )
      // val newProgram = rewritter.rewrite
      // output(newProgram.pp)
      // output("<<<<<<<<<< Expanded <<<<<<<<<<")
    } catch {
      case e => if allowErr then {
        output("!!!!!!ERROR!!!!!!")
        output(s"${e.toString()}")
        if mode.stdout || mode.verbose then {
          output(s"\n${e.getStackTrace().take(10).map(_.toString()).mkString("\n")}\n")
        }
        output("!!!!!!ERROR!!!!!!")
      } else { throw e }
    }
  }
  
  override protected lazy val files = allFiles.filter { file =>
    val fileName = file.baseName
    validExt(file.ext) && ((modified.isEmpty || modified(file.relativeTo(pwd))) || lumberhackLocalTest(fileName))
  }
}

object DiffTestLumberhack {
  private val pwd = os.pwd
  private val dir = pwd/"lumberhack"/"shared"/"src"/"test"/"resources"
  private val allFiles = os.walk(dir)
  private val validExt = Set("mls")
  private val modified: Set[os.RelPath] = DiffTests.findModifiedFiles(dir)
  private val lumberhackLocalTest = Set[Str]("_LocalTest")
}
