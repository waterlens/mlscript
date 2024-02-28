null [] = True
null (h:t) = False
flatMap f [] = []
flatMap f (h:t) = (f h) ++ (flatMap f t)
lookup k [] = Nothing
lookup k ((x, v):t) = if eqList k x then Just v else lookup k t
data MyState s a = MyState (s -> (s, a))
myRunState :: MyState s a -> s -> (s, a)
myRunState (MyState f) = f
myBind :: MyState s a -> (a -> MyState s b) -> MyState s b
myBind m f = MyState (\s -> case (myRunState m s) of { (s, a) -> myRunState (f a) s })
myReturn :: a -> MyState s a
myReturn a = MyState (\s -> (s, a))
myGet :: MyState s s
myGet = MyState (\s -> (s, s))
myEvalState :: MyState s a -> s -> a
myEvalState m s = case (myRunState m s) of (s, a) -> a
-- start below
mainSimple args =
        if null args
           then error "Args: number-to-sum-up-to"
           else (showTerm (simpleEval [] (App sum0 (Con ((head args))))))
mainMonad args =
        if null args
           then error "Args: number-to-sum-up-to"
           else (ev (App sum0 (Con ((head args)))))
------------------------------------------------------------
-- Data structures
------------------------------------------------------------
--instance Show (a -> b) where
--    show f = "<function>"
data Term
    = Var String
    | Con Int
    | Incr
    | Add Term Term
    | Lam String Term
    | App Term Term
    | IfZero Term Term Term
    -- the following terms are used internally
    | Thunk Term Env  -- a closure
showTerm (Con a) = "Con " ++ (string_of_int a)
showTerm _ = error "unimplemented"
eqTerm (Var a) (Var b) = eqList a b
eqTerm (Con a) (Con b) = a == b
eqTerm (Incr) (Incr) = True
eqTerm (Add a b) (Add c d) = (eqTerm a c) && (eqTerm b d)
eqTerm (Lam a b) (Lam c d) = (eqList a c) && (eqTerm b d)
eqTerm (App a b) (App c d) = (eqTerm a c) && (eqTerm b d)
eqTerm (IfZero a b c) (IfZero d e f) = (eqTerm a d) && (eqTerm b e) && (eqTerm c f)
eqTerm (Thunk a b) (Thunk c d) = (eqTerm a c) && (eqEnv b d)
eqEnv [] [] = True
eqEnv ((s1, t1):b) ((s2, t2):d) = if ((eqList s1 s2) && (eqTerm t1 t2)) then eqEnv b d else False
eqList [] [] = True
eqList (a:b) (c:d) = if (polyEq a c) then eqList b d else False
type Env = [(String,Term)]
----------------------------------------------------------------------
-- Evaluate a term
----------------------------------------------------------------------
ev :: Term -> String
ev t =
    let envt2 = myRunState (traverseTerm t) [] in
    case envt2 of (env, t2) -> (pp t2) ++ "  " ++ (ppenv env)
-----------------------------------------------------------------
-- This class extends Monad to have the standard features
-- we expect while evaluating/manipulating expressions.
----------------------------------------------------
-- class (Monad m) => EvalEnvMonad m where
incr :: a -> MyState Env Unit     -- example of a state update function
-- these defines the traversal!
traverseTerm :: Term -> MyState Env Term
--traversePred :: Pred -> m Pred
lookupVar :: String -> MyState Env Term
pushVar   :: String -> Term -> MyState Env a -> MyState Env a
-- currEnv   :: MyState Env Env         -- returns the current environment
withEnv   :: Env -> MyState Env a -> MyState Env a  -- uses the given environment
myMaybe d f Nothing = d 99
myMaybe d f (Just x) = f x
pushVar v t m = myBind myGet (\env -> withEnv ((v,t):env) m)
incr = myReturn Unit
traverseTerm t = eval t
lookupVar v =
    let lookup2 = \env -> myMaybe (\_dummy -> error ("undefined var: " ++ v)) (\x -> x) (lookup v env) in
    myBind myGet (\env -> myReturn (lookup2 env))
