flatMap f [] = []
flatMap f (h:t) = (f h) ++ (flatMap f t)
summ s [] = s
summ s (h:t) = summ (s+h) t
testSumFlatmap n = summ 0 $ flatMap (\a -> [a, a]) (primId [1..n])
testSumFlatmap $ primId 100000
