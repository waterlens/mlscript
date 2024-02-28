signum 0 = 0
signum n = if n > 0 then 1 else (0 - 1)
abs n = if n < 0 then (0 - n) else n
aux n = lazy (1: (lazy (n: (lazy (1: (aux (n+2)))))))
eContFrac = lazy (2:(aux 2))
ratTrans (a,b,c,d) ls = case (force ls) of {
                          [] -> error;
                          (x:xs) -> (
                            if d == 0 then
                              (ratTrans (b, a+(x*b), d, c+(x*d)) xs)
                            else
                              let q = (b `div` d)
                                    in if (
                                      (((signum c) == (signum d)) || ((abs c) < (abs d))) &&
                                      (((c+d)*q) <= (a+b)) &&
                                      ((((c+d)*q) + (c+d)) > (a+b))
                                    ) then (lazy (q:(ratTrans (c, d, a-(q*c), b-(q*d)) (lazy (x:xs))))) else (ratTrans (b, a+(x*b), d, c+(x*d)) xs))
                        }
takeDigits n xs = if n > 0 then (case (force xs) of {
                                        [] -> error;
                                        (h:t) -> h:(takeDigits (n-1) (ratTrans (10,0,0,1) t))
                                      }
                                ) else []
testDigitsOfE1_nofib n = takeDigits n eContFrac
testDigitsOfE1_nofib $ primId 300
