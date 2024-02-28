summ xs = case xs of { [] -> 0; (h:t) -> h + (summ t) }
append xs ys = case xs of { [] -> ys; (h:t) -> h:(append t ys) }
flatten xss = case xss of { [] -> []; (h:t) -> append h (flatten t) }
testSumFlatten n = summ $ flatten n
sum2 ls = let k = ls in k 99
append2 xs ys p = case xs of { [] -> ys p; (h:t) -> let tt = append2 t ys in let hh = h in hh + sum2 tt }
flatten2 ls p = case ls of { [] -> 0; (h:t) -> append2 h (flatten2 t) p }
testManual n = sum2 $ flatten2 n
testSumFlatten $ primId [primId [1..n] | n <- primId [1..1000]]
testManual $ primId [primId [1..n] | n <- primId [1..1000]]
