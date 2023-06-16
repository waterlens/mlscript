package mlscript
package lumberhack

import mlscript.{DiffTests, ModeType, TypingUnit, Term, Pgrm}
import mlscript.utils.shorthands.Str
import mlscript.utils.*
import mlscript.codegen.Helpers.inspect as showStructure
import scala.collection.mutable.StringBuilder
import mlscript.lumberhack.utils.*
import scala.collection.mutable.Buffer

class DiffTestLumberhack extends DiffTests {
  import DiffTestLumberhack.*
  override def postProcess(
    mode: ModeType,
    basePath: List[Str],
    testName: Str,
    unit: TypingUnit,
    output: Str => Unit,
    prgmStr: Seq[String]
  ): Unit = {
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

    val originalD = Deforest(mode.stdout)
    val (allowErr, evaluate, filteredEntities) = unit.entities match {
      case Var(flags) :: t if flags.startsWith("_LUMBERHACK") => (
        flags.contains("_LUMBERHACK_ERROR") || mode.lhError,
        flags.contains("_LUMBERHACK_EVAL") || mode.lhEval,
        t
      )
      case l => (mode.lhError, mode.lhEval, l)
    }
    try {
      val (originalProgram, newD) = if mode.lhInHaskell then
        val p = FromHaskell(prgmStr.mkString("\n"))(using Deforest(mode.stdout), output)
        p.d(p) // duplicate multiple usages here to enbale polymorphism
        val initCallTree = CallTree.callTreeUsingSplitKnot(p.d)
        val res = p.expandedWithNewDeforest(initCallTree)
        res
      else if mode.lhInOCaml then
        val p = FromOcaml(prgmStr.mkString("\n"))(using Deforest(mode.stdout), output)
        p.d(p) // duplicate multiple usages here to enbale polymorphism
        val initCallTree = CallTree.callTreeUsingSplitKnot(p.d)
        val res = p.expandedWithNewDeforest(initCallTree)
        res
      else
        val p = Program.fromPgrm(Pgrm(filteredEntities))(using originalD)
        (p, p.d)
      given d: Deforest = newD
      d.debug = mode.stdout || mode.verbose
      
      if mode.stdout || mode.verbose then {
        output(originalProgram.pp(using InitPpConfig.multilineOn.showIuidOn.showEuidOn)) 
      }
      output(originalProgram.pp(using InitPpConfig.multilineOn.showIuidOn.showRefEuidOn))
      if mode.lhGenHaskell then
        output("\t\t---------- unoptimized haskell gen ----------")
        output(HaskellGen(originalProgram).linesIterator.map("\t\t" + _).mkString("\n"))
        output("\t\t---------- unoptimized haskell gen ----------")
      else if mode.lhGenOCaml then
        output("\t\t---------- unoptimized ocaml gen ----------")
        output((new OCamlGen(true))(originalProgram).linesIterator.map("\t\t" + _).mkString("\n"))
        output("\t\t---------- unoptimized ocaml gen ----------")

      output("<<<<<<<<<< Original <<<<<<<<<<")
    
    
      if evaluate then {
        output("\n>>>>>>>>>> Original Eval Res >>>>>>>>>>")
        output(originalProgram.evaluated.map(_.pp(using InitPpConfig.multilineOn.showIuidOn)).mkString("\n"))
        output("<<<<<<<<<< Original Eval Res <<<<<<<<<<")
      }
      
      d(originalProgram)
      d.resolveConstraints
      val iterativeProcessRes = keepFuse(originalProgram, d, mode, evaluate, output)
      
      if evaluate then {
        if !iterativeProcessRes._3.get.forall(
          _.map(_.pp(using InitPpConfig)) == originalProgram.evaluated.map(_.pp(using InitPpConfig))
        ) then throw Exception("output different!")
      }

      if mode.lhGenHaskell then
        output("\n>>>>>>>>>> Generated Haskell >>>>>>>>>>")
        try {
          output(HaskellGen.makeBenchFiles(List(
            ("original" -> originalProgram),
            ("lumberhack" -> iterativeProcessRes._1)
          )))
        } catch { case e =>
          output(s"cannot generate benchmark files: ${e.getMessage()}\n")
          output(HaskellGen(iterativeProcessRes._1))
        }
        output("<<<<<<<<<< Generated Haskell <<<<<<<<<<")
      if mode.lhGenOCaml then
        output("\n>>>>>>>>>> Generated OCaml >>>>>>>>>>")
        val ocamlGen = new OCamlGen(true)
        try {
          ocamlGen.makeBenchFiles(List(
            ("original" -> originalProgram),
            ("lumberhack" -> iterativeProcessRes._1),
            ("lumberhack_pop_out" -> iterativeProcessRes._1.popOutLambdas._1),
          ))
          output("benchmark file generated")
        } catch { case e =>
          output(s"cannot generate benchmark files: ${e.getMessage()}\n")
          output(ocamlGen(iterativeProcessRes._1))
        }
        output("<<<<<<<<<< Generated OCaml <<<<<<<<<<")

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

  def keepFuse(
    p: Program,
    d: Deforest,
    mode: ModeType,
    evaluate: Boolean,
    output: Str => Unit,
    count: Int = 0,
    evalRess: Option[List[List[Expr]]] = Some(Nil),
  ): (Program, Deforest, Option[List[List[Expr]]]) = {
    val buf = Buffer.empty[String]
    val _output = if mode.stdout || mode.verbose || count == 0 then output else { (str: String) => buf.append(str); () }

    val (expandedP, expandedD, callTree) = expander(using p, d, mode, _output)
    val (fusedP, fusedD, stop, evalRes) = fuser(using expandedP, expandedD, callTree, mode, evaluate, _output)
    
    if count > 0 && !stop then
      output("\n~~~~~~~~~~~~~~~~~~~~~~~ NEXT ITERATION ~~~~~~~~~~~~~~~~~~~~~~~"); output(buf.mkString("\n"))
    
    if mode.stdout || mode.verbose then
      output("\n~~~~~~~~~~~~~~~~~~~~~~~ NEXT ITERATION ~~~~~~~~~~~~~~~~~~~~~~~")

    val newEvalRess = evalRes.flatMap(r => evalRess.map(rs => r :: rs))
    if stop then return if count > 0 then (p, d, evalRess) else (fusedP, fusedD, newEvalRess)
    if count > 10 then return (fusedP, fusedD, newEvalRess)
    
    keepFuse(fusedP, fusedD, mode, evaluate, output, count + 1, newEvalRess)
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
      d.actualKnotsUsingSplit._2.toSeq.sortBy(_._1.pp(using InitPpConfig.showPolarityOn)).foreach { (k, v) =>
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
  ): (Program, Deforest, Boolean, Option[List[Expr]]) = {
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
    output(fusionStrategy.ppCtorMap(fusionStrategy.finallyFilteredStrategies._1))
    output("------------------")
    output(fusionStrategy.ppDtorMap(fusionStrategy.finallyFilteredStrategies._2))
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

    var evaluatedExpr: Option[List[Expr]] = None
    if evaluate then {
      output("\n>>>>>>> evaluate >>>>>>>")
      // will only have one toplevel expr
      evaluatedExpr = Some(prgmAfterFusion.evaluated)
      val evalStr = evaluatedExpr.get.map(_.pp(using InitPpConfig.multilineOn.showIuidOn)).mkString("\n")
      // val evalStr = prgmAfterFusion.evaluated.map(_.pp(using InitPpConfig.multilineOn.showIuidOn)).mkString("\n")
      output(evalStr)
      output("<<<<<<< evaluate <<<<<<<")
    }

    val newD = Deforest(false)
    val newP = prgmAfterFusion.copyDefsToNewDeforest(using newD)._1._1
    if mode.stdout || mode.verbose then {
      output("\n>>>>>>> program after copying to new deforest >>>>>>>")
      output(newP.pp(using InitPpConfig.multilineOn.showIuidOn))
      output("<<<<<<< program after copying to new deforest <<<<<<<")
    }
    newD(newP)
    newD.resolveConstraints
    (newP, newD, fusionStrategy.finallyFilteredStrategies._1.isEmpty, evaluatedExpr) // if is empty, stop the iterative process
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
