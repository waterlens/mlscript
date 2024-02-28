compareList []     []     = EQ
compareList []     (_:_)  = LT
compareList (_:_)  []     = GT
compareList (x:xs) (y:ys) =
  if (int_of_char x) == (int_of_char y) then
    compareList xs ys
  else if (int_of_char x) < (int_of_char y) then
    LT
  else
    GT
gtList a b = case compareList a b of
  GT -> True
  _ -> False
leList a b = not (gtList a b)
ltList a b = case compareList a b of
  LT -> True
  _ -> False
geList a b = not (ltList a b)
eqList a b = polyEq (compareList a b) EQ
intersperse             :: a -> [a] -> [a]
intersperse _   []      = []
intersperse sep (x:xs)  = x : (prependToAll sep xs)
prependToAll            :: a -> [a] -> [a]
prependToAll _   []     = []
prependToAll sep (x:xs) = sep : (x : prependToAll sep xs)
break p [] = ([], [])
break p (x:xs) = if p x then ([], (x:xs)) else case (break p xs) of { (ys, zs) -> ((x:ys), zs) }
lines [] = []
lines s = case break (\x -> polyEq x '|') s of (l, s') -> (l:(case s' of { [] -> []; _:s'' -> lines s'' }))
unlines ls = concat $ map (\l -> l ++ "|") ls
odd x = (mod x 2) == 0
-- trying various sorts
hash :: String -> Int
hash str = foldl (\acc c -> (int_of_char c) + (acc*31)) 0 str
quickSort :: [[Char]] -> [[Char]]
quickSort2 :: [[Char]] -> [[Char]]
quickerSort :: [[Char]] -> [[Char]]
insertSort :: [[Char]] -> [[Char]]
treeSort :: [[Char]] -> [[Char]]
treeSort2 :: [[Char]] -> [[Char]]
heapSort :: [[Char]] -> [[Char]]
mergeSort :: [[Char]] -> [[Char]]
quickSort []   = []
quickSort (x:xs) = (quickSort [ y | y <- xs, leList y x ]) ++ (x : quickSort [ y | y <- xs, gtList y x ])
partition :: (a -> Bool) -> [a] -> ([a],[a])
partition p xs = foldr (select p) ([],[]) xs
select :: (a -> Bool) -> a -> ([a], [a]) -> ([a], [a])
select p x (ts,fs) = if p x then ((x:ts), fs) else (ts, (x:fs))
quickSort2 []   = []
quickSort2 (x:xs) =
  case (partition ((\x -> \y -> geList x y) x) xs) of { (lo, hi) -> (quickSort2 lo) ++ (x : (quickSort2 hi)) }
-- tail-recursive, etc., "quicker sort" [as per Meira thesis]
quickerSort []     = []
quickerSort [x]     = [x]
quickerSort (x:xs) = split x [] [] xs
  where
    split x lo hi []   = quickerSort lo ++ (x : quickerSort hi)
    split x lo hi (y:ys) = if leList y x then split x (y:lo) hi ys else split x lo (y:hi) ys
-------------------------------------------------------------
-- as per Meira thesis
insertSort []      = []
insertSort (x:xs)  = trins [] [x] xs
  where
    -- trins :: Ord a => [a] -> [a] -> [a] -> [a]
    trins rev []     (y:ys)    = trins [] ((reverse rev) ++ [y]) ys
    trins rev xs     []        = (reverse rev) ++ xs
    trins rev (x:xs) (y:ys) = if ltList x y then trins (x:rev) xs (y:ys) else trins [] (reverse rev ++ (y:(x:xs))) ys
-------------------------------------------------------------
-- again, as per Meira thesis
data Tree a = Tip | Branch a (Tree a) (Tree a) deriving ()
treeSort param = (readTree . mkTree) param
  where
    -- mkTree :: Ord a => [a] -> Tree a
    mkTree innerparam = foldr to_tree Tip innerparam
      where
        -- to_tree :: Ord a => a -> Tree a -> Tree a
        to_tree x Tip = Branch x Tip Tip
        to_tree x (Branch y l r) = if leList x y then Branch y (to_tree x l) r else Branch y l (to_tree x r)
    -- readTree :: Ord a => Tree a -> [a]
    readTree Tip      = []
    readTree (Branch x l r) = (readTree l) ++ (x : (readTree r))
