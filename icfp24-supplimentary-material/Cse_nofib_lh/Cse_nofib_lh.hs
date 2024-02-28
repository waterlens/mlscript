scanl f q ls = q:(case ls of { [] -> []; (x:xs) -> scanl f (f q x) xs })
scanr _ q0 [] = [q0]
scanr f q0 (x:xs) = case (scanr f q0 xs) of {
  (q:t) -> (f x q):(q:t)
}
id x = x
null [] = True
null (x:xs) = False
dropWhile f [] = []
dropWhile f (h:t) = if (f h) then dropWhile f t else (h:t)
inList x (h:t) = if x == h then True else inList x t
inList x [] = False
-- General purpose state monad -----------------------------------------------
type SM s a       = s -> (s, a)
-- Primitive monad operators -------------------------------------------------
retURN           :: a -> SM s a
retURN x          = \s -> (s, x)
bind             :: SM s a -> (a -> SM s b) -> SM s b
bind m f          = \s -> case (m s) of { (s', a) -> f a s' }
join             :: SM s (SM s a) -> SM s a
join m            = \s -> case (m s) of { (s', ma) -> ma s' } 
mmap             :: (a -> b) -> (SM s a -> SM s b)
mmap f m          = \s -> case (m s) of { (s', a) -> (s', f a) }
-- General monad operators ---------------------------------------------------
mmapl            :: (a -> SM s b) -> ([a] -> SM s [b])
mmapl f []        = retURN []
mmapl f (a:as)    = f a             `bind` \b ->
                    mmapl f as      `bind` \bs ->
                    retURN (b:bs)
mmapr            :: (a -> SM s b) -> ([a] -> SM s [b])
mmapr f []        = retURN []
mmapr f (x:xs)    = mmapr f xs      `bind` \ys ->
                    f x             `bind` \y  ->
                    retURN (y:ys)
mfoldl           :: (a -> b -> SM s a) -> a -> [b] -> SM s a
mfoldl f a []     = retURN a
mfoldl f a (x:xs) = f a x           `bind` \fax ->
                    mfoldl f fax xs
mfoldr           :: (a -> b -> SM s b) -> b -> [a] -> SM s b
mfoldr f a []     = retURN a
mfoldr f a (x:xs) = mfoldr f a xs   `bind` \y ->
                    f x y
mif              :: SM s Bool -> SM s a -> SM s a -> SM s a
mif c t f         = c               `bind` \cond ->
                    if cond then t
                            else f
-- Specific utilities for state monads ---------------------------------------
startingWith      :: SM s a -> s -> a
startingWith m v   = case (m v) of { (final, answer) -> answer }
fetch             :: SM s s
fetch              = \s -> (s,s)
fetchWith         :: (s -> a) -> SM s a
fetchWith f        = \s -> (s, f s)
update            :: (s -> s) -> SM s s
update f           = \s -> (f s, s)
set               :: s -> SM s s
set s'             = \s -> (s',s)
-- Common use of state monad: counter ----------------------------------------
incr              :: SM Int Int
incr             = update (\x -> 1+x)
-- Data type definitions: ----------------------------------------------------
data GenTree a  = Node a [GenTree a]
type LabGraph a = [ (Label, a, [Label]) ]
type Label      = Int
-- Add distinct (integer) labels to each node of a tree: ---------------------
labelTree   :: GenTree a -> GenTree (Label,a)
labelTree t  = (label t) `startingWith` 0
               where label (Node x xs) = (incr)           `bind` \n  ->
                                         mmapl label xs `bind` \ts ->
                                         retURN (Node (n,x) ts)
-- Convert tree after labelling each node to a labelled graph: ---------------
ltGraph                :: GenTree (Label,a) -> LabGraph a
ltGraph (Node (n,x) xs) = (n, x, map labelOf xs) : (concat (map ltGraph xs))
                          where labelOf (Node (n,x) xs) = n
-- Build tree from labelled graph: -------------------------------------------
unGraph              :: LabGraph a -> GenTree a
unGraph ((n,x,cs):ts) = 
  let find = \c -> dropWhile (\d__ -> case d__ of (d, _, _) -> c/=d) ts in
  Node x (map (unGraph . find) cs)
-- Build tree but avoid duplicating shared parts: ----------------------------
unGraph'     :: LabGraph String -> GenTree (Int,String)
unGraph' lg =
  (ung lg) `startingWith` []
    where
      ung ((n,x,cs):ts) =
        let find = \c -> dropWhile (\d__ -> case d__ of (d, _, _) -> c/=d) ts in
        mif (visited n) (retURN (Node (n,"<>") [])) (mmapl (ung . find) cs `bind` \ts -> retURN (Node (n,x) ts))
visited      :: Label -> SM [Label] Bool
visited n     = fetch                               `bind` \us ->
                if inList n us then retURN True
                               else set (n:us)      `bind` \_p ->
                                    retURN False
-- Find (and eliminate) repeated subtrees in a labelled graph: ---------------
-- Described as a transformation on labelled graphs:  During the calculation
-- we use a pair (r,lg) :: (Label->Label, LabGraph a) where lg contains the
-- simplified portion of the graph calculated so far and r is a renaming (or
-- replacement?) which maps node labels in the original graph to the approp.
-- labels in the new graph.
findCommon :: Eq a => LabGraph a -> LabGraph a
findCommon ls = case (foldr sim (id,[]) ls) of { (a, b) -> b }
  where
    -- sim ::
    --   Eq a => (Label,a,[Label]) -> (Label -> Label, LabGraph a) ->
    --   (Label -> Label, LabGraph a)
    sim (n,s,cs) (r,lg) =
      let rcs = map r cs in
      let ms = [m | (m,s',cs')<-lg, polyEq s s', polyEq cs' rcs] in
      if null ms then
        (r, [(n,s,rcs)] ++ lg)
      else
        ((newlyDefined n (head ms)) r, lg)
newlyDefined :: Eq a => a -> b -> (a -> b) -> (a -> b)
newlyDefined x fx f y  = if polyEq x y then fx else f y
-- Common subexpression elimination: -----------------------------------------
cse :: Eq a => GenTree a -> LabGraph a
cse t = findCommon (ltGraph $ labelTree t)
-- Examples: -----------------------------------------------------------------
plus_ x y = Node "+" [x,y]
mult_ x y = Node "*" [x,y]
prod xs  = Node "X" xs
zerO     = Node "0" []
a        = Node "a" []
b        = Node "b" []
c        = Node "c" []
d        = Node "d" []
example0 = a
example1 = plus_ a a
example2 = plus_ (mult_ a b) (mult_ a b)
example3 = plus_ (mult_ (plus_ a b) c) (plus_ a b)
example4 = prod (scanl plus_ (zerO) [a,b,c,d])
example5 = prod (scanr plus_ (zerO) [a,b,c,d])
testCse_nofib n = map (\i -> (map cse (take (i `mod` 6) [(example0), (example1), (example2), (example3), (example4), (example5)]))) (primId [1..n])
testCse_nofib $ primId 1000
