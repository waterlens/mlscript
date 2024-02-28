append_lz xs ys = case xs of {
  (x:xs) -> lazy (x:(append_lz xs ys));
  [] -> ys
}
concat_lz ls = lazy (case (force ls) of {
  (h:t) -> force (append_lz h (concat_lz t));
  [] -> []
})
carryPropagate base l = lazy (case (force l) of {
                          (d:ds) -> let carryguess = (d `div` base) in
                                          let remainder = (d `mod` base) in
                                                let recRes = (carryPropagate (base+1) ds) in
                                                      if (carryguess == ((d + 9) `div` base))
                                                      then let tail = lazy (
                                                                  case (force recRes) of {
                                                                    (nextcarry:fraction) -> ((remainder+nextcarry) : fraction)
                                                                  }
                                                                ) in (carryguess : tail)
                                                      else case (force recRes) of {
                                                        (nextcarry:fraction) -> let dCorrected = (d + nextcarry) in
                                                                                        (dCorrected `div` base) : (lazy ((dCorrected `mod` base) : fraction))
                                                      }
                        })
e n =
  take_lz n ((\b -> append_lz "2." b) ((tail_lz . concat_lz) (map_lz (string_of_int . head_lz) (iterate ((carryPropagate 2) . (map_lz (\a -> (10*a))) . tail_lz) (lazy (2:[1,1..]))))))
testDigitsOfE2_nofib n = e n
testDigitsOfE2_nofib $ primId 500
