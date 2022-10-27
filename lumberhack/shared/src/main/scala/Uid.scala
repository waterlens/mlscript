package mlscript.lumberhack

// import mlscript.lumberhack.utils.*
import mlscript.utils.*, shorthands.*

opaque type Uid[T] = Int

object Uid:
  class Handler[T]:
    class State:
      private var curUid = -1
      def nextUid: Uid[T] =
        curUid += 1
        curUid
  object TypeVar extends Handler[TypeVar]
  object Ident extends Handler[Ident]
  object Expr extends Handler[Expr]

