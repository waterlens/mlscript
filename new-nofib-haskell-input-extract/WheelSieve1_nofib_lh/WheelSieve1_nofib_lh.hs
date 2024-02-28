append_lz xs ys = case xs of {
  (x:xs) -> lazy (x:(append_lz xs ys));
  [] -> ys
}
squares ps = map_lz (\p -> p * p) ps
min a b = if a > b then b else a
noFactor s ps qs n = if (s<=2) then True else notDivBy ps qs n
notDivBy xs ys n = case (force ys) of {
  (q:qs) -> if (q > n)
            then True
            else case (force xs) of {
              (p:ps) -> (((n `mod` p) > 0) && (notDivBy ps qs n))
            }
}
nextSize (Wheel s ns) p = Wheel (s*p) [n' | o <- [0,s..((p-1)*s)], n <- ns, n' <- [n + o], (n' `mod` p) > 0]
wheels ps = lazy ((Wheel 1 [1]):(zipWith_lz_lz nextSize (wheels ps) ps))
sieve wls ps qs input = case (force wls) of {
  ((Wheel s ns):ws) ->
    append_lz [n' | o <- (s:[s*2,s*3..(min (input*input) ((head_lz ps)-1))*s]), n <- ns, n'<- [n+o], noFactor s ps qs n'] (sieve ws (tail_lz ps) (tail_lz qs) input)
}
primes n = lazy (sieve (wheels (primes n)) (primes n) (squares (primes n)) n)
prime n = atIndex_lz n (primes n)
testWheelSieve1_nofib n = prime n
testWheelSieve1_nofib $ primId 1000
