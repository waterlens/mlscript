package hkmc2
package semantics

import mlscript.utils.*, shorthands.*
import syntax.*

final case class Branch(scrutinee: Term.Ref, pattern: Pattern, continuation: Split) extends AutoLocated:
  override def children: List[Located] = scrutinee :: pattern :: continuation :: Nil
  def showDbg: String = s"${scrutinee.sym.nme} is ${pattern.showDbg} -> { ${continuation.showDbg} }"

object Branch:
  def apply(scrutinee: Term.Ref, continuation: Split): Branch =
    Branch(scrutinee, Pattern.Lit(Tree.BoolLit(true)), continuation)

enum Split extends AutoLocated with ProductWithTail:
  case Cons(head: Branch, tail: Split)
  case Let(sym: BlockLocalSymbol, term: Term, tail: Split)
  case Else(default: Term)
  case End

  inline def ~:(head: Branch): Split = Split.Cons(head, this)
  
  lazy val isFull: Bool = this match
    case Split.Cons(_, tail) => tail.isFull
    case Split.Let(_, _, tail) => tail.isFull
    case Split.Else(_) => true
    case Split.End => false

  lazy val isEmpty: Bool = this match
    case Split.Let(_, _, tail) => tail.isEmpty
    case Split.Else(_) | Split.Cons(_, _) => false
    case Split.End => true

  final override def children: Ls[Located] = this match
    case Split.Cons(head, tail) => List(head, tail)
    case Split.Let(name, term, tail) => List(name, term, tail)
    case Split.Else(default) => List(default)
    case Split.End => Nil
  
  def subTerms: Ls[Term] = this match
    case Split.Cons(head, tail) => head.scrutinee :: head.pattern.subTerms ++ tail.subTerms
    case Split.Let(_, term, tail) => term :: tail.subTerms
    case Split.Else(term) => term :: Nil
    case Split.End => Nil
  
  final def showDbg: String = this match
    case Split.Cons(head, tail) => s"${head.showDbg}; ${tail.showDbg}"
    case Split.Let(name, term, tail) => s"let ${name} = ${term.showDbg}; ${tail.showDbg}"
    case Split.Else(default) => s"else ${default.showDbg}"
    case Split.End => ""

  final override def withLoc(loco: Option[Loc]): this.type =
    super.withLoc:
      this match
        // `Split.Nil` must not have a location. This prevents sharing locations,
        // which causes the assertion of distinctness of origins to fail.
        case Split.End => N
        case _: Split.Else => N // FIXME: @Luyu pls clean up this mess
        case _ => loco

  var isFallback: Bool = false
end Split

extension (split: Split)
  def ~~:(fallback: Split): Split =
    if fallback == Split.End || split.isFull then
      split
    else (split match
      case Split.Cons(head, tail) => Split.Cons(head, tail ~~: fallback)
      case Split.Let(name, term, tail) => Split.Let(name, term, tail ~~: fallback)
      case Split.Else(_) /* impossible */ | Split.End => fallback)

object Split:
  def default(term: Term): Split = Split.Else(term)

  object display:
    /** Represents lines with indentations. */
    type Lines = Ls[(Int, Str)]

    extension (lines: Lines)
      /** Increase the indentation of all lines by one. */
      def indent: Lines = lines.map:
        case (n, line) => (n + 1, line)

      /** Make a multi-line string. */
      def toIndentedString: Str = lines.iterator.map:
        case (n, line) => "  " * n + line
      .mkString("\n")

    extension (prefix: String)
      /**
        * If the first line does not have indentation and the remaining lines are
        * indented, prepend the given string to the first line. Otherwise, prepend
        * the given string to the first line and indent all remaining lines.
        *
        * When you want to amend the title of lines, you should use this function.
        */
      def #:(lines: Lines): Lines = lines match
        case (0, line) :: lines if lines.forall(_._1 > 0) => (0, s"$prefix $line") :: lines
        case lines => (0, prefix) :: lines.indent
    
    inline def apply(s: Split): Str = showSplit("if", s)

    private def showSplit(prefix: Str, s: Split): Str =
      def split(s: Split, isFirst: Bool, isTopLevel: Bool): Lines = s match
        case Split.Cons(head, tail) => (branch(head, isTopLevel) match
          case (n, line) :: tail => (n, (if isTopLevel then "" else "and ") + line) :: tail
          case Nil => Nil
        ) ::: split(tail, false, isTopLevel)
        case Split.Let(nme, rhs, tail) =>
          (0, s"let $nme = ${rhs.showDbg}") :: split(tail, false, true)
        case Split.Else(term) =>
          (if isFirst then (0, s"then ${term.showDbg}") else (0, s"else ${term.showDbg}")) :: Nil
        case Split.End => Nil
      def branch(b: Branch, isTopLevel: Bool): Lines =
        val Branch(scrutinee, pattern, continuation) = b
        val rest = split(continuation, true, isTopLevel)
        (s"${scrutinee.sym} is ${pattern.showDbg}" + 
          (if rest.length > 1 then " and" else s"")) #: rest
      val lines = split(s, true, true)
      (if prefix.isEmpty then lines else prefix #: lines).toIndentedString
