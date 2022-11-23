package mlscript
package lumberhack

import mlscript.{DiffTests, ModeType, TypingUnit, Term, Pgrm}
import mlscript.utils.shorthands.Str
import mlscript.lumberhack.pprint2
import mlscript.codegen.Helpers.inspect as showStructure
import scala.collection.mutable.StringBuilder

class DiffTestLumberhack extends DiffTests {
  import DiffTestLumberhack.*
  override def postProcess(mode: ModeType, basePath: List[Str], testName: Str, unit: TypingUnit, output: Str => Unit): Unit = {
    // output("Parsed AST:\n")
    // output(pprint2(Pgrm(unit.entities).desugared, showFieldNames = true, width = 150).plainText)
    // output("Parsed AST:\n")
    
    output(">>>>>>>>>> Original >>>>>>>>>>")
    given d: Deforest(mode.stdout)
    val (allowErr, filteredEntities) = unit.entities match {
      case Var("_LUMBERHACK_ERROR") :: t => (true, t)
      case l => (false, l)
    }
    val originalProgram = Program.fromPgrm(Pgrm(filteredEntities))
    val constraints = d(originalProgram)
    output(originalProgram.pp(using true))
    output("<<<<<<<<<< Original <<<<<<<<<<")
    try {
      d.resolveConstraints
      output("\n------- recursive -------")
      d.recursiveConstr._1.foreach { c => 
        output((s"${pprint2.apply(c._1).plainText} :::: ${pprint2.apply(c._2).plainText}"))
      }
      output(("------- defInstance -------"))
      d.defInstances.foreach { case (p, xs) =>
        output((pprint2(p._1).plainText + " ==> " + pprint2(p._2).plainText + ":"))
        output((xs.toArray.map {
          case (p, c) => s"\n\t$p: ${d.exprs(p).pp}  <-->  $c: ${d.exprs(c).pp}"
        }.sorted.mkString.substring(1)))
      }
      output("\n>>>>>>>>>> Rewritten >>>>>>>>>>")
      val newProgram = Rewrite.rewrite(originalProgram, d,
        d.defInstances.map { case (ps, s) => (ps, s.toSet) }.toMap,
        d.recursiveConstr._2.toMap
      )
      output(newProgram.pp)
      output("<<<<<<<<<< Rewritten <<<<<<<<<<")
    } catch {
      case e => if allowErr then {
        output("!!!!!!ERROR!!!!!!")
        output(s"${e.toString()}")
        if mode.stdout then {
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
