package mlscript
package lumberhack

import lumberhack.Expr.Ref
import mlscript.utils.shorthands.*
import mlscript.utils.lastWords
import scala.collection.mutable
import mlscript.utils.{AnyOps, StringOps}
import mlscript.lumberhack.utils.PrettyPrintConfig
import mlscript.lumberhack.utils.InitPpConfig
import mlscript.lumberhack.utils.{toSubscript, toSuperscript}

type TypeVar
type NormalPathElem
type StarPathElem
type PathElemType = NormalPathElem | StarPathElem
type ExprId = Uid[Expr]
type TypeVarId = Uid[TypeVar]
type Cnstr = ProdStrat -> ConsStrat
type ProdStrat = Strat[ProdStratEnum]
type ConsStrat = Strat[ConsStratEnum]

enum PathElemPol {
  case In
  case Out
  lazy val neg = this match
    case In => Out
    case Out => In
  lazy val pp = this match
    case In => "+"
    case Out => "-"
  def canCancel(other: PathElemPol) = (this, other) match
    case (In, Out) | (Out, In) => true
    case _ => false
}
enum PathElem[+T <: PathElemType] {
  case Normal(r: Ref)(val pol: PathElemPol = PathElemPol.In) extends PathElem[NormalPathElem]
  case Star(elms: List[PathElem[NormalPathElem]]) extends PathElem[StarPathElem]

  def neg: PathElem[T] = this match
    case n: Normal => n.copy()(pol = n.pol.neg)
    case s: Star => s.copy(elms = s.elms.map(_.neg))
  def rev: PathElem[T] = this match
    case n: Normal => n
    case s: Star => s.copy(elms = s.elms.reverse)
  def pp(using config: PrettyPrintConfig): Str = this match
    case n@Normal(r@Ref(Ident(_, Var(nme), uid))) =>
      (if config.showPolarity then n.pol.pp else "")
      + nme
      + (if config.showIuid then s":$uid" else "")
      + (if config.showRefEuid then s"^${r.uid}" else "")
    case Star(elms) => s"{${elms.map(_.pp).mkString(" · ")}}*"
  def canCancel[V <: PathElemType](other: PathElem[V]): Boolean = (this, other) match
    case (n: Normal, o: Normal) => (n == o) && (n.pol.canCancel(o.pol))
    case _ => ???
}
case class Path(p: Ls[PathElem[PathElemType]]) {
  lazy val neg = this.copy(p = p.map(_.neg))
  lazy val rev = this.copy(p = p.map(_.rev).reverse)
  lazy val last = this.p.last.asInstanceOf[PathElem.Normal]
  // merge two consecutive identical stars during concatenation if we have stars
  def ::: (other: Path) = Path(other.p ::: p)
  def pp(using config: PrettyPrintConfig): Str = if !config.pathAsIdent
    then s"[${p.map(_.pp).mkString(" · ")}]"
    else p.map(_.pp(using InitPpConfig.showRefEuidOn)).mkString("_")

  lazy val annihilated: Path =
    def anni(i: Ls[PathElem[PathElemType]], o: Ls[PathElem[PathElemType]]): Path = (i, o) match
      case (Nil, Nil) => Path(Nil)
      case (h :: t, Nil) => anni(t, h :: Nil)
      case (h :: t, h2 :: t2) => if h.canCancel(h2) then anni(t, t2) else anni(t, h :: h2 :: t2)
      case (Nil, r) => Path(r.reverse)
    anni(this.p, Nil)

  def splitted: Path -> Path = {
    var prod: Ls[PathElem[PathElemType]] = Nil
    var cons: Ls[PathElem[PathElemType]] = Nil
    p foreach {
      case n: PathElem.Normal => n.pol match
        case PathElemPol.Out => prod = (n :: prod)
        case PathElemPol.In => cons = (n :: cons)
      case n: PathElem.Star => ???
    }
    Path(prod) -> Path(cons.reverse)
  }

  def reachable(callsInfo: (mutable.Set[Ref], mutable.Map[Ident, Set[Ref]])): Boolean = {
    p match {
      case Nil => true
      case PathElem.Normal(ref) :: t => {
        val headCheck: Boolean = callsInfo._1.contains(ref)
        val nextCalls: Option[Set[Ref]] = callsInfo._2.get(ref.id)
        (headCheck, nextCalls) match {
          case (true, Some(next)) => Path(t).reachable((next.to(mutable.Set), callsInfo._2))
          case _ => false
        }
      }
      case _ => ???
    }
  }
}
object Path {
  lazy val empty = Path(Nil)
}
case class Strat[+T <: (ProdStratEnum | ConsStratEnum)](val s: T)(val path: Path) {
  def updatePath(newPath: Path): Strat[T] = this.copy()(path = newPath)
  def addPath(newPath: Path): Strat[T] = this.updatePath(newPath ::: this.path)
  def pp(using config: PrettyPrintConfig): Str = if config.showPath then s"(${path.pp}: ${s.pp})" else s.pp
  lazy val negPath = this.copy()(path = path.neg)
  lazy val asInPath: Option[Path] = this.s match {
    case pv: ProdStratEnum.ProdVar => pv.asInPath
    case cv: ConsStratEnum.ConsVar => cv.asInPath
    case _ => None
  }
  lazy val asOutPath: Option[Path] = this.s match {
    case pv: ProdStratEnum.ProdVar => pv.asOutPath
    case cv: ConsStratEnum.ConsVar => cv.asOutPath
    case _ => None
  }
}
trait ToStrat[+T <: (ProdStratEnum | ConsStratEnum)] { self: T =>
  def toStrat(p: Path = Path(Nil)): Strat[T] = Strat(this)(p)
  def pp(using config: PrettyPrintConfig): Str
}
trait TypevarWithBoundary(val boundary: Option[Ref]) { this: (ProdStratEnum.ProdVar | ConsStratEnum.ConsVar) =>
  lazy val asInPath: Option[Path] = this.boundary.map(_.toPath(PathElemPol.In))
  lazy val asOutPath: Option[Path] = this.boundary.map(_.toPath(PathElemPol.Out))
  def printBoundary(config: PrettyPrintConfig) = boundary.map {
    case r@Ref(Ident(_, Var(nme), uid)) =>
      (if config.showIuid then s"_${uid}" else "") +
      (if config.showRefEuid then s"^${r.uid}" else "")
  }.getOrElse("")
}
trait MkCtorTrait { this: ProdStratEnum.MkCtor =>
  override def equals(x: Any): Boolean = x match {
    case r: ProdStratEnum.MkCtor => this.ctor == r.ctor && this.args == r.args && this.euid == r.euid
    case _ => false
  }
  override lazy val hashCode: Int = (this.ctor, this.args, this.euid).hashCode()
}
trait DestructTrait { this: ConsStratEnum.Destruct =>
  override def equals(x: Any): Boolean = x match {
    case r: ConsStratEnum.Destruct => this.destrs == r.destrs && this.euid == r.euid
    case _ => false
  }
  override lazy val hashCode: Int = (this.destrs, this.euid).hashCode()
}
enum ProdStratEnum(using val euid: ExprId) extends ToStrat[ProdStratEnum] {
  case NoProd()(using ExprId) extends ProdStratEnum with ToStrat[NoProd]
  case MkCtor(ctor: Var, args: Ls[ProdStrat])(using ExprId) extends ProdStratEnum
    with ToStrat[MkCtor]
    with MkCtorTrait
  case Sum(ctors: Ls[Strat[MkCtor]])(using ExprId) extends ProdStratEnum with ToStrat[Sum]
  case ProdFun(lhs: ConsStrat, rhs: ProdStrat)(using ExprId) extends ProdStratEnum with ToStrat[ProdFun]
  case ProdVar(uid: TypeVarId, name: String)(boundary: Option[Ref] = None)(using ExprId)
    extends ProdStratEnum
    with ToStrat[ProdVar]
    with TypevarWithBoundary(boundary)
  case DeadCodeProd()(using ExprId) extends ProdStratEnum with ToStrat[DeadCodeProd]

