package mlscript.lumberhack

object ExprToMls {
  import mlscript.lumberhack.{Expr => LE, _}
  import mlscript._

  private def id2tm(x: Ident) = 
    if x.tree.name.startsWith("_lh") then
      val newName = x.tree.name.stripPrefix("_lh_")
      if x.uid.toString == "0" then
        Var(substCtor(newName))
      else
        Var(substCtor(newName) + "_" + x.uid.toString)
    else
      Var(substCtor(x.tree.name))

  private def substCtor(x: String) =
    x.replaceAll("LH_C", "Cons")
      .replaceAll("LH_N", "Nil")
      .replaceAll("LH_P", "Tuple")

  private def convCtor(x: String) = x match
    case "LH_C" => "Cons"
    case "LH_N" => "Nil"
    case x if x.startsWith("LH_P") => "Tuple" + x.stripPrefix("LH_P")
    case x => x
  
  private def f(x: Expr): Term = x match
    case LE.Const(lit) => lit
    case LE.Ref(id) => id2tm(id)
    case LE.Call(lhs, rhs) => App(f(lhs), f(rhs))
    case LE.Ctor(name, args) =>
      val name2 = convCtor(name.name)
      val xs = args.map(x => None -> Fld(false, false, f(x)))
      App(Var(name2), Tup(xs))
    case LE.LetIn(id, rhs, body) => Let(false, id2tm(id), f(rhs), f(body))
    case LE.LetGroup(defs, body) =>
      val names = defs.map(x => id2tm(x._1)).toList
      val rhss = defs.map(x => f(x._2)).toList
      LetGroup(names, rhss, f(body))
    case LE.Match(scrut, arms) => 
      val scrut2 = f(scrut)
      val lines = arms.flatMap {        
        case (Var("_"), _, LE.Ref(id)) if id.tree.name == "error" =>
          None
        case (c, Nil, body) if c.name.startsWith("'") =>
          Some(Left(IfThen(CharLit(c.name.stripPrefix("'").stripSuffix("'").charAt(0)), f(body))))
        case (c, Nil, body) =>
          val c2 = convCtor(c.name)
          Some(Left(IfThen(Var(c2), f(body))))
        case (c, xs, body) =>
          val c2 = convCtor(c.name)
          Some(Left(IfThen(App(Var(c2), Tup(xs.map(x => (None -> Fld(false, false, id2tm(x)))))), f(body))))
      }
      If(IfOpApp(scrut2, Var("is"), IfBlock(lines)), None)
    case LE.IfThenElse(scrut, thenn, elze) =>
      val cond = f(scrut)
      val tru = f(thenn)
      val fls = f(elze)
      If(IfThen(cond, tru), Some(fls))
    case LE.Function(param, body) => Lam(id2tm(param), f(body))
    case LE.Sequence(fst, snd) => Tup(List(None -> Fld(false, false, f(fst)), None -> Fld(false, false, f(snd))))
  
  private def f(x: ProgDef): Statement = x match
    case ProgDef(id, lam @ LE.Function(param, body)) =>
      NuFunDef(None, id2tm(id), List(), Left(f(lam)))
    case ProgDef(id, expr) =>
      NuFunDef(None, id2tm(id), List(), Left(f(expr)))

  private def f(x: Program): TypingUnit =
    val stmts = x.contents.map {
      case Left(x) => f(x)
      case Right(x) => f(x)
    }
    TypingUnit(stmts)

  def run(x: Program): TypingUnit = f(x)
}

object MlsPrettyPrinter {
  import mlscript.lumberhack.{Expr => LE, _}
  import mlscript._
  import mlscript.utils._
  import shorthands._
  import mlscript.lumberhack.utils._

  private def raw(s: String): Document = Document.Raw(s)
  private def indent(d: Document): Document = Document.Indented(d)
  private def stack_list(ds: List[Document]): Document = Document.Stacked(ds)

  private def parser = 
    val fph = new FastParseHelpers("", IndexedSeq.empty)
    new NewParser(Origin("<input>", 1, fph), Nil, _ => (), dbg = false, N) {
        def doPrintDbg(msg: => Str): Unit = ()
    }

  private def toDoc(x: IfBody): Document = x match
    case IfThen(cond, body) =>
      stack(
        toDoc(cond, false) <#> raw("then"),
        toDoc(body, false) |> indent)
    case IfBlock(arms) =>
      stack_list(arms.map {
        case Left(x) => toDoc(x)
        case Right(x) => toDoc(x, false)
      })
    case IfOpApp(lhs, op, rhs) =>
      stack(toDoc(lhs, false) <#> toDoc(op),
        toDoc(rhs) |> indent)
    case _ =>
      throw new Exception(s"toDoc: $x ${x.getClass.getSimpleName}")

  private def indentSensitiveInner(x: Statement): Bool = x match
    case _: NuDecl => true
    case _: Let => true
    case _: LetGroup => true
    case _: Lam => true
    case _: Blk => true
    case _: If => true
    case _ => false

