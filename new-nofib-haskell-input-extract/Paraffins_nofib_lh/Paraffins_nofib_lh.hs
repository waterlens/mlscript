enumFromTo_lz a b = lazy (if a <= b then a:(enumFromTo_lz (a + 1) b) else [])
data Radical = H | C Radical Radical Radical
data Paraffin = BCP Radical Radical | CCP Radical Radical Radical Radical
odd n = (n `mod` 2) == 1
max a b = if a > b then a else b
three_partitions m =
  [ (i,j,k) | i <- [0..(div m 3)], j <- [i..(div (m-i) 2)], k <- [m - (i+j)]]
remainders [] = []
remainders (r:rs) = (r:rs) : (remainders rs)
radical_generator n = let radicals = lazy ([H] : (lazy [rads_of_size_n radicals j | j <- (enumFromTo_lz 1 n)])) in radicals
rads_of_size_n radicals n =
  [ (C ri rj rk)
  | (i,j,k)  <- (three_partitions (n-1)),
    (ri:ris) <- (remainders (atIndex_lz i radicals)),
    (rj:rjs) <- (remainders (if (i==j) then (ri:ris) else (atIndex_lz j radicals))),
    rk       <- (if (j==k) then (rj:rjs) else (atIndex_lz k radicals))]
bcp_generator radicals n =
  if (odd n) then []
  else
    [ (BCP r1 r2) | (r1:r1s) <- (remainders (atIndex_lz (div n 2) radicals)), r2 <- (r1:r1s) ]
four_partitions m =
  [ (i,j,k,l)
  | i <- [0..(div m 4)],
    j <- [i..(div (m-i) 3)],
    k <- [(max j ((int_of_float (ceiling ((float_of_int m) /. (float_of_int 2)))) - i - j))..(div (m-i-j) 2)],
    l <- [(m - (i+j+k))]]
ccp_generator radicals n =
  [ (CCP ri rj rk rl)
  | (i,j,k,l) <- (four_partitions (n-1)),
    (ri:ris)  <- (remainders (atIndex_lz i radicals)),
    (rj:rjs)  <- (remainders (if (i==j) then (ri:ris) else (atIndex_lz j radicals))),
    (rk:rks)  <- (remainders (if (j==k) then (rj:rjs) else (atIndex_lz k radicals))),
    rl        <- (if (k==l) then (rk:rks) else (atIndex_lz l radicals))]
bcp_until n =
  let radicals = radical_generator (div n 2) in [length (bcp_generator radicals j) | j <- [1..n]]
ccp_until n =
  let radicals = radical_generator (div n 2) in [length (ccp_generator radicals j) | j <- [1..n]]
paraffins_until n =
  let radicals = radical_generator (div n 2) in [length (bcp_generator radicals j) + length (ccp_generator radicals j) | j <- [1..n]]
testParaffins_nofib num = ([length (atIndex_lz i rads) | rads <- [(radical_generator num)], i <- [0..num]], bcp_until num, ccp_until num, paraffins_until num)
testParaffins_nofib $ primId 16
