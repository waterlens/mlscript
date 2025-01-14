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
  val scpp = NullaryCommand("scpp")

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
      val llirProg = llb.bProg(le)
      output("LLIR:")
      output(llirProg.show())
      if scpp.isSet then
        val cpp = codegen.cpp.CppCodeGen.codegen(llirProg)
        output("\nCpp:")
        output(cpp.toDocument.print)
