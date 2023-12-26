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
  override val timeLimit = TimeLimit
  override protected lazy val files = allFiles.filter { file =>
    val fileName = file.baseName
    validExt(file.ext) && ((modified.isEmpty || modified(file.relativeTo(pwd))) || lumberhackLocalTest(fileName))
  }

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
        // before resolving constraints, there isn't any potential knots to tie,
        // so the method to tie the knot actually does not matter, will always get the
        // same result as "withoutKnotTying"
        // val initCallTree = CallTree.callTreeWithoutKnotTying (p.d)
        // // val initCallTree = CallTree.callTreeUsingSplitKnot(p.d)
        // val res = p.expandedWithNewDeforest(initCallTree)
        // res
        val newp = p.copyToNewDeforestWithDeadDefElim
        newp.d(newp)
        (newp, newp.d)
      else if mode.lhInOCaml then
        val p = FromOcaml(prgmStr.mkString("\n"))(using Deforest(mode.stdout), output)
        p.d(p) // duplicate multiple usages here to enbale polymorphism
        val initCallTree = CallTree.callTreeWithoutKnotTying (p.d)
        // val initCallTree = CallTree.callTreeUsingSplitKnot(p.d)
        val res = p.expandedWithNewDeforest(initCallTree)
        res
      else
        val p = Program.fromPgrm(Pgrm(filteredEntities))(using originalD)
        (p, p.d)
      given d: Deforest = newD
      d.debug = mode.stdout || mode.verbose
      d(originalProgram)
      
      if mode.stdout || mode.verbose then {
        output(originalProgram.pp(using InitPpConfig.multilineOn.showIuidOn.showEuidOn)) 
      }
      output(originalProgram.pp(using InitPpConfig.multilineOn.showIuidOn.showRefEuidOn))
      if mode.lhGenHaskell then
        output("\t\t---------- unoptimized haskell gen ----------")
        output(HaskellGenTests(originalProgram).linesIterator.map("\t\t" + _).mkString("\n"))
        output("\t\t---------- unoptimized haskell gen ----------")
      if mode.lhGenOCaml then
        output("\t\t---------- unoptimized ocaml gen ----------")
        val progStr = (new OCamlGenTests(true, mode))(originalProgram)
        output(progStr.linesIterator.map("\t\t" + _).mkString("\n"))
        if mode.dbg then {
          val declAndMainList = progStr.split(";;").toList
          val (decls, mainExprs) = declAndMainList.splitAt(declAndMainList.length - 1)
          output("\t\t....... ocaml repl result .......")
          val ocamlRepl = new OCamlReplHost()
          decls.foreach { d =>
            ocamlRepl.execute(d + ";;") match {
              case OCamlReplHost.Reply.Err(msg) => throw Exception(msg) 
              case ok => output(ok.toString.linesIterator.map("\t\t" + _).mkString("\n"))
            }
          }
          ocamlRepl.terminate()
          output("\t\t....... ocaml repl result .......")
        }
        output("\t\t---------- unoptimized ocaml gen ----------")
      if mode.lhGenDistill then
        output("\t\t---------- unoptimized distiller gen ----------")
        output(DistillerGen(originalProgram).linesIterator.map("\t\t" + _).mkString("\n"))
        output("\t\t---------- unoptimized distiller gen ----------")


      output("<<<<<<<<<< Original <<<<<<<<<<")
    
    
      if evaluate then {
        output("\n>>>>>>>>>> Original Eval Res >>>>>>>>>>")
        output(originalProgram.evaluated.map(_.pp(using InitPpConfig.multilineOn.showIuidOn)).mkString("\n"))
        output("<<<<<<<<<< Original Eval Res <<<<<<<<<<")
      }
      
      // d.resolveConstraints
      val iterativeProcessRes = keepFuse(originalProgram, d, mode, evaluate, output)
      
      if evaluate then {
        if !iterativeProcessRes._3.get.forall(
          _.map(_.pp(using InitPpConfig)) == originalProgram.evaluated.map(_.pp(using InitPpConfig))
        ) then throw Exception("output different!")
      }

      if mode.lhGenHaskell then
        output("\n>>>>>>>>>> Generated Haskell >>>>>>>>>>")
        try {
          output(HaskellGenTests.makeBenchFiles(List(
            ("original" -> originalProgram),
            ("lumberhack" -> iterativeProcessRes._1)
          )))
        } catch { case e =>
          output(s"cannot generate benchmark files: ${e.getMessage()}\n")
          output(HaskellGenTests(iterativeProcessRes._1))
        }
        output("<<<<<<<<<< Generated Haskell <<<<<<<<<<")
      if mode.lhGenOCaml then
        output("\n>>>>>>>>>> Generated OCaml >>>>>>>>>>")
        val ocamlGen = new OCamlGenTests(true, mode)
        if mode.dbg || mode.stdout then
          output("\n>>>>>>>>>> deadcode elimination info >>>>>>>>>>")
          output(iterativeProcessRes._1.d.exprToProdType.map { case (id, tpe) =>
            val d = iterativeProcessRes._1.d
            val exprStr = d.exprs(id).pp(using InitPpConfig)
            val tpeStr = tpe.pp(using InitPpConfig)
            val upperBoundsStr = tpe.s match {
              case v: ProdStratEnum.ProdVar =>
                s" <: [${d.upperBounds(v.uid).map { case (_, cons) =>
                  cons.s.pp(using InitPpConfig)
                }.mkString(" | ")}]"
              case _ => ""
            }
            val representsDeadCodeStr = tpe.s.representsDeadCode(using d)
            s"$exprStr :: $tpeStr$upperBoundsStr ::: $representsDeadCodeStr"
          }.mkString("\n"))
          output("<<<<<<<<<< deadcode elimination info <<<<<<<<<<")
        try {
          ocamlGen.makeBenchFilesSeparate((
            Some("original" -> {
              if mode.lhInHaskell then
                val p = FromHaskell(prgmStr.mkString("\n"))(using Deforest(mode.stdout), output);
                p.d(p)
                val newp = p.copyToNewDeforestWithDeadDefElim
                newp.d(newp)
                newp
              else originalProgram
            }) ::
            (if mode.lhInHaskell then Some("lumberhack_only_expanded" -> originalProgram) else None) ::
            Some("lumberhack" -> iterativeProcessRes._1.deadCodeToMagic) :: 
            Some("lumberhack_pop_out" -> iterativeProcessRes._1.deadCodeToMagic.popOutLambdas(using mode.lhLessExpansion)._1) ::
            Nil
          ).flatten)
          output("benchmark file generated")
        } catch { case e =>
          output(s"cannot generate benchmark files: ${e.getMessage()}\n")
          // e.printStackTrace()
          // output(s"cannot generate benchmark files: ${e.getMessage()}\n${e.getStackTrace().mkString("\n")}")
          val progStr = ocamlGen(iterativeProcessRes._1.deadCodeToMagic)
          // val clipboard = java.awt.Toolkit.getDefaultToolkit.getSystemClipboard
          // val declClipboard = new java.awt.datatransfer.StringSelection(decl ++ ";;")
          // val mainExprClipboard = new java.awt.datatransfer.StringSelection(mainExpr)
          // clipboard.setContents(declClipboard, declClipboard)
          output(progStr)
          if mode.dbg then {
            val declAndMainExpr = progStr.split(";;").toList
            output("\n--------------- ocaml repl result -----------------")
            val ocamlRepl = new OCamlReplHost()
            val (decls, mainExprs) = declAndMainExpr.splitAt(declAndMainExpr.length - 1)
            decls.foreach { d =>
              ocamlRepl.execute(d + ";;") match {
                case OCamlReplHost.Reply.Err(msg) => throw Exception(msg) 
                case ok => // output(ok.toString.linesIterator.map("\t\t" + _).mkString("\n"))
              }
            }
            mainExprs.foreach { e =>
              ocamlRepl.execute(e + ";;") match {
                case OCamlReplHost.Reply.Err(msg) => throw Exception(msg) 
                case ok => output(ok.toString.linesIterator.mkString("\n"))
              }
            }
            // (declAndMainExpr match {
            //   case decl :: mainExpr :: Nil => {
            //     ocamlRepl.execute(decl + ";;").flatMap(_ => ocamlRepl.execute(mainExpr + ";;"))
            //   }
            //   case mainExpr :: Nil => ocamlRepl.execute(mainExpr + ";;")
            //   case _ => lastWords("unknown program structure")
            // }) match {
            //   case OCamlReplHost.Reply.Err(msg) => throw Exception(msg) 
            //   case ok => output(ok.toString)
            // }
            ocamlRepl.terminate()
            output("\n--------------- ocaml repl result -----------------")
          }
        }
        output("<<<<<<<<<< Generated OCaml <<<<<<<<<<")

      if newD.errorTypes.nonEmpty then
        throw Exception(s"type error ${newD.errorTypes}")
      
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

    val (expandedP, expandedD, callTree) =
      if mode.lhLessExpansion && count == 0 && mode.lhInHaskell && mode.lhGenOCaml then
        (p, d, None)
      else
        val res = expander(using p, d, mode, _output)
        res._2(res._1) // need to apply the deforest object once before resolving constraints
        res
    val (fusedP, fusedD, stop, evalRes) = fuser(using expandedP, expandedD, callTree, mode, evaluate, _output)
    
    if count > 0 && !stop then
      output("\n~~~~~~~~~~~~~~~~~~~~~~~ NEXT ITERATION ~~~~~~~~~~~~~~~~~~~~~~~"); output(buf.mkString("\n"))
    
    if mode.stdout || mode.verbose then
      output("\n~~~~~~~~~~~~~~~~~~~~~~~ NEXT ITERATION ~~~~~~~~~~~~~~~~~~~~~~~")

    val newEvalRess = evalRes.flatMap(r => evalRess.map(rs => r :: rs))
    if stop then
      if count > 0 then (p, d, evalRess) else (fusedP, fusedD, newEvalRess)
    else if count > 10 || mode.lhNoIter then
      (fusedP, fusedD, newEvalRess)
    else
      keepFuse(fusedP, fusedD, mode, evaluate, output, count + 1, newEvalRess)
  }

  def expander(
    using p: Program,
    d: Deforest,
    mode: ModeType,
    output: Str => Unit
  ): (Program, Deforest, Some[CallTrees]) = {
    d.resolveConstraints
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
    newd.debug = mode.stdout
    (newProg, newd, Some(callTree))
  }

  def fuser(
    using p: Program,
    d: Deforest,
    callTree: Option[CallTrees],
    mode: ModeType,
    evaluate: Boolean,
    output: Str => Unit
  ): (Program, Deforest, Boolean, Option[List[Expr]]) = {
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


    val prgmAfterFusion = p.rewrite(d, fusionStrategy)
    output("\n>>>>>>> after fusion >>>>>>>")
    output(callTree match {
      case None => prgmAfterFusion.pp(using InitPpConfig.multilineOn.showIuidOn)
      case Some(callTree) => prgmAfterFusion.pp(callTree)(using InitPpConfig.multilineOn.showIuidOn)
    })
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

    val newD = Deforest(mode.stdout || mode.verbose)
    val newP = prgmAfterFusion.copyDefsToNewDeforest(using newD)._1._1
    if mode.stdout || mode.verbose then {
      output("\n>>>>>>> program after copying to new deforest >>>>>>>")
      output(newP.pp(using InitPpConfig.multilineOn.showIuidOn))
      output("<<<<<<< program after copying to new deforest <<<<<<<")
    }
    newD(newP)
    // newD.resolveConstraints
    (newP, newD, fusionStrategy.finallyFilteredStrategies._1.isEmpty, evaluatedExpr) // if is empty, stop the iterative process
  }

}

