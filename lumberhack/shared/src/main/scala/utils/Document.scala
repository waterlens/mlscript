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
  import scala.collection.mutable
  val vs = mutable.Map.empty[Ident, String]
  lazy val multilineOn = copy(multiline = true)
  lazy val showEuidOn = copy(showEuid = true)
  lazy val showIuidOn = copy(showIuid = true)
  lazy val showRefEuidOn = copy(showRefEuid = true)
  lazy val showVuidOn = copy(showVuid = true)
  lazy val showPolarityOn = copy(showPolarity = true)
  lazy val showVboundaryOn = copy(showVboundary = true)
  lazy val showPathOn = copy(showPath = true)
  lazy val pathAsIdentOn = copy(pathAsIdent = true)
  def prtinIdent(id: Ident): String = {
    vs.getOrElseUpdate(id, {
      val cnt = vs.count{ (existId, _) => existId.tree.name == id.tree.name }
      id.tree.name + (if cnt == 0 then "" else s"$cnt")
    })
  }
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