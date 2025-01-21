package hkmc2
package syntax

import collection.mutable
import mlscript.utils.*, shorthands.*


class Keyword(
    val name: String,
    val leftPrec: Opt[Int],
    val rightPrec: Opt[Int],
    
    /** If the operator can be used infix, can it be done on a newline (witth no indent)?
        For instance, if `via` has `canStartInfixOnNewLine`, then one can write:
          foo
          via f
          via g
        But `is` does not have `canStartInfixOnNewLine` so that
          if x
            is A then foo
            is B then bar
        does not parse as
          if x { is A then foo { is B then ... } }
        Note: Currently, this just fails to parse.
        We should probably rather make `is` a normal operator like `+`; then it would work.
      */
    val canStartInfixOnNewLine: Bool = true
):
  Keyword.all += name -> this
  def assumeLeftPrec: Int = leftPrec.getOrElse(lastWords(s"$this does not have left precedence"))
  def assumeRightPrec: Int = rightPrec.getOrElse(lastWords(s"$this does not have right precedence"))
  def leftPrecOrMin: Int = leftPrec.getOrElse(Int.MinValue)
  def rightPrecOrMin: Int = rightPrec.getOrElse(Int.MinValue)
  def rightPrecOrMax: Int = rightPrec.getOrElse(Int.MaxValue)
  override def toString: Str = s"keyword '$name'"

object Keyword:
  def unapply(kw: Keyword): Opt[Str] = S(kw.name)
  
  val all: mutable.Map[Str, Keyword] = mutable.Map.empty
  
  // val Let = Keyword("let", 0, 0)
  // val Let = Keyword("let", 0, 0)
  
  private var _curPrec = 2
  private def curPrec: S[Int] = S(_curPrec)
  private def nextPrec: S[Int] =
    _curPrec += 1
    S(_curPrec)
  
  val `class` = Keyword("class", N, curPrec)
  val `val` = Keyword("val", N, curPrec)
  val `mut` = Keyword("mut", N, curPrec)
  
  val eqPrec = nextPrec
  val ascPrec = nextPrec // * `x => x : T` should parsed as `x => (x : T)`
  val `=` = Keyword("=", eqPrec, eqPrec)
  val `:` = Keyword(":", ascPrec, eqPrec)
  val `..` = Keyword("..", N, N)
  val `...` = Keyword("...", N, N)
  // val `;` = Keyword(";", ascPrec, eqPrec)
  
  val `if` = Keyword("if", N, nextPrec)
  val `while` = Keyword("while", N, curPrec)
  
  val `case` = Keyword("case", N, curPrec)
  
  val thenPrec = nextPrec
  val `then` = Keyword("then", thenPrec, thenPrec)
  val `do` = Keyword("do", thenPrec, thenPrec)
  
  val `else` = Keyword("else", nextPrec, curPrec)
  val `fun` = Keyword("fun", N, N)
  // val `val` = Keyword("val", N, N)
  val `var` = Keyword("var", N, N)
  val `of` = Keyword("of", N, N)
  val `or` = Keyword("or", nextPrec, curPrec)
  val `and` = Keyword("and", nextPrec, nextPrec)
  val `is` = Keyword("is", nextPrec, curPrec, canStartInfixOnNewLine = false)
  val `as` = Keyword("as", nextPrec, curPrec)
  val `let` = Keyword("let", nextPrec, curPrec)
  val `handle` = Keyword("handle", nextPrec, curPrec)
  val `region` = Keyword("region", curPrec, curPrec)
  val `rec` = Keyword("rec", N, N)
  val `in` = Keyword("in", curPrec, curPrec)
  val `out` = Keyword("out", N, curPrec)
  val `set` = Keyword("set", N, curPrec)
  val `declare` = Keyword("declare", N, N)
  val `trait` = Keyword("trait", N, N)
  val `mixin` = Keyword("mixin", N, N)
  val `interface` = Keyword("interface", N, N)
  val `restricts` = Keyword("restricts", eqPrec, nextPrec)
  val `extends` = Keyword("extends", nextPrec, nextPrec)
  val `with` = Keyword("with", curPrec, curPrec)
  val `override` = Keyword("override", N, N)
  val `super` = Keyword("super", N, N)
  val `new` = Keyword("new", N, curPrec) // TODO: check the prec
  // val `namespace` = Keyword("namespace", N, N)
  val `module` = Keyword("module", N, curPrec)
  val `object` = Keyword("object", N, curPrec)
  val `open` = Keyword("open", N, curPrec)
  val `type` = Keyword("type", N, N)
  val `where` = Keyword("where", N, N)
  val `forall` = Keyword("forall", N, N)
  val `exists` = Keyword("exists", N, N)
  val `null` = Keyword("null", N, N)
  val `undefined` = Keyword("undefined", N, N)
  val `abstract` = Keyword("abstract", N, N)
  val `constructor` = Keyword("constructor", N, N)
  val `virtual` = Keyword("virtual", N, N)
  val `true` = Keyword("true", N, N)
  val `false` = Keyword("false", N, N)
  val `public` = Keyword("public", N, N)
  val `private` = Keyword("private", N, N)
  val `return` = Keyword("return", N, curPrec)
  val `throw` = Keyword("throw", N, curPrec)
  val `import` = Keyword("import", N, curPrec)
  val `this` = Keyword("this", N, N)
  val `outer` = Keyword("outer", N, N)
  val `pattern` = Keyword("pattern", N, N)
  
  // * The lambda operator is special:
  // *  it should associate very strongly on the left and very loosely on the right
  // *  so that we can write things like `f() |> x => x is 0` ie `(f()) |> (x => (x is 0))`
  val `=>` = Keyword("=>", nextPrec, eqPrec)
  val `->` = Keyword("->", curPrec, eqPrec)
  
  val __ = Keyword("_", N, N)
  
  val modifiers = Set(
    `abstract`, mut, virtual, `override`, declare, public, `private`)
  
  type Infix = `and`.type | `or`.type | `then`.type | `else`.type | `is`.type | `:`.type | `->`.type |
    `=>`.type | `extends`.type | `restricts`.type | `as`.type | `do`.type

  type Ellipsis = `...`.type | `..`.type
  
  type letLike = `let`.type | `set`.type
  
  val maxPrec = curPrec
  

