power a n = if n == 0 then 1 else a * (power a (n - 1))
dropWhile f [] = []
dropWhile f (h:t) = if (f h) then dropWhile f t else (h:t)
drop n []      = []
drop n (h:t)   = if n > 0 then (drop (n - 1) t) else t
foldl1 f (x:xs) = foldl f x xs
maximum xs = foldl1 (\x -> \y -> if x > y then x else y) xs
nub_lz ls =
  lazy ( case (force ls) of {
    [] -> [];
    (x:xs) -> x:(nub_lz (filter_lz (\y -> not (polyEq x y)) xs))
  })
take_lz n ls =
  if n == 0 then
    []
  else case (force ls) of {
    [] -> [];
    (h:t) -> h:(take_lz (n - 1) t)
  }
infRand m =
  let f = \x -> lazy (((mod x m) + 1):(f (((97 * x) + 11) `mod` (power 2 7)))) in
  f 37
simulate n m proc = (float_of_int (length (filter (\x -> x) [ proc (infRand m) | seed <- [1..n] ]))) /. (float_of_int n)
sim k =
  let proc = \rs ->
              let xs     = take_lz 100 (nub_lz rs) in
              let best   = 100 in
              let bestk  = maximum (take k xs) in
              let afterk = dropWhile (\x -> x < bestk) (drop k xs) in
              polyEq [best] (take 1 afterk)
  in
  simulate 5000 100 proc
testSecretary_nofib dummy = [ sim k | k <- [35..39] ]
testSecretary_nofib $ primId 0
