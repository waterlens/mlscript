drop_lz n ls = case (force ls) of
                  [] -> lazy []
                  (h:t) -> if n > 0 then (drop_lz (n - 1) t) else t
even k = (k `mod` 2) == 0
splitAt_lz n ls = (take_lz n ls, drop_lz n ls)
int_val_of_char x = (int_of_char x) - 48
int_val_of_string s = f s 0
  where
    f [] a = a
    f (h:t) a = f t ((10*a) + (int_val_of_char h))
break p [] = ([], [])
break p (x:xs) = if p x then ([], (x:xs)) else case (break p xs) of { (ys, zs) -> ((x:ys), zs) }
lines s = case break (\x -> polyEq x '|') s of
                  (l, s') -> (l:(case s' of { [] -> []; _:s'' -> lines s'' }))
divmod a b = ((a `div` b), (a `mod` b))
process :: [String] -> [String]
process x = doInput (randomInts 111 47) x
doInput :: State -> [String] -> [String]
doInput state []     = []
doInput state (l:ls) = doLine l (\state -> doInput state ls) state
doLine :: String -> (State -> [String]) -> State -> [String]
doLine cs cont rs =
  let n = (int_val_of_string cs) in
  case (multiTest 100 rs n) of
    (t,rs') -> (if t then ("Probably prime": (cont rs')) else ("Composite": (cont rs')))
type State = [Int]
---------------------
makeNumber :: Integer -> [Integer] -> Integer
makeNumber b = foldl (\a -> \x -> (a * b) + x) 0
chop :: Integer -> Integer -> [Integer]
chop b =
  let chop' = (\a -> \n -> (case (n `divmod` b) of { (q,r) -> if n == 0 then a else chop' (r:a) q }))
  in
  chop' []
powerMod :: Integer -> Integer -> Integer -> Integer
powerMod a 0 m = 1
powerMod a b m =
  let a' = (mod a m) in
  let f = \a -> \b -> \c ->
          let g = (\a -> \b -> if even b then g ((a*a) `mod` m) (b `div` 2) else f a (b-1) ((a*c) `mod` m)) in
          if b == 0 then c else g a b
  in
  f a' (b-1) a'
-- log2 :: Integer -> Integer
log2 x = (length . chop 2) x
--------------------------
randomInts :: Int -> Int -> [Int]
randomInts s1 s2 = if (1 <= s1) && (s1 <= 2147483562) then
                   if (1 <= s2) && (s2 <= 2147483398) then rands s1 s2
                   else error "randomInts: Bad second seed."
                   else error "randomInts: Bad first seed."
rands :: Int -> Int -> [Int]
rands s1 s2 =
    let k    = (s1 `div` 53668) in
    let s1'  = ((40014 * (s1 - (k * 53668))) - (k * 12211)) in
    let s1'' = (if s1' < 0 then s1' + 2147483563 else s1') in
    let k'   = (s2 `div` 52774) in
    let s2'  = ((40692 * (s2 - (k' * 52774))) - (k' * 3791)) in
    let s2'' = (if s2' < 0 then s2' + 2147483399 else s2') in
    let z    = (s1'' - s2'') in
    if z < 1 then lazy ((z + 2147483562) : (rands s1'' s2'')) else lazy (z : (rands s1'' s2''))
--------------------------
multiTest :: Int -> [Int] -> Integer -> (Bool, [Int])
multiTest k rs n =
  let mTest = \k -> \rs ->
                  if k == 0 then
                    (True, rs)
                  else
                    case (singleTest n (findKQ n) rs) of { (t, rs') ->
                    if t then mTest (k-1) rs' else (False, rs') }
  in
  if ((n <= 1) || (even n)) then (n==2, rs) else mTest k rs
findKQ :: Integer -> (Integer, Integer)
findKQ n = f (0, (n-1))
  where
    f (k,q) = case (q `divmod` 2) of { (d,r) -> if r == 0 then f (k+1, d) else (k, q) }
singleTest :: Integer -> (Integer, Integer) -> [Int] -> (Bool, [Int])
singleTest n kq rs
  = case (random (n-2) rs) of { (x, rs') -> (singleTestX n kq (2+x), rs') }
singleTestX n (k, q) x =
  let square = (\x -> (x*x) `mod` n) in
  let witness = \ls -> case ls of {
    [] -> False;
    (t:ts) -> if t == (n-1) then True else (if t == 1 then False else witness ts)
  }
  in
  case (take_lz (k) (iterate square (powerMod x q n))) of {
    (t:ts) -> (t == 1) || (t == (n-1)) || witness ts
  }
random :: Integer -> [Int] -> (Integer, [Int])
random n rs =
  let ns        = (chop 65536 n) in
  case (splitAt_lz (length ns) rs) of { (rs1,rs2) -> (makeNumber 65536 (uniform ns rs1), rs2) }
uniform :: [Integer] -> [Int] -> [Integer]
uniform [n]    [r]    = [(r) `mod` n]
uniform (n:ns) (r:rs) =
  let t = ((r) `mod` (n+1)) in
  if t == n then t: (uniform ns rs)
            else t: (map (\x -> ((x) `mod` 65536)) rs)
---------------------
testPrimetest_nofib dummy = 
  let cts = primId "24|48|47|1317|8901" in
  process (lines cts)
testPrimetest_nofib $ primId 0
