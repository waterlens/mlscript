and [] = True
and (h:t) = if h then and t else False
append [] ys = ys
append (h:t) ys = h:(append t ys)
queens 0 = [[]]
queens m = [ append p [n] | p <- queens (m - 1), n <- [1 .. 9], safe p n]
safe p n = let m = (length p) + 1 in (and [ (j /= n) && ((i + j) /= (m + n)) && ((i - j) /= (m - n)) | (i, j) <- zip [1..(m - 1)] p ])
testAnotherQueenNineBuiltInType n = length $ queens n
testAnotherQueenNineBuiltInType $ primId 9
