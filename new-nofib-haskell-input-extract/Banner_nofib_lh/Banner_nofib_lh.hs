replicate n x = if n == 0 then [] else x:(replicate (n - 1) x)
unlines ls = concat $ map (\l -> l ++ ['n']) ls
unzip ls = foldr (\ab asbs -> case ab of {(a, b) -> (case asbs of {(as, bs) -> ((a:as), (b:bs))})}) ([],[]) ls
foldr1 f (h:[]) = h
foldr1 f (h:t) = f h (foldr1 f t)
combine y h ys t = (y:h) : (transpose (ys:t))
transpose :: [[a]] -> [[a]]
transpose [] = []
transpose ([] : xss) = transpose xss
transpose ((x : xs) : xss) = case (unzip [(hd, tl) | hd : tl <- xss]) of {
  (hds, tls) -> combine x hds xs tls
}
join ls = foldr1 (\xs ys -> xs ++ "  " ++ ys) ls
say s = ((\x -> 'n':x) . unlines . (map join) . transpose . (map picChar)) s
isUpper c = let n = int_of_char c in (n >= 65) && (n <= 90)
isLower c = let n = int_of_char c in (n >= 97) && (n <= 122)
isDigit c = let n = int_of_char c in (n >= 48) && (n <= 57)
isSpace c = let n = int_of_char c in (n == 32)
picChar c =
  if isUpper c then
    atIndex ((int_of_char c) - (int_of_char 'A')) (alphas)
  else if isLower c then
    atIndex ((int_of_char c) - (int_of_char 'a')) (alphas)
  else if isSpace c then
    blank
  else if isDigit c then
    atIndex ((int_of_char c) - (int_of_char '0')) (digits)
  else if polyEq c '/' then
    (slant)
  else if polyEq c '=' then
    reverse (slant)
  else
    head ([ letter | (c',letter) <- (punct), polyEq c' c ] ++ [[""]])
blank =  ["     ", "     ", "     ", "     ", "     "]
slant =  ["    ",  "   ",   "  ",    " ",     ""     ]
punct =  [('.',  ["     ", "     ", "     ", "  .. ", "  .. "]),
           ('?',  [" ??? ", "?   ?", "   ? ", "  ?  ", "  .  "]),
           ('!',  ["  !  ", "  !  ", "  !  ", "  !  ", "  .  "]),
           ('-',  ["     ", "     ", "-----", "     ", "     "]),
           ('+',  ["  +  ", "  +  ", "+++++", "  +  ", "  +  "]),
           (':',  ["     ", "  :: ", "     ", "  :: ", "     "]),
           (';',  ["     ", "  ;; ", "     ", "  ;; ", " ;;  "])
          ]
digits = [[" OOO ", "0  00", "0 0 0", "00  0", " 000 "],
          ["  1  ", " 11  ", "  1  ", "  1  ", "11111"],
          [" 222 ", "2   2", "   2 ", "  2  ", "22222"],
          ["3333 ", "    3", " 333 ", "    3", "3333 "],
          ["   4 ", "  44 ", " 4 4 ", "44444", "   4 "],
          ["55555", "5    ", "5555 ", "    5", "5555 "],
          ["   66", "  6  ", " 666 ", "6   6", " 666 "],
          ["77777", "    7", "   7 ", "   7 ", "  7  "],
          [" 888 ", "8   8", " 888 ", "8   8", " 888 "],
          [" 999 ", "9   9", " 999 ", "  9  ", "99   "]]
alphas = [["  A  ", " A A ", "AAAAA", "A   A", "A   A"],
          ["BBBB ", "B   B", "BBBB ", "B   B", "BBBB "],
          [" CCCC", "C    ", "C    ", "C    ", " CCCC"],
          ["DDDD ", "D   D", "D   D", "D   D", "DDDD "],
          ["EEEEE", "E    ", "EEEEE", "E    ", "EEEEE"],
          ["FFFFF", "F    ", "FFFF ", "F    ", "F    "],
          [" GGGG", "G    ", "G  GG", "G   G", " GGG "],
          ["H   H", "H   H", "HHHHH", "H   H", "H   H"],
          ["IIIII", "  I  ", "  I  ", "  I  ", "IIIII"],
          ["JJJJJ", "   J ", "   J ", "J  J ", " JJ  "],
          ["K   K", "K  K ", "KKK  ", "K  K ", "K   K"],
          ["L    ", "L    ", "L    ", "L    ", "LLLLL"],
          ["M   M", "MM MM", "M M M", "M   M", "M   M"],
          ["N   N", "NN  N", "N N N", "N  NN", "N   N"],
          [" OOO ", "O   O", "O   O", "O   O", " OOO "],
          ["PPPP ", "P   P", "PPPP ", "P    ", "P    "],
          [" QQQ ", "Q   Q", "Q Q Q", "Q  Q ", " QQ Q"],
          ["RRRR ", "R   R", "RRRR ", "R  R ", "R   R"],
          [" SSSS", "S    ", " SSS ", "    S", "SSSS "],
          ["TTTTT", "  T  ", "  T  ", "  T  ", "  T  "],
          ["U   U", "U   U", "U   U", "U   U", " UUU "],
          ["V   V", "V   V", "V   V", " V V ", "  V  "],
          ["W   W", "W   W", "W   W", "W W W", " W W "],
          ["X   X", " X X ", "  X  ", " X X ", "X   X"],
          ["Y   Y", " Y Y ", "  Y  ", "  Y  ", "  Y  "],
          ["ZZZZZ", "   Z ", "  Z  ", " Z   ", "ZZZZZ"]
         ]
testBanner_nofib n = say (concat (replicate n "Is this not a great banner?"))
testBanner_nofib $ primId 100