  private def toDoc(x: Statement, needBrackets: Bool = true, prev_prec: Opt[Int] = None): Document =
    def needBracketsPrec(cur_prec: Int) = prev_prec match
      case Some(prev_prec) =>
        cur_prec < prev_prec
      case _ => needBrackets
    def bra(x: Document) = if needBrackets then raw("(") <:> x <:> raw(")") else x
    def braWithPrec(x: Document, prec: Int) = if needBracketsPrec(prec) then raw("(") <:> x <:> raw(")") else x
    def aux(x: Statement) = toDoc(x)
    x match
      case Bra(true, tm) => 
        raw("{")
        <:> (tm |> aux |> indent)
        <:> raw("}")
      case Bra(false, tm) =>
        raw("(")
        <:> (tm |> aux |> indent)
        <:> raw(")")
      case Blk(stmts) =>
        stmts.map(aux) |> stack_list |> indent
      case IntLit(v) => raw(v.toString)
      case DecLit(v) => raw(v.toString)
      case StrLit(v) => raw(s"\"$v\"")
      case CharLit(v) => raw(s"char\"$v\"")
      case UnitLit(v) => raw(if v then "undefined" else "null")
      case Var(x) => raw(x)
      case Asc(tm, ty) => (aux(tm) <#> raw(":") <#> raw(ty.toString)) |> bra
      case Lam(name, rhs) => 
        if indentSensitiveInner(rhs) then
          stack(
            raw(s"$name") <#> raw("=>"),
            toDoc(rhs, false) |> indent) |> bra
        else
          stack(
            raw(s"$name") <#> raw("=>"),
            aux(rhs) |> indent) |> bra
      case App(app1 @ App(Var(name), x), y) if parser.opPrecOpt(name).isDefined  =>
        val next_prec = parser.opPrecOpt(name).get._1
        braWithPrec(toDoc(x, true, Some(next_prec))
         <#> raw(name)
         <#> toDoc(y, true, Some(next_prec)), next_prec)
      case App(app1 @ App(f, x), y) =>
        if indentSensitiveInner(y) then
          stack(
            toDoc(app1, false) <:> raw("("),
            toDoc(y, false) |> indent,
            raw(")"))
        else
          (toDoc(app1, false) <:> raw("(") <:> toDoc(y, false) <:> raw(")")) |> bra
      case App(f, x @ Tup(Nil)) =>
        aux(f)
      case App(f, x @ Tup(_)) =>
        (aux(f) <:> aux(x)) |> bra
      case App(f, x) =>
        if indentSensitiveInner(x) then
          stack(
            aux(f) <:> raw("("),
            toDoc(x, false) |> indent,
            raw(")")) |> bra
        else
          (aux(f) <:> raw("(") <:> toDoc(x, false) <:> raw(")")) |> bra
      case Sel(e, field) =>
        raw("(") <:> toDoc(e, false) <:> raw(")") <:> raw(".") <:> raw(field.toString)
      case Let(is_rec, name, rhs, body) =>
        stack(
          raw(if is_rec then "fun" else "let") <#> raw(name.toString) <#> raw("=") <#> toDoc(rhs, false),
          toDoc(body, false)) |> bra
      case LetGroup(name, rhs, body) =>
        stack(
          raw("let"),
          indent(stack_list(
            name.zip(rhs).map { case (n, r) =>
              r match
                case Lam(param, body) =>
                  val (params, body) = paramsToDoc(r)
                  stack(
                    raw("fun") <#> raw(n.toString) <:> params <#> raw("="),
                    body |> indent)
                case _ =>
                  stack(
                    raw("let") <#> raw(n.toString) <#> raw("="),
                    toDoc(r, false) |> indent)
            }
          )),
          body |> aux) |> bra
      case Tup(xs) =>
        var output: Ls[Document] = Nil
        var first = true
        xs.foreach { case (n, x) =>
          if first then
            first = false
            output = toDoc(x.value, false) :: output
          else
            output = toDoc(x.value, false) :: raw(" ") :: raw(",") :: output
        }
        raw("(") <:> line(output.reverse) <:> raw(")")
      case If(body, Some(els)) =>
        stack(
          raw("if") <#> toDoc(body),
          raw("else"),
          toDoc(els) |> indent)
      case If(body, None) =>
          raw("if") <#> toDoc(body)
      case decl: NuDecl => toDoc(decl)
      case _ =>
        throw new Exception(s"toDoc: $x ${x.getClass.getSimpleName}")

  private def toDoc(x: Term \/ PolyType): Document = x match
    case Left(x) => toDoc(x, false)
    case Right(x) => raw(x.toString)

  private def paramsToDoc(x: Term): (Document, Document) = x match
    case Lam(param, body) => 
      val x = raw("(") <:> raw(s"$param") <:> raw(")")
      val (xs, bdoc) = paramsToDoc(body)
      (x <:> xs, bdoc)
    case x =>
      (raw(""), toDoc(x, false))

  private def paramsToDoc(x: Term \/ PolyType): (Document, Document) = x match
    case Left(x) => paramsToDoc(x)
    case Right(x) => (raw(""), raw(x.toString))
    
  private def toDoc(x: NuDecl): Document = x match
    case NuFunDef(N | S(true), n, _, b) =>
      val (params, body) = paramsToDoc(b)
      stack(
        raw("fun") <#> raw(n.toString) <:> params <#> raw("="),
        body |> indent)
    case NuFunDef(S(false), n, _, b) => 
      val (params, body) = paramsToDoc(b)
      stack(
        raw("let") <#> raw(n.toString) <:> params <#> raw("="),
        body |> indent)
    case NuTypeDef(k, n, Nil, sps, Nil, b) =>
      stack(
        raw(k.str) <#> raw(n.name) <#> toDoc(sps),
        toDoc(b) |> indent)
    case _ => 
      throw new Exception(s"toDoc: $x ${x.getClass.getSimpleName}")

  private def toDoc(x: TypingUnit): Document =
    stack_list(x.entities.map{
      case x: NuDecl => toDoc(x)
      case x: Statement => toDoc(x)
    })
  
  def show(x: TypingUnit): String = toDoc(x).print
}