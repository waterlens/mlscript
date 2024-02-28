compareTuple2 (a, b) (c, d) = a <= c
delete (x:xs) e = if polyEq x e then delete xs e else x:(delete xs e)
delete [] e = []
listDiff = foldl delete
sort :: (Ord a) => [a] -> [a]
sort  l = qsort (\a b -> compareTuple2 a b) l []
qsort le []     r = r
qsort le [x]    r = x:r
qsort le (x:xs) r = qpart le x xs [] [] r
qpart le x [] rlt rge r =
    rqsort le rlt (x:rqsort le rge r)
qpart le x (y:ys) rlt rge r =
    if le x y then
    qpart le x ys rlt (y:rge) r
    else
    qpart le x ys (y:rlt) rge r
rqsort le []     r = r
rqsort le [x]    r = x:r
rqsort le (x:xs) r = rqpart le x xs [] [] r
rqpart le x [] rle rgt r =
    qsort le rle (x:qsort le rgt r)
rqpart le x (y:ys) rle rgt r =
    if le y x then
    rqpart le x ys (y:rle) rgt r
    else
    rqpart le x ys rle (y:rgt) r
perms m [] = []
perms 1 l  = map (\x -> x:[]) l
perms m (n:ns) = map (\x -> n:x) (perms (m-1) ns) ++ perms m ns
awards scores = 
  let sumscores = map (\p -> (sum p, p)) (perms 3 scores) in
  let atleast = \threshold -> (filter (\sum_p -> case sum_p of { (sum, p) -> sum >= threshold }) sumscores) in
  let award = \name_threshold -> case name_threshold of { (name, threshold) -> map (\ps -> (name,ps)) (sort (atleast threshold)) } in
    award ("Gold",70) ++ award ("Silver",60) ++ award ("Bronze",50)
findawards scores = case (awards scores) of {
  [] -> [];
  head:tail -> case head of  {
    (award,(sum,perm)) -> (award,(sum,perm)) : (findawards (listDiff scores perm))
  }
}
findallawards competitors =
    map (\name_scores -> case name_scores of { (name, scores) -> (name, findawards scores) }) competitors
competitors i =
  [ ("Simon",[35,27,40,i,34,21])
  , ("Hans",[23,19,45,i,17,10,5,8,14])
  , ("Phil",[1,18,i,20,21,19,34,8,16,21])
  , ("Kevin",[9,23,17,54,i,41,9,18,14])
  ]
testAwards_nofib n = map (\x -> findallawards (competitors (x `mod` 100))) (primId [1..n])
testAwards_nofib $ primId 500
