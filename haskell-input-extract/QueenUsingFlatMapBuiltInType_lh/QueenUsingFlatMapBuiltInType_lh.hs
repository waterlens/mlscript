safe x d []    = True
safe x d (q:l) = (x /= q) && (x /= (q+d)) && (x /= (q-d)) && (safe x (d+1) l)
gen 0 nq = [[]]
gen n nq = flatMap (\b ->
              flatMap (\q -> if (safe q 1 b) then [q:b] else []) [1..nq]
            ) (gen (n-1) nq)
flatMap f [] = []
flatMap f (h:t) = append (f h) (flatMap f t)
append [] ys = ys
append (h:t) ys = h:(append t ys)
nsoln nq = length (gen nq nq)
testQueenUsingFlatMapBuiltInType n = nsoln n
testQueenUsingFlatMapBuiltInType $ primId 11