  def pp(using config: PrettyPrintConfig): Str = this match
    case NoProd() => "NoProd"
    case MkCtor(ctor, args) if args.length > 0 => s"${ctor.name}(${args.map(_.pp).mkString(", ")})"
    case MkCtor(ctor, _) => ctor.name
    case Sum(ls) => s"Sum[${ls.map(_.pp).mkString(", ")}]"
    case ProdFun(l, r) => s"${l.pp} => ${r.pp}"
    case pv@ProdVar(uid, n) =>
      (if config.showVuid then s"$uid" else "") +
      s"'$n" +
      (if config.showVboundary then pv.printBoundary else "")
    case DeadCodeProd() => "DeadCodeProd"

  def representsDeadCode(using d: Deforest, cache: Set[TypeVarId] = Set()): Boolean = {
    if !(d.exprs.isDefinedAt(this.euid)) then
      false
    else
      this match {
        case p: (MkCtor | NoProd | Sum | ProdFun) => !d.isNotDead.contains(p)
        case v: ProdVar =>
          if cache(v.uid) then
            true
          else
            d.upperBounds(v.uid).forall { case (_, s) => s.s match {
              case ConsStratEnum.DeadCodeCons() => true
              case ConsStratEnum.ConsVar(uid, name) => ProdVar(uid, name)().representsDeadCode(using d, cache + v.uid)
              case _ => false
            }}
        case DeadCodeProd() => lastWords("deadcodeprod cannot associate with an expr")
      }
  }

}
enum ConsStratEnum(using val euid: ExprId) extends ToStrat[ConsStratEnum] {
  case NoCons()(using ExprId) extends ConsStratEnum with ToStrat[NoCons]
  case Destruct(destrs: Ls[Destructor])(using ExprId) extends ConsStratEnum
    with ToStrat[Destruct]
    with DestructTrait
  case ConsFun(lhs: ProdStrat, rhs: ConsStrat)(using ExprId) extends ConsStratEnum with ToStrat[ConsFun]
  case ConsVar(uid: TypeVarId, name: String)(boundary: Option[Ref] = None)(using ExprId)
    extends ConsStratEnum
    with ToStrat[ConsVar]
    with TypevarWithBoundary(boundary)
  case DeadCodeCons()(using ExprId) extends ConsStratEnum with ToStrat[DeadCodeCons]

  def pp(using config: PrettyPrintConfig): Str = this match
    case NoCons() => "NoCons"
    case DeadCodeCons() => "DeadCodeCons"
    case Destruct(x) => s"Destruct(${x.map(_.pp).mkString(", ")})"
    case ConsFun(l, r) => s"${l.pp} => ${r.pp}"
    case cv@ConsVar(uid, n) =>
      (if config.showVuid then s"$uid" else "") +
      s"'$n" +
      (if config.showVboundary then cv.printBoundary else "")
}
import ProdStratEnum.*, ConsStratEnum.*, Expr.*
case class Destructor(ctor: Var, argCons: Ls[Strat[ConsVar]]) {
  def pp(using config: PrettyPrintConfig): Str =
    if argCons.length > 0 then s"${ctor.name}(${argCons.map(_.pp).mkString(", ")})" else ctor.name
}
object ProdStratEnum {
  def prodBool(using ExprId) = Sum(
    MkCtor(Var("True"), Nil).toStrat() :: MkCtor(Var("False"), Nil).toStrat() :: Nil
  )
  def prodInt(using ExprId) = MkCtor(Var("Int"), Nil)
  def prodFloat(using ExprId) = MkCtor(Var("Float"), Nil)
  def prodChar(using ExprId) = MkCtor(Var("Char"), Nil)
  def prodString(using d: Deforest, euid: ExprId): ProdStratEnum = {
    // val v = d.freshVar("_lh_string")
    // val nil = MkCtor(Var("LH_N"), Nil)
    // val cons = MkCtor(Var("LH_C"), prodChar.toStrat() :: v._1.toStrat() :: Nil)
    // d.constrain(nil.toStrat(), v._2.toStrat())
    // d.constrain(cons.toStrat(), v._2.toStrat())
    NoProd()(using euid)
  }
  def prodString(s: Str)(using ExprId): MkCtor = s.headOption match {
    case Some(_) => MkCtor(Var("LH_C"), prodChar.toStrat() :: prodString(s.tail).toStrat() :: Nil)
    case None => MkCtor(Var("LH_N"), Nil)
  }
  def prodIntBinOp(using id: ExprId, d: Deforest) = ProdFun(
    consInt(using d.noExprId).toStrat(),
    ProdFun(consInt(using d.noExprId).toStrat(), prodInt(using d.noExprId).toStrat())(using d.noExprId).toStrat()
  )
  def prodFloatBinOp(using id: ExprId, d: Deforest) = ProdFun(
    consFloat(using d.noExprId).toStrat(),
    ProdFun(consFloat(using d.noExprId).toStrat(), prodFloat(using d.noExprId).toStrat())(using d.noExprId).toStrat()
  )
  def prodFloatUnaryOp(using id: ExprId, d: Deforest) = ProdFun(
    consFloat(using d.noExprId).toStrat(), prodFloat(using d.noExprId).toStrat()
  )
  def prodIntEq(using id: ExprId, d: Deforest) = ProdFun(
    consInt(using d.noExprId).toStrat(),
    ProdFun(consInt(using d.noExprId).toStrat(), prodBool(using d.noExprId).toStrat())(using d.noExprId).toStrat()
  )
  def prodBoolBinOp(using id: ExprId, d: Deforest) = ProdFun(
    consBool(using d.noExprId).toStrat(),
    ProdFun(consBool(using d.noExprId).toStrat(), prodBool(using d.noExprId).toStrat())(using d.noExprId).toStrat()
  )
  def prodBoolUnaryOp(using id: ExprId, d: Deforest) = ProdFun(
    consBool(using d.noExprId).toStrat(),
    prodBool(using d.noExprId).toStrat()
  )
}
object ConsStratEnum {
  def consBool(using ExprId) = Destruct(
    Destructor(Var("True"), Nil) :: Destructor(Var("False"), Nil) :: Nil
  )
  def consInt(using ExprId) = Destruct(Destructor(Var("Int"), Nil) :: Nil)
  def consFloat(using ExprId) = Destruct(Destructor(Var("Float"), Nil) :: Nil)
  def consChar(using ExprId) = Destruct(Destructor(Var("Char"), Nil) :: Nil)
}
case class Ctx(bindings: Map[Ident, Strat[ProdVar]]) {
  def apply(id: Ident): Strat[ProdVar] =
    bindings.getOrElse(id, lastWords(s"binding not found: " + id))
  def + (b: Ident -> Strat[ProdVar]): Ctx =
    copy(bindings = bindings + b)
  def ++ (bs: Iterable[Ident -> Strat[ProdVar]]): Ctx =
    copy(bindings = bindings ++ bs)
}
object Ctx {
  def empty = Ctx(Map.empty)
}

class Deforest(var debug: Boolean) {
  object Trace {
    private val noPostTrace: Any => String = _ => ""
    private var indent = 0
    private[lumberhack] def trace[T](pre: => String)(thunk: => T)(post: T => String = noPostTrace): T = {
      log(pre, color = Console.CYAN)
      indent += 1
      val res =
        try thunk
        finally indent -= 1
      if (!(post eq noPostTrace)) log(post(res), color = Console.CYAN)
      res
    }
    private[lumberhack] def summary(str: String) =
      val made = str.split('\n').mkString("\\")
      if (made.length > 100) made.take(100) + Console.RESET + Console.MAGENTA + "..." + Console.RESET else made
    private[lumberhack] def log(msg: => String, color: String = Console.RED): Unit =
      if debug then println("| " * indent + color + msg + Console.RESET)
  }
  import Trace.*
  
  var prgm: Option[Program] = None
  var constraints: Ls[Cnstr] = Nil
  val exprs: mutable.Map[ExprId, Expr] = mutable.Map.empty
  val varsName = mutable.Map.empty[TypeVarId, Str]
  
  val vuid = Uid.TypeVar.State()
  val iuid = Uid.Ident.State()
  val euid = Uid.Expr.State()
  val noExprId = euid.nextUid
  def nextIdent(isDef: Bool, name: Var): Ident = Ident(isDef, name, iuid.nextUid(name.name))