-- try it w/ bushier trees
data Tree2 a = Tip2 | Twig2 a | Branch2 a (Tree2 a) (Tree2 a) deriving ()
treeSort2 param = (readTree . mkTree) param
  where
    -- mkTree :: Ord a => [a] -> Tree2 a
    mkTree innerparam = foldr to_tree Tip2 innerparam
      where
        -- to_tree :: Ord a => a -> Tree2 a -> Tree2 a
        to_tree x Tip2 = Twig2 x
        to_tree x (Twig2 y) = if leList x y then Branch2 y (Twig2 x) Tip2 else Branch2 y Tip2 (Twig2 x)
        to_tree x (Branch2 y l r) = if leList x y then Branch2 y (to_tree x l) r else Branch2 y l (to_tree x r)
    readTree :: Ord a => Tree2 a -> [a]
    readTree Tip2       = []
    readTree (Twig2 x)  = [x]
    readTree (Branch2 x l r) = (readTree l) ++ (x : (readTree r))
-------------------------------------------------------------
-- ditto, Meira thesis
heapSort xs = clear (heap 0 xs)
  where
    -- heap :: Ord a => Int -> [a] -> Tree a
    heap k [] = Tip
    heap k (x:xs) = to_heap k x (heap (k+1) xs)
    -- to_heap :: Ord a => Int -> a -> Tree a -> Tree a
    to_heap k x Tip = Branch x Tip Tip
    to_heap k x (Branch y l r) = if ((leList x y) && (odd k)) then Branch x (to_heap (div2 k) y l) r
                                 else if (leList x y) then Branch x l (to_heap (div2 k) y r)
                                 else if (odd k) then Branch y (to_heap (div2 k) x l) r
                                 else Branch y l (to_heap (div2 k) x r)
    -- clear :: Ord a => Tree a -> [a]
    clear Tip       = []
    clear (Branch x l r) = x : (clear (mix l r))
    -- mix :: Ord a => Tree a -> Tree a -> Tree a
    mix Tip r = r
    mix l Tip = l
    mix (Branch x l1 r1) (Branch y l2 r2) = if leList x y then Branch x (mix l1 r1) (Branch y l2 r2) else Branch y (Branch x l1 r1) (mix l2 r2)
    div2 :: Int -> Int
    div2 k = k `div` 2
-------------------------------------------------------------
-- ditto, Meira thesis
mergeSort param = (merge_lists . (runsplit [])) param
  where
    -- runsplit :: Ord a => [a] -> [a] -> [[a]]
    runsplit []     []      = []
    runsplit run    []      = [run]
    runsplit []     (x:xs)  = runsplit [x] xs
    runsplit (r:rs) (x:xs)  = case rs of {
      [] -> if gtList x r then runsplit [r,x] xs else if leList x r then runsplit (x:(r:rs)) xs else (r:rs) : (runsplit [x] xs);
      rs -> if leList x r then runsplit (x:(r:rs)) xs else (r:rs) : (runsplit [x] xs)
    }
    -- merge_lists :: Ord a => [[a]] -> [a]
    merge_lists []     = []
    merge_lists (x:xs) = merge x (merge_lists xs)
    -- merge :: Ord a => [a] -> [a] -> [a]
    merge [] ys = ys
    merge xs [] = xs
    merge (x:xs) (y:ys) = if eqList x y then x : (y : (merge xs ys))
                          else if ltList x y then x : (merge xs (y:ys))
                          else y : (merge (x:xs) ys)
mangle :: String -> String
mangle inpt
  = (unlines . sort . lines) inpt
  where
    sort param = foldr (\f -> \g -> f . g) (\x -> x) (intersperse reverse [heapSort, insertSort , mergeSort , quickSort , quickSort2 , quickerSort, treeSort, treeSort2]) param
testSorting_nofib dummy =
  let f = primId "module Main where||import Sort||import Control.Monad (replicateM_)|import Data.List (intersperse)|import System.Environment (getArgs)|import NofibUtils (hash)||main = do|  (n:_) <- getArgs|  replicateM_ (read n) $ do|    (_:s:_) <- getArgs|    f <- readFile s|    print (hash (mangle f))||mangle :: String{-input to sort-} -> String{-output-}|mangle inpt|  = (unlines . sort . lines) inpt|  where|    sort = foldr (.) id (intersperse reverse sorts)|    sorts =|      [ heapSort|      , insertSort|      , mergeSort|      , quickSort|      , quickSort2|      , quickerSort|      , treeSort|      , treeSort2|      ]|" in
  (hash (mangle f))
testSorting_nofib $ primId 0
