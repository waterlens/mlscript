-----------------------------
-- Figure 1. CSPs in Haskell.
-----------------------------
type Var = Int
type Value = Int
data Assign = Assign Var Value deriving (Eq, Ord, Show)
type Relation = Assign -> Assign -> Bool
data CSP = CSP Int Int Relation
type State = [Assign]
flip f x y = f y x
all p [] = True
all p (h:t) = if p h then all p t else False
abs x = if x > 0 then x else (0 - x)
nubBy eq []             =  []
nubBy eq (x:xs)         =  x : nubBy eq (filter (\y -> not (eq x y)) xs)
deleteBy                :: (a -> a -> Bool) -> a -> [a] -> [a]
deleteBy _  _ []        = []
deleteBy eq x (y:ys)    = if eq x y then ys else y : deleteBy eq x ys
unionBy eq xs ys        = xs ++ foldl (flip (deleteBy eq)) (nubBy eq ys) xs
union xs ys = unionBy (\a b -> polyEq a b) xs ys
compareTuple2 (a, b) (c, d) = a <= c
qsort le []     r = r
qsort le [x]    r = x:r
qsort le (x:xs) r = qpart le x xs [] [] r
qpart le x [] rlt rge r =
    rqsort le rlt (x:rqsort le rge r)
qpart le x (y:ys) rlt rge r =
    if le x y then
    qpart le x ys rlt (y:rge) r
    else
    qpart le x ys (y:rlt) rge r
rqsort le []     r = r
rqsort le [x]    r = x:r
rqsort le (x:xs) r = rqpart le x xs [] [] r
rqpart le x [] rle rgt r =
    qsort le rle (x:qsort le rgt r)
rqpart le x (y:ys) rle rgt r =
    if le y x then
    rqpart le x ys (y:rle) rgt r
    else
    rqpart le x ys rle (y:rgt) r
notElem x [] = True
notElem x (h:t) = if polyEq x h then False else (notElem x t)
fst (a, b) = a
snd (a, b) = b
null [] = True
null (h:t) = False
level :: Assign -> Var
level (Assign var val) = var
value :: Assign -> Value
value (Assign var val) = val
maxLevel :: State -> Var
maxLevel [] = 0
maxLevel ((Assign var val):_) = var
complete :: CSP -> State -> Bool
complete (CSP vars vals rel) s = (maxLevel s) == vars
generate :: CSP -> [State]
generate (CSP vars vals rel) = g vals vars
  where g vals 0 = [[]]
        g vals var = [ (Assign var val):st | val <- [1..vals], st <- g vals (var-1) ]
inconsistencies :: CSP -> State -> [(Var,Var)]
inconsistencies (CSP vars vals rel) as = [ (level a, level b) | a <- as, b <- reverse as, a > b, not (rel a b) ]
consistent :: CSP -> State -> Bool
consistent csp = null . (inconsistencies csp)
test :: CSP -> [State] -> [State]
test csp = filter (consistent csp)
solver :: CSP -> [State]
solver csp  = test csp (generate csp)
safe (Assign i m) (Assign j n) = (m /= n) && ((abs (i - j)) /= (abs (m - n)))
queens :: Int -> CSP
queens n = CSP n n safe
-------------------------------
-- Figure 2.  Trees in Haskell.
-------------------------------
data Tree a = Node a [Tree a]
label :: Tree a -> a
label (Node lab _) = lab
type Transform a b = Tree a -> Tree b
mapTree  :: (a -> b) -> Transform a b
mapTree f (Node a cs) = Node (f a) (map (mapTree f) cs)
foldTree :: (a -> [b] -> b) -> Tree a -> b
foldTree f (Node a cs) = f a (map (foldTree f) cs)
filterTree :: (a -> Bool) -> Transform a a
filterTree p = let f = \a cs -> Node a (filter (p . label) cs) in foldTree f
prune :: (a -> Bool) -> Transform a a
prune p = filterTree (not . p)
leaves :: Tree a -> [a]
leaves (Node leaf []) = [leaf]
leaves (Node _ cs) = concat (map leaves cs)
initTree :: (a -> [a]) -> a -> Tree a
initTree f a = Node a (map (initTree f) (f a))
--------------------------------------------------
-- Figure 3.  Simple backtracking solver for CSPs.
--------------------------------------------------
mkTree :: CSP -> Tree State
mkTree (CSP vars vals rel) =
  let next = \ss -> [ (Assign ((maxLevel ss) + 1) j):ss | (maxLevel ss) < vars, j <- [1..vals] ] in
  initTree next []
earliestInconsistency :: CSP -> State -> Maybe (Var,Var)
earliestInconsistency (CSP vars vals rel) [] = Nothing
earliestInconsistency (CSP vars vals rel) (a:as) =
        case filter (not . rel a) (reverse as) of
          [] -> Nothing
          (b:_) -> Just (level a, level b)
