import Criterion.Main

data IntList = N  | C Int IntList





range_3 from_7 = \ to_8 -> 
  case (((-) to_8) from_7) of
    (0 ) -> (C from_7 (N ))
    (diff ) -> (C from_7 ((range_3 (((+) from_7) 1)) to_8))

sum_4 list_9 = case list_9 of
  (C h_10 t_11) -> (((+) h_10) (sum_4 t_11))
  (N ) -> 0

unfused_5 from_12 = \ to_13 -> 
  (sum_4 ((range_3 from_12) to_13))

fused_6 from_14 = \ to_15 -> 
  case (((-) to_15) from_14) of
    (0 ) -> 0
    (diff ) -> (((+) from_14) ((fused_6 (((+) from_14) 1)) to_15))

expr1 () = 
  ((unfused_5 1) 10000)

expr2 () = 
  ((fused_6 1) 10000)

main = defaultMain [
  bgroup "generated_benchmark" [
    bench  "expr1" $ whnf expr1 ()
    , bench  "expr2" $ whnf expr2 ()
    ]
  ]