object DiffTestLumberhack {
  import org.scalatest.time._
  private val TimeLimit =
    if (sys.env.get("CI").isDefined) Span(25, Seconds)
    else Span(90, Seconds)
  private val pwd = os.pwd
  private val dir = pwd/"lumberhack"/"shared"/"src"/"test"/"resources"
  private val allFiles = os.walk(dir)
  private val validExt = Set("mls")
  private val modified: Set[os.RelPath] = DiffTests.findModifiedFiles(dir)
  // private val lumberhackLocalTest = Set[Str]("_LocalTest")
  private val lumberhackLocalTest = Set[Str]()
}

object OCamlReplHost {
  enum Reply(msg: String) {
    case Ok(msg: String) extends Reply(msg)
    case Err(msg: String) extends Reply(msg)

    override lazy val toString: String = this match {
      case Ok(res) => s"[ok]\n$res"
      case Err(res) => s"[error]\n$res"
    }

    def flatMap(f: String => Reply) = this match {
      case Ok(res) => f(res)
      case Err(res) => this
    }
  }
}
final case class OCamlReplHost(limit: Int = 2000) {
  import java.io.{BufferedWriter, BufferedReader, InputStreamReader, OutputStreamWriter}
  private val builder = new java.lang.ProcessBuilder()
  
  import OCamlReplHost.Reply.*

  // NOTE: this should be the ocaml repl location
  builder.command("/Users/crescentonc/.opam/benchmarkflambda/bin/ocaml", "-rectypes")
  private val proc = builder.start()

  private val stdin = new BufferedWriter(new OutputStreamWriter(proc.getOutputStream))
  private val stdout = new BufferedReader(new InputStreamReader(proc.getInputStream))
  private val stderr = new BufferedReader(new InputStreamReader(proc.getErrorStream))

  // Skip the welcome message.
  collectUntilPrompt()

  private def collectUntilPrompt(): OCamlReplHost.Reply = {
    val buffer = new StringBuilder()
    while (!buffer.endsWith("\n# ") && buffer.size < limit) {
      buffer.append(stdout.read().toChar)
    }
    // Remove the trailing `"\n# "`
    buffer.delete(buffer.length - 3, buffer.length)
    val reply = buffer.toString()
    reply.linesIterator.find(_.startsWith("Error: ")).fold(Ok(reply))(_ => Err(reply))
  }

  private def send(code: Str): Unit = {
    stdin.write(if (code endsWith "\n") code else code + "\n")
    stdin.flush()
  }

  def execute(code: Str): OCamlReplHost.Reply = {
    send(code)
    collectUntilPrompt()
  }

  def terminate(): Unit = proc.destroy()
}

