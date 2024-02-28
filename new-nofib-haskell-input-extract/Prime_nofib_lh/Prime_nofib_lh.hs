isdivs n x = (x `mod` n) /= 0
the_filter (n:ns) = filter (isdivs n) ns
prime n = atIndex_lz n (map_lz head (iterate the_filter [2..(n*n)]))
testPrime_nofib n = prime n
testPrime_nofib $ primId 100
