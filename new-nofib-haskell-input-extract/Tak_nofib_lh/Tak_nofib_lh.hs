tak x y z = if not(y < x) then z
       else tak (tak (x-1) y z) (tak (y-1) z x) (tak (z-1) x y)
testTak_nofib n = tak 31 16 8
testTak_nofib $ primId 0
