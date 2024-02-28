drop_lz n ls = if n > 0 then lazy (case (force ls) of { [] -> []; (h:t) -> force (drop_lz (n - 1) t) }) else ls
splitAt_lz n xs = (take_lz n xs, drop_lz n xs)
min a b = if a > b then b else a
replicate n x = if n > 0 then (x:(replicate (n - 1) x)) else []
divmod a b = ((a `div` b), (a `mod` b))
percOp i ds n =
  if i >= n then
    []
  else
    let k = (i + 10) in
          let j = (min n k) in
                case (if k > n then ((take_lz (n `mod` 10) ds) ++ (replicate (k-n) " "), (lazy [])) else (splitAt_lz 10 ds)) of {
                  (h, t) -> (concat h) ++ ("t:" ++ ((string_of_int j) ++ "n")) ++ (percOp j t n)
                }
hashOp j s =
  lazy (let k = j + 1 in
      case (ampOp k s) of {
        (n, a, d) -> case (divmod ((n * 3) + a) d) of {
          (q, r) -> if ((n > a) || ((r + n) >= d)) then (force (hashOp k (n, a, d))) else ((string_of_int q) : (hashOp k (n*10, (a-(q*d))*10, d)))
        }
      })
ampOp j (n,a,d) = let y = ((j * 2) + 1) in (n * j, (a + (n * 2)) * y, d * y)
pidgits n = percOp 0 (hashOp 0 (1,0,1)) n
testPiDigits_nofib n = pidgits n
testPiDigits_nofib $ primId 5000
