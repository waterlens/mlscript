data Unit = Unit
fromJust (Just a) = a
unlines ls = concat (map (\l -> l ++ ['n']) ls)
nub []             =  []
nub (x:xs)         =  x : nub (filter (\y -> not (polyEq x y)) xs)
lookup k [] = Nothing
lookup k ((x, v):t) = if polyEq k x then Just v else lookup k t
unzip ls = foldr (\ab asbs -> case ab of {(a, b) -> (case asbs of {(as, bs) -> ((a:as), (b:bs))})}) ([],[]) ls
combine y h ys t = (y:h) : (transpose (ys:t))
transpose [] = []
transpose ([] : xss) = transpose xss
transpose ((x : xs) : xss) = case (unzip [(hd, tl) | hd : tl <- xss]) of {
  (hds, tls) -> combine x hds xs tls
}
delete (x:xs) e = if polyEq x e then delete xs e else x:(delete xs e)
delete [] e = []
listDiff = foldl delete
data StateT s m a = StateT (s -> m (a, s))
runStateT (StateT f) = f
mapM f ls = foldr (\a r -> bind (f a) (\x -> bind r (\xs -> return (x:xs)))) (return []) ls
lift ls = StateT (\s -> concat $ map (\x -> [(x, s)]) ls)
execStateT m s = concat $ map (\x -> case x of {(a, s) -> [s]}) ((runStateT m) s)
bind m f = StateT (\s -> concat $ map (\as -> case as of { (a, s) -> runStateT (f a) s }) (runStateT m s))
guard True = StateT (\s -> [(Unit, s)])
guard False = StateT (\s -> [])
return a = StateT (\s -> [(a, s)])
put ss = StateT (\s -> [(Unit, ss)])
get = StateT (\s -> [(s, s)])
type DigitState a = StateT Digits [] a
-- Our digits state
-- * First we have the remaining digit to allocate.
-- * Second, we have the mapping from Char to Digit,
--   for the chars that have been mapped so far.
-- data Digits = Digits {
--   digits :: [Int],
--   digitEnv :: [(Char,Int)]
-- } deriving Show
data Digits = Digits [Int] [(Char, Int)]
digits (Digits a b) = a
digitEnv (Digits a b) = b
-- permute adds a mapping from a char to each of the
-- remaining allocable digits.
-- This is used in the context of the list-of-successes
-- monad, so it actually returns all possible mappings.
-- permute :: Char -> DigitState Int
-- permute c = do
--   st <- get
--   (i,is) <- let xs = digits st in lift [ (x,xs \\ [x]) | x <-  xs]
--   put (Digits is ((c,i):digitEnv st))
--   return i
permute c =
  bind get (\st ->
    bind (let xs = digits st in lift [ (x, listDiff xs [x]) | x <- xs]) (\iis -> case iis of {
      (i, is) -> bind (put (Digits is ((c,i):(digitEnv st)))) (\_p ->
        return i
      )
    })
  )
-- select attempt first checks to see if a mapping
-- from a specific char to digit already has been
-- mapped. If so, use the mapping, otherwise
-- add a new mapping.
-- select :: Char -> DigitState Int
-- select c = do
--   st <- get
--   case lookup c (digitEnv st) of
--     Just r -> return r
--     Nothing -> permute c
select c =
  bind get (\st ->
    case (lookup c (digitEnv st)) of {
      Just r -> return r;
      Nothing -> permute c
    }
  )
-- solve takes a list of list of (backwards) letters,
-- and a list of (backwards) letters, and tries
-- to map the letter to digits, such that
-- the sum of the first list of letters (mapped to digits)
-- is equal to the sum of the second list of letters,
-- again mapped to digits.
--
-- So a possible mapping for A+B=C might be
-- solve ["A","B"] "C" 0
--     => A -> 1, B -> 2, C -> 3
rest []     = []
rest (x:xs) = xs
-- solve :: [[Char]] -> [Char] -> Int -> DigitState Unit
-- solve tops (bot:bots) carry =
--   do topN <- (case tops of
--        [] -> return carry
--        (top:_) ->
--          do topNS <- mapM select top
--             return (sum topNS + carry))
--      botN <- select bot
--      guard (topN `mod` 10 == botN)  -- key optimization
--      solve (rest tops) bots (topN `div` 10)
-- solve [] [] 0 = return Unit
-- solve _  _  _ = mzero
solve tops (bot:bots) carry = 
  bind (case tops of 
    [] -> return carry
    (top:_) -> bind (mapM select top) (\topNS -> return ((sum topNS) + carry))
  ) (\topN -> bind (select bot) (\botN ->
    bind (guard ((topN `mod` 10) == botN)) (\_s ->
      solve (rest tops) bots (topN `div` 10))))
solve [] [] 0 = return Unit
solve _ _ _ = StateT (\_p -> [])
-- Puzzle provides a cleaner interface into solve.
-- The strings are in the order *we* write them.
puzzle :: [[Char]] -> [Char] -> String
puzzle top bot =
  let solution = solve (transpose (map reverse top)) (reverse bot) 0 in
  let answer = case (execStateT solution (Digits [0..9] [])) of {(a:_) -> a; [] -> error} in
  let env = digitEnv answer in
  let look = \c -> fromJust (lookup c env) in
  let expand = \ls -> foldl (\a -> \b -> a * 10 + look b) 0 ls in
  let topVal = sum [expand xs | xs <- top] in
  let botVal = expand bot in
  if length (nub (concat top ++ bot)) > 10 then
    error
  else if topVal /= botVal then
    error
  else unlines [ [c] ++ " => " ++ string_of_int i | (c,i) <- digitEnv answer ]
testCryptarithm2_nofib n =
  let args = ["THIRTY", "TWELVE", "TWELVE", "TWELVE", "TWELVE", "TWELVE" ++ if n > 999999 then "1" else ""] in
  puzzle args "NINETY"
testCryptarithm2_nofib $ primId 1500