import mlscript.utils.shorthands.*
class OCamlGenTests(
  usePolymorphicVariant: Boolean,
  val mode: ModeType,
  backToBuiltInType: Boolean = false
) extends OCamlGen(usePolymorphicVariant, backToBuiltInType) {
  var largeStrIdents = scala.collection.mutable.Map.empty[String, Int]
  val largeStrPrefix = "lh_large_str_"
  override def handleLargeString(s: String): Document =
    val nextId = this.largeStrIdents.getOrElseUpdate(s, largeStrIdents.size)
    Raw(s"${largeStrPrefix}${nextId}")
  def makeBenchFiles(programs: List[String -> Program]): String = {
    val useModule = mode.lhLessExpansion
    assert(programs.length >= 2)
    assert(programs.head._1 == "original")
    val benchName = (programs.head._2.defAndExpr._2 match {
      case Expr.Call(Expr.Ref(test), Expr.Call(Expr.Ref(primId), _)) :: Nil
        if test.tree.name.startsWith("test") && primId.tree.name == "primId" =>
        test.tree.name.drop(4).filter(_ <= 0x7f).reverse.dropWhile(_ == '_').reverse // keep only valid ASCII characters, and drop the possibly last "_"
      // with manually fuse tests
      case Expr.Call(Expr.Ref(test), Expr.Call(Expr.Ref(primId1), arg1))
        :: Expr.Call(Expr.Ref(testManual), Expr.Call(Expr.Ref(primId2), arg2))
        :: Nil
        if test.tree.name.startsWith("test") && primId1.tree.name == "primId"
          && testManual.tree.name.startsWith("testManual") && primId1 == primId2
          && arg1.pp(using InitPpConfig) == arg2.pp(using InitPpConfig) =>
        test.tree.name.drop(4).filter(_ <= 0x7f).reverse.dropWhile(_ == '_').reverse // keep only valid ASCII characters, and drop the possibly last "_"
      case _ => lastWords(
        "benchmark requires a method of name `testxxx` calling a value wrapped in `primId`"
          + "\n and if there are manually fused benchmarks, there should be a call to `testManual`"
          + "with exact the same parameter following the `testxxx`"
      )
    }).emptyOrElse(programs.hashCode().toString())

    val originalDefsString =
      "\n(* original *)\n" +
      (if useModule then "module Module_original = struct\n" else "") +
      apply(
        Program(
          programs.head._2.contents.filter(_.isLeft)
        )(using programs.head._2.d),
        false
      ) +
      (if useModule then "\nend;;\n" else "")

    val restMergedDefsString = programs.tail.map { case (name, prgm) =>
      s"\n\n(* $name *)\n" +
      (if useModule then s"module Module_$name = struct\n" else "") +
      apply(
        Program(
          prgm.contents.filter {
            case Left(ProgDef(id, _)) =>
              !(id.tree.name.startsWith("_lhManual") || id.tree.name.startsWith("testManual"))
            case _ => false
          }
        )(using prgm.d),
        false
      ) +
      (if useModule then "\nend;;\n" else "")
    }.mkString + "\n"
    val largeStrDefs = this.largeStrIdents.map { case (s, id) =>
      s"let ${largeStrPrefix}${id} = listToTaggedList (explode_string \"${s}\");;"
    }.mkString("\n")
    val mergedDefsGen = originalDefsString + restMergedDefsString

    val benchRunGen = 
      if useModule then
        (programs.head._2.defAndExpr._2 match {
          case e :: Nil =>
            (s"original_${benchName}" -> s"let open Module_original in (${this.rec(e).print})") :: Nil
          case e :: m :: Nil =>
            (s"original_${benchName}" -> s"let open Module_original in (${this.rec(e).print})")
            :: (s"manual_${benchName}" -> s"let open Module_original in (${this.rec(m).print})") :: Nil
          case _ => lastWords("unreachable")
        }).appendedAll(programs.tail.map { case (name, prgm) =>
          s"${name}_${benchName}" -> s"let open Module_$name in (${this.rec(prgm.defAndExpr._2.head).print})"
        })
      else
        (programs.head._2.defAndExpr._2 match {
          case e :: Nil => (s"original_${benchName}" -> this.rec(e).print) :: Nil
          case e :: m :: Nil => (s"original_${benchName}" -> this.rec(e).print)
            :: (s"manual_${benchName}" -> this.rec(m).print) :: Nil
          case _ => lastWords("unreachable")
        }).appendedAll(programs.tail.map { case (name, prgm) =>
          s"${name}_${benchName}" -> this.rec(prgm.defAndExpr._2.head).print
        })
    val mainGen = stack(
      Raw("Command_unix.run (Bench.make_command ["),
      Indented(Stacked(
        benchRunGen.map { case (name, doc) =>
          Raw(s"Bench.Test.create ~name:\"$name\" (fun () -> ignore ($doc));")
        },
        false
      )),
      Raw("])")
    )
    val compileAndRunCommand =
      s"touch ./$benchName.mli && ocamlc ./$benchName.mli "
        + s"&& ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./$benchName.ml -o \"./$benchName.out\""
        + s" -linkpkg -package \"core_unix.command_unix\" -linkpkg -package \"core_bench\" "
        + s"&& ./$benchName.out "
        + "&& rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli"
    val hsFileContent = Stacked(
      Raw(s"(*\n$compileAndRunCommand\n*)") :: headers :: (if largeStrDefs.nonEmpty then Raw(largeStrDefs) :: Nil else Nil)
        ::: (if this.usePolymorphicVariant then Nil else (Raw(generateTypeInfo(programs.head._2.d)) :: Nil))
        ::: (Raw(mergedDefsGen) :: mainGen :: Nil),
      false
    ).print
    

    import sys.process.*
    import java.io._
    s"mkdir -p ./lumberhack-ocaml-benchmark/".!
    val hsFw = new FileWriter(s"./lumberhack-ocaml-benchmark/$benchName.ml", false)
    hsFw.write(hsFileContent + "\n")
    hsFw.close()

    hsFileContent
  }

  def makeBenchFilesSeparate(programs: List[String -> Program]): Unit = {
    assert(mode.lhLessExpansion)
    assert(programs.length >= 2)
    assert(programs.head._1 == "original")
    val benchName = (programs.head._2.defAndExpr._2 match {
      case Expr.Call(Expr.Ref(test), Expr.Call(Expr.Ref(primId), _)) :: Nil
        if test.tree.name.startsWith("test") && primId.tree.name == "primId" =>
        test.tree.name.drop(4).filter(_ <= 0x7f).reverse.dropWhile(_ == '_').reverse // keep only valid ASCII characters, and drop the possibly last "_"
      // with manually fuse tests
      case Expr.Call(Expr.Ref(test), Expr.Call(Expr.Ref(primId1), arg1))
        :: Expr.Call(Expr.Ref(testManual), Expr.Call(Expr.Ref(primId2), arg2))
        :: Nil
        if test.tree.name.startsWith("test") && primId1.tree.name == "primId"
          && testManual.tree.name.startsWith("testManual") && primId1 == primId2
          && arg1.pp(using InitPpConfig) == arg2.pp(using InitPpConfig) =>
        test.tree.name.drop(4).filter(_ <= 0x7f).reverse.dropWhile(_ == '_').reverse // keep only valid ASCII characters, and drop the possibly last "_"
      case _ => lastWords(
        "benchmark requires a method of name `testxxx` calling a value wrapped in `primId`"
          + "\n and if there are manually fused benchmarks, there should be a call to `testManual`"
          + "with exact the same parameter following the `testxxx`"
      )
    }).emptyOrElse(programs.hashCode().toString())

    val longestNameSize = programs.maxBy(_._1.length)._1.length + "Module_".length + 1

    val commonFileString = (
      "Lumherhack_Common",
      """
module Lumherhack_Common = struct
let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))
end;;
"""
    )

    val largeStrFileString = {
      // val largeStrDefs = this.largeStrIdents.map { case (s, id) =>
      //   s"let ${largeStrPrefix}${id} = listToTaggedList (explode_string \"${s}\");;"
      // }.mkString("\n")
      // (
      //   "Lumberhack_LargeStr",
      //   "open Lumherhack_Common.Lumherhack_Common;;\n" +
      //   s"module Lumberhack_LargeStr = struct\n$largeStrDefs\nend;;\n"
      // )
      ("Lumberhack_LargeStr", "")
    }

    val originalDefsString = (
      "Module_original".padTo(longestNameSize, '_'),
      "\n(* original *)\n" +
      "open Lumherhack_Common.Lumherhack_Common;;\n" +
      "open Lumberhack_LargeStr.Lumberhack_LargeStr;;\n" +
      s"module ${"Module_original".padTo(longestNameSize, '_')} = struct\n" +
      apply(
        Program(
          programs.head._2.contents.filter(_.isLeft)
        )(using programs.head._2.d),
        false
      ) +
      "\nend;;\n"
    )

    val restMergedDefsString = programs.tail.map { case (name, prgm) =>
      (
        s"Module_$name".padTo(longestNameSize, '_'),
        (
          s"\n\n(* $name *)\n" +
          "open Lumherhack_Common.Lumherhack_Common;;\n" +
          "open Lumberhack_LargeStr.Lumberhack_LargeStr;;\n" +
          s"module ${s"Module_$name".padTo(longestNameSize, '_')} = struct\n" +
          apply(
            Program(
              prgm.contents.filter {
                case Left(ProgDef(id, _)) => true
                  // (!(id.tree.name.startsWith("_lhManual") || id.tree.name.startsWith("testManual")))
                case _ => false
              }
            )(using prgm.d),
            false
          ) +
          "\nend;;\n"
        )
      )
    }

    val mainFileString = {
      val compileAndRunCommand = {
        val allFileNames =
          (commonFileString ::
          largeStrFileString ::
          originalDefsString ::
          restMergedDefsString).map("./" + _._1 + ".ml") :+ "./main.ml"
        "ocamlfind ocamlopt -rectypes -thread -O3 -w -A " +
        allFileNames.mkString(" ") +
        s" -o $benchName.out" +
        s" -linkpkg -package \"core_unix.command_unix\" -linkpkg -package \"core_bench\" "+
        s"&& ./$benchName.out +time"
      }
      
      val mainGen = {
        val benchRunGen = 
          (programs.head._2.defAndExpr._2 match {
            case e :: Nil =>
              (s"original_${benchName}" ->
                s"let open ${val n = "Module_original".padTo(longestNameSize, '_'); s"$n.$n"} in (${this.rec(e).print})") :: Nil
            case e :: m :: Nil => List(
              (s"original_${benchName}" -> s"let open ${val n = "Module_original".padTo(longestNameSize, '_'); s"$n.$n"} in (${this.rec(e).print})"),
              (s"manual_${benchName}" -> s"let open ${val n = "Module_original".padTo(longestNameSize, '_'); s"$n.$n"} in (${this.rec(m).print})")
            )
            case _ => lastWords("unreachable")
          }).appendedAll(programs.tail.map { case (name, prgm) =>
            s"${name}_${benchName}" -> s"let open ${val n = s"Module_$name".padTo(longestNameSize, '_'); s"$n.$n"} in (${this.rec(prgm.defAndExpr._2.head).print})"
          })
        stack(
          Raw("Command_unix.run (Bench.make_command ["),
          Indented(Stacked(
            benchRunGen.map { case (name, doc) =>
              Raw(s"Bench.Test.create ~name:\"$name\" (fun () -> ignore ($doc));")
            },
            false
          )),
          Raw("])")
        )
      }

      (
        "main",
        Stacked(
          Raw(s"(*\n$compileAndRunCommand\n*)") ::
          Raw("open Core_bench;;") ::
          mainGen ::
          Nil,
          false
        ).print
      )
    }

    import sys.process.*
    import java.io._
    val pathPrefix = if benchName.contains("_nofib") then s"./new-nofib-ocaml-gen/$benchName" else s"./ocaml-gen/$benchName"
    s"mkdir -p $pathPrefix".!
    (commonFileString ::
    (
      "Lumberhack_LargeStr",
      {
        val largeStrDefs = this.largeStrIdents.map { case (s, id) =>
          s"let ${largeStrPrefix}${id} = listToTaggedList (explode_string \"${s}\");;"
        }.mkString("\n")
        "open Lumherhack_Common.Lumherhack_Common;;\n" +
        s"module Lumberhack_LargeStr = struct\n$largeStrDefs\n" +
        s"${if this.usePolymorphicVariant then "end" else (generateTypeInfo(programs.head._2.d) + "\nend")};;\n"
      }
    ) ::
    originalDefsString ::
    restMergedDefsString :::
    (mainFileString :: Nil)).foreach { case (fileName, fileContent) =>
      // s"touch $pathPrefix/$fileName.ml".!
      val fw = new FileWriter(s"$pathPrefix/$fileName.ml", false)
      fw.write(fileContent + "\n")
      fw.close()
    }
  }
}

