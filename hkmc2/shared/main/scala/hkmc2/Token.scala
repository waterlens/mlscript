package hkmc2

import mlscript.utils._, shorthands._


/** Type of general Tokens */
sealed abstract class Token:
  def describe: Str = this match
    case SPACE => "space"
    case COMMA => "comma"
    case SEMI => "semicolon"
    case NEWLINE => "newline"
    case INDENT => "indentation"
    case DEINDENT => "deindentation"
    case ERROR => "error"
    case QUOTE => "quote"
    case LITVAL(value) => "literal"
    case KEYWORD(name) =>
      if name.headOption.exists(_.isLetter) then s"'$name' keyword" else s"'$name'"
    case IDENT(name, symbolic) => if symbolic then "operator" else "identifier"
    case SELECT(name) => "selector"
    case OPEN_BRACKET(k) => s"opening ${k.name}"
    case CLOSE_BRACKET(k) => s"closing ${k.name}"
    case BRACKETS(BracketKind.Indent, contents) => s"indented block"
    case BRACKETS(k, contents) => s"${k.name} section"
    case COMMENT(text) => "comment"

/** Type of 'Structured Tokens' aka 'Strokens',
  * which use a `BRACKETS` construct instead of `OPEN_BRACKET`/`CLOSE_BRACKET` and `INDENT`/`DEINDENT` */
sealed trait Stroken extends Token

case object SPACE extends Token with Stroken
case object COMMA extends Token with Stroken
case object SEMI extends Token with Stroken
case object NEWLINE extends Token with Stroken // TODO rm
case object INDENT extends Token
case object DEINDENT extends Token
case object ERROR extends Token with Stroken
case object QUOTE extends Token with Stroken
final case class LITVAL(value: Lit) extends Token with Stroken
final case class KEYWORD(name: String) extends Token with Stroken
final case class IDENT(name: String, symbolic: Bool) extends Token with Stroken
final case class SELECT(name: String) extends Token with Stroken
final case class OPEN_BRACKET(k: BracketKind) extends Token
final case class CLOSE_BRACKET(k: BracketKind) extends Token
final case class BRACKETS(k: BracketKind, contents: Ls[Stroken -> Loc])(val innerLoc: Loc) extends Token with Stroken
final case class COMMENT(text: String) extends Token with Stroken


sealed abstract class BracketKind:
  import BracketKind._
  lazy val (beg, end) = this match
    case Round => "(" -> ")"
    case Curly => "{" -> "}"
    case Square => "[" -> "]"
    case Angle => "‹" -> "›"
    case Indent => "→" -> "←"
    case Quasiquote => "code\"" -> "\""
    case QuasiquoteTriple => "code\"\"\"" -> "\"\"\""
    case Unquote => "${" -> "}"
  def name: Str = this match
    case Round => "parenthesis"
    case Curly => "curly brace"
    case Square => "square bracket"
    case Angle => "angle bracket"
    case Indent => "indentation"
    case Quasiquote => "quasiquote"
    case QuasiquoteTriple => "quasiquote triple"
    case Unquote => "unquote"

object BracketKind:
  case object Round extends BracketKind
  case object Curly extends BracketKind
  case object Square extends BracketKind
  case object Angle extends BracketKind
  case object Indent extends BracketKind
  case object Quasiquote extends BracketKind
  case object QuasiquoteTriple extends BracketKind
  case object Unquote extends BracketKind
  
  def unapply(c: Char): Opt[Either[BracketKind, BracketKind]] = c `|>?` :
    case '(' => Left(Round)
    case ')' => Right(Round)
    case '{' => Left(Curly)
    case '}' => Right(Curly)
    case '[' => Left(Square)
    case ']' => Right(Square)
    case '‹' => Left(Angle)
    case '›' => Right(Angle)