  def freshVar(n: String)(using ExprId): ((ProdStratEnum & ToStrat[ProdVar] & TypevarWithBoundary), (ConsStratEnum & ToStrat[ConsVar] & TypevarWithBoundary)) =
    val vid = vuid.nextUid
    val pv = ProdVar(vid, n)()
    val cv = ConsVar(vid, n)()
    varsName += vid -> n
    log(s"fresh var '$n")
    (pv, cv)
  def freshVar(n: Ident)(using ExprId): ((ProdStratEnum & ToStrat[ProdVar] & TypevarWithBoundary), (ConsStratEnum & ToStrat[ConsVar] & TypevarWithBoundary)) =
    freshVar(n.pp(using InitPpConfig.showIuidOn))
  
  val callsInfo = (mutable.Set.empty[Ref], mutable.Map.empty[Ident, Set[Ref]])
  val ctorExprToType = mutable.Map.empty[ExprId, MkCtor]
  val dtorExprToType = mutable.Map.empty[ExprId, Destruct]
  val exprToProdType = mutable.Map.empty[ExprId, ProdStrat]
  private def registerExprToType(e: Expr, s: ProdStrat) = {
    // just to handle the initial program translated from haskell since its ExprId may got duplicated, just
    // a check to make sure things does not break here
    def eq(a: ProdStrat, b: ProdStrat): Boolean = (a.s, b.s) match {
      case (NoProd(), NoProd()) => true
      case (MkCtor(c1, a1), MkCtor(c2, a2)) => c1 == c2 && a1.zip(a2).foldLeft(true){ case (acc, (a1, a2)) => acc && eq(a1, a2) }
      case (Sum(ctors1), Sum(ctors2)) => ctors1.zip(ctors2).foldLeft(true){ case (acc, (cs1, cs2)) => acc && eq(cs1, cs2) }
      case (ProdFun(_, rhs1), ProdFun(_, rhs2)) => eq(rhs1, rhs2)
      case (ProdVar(_, n1), ProdVar(_, n2)) => n1 == n2
      case (DeadCodeProd(), DeadCodeProd()) => true
      case _ => false
    }
    exprToProdType.get(e.uid) match {
      case None => {
        // assert(s.s.euid == e.uid)
        exprToProdType += e.uid -> s
        s
      }
      // case Some(value) =>
      //   lastWords(s"${e.pp(using InitPpConfig.showEuidOn)} registered two prod strategies:\n already has ${value.pp(using InitPpConfig)}, but got ${s.pp(using InitPpConfig)}")
      case Some(value) =>
        if eq(value, s) then
          value
        else
          lastWords(s"${e.pp(using InitPpConfig.showEuidOn)} registered two prod strategies:\n already has ${value.pp(using InitPpConfig)}, but got ${s.pp(using InitPpConfig)}")
    }
  }

  // NOTE: the thing is that, to get recursive knots, we need the program to tyoe check, but to make a polymorphic program to
  // type check, we need to do the duplication of multiple-usage definitions, so seems that these two things has to be done in two steps
  def process(e: Expr)(using ctx: Ctx, calls: mutable.Set[Ref]): ProdStrat = trace(s"process ${e.uid}: ${e.pp(using InitPpConfig)}") {
    val res: ProdStratEnum = e match
      case Call(primFun@Ref(lazyOrForce), e) if Set("lazy", "force", "lumberhack_obj_magic")(lazyOrForce.tree.name) =>
        // registerExprToType(primFun, freshVar("_lh_rigid_error_var")(using e.uid)._1.toStrat())
        // treat the above annotations as identity functions to keep fusion
        process(e).s
      // adding exprid here to the mkctor types changes the knot tying result and makes type checking slow because
      // the `recursiveConstr` later will be changed, since mkctor type's eq test and hashCode value relies on the exprId
      case Call(Ref(fromLargeStr), Const(StrLit(largeStr))) if fromLargeStr.tree.name == "from_large_str" =>
        NoProd()(using e.uid)
      case Call(Ref(err), callee) if err.tree.name == "error" =>
        process(callee.primIdize(using this, None))
        freshVar("_lh_rigid_error_var")(using e.uid)._1
      case Const(IntLit(_)) => prodInt(using noExprId)
      case Const(DecLit(_)) => prodFloat(using noExprId) // floating point numbers as integers type
      case Const(CharLit(_)) => prodChar(using noExprId)
      // str lits are handled by fromHaskell; do not handle str lits in mls now
      // case Const(StrLit(strLit)) => prodString(strLit)(using noExprId) // Strings constants are lists of chars
      case Const(l) => NoProd()(using e.uid)
      case Ref(Ident(_, Var(primitive), _)) if Deforest.lumberhackKeywords(primitive) => {
        if Deforest.lumberhackIntComparisonFun(primitive) || Deforest.lumberhackIntComparisonOps(primitive) then
          prodIntEq(using e.uid, this)
        else if Deforest.lumberhackIntValueFun(primitive) || Deforest.lumberhackIntValueBinOps(primitive) then
          prodIntBinOp(using e.uid, this)
        else if Deforest.lumberhackBoolBinOps(primitive) then
          prodBoolBinOp(using e.uid, this)
        else if Deforest.lumberhackBoolUnaryOps(primitive) then
          prodBoolUnaryOp(using e.uid, this)
        else if Deforest.lumberhackFloatBinOps(primitive) then
          prodFloatBinOp(using e.uid, this)
        else if Deforest.lumberhackFloatUnaryOps(primitive) then
          prodFloatUnaryOp(using e.uid, this)
        else if primitive == "error" then
          freshVar("_lh_rigid_error_var")(using e.uid)._1
        else if (Set("primitive", "primId") ++ Deforest.lumberhackPolyOps)(primitive) then
          NoProd()(using e.uid) // `primitive`, `primId`
        else if primitive == "string_of_int" then
          ProdFun(consInt(using noExprId).toStrat(), prodString(using this, noExprId).toStrat())(using e.uid)
        else if primitive == "string_of_float" then
          ProdFun(consFloat(using noExprId).toStrat(), prodString(using this, noExprId).toStrat())(using e.uid)
        else if primitive == "char_of_int" then
          ProdFun(consInt(using noExprId).toStrat(), prodChar(using noExprId).toStrat())(using e.uid)
        else if primitive == "int_of_char" then
          ProdFun(consChar(using noExprId).toStrat(), prodInt(using noExprId).toStrat())(using e.uid)
        else if primitive == "float_of_int" then
          ProdFun(consInt(using noExprId).toStrat(), prodFloat(using noExprId).toStrat())(using e.uid)
        else if primitive == "int_of_float" then
          ProdFun(consFloat(using noExprId).toStrat(), prodInt(using noExprId).toStrat())(using e.uid)
        else if primitive == "ceiling" then
          ProdFun(consFloat(using noExprId).toStrat(), prodFloat(using noExprId).toStrat())(using e.uid)
        else
          lastWords("lazy, force and lumberhack_obj_magic should not be handled here")
      }
      case r @ Ref(id) => if id.isDef then {
        calls.add(r)
        ctx(id).s.copy()(Some(r))(using e.uid)
      } else ctx(id).s.copy()(None)(using e.uid)
      case Call(f, a) =>
        val fp = process(f)
        val ap = process(a)
        val sv = freshVar(s"${e.uid}_callres")(using e.uid)
        constrain(fp, ConsFun(ap, sv._2.toStrat())(using noExprId).toStrat())
        sv._1
      case ce@Ctor(name, args) =>
        val ctorType = MkCtor(name, args.map(process))(using e.uid)
        this.ctorExprToType += ce.uid -> ctorType.asInstanceOf[MkCtor]
        ctorType
      case me@Match(scrut, arms) =>
        val sp = process(scrut)
        val (detrs, bodies) = arms.map { (v, as, e) =>
          if v.name.isCapitalized then { // normal pattern
            val as_tys = as.map(a => a -> freshVar(a)(using noExprId))
            val ep = process(e)(using ctx ++ as_tys.map(v => v._1 -> v._2._1.toStrat()))
            (Destructor(v, as_tys.map(a_ty => a_ty._2._2.toStrat())), ep)
          } else if v.name == "_" then { // id pattern or wildcard pattern ("_", id :: Nil (or Nil), armBodyExpr)
            val newIdCtx = as.headOption.map { newId =>
              val idVar = freshVar(newId)(using noExprId)
              (newId -> idVar._1.toStrat(), idVar._2.toStrat())
            }
            val ep = process(e)(using ctx ++ newIdCtx.map(_._1))
            (Destructor(v, newIdCtx.map(_._2).toList), ep)
          } else if v.name.toIntOption.isDefined then { // int literal pattern: ("3", Nil, armBodyExpr)
            val ep = process(e)
            (Destructor(Var("Int"), Nil), ep)
          } else if v.name.matches("'.'") then {
            val ep = process(e)
            (Destructor(Var("Char"), Nil), ep)
          } else { lastWords(s"unreachable: unknown kind of match arm: ${v.name}") }
        }.unzip
        val dtorType = Destruct(detrs)(using e.uid).toStrat()
        constrain(sp, dtorType)
        val res = freshVar(s"${e.uid}_matchres")(using e.uid)
        bodies.foreach(constrain(_, res._2.toStrat()))
        // register from expr to type
        this.dtorExprToType += me.uid -> dtorType.s
        res._1
      case Function(param, body) =>
        val sv = freshVar(param)(using noExprId)
        ProdFun(sv._2.toStrat(),
          process(body)(using ctx + (param -> sv._1.toStrat()))
        )(using e.uid)
      case IfThenElse(scrut, thenn, elze) =>
        constrain(process(scrut), consBool(using noExprId).toStrat())
        val res = freshVar(s"${e.uid}_ifres")(using e.uid)
        constrain(process(thenn), res._2.toStrat())
        constrain(process(elze), res._2.toStrat())
        res._1
      case LetIn(id, rhs, body) =>
        val v = freshVar(id)(using noExprId)
        constrain(process(rhs)(using ctx + (id -> v._1.toStrat())), v._2.toStrat())
        process(body)(using ctx + (id -> v._1.toStrat())).s
      case LetGroup(defs, body) =>
        assert(defs.nonEmpty)
        val vs = defs.keys.map(k => k -> freshVar(k)(using noExprId)).toMap
        given newCtx: Ctx = ctx ++ vs.mapValues(_._1.toStrat()).toMap
        defs.foreach { case (id, rhs) =>
          val t = process(rhs)(using newCtx)
          constrain(t, vs(id)._2.toStrat())
        }
        process(body)(using newCtx).s
      case Sequence(fst, snd) =>
        process(fst)
        process(snd).s

    // res.toStrat()
    registerExprToType(e, res.toStrat())
  }(r => s"=> ${r.pp(using InitPpConfig)}")

