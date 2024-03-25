package mlscript
package lumberhack
package utils

case class PrettyPrintConfig(
  multiline: Boolean,
  showEuid: Boolean,
  showIuid: Boolean,
  showRefEuid: Boolean,
  showVuid: Boolean,
  showPolarity: Boolean,
  showVboundary: Boolean,
  showPath: Boolean,
  pathAsIdent: Boolean,
) {
  lazy val multilineOn = copy(multiline = true)
  lazy val showEuidOn = copy(showEuid = true)
  lazy val showIuidOn = copy(showIuid = true)
  lazy val showRefEuidOn = copy(showRefEuid = true)
  lazy val showVuidOn = copy(showVuid = true)
  lazy val showPolarityOn = copy(showPolarity = true)
  lazy val showVboundaryOn = copy(showVboundary = true)
  lazy val showPathOn = copy(showPath = true)
  lazy val pathAsIdentOn = copy(pathAsIdent = true)
}
object InitPpConfig extends PrettyPrintConfig(false, false, false, false, false, false, false, false, false)

// A structured document to be printed with nice indentation
enum Document:

  case Indented(content: Document)
  case Unindented(content: Document)
  case Stacked(docs: List[Document], emptyLines: Boolean = false)
  case Lined(docs: List[Document], separator: Document)
  case Raw(s: String)

  def <:>(other: Document) = line(List(this, other))
  def <#>(other: Document) = Lined(List(this, other), separator = Raw(" "))

  def print: String = {
    val sb = new StringBuffer()

    def rec(d: Document)(implicit ind: Int, first: Boolean): Unit = d match {
      case Raw(s) =>
        if (first && s.nonEmpty) sb append ("  " * ind)
        sb append s
      case Indented(doc) =>
        rec(doc)(ind + 1, first)
      case Unindented(doc) =>
        assume(ind > 0)
        rec(doc)(ind - 1, first)
      case Lined(Nil, _) => // skip
      case Lined(docs, sep) =>
        rec(docs.head)
        docs.tail foreach { doc =>
          rec(sep)(ind, false)
          rec(doc)(ind, false)
        }
      case Stacked(Nil, _) => // skip
      case Stacked(docs, emptyLines) =>
        rec(docs.head)
        docs.tail foreach { doc =>
          sb append "\n"
          if (emptyLines) sb append "\n"
          rec(doc)(ind, true)
        }
    }

    rec(this)(0, true)
    sb.toString
  }
export Document.*

def stack(docs: Document*): Stacked = Stacked(docs.toList)
def line(docs: List[Document]) = Lined(docs, separator = Raw(""))

def toSubscript(i: String) = i.map {
  case '0' => '₀'; case '1' => '₁'; case '2' => '₂'
  case '3' => '₃'; case '4' => '₄'; case '5' => '₅'
  case '6' => '₆'; case '7' => '₇'; case '8' => '₈'
  case '9' => '₉'; case c => c
}

def toSuperscript(i: String) = i.map {
  case '0' => '⁰'; case '1' => '¹'; case '2' => '²'
  case '3' => '³'; case '4' => '⁴'; case '5' => '⁵'
  case '6' => '⁶'; case '7' => '⁷'; case '8' => '⁸'
  case '9' => '⁹'; case c => c
}