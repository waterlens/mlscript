const1 = z_of_int 1
const0 = z_of_int 0
const5000 = z_of_int 5000
const10000 = z_of_int 10000
z_enumFromTo a b = if z_leq a b then a:(z_enumFromTo (z_add a (const1)) b) else []
abs x = if z_lt x (const0) then (z_sub (const0) x) else x
f1 (x,y) = (x, y, gcdE x y)
f2 (_, _, (g, u, v)) = abs (z_add (z_add g u) v)
quotRem a b = (a `z_div` b, a `z_mod` b)
test d = let ns = z_enumFromTo (const5000) (z_add (const5000) d) in
              let ms = z_enumFromTo (const10000) (z_add (const10000) d) in
                    let tripls = map f1 [(x, y) | x <- ns, y <- ms] in
                          let rs = (map f2 tripls) in
                                max' rs
max' [x]      = x
max' (x:y:xs) = if (z_lt x y) then max' (y:xs)  else  max' (x:xs)
g (u1, u2, u3) (v1, v2, v3) =
                   if (z_equal v3 (const0)) then (u3, u1, u2)
                   else
                      case (quotRem u3 v3) of
                        (q,r) -> g (v1,v2,v3) (z_sub u1 (z_mul q v1), z_sub u2 (z_mul q v2), r)
gcdE x y = if z_equal x (const0) then (y,(const0),(const1)) else g ((const1),(const0),x) ((const0),(const1),y)
testGcd_nofib x = test x
testGcd_nofib $ primId (z_of_int 400)
