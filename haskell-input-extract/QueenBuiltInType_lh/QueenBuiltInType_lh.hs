safe x d []    = True
safe x d (q:l) = (x /= q) && (x /= (q+d)) && (x /= (q-d)) && (safe x (d+1) l)
gen 0 nq = [[]]
gen n nq = [ (q:b) | b <- gen (n-1) nq, q <- [1..nq], safe q 1 b ]
nsoln nq = length (gen nq nq)
testQueenBuiltInType n = nsoln n
testQueenBuiltInType $ primId 11
