dropWhile f [] = []
dropWhile f (h:t) = if (f h) then dropWhile f t else (h:t)
drop n []      = []
drop n (h:t)   = if n <= 0 then (h:t) else (drop (n - 1) t)
splitAt n ls = (take n ls, drop n ls)
unwords []              =  ""
unwords (w:ws)          = w ++ go ws
  where
    go []     = ""
    go (v:vs) = ' ' : (v ++ (go vs))
break p [] = ([], [])
break p (x:xs) = if p x then ([], (x:xs)) else case (break p xs) of { (ys, zs) -> ((x:ys), zs) }
isSpace c = polyEq c ' '
words s = case (dropWhile isSpace s) of
          [] -> []
          (h:t) -> case (break isSpace (h:t)) of (w, s'') -> (w : (words s''))
lines s = case break (\x -> polyEq x '|') s of
                  (l, s') -> (l:(case s' of { [] -> []; _:s'' -> lines s'' }))
unlines ls = concat $ map (\l -> l ++ "|") ls
min a b = if a > b then b else a
null [] = True
null (h:t) = False
all f [] = True
all f (h:t) = if f h then all f t else False
fold1 :: (a->b->b) -> (a->b) -> [a] -> b
fold1 f g [a]   = g a
fold1 f g (a:x) = f a (fold1 f g x)
scan1 :: (a->b->b) -> (a->b) -> [a] -> [b]
scan1 f g = fold1 (\a -> \s -> ((f a (head s)) : s)) (\a -> [g a])
tails :: [a] -> [[a]]
tails = scan1 (\x -> \y -> x:y) (\x -> x:[])
single :: [a] -> Bool
single [a] = True
single _   = False
minWith :: (a->Int) -> [a] -> a
minWith f = fold1 (\a -> \b -> if ((f a) < (f b)) then a else b) (\x -> x)
type Txt = [Word]
type Word = String
type Paragraph = [Line]
type Line = [Word]
par0 :: Txt -> Paragraph
par0 x = ((minWith cost) . (filter feasible) . formats) x
formats :: Txt -> [Paragraph]
formats = fold1 (\w -> \ps -> (map (new w) ps) ++ (map (glue w) ps)) (\x -> [ [[x]] ])
new w ls      = [w]:ls
glue w (l:ls) = (w:l):ls
feasible :: Paragraph -> Bool
feasible a = all fits a
maxw :: Int
maxw = 70
fits :: Line -> Bool
fits xs = ((width xs) <= maxw)
width :: Line -> Int
width ls = fold1 plus length ls
  where plus w n = length w + 1 + n
optw :: Int
optw = 63
cost :: Paragraph -> Int
cost ls = fold1 plus (\_dum -> 0) ls
       where plus l n = linc l + n
             linc l = let a = (optw - (width l)) in a * a
fitH ls = (fits . head) ls
type Par    = (Width,Cost,Length)
type Width  = Int
type Cost   = Int
type Length = Int
width_tl x = fst3 x
cost_tl  x = snd3 x
len_tl   x = thd3 x
fst3 (a,b,c) = a
snd3 (a,b,c) = b
thd3 (a,b,c) = c
tile :: Txt -> ([Length],Length) -> Paragraph
tile ws ([],n)   = []
tile ws (m:ms,n) =
  let l = n - m in
  case (splitAt l ws) of { (ws1,ws2) ->
    ws1 : (tile ws2 (drop l (m:ms),m))
  }            