object HaskellGenTests extends HaskellGen {
    // rely on the fact that toplevel expressions are always in the front of the program
  def makeBenchFiles(programs: List[String -> Program]): String = {
    assert(programs.length >= 2)
    assert(programs.head._1 == "original")
    val benchName = (programs.head._2.defAndExpr._2 match {
      case Expr.Call(Expr.Ref(test), Expr.Call(Expr.Ref(primId), _)) :: Nil
        if test.tree.name.startsWith("test") && primId.tree.name == "primId" =>
        test.tree.name.drop(4).filter(_ <= 0x7f).reverse.dropWhile(_ == '_').reverse // keep only valid ASCII characters, and drop the possibly last "_"
      case _ => lastWords("benchmark requires a method of name `testxxx` calling a value wrapped in `primId`")
    }).emptyOrElse(programs.hashCode().toString())
    // val bigADT = HaskellGen.generateTypeInfo(original.d)

    val mergedDefsGen = programs.map { case (name -> prgm) =>
      val defsPrgm = Program(prgm.contents.tail)(using prgm.d)
      s"\n\n--- $name ---\n" + (new HaskellGen)(defsPrgm)
    }.mkString.drop(1) + "\n"

    val mainTestGen = (Indented(Stacked(programs.reverse.zipWithIndex.map { case (name -> prgm) -> idx =>
      Raw(s"${if idx == 0 then "  " else ", "}bench \"${name}_${benchName}\" $$ nf ")
        <:> Raw(((new HaskellGen).rec(prgm.defAndExpr._2.head).print).drop(1).dropRight(1))
    })) <:> Raw(" ] ]"))
    // val mainTestGen = stack(
    //   Raw(s"  bench $"lumberhack_$benchName$" $$ nf ")
    //     <:> Raw((HaskellGen.rec(optimized.defAndExpr._2.head).print).drop(1).dropRight(1)),
    //   Raw(s", bench $"original_$benchName$" $$ nf ")
    //     <:> Raw((HaskellGen.rec(original.defAndExpr._2.head).print).drop(1).dropRight(1)) <:> Raw(" ] ]")
    // )
    val mainGen = stack(
      Raw("main :: IO ()"),
      Raw(s"main = defaultMain [ bgroup \"$benchName\" ["),
      mainTestGen
    )
    val hsFileContent = stack(
      headers,
      // Raw(bigADT + "\n"),
      Raw(mergedDefsGen),
      mainGen
    ).print
    val cabalFileContent = s"""name: lumberhack-bench-$benchName
                              |version: 0
                              |build-type: Simple
                              |cabal-version: >= 1.6
                              |
                              |executable $benchName
                              |  main-is: $benchName.hs
                              |  extensions: ExtendedDefaultRules
                              |  ghc-options: -fno-strictness -O2
                              |  build-depends:
                              |    base == 4.*,
                              |    criterion
                              |    """.stripMargin

    import sys.process.*
    import java.io._
    s"mkdir -p ./lumberhack-haskell-benchmark/$benchName".!
    val hsFw = new FileWriter(s"./lumberhack-haskell-benchmark/$benchName/$benchName.hs", false)
    hsFw.write(hsFileContent + "\n")
    hsFw.close()
    val cabalFw = new FileWriter(s"./lumberhack-haskell-benchmark/$benchName/$benchName.cabal", false)
    cabalFw.write(cabalFileContent)
    cabalFw.close()

    hsFileContent
  }
}