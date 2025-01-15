package hkmc2

import scala.collection.mutable

import mlscript.utils.*, shorthands.*
import utils.*

import document.*
import codegen.Block
import codegen.llir.LlirBuilder
import hkmc2.syntax.Tree.Ident
import hkmc2.codegen.Path
import hkmc2.semantics.Term.Blk
import hkmc2.codegen.llir.Fresh
import hkmc2.utils.Scope
import hkmc2.codegen.llir.Ctx
import hkmc2.codegen.llir._

abstract class LlirDiffMaker extends BbmlDiffMaker:
  val llir = NullaryCommand("llir")
  val cpp = NullaryCommand("cpp")
  val sllir = NullaryCommand("sllir")
  val scpp = NullaryCommand("scpp")
  val intl = NullaryCommand("intl")

  override def processTerm(trm: Blk, inImport: Bool)(using Raise): Unit = 
    super.processTerm(trm, inImport)
    if llir.isSet then
      val low = ltl.givenIn:
        codegen.Lowering()
      val le = low.program(trm)
      given Scope = Scope.empty
      val fresh = Fresh()
      val fuid = FreshInt()
      val cuid = FreshInt()
      val llb = LlirBuilder(tl)(fresh, fuid, cuid)
      given Ctx = Ctx.empty
      try
        val llirProg = llb.bProg(le)
        if sllir.isSet then
          output("LLIR:")
          output(llirProg.show())
        if cpp.isSet || scpp.isSet then
          val cpp = codegen.cpp.CppCodeGen.codegen(llirProg)
          if scpp.isSet then
            output("\nCpp:")
            output(cpp.toDocument.toString)
        if intl.isSet then
          val intr = codegen.llir.Interpreter(verbose = true)
          output("\nInterpreted:")
          output(intr.interpret(llirProg))
      catch
        case e: LowLevelIRError =>
          output("Stopped due to an error during the Llir generation")
      
