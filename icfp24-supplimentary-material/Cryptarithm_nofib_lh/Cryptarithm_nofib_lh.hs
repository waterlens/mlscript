condition [t,h,i,r,y,w,e,l,v,n] =
  ((expand t h i r t y) + (5 * (expand t w e l v e))) == (expand n i n e t y)
expand a b c d e f = f + (e*10) + (d*100) + (c*1000) + (b*10000) + (a*100000)
addj j []     = [[j]]
addj j (k:ks) = (j:(k:ks)) : [(k:aks) | aks <- (addj j ks)]
permutations []     = [[]]
permutations (j:js) = [r | pjs <- permutations js, r <- (addj j pjs)]
testCryptarithm_nofib n = map (\i -> let p0 = (take 10 [0..9+i]) in (filter condition $ permutations p0)) [1..n]
testCryptarithm_nofib $ primId 1
