import Criterion.Main

data MyList a = N  | C a (MyList a)



id_2 x_5 = x_5

p0_3 = (C 1 (C 2 (C 3 (N ))))

c0_4 x_6 = case x_6 of
  (C n_7 a_8) -> case a_8 of
    (C m_9 b_10) -> b_10

expr1 () = 
  (((+) 1) (id_2 1))

expr2 () = 
  (c0_4 p0_3)

main = defaultMain [
  bgroup "generated_benchmark" [
    bench  "expr1" $ whnf expr1 ()
    , bench  "expr2" $ whnf expr2 ()
    ]
  ]