  def apply(p: Program): Ls[Ident -> ProdStrat] = trace(s"apply ${summary(p.pp(using InitPpConfig))}") {
    if constraints.nonEmpty then return Nil
    val vars: Map[Ident, Strat[ProdVar]] = p.contents.collect {
      case L(ProgDef(id, body)) =>
        id -> freshVar(id.pp(using InitPpConfig))(using noExprId)._1.toStrat()
    }.toMap

    val ctx = Ctx.empty ++ vars
    p.contents.map {
      case L(ProgDef(id, body)) => {
        val calls = mutable.Set.empty[Ref]
        val p = process(body)(using ctx, calls)
        val v = vars(id).s
        constrain(p, ConsVar(v.uid, v.name)()(using noExprId).toStrat())
        callsInfo._2.addOne(id -> calls.toSet)
      }
      case R(e) => {
        val calls = mutable.Set.empty[Ref]
        val topLevelProd = process(e)(using ctx, calls)
        constrain(topLevelProd, NoCons()(using noExprId).toStrat())
        callsInfo._1.addAll(calls)
      }
    }
    vars.toList
  }(r => s"=> ${summary(r.map(v => s"${v._1.pp(using InitPpConfig)}: ${v._2.pp(using InitPpConfig)}").mkString(", "))}")
  
  def constrain(prod: ProdStrat, cons: ConsStrat): Unit = {
    (prod.s, cons.s) match
      // case (NoProd(), _) | (_, NoCons()) => ()
      case (p, c) => constraints ::= (prod, cons)
  }
  
  def isRealCtorOrDtor(id: ExprId): Boolean =
    if id == noExprId then
      false
    else
      exprs(id) match {
        case cd: (Expr.Ctor | Expr.Match) => true
        case _ => false
      }
  
  // type Cache = Map[Cnstr, Cnstr -> Int]
  type Cache = scala.collection.mutable.Map[Cnstr, Cnstr -> Int]