par3 :: Txt -> Paragraph
par3 ws =
  let zs = scan1 stepr startr (map length ws) in
  tile ws (map (len_tl . last' . fst3) zs, thd3 (head zs))
startr :: Length -> (SymList Par, Width, Length)
startr a = if a <= maxw then (cons' (0,0,0) nil',a,1) else error "startr param error"
stepr :: Length -> (SymList Par, Cost, Length) -> (SymList Par, Cost, Length)
stepr w (ps,tw,tl) =
  let tot_width = w + 1 + tw in
  let tot_len = 1 + tl in
  let single = \p -> (len_tl p) == 0 in
  let width_hd = \p -> if (single p) then tot_width else tot_width - (width_tl p) - 1 in
  let cost = \p -> if (single p) then 0 else (cost_tl p) + (let a = (optw - (width_hd p)) in a*a) in
  let old_width_hd = \p -> if (single p) then tw else tw - (width_tl p) - 1 in 
  let new = \p -> if (single p) then (tw,0,tl) else (tw, (cost_tl p) + (let x = (optw-(old_width_hd p)) in x*x), tl) in
  let trim = \ps_pq ->
                if null' ps_pq then
                  ps_pq
                else if single' ps_pq then
                  ps_pq
                else
                  let ps_p = init' ps_pq in
                  let q    = last' ps_pq in
                  let p    = last' ps_p in
                  if (cost p) <= (cost q) then
                    trim ps_p
                  else
                    ps_pq
  in
  let drop_nofit = \ps_p ->
                      if null' ps_p then
                        ps_p
                      else if (width_hd (last' ps_p)) > maxw then
                        drop_nofit (init' ps_p)
                      else 
                        ps_p
  in
  let bf = \p -> \q ->
            let wqh = width_hd q in
            let rqh = maxw - wqh + 1 in
            if (single q) && ((cost_tl p) == 0) then
              min (optw - (width_hd p)) rqh
            else if single q then
              rqh
            else
              (ceildiv ((cost p)-(cost q)) (2*(wqh-(width_hd p)))) `min` rqh
  in
  let myAdd = \p -> \qr_rs ->
                if (single' qr_rs) || (null' qr_rs) then
                  cons' p qr_rs
                else
                  let q = head' qr_rs in
                  let r_rs = tail' qr_rs in
                  let r  = head' r_rs in
                  if (bf p q) <= (bf q r) then
                    myAdd p r_rs
                  else
                    cons' p qr_rs
  in
  (trim (drop_nofit (new (last' ps) `myAdd` ps)), tot_width, tot_len)
ceildiv n m = (n+m-1) `div` m
fmt x = (unparse . (map (par3 . concat)) . parse) x
fmtWith par = unparse . (map (par . concat)) . parse
type SymList a = ([a],[a])
single' (x,y) = ((null x) && (single y)) || ((single x) && (null y))
null' ([],[]) = True
null' _       = False
nil' = ([],[])
head' (x,y) = if not (null x) then head x else head y
last' (y,x) = if not (null x) then head x else head y
cons' a (x,y) = if not (null y) then (a:x,y) else ([a],x)
snoc' a (y,x) = if not (null y) then (y,a:x) else (x,[a])
tail' (x,y) =
  if null x then
    ([],[])
  else if single x then
    case (splitAt ((length y) `div` 2) y) of {(y0,y1) -> (reverse y1, y0) }
  else
    (tail x, y)
init' (y,x) =
  if null x then
    ([],[])
  else if single x then
    case (splitAt ((length y) `div` 2) y) of { (y0,y1) -> (y0, reverse y1) }
  else
    (y, tail x)
unformat :: a -> [[a]] -> [a]
unformat a = fold1 (\xs -> \ys -> xs ++ [a] ++ ys) (\x -> x)
format :: Eq a => a -> [a] -> [[a]]
format a [] = [[]]
format a x = fold1 (break a) (start a) x
  where break a b xs = if polyEq a b then []:xs else (b:(head xs)):(tail xs)
        start a b = break a b [[]]
unparas :: [[[String]]] -> [[String]]
unparas ls = unformat [] ls
paras :: [[String]] -> [[[String]]]
paras ls   = ((filter (\x -> polyNeq [] x)) . (format [])) ls
parse ls   = (paras . (map words) . lines) ls
unparse ls = (unlines . (map unwords) . unparas) ls
testPara_nofib dummy =
  let test = (from_large_str "In the constructive programming community it is commonplace to see ") ++
             (from_large_str "formal developments of textbook algorithms. In the algorithm design ") ++
             (from_large_str "community, on the other hand, it may be well known that the textbook ") ++
             (from_large_str "solution to a problem is not the most efficient possible. However, in ") ++
             (from_large_str "presenting the more efficient solution, the algorithm designer will ") ++
             (from_large_str "usually omit some of the implementation details, this creating an ") ++
             (from_large_str "algorithm gap between the abstract algorithm and its concrete ") ++
             (from_large_str "implementation. This is in contrast to the formal development, which ") ++
             (from_large_str "usually presents the complete concrete implementation of the less ") ++
             (from_large_str "efficient solution.| |")
  in
  if null (test) then [] else (fmt (test))
testPara_nofib $ primId 0
