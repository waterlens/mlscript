package mlscript
package lumberhack

import mlscript.utils.shorthands.*
import scala.collection.mutable
import mlscript.utils.AnyOps

def error(msg: Str): Nothing =
  throw new Exception(msg)

type TypeVar
type Path = Ls[Ref -> Uid[Expr]]
type ExprId = Uid[Expr]
type Cnstr = ProdStrat -> ConsStrat

case class Strat[+T <: (ProdStratEnum | ConsStratEnum)](val s: T)(val path: Path) {
  def updatePath(newPath: Path): Strat[T] = this.copy()(path = newPath)
  def addPath(newPath: Path): Strat[T] = this.updatePath(newPath ::: this.path)
}

trait ToStrat[+T <: (ProdStratEnum | ConsStratEnum)] { self: T =>
  def toStrat(p: Path = Nil): Strat[T] = Strat(this)(p)
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


case class Ctx(
  bindings: Map[Str, ProdStrat]
) {
  def apply(id: Ident): ProdStrat =
    bindings.getOrElse(id.tree.name, error(s"binding not found: " + id))
  def + (b: Str -> ProdStrat): Ctx =
    copy(bindings = bindings + b)
  def ++ (bs: Iterable[Str -> ProdStrat]): Ctx =
    copy(bindings = bindings ++ bs)
}
object Ctx {
  def empty = Ctx(
    Map.empty
  )
}
def ctx(using Ctx): Ctx = summon

class Deforest(debug: Boolean) {
  
  var constraints: Ls[Cnstr] = Nil
  val exprs: mutable.Map[ExprId, Expr] = mutable.Map.empty
  
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
  inline def log(msg: => String, color: String = Console.RED): Unit =
    if debug then println("| " * indent + color + msg + Console.RESET)
  def show(x: Any) =
    Console.RESET + summary(pprint2.apply(x).toString)
  
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
      case Const(l) => NoProd()(using noExprId)
      case Ref(Ident(_, Var("primitive"), _)) => NoProd()(using noExprId)
      case r @ Ref(id) => return if id.isDef then ctx(id).updatePath((r -> r.uid) :: Nil) else ctx(id)
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
      case (p, c) => constraints ::= (prod, cons)
  }
  
  val defInstances = mutable.Map.empty[Path -> Path, mutable.Set[ExprId -> ExprId]]
  val cnstrsList = mutable.ArrayBuffer.empty[Cnstr]
  val recursiveConstr = mutable.Map.empty[Cnstr, Cnstr] -> mutable.Map.empty[Path, Path]
  def resolveConstraints: Unit = {
    val cache: mutable.Set[Cnstr] = mutable.Set.empty
    
    def handle(c: Cnstr): Unit = trace(s"handle [${pprint2.apply(c._1).toString} : ${pprint2.apply(c._2).toString}]") {
      val (prod, cons) = c
      
      (prod.s, cons.s) match {
        case (_: ProdVar, _) | (_, _: ConsVar) => cache.find(_.equals(c)) match {
          case S(inCache) => {
            log(s">> done [${pprint2.apply(c._1).toString} : ${pprint2.apply(c._2).toString}]\n" +
              s">> with [${pprint2.apply(inCache._1).toString} : ${pprint2.apply(inCache._2).toString}]")
            recursiveConstr._1 += (c -> inCache)
            recursiveConstr._2 += (c._1.path -> inCache._1.path)
            recursiveConstr._2 += (c._2.path -> inCache._2.path)
            return
          }
          case N => cache += c
        }
        case _ => ()
      }

      cnstrsList += c
      if prod.s.euid =/= noExprId && cons.s.euid =/= noExprId then
        val pcs = defInstances.getOrElseUpdate((prod.path -> cons.path), mutable.Set.empty)
        pcs += prod.s.euid -> cons.s.euid

      def biggestCore(p1: Path, p2: Path): (Path, Path, Path) = {
        // val core = Nil;
        val core = p1.reverse.zip(p2.reverse).takeWhile(_ == _).map(_._1).reverse
        (core, p1.take(p1.length - core.length), p2.take(p2.length - core.length))
      }

      (prod.s, cons.s) match
        case (NoProd(), _) | (_, NoCons()) => ()
        case (ProdVar(v, _), _) =>
          upperBounds += v -> ((prod.path, cons) :: upperBounds(v))
          lowerBounds(v).foreach((lb_path, lb_strat) => handle({
            // NOTE: explain this
            val (core, new_lb_path, new_prod_path) = biggestCore(lb_path, prod.path)
            lb_strat.addPath(new_prod_path) -> cons.addPath(new_lb_path)
          }))
        case (_, ConsVar(v, _)) =>
          lowerBounds += v -> ((cons.path, prod) :: lowerBounds(v))
          upperBounds(v).foreach((ub_path, ub_strat) => handle({
            // NOTE: explain this
            val (core, new_ub_path, new_cons_path) = biggestCore(ub_path, cons.path)
            prod.addPath(new_ub_path) -> ub_strat.addPath(new_cons_path)
          }))
        case (ProdFun(lhs1, rhs1), ConsFun(lhs2, rhs2)) =>
          handle(lhs2.addPath(cons.path) -> lhs1.addPath(prod.path))
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
        case _ => error("type error")
    }()
    
    constraints foreach handle
  }
}
