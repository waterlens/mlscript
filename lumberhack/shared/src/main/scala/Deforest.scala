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
enum PathElem[+T <: PathElemType] {
  case Normal(name: Ref, uid: Uid[Expr])(val pol: Boolean) extends PathElem[NormalPathElem]
  case Star(elms: List[PathElem[NormalPathElem]]) extends PathElem[StarPathElem]

  def neg: PathElem[T] = this match
    case n: Normal => n.copy()(pol = !n.pol)
    case s: Star => s.copy(elms = s.elms.map(_.neg))
  def rev: PathElem[T] = this match
    case n: Normal => n
    case s: Star => s.copy(elms = s.elms.reverse)
  lazy val pp: Str = this match
    case n@Normal(r@Ref(Ident(_, Var(nme), uid)), _) => s"${if n.pol then "+" else "-"}$nme:${uid}^${r.uid}"
    case Star(elms) => s"{${elms.map(_.pp).mkString(" · ")}}*"
  def canCancel[V <: PathElemType](other: PathElem[V]): Boolean = (this, other) match
    case (n: Normal, o: Normal) => (n == o) && (n.pol ^ o.pol)
    case _ => ???
}
case class Path(p: Ls[PathElem[PathElemType]]) {
  lazy val neg = this.copy(p = p.map(_.neg))
  lazy val rev = this.copy(p = p.map(_.rev).reverse)
  // TODO: merge two consecutive identical stars during concatenation
  def ::: (other: Path) = Path(other.p ::: p)
  def map(f: PathElem[PathElemType] => PathElem[PathElemType]) = Path(p.map(f))
  lazy val pp: Str = s"[${p.map(_.pp).mkString(" · ")}]"
  lazy val annihilated: Path =
    def anni(i: Ls[PathElem[PathElemType]], o: Ls[PathElem[PathElemType]]): Path = (i, o) match
      case (Nil, Nil) => Path(Nil)
      case (h :: t, Nil) => anni(t, h :: Nil)
      case (h :: t, h2 :: t2) => if h.canCancel(h2) then anni(t, t2) else anni(t, h :: h2 :: t2)
      case (Nil, r) => Path(r.reverse)
    anni(this.p, Nil)
}

type ExprId = Uid[Expr]
type Cnstr = ProdStrat -> ConsStrat

case class Strat[+T <: (ProdStratEnum | ConsStratEnum)](val s: T)(val path: Path) {
  def updatePath(newPath: Path): Strat[T] = this.copy()(path = newPath)
  def addPath(newPath: Path): Strat[T] = this.updatePath(newPath ::: this.path)
  lazy val negPath = this.copy()(path = path.neg)
}

trait ToStrat[+T <: (ProdStratEnum | ConsStratEnum)] { self: T =>
  def toStrat(p: Path = Path(Nil)): Strat[T] = Strat(this)(p)
}

type ProdStrat = Strat[ProdStratEnum]
type ConsStrat = Strat[ConsStratEnum]

enum ProdStratEnum(using val euid: ExprId) extends ToStrat[ProdStratEnum] {
  case NoProd()(using ExprId) extends ProdStratEnum with ToStrat[NoProd]
  case MkCtor(ctor: Var, args: Ls[ProdStrat])(using ExprId) extends ProdStratEnum with ToStrat[MkCtor]
  case Sum(ctors: Ls[Strat[MkCtor]])(using ExprId) extends ProdStratEnum with ToStrat[Sum]
  case ProdFun(lhs: ConsStrat, rhs: ProdStrat)(using ExprId) extends ProdStratEnum with ToStrat[ProdFun]
  case ProdVar(uid: Uid[TypeVar], name: String)(using ExprId) extends ProdStratEnum with ToStrat[ProdVar]
}

enum ConsStratEnum(using val euid: ExprId) extends ToStrat[ConsStratEnum] {
  case NoCons()(using ExprId) extends ConsStratEnum with ToStrat[NoCons]
  case Destruct(destrs: Ls[Destructor])(using ExprId) extends ConsStratEnum with ToStrat[Destruct]
  case ConsFun(lhs: ProdStrat, rhs: ConsStrat)(using ExprId) extends ConsStratEnum with ToStrat[ConsFun]
  case ConsVar(uid: Uid[TypeVar], name: String)(using ExprId) extends ConsStratEnum with ToStrat[ConsVar]
}

import ProdStratEnum.*, ConsStratEnum.*, Expr.*
case class Destructor(ctor: Var, argCons: Ls[Strat[ConsVar]])
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

