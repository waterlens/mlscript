span p [] = ([], [])
span p (h:t) = if (p h) then
                    case (span p t) of {
                      (f, s) -> (h:f, s)
                    }
                else
                  ([], (h:t))
max a b = if a > b then a else b
numchars l = sum $ (map length l)
expand [] = [""]
expand ('<':x) = numericRule x
expand ('[':x) = alphabeticRule x
expand x = constantRule x
constantRule (c:rest) = [ c:z | z <- expand rest ]
alphabeticRule (a:('-':(b:(']':rest)))) =
  if ((int_of_char a) <= (int_of_char b)) then
    [(char_of_int c):z | c <- [(int_of_char a)..(int_of_char b)], z <- expand rest]
  else
    [(char_of_int c):z | c <- reverse [(int_of_char b)..(int_of_char a)], z <- expand rest]
mknum s = foldl (\ u c -> (u * 10) + ((int_of_char c) - (int_of_char '0'))) 0 s
pad s w  = [ '0' | i <- [1 .. (w - (length s))]] ++ s
numericRule x = case (span (\c -> (polyNeq c '-')) x) of {
                  (p, (_:q)) -> case (span (\c -> (polyNeq c '>')) q) of {
                    (r, (_:s)) -> case (mknum p, mknum r) of {
                      (u, v) ->
                        let width = (max (length (string_of_int u)) (length (string_of_int v))) in
                                  [ (pad (string_of_int i) width) ++ z | i <- (if (u < v) then [u..v] else [u,(u-1)..v]), z <- expand s ]
                    }
                  }
                }
testGenRegexs_nofib e = concat (expand e)
testGenRegexs_nofib $ primId "[a-j][a-j][a-j][0-9]"