  val recursiveConstr = mutable.Map.empty[Cnstr, mutable.Set[Path -> Path]]
  val fusionMatch = mutable.Map.empty[ExprId, Set[ExprId]]
  val upperBounds = mutable.Map.empty[TypeVarId, Ls[(Path, ConsStrat)]].withDefaultValue(Nil)
  val lowerBounds = mutable.Map.empty[TypeVarId, Ls[(Path, ProdStrat)]].withDefaultValue(Nil)
  // val upperBounds = mutable.Map.empty[TypeVarId, Set[(Path, ConsStrat)]].withDefaultValue(Set.empty)
  // val lowerBounds = mutable.Map.empty[TypeVarId, Set[(Path, ProdStrat)]].withDefaultValue(Set.empty)
  val ctorDestinations = mutable.Map.empty[ProdStratEnum.MkCtor, Set[ConsStratEnum]].withDefaultValue(Set())
  val dtorSources = mutable.Map.empty[ConsStratEnum.Destruct, Set[ProdStratEnum]].withDefaultValue(Set())
  val isNotDead = mutable.Set.empty[
    ProdStratEnum.MkCtor |
    ProdStratEnum.ProdFun |
    ProdStratEnum.Sum |
    ProdStratEnum.NoProd
  ]
  val isNotDeadBranch = mutable.Map.empty[Destruct, Set[Int]]
  val errorTypes = scala.collection.mutable.Set.empty[ProdStratEnum | ConsStratEnum]
  // var errCnt = 0
  def resolveConstraints: Unit = {
    // if constraint resolver has already been executed, do not execute it more than once
    if lowerBounds.keys.nonEmpty || upperBounds.keys.nonEmpty then return ()
    def handle(c: Cnstr)(using cache: Cache, numOfTypeCtor: Int): Unit = trace(s"handle [${c._1.pp(using InitPpConfig.showVuidOn)} <: ${c._2.pp(using InitPpConfig.showVuidOn)}]") {
      val prod = c._1
      val cons = c._2

      // if errorTypes.contains(prod.s) || errorTypes.contains(cons.s) then return
      cache.get(c) match
        case S(inCache) =>
          log(s">> done [${prod.pp(using InitPpConfig)} : ${cons.pp(using InitPpConfig)}]")
          log(s">> with [${inCache._1._1.pp(using InitPpConfig)} : ${inCache._1._2.pp(using InitPpConfig)}]")
          return ()
        case N => ()
      // (prod.s, cons.s) match
      //   case (_: ProdVar, _) | (_, _: ConsVar) => cache.get(c) match
      //     case S(inCache) =>
      //       log(s">> done [${prod.pp(using InitPpConfig)} : ${cons.pp(using InitPpConfig)}]")
      //       log(s">> with [${inCache._1._1.pp(using InitPpConfig)} : ${inCache._1._2.pp(using InitPpConfig)}]")
      //       // register knots that actually pass through type ctors
      //       if inCache._2 < numOfTypeCtor || true then {
      //         recursiveConstr.updateWith(c) {
      //           case Some(m) =>
      //             m += (prod.path.rev ::: cons.path) -> (inCache._1._1.path.rev ::: inCache._1._2.path)
      //             Some(m)
      //           case None => Some({
      //             val m = mutable.Set.empty[Path -> Path]
      //             m += (prod.path.rev ::: cons.path) -> (inCache._1._1.path.rev ::: inCache._1._2.path)
      //             m
      //           })
      //         }
      //       }
      //       return
      //     case N => ()
      //   case _ => ()

      // given Cache = cache + (c -> (c -> numOfTypeCtor))
      cache += (c -> (c -> numOfTypeCtor))

      (prod.s, cons.s) match
        case (ProdVar(v, pn), ConsVar(w, cn))
          if v === w || pn == "_lh_rigid_error_var" || cn == "_lh_rigid_error_var" => ()
        case (np@NoProd(), NoCons()) =>
          // isNotDead += np
        case (np@NoProd(), ConsFun(l, r)) =>
          // isNotDead += np
          given Int = numOfTypeCtor + 1
          handle(l.addPath(cons.path.neg) -> NoCons()(using noExprId).toStrat(prod.path.neg))
          handle(NoProd()(using noExprId).toStrat(prod.path) -> r.addPath(cons.path))
        case (prodFun@ProdFun(l, r), NoCons()) =>
          // isNotDead += prodFun
          given Int = numOfTypeCtor + 1
          handle(r.addPath(prod.path) -> NoCons()(using noExprId).toStrat(cons.path))
          handle(NoProd()(using noExprId).toStrat(cons.path.neg) -> l.addPath(prod.path.neg))
        case (np@NoProd(), dtor@Destruct(ds)) =>
          isNotDeadBranch.update(dtor, (0 until ds.length).toSet)
          // isNotDead += np
          given Int = numOfTypeCtor + 1
          if this.isRealCtorOrDtor(dtor.euid) then {
            dtorSources += dtor -> (dtorSources(dtor) + prod.s)
          }
          ds foreach { case Destructor(ctor, argCons) =>
            argCons foreach { c => handle(prod, c.addPath(cons.path)) }
          }
        case (ctorType@MkCtor(ctor, args), NoCons()) =>
          // isNotDead += ctorType
          given Int = numOfTypeCtor + 1
          if this.isRealCtorOrDtor(ctorType.euid) then {
            ctorDestinations += ctorType -> (ctorDestinations(ctorType) + cons.s)
          }
          args foreach { p => handle(p.addPath(prod.path), cons) }
        case (pv@ProdVar(v, n), _) if n == "_lh_rigid_error_var" => ()
        case (_, cv@ConsVar(v, n)) if n == "_lh_rigid_error_var" => ()
        case (pv@ProdVar(v, _), _) =>
          cons.s match {
            case dtor: Destruct if lowerBounds(v).isEmpty && this.isRealCtorOrDtor(dtor.euid) =>
              dtorSources += dtor -> (dtorSources(dtor) + pv)
            case _ => ()
          }
          upperBounds += v -> ((pv.asOutPath.getOrElse(Path.empty) ::: prod.path.rev, cons) :: upperBounds(v))
          // upperBounds += v -> (upperBounds(v) + ((pv.asOutPath.getOrElse(Path.empty) ::: prod.path.rev) -> cons))
          lowerBounds(v).foreach((lb_path, lb_strat) => handle({
            lb_strat.addPath(lb_path) -> cons.addPath(prod.path.rev).addPath(pv.asOutPath.getOrElse(Path.empty))
          }))
        case (_, cv@ConsVar(v, _)) =>
          prod.s match {
            case ctor: MkCtor if upperBounds(v).isEmpty && this.isRealCtorOrDtor(ctor.euid) =>
              ctorDestinations += ctor -> (ctorDestinations(ctor) + cv)
            case _ => ()
          }
          lowerBounds += v -> ((cv.asInPath.getOrElse(Path.empty) ::: cons.path.rev, prod) :: lowerBounds(v))
          // lowerBounds += v -> (lowerBounds(v) + ((cv.asInPath.getOrElse(Path.empty) ::: cons.path.rev) -> prod))
          upperBounds(v).foreach((ub_path, ub_strat) => handle({
            prod.addPath(cons.path.rev).addPath(cv.asInPath.getOrElse(Path.empty)) -> ub_strat.addPath(ub_path)
          }))
        case (prodFun@ProdFun(lhs1, rhs1), ConsFun(lhs2, rhs2)) =>
          // isNotDead += prodFun
          given Int = numOfTypeCtor + 1
          handle(lhs2.addPath(cons.path.neg) -> lhs1.addPath(prod.path.neg))
          handle(rhs1.addPath(prod.path) -> rhs2.addPath(cons.path))
        case (mkctor@MkCtor(ctor, args), dtors@Destruct(ds)) =>
          // isNotDead += mkctor
          // these three primitive types are handled differently: they do not need to be fused or so
          if (ctor.name != "Int") && (ctor.name != "Char") && (ctor.name != "Float") then {
            given Int = numOfTypeCtor + 1
            (ds.indexWhere {case Destructor(ds_ctor, argCons) => ds_ctor == ctor || ds_ctor.name == "_"}) match {
              case -1 =>
                isNotDeadBranch.updateWith(dtors) {
                  case None => Some(Set(-1))
                  case Some(idxs) => Some(idxs + (-1))
                }
                // if (this.isRealCtorOrDtor(prod.s.euid) && this.isRealCtorOrDtor(cons.s.euid)) then {
                //   fusionMatch.updateWith(prod.s.euid)(_.map(_ + cons.s.euid).orElse(Some(Set(cons.s.euid))))
                //   dtorSources += cons.s.asInstanceOf[Destruct] -> (dtorSources(cons.s.asInstanceOf[Destruct]) + prod.s)
                //   ctorDestinations += prod.s.asInstanceOf[MkCtor] -> (ctorDestinations(prod.s.asInstanceOf[MkCtor]) + cons.s)
                // }
                // lastWords(s"type error ${prod.pp(using InitPpConfig)} <: ${cons.pp(using InitPpConfig)}")
                // errorTypes += prod.s
                // errorTypes += cons.s
              case armIndex => {
                isNotDeadBranch.updateWith(dtors) {
                  case None => Some(Set(armIndex))
                  case Some(idxs) => Some(idxs + armIndex)
                }
                val Destructor(ds_ctor, argCons) = ds(armIndex)  
                if ds_ctor == ctor then {
                  assert(args.size == argCons.size)
                  // register the fusion match
                  args lazyZip argCons foreach { case (a, c) =>
                    handle(a.addPath(prod.path), c.addPath(cons.path))
                  }

                } else if ds_ctor.name == "_" then { // both wildcard pattern and id pattern
                  (prod :: Nil) lazyZip argCons foreach { case (a, c) =>
                    handle(a.addPath(prod.path), c.addPath(cons.path))
                  }
                }
                if (this.isRealCtorOrDtor(prod.s.euid) && this.isRealCtorOrDtor(cons.s.euid)) then {
                  fusionMatch.updateWith(prod.s.euid)(_.map(_ + cons.s.euid).orElse(Some(Set(cons.s.euid))))
                  dtorSources += cons.s.asInstanceOf[Destruct] -> (dtorSources(cons.s.asInstanceOf[Destruct]) + prod.s)
                  ctorDestinations += prod.s.asInstanceOf[MkCtor] -> (ctorDestinations(prod.s.asInstanceOf[MkCtor]) + cons.s)
                }
              }
            }
          } else {
            if ds.exists(d => d.ctor != ctor && d.ctor.name != "_") then ()
              // errorTypes += prod.s
              // errorTypes += cons.s
              // lastWords(s"type error ${prod.pp(using InitPpConfig)} <: ${cons.pp(using InitPpConfig)}")
          }
        case (sum@Sum(ctors), Destruct(ds)) =>
          // isNotDead += sum
          given Int = numOfTypeCtor + 1
          ctors.foreach { ctorStrat => ctorStrat.s match
            case MkCtor(ctor, args) => {
              ds.find(d => d.ctor == ctor || d.ctor.name == "_") match {
                case Some(value) if args.size == value.argCons.size && value.ctor.name != "_" =>
                  val d = value
                  if d.ctor.name == "_" then {
                    args lazyZip d.argCons foreach {
                      case (a, c) => handle(a.addPath(prod.path ::: ctorStrat.path), c.addPath(cons.path))
                    }
                  } else {
                    (prod :: Nil) lazyZip d.argCons foreach { case (a, c) =>
                      handle(a.addPath(prod.path ::: ctorStrat.path), c.addPath(cons.path))
                    }
                  }
                case _ => // lastWords(s"${ctor.name} cannot be found in $ds")
                  // errorTypes += prod.s
                  // errorTypes += cons.s
              }
            }
          }
        case (sum@Sum(ctors), NoCons()) =>
          // isNotDead += sum
          ctors.foreach(handle(_, cons))
        // allow function to be the scrutinee, haskell and ocaml also allows it
        case (f: ProdFun, Destruct(ds)) if ds.find(_.ctor.name == "_").isDefined =>
          val dtor = ds.find(_.ctor.name == "_").get
          (prod :: Nil) lazyZip dtor.argCons foreach { case (a, c) =>
            handle(a.addPath(prod.path), c.addPath(cons.path))
          }
        case _ =>
          // println(s"type error ${prod.pp(using InitPpConfig)} <: ${cons.pp(using InitPpConfig)}")
          // if {errCnt += 1; errCnt} > 1000 then
          //   lastWords(s"type error ${prod.pp(using InitPpConfig)} <: ${cons.pp(using InitPpConfig)}")
          // errorTypes += prod.s
          // errorTypes += cons.s
    }()
    
    given Cache = scala.collection.mutable.Map.empty
    // given Cache = Map.empty
    given Int = 0
    
    // import scala.util.Random.shuffle
    // shuffle(constraints) foreach handle
    constraints foreach handle
    assert(lowerBounds.values.flatten.forall(!_._2.s.isInstanceOf[ProdVar]))
    propagateDeadCodeConsProd
  }
  