case class Ctx(bindings: Map[Str, ProdStrat]) {
  def apply(id: Ident): ProdStrat =
    bindings.getOrElse(id.tree.name, lastWords(s"binding not found: " + id))
  def + (b: Str -> ProdStrat): Ctx =
    copy(bindings = bindings + b)
  def ++ (bs: Iterable[Str -> ProdStrat]): Ctx =
    copy(bindings = bindings ++ bs)
}
object Ctx {
  def empty = Ctx(Map.empty)
}
def ctx(using Ctx): Ctx = summon

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
    private def summary(str: String) =
      val made = str.split('\n').mkString("\\")
      if (made.length > 100) made.take(100) + Console.RESET + Console.MAGENTA + "..." + Console.RESET else made
    private[lumberhack] def log(msg: => String, color: String = Console.RED): Unit =
      if debug then println("| " * indent + color + msg + Console.RESET)
    def show(x: Any) =
      Console.RESET + summary(pprint2.apply(x).toString)
  }
  import Trace.*

  var constraints: Ls[Cnstr] = Nil
  val exprs: mutable.Map[ExprId, Expr] = mutable.Map.empty
  
  val vuid = Uid.TypeVar.State()
  val iuid = Uid.Ident.State()
  val euid = Uid.Expr.State()
  
  val noExprId = euid.nextUid
  
  def freshVar(n: String) =
    val vid = vuid.nextUid
    val pv = ProdVar(vid, n)(using noExprId)
    val cv = ConsVar(vid, n)(using noExprId)
    log(s"fresh var ${show(pv)}")
    (pv, cv)
  
  def nextIdent(isDef: Bool, name: Var): Ident = Ident(isDef, name, iuid.nextUid)
  
  val upperBounds = mutable.Map.empty[Uid[TypeVar], Ls[(Path, ConsStrat)]].withDefaultValue(Nil)
  val lowerBounds = mutable.Map.empty[Uid[TypeVar], Ls[(Path, ProdStrat)]].withDefaultValue(Nil)
  
  def process(e: Expr)(using Ctx): ProdStrat = trace(s"process ${e.uid}: ${show(e.pp)}") {
    val res: ProdStratEnum = e match
      case Const(IntLit(_)) => prodInt(using noExprId)
      case Const(l) => NoProd()(using noExprId)
      case Ref(Ident(_, Var(primitive), _)) if Deforest.lumberhackKeywords(primitive) => {
        if Deforest.lumberhackIntOps(primitive) then
          if primitive == "eq" then prodIntEq(using noExprId) else prodIntBinOp(using noExprId)
        else
          NoProd()(using noExprId)
      }
      case r @ Ref(id) => return if id.isDef then ctx(id).updatePath(Path(PathElem.Normal(r, r.uid)(false) :: Nil)) else ctx(id)
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
          (Destructor(v, as_tys.map(a_ty => ConsVar(a_ty._2.s.uid, a_ty._1)(using noExprId).toStrat())), ep)
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
  }(r => s"=> ${show(r)}")

  def apply(p: Program): Ls[Str -> ProdStrat] = trace(s"apply ${show(p)}") {
    val vars: Map[Str, Strat[ProdVar]] = p.contents.collect {
      case L(ProgDef(id, body)) =>
        id.tree.name -> freshVar(id.tree.name)._1.toStrat()
    }.toMap

    implicit val ctx = Ctx.empty ++ vars
    p.contents.map {
      case L(ProgDef(id, body)) => {
        val p = process(body)
        val v = vars(id.tree.name).s
        constrain(p, ConsVar(v.uid, v.name)(using noExprId).toStrat())
      }
      case R(e) => process(e)
    }
    vars.toList
  }(r => s"=> ${show(r)}")
  
  def constrain(prod: ProdStrat, cons: ConsStrat): Unit = {
    (prod.s, cons.s) match
      case (NoProd(), _) | (_, NoCons()) => ()
      case (p, c) => {
        // assert(prod.path.p.length <= 1)
        // assert(prod.path.pp.isEmpty || prod.path.pp.contains("-"))
        // assert(cons.path.pp.isEmpty || cons.path.pp.contains("+"))
        // assert(cons.path.pp.isEmpty)
        constraints ::= (prod, cons)
      }
  }
  
  type Cache = Map[Cnstr, Cnstr]

  val recursiveConstr = (mutable.Set.empty[Path -> Path], mutable.Map.empty[Path, Path], mutable.Map.empty[Cnstr, mutable.Set[Path -> Path]])
  def resolveConstraints: Unit = {
    
    def handle(c: Cnstr)(using cache: Cache): Unit = trace(s"handle [${pprint2.apply(c._1).toString} : ${pprint2.apply(c._2).toString}]") {
      val (prod, cons) = c
      
      (prod.s, cons.s) match
        case (_: ProdVar, _) | (_, _: ConsVar) => cache.get(c) match
          case S(inCache) =>
            log(s">> done [${pprint2.apply(c._1).toString} : ${pprint2.apply(c._2).toString}]")
            log(s">> with [${pprint2.apply(inCache._1).toString} : ${pprint2.apply(inCache._2).toString}]")
            // recursiveConstr._1 += (c._1.path -> inCache._1.path)
            // recursiveConstr._1 += (c._2.path -> inCache._2.path)
            
            // recursiveConstr._2.get(c._1.path).map { p =>
            //   assert(p == inCache._1.path, s"${pprint2(c._1.path).plainText} tied different knots: ${pprint2(p).plainText} ≠ ${pprint2(inCache._1.path).plainText}")
            // }
            // recursiveConstr._2.get(c._2.path).map { p =>
            //   assert(p == inCache._2.path, s"${pprint2(c._2.path).plainText} tied different knots: ${pprint2(p).plainText} ≠ ${pprint2(inCache._2.path).plainText}")
            // }
            // recursiveConstr._2 += (c._1.path -> inCache._1.path)
            // recursiveConstr._2 += (c._2.path -> inCache._2.path)
            
            recursiveConstr._3.updateWith(c) {
              case Some(m) =>
                m += (c._1.path.rev ::: c._2.path) -> (inCache._1.path.rev ::: inCache._2.path)
                // m += (c._1.path -> inCache._1.path)
                // m += (c._2.path -> inCache._2.path)
                Some(m)
              case None => Some({
                val m = mutable.Set.empty[Path -> Path]
                m += (c._1.path.rev ::: c._2.path) -> (inCache._1.path.rev ::: inCache._2.path)
                // m += (c._1.path -> inCache._1.path)
                // m += (c._2.path -> inCache._2.path)
                m
              })
            }
            return
          case N => //cache += c
        case _ => ()

      given Cache = cache + (c -> c)

      (prod.s, cons.s) match
        case (NoProd(), _) | (_, NoCons()) => ()
        case (ProdVar(v, _), _) =>
          upperBounds += v -> ((prod.path, cons) :: upperBounds(v))
          lowerBounds(v).foreach((lb_path, lb_strat) => handle({
            lb_strat.addPath(lb_path.rev) -> cons.addPath(prod.path.rev)
          }))
        case (_, ConsVar(v, _)) =>
          lowerBounds += v -> ((cons.path, prod) :: lowerBounds(v))
          upperBounds(v).foreach((ub_path, ub_strat) => handle({
            prod.addPath(cons.path.rev) -> ub_strat.addPath(ub_path.rev)
          }))
        case (ProdFun(lhs1, rhs1), ConsFun(lhs2, rhs2)) =>
          handle(lhs2.addPath(cons.path.neg) -> lhs1.addPath(prod.path.neg))
          handle(rhs1.addPath(prod.path) -> rhs2.addPath(cons.path))
        case (MkCtor(ctor, args), Destruct(ds)) =>
          val d = ds.find(_.ctor === ctor).get
          assert(args.size === d.argCons.size)
          args lazyZip d.argCons foreach {
            case (a, c) =>
              handle(a.addPath(prod.path), c.addPath(cons.path))
          }
        case (Sum(ctors), Destruct(ds)) => ctors.foreach { ctorStrat => ctorStrat.s match
          case MkCtor(ctor, args) => {
            val d = ds.find(_.ctor === ctor).get
            assert(args.size === d.argCons.size)
            args lazyZip d.argCons foreach {
              case (a, c) => handle(a.addPath(prod.path ::: ctorStrat.path), c.addPath(cons.path))
            }
          }
        }
        case _ => lastWords("type error")
    }()
    
    given Cache = Map.empty
    
    constraints foreach handle
  }
}

object Deforest {
  val lumberhackKeywords = Set(
    "primitive", "add", "minus", "eq", "mult", "div"
  )
  val lumberhackIntOps = Set("add", "minus", "mult", "div", "eq")
}