-- currEnv = myGet
withEnv tmp m = myReturn (myEvalState m tmp)
-- traverseCon :: (EvalEnvMonad m) => Term -> m Int
traverseCon t =
    myBind (traverseTerm t) (\t' ->
       case t' of
           Con c -> myReturn c
           _ -> error ("Not a Con: " ++ (showTerm t'))
    )
-- eval :: (EvalEnvMonad m) => Term -> m Term
eval (Var x) =
    myBind myGet (\e ->
        myBind (lookupVar x) (\t ->
            traverseTerm t
        )
    )
eval (Add u v) =
        myBind (traverseCon u) (\u' ->
            myBind (traverseCon v) (\v' ->
                myReturn (Con (u' + v'))
            )
        )
eval (Thunk t e) = withEnv e (traverseTerm t)
eval (Lam x b) =
    myBind myGet (\env ->
        myReturn (Thunk (Lam x b) env)
    )
eval (App u v) =
        myBind (traverseTerm u) (\u' ->
            apply u' v
        )
eval (IfZero c a b) =
        myBind (traverseTerm c) (\val ->
            if eqTerm val (Con 0)
                then traverseTerm a
                else traverseTerm b
        )
eval (Con i)   = myReturn (Con i)
eval (Incr)    = myBind (incr) (\_dummy -> myReturn (Con 0))
--apply :: Term -> Term -> StateMonad2 Term
apply (Thunk (Lam x b) e) a =
        myBind myGet (\orig ->
            withEnv e (pushVar x (Thunk a orig) (traverseTerm b))
        )
apply a b         = error ("bad application: " ++ (pp a) ++ "  [ " ++ (pp b) ++ " ].")
----------------------------------------------------------------------
-- A directly recursive Eval, with explicit environment
----------------------------------------------------------------------
-- A trivial monad so that we can use monad syntax.
-- newtype Id a = Id (Identity a)
--     deriving (Applicative, Functor, Monad)
-- instance Show a => Show (Id a) where
--     show (Id i) = show (runIdentity i)
type Id a = a
simpleEvalCon :: Env -> Term -> Id Int
simpleEvalCon env e =
    let e' = simpleEval env e in
    case e' of
        Con c -> c
        _ -> error ("Not a Con: " ++ showTerm e')
simpleEval :: Env -> Term -> Id Term
simpleEval env (Var v) =
    simpleEval env (myMaybe (\_dummy -> error ("undefined var: " ++ v)) (\x -> x) (lookup v env))
simpleEval env (Con e) = Con e
simpleEval env Incr = (Con 0)
simpleEval env (Add u v) =
    let u' = simpleEvalCon env u in
    let v' = simpleEvalCon env v in
    (Con (u' + v'))
    where
    addCons (Con a) (Con b) = (Con (a+b))
    addCons (Con _) b = error ("type error in second arg of Add: " ++ (pp b))
    addCons a (Con _) = error ("type error in first arg of Add: " ++ (pp a))
simpleEval env (Lam x b) = (Thunk (Lam x b) env)  -- return a closure!
simpleEval env (App u v) =
    let u' = simpleEval env u in
    simpleApply env u' v
simpleEval env (IfZero c a b) =
    let val = simpleEval env c in
    if eqTerm val (Con 0)
       then simpleEval env a
       else simpleEval env b
simpleEval env (Thunk t e) =
    simpleEval e t
simpleApply :: Env -> Term -> Term -> Id Term
simpleApply env (Thunk (Lam x b) e) a = simpleEval ((x, Thunk a env) : e) b
simpleApply env a b         = error ("bad application: " ++ (pp a) ++ "  [ " ++ (pp b) ++ " ].")
------------------------------------------------------------
-- Utility functions for printing terms and envs.
------------------------------------------------------------
ppenv env = "[" ++ (flatMap (\vt -> case vt of (v,t) -> v ++ "=" ++ (pp t) ++ ", ") env) ++ "]"
pp :: Term -> String
pp t = ppn 0 t
-- Precedences:
--   0 = Lam and If (contents never bracketed)
--   1 = Add
--   2 = App
--   3 = atomic and bracketed things
ppn :: Int -> Term -> String
ppn _ (Var v) = v
ppn _ (Con i) = string_of_int i
ppn _ (Incr)  = "INCR"
ppn n (Lam v t) = bracket n 0 ("@" ++ v ++ ". " ++ ppn (0-1) t)
ppn n (Add a b) = bracket n 1 (ppn 1 a ++ " + " ++ ppn 1 b)
ppn n (App a b) = bracket n 2 (ppn 2 a ++ " " ++ ppn 2 b)
ppn n (IfZero c a b) = bracket n 0
    ("IF " ++ ppn 0 c ++ " THEN " ++ ppn 0 a ++ " ELSE " ++ ppn 0 b)
ppn n (Thunk t e) = bracket n 0 (ppn 3 t ++ "::" ++ ppenv e)
bracket outer this t = if this <= outer then "(" ++ t ++ ")" else t
------------------------------------------------------------
-- Test Data
------------------------------------------------------------
-- x  = (Var "x")
-- y  = (Var "y")
-- a1 = (Lam "x" (Add (Var "x") (Con 1)))
-- aa = (Lam "x" (Add (Var "x") (Var "x")))
-- These should all return 1
-- iftrue = (IfZero (Con 0) (Con 1) (Con 2))
-- iffalse = (IfZero (Con 1) (Con 2) (Con 1))
-- This function sums all the numbers from 0 upto its argument.
sum0 :: Term
sum0 = (App fix partialSum0)
partialSum0 = (Lam "sum"
          (Lam "n"
           (IfZero (Var "n")
            (Con 0)
            (Add (Var "n") (App (Var "sum") nMinus1)))))
nMinus1 = (Add (Var "n") (Con (0-1)))
lfxx :: Term
lfxx = (Lam "x" (App (Var "F") (App (Var "x") (Var "x"))))
-- This is the fix point combinator:  Y
fix :: Term
fix = (Lam "F" (App lfxx lfxx))
testLambda_nofib n = (mainSimple [n], mainMonad [n])
testLambda_nofib $ primId 80
