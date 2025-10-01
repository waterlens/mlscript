package hkmc2

import scala.collection.mutable

import mlscript.utils.*, shorthands.*
import utils.*

import document.*
import codegen.Block
import codegen.llir.*
import codegen.cpp.*
import hkmc2.syntax.Tree.Ident
import hkmc2.codegen.Path
import hkmc2.semantics.Term.Blk
import hkmc2.utils.Scope
import hkmc2.codegen.llir._
import hkmc2.codegen.cpp._
import hkmc2.semantics.Elaborator

import scala.collection.mutable.ListBuffer
import scala.concurrent._
import scala.concurrent.duration._

def runWithTimeout[T](timeout: Long)(f: => T) : Option[T] =
  try
    Some(Await.result(Future(f)(ExecutionContext.global), timeout.seconds))
  catch
    case e: TimeoutException => None

abstract class LlirDiffMaker extends BbmlDiffMaker:
  val llir = NullaryCommand("llir")
  val sllir = NullaryCommand("sllir")
  val intl = NullaryCommand("intl")
  val lprelude = NullaryCommand("lpre")

  val showWholeLlir = NullaryCommand("showWholeLlir")

  // C++ codegen generation commands for individual blocks
  val cpp = NullaryCommand("cpp")
  val scpp = NullaryCommand("scpp")
  val rcpp = NullaryCommand("rcpp")
  val wcpp = Command[Str]("wcpp", false)(x => x.stripLeading())

  // C++ codegen generation commands for the whole program
  val wholeCpp = NullaryCommand("wholeCpp")
  val sWholeCpp = NullaryCommand("showWholeCpp")
  val rWholeCpp = NullaryCommand("runWholeCpp")
  val wWholeCpp = Command[Str]("writeWholeCpp", false)(x => x.stripLeading())

  val dopt = NullaryCommand("dopt")

  // Optimizer commands for individual blocks
  val opt = NullaryCommand("opt")
  val sopt = NullaryCommand("sopt")
  val optFlags = Command[Set[Str]]("optf", false)(x => x.stripLeading().split(",").toSet)
  val optStat = NullaryCommand("opts")

  // Optimizer commands for the whole program
  val wholeOpt = NullaryCommand("wholeOpt")
  val sWholeOpt = NullaryCommand("showWholeOpt")
  val wholeOptFlags = Command[Set[Str]]("wholeOptFlags", false)(x => x.stripLeading().split(",").toSet)
  val wholeOptStat = NullaryCommand("wholeOptStat")

  val dumpWholeOpt = Command[Str]("dumpBench", false)(x => x.stripLeading())
  val benchPrep = Command[Str]("benchPrep", false)(x => x.stripLeading())

  def printToFile(f: java.io.File)(op: java.io.PrintWriter => Unit) =
    val p = new java.io.PrintWriter(f)
    try { op(p) } finally { p.close() }

  given Elaborator.Ctx = curCtx

  var freshId = FreshInt()
  var ctx = codegen.llir.Ctx.empty
  val scope = Scope.empty
  val wholeProg = ListBuffer.empty[Program]

  def mkWholeProgram: Program =
    if wholeProg.length == 0 then
      throw new Exception("No program to make")
    else
      Program(
        classes = wholeProg.iterator.flatMap(_.classes).toSet,
        defs = wholeProg.iterator.flatMap(_.defs).toSet,
        entry = wholeProg.last.entry
      )

  override def processTerm(trm: Blk, inImport: Bool)(using Config, Raise): Unit = 
    super.processTerm(trm, inImport)
    if llir.isSet then
      val low = ltl.givenIn:
        codegen.Lowering()
      var le = low.program(trm)
      given Scope = scope
      given Ctx = ctx
      val llb = LlirBuilder(tl, freshId)
      try
        val (llirProg, ctx2) = llb.bProg(le)
        ctx = ctx2
        wholeProg += llirProg
        if sllir.isSet then
          output("LLIR:")
          output(llirProg.show())
        if showWholeLlir.isSet then
          output("Whole LLIR:")
          output(mkWholeProgram.show())
        def optimize(name: String, prog: Program, opt: Bool, show: Bool, showStat: Bool, optFlags: Set[Str]): Program =
          given tl: TraceLogger with
            override def doTrace = dopt.isSet
            override def emitDbg(str: String): Unit = output(str)
          if opt || show then
            tl.log(s"Optimizing $name")
            val opt = codegen.llir.LlirOpt(tl, freshId, optFlags)
            var changed = Status(true)
            var outOptProg = prog
            var count = 0
            while changed.get && count <= 3 do 
              changed.set(false)
              def handleResult(optProg: Program, optStat: List[(Str, opt.ProgStat)]) =
                if show then
                  output(s"\n$name:")
                  output(optProg.show())
                if showStat then
                  output(s"\n$name stats:\n")
                  output(optStat.mkString("\n"))
                outOptProg = optProg
                count += 1
              runWithTimeout(5)(opt.run(outOptProg)(using changed)) match
                case Some((optProg, optStat)) => handleResult(optProg, optStat)
                case None =>
                  count += 1
                  output("Optimization timed out")
            outOptProg
          else
            prog
        val rPath = os.Path(rootPath)
        val auxPath =  
          if rPath.last == "mlscript" then 
            rPath/"hkmc2"/"shared"/"src"/"test"/"mlscript-compile"/"cpp"
          else
            rPath/"src"/"test"/"mlscript-compile"/"cpp"
        def cppGen(name: String, prog: Program, gen: Bool, show: Bool, run: Bool, write: Opt[Str]): Unit =
          tl.log(s"Generating $name")
          if gen || show || run || write.isDefined then
            val cpp = CppCodeGen(ctx.builtin_sym.hiddenClasses, tl).codegen(prog)
            if show then
              output(s"\n$name:")
              output(cpp.toDocument.toString)
            if write.isDefined then
              printToFile(java.io.File((auxPath / s"${write.get}").toString)):
                p => p.println(cpp.toDocument.toString)
            if run then 
              val cppHost = CppCompilerHost(auxPath.toString, output.apply)
              if !cppHost.ready then
                output("\nCpp Compilation Failed: Cpp compiler or GNU Make not found")
              else
                output("\n")
                cppHost.compileAndRun(cpp.toDocument.toString)
        cppGen("Cpp", 
          optimize("Opt", llirProg, opt.isSet, sopt.isSet, optStat.isSet, optFlags.get.getOrElse(Set.empty)), 
          cpp.isSet, scpp.isSet, rcpp.isSet, wcpp.get)
        val prog = mkWholeProgram
        cppGen("WholeProgramCpp",
          optimize("WholeProgramOpt", prog, wholeOpt.isSet, sWholeOpt.isSet, wholeOptStat.isSet, wholeOptFlags.get.getOrElse(Set.empty)),
          wholeCpp.isSet, sWholeCpp.isSet, rWholeCpp.isSet, wWholeCpp.get)
        def baseName(last: String): String =
          val li = last.lastIndexOf('.')
          if (li == -1) last
          else last.slice(0, li)
        if benchPrep.isSet then
          val benchCppName = benchPrep.get.get
          val onlySimp = optimize("OnlySimplify", prog, true, false, false, Set("simp", "!split"))
          val fullOpt = optimize("FullOpt", prog, true, false, false, wholeOptFlags.get.getOrElse(Set.empty))
          if dumpWholeOpt.isSet then
            val dumpName = baseName(dumpWholeOpt.get.get)
            printToFile(java.io.File((auxPath / s"${dumpName}.simp.llir").toString)):
              p => p.println(onlySimp.show())
            printToFile(java.io.File((auxPath / s"${dumpName}.opt.llir").toString)):
              p => p.println(fullOpt.show())
          cppGen("OnlySimplifyCpp", onlySimp, false, false, false, Some(baseName(benchCppName) + ".simp.cxx"))
          cppGen("FullOptCpp", fullOpt, false, false, false, Some(baseName(benchCppName) + ".opt.cxx"))
        if intl.isSet then
          val intr = codegen.llir.Interpreter(tl)
          output("\nInterpreted:")
          output(intr.interpret(llirProg))
      catch
        case e: LowLevelIRError =>
          output("Stopped due to an error during the Llir generation")
        case e: OptErr =>
          output("Stopped due to an error during the optimization")

