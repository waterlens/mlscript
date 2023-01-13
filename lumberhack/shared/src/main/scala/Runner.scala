package mlscript
package lumberhack

import fastparse.*
import fastparse.Parsed.Failure
import fastparse.Parsed.Success
import mlscript.utils.*, shorthands.*
import ammonite.ops.*
import fastparse.Parsed.{Success, Failure}
import ProdStratEnum.*, ConsStratEnum.*
import pprint.Tree, pprint.Tree.*

object Runner:
  def apply(fileName: Str): Unit = ???