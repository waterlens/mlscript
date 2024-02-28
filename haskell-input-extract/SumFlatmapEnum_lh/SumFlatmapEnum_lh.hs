flatMap f [] = []
flatMap f (h:t) = (f h) ++ (flatMap f t)
summ s [] = s
summ s (h:t) = summ (s+h) t
testSumFlatmapEnum n = summ 0 $ flatMap (\a -> [a, a]) [1..n]
testSumFlatmapEnum $ primId 100000
