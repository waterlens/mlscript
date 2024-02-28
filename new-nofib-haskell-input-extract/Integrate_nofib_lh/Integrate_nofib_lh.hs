sumFloatAux [] a = a
sumFloatAux (h:t) a = (sumFloatAux t (a +. h))
sumFloat ls = sumFloatAux ls 0.0
enumFromFloat a = lazy (a:(enumFromFloat (a +. 1.0)))
integrate1D l u f =
  let d = (u -. l) /. 8.0 in
     d *. (sumFloat
      [ (f l) *. 0.5,
        f (l +. d),
        f (l +. (2.0 *. d)),
        f (l +. (3.0 *. d)),
        f (l +. (4.0 *. d)),
        f (u -. (3.0 *. d)),
        f (u -. (2.0 *. d)),
        f (u -. d),
        (f u) *. 0.5])
integrate2D l1 u1 l2 u2 f = integrate1D l2 u2
            (\y -> integrate1D l1 u1
              (\x -> f x y))
zark u v = integrate2D 0.0 u 0.0 v (\x -> (\y -> x *. y))
ints = enumFromFloat 1.0
zarks = zipWith_lz_lz zark (ints) (map_lz (\n -> 2.0 *. n) (ints))
rtotals = lazy ((head_lz (zarks )) : (zipWith_lz_lz (\a b -> a +. b) (tail_lz (zarks)) (rtotals)))
rtotal n = atIndex_lz n (rtotals)
is = map_lz (\a -> a *. a *. a *. a) (ints)
itotals = lazy ((head_lz (is)) : (zipWith_lz_lz (\a b -> a +. b) (tail_lz (is)) (itotals)))
itotal n = atIndex_lz n (itotals)
etotal n = sumFloat (take_lz n (map_lz (\a -> a *. a) (zipWith_lz_lz (\a b -> a -. b) (rtotals) (itotals))))
testIntegrate_nofib n = etotal n
testIntegrate_nofib $ primId 100000