  lazy val knotsAfterAnnihilation = recursiveConstr.map { (cnstr, set) => (cnstr, {
    set.map { (key, vall) => (key.annihilated, vall.annihilated) }.toSet
  })}.toMap
  
  lazy val actualKnotsUsingSplit = {
    val afterSplit = knotsAfterAnnihilation.map{ (cnstr, set) => (cnstr, set.flatMap { (key, vall) =>
      val (keyProd, keyCons) = key.splitted
      val (valProd, valCons) = vall.splitted
      (keyProd -> valProd) :: (keyCons -> valCons) :: Nil
    })}
    val allKnotsMap = mutable.Map.empty[Path, Set[Path]].withDefaultValue(Set.empty[Path])
    afterSplit.values.flatten.foreach { (key, vall) => allKnotsMap.update(key, allKnotsMap(key) + vall)}

    val allKnotsMapUnfiltered = allKnotsMap
      .filter { case (k, vs) => k.p.nonEmpty }
      .map { case (k, vs) => k -> vs.filter(v => v.p.nonEmpty && v.last.r.id == k.last.r.id && v != k) }
      .filter(_._2.nonEmpty)
      .toMap
    // allKnotsMap.retain { case (k, vs) => k.reachable(callsInfo) && vs.forall(vsp => Deforest.filterKnots(k, vsp)(using this)) }
    val allKnotsMapFiltered = allKnotsMap
      .filter { case (k, vs) => k.reachable(callsInfo) && k.p.nonEmpty }
      .map { (k, vs) => k -> vs.filter(vsp => Deforest.filterKnots(k, vsp)(using this)) }
      .filter(_._2.nonEmpty)
      .toMap
    (allKnotsMapFiltered, allKnotsMapUnfiltered, afterSplit)
  }

  lazy val lumberhackKeywordsIds: Map[String, Ident] = Deforest.lumberhackKeywords.map {
    n => n -> this.nextIdent(false, Var(n))
  }.toMap

  def propagateDeadCodeConsProd: Unit = {
    val emptyPathDeadCodeCons = DeadCodeCons()(using noExprId)
    val emptyPathDeadCodeProd = DeadCodeProd()(using noExprId)
    val cacheProd = mutable.Set.empty[ProdStrat]
    val cacheCons = mutable.Set.empty[ConsStrat]
    def handleProd(p: ProdStrat): Unit = {
      if cacheProd.add(p) then
        p.s match {
          case DeadCodeProd() => ()
          case NoProd() => ()
          case ctorType@MkCtor(ctor, args) =>
            if this.isRealCtorOrDtor(ctorType.euid) then
              ctorDestinations += ctorType -> (ctorDestinations(ctorType) + emptyPathDeadCodeCons)
            args.foreach(a => handleProd(a))
          case Sum(ls) => ls.foreach(m => handleProd(m))
          case ProdFun(l, r) =>
            handleCons(l)
            handleProd(r)
          case ProdVar(uid, n) =>
            upperBounds += uid -> ((Path.empty, emptyPathDeadCodeCons.toStrat()) :: upperBounds(uid))
            lowerBounds(uid).foreach(l => handleProd(l._2))
        }
    }
    def handleCons(c: ConsStrat): Unit = {
      if cacheCons.add(c) then
        c.s match {
          case DeadCodeCons() => ()
          case NoCons() => ()
          case dtorType@Destruct(ds) => {
            if this.isRealCtorOrDtor(dtorType.euid) then
              dtorSources += dtorType -> (dtorSources(dtorType) + emptyPathDeadCodeProd)
            ds.foreach { case Destructor(_, args) => args.foreach(a => handleCons(a)) }
          }
          case ConsVar(uid, n) =>
            lowerBounds += uid -> ((Path.empty, emptyPathDeadCodeProd.toStrat()) :: lowerBounds(uid))
            upperBounds(uid).foreach(u => handleCons(u._2))
          case ConsFun(l, r) =>
            handleCons(r)
            handleProd(l)
        }
    }
    varsName.keys.foreach { uid =>
      if upperBounds(uid).isEmpty then
        upperBounds += uid -> ((Path.empty, emptyPathDeadCodeCons.toStrat()) :: upperBounds(uid))
        lowerBounds(uid).foreach(l => handleProd(l._2))
      if lowerBounds(uid).isEmpty then
        lowerBounds += uid -> ((Path.empty, emptyPathDeadCodeProd.toStrat()) :: lowerBounds(uid))
        upperBounds(uid).foreach(u => handleCons(u._2))
    }
  }

