max a b = if a > b then a else b
minN = 4
depth d m =
    if d <= m then
      let n = bit (m - d + minN) in
      let s = sumT d n 0 in (let rest = depth (d+2) m in ((2*n,d,s) : rest))
    else []
sumT d 0 t = t
sumT d i t = sumT d (i-1) ((check (make i d)) + (check (make (0-i) d)) + t)
bit n = if n > 0 then 2 * (bit (n - 1)) else 1
minN = 4
check t = check' True 0 t
check' b z Nil          = z
check' b z (Node i l r) = check' (not b) (check' b (if b then (z+i) else (z-i)) l) r
make i 0 = Node i Nil Nil
make i d = let i2 = 2*i in (let d2 = d-1 in (Node i (make (i2-1) d2) (make i2 d2)))
testBinaryTrees_nofib n =
  let maxN = (max (minN + 2) n) in
  let stretchN = (maxN + 1) in
  let long = (make 0 maxN) in
  let c = (check (make 0 stretchN)) in
  let vs = (depth minN maxN) in
  (map (\(m_d_i) -> case m_d_i of { (m,d,i) -> ((string_of_int m) ++ "t trees") }) vs, check long)
testBinaryTrees_nofib $ primId 14
