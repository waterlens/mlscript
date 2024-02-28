enumFromTo_lz a b = lazy (if a <= b then a:(enumFromTo_lz (a + 1) b) else [])
max a b = if a > b then a else b
min a b = if a < b then a else b
last (h:t) = go h t
  where
    go h [] = h
    go h (head:t) = go head t
all p [] = True
all p (h:t) = if p h then all p t else False
data Key = K String Char Char Int {- String, end letters, length of string -}
data HashSet = H (Maybe Int) (Maybe Int) [Int]
type HashFun = [(Char,Int)]  {- Association list of Character to values -}
ends :: Key -> String
ends (K _ a z _) = [a,z]
morefreq :: Key -> Key -> Bool
morefreq (K _ a x _) (K _ b y _) = ((freq a) + (freq x)) > ((freq b) + (freq y))
freq :: Char -> Int
freq c = assoc c (freqtab)
assoc :: (Eq a) => a -> [(a,b)] -> b
assoc x ((y,z):yzs) = if polyEq x y then z else assoc x yzs
assocm :: (Eq a) => a -> [(a,b)] -> Maybe b
assocm x [] = Nothing
assocm x ((y,z):yzs) = if polyEq x y then Just z else assocm x yzs
--- freqtab :: [(Char, Int)]
freqtab = histo (concat (map ends (attribkeys (keys))))
histins x [] = [(x,1)]
histins x ((y,n):yns) = if polyEq x y then (y,n+1):yns else (y,n):(histins x yns)
histo :: (Eq a) => [a] -> [(a,Int)]
histo ls = (foldr histins []) ls
subset :: (Eq a) => [a] -> [a] -> Bool
subset xs ys = all (\x -> member x ys) xs
union :: (Eq a) => [a] -> [a] -> [a]
union xs ys = xs ++ [y | y <- ys, not (member y xs)]
attribkeys :: [String] -> [Key]
attribkeys ks = map (\k->(K k (head k) (last k) (length k))) ks
numberofkeys = length keys
maxval = length freqtab
hinsert :: Int -> HashSet -> Maybe HashSet
hinsert h (H lo hi hs) =
  let lo' = minm lo h in
  let hi' = maxm hi h in
    if (member h hs) || ((1 + hi'- lo') > (numberofkeys)) then Nothing
    else Just (H (Just lo') (Just hi') (h:hs))
minm, maxm :: Maybe Int -> Int -> Int
minm Nothing y = y
minm (Just x) y = min x y
maxm Nothing y = y
maxm (Just x) y = max x y
member :: (Eq a) => a -> [a] -> Bool
member _ [] = False
member x (y:ys) = (polyEq x y) || (member x ys)
hash :: HashFun -> Key -> Int
hash cvs (K _ a z n) = n + (assoc a cvs) + (assoc z cvs)
partition' :: (a->Bool) -> [a] -> ([a],[a])
partition' p = foldr (select p) ([],[])
select p x (ts,fs) = if p x then (x:ts,fs) else (ts,x:fs)
freqsorted :: [Key] -> [Key]
freqsorted x = x
blocked :: [Key] -> [Key]
blocked ls = blocked' [] ls
blocked' ds [] = []
blocked' ds (k : ks) =
  let ds' = union ds (ends k) in
  case (partition' (\x->subset (ends x) ds') ks) of {
    (det,rest) ->  (k : det ++ blocked' ds' rest)
  }
keys = ["case","class","data","default","deriving","else","hiding", "if","import","in","infix","infixl","instance","interface","let","module","of","renaming","then","to","type","where"]
data Status a = NotEver Int | YesIts Int a deriving Show
prog n = cichelli n
findhash :: [Key] -> FeedBack
findhash keys = findhash' (H Nothing Nothing []) [] keys
findhash' :: HashSet -> HashFun -> [Key] -> FeedBack
findhash' keyHashSet charAssocs [] = (YesIts 1 charAssocs)
findhash' keyHashSet charAssocs ((K s a z n):ks) =
  let try = (\newAssocs -> let newCharAssocs = newAssocs ++ charAssocs in (case (hinsert (hash newCharAssocs (K s a z n)) keyHashSet) of {Nothing -> (NotEver 1); Just newKeyHashSet -> findhash' newKeyHashSet newCharAssocs ks})) in
  case (assocm a charAssocs, assocm z charAssocs) of
    (Nothing,Nothing) ->
        if polyEq a z then
          firstSuccess (\m-> try [(a,m)]) (enumFromTo_lz 0 maxval)
        else
          firstSuccess (\mn -> case mn of { (m,n) -> try [(a,m),(z,n)] }) (lazy [(m,n) | m<-(enumFromTo_lz 0 maxval), n<-(enumFromTo_lz 0 maxval)])
    (Nothing,Just zc) -> firstSuccess (\m->try [(a,m)]) (enumFromTo_lz 0 maxval)
    (Just ac,Nothing) -> firstSuccess (\n->try [(z,n)]) (enumFromTo_lz 0 maxval)
    (Just ac,Just zc) -> try []
-- Returns the first successful `working' function on a list of possible arguments
firstSuccess :: (a -> FeedBack) -> [a] -> FeedBack
firstSuccess f possibles =  first 0 (map_lz f possibles)
first :: Int -> [FeedBack] -> FeedBack
first k ls =
  case (force ls) of {
    [] -> NotEver k;
    (a:l) -> case a of
                  (YesIts leaves y) -> YesIts (k+leaves) y
                  (NotEver leaves)  -> first (k+leaves) l
  }
type FeedBack = Status HashFun
cichelli :: Int -> FeedBack
cichelli n =
  let attribkeys' = attribkeys ((keys) ++ take (n `mod` 2) (keys)) in
  let hashkeys = (blocked.freqsorted) attribkeys' in
  findhash hashkeys
testCichelli_nofib n = prog n
testCichelli_nofib $ primId 6