  def resolveConstraintsImmutableCache: Unit = {
    type CacheImmutable = Map[Cnstr, Cnstr -> Int]
    def handle(c: Cnstr)(using cache: CacheImmutable, numOfTypeCtor: Int): Unit = trace(s"handle [${c._1.pp(using InitPpConfig.showVuidOn)} <: ${c._2.pp(using InitPpConfig.showVuidOn)}]") {
      val prod = c._1
      val cons = c._2

      (prod.s, cons.s) match
        case (_: ProdVar, _) | (_, _: ConsVar) => cache.get(c) match
          case S(inCache) =>
            log(s">> done [${prod.pp(using InitPpConfig)} : ${cons.pp(using InitPpConfig)}]")
            log(s">> with [${inCache._1._1.pp(using InitPpConfig)} : ${inCache._1._2.pp(using InitPpConfig)}]")
            // register knots that actually pass through type ctors
            if inCache._2 < numOfTypeCtor then {
              recursiveConstr.updateWith(c) {
                case Some(m) =>
                  m += (prod.path.rev ::: cons.path) -> (inCache._1._1.path.rev ::: inCache._1._2.path)
                  Some(m)
                case None => Some({
                  val m = mutable.Set.empty[Path -> Path]
                  m += (prod.path.rev ::: cons.path) -> (inCache._1._1.path.rev ::: inCache._1._2.path)
                  m
                })
              }
            }
            return
          case N => ()
        case _ => ()

      given CacheImmutable = cache + (c -> (c -> numOfTypeCtor))
      // cache += (c -> (c -> numOfTypeCtor))

      (prod.s, cons.s) match
        case (ProdVar(v, _), ConsVar(w, _)) if v === w => ()
        case (NoProd(), NoCons()) => ()
        case (NoProd(), ConsFun(l, r)) =>
          given Int = numOfTypeCtor + 1
          handle(l.addPath(cons.path.neg) -> NoCons()(using noExprId).toStrat(prod.path.neg))
          handle(NoProd()(using noExprId).toStrat(prod.path) -> r.addPath(cons.path))
        case (ProdFun(l, r), NoCons()) =>
          given Int = numOfTypeCtor + 1
          handle(r.addPath(prod.path) -> NoCons()(using noExprId).toStrat(cons.path))
          handle(NoProd()(using noExprId).toStrat(cons.path.neg) -> l.addPath(prod.path.neg))
        case (NoProd(), dtor@Destruct(ds)) =>
          given Int = numOfTypeCtor + 1
          if dtor.euid != noExprId then {
            dtorSources += dtor -> (dtorSources(dtor) + prod.s)
          }
          // ds foreach { case Destructor(ctor, argCons) =>
          //   argCons foreach { c => handle(prod, c.addPath(cons.path)) }
          // }
        case (ctorType@MkCtor(ctor, args), NoCons()) =>
          given Int = numOfTypeCtor + 1
          if ctorType.euid != noExprId then {
            ctorDestinations += ctorType -> (ctorDestinations(ctorType) + cons.s)
          }
          // args foreach { p => handle(p.addPath(prod.path), cons) }
        case (pv@ProdVar(v, _), _) =>
          cons.s match {
            case dtor: Destruct if lowerBounds(v).isEmpty && dtor.euid != noExprId => dtorSources += dtor -> (dtorSources(dtor) + pv)
            case _ => ()
          }
          upperBounds += v -> ((pv.asOutPath.getOrElse(Path.empty) ::: prod.path.rev, cons) :: upperBounds(v))
          // upperBounds += v -> (upperBounds(v) + ((pv.asOutPath.getOrElse(Path.empty) ::: prod.path.rev) -> cons))
          lowerBounds(v).foreach((lb_path, lb_strat) => handle({
            lb_strat.addPath(lb_path) -> cons.addPath(prod.path.rev).addPath(pv.asOutPath.getOrElse(Path.empty))
          }))
        case (_, cv@ConsVar(v, _)) =>
          prod.s match {
            case ctor: MkCtor if upperBounds(v).isEmpty && ctor.euid != noExprId => ctorDestinations += ctor -> (ctorDestinations(ctor) + cv)
            case _ => ()
          }
          lowerBounds += v -> ((cv.asInPath.getOrElse(Path.empty) ::: cons.path.rev, prod) :: lowerBounds(v))
          // lowerBounds += v -> (lowerBounds(v) + ((cv.asInPath.getOrElse(Path.empty) ::: cons.path.rev) -> prod))
          upperBounds(v).foreach((ub_path, ub_strat) => handle({
            prod.addPath(cons.path.rev).addPath(cv.asInPath.getOrElse(Path.empty)) -> ub_strat.addPath(ub_path)
          }))
        case (ProdFun(lhs1, rhs1), ConsFun(lhs2, rhs2)) =>
          given Int = numOfTypeCtor + 1
          handle(lhs2.addPath(cons.path.neg) -> lhs1.addPath(prod.path.neg))
          handle(rhs1.addPath(prod.path) -> rhs2.addPath(cons.path))
        case (MkCtor(ctor, args), Destruct(ds)) =>
          given Int = numOfTypeCtor + 1
          var found = false
          ds foreach { case Destructor(ds_ctor, argCons) =>
            if ds_ctor == ctor then
              found = true
              assert(args.size == argCons.size)
              // register the fusion match
              if (prod.s.euid =/= noExprId && cons.s.euid =/= noExprId) then {
                fusionMatch.updateWith(prod.s.euid)(_.map(_ + cons.s.euid).orElse(Some(Set(cons.s.euid))))
                dtorSources += cons.s.asInstanceOf[Destruct] -> (dtorSources(cons.s.asInstanceOf[Destruct]) + prod.s)
                ctorDestinations += prod.s.asInstanceOf[MkCtor] -> (ctorDestinations(prod.s.asInstanceOf[MkCtor]) + cons.s)
              }

              args lazyZip argCons foreach { case (a, c) =>
                handle(a.addPath(prod.path), c.addPath(cons.path))
              }
            else if ds_ctor.name == "_" then
              found = true
            // else
            //   argCons foreach { c => handle(NoProd()(using noExprId).toStrat(prod.path), c.addPath(cons.path)) }
          }
          if !found then lastWords(s"type error ${prod.pp(using InitPpConfig)} <: ${cons.pp(using InitPpConfig)}")
        case (Sum(ctors), Destruct(ds)) =>
          given Int = numOfTypeCtor + 1
          ctors.foreach { ctorStrat => ctorStrat.s match
            case MkCtor(ctor, args) => {
              val d = ds.find(_.ctor === ctor).get
              assert(args.size === d.argCons.size)
              args lazyZip d.argCons foreach {
                case (a, c) => handle(a.addPath(prod.path ::: ctorStrat.path), c.addPath(cons.path))
              }
            }
          }
        case _ => lastWords(s"type error ${prod.pp(using InitPpConfig)} <: ${cons.pp(using InitPpConfig)}")
    }()
    
    // given Cache = scala.collection.mutable.Map.empty
    given CacheImmutable = Map.empty
    given Int = 0
    
    // import scala.util.Random.shuffle
    // shuffle(constraints) foreach handle
    constraints foreach handle
  }
}


enum CallTree(val info: Str) {
  case Knot(current: Path, prev: Path)(info: Str) extends CallTree(info)
  case Continue(current: Path, calls: CallTrees)(info: Str) extends CallTree(info)

  def pp(using level: Int = 1): String = {
    given PrettyPrintConfig = InitPpConfig.showRefEuidOn
    this match {
      case c@Continue(current, calls) =>
        s"${current.pp}"
        + (if c.info.isEmpty then "" else s" (${c.info})")
        + calls.pp.linesIterator.map("\n\t" + _).mkString
      case k@Knot(current, prev) => s"${current.pp} ---> ${prev.pp} (${k.info})"
    }
  }

