package mlscript
package lumberhack

import lumberhack.Expr.Ref
import mlscript.utils.shorthands.*
import mlscript.utils.lastWords
import scala.collection.mutable
import mlscript.utils.AnyOps

type TypeVar
type NormalPathElem
type StarPathElem
type PathElemType = NormalPathElem | StarPathElem
type ExprId = Uid[Expr]
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
  case Normal(name: Ref, uid: Uid[Expr])(val pol: PathElemPol) extends PathElem[NormalPathElem]
  case Star(elms: List[PathElem[NormalPathElem]]) extends PathElem[StarPathElem]

  def neg: PathElem[T] = this match
    case n: Normal => n.copy()(pol = n.pol.neg)
    case s: Star => s.copy(elms = s.elms.map(_.neg))
  def rev: PathElem[T] = this match
    case n: Normal => n
    case s: Star => s.copy(elms = s.elms.reverse)
  def pp(using showPol: Boolean = true): Str = this match
    case n@Normal(r@Ref(Ident(_, Var(nme), uid)), _) => s"${if showPol then n.pol.pp else ""}$nme:${uid}^${r.uid}"
    case Star(elms) => s"{${elms.map(_.pp).mkString(" · ")}}*"
  def canCancel[V <: PathElemType](other: PathElem[V]): Boolean = (this, other) match
    case (n: Normal, o: Normal) => (n == o) && (n.pol.canCancel(o.pol))
    case _ => ???
}
case class Path(p: Ls[PathElem[PathElemType]]) {
  lazy val neg = this.copy(p = p.map(_.neg))
  lazy val rev = this.copy(p = p.map(_.rev).reverse)
  // TODO: merge two consecutive identical stars during concatenation
  def ::: (other: Path) = Path(other.p ::: p)
  def pp(using showPol: Boolean = true): Str = s"[${p.map(_.pp).mkString(" · ")}]"
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

  def reachable(callsInfo: (mutable.Set[(Ref, ExprId)], mutable.Map[Ident, Set[(Ref, ExprId)]])): Boolean = {
    p match {
      case Nil => true
      case (PathElem.Normal(ref, uid)) :: t => {
        val headCheck: Boolean = callsInfo._1.contains((ref, uid))
        val nextCalls: Option[Set[(Ref, ExprId)]] = callsInfo._2.get(ref.id)
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
  def pp(using showPath: Bool = false): Str = if showPath then s"(${path.pp}: ${s.pp})" else s.pp
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
  def pp(using showPath: Bool): Str
}
trait TypevarWithBoundary(val boundary: Option[Ref -> Uid[Expr]]) { self: (ProdStratEnum.ProdVar | ConsStratEnum.ConsVar) =>
  lazy val asInPath: Option[Path] = this.boundary.map { (r, uid) =>
    Path(PathElem.Normal(r, uid)(PathElemPol.In) :: Nil)
  }
  lazy val asOutPath: Option[Path] = this.boundary.map { (r, uid) =>
    Path(PathElem.Normal(r, uid)(PathElemPol.Out) :: Nil)
  }
  lazy val printBoundary = boundary.map {
    case (r@Ref(Ident(_, Var(nme), uid)), _) => s"${uid}^${r.uid}"
  }
}
enum ProdStratEnum(using val euid: ExprId) extends ToStrat[ProdStratEnum] {
  case NoProd()(using ExprId) extends ProdStratEnum with ToStrat[NoProd]
  case MkCtor(ctor: Var, args: Ls[ProdStrat])(using ExprId) extends ProdStratEnum with ToStrat[MkCtor]
  case Sum(ctors: Ls[Strat[MkCtor]])(using ExprId) extends ProdStratEnum with ToStrat[Sum]
  case ProdFun(lhs: ConsStrat, rhs: ProdStrat)(using ExprId) extends ProdStratEnum with ToStrat[ProdFun]
  case ProdVar(uid: Uid[TypeVar], name: String)(boundary: Option[Ref -> ExprId] = None)(using ExprId)
    extends ProdStratEnum
    with ToStrat[ProdVar]
    with TypevarWithBoundary(boundary)

  def pp(using showPath: Bool = false): Str = this match
    case NoProd() => "NoProd"
    case MkCtor(ctor, args) if args.length > 0 => s"${ctor.name}(${args.map(_.pp).mkString(", ")})"
    case MkCtor(ctor, _) => ctor.name
    case Sum(ls) => s"Sum${ls.map(_.pp).mkString(", ")}"
    case ProdFun(l, r) => s"${l.pp} => ${r.pp}"
    case pv@ProdVar(uid, n) => s"${uid}" + "'" + n + pv.printBoundary.map("_" + _).getOrElse("")
}
enum ConsStratEnum(using val euid: ExprId) extends ToStrat[ConsStratEnum] {
  case NoCons()(using ExprId) extends ConsStratEnum with ToStrat[NoCons]
  case Destruct(destrs: Ls[Destructor])(using ExprId) extends ConsStratEnum with ToStrat[Destruct]
  case ConsFun(lhs: ProdStrat, rhs: ConsStrat)(using ExprId) extends ConsStratEnum with ToStrat[ConsFun]
  case ConsVar(uid: Uid[TypeVar], name: String)(boundary: Option[Ref -> ExprId] = None)(using ExprId)
    extends ConsStratEnum
    with ToStrat[ConsVar]
    with TypevarWithBoundary(boundary)

  def pp(using showPath: Bool = false): Str = this match
    case NoCons() => "NoCons"
    case Destruct(x) => s"Destruct(${x.map(_.pp).mkString(", ")})"
    case ConsFun(l, r) => s"${l.pp} => ${r.pp}"
    case cv@ConsVar(uid, n) => s"${uid}" + "'" + n + cv.printBoundary.map("_" + _).getOrElse("")
}
import ProdStratEnum.*, ConsStratEnum.*, Expr.*
case class Destructor(ctor: Var, argCons: Ls[Strat[ConsVar]]) {
  lazy val pp: Str =
    if argCons.length > 0 then s"${ctor.name}(${argCons.map(_.pp).mkString(", ")})" else ctor.name
}
object ProdStratEnum {
  def prodBool(using ExprId) = Sum(
    MkCtor(Var("True"), Nil).toStrat() :: MkCtor(Var("False"), Nil).toStrat() :: Nil
  )
  def prodInt(using ExprId) = MkCtor(Var("Int"), Nil)
  def prodIntBinOp(using ExprId) = ProdFun(
    consInt.toStrat(),
    ProdFun(consInt.toStrat(), prodInt.toStrat()).toStrat()
  )
  def prodIntEq(using ExprId) = ProdFun(
    consInt.toStrat(),
    ProdFun(consInt.toStrat(), prodBool.toStrat()).toStrat()
  )
}
object ConsStratEnum {
  def consBool(using ExprId) = Destruct(
    Destructor(Var("True"), Nil) :: Destructor(Var("False"), Nil) :: Nil
  )
  def consInt(using ExprId) = Destruct(Destructor(Var("Int"), Nil) :: Nil)
}
case class Ctx(bindings: Map[Str, Strat[ProdVar]]) {
  def apply(id: Ident): Strat[ProdVar] =
    bindings.getOrElse(id.tree.name, lastWords(s"binding not found: " + id))
  def + (b: Str -> Strat[ProdVar]): Ctx =
    copy(bindings = bindings + b)
  def ++ (bs: Iterable[Str -> Strat[ProdVar]]): Ctx =
    copy(bindings = bindings ++ bs)
}
object Ctx {
  def empty = Ctx(Map.empty)
}

class Deforest(debug: Boolean) {
  object Trace {
    private val noPostTrace: Any => String = _ => ""
    private var indent = 0
    private[lumberhack] def trace[T](pre: String)(thunk: => T)(post: T => String = noPostTrace): T = {
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

  var constraints: Ls[Cnstr] = Nil
  val exprs: mutable.Map[ExprId, Expr] = mutable.Map.empty
  val varsName = mutable.Map.empty[Uid[TypeVar], Str]
  
  val vuid = Uid.TypeVar.State()
  val iuid = Uid.Ident.State()
  val euid = Uid.Expr.State()
  
  val noExprId = euid.nextUid
  
  def freshVar(n: String) =
    val vid = vuid.nextUid
    val pv = ProdVar(vid, n)()(using noExprId)
    val cv = ConsVar(vid, n)()(using noExprId)
    varsName += vid -> pv.pp
    log(s"fresh var ${pv.pp}")
    (pv, cv)
  
  def nextIdent(isDef: Bool, name: Var): Ident = Ident(isDef, name, iuid.nextUid)
  
  val upperBounds = mutable.Map.empty[Uid[TypeVar], Ls[(Path, ConsStrat)]].withDefaultValue(Nil)
  val lowerBounds = mutable.Map.empty[Uid[TypeVar], Ls[(Path, ProdStrat)]].withDefaultValue(Nil)
  val callsInfo = (mutable.Set.empty[Ref -> ExprId], mutable.Map.empty[Ident, Set[Ref -> ExprId]])
  
  def process(e: Expr)(using ctx: Ctx, calls: mutable.Set[(Ref, Uid[Expr])]): ProdStrat = trace(s"process ${e.uid}: ${e.pp}") {
    val res: ProdStratEnum = e match
      case Const(IntLit(_)) => prodInt(using noExprId)
      case Const(l) => NoProd()(using noExprId)
      case Ref(Ident(_, Var(primitive), _)) if Deforest.lumberhackKeywords(primitive) => {
        if Deforest.lumberhackIntOps(primitive) then
          if primitive == "eq" then prodIntEq(using noExprId) else prodIntBinOp(using noExprId)
        else
          NoProd()(using noExprId)
      }
      case r @ Ref(id) => return if id.isDef then {
        calls.add(r -> r.uid)
        ctx(id).s.copy()(Some(r -> r.uid))(using e.uid).toStrat()
      } else ctx(id)
      case Call(f, a) =>
        val fp = process(f)
        val ap = process(a)
        val sv = freshVar(s"${e.uid}_callres")
        constrain(fp, ConsFun(ap, sv._2.toStrat())(using noExprId).toStrat())
        sv._1
      case Ctor(name, args) =>
        MkCtor(name, args.map(process))(using e.uid)
      case Match(scrut, arms) =>
        val sp = process(scrut)
        val (detrs, bodies) = arms.map { (v, as, e) =>
          val as_tys = as.map(a => a.tree.name -> freshVar(a.tree.name)._1.toStrat())
          val ep = process(e)(using ctx ++ as_tys)
          (Destructor(v, as_tys.map(a_ty => ConsVar(a_ty._2.s.uid, a_ty._1)()(using noExprId).toStrat())), ep)
        }.unzip
        constrain(sp, Destruct(detrs)(using e.uid).toStrat())
        val res = freshVar(s"${e.uid}_matchres")
        bodies.foreach(constrain(_, res._2.toStrat()))
        res._1
      case Function(param, body) =>
        val sv = freshVar(param.tree.name)
        ProdFun(sv._2.toStrat(),
          process(body)(using ctx + (param.tree.name -> sv._1.toStrat()))
        )(using e.uid)
      case IfThenElse(scrut, thenn, elze) =>
        constrain(process(scrut), consBool(using noExprId).toStrat())
        val res = freshVar(s"${e.uid}_ifres")
        constrain(process(thenn), res._2.toStrat())
        constrain(process(elze), res._2.toStrat())
        res._1
      case LetIn(id, rhs, body) => ???
    res.toStrat()
  }(r => s"=> ${r.pp}")

  def apply(p: Program): Ls[Str -> ProdStrat] = trace(s"apply ${summary(p.pp)}") {
    val vars: Map[Str, Strat[ProdVar]] = p.contents.collect {
      case L(ProgDef(id, body)) =>
        id.tree.name -> freshVar(id.tree.name)._1.toStrat()
    }.toMap

    val ctx = Ctx.empty ++ vars
    p.contents.map {
      case L(ProgDef(id, body)) => {
        val calls = mutable.Set.empty[(Ref, Uid[Expr])]
        val p = process(body)(using ctx, calls)
        val v = vars(id.tree.name).s
        constrain(p, ConsVar(v.uid, v.name)()(using noExprId).toStrat())
        callsInfo._2.addOne(id -> calls.toSet)
      }
      case R(e) => {
        val calls = mutable.Set.empty[(Ref, Uid[Expr])]
        process(e)(using ctx, calls)
        callsInfo._1.addAll(calls)
      }
    }
    vars.toList
  }(r => s"=> ${summary(r.map(v => s"${v._1}: ${v._2.pp}").mkString(", "))}")
  
  def constrain(prod: ProdStrat, cons: ConsStrat): Unit = {
    (prod.s, cons.s) match
      case (NoProd(), _) | (_, NoCons()) => ()
      case (p, c) => constraints ::= (prod, cons)
  }
  
  type Cache = Map[Cnstr, Cnstr -> Int]

  val recursiveConstr = mutable.Map.empty[Cnstr, mutable.Set[Path -> Path]]
  def resolveConstraints: Unit = {

    def handle(c: Cnstr)(using cache: Cache, numOfTypeCtor: Int): Unit = trace(s"handle [${c._1.pp(using true)} <: ${c._2.pp(using true)}]") {
      val prod = c._1
      val cons = c._2

      (prod.s, cons.s) match
        case (_: ProdVar, _) | (_, _: ConsVar) => cache.get(c) match
          case S(inCache) =>
            log(s">> done [${prod.pp(using true)} : ${cons.pp(using true)}]")
            log(s">> with [${inCache._1._1.pp(using true)} : ${inCache._1._2.pp(using true)}]")
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

      given Cache = cache + (c -> (c -> numOfTypeCtor))

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
        case (NoProd(), Destruct(ds)) =>
          given Int = numOfTypeCtor + 1
          ds foreach { case Destructor(ctor, argCons) =>
            argCons foreach { c => handle(prod, c.addPath(cons.path)) }
          }
        case (MkCtor(ctor, args), NoCons()) =>
          given Int = numOfTypeCtor + 1
          args foreach { p => handle(p.addPath(prod.path), cons) }
        case (pv@ProdVar(v, _), _) =>
          upperBounds += v -> ((pv.asOutPath.getOrElse(Path.empty) ::: prod.path.rev, cons) :: upperBounds(v))
          lowerBounds(v).foreach((lb_path, lb_strat) => handle({
            lb_strat.addPath(lb_path) -> cons.addPath(prod.path.rev).addPath(pv.asOutPath.getOrElse(Path.empty))
          }))
        case (_, cv@ConsVar(v, _)) =>
          lowerBounds += v -> ((cv.asInPath.getOrElse(Path.empty) ::: cons.path.rev, prod) :: lowerBounds(v))
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
              args lazyZip argCons foreach { case (a, c) =>
                handle(a.addPath(prod.path), c.addPath(cons.path))
              }
            else if ds_ctor.name == "_" then
              found = true
            else
              argCons foreach { c => handle(NoProd()(using noExprId).toStrat(prod.path), c.addPath(cons.path)) }
          }
          if !found then lastWords(s"type error ${prod.pp} <: ${cons.pp}")
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
        case _ => lastWords(s"type error ${prod.pp} <: ${cons.pp}")
    }()
    
    given Cache = Map.empty
    given Int = 0
    
    constraints foreach handle
  }
  
  lazy val knotsAfterAnnihilation = recursiveConstr.map { (cnstr, set) => (cnstr, set.map { (key, vall) =>
    (key.annihilated, vall.annihilated)
  }.toMap)}.toMap

  lazy val actualKnotsUsingSplit = {
    val afterSplit = knotsAfterAnnihilation.map{ (cnstr, set) => (cnstr, set.flatMap { (key, vall) =>
      val (keyProd, keyCons) = key.splitted
      val (valProd, valCons) = vall.splitted
      (keyProd -> valProd) :: (keyCons -> valCons) :: Nil
    })}
    val allKnotsMap = mutable.Map.empty[Path, Set[Path]].withDefaultValue(Set.empty[Path])
    afterSplit.values.flatten.foreach { (key, vall) => allKnotsMap.update(key, allKnotsMap(key) + vall)}

    allKnotsMap.retain { case (k, vs) => k.reachable(callsInfo) && vs.forall(vsp => vsp.reachable(callsInfo))}
    (allKnotsMap.toMap, afterSplit)
  }
}

enum CallTree {
  case Knot(current: Path, prev: Path)(val info: Str)
  case Continue(current: Path, calls: List[CallTree])

  def pp(using level: Int = 1): String = this match {
    case Continue(current, calls) => s"${current.pp(using false)}\n" + calls.map(c => s"${"\t" * level}${c.pp(using level + 1)}").mkString("\n")
    case k@Knot(current, prev) => s"${current.pp(using false)} ---> ${prev.pp(using false)} (${k.info})"
  }
}
object CallTree {
  def growCallTree(start: Set[Path])(using callsInfo: Map[Ident, Set[Ref -> ExprId]], knotTier: Path => Option[Path] -> Str): List[CallTree] = {
    start.map { p => { knotTier(p) match {
      case None -> _ => {
        val nexts = p.p.last match {
          case PathElem.Normal(Ref(id), _) => callsInfo(id).map(n => p ::: Path(PathElem.Normal(n._1, n._2)(PathElemPol.In) :: Nil))
          case _ => ???
        }
        CallTree.Continue(p, growCallTree(nexts))
      }
      case Some(k) -> info => CallTree.Knot(p, k)(info)
    }}}.toList
  }

  def callTreeUsingSplitKnot(d: Deforest) = {
    def tier(p: Path): Option[Path] -> Str = {
      assert(p.p.nonEmpty)
      val knots = d.actualKnotsUsingSplit._1
      knots.get(p).map(_.filter(sp => sp != p)) match {
        case Some(s) if s.size == 1 => Some(s.head) -> "only one" // the reuslt will not be an empty path
        case Some(s) if s.size > 1 => Some(s.head) -> s.map(_.pp(using false)).mkString(" OR ")  // the result will not be an empty path
        // we can always tie the knot back to its definition before expansion if it is hopeless to keep expanding
        case Some(_) | None => if knots.keys.exists(_.p.startsWith(p.p)) then None -> "" else Some(Path(p.p.last :: Nil)) -> "hopeless to continue"
      }
    }
    growCallTree(d.callsInfo._1.map(c => Path(PathElem.Normal(c._1, c._2)(PathElemPol.In) :: Nil)).toSet)(using d.callsInfo._2.toMap, tier)
  }

  def callTreeUsingNonSplitKnot(d: Deforest) = {
    val knots = {
      val res = mutable.Map.empty[Path, Set[Path]]
      d.knotsAfterAnnihilation.values.foreach { _.foreach { (k, v) => res.updateWith(k)(s => Some(s.getOrElse(Set.empty[Path]) + v)) } }
      res.toMap
    }
    def tier(p: Path): Option[Path] -> Str = {
      assert(p.p.nonEmpty)

      val matches = {
        val res = mutable.Set.empty[Path]
        // match from left
        knots.filterKeys(_.p.startsWith(p.rev.p)).values.flatten.foreach { v => 
          val ind = v.p.indexOf(p.p.head)
          if ind >= 0 then res += Path(v.p.take(ind + 1).reverse)
        }
        // match from right
        knots.filterKeys(_.p.endsWith(p.p)).values.flatten.foreach { v =>
          val ind = v.p.indexOf(p.p.head)
          if ind >= 0 then res += Path(v.p.takeRight(v.p.length - ind))
        }
        // res.foreach { r => log(r.pp) }
        res.retain(_ != p)
        res.toSet
      }
      matches.headOption match {
        case Some(s) => Some(s) -> (if matches.size > 1 then matches.map(_.pp(using false)).mkString(" OR ") else "only one")
        case None => if knots.keySet.exists(k => k.p.containsSlice(p.p) || k.p.containsSlice(p.p.reverse)) then None -> "" else Some(Path(p.p.last :: Nil)) -> "hopeless to continue"
      }
    }
    growCallTree(d.callsInfo._1.map(c => Path(PathElem.Normal(c._1, c._2)(PathElemPol.In) :: Nil)).toSet)(using d.callsInfo._2.toMap, tier)
  }
}

object Deforest {
  val lumberhackKeywords = Set(
    "primitive", "add", "minus", "eq", "mult", "div"
  )
  val lumberhackIntOps = Set("add", "minus", "mult", "div", "eq")
}