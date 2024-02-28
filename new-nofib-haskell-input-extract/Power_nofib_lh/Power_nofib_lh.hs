tree   = lazy (Pc 0 (composeSndLz list (lazy tree)))
list   = lazy (Pc 1 list)
ts = lazy (Pc 1 (multPsLzLz (lazy ts) (lazy ts)))
cosx dummy = minusPs (lazy (Pc 1 (lazy Pz))) (integral (integralLz (lazy (cosx 0))))
sinx dummy = integral (minusPs (lazy (Pc 1 (lazy Pz))) (integralLz (lazy (sinx 0))))
x = lazy (Pc 0 (lazy (Pc 1 (lazy Pz))))
-- The main implementation follows
data Pss a = Pz | Pc a (Ps a)
type Ps a = Lz (Pss a)
deriv:: Num a => Ps a -> Ps a
integral:: Fractional a => Ps a -> Ps a
compose:: (Eq a, Num a) => Ps a -> Ps a -> Ps a
revert:: (Eq a, Fractional a) => Ps a -> Ps a
dotMult:: Num a => a -> Ps a -> Ps a
x:: Num a => Ps a
extract :: Int -> Ps a -> [a]
extract n ps =
  if n == 0 then
    []
  else case (force ps) of
    Pz -> []
    (Pc x ps) -> x : (extract (n-1) ps)
dotMult c ps = lazy (case (force ps) of
  Pz -> Pz
  (Pc f fs) -> (Pc (c*f) (dotMult c fs)))
dotMultSndLz c ps = lazy (case (force (force ps)) of
  Pz -> Pz
  (Pc f fs) -> (Pc (c*f) (dotMult c fs)))
negatePs ps = lazy (case (force ps) of
  Pz -> Pz
  (Pc f fs) -> (Pc (0-f) (negatePs fs)))
addPs fss gs = lazy (case (force fss) of
  Pz -> force gs
  (Pc f fs) -> case (force gs) of
    Pz -> force fss
    (Pc g gs) -> (Pc (f+g) (addPs fs gs)))
minusPs a b = addPs a (negatePs b)
multPs fss gss = lazy (case (force fss) of
  Pz -> Pz
  (Pc f fs) -> case (force gss) of
    Pz -> Pz
    (Pc g gs) -> (Pc (f*g) (addPs (addPs (dotMult f gs) (dotMult g fs)) (multPs (multPs x fs) gs))))
multPsLzLz fss gss = lazy (case (force (force fss)) of
  Pz -> Pz
  (Pc f fs) -> case (force (force gss)) of
    Pz -> Pz
    (Pc g gs) -> (Pc (f*g) (addPs (addPs (dotMult f gs) (dotMult g fs)) (multPs (multPs x fs) gs))))
multPsFstLz fss gss = lazy (case (force (force fss)) of
  Pz -> Pz
  (Pc f fs) -> case (force gss) of
    Pz -> Pz
    (Pc g gs) -> (Pc (f*g) (addPs (addPs (dotMult f gs) (dotMult g fs)) (multPs (multPs x fs) gs))))
powerPs a n = if n <= 0 then (fromIntegerPs 1) else multPs a (powerPs a (n - 1))
fromIntegerPs 0 = lazy Pz
fromIntegerPs c = lazy (Pc (c) (lazy Pz))
divPs fss gss = lazy (case (force fss) of
  Pz -> case (force gss) of
    Pz -> error "power series 0/0"
    (Pc 0 gs) -> force (divPs (lazy Pz) gs)
    _ -> Pz
  (Pc 0 fs) -> case (force gss) of
    (Pc 0 gs) -> force (divPs fs gs)
    (Pc g gs) -> let q = 0 in (Pc q (divPs (addPs fs (negatePs (dotMult q gs))) (lazy (Pc g gs))))
  (Pc f fs) -> case (force gss) of
    (Pc g gs) -> let q = f/g in (Pc q (divPs (addPs fs (negatePs (dotMult q gs))) (lazy (Pc g gs)))))
recipPs fs = divPs (fromIntegerPs 1) fs
compose fss gss = lazy (case (force fss) of
  Pz -> Pz
  (Pc f fs) -> case (force gss) of
    Pz -> (Pc f (lazy Pz))
    (Pc 0 gs) -> (Pc f (multPs gs (compose fs (lazy (Pc 0 gs)))))
    _ -> force (addPs (lazy (Pc f (lazy Pz))) (multPs gss (compose fs gss))))
composeSndLz fss gss = lazy (case (force fss) of
  Pz -> Pz
  (Pc f fs) -> case (force (force gss)) of
    Pz -> (Pc f (lazy Pz))
    (Pc 0 gs) -> (Pc f (multPs gs (compose fs (lazy (Pc 0 gs)))))
    _ -> force (addPs (lazy (Pc f (lazy Pz))) (multPsFstLz gss (composeSndLz fs gss))))
revert fss = lazy (case (force fss) of
  (Pc 0 fs) -> force (let rs = lazy (Pc 0 (divPs (fromIntegerPs 1) (compose fs rs))) in rs)
  (Pc f0 kss) -> case (force kss) of
    (Pc f1 gss) -> case (force gss) of
      Pz -> (Pc ((0-1)/f1) (lazy (Pc (1/f1) (lazy Pz)))))
deriv fss = lazy (case (force fss) of
  Pz -> Pz
  (Pc _ fs) ->
    let deriv1 = \gss -> \n -> lazy (case (force gss) of { Pz -> Pz; (Pc f fs) -> (Pc (n*f) (deriv1 fs (n+1))) }) in
    force (deriv1 fs 1))
integral fs = lazy (Pc 0 (int1 fs 1)) where
  int1 = \fss -> \n -> lazy (case (force fss) of
    Pz -> Pz
    (Pc f fs) -> (Pc (f/n) (int1 fs (n+1))))
integralLz fs = lazy (Pc 0 (int1 fs 1)) where
  int1 = \fss -> \n -> lazy (case (force (force fss)) of
    Pz -> Pz
    (Pc f fs) -> (Pc (f/n) (int1 (lazy fs) (n+1))))
sqrtPs fss = lazy (case (force fss) of
  Pz -> Pz
  (Pc 0 gss) -> case (force gss) of
    (Pc 0 fs) -> (Pc 0 (sqrtPs fs))
  (Pc 1 fs) -> let qs = lazy (addPs (fromIntegerPs 1) (integral (divPs (deriv (lazy (Pc 1 fs))) (dotMultSndLz 2 qs)))) in (force (force qs)))
testPower_nofib p =
  [ extract p (minusPs ((sinx 0)) (sqrtPs (minusPs (fromIntegerPs 1) (powerPs ((cosx 0)) (2))))),
    extract p (minusPs (divPs ((sinx 0)) ((cosx 0))) (revert (integral (divPs (fromIntegerPs 1) (addPs (fromIntegerPs 1) (powerPs x (2))))))),
    extract p ts,
    extract p tree ]
testPower_nofib $ primId 14