  def generatePathToIdent(using newd: Deforest, store: mutable.Map[Path, Ident], nameMap: mutable.Map[String, Int], originalDefs: mutable.Set[Path]): Unit = this match {
    case k@Knot(current, prev) =>
      store.updateWith(current)(_.orElse({
        store.updateWith(prev)(_.orElse(Some(newd.nextIdent(true, {
          val name = prev.last.r.id.tree.name
          val id = nameMap.updateWith(name){
            case None => Some(0)
            case Some(v) => Some(v + 1)
          }.get
          // cannot be s"$name$id", or it will clash with defined names
          // Var(if id == 0 then name else name + s"_$id")
          Var(name + toSubscript(s"_$id"))
        }))))
      }))
    case Continue(current, calls) =>
      store.updateWith(current)(_.orElse(Some(newd.nextIdent(true, {
        originalDefs += current
        val name = current.last.r.id.tree.name
        val id = nameMap.updateWith(name){
          case None => Some(0)
          case Some(v) => Some(v + 1)
        }.get
        // Var(if id == 0 then name else name + s"_$id")
        Var(name + toSubscript(s"_$id"))
      }))))
      calls.calls.foreach(_.generatePathToIdent)
  }
}
case class CallTrees(calls: List[CallTree]) {
  val store = mutable.Map.empty[Path, Ident]
  val originalDefs = mutable.Set.empty[Path]
  def generatePathToIdent(using newd: Deforest): Map[Path, Ident] = {
    given mutable.Map[Path, Ident] = store
    given mutable.Set[Path] = originalDefs
    given nameMap: mutable.Map[String, Int] = mutable.Map.empty[String, Int]
    calls.foreach(_.generatePathToIdent)
    store.toMap
  }

  lazy val pp = this.calls.map(_.pp).mkString("\n")
}
object CallTree {
  sealed trait CallTreeKnotTierFunc { def tie(p: Path, mapping: Option[Map[Ident, Path]], cache: mutable.Set[Path]): Option[Path] -> Str }
  class SplitKnotTier(using d: Deforest) extends CallTreeKnotTierFunc {
    val (knots, knotsUnfiltered) = (d.actualKnotsUsingSplit._1, d.actualKnotsUsingSplit._2)
    def tie(p: Path, mapping: Option[Map[Ident, Path]], cache: mutable.Set[Path]): Option[Path] -> Str = if mapping.isEmpty then {
      assert(p.p.nonEmpty)
      // if knots.keys.exists(k => k.p.startsWith(p.p) && k.p.length > p.p.length) then None -> "" else {}
      knots.get(p).map(_.filter(sp => sp != p)) match {
        case Some(s) if s.size == 1 =>
          Some(s.head) -> "only one" // the reuslt will not be an empty path
        case Some(s) if s.size > 1 =>
          Some(s.head) -> s.map(_.pp(using InitPpConfig)).mkString(" OR ")  // the result will not be an empty path
        // we can always tie the knot back to its definition before expansion if it is hopeless to keep expanding
        case None => if knots.keys.exists(_.p.startsWith(p.p)) then None -> "" else None -> "hopeless to continue"
        // case None => {
        //   val commonPrefixedMatch = knotsUnfiltered.filter(m => p.p.endsWith(m._1.p)).map { case (k, vs) =>
        //     val prefix = p.p.take(p.p.length - k.p.length)
        //     // vs.map(v => Path(prefix ::: v.p)).filter(v => cache.exists(_.p == v.p) || v.reachable(d.callsInfo))
        //     vs.map(v => Path(prefix ::: v.p)).filter(v => cache.exists(_.p == v.p))
        //   }.flatten.toSet
        //   if commonPrefixedMatch.size == 1 then
        //     Some(commonPrefixedMatch.head) -> "only one"
        //   else if commonPrefixedMatch.size > 1 then
        //     Some(commonPrefixedMatch.head) -> commonPrefixedMatch.map(_.pp(using InitPpConfig)).mkString(" OR ")
        //   else if knots.keys.exists(_.p.startsWith(p.p)) then
        //     None -> ""
        //   else
        //     None -> "hopeless to continue"
        // }

        case _ => ??? // cannot be empty set
      }
    } else {
      mapping.get.get(p.last.r.id) -> "using original def"
    }
  }
  class NonSplitKnotTier(using d: Deforest) extends CallTreeKnotTierFunc {
    val knots = {
      val res = mutable.Map.empty[Path, Set[Path]]
      d.knotsAfterAnnihilation.values.foreach { _.foreach { (k, v) => res.updateWith(k)(s => Some(s.getOrElse(Set.empty[Path]) + v)) } }
      res.toMap
    }
    def tie(p: Path, mapping: Option[Map[Ident, Path]], cache: mutable.Set[Path]): Option[Path] -> Str = if mapping.isEmpty then {
      assert(p.p.nonEmpty)

      val matches = {
        import Deforest.filterKnots
        val res = mutable.Set.empty[Path]
        // match from left
        knots.filterKeys(_.p.startsWith(p.rev.p)).values.flatten.foreach { v => 
          val ind = v.p.indexOf(p.p.head)
          if ind >= 0 then {
            val tempRes = Path(v.p.take(ind + 1).reverse)
            if filterKnots(p, tempRes) then res += tempRes
          }
        }
        // match from right
        knots.filterKeys(_.p.endsWith(p.p)).values.flatten.foreach { v =>
          val ind = v.p.indexOf(p.p.head)
          if ind >= 0 then {
            val tempRes = Path(v.p.takeRight(v.p.length - ind))
            if filterKnots(p, tempRes) then res += tempRes
          }
        }
        // res.foreach { r => log(r.pp) }
        res.retain(_ != p)
        res.toSet
      }
      matches.headOption match {
        case Some(s) =>
          Some(s) -> (if matches.size > 1 then matches.map(_.pp(using InitPpConfig)).mkString(" OR ") else "only one")
        case None => if knots.keySet.exists(k => k.p.containsSlice(p.p) || k.p.containsSlice(p.p.reverse)) then None -> "" else
          None -> "hopeless to continue"
      }
    } else {
      mapping.get.get(p.last.r.id) -> "using original def"
    }
  }
  case class CallTreeKnotTier(val ctxMapping: Option[Map[Ident, Path]] = None, val cache: mutable.Set[Path] = mutable.Set.empty)(using val tier: CallTreeKnotTierFunc) {
    def updateCtxMapping(id: Ident, p: Path) = copy(ctxMapping = this.ctxMapping.orElse(Some(Map.empty[Ident, Path])).map(_ + (id -> p)))
    def updateCache(p: Path) = copy(cache = this.cache + p)
    def apply(p: Path) = tier.tie(p, ctxMapping, cache)
    // if return true, then we are duplicating possible multiple usages functions, otherwise we are are duplicating recursive functions
    def mode = ctxMapping.isDefined
  }
  

  private def growCallTree(start: Set[Path])(using knotTier: CallTreeKnotTier, callsInfo: Map[Ident, Set[Ref]]): CallTrees = {
    // the call tree will be growed to be sorted
    CallTrees(start.toList.sortBy(_.pp(using InitPpConfig.showRefEuidOn)).map { p => { knotTier(p) match {
      // if returns none, means needs to continue expanding, either for duplicate def or recursion
      case None -> info => {
        val nexts = p.p.last match {
          case PathElem.Normal(Ref(id)) => callsInfo(id).map(p ::: _.toPath())
          case _ => ???
        }
        if info == "hopeless to continue" || knotTier.mode then { // need to use the original definition, enter into the multiple usages duplication mode
          CallTree.Continue(p, growCallTree(nexts)(using knotTier.updateCtxMapping(p.p.last.asInstanceOf[PathElem.Normal].r.id, p)))(info)
        } else { // still in recursive expansion mode
          knotTier.cache += p
          CallTree.Continue(p, growCallTree(nexts))(info)
        }
      }
      case Some(k) -> info => {
        val newInfo = if (info != "hopeless to continue") && !(p.p.startsWith(k.p)) then info + "; NOT PREFIX" else info
        knotTier.cache += p
        CallTree.Knot(p, k)(newInfo)
      }
    }}})
  }

  def callTreeUsingSplitKnot(d: Deforest) = {
    val tier = CallTreeKnotTier()(using new SplitKnotTier(using d))
    growCallTree(d.callsInfo._1.map(_.toPath()).toSet)(using tier, d.callsInfo._2.toMap)
  }

  def callTreeUsingNonSplitKnot(d: Deforest) = {
    val tier = CallTreeKnotTier()(using new NonSplitKnotTier(using d))
    growCallTree(d.callsInfo._1.map(_.toPath()).toSet)(using tier, d.callsInfo._2.toMap)
  }

  def callTreeWithoutKnotTying(d: Deforest) = {
    val tier = CallTreeKnotTier()(using new CallTreeKnotTierFunc {
      override def tie(p: Path, mapping: Option[Map[Ident, Path]], cache: mutable.Set[Path]): (Option[Path], Str) = mapping match {
        case None => None -> "hopeless to continue"
        case Some(value) => value.get(p.last.r.id) -> "using original def"
      }
    })
    growCallTree(d.callsInfo._1.map(_.toPath()).toSet)(using tier, d.callsInfo._2.toMap)
  }
}

object Deforest {
  lazy val lumberhackKeywords: Set[String] =
    (lumberhackIntFun ++ lumberhackIntBinOps ++ lumberhackBoolBinOps ++ lumberhackBoolUnaryOps ++ lumberhackPolyOps
      ++ lumberhackFloatBinOps ++ lumberhackFloatUnaryOps)
      + "string_of_int" + "int_of_char" + "char_of_int" + "ceiling" + "float_of_int" + "int_of_float" + "string_of_float"
      + "primitive" + "primId" + "error" + "lazy" + "force" + "lumberhack_obj_magic" + "from_large_str"
  lazy val lumberhackPolyOps: Set[String] = Set("polyEq", "polyLt", "polyGt", "polyLeq", "polyGeq", "polyNeq")
  lazy val lumberhackBinOps = lumberhackIntBinOps ++ lumberhackBoolBinOps ++ lumberhackFloatBinOps
  lazy val lumberhackIntFun: Set[String] = lumberhackIntValueFun ++ lumberhackIntComparisonFun
  lazy val lumberhackIntValueFun: Set[String] = Set("add", "minus", "mult", "div", "mod")
  lazy val lumberhackIntComparisonFun: Set[String] = Set("eq", "lt", "gt", "leq", "geq", "neq")
  lazy val lumberhackIntBinOps: Set[String] = lumberhackIntValueBinOps ++ lumberhackIntComparisonOps
  lazy val lumberhackIntValueBinOps: Set[String] = Set("+", "-", "*", "/", "%", "mod")
  lazy val lumberhackIntComparisonOps: Set[String] = Set("==", ">", "<", ">=", "<=", "/=")
  lazy val lumberhackBoolBinOps: Set[String] = Set("&&", "||")
  lazy val lumberhackBoolUnaryOps: Set[String] = Set("not")
  lazy val lumberhackFloatBinOps: Set[String] = Set("+.", "-.", "*.", "/.", "**")
  lazy val lumberhackFloatUnaryOps: Set[String] = Set("sqrt", "tan", "sin", "cos")

  def filterKnots(k: Path, v: Path)(using d: Deforest) = v.reachable(d.callsInfo) &&
    v.p.nonEmpty && k.p.nonEmpty &&
    v.last.r.id == k.last.r.id &&
    k.p.startsWith(v.p) &&
    k != v
}