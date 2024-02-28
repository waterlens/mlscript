max a b = if a > b then a else b
drop n (h:t) = if n == 0 then (h:t) else (drop (n - 1) t)
snd (_, x) = x
inList x (h:t) = if x == h then True else inList x t
inList x [] = False
algb1 [] yss = map snd yss
algb1 (x:xs) yss = algb1 xs (algb2 x 0 0 yss)
algb2 _ _ _ [] = []
algb2 x k0j1 k1j1 ((y,k0j):ys)
  = let kjcurr = if x == y then k0j1+1 else max k1j1 k0j
    in (y,kjcurr) : (algb2 x k0j kjcurr ys)
algb xs ys = 0 : algb1 xs [ (y,0) | y <- ys ]
findk k km m [] = km
findk k km m ((x,y):xys) =
  if (x+y) >= m then findk (k+1) k (x+y) xys
  else findk (k+1) km m xys
algc m n xs []  = \x -> x
algc m n [x] ys = if inList x ys then (\t -> (x:t)) else (\x -> x)
algc m n xs ys
  = let m2 = (m `div` 2) in
    let xs1 = take m2 xs in
    let xs2 = drop m2 xs in
    let l1 = algb xs1 ys in
    let l2 = reverse (algb (reverse xs2) (reverse ys)) in
    let k = findk 0 0 (0-1) (zip l1 l2) in
    (algc m2 k xs1 (take k ys)) . (algc (m-m2) (n-k) xs2 (drop k ys))
lcss xs ys = algc (length xs) (length ys) xs ys []
lcssMain a b c d e f = lcss [a,b..c] [d,e..f]
testLCSS_nofib _ = lcssMain 1 2 60 30 31 90
testLCSS_nofib $ primId 0
