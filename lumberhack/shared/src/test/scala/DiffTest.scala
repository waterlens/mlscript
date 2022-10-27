package mlscript.lumberhack

import mlscript.{DiffTests, TypingUnit, Term, Pgrm}
import mlscript.utils.shorthands.Str
import mlscript.lumberhack.pprint2
import mlscript.codegen.Helpers.inspect as showStructure
import scala.collection.mutable.StringBuilder

class DiffTestLumberhack extends DiffTests {
  import DiffTestLumberhack.*
  override def postProcess(basePath: List[Str], testName: Str, unit: TypingUnit): List[Str] = {
    val outputBuilder = StringBuilder()
    // outputBuilder ++= "Parsed AST:\n"
    // outputBuilder ++= pprint2(Pgrm(unit.entities).desugared, showFieldNames = true, width = 150).plainText
    // outputBuilder ++= "Parsed AST:\n"
    outputBuilder ++= ">>>>>>>>>> Original >>>>>>>>>>\n"
    given d: Deforest(true)
    val originalProgram = Program.fromPgrm(Pgrm(unit.entities))
    val constraints = d(originalProgram)
    outputBuilder ++= originalProgram.pp
    outputBuilder ++= "\n<<<<<<<<<< Original <<<<<<<<<<\n"
    d.resolveConstraints
    outputBuilder ++= "\n------- recursive -------\n"
    d.recursiveConstr._1.foreach { c => 
      outputBuilder ++= (s"${pprint2.apply(c._1).plainText} :::: ${pprint2.apply(c._2).plainText}\n")
    }
    outputBuilder ++= ("------- defInstance -------\n")
    d.defInstances.foreach { case (p, xs) =>
      outputBuilder ++= (pprint2(p._1).plainText + " ==> " + pprint2(p._2).plainText + ":")
      outputBuilder ++= (xs.toArray.map {
        case (p, c) => s"\n\t$p: ${d.exprs(p).pp}  <-->  $c: ${d.exprs(c).pp}"
      }.sorted.mkString)
      outputBuilder ++= "\n"
    }
    outputBuilder ++= "\n>>>>>>>>>> Rewritten >>>>>>>>>>\n"
    val newProgram = Rewrite.rewrite(originalProgram, d,
      d.defInstances.map { case (ps, s) => (ps, s.toSet) }.toMap,
      d.recursiveConstr._2.toMap
    )
    outputBuilder ++= newProgram.pp
    outputBuilder ++= "\n<<<<<<<<<< Rewritten <<<<<<<<<<\n"
    
    outputBuilder.toString().linesIterator.toList
  }
  
  override protected lazy val files = allFiles.filter { file =>
    val fileName = file.baseName
    validExt(file.ext) // && filter(file.relativeTo(pwd))
  }
}

object DiffTestLumberhack{

  private val pwd = os.pwd
  private val dir = pwd/"lumberhack"/"shared"/"src"/"test"/"resources"
  
  private val allFiles = os.walk(dir)
  
  private val validExt = Set("mls")

  // private def filter(file: os.RelPath) = DiffTests.filter(file)
}
