package mlscript
package lumberhack

import mlscript.{DiffTests, ModeType, TypingUnit, Term, Pgrm}
import mlscript.utils.shorthands.Str
import mlscript.codegen.Helpers.inspect as showStructure
import scala.collection.mutable.StringBuilder
import mlscript.lumberhack.utils.PrettyPrintConfig
import mlscript.lumberhack.utils.InitPpConfig
import scala.collection.mutable.Buffer

class DiffTestLumberhack extends DiffTests {
  import DiffTestLumberhack.*
  override def postProcess(mode: ModeType, basePath: List[Str], testName: Str, unit: TypingUnit, output: Str => Unit): Unit = {
    // output("Parsed AST:\n")
    // output(Pgrm(unit.entities).toString())
    // output("Parsed AST:\n")
    
    output(">>>>>>>>>> Original >>>>>>>>>>")
    // NOTE: currently do not duplicate multiple usages, since we have already exploded the program by a lot
    // val originalD = Deforest(mode.stdout)
    // val (allowErr, filteredEntities) = unit.entities match {
    //   case Var("_LUMBERHACK_ERROR") :: t => (true, t)
    //   case l => (false, l)
    // }
    // val originalOriginalProgram = Program.fromPgrm(Pgrm(filteredEntities))(using originalD)
    // val _ = originalD(originalOriginalProgram)
    // val originalOriginalProgramCallTree = CallTree.callTreeUsingSplitKnot(originalD)
    // output(originalOriginalProgramCallTree.sortBy(_.pp).map(_.pp).mkString("\n"))
    // output("-------------------------------")
    // val (originalProgram, d) = originalOriginalProgram.expandedWithNewDeforest(originalOriginalProgramCallTree)

    given d: Deforest(mode.stdout)
    val (allowErr, evaluate, filteredEntities) = unit.entities match {
      case Var(flags) :: t if flags.startsWith("_LUMBERHACK") => (
        flags.contains("_LUMBERHACK_ERROR"),
        flags.contains("_LUMBERHACK_EVAL"),
        t
      )
      case l => (false, false, l)
    }
    val originalProgram = Program.fromPgrm(Pgrm(filteredEntities))

    output(originalProgram.pp(using InitPpConfig.multilineOn.showIuidOn.showRefEuidOn))
    output("<<<<<<<<<< Original <<<<<<<<<<")
    
    try {
      /* {
        val constraints = d(originalProgram)
        if mode.stdout || mode.verbose then {
          output("\n>>>>>>>>>> initial constraints >>>>>>>>>>")
          output(d.constraints.map((p, c) => s"${p.pp(using InitPpConfig.showPathOn)} <: ${c.pp(using InitPpConfig.showPathOn)}").mkString("\n"))
          output("<<<<<<<<<< initial constraints <<<<<<<<<<")
        }
        d.resolveConstraints
        // d.resolveConstraintsImmutableCache

        if mode.stdout || mode.verbose then {
          output("\n>>>>>>> knots >>>>>>>")
          d.recursiveConstr.toSeq.sortBy(_._1._1.pp(using InitPpConfig)).foreach { r =>
            output(s"${r._1._1.pp(using InitPpConfig)} <: ${r._1._2.pp(using InitPpConfig)}")
            r._2.toSeq.sortBy(_._1.pp(using InitPpConfig)).foreach { p =>
              output(s"\t${p._1.pp(using InitPpConfig.showPolarityOn.showRefEuidOn)}  --->  ${p._2.pp(using InitPpConfig.showPolarityOn.showRefEuidOn)}")
              if !p._1.p.containsSlice(p._2.p) then output("\t!!NOT SUB-PATH")
            }
          }
          output("<<<<<<< knots <<<<<<<")
        }

        if mode.stdout || mode.verbose then {
          output("\n>>>>>>> splitted knots >>>>>>>")
          d.actualKnotsUsingSplit._1.toSeq.sortBy(_._1.pp(using InitPpConfig.showPolarityOn)).foreach { (k, v) =>
            output(s"${k.pp(using InitPpConfig.showRefEuidOn)} --> ${v.toSeq
              .sortBy(_.pp(using InitPpConfig.showPolarityOn.showRefEuidOn))
              .map(v => s"${v.pp(using InitPpConfig.showEuidOn.showRefEuidOn)}").mkString("\n\t")}"
            )
            
            if v.size > 1 then output("\t!!MORE THAN ONE MATCH")
            if !v.forall(vp => k.p.startsWith(vp.p)) then output("\t!!NOT PREFIX")
          }
          output("<<<<<<< splitted knots <<<<<<<")
        }
        
        output("\n>>>>>>> expansion >>>>>>>")
        val callTree = CallTree.callTreeUsingSplitKnot(d)
        // val callTree = CallTree.callTreeUsingNonSplitKnot(d)
        // val callTree = CallTree.callTreeWithoutKnotTying(d)
        output(callTree.pp)
        output("<<<<<<< expansion <<<<<<<")

        if mode.stdout || mode.verbose then {
          output("\n>>>>>>> type variable bounds >>>>>>>")
          val tvs = d.upperBounds.keySet ++ d.lowerBounds.keySet
          tvs.foreach { tv =>
            val ub = d.upperBounds(tv).map(u => s"${u._1.pp(using InitPpConfig.showPolarityOn)} < ${u._2.pp(using InitPpConfig.showPathOn)}")
            val lb = d.lowerBounds(tv).map(l => s"${l._2.pp(using InitPpConfig.showPathOn)} < ${l._1.rev.pp(using InitPpConfig.showPolarityOn)}")
            val tvName = d.varsName(tv)
            output(tvName + ":")
            ub.foreach(u => output(s"\t${tvName}${u}"))
            lb.foreach(l => output(s"\t${l}${tvName}"))
            output("--------------")
          }
          output("<<<<<<< type variable bounds <<<<<<<")
        }

        val (newProg, newd) = originalProgram.expandedWithNewDeforest(callTree)
        output("\n>>>>>>> expanded program >>>>>>>")
        if mode.stdout || mode.verbose then {
          output(newProg.pp(callTree)(using InitPpConfig.multilineOn.showIuidOn.showEuidOn)) 
        }
        output(newProg.pp(callTree)(using InitPpConfig.multilineOn.showIuidOn)) 
        output("<<<<<<< expanded program <<<<<<<")

        

        // =========== run the typer again and do the fusion ==============

        
        newd.debug = mode.stdout
        newd(newProg)
        // newd.resolveConstraintsImmutableCache
        newd.resolveConstraints

        if mode.stdout || mode.verbose then {
          output("\n>>>>>>> type variable bounds after expansion >>>>>>>")
          val tvs = newd.upperBounds.keySet ++ newd.lowerBounds.keySet
          tvs.foreach { tv =>
            val ub = newd.upperBounds(tv).map(u => s"${u._1.pp(using InitPpConfig.showPolarityOn)} < ${u._2.pp(using InitPpConfig.showPathOn)}")
            val lb = newd.lowerBounds(tv).map(l => s"${l._2.pp(using InitPpConfig.showPathOn)} < ${l._1.rev.pp(using InitPpConfig.showPolarityOn)}")
            val tvName = newd.varsName(tv)
            output(tvName + ":")
            ub.foreach(u => output(s"\t${tvName}${u}"))
            lb.foreach(l => output(s"\t${l}${tvName}"))
            output("--------------")
          }
          output("<<<<<<< type variable bounds after expansion <<<<<<<")
        }

        val fusionStrategy = FusionStrategy(newd)
        output("\n>>>>>>> fusion matches >>>>>>>")
        // val fusionMatchStr = newd.fusionMatch.toSeq.sortBy(expr => newd.exprs(expr._1).pp(using InitPpConfig)).map { (p, cs) =>
        //   // newd.exprs(p).pp(using InitPpConfig.showEuidOn) + "\n" +
        //   newd.exprs(p).pp(using InitPpConfig.showIuidOn) + s": $p --->\n" +
        //   cs.toSeq.sortBy(c => newd.exprs(c).pp(using InitPpConfig)).map { c =>
        //     "\t" + newd.exprs(c).pp(using InitPpConfig.showIuidOn) + s": $c"
        //   }.mkString("\n") + (if cs.size > 1 then "\n\t MORE THAN ONE MATCH EXPR" else "")
        // }.mkString("\n")
        // output(fusionMatchStr)
        output(fusionStrategy.ppCtorFinalDestinations)
        output("------------------")
        output(fusionStrategy.ppDtorFinalSources)
        output("<<<<<<< fusion matches <<<<<<<")

        output("\n>>>>>>> new fusion strategy >>>>>>>")
        output(fusionStrategy.ppCtorMap(fusionStrategy.afterRemoveRecursiveStrategies._1))
        output("------------------")
        output(fusionStrategy.ppDtorMap(fusionStrategy.afterRemoveRecursiveStrategies._2))
        // output(fusionStrategy.ppCtorMap(fusionStrategy.afterRemoveMultipleMatch._1))
        // output("------------------")
        // output(fusionStrategy.ppDtorMap(fusionStrategy.afterRemoveMultipleMatch._2))
        // output(fusionStrategy.ppCtorFinalDestinations)
        // output("--------------")
        // output(fusionStrategy.ppDtorFinalSources)
        output("<<<<<<< new fusion strategy <<<<<<<")


        output("\n>>>>>>> after fusion >>>>>>>")
        val prgmAfterFusion = newProg.rewrite(newd)
        output(prgmAfterFusion.pp(callTree)(using InitPpConfig.multilineOn.showIuidOn))
        output("<<<<<<< after fusion <<<<<<<")




        val finalD = Deforest(false)
        finalD(prgmAfterFusion)
        finalD.resolveConstraints

        if evaluate then {
          output("\n>>>>>>> evaluate >>>>>>>")
          val evalStr = prgmAfterFusion.evaluatedSmallStep.map(_.pp(using InitPpConfig.multilineOn.showIuidOn)).mkString("\n")
          // val evalStr = prgmAfterFusion.evaluated.map(_.pp(using InitPpConfig.multilineOn.showIuidOn)).mkString("\n")
          output(evalStr)
          output("<<<<<<< evaluate <<<<<<<")
        }

        // output("\n>>>>>>> new type variable bounds >>>>>>>")
        // val newtvs = newd.upperBounds.keySet ++ d.lowerBounds.keySet
        // newtvs.foreach { tv =>
        //   val ub = d.upperBounds(tv).map(u => s"${u._1.pp} < ${u._2.pp(using true)}")
        //   val lb = d.lowerBounds(tv).map(l => s"${l._2.pp(using true)} < ${l._1.rev.pp}")
        //   val tvName = d.varsName(tv)
        //   output(tvName + ":")
        //   ub.foreach(u => output(s"\t${tvName}${u}"))
        //   lb.foreach(l => output(s"\t${l}${tvName}"))
        //   output("--------------")
        // }
        // output("<<<<<<< new type variable bounds <<<<<<<")

        // output("\n>>>>>>> new knots >>>>>>>")
        // newd.recursiveConstr.foreach { r =>
        //   output(s"${r._1._1.pp} <: ${r._1._2.pp}")
        //   r._2.foreach { p =>
        //     output(s"\t${p._1.pp}  --->  ${p._2.pp}")
        //     if !p._1.p.containsSlice(p._2.p) then output("\t!!NOT SUB-PATH")
        //   }
        // }
        // output("<<<<<<< new knots <<<<<<<")

        // output("\n>>>>>>> new expansion >>>>>>>")
        // // val newCallTree = CallTree.callTreeUsingSplitKnot(d)
        // val newCallTree = CallTree.callTreeUsingNonSplitKnot(newd)
        // val outputString = newCallTree._1.map(_.pp).mkString("\n")
        // output(outputString)
        // output("<<<<<<< new expansion <<<<<<<")
      } */
      
      d(originalProgram)
      d.resolveConstraints
      keepFuse(originalProgram, d, mode, evaluate, output)
      // val (expandedP, expandedD, callTree) = expander(using originalProgram, d, mode, output)
      // val (fusedP, fusedD, stop) = fuser(using expandedP, expandedD, callTree, mode, evaluate, output)
      // fusedD(fusedP)
      // fusedD.resolveConstraints
      // output(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
      // output(fusedP.pp(using InitPpConfig.multilineOn.showIuidOn))

      if allowErr then throw Exception("expect to fail but pass")
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

  def keepFuse(p: Program,
    d: Deforest,
    mode: ModeType,
    evaluate: Boolean,
    output: Str => Unit,
    count: Int = 0,
  ): (Program, Deforest) = {
    val buf = Buffer.empty[String]
    val _output = { (str: String) => buf.append(str); () }

    val (expandedP, expandedD, callTree) = expander(using p, d, mode, _output)
    val (fusedP, fusedD, stop) = fuser(using expandedP, expandedD, callTree, mode, evaluate, _output)
    
    if count == 0 then
      output(buf.mkString("\n"))
    else if !stop then
      output("\n~~~~~~~~~~~~~~~~~~~~~~~ NEXT ITERATION ~~~~~~~~~~~~~~~~~~~~~~~"); output(buf.mkString("\n"))

    if stop then return (p, d)
    if count > 10 then return (fusedP, fusedD)
    
    keepFuse(fusedP, fusedD, mode, evaluate, output, count + 1)
  }

  def expander(
    using p: Program,
    d: Deforest,
    mode: ModeType,
    output: Str => Unit
  ): (Program, Deforest, CallTrees) = {
    // d.resolveConstraints
    // d.resolveConstraintsImmutableCache
    if mode.stdout || mode.verbose then {
      output("\n>>>>>>>>>> initial constraints >>>>>>>>>>")
      output(d.constraints.map((p, c) => s"${p.pp(using InitPpConfig.showPathOn)} <: ${c.pp(using InitPpConfig.showPathOn)}").mkString("\n"))
      output("<<<<<<<<<< initial constraints <<<<<<<<<<")
    }

    if mode.stdout || mode.verbose then {
      output("\n>>>>>>> knots >>>>>>>")
      d.recursiveConstr.toSeq.sortBy(_._1._1.pp(using InitPpConfig)).foreach { r =>
        output(s"${r._1._1.pp(using InitPpConfig)} <: ${r._1._2.pp(using InitPpConfig)}")
        r._2.toSeq.sortBy(_._1.pp(using InitPpConfig)).foreach { p =>
          output(s"\t${p._1.pp(using InitPpConfig.showPolarityOn.showRefEuidOn)}  --->  ${p._2.pp(using InitPpConfig.showPolarityOn.showRefEuidOn)}")
          if !p._1.p.containsSlice(p._2.p) then output("\t!!NOT SUB-PATH")
        }
      }
      output("<<<<<<< knots <<<<<<<")
    }

    if mode.stdout || mode.verbose then {
      output("\n>>>>>>> splitted knots >>>>>>>")
      d.actualKnotsUsingSplit._1.toSeq.sortBy(_._1.pp(using InitPpConfig.showPolarityOn)).foreach { (k, v) =>
        output(s"${k.pp(using InitPpConfig.showRefEuidOn)} --> ${v.toSeq
          .sortBy(_.pp(using InitPpConfig.showPolarityOn.showRefEuidOn))
          .map(v => s"${v.pp(using InitPpConfig.showEuidOn.showRefEuidOn)}").mkString("\n\t")}"
        )
        
        if v.size > 1 then output("\t!!MORE THAN ONE MATCH")
        if !v.forall(vp => k.p.startsWith(vp.p)) then output("\t!!NOT PREFIX")
      }
      output("<<<<<<< splitted knots <<<<<<<")
    }
    
    output("\n>>>>>>> expansion >>>>>>>")
    val callTree = CallTree.callTreeUsingSplitKnot(d)
    // val callTree = CallTree.callTreeUsingNonSplitKnot(d)
    // val callTree = CallTree.callTreeWithoutKnotTying(d)
    output(callTree.pp)
    output("<<<<<<< expansion <<<<<<<")

    if mode.stdout || mode.verbose then {
      output("\n>>>>>>> type variable bounds >>>>>>>")
      val tvs = d.upperBounds.keySet ++ d.lowerBounds.keySet
      tvs.foreach { tv =>
        val ub = d.upperBounds(tv).map(u => s"${u._1.pp(using InitPpConfig.showPolarityOn)} < ${u._2.pp(using InitPpConfig.showPathOn)}")
        val lb = d.lowerBounds(tv).map(l => s"${l._2.pp(using InitPpConfig.showPathOn)} < ${l._1.rev.pp(using InitPpConfig.showPolarityOn)}")
        val tvName = d.varsName(tv)
        output(tvName + ":")
        ub.foreach(u => output(s"\t${tvName}${u}"))
        lb.foreach(l => output(s"\t${l}${tvName}"))
        output("--------------")
      }
      output("<<<<<<< type variable bounds <<<<<<<")
    }

    val (newProg, newd) = p.expandedWithNewDeforest(callTree)
    output("\n>>>>>>> expanded program >>>>>>>")
    if mode.stdout || mode.verbose then {
      output(newProg.pp(callTree)(using InitPpConfig.multilineOn.showIuidOn.showEuidOn)) 
    }
    output(newProg.pp(callTree)(using InitPpConfig.multilineOn.showIuidOn)) 
    output("<<<<<<< expanded program <<<<<<<")
    (newProg, newd, callTree)
  }

  def fuser(
    using p: Program,
    d: Deforest,
    callTree: CallTrees,
    mode: ModeType,
    evaluate: Boolean,
    output: Str => Unit
  ): (Program, Deforest, Boolean) = {
    d.debug = mode.stdout
    d(p)
    // d.resolveConstraintsImmutableCache
    d.resolveConstraints

    if mode.stdout || mode.verbose then {
      output("\n>>>>>>> type variable bounds after expansion >>>>>>>")
      val tvs = d.upperBounds.keySet ++ d.lowerBounds.keySet
      tvs.foreach { tv =>
        val ub = d.upperBounds(tv).map(u => s"${u._1.pp(using InitPpConfig.showPolarityOn)} < ${u._2.pp(using InitPpConfig.showPathOn)}")
        val lb = d.lowerBounds(tv).map(l => s"${l._2.pp(using InitPpConfig.showPathOn)} < ${l._1.rev.pp(using InitPpConfig.showPolarityOn)}")
        val tvName = d.varsName(tv)
        output(tvName + ":")
        ub.foreach(u => output(s"\t${tvName}${u}"))
        lb.foreach(l => output(s"\t${l}${tvName}"))
        output("--------------")
      }
      output("<<<<<<< type variable bounds after expansion <<<<<<<")
    }

    val fusionStrategy = FusionStrategy(d)
    output("\n>>>>>>> fusion matches >>>>>>>")
    // val fusionMatchStr = d.fusionMatch.toSeq.sortBy(expr => d.exprs(expr._1).pp(using InitPpConfig)).map { (p, cs) =>
    //   // d.exprs(p).pp(using InitPpConfig.showEuidOn) + "\n" +
    //   d.exprs(p).pp(using InitPpConfig.showIuidOn) + s": $p --->\n" +
    //   cs.toSeq.sortBy(c => d.exprs(c).pp(using InitPpConfig)).map { c =>
    //     "\t" + d.exprs(c).pp(using InitPpConfig.showIuidOn) + s": $c"
    //   }.mkString("\n") + (if cs.size > 1 then "\n\t MORE THAN ONE MATCH EXPR" else "")
    // }.mkString("\n")
    // output(fusionMatchStr)
    output(fusionStrategy.ppCtorFinalDestinations)
    output("------------------")
    output(fusionStrategy.ppDtorFinalSources)
    output("<<<<<<< fusion matches <<<<<<<")

    output("\n>>>>>>> new fusion strategy >>>>>>>")
    output(fusionStrategy.ppCtorMap(fusionStrategy.afterRemoveRecursiveStrategies._1))
    output("------------------")
    output(fusionStrategy.ppDtorMap(fusionStrategy.afterRemoveRecursiveStrategies._2))
    // output(fusionStrategy.ppCtorMap(fusionStrategy.afterRemoveMultipleMatch._1))
    // output("------------------")
    // output(fusionStrategy.ppDtorMap(fusionStrategy.afterRemoveMultipleMatch._2))
    // output(fusionStrategy.ppCtorFinalDestinations)
    // output("--------------")
    // output(fusionStrategy.ppDtorFinalSources)
    output("<<<<<<< new fusion strategy <<<<<<<")


    output("\n>>>>>>> after fusion >>>>>>>")
    val prgmAfterFusion = p.rewrite(d)
    output(prgmAfterFusion.pp(callTree)(using InitPpConfig.multilineOn.showIuidOn))
    output("<<<<<<< after fusion <<<<<<<")

    if evaluate then {
      output("\n>>>>>>> evaluate >>>>>>>")
      val evalStr = prgmAfterFusion.evaluatedSmallStep.map(_.pp(using InitPpConfig.multilineOn.showIuidOn)).mkString("\n")
      // val evalStr = prgmAfterFusion.evaluated.map(_.pp(using InitPpConfig.multilineOn.showIuidOn)).mkString("\n")
      output(evalStr)
      output("<<<<<<< evaluate <<<<<<<")
    }

    val newD = Deforest(false)
    val newP = prgmAfterFusion.copyDefsToNewDeforest(using newD)._1._1
    newD(newP)
    newD.resolveConstraints
    (newP, newD, fusionStrategy.afterRemoveRecursiveStrategies._1.isEmpty) // if is empty, stop the iterative process
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
