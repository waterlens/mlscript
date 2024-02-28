powers = lazy ([2..] : (map_lz (\p -> zipWith_lz_lz (\a b -> a * b) (head_lz powers) p) powers))
neg_powers =
  lazy (map_lz (zipWith_lz_lz (\n x -> if n then x else (0-x)) (iterate not True)) powers)
pascal = lazy ([1,2,1] : map_lz (\line -> zipWith (\a b -> a + b) (mappend line [0]) (0:line)) pascal)
bernoulli 0 = 1
bernoulli 1 = 0 - (1 / 2)
bernoulli n =
  if ((n `mod` 2) == 1) then
    0
  else
    let powers = (atIndex_lz (n - 1) (force neg_powers)) in
      ((0-1)/2) + sum [ ((sum $ zipWith_lz_nl (\a b -> a * b) powers (tail $ tail combs)) - k) / (k+1) | (k,combs) <- zip_nl_lz [2..n] pascal ]
testBernoulli_nofib n = bernoulli n
testBernoulli_nofib $ primId 1500