labelInconsistencies :: CSP -> Transform State (State,Maybe (Var,Var))
labelInconsistencies csp =
  let f = \s -> (s,earliestInconsistency csp s) in
  mapTree f
btsolver0 :: CSP -> [State]
btsolver0 csp =
  (filter (complete csp) . leaves . (mapTree fst) . prune ((\x -> x /= Nothing) . snd)
                                            . (labelInconsistencies csp) .  mkTree) csp
-----------------------------------------------
-- Figure 6. Conflict-directed solving of CSPs.
-----------------------------------------------
data ConflictSet = Known [Var] | Unknown deriving Eq
knownConflict :: ConflictSet -> Bool
knownConflict (Known (a:as)) = True
knownConflict _              = False
knownSolution :: ConflictSet -> Bool
knownSolution (Known []) = True
knownSolution _          = False
checkComplete :: CSP -> State -> ConflictSet
checkComplete csp s = if complete csp s then Known [] else Unknown
type Labeler = CSP -> Transform State (State, ConflictSet)
search :: Labeler -> CSP -> [State]
search labeler csp =
  (map fst . filter (knownSolution . snd) . leaves . prune (knownConflict . snd) . labeler csp . mkTree) csp
bt :: Labeler
bt csp =
  let f = \s -> (s, case (earliestInconsistency csp s) of {Nothing    -> checkComplete csp s; Just (a,b) -> Known [a,b]}) in
  mapTree f
-------------------------
-- Figure 8. Backmarking.
-------------------------
type Table = [Row]       -- indexed by Var
type Row = [ConflictSet] -- indexed by Value
bm :: Labeler
bm csp = mapTree fst . lookupCache csp . cacheChecks csp (emptyTable csp)
emptyTable :: CSP -> Table
emptyTable (CSP vars vals rel) = []:[[Unknown | m <- [1..vals]] | n <- [1..vars]]
cacheChecks :: CSP -> Table -> Transform State (State, Table)
cacheChecks csp tbl (Node s cs) =
  Node (s, tbl) (map (cacheChecks csp (fillTable s csp (tail tbl))) cs)
fillTable :: State -> CSP -> Table -> Table
fillTable [] csp tbl = tbl
fillTable ((Assign var' val'):as) (CSP vars vals rel) tbl =
  let f = \cs varval -> case varval of { (var, val) -> if (polyEq cs Unknown) && (not (rel (Assign var' val') (Assign var val))) then Known [var',var] else cs } in
  zipWith (zipWith f) tbl [[(var,val) | val <- [1..vals]] | var <- [var'+1..vars]]
lookupCache :: CSP -> Transform (State, Table) ((State, ConflictSet), Table)
lookupCache csp t = mapTree (f csp) t
  where f csp ([], tbl)      = (([], Unknown), tbl)
        f csp ((a:as), tbl) =
          let tableEntry = atIndex (value a-1) (head tbl) in
          let cs = (if polyEq tableEntry Unknown then checkComplete csp (a:as) else tableEntry) in
          ((a:as, cs), tbl)
--------------------------------------------
-- Figure 10. Conflict-directed backjumping.
--------------------------------------------
bjbt :: Labeler
bjbt csp = bj csp . bt csp
bjbt' :: Labeler
bjbt' csp = bj' csp . bt csp
bj :: CSP -> Transform (State, ConflictSet) (State, ConflictSet)
bj csp = foldTree f
  where f (a, Known cs) chs = Node (a,Known cs) chs
        f (a, Unknown)  chs = Node (a,Known (combine (map label chs) [])) chs
combine :: [(State, ConflictSet)] -> [Var] -> [Var]
combine []                  acc = acc
combine ((s, Known cs):css) acc =
  if notElem (maxLevel s) cs then cs else combine css (union cs acc)
bj' :: CSP -> Transform (State, ConflictSet) (State, ConflictSet)
bj' csp = foldTree f
  where f (a, Known cs) chs = Node (a,Known cs) chs
        f (a, Unknown) chs =
          let cs' = Known (combine (map label chs) []) in
          if knownConflict cs' then Node (a,cs') [] else Node (a,cs') chs
-------------------------------
-- Figure 11. Forward checking.
-------------------------------
fc :: Labeler
fc csp = domainWipeOut csp . lookupCache csp . cacheChecks csp (emptyTable csp)
collect :: [ConflictSet] -> [Var]
collect [] = []
collect (Known cs:css) = union cs (collect css)
domainWipeOut :: CSP -> Transform ((State, ConflictSet), Table) (State, ConflictSet)
domainWipeOut (CSP vars vals rel) t = mapTree f t
  where
    f ((as, cs), tbl) =
      let wipedDomains = ([vs | vs <- tbl, all (knownConflict) vs]) in
      let cs' = if null wipedDomains then cs else Known (collect (head wipedDomains)) in
      (as, cs')
try n algorithm = length (search algorithm (queens n))
testConstraints_nofib n = map (try n) [bt, bm, bjbt, bjbt', fc]
testConstraints_nofib $ primId 6
