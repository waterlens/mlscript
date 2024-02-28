drop n []      = []
drop n (h:t)   = if n <= 0 then (h:t) else (drop (n - 1) t)
splitAt n ls = (take n ls, drop n ls)
abs a = if a < 0 then (0 - a) else a
min a b = if a < b then a else b
max a b = if a < b then b else a
sort  l = qsort (\a -> \b -> case a of { (aa,_) -> case b of { (bb,_) -> (length aa) <= (length bb) } }) l []
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
data Kind = King | Queen | Rook | Bishop | Knight | Pawn  deriving (Eq, Ord)
data Colour = Black | White  deriving (Eq, Ord)
type Piece = (Colour,Kind)
type Square = (Int,Int)
data Board = Board [(Kind,Square)] [(Kind,Square)]
data Move = Move
    Square    -- to here
    (Maybe Piece)  -- capturing this
    (Maybe Piece)  -- gaining promotion to this
   deriving (Eq, Ord)
data MoveInFull = MoveInFull Piece Square Move deriving (Eq, Ord)
data Soln = Soln MoveInFull [([MoveInFull],Soln)]
maybe d f Nothing = d
maybe d f (Just x) = f x
null [] = True
null (h:t) = False
lines s = case break (\x -> polyEq x '|') s of (l, s') -> (l:(case s' of { [] -> []; _:s'' -> lines s'' }))
any f [] = False
any f (h:t) = if f h then True else any f t
isUpper c = case c of {
  'A' -> True;
  'B' -> True;
  'C' -> True;
  'D' -> True;
  'E' -> True;
  'F' -> True;
  'G' -> True;
  'H' -> True;
  'I' -> True;
  'J' -> True;
  'K' -> True;
  'L' -> True;
  'M' -> True;
  'N' -> True;
  'O' -> True;
  'P' -> True;
  'Q' -> True;
  'R' -> True;
  'S' -> True;
  'T' -> True;
  'U' -> True;
  'V' -> True;
  'W' -> True;
  'X' -> True;
  'Y' -> True;
  'Z' -> True;
  c -> False
}
toLower c = case c of {
  'A' -> 'a';
  'B' -> 'b';
  'C' -> 'c';
  'D' -> 'd';
  'E' -> 'e';
  'F' -> 'f';
  'G' -> 'g';
  'H' -> 'h';
  'I' -> 'i';
  'J' -> 'j';
  'K' -> 'k';
  'L' -> 'l';
  'M' -> 'm';
  'N' -> 'n';
  'O' -> 'o';
  'P' -> 'p';
  'Q' -> 'q';
  'R' -> 'r';
  'S' -> 's';
  'T' -> 't';
  'U' -> 'u';
  'V' -> 'v';
  'W' -> 'w';
  'X' -> 'x';
  'Y' -> 'y';
  'Z' -> 'z';
  c -> c
}
break p [] = ([], [])
break p (x:xs) = if p x then ([], (x:xs)) else case (break p xs) of { (ys, zs) -> ((x:ys), zs) }
words s =  case (dropWhile (\x -> polyEq x ' ') s) of
            [] -> []
            s' -> case (break (\x -> polyEq x ' ') s') of (w, s'') -> (w : (words s''))
dropWhile f [] = []
dropWhile f (h:t) = if (f h) then dropWhile f t else (h:t)
unlines ls = concat $ map (\l -> l ++ "|") ls
showColour Black = "Black"
showColour White = "White"
showBoard bd =
  let showRank = \r ->
                let consFile = \f -> \s -> case pieceAt bd (f,r) of { Nothing -> " -" ++ s; Just p  -> ' ': ((pieceToChar p) : s) } in
                foldr consFile [] [1..8]
  in
  unlines (map showRank (reverse [1..8]))
pieceToChar :: Piece -> Char
pieceToChar (Black,k) = kindToChar k
pieceToChar (White,k) = toLower (kindToChar k)
kindToChar :: Kind -> Char
kindToChar k =
  case k of
    King  -> 'K'
    Queen  -> 'Q'
    Rook  -> 'R'
    Bishop  -> 'B'
    Knight  -> 'N'
    Pawn  -> 'P'
showPiece :: Piece -> String
showPiece (c,k) = [kindToChar k]
showSquare :: Colour -> Square -> String
showSquare c (x,y) =
  (atIndex (x - 1) ["QR","QN","QB","Q","K","KB","KN","KR"]) ++ (string_of_int (case c of { Black -> 9-y; White -> y }))
pieceAt :: Board -> Square -> Maybe Piece
pieceAt (Board wkss bkss) sq =
  let pieceAtWith = \c -> \n -> \ls -> case ls of { [] -> n; ((k,s):xs) -> if polyEq s sq then Just (c,k) else pieceAtWith c n xs } in
  pieceAtWith White (pieceAtWith Black Nothing bkss) wkss
emptyAtAll :: Board -> (Square->Bool) -> Bool
emptyAtAll (Board wkss bkss) e =
  let emptyAtAllAnd = \b -> \ls -> case ls of { [] -> b; ((_,s):xs) -> (not (e s)) && (emptyAtAllAnd b xs) } in
  emptyAtAllAnd (emptyAtAllAnd True bkss) wkss
rmPieceAt White sq (Board wkss bkss) = Board (rPa sq wkss) bkss
rmPieceAt Black sq (Board wkss bkss) = Board wkss (rPa sq bkss)
rPa sq ((k,s):kss) = if polyEq s sq then kss else (k,s):(rPa sq kss)
putPieceAt sq (White,k) (Board wkss bkss) = Board ((k,sq):wkss) bkss
putPieceAt sq (Black,k) (Board wkss bkss) = Board wkss ((k,sq):bkss)
kingSquare :: Colour -> Board -> Square
kingSquare White (Board kss _) = kSq kss
kingSquare Black (Board _ kss) = kSq kss
kSq ((King,s):_)   = s
kSq (       _:kss) = kSq kss
opponent Black = White
opponent White = Black
colourOf :: Piece -> Colour
colourOf (c,_) = c
kindOf :: Piece -> Kind
kindOf (_,k) = k
onboard :: Square -> Bool
onboard (p,q) = (1<=p) && (p<=8) && (1<=q) && (q<=8)
forcesColoured White (Board kss _) = kss
forcesColoured Black (Board _ kss) = kss
emptyBoard = Board [] []
------------------
showMoveInFull :: MoveInFull -> String
showMoveInFull a = showMove True a
showMove withPiece (MoveInFull (c,k) sq (Move sq' mcp mpp)) =
  let capt = polyNeq mcp Nothing in
  let prom = polyNeq mpp Nothing in
  (if withPiece then
      showPiece (c,k) ++ (if (polyEq k King) || ((polyEq k Pawn) && (not (capt || prom))) then "" else "/") ++ (showSquare c sq)
   else
     ""
  ) ++ (
    maybe "-" (\cp -> "x" ++ showPiece cp ++ "/") mcp
  ) ++ (
    showSquare c sq'
  ) ++ (
    maybe "" (\pp -> "(" ++ showPiece pp ++ ")") mpp
  )
showMoves (mif:mifs) = (showMoveInFull mif) ++ (showMovesAfter mif mifs)
showMovesAfter _ [] = ""
showMovesAfter (MoveInFull p' sq' _) ((MoveInFull p sq _d):mifs) =
  ", " ++ (showMove ((polyNeq p p') || (polyNeq sq sq')) (MoveInFull p sq _d)) ++ (showMovesAfter (MoveInFull p sq _d) mifs)
moveDetailsFor :: Colour -> Board -> [(MoveInFull,Board)]
moveDetailsFor c bd =
  foldr (\ksq -> \ms ->
    foldr (\rm -> \ms' -> maybe (\x -> x) (\h -> \t -> h:t) (tryMove c ksq rm bd) ms') ms (rawmoves c ksq bd)
  ) [] (forcesColoured c bd)
tryMove :: Colour -> (Kind,Square) -> Move -> Board -> Maybe (MoveInFull,Board)
tryMove c (k,sq) (Move sq' mcp mpp) bd =
  let p   =   (c,k) in
  let bd1 =  rmPieceAt c sq bd in
  let p'  =  maybe p (\x -> x) mpp in
  let bd2 =  maybe (putPieceAt sq' p' bd1) (\_dummy -> (putPieceAt sq' p' (rmPieceAt (opponent c) sq' bd1))) mcp in
  if not (kingincheck c bd2) then Just (MoveInFull p sq (Move sq' mcp mpp), bd2)
  else Nothing
-- NB raw move = might illegally leave the king in check.
rawmoves :: Colour -> (Kind,Square) -> Board -> [Move]
rawmoves c (k,sq) bd =
  let m = case k of { King -> kingmoves; Queen -> queenmoves; Rook -> rookmoves; Bishop -> bishopmoves; Knight -> knightmoves; Pawn -> pawnmoves } in
  m c sq bd
bishopmoves :: Colour -> Square -> Board -> [Move]
bishopmoves c sq bd =
  ( moveLine bd c sq (\xy -> case xy of {(x,y) -> (x-1,y+1)}) $ (moveLine bd c sq (\xy -> case xy of {(x,y) -> (x+1,y+1)}) $ (moveLine bd c sq (\xy -> case xy of {(x,y) -> (x-1,y-1)}) $ (moveLine bd c sq (\xy -> case xy of {(x,y) -> (x+1,y-1)}) (\x -> x))))) []
rookmoves :: Colour -> Square -> Board -> [Move]
rookmoves c sq bd =
  ( moveLine bd c sq (\xy -> case xy of {(x,y) -> (x-1,y)}) $ (moveLine bd c sq (\xy -> case xy of {(x,y) -> (x+1,y)}) $ (moveLine bd c sq (\xy -> case xy of {(x,y) -> (x,y-1)}) $ (moveLine bd c sq (\xy -> case xy of {(x,y) -> (x,y+1)}) (\x -> x))))) []
moveLine :: Board -> Colour -> Square -> (Square->Square) -> ([Move]->a) -> [Move] -> a
moveLine bd c sq inc cont =
  let ml = \sq -> \ms ->
            let sq' = inc sq in
            if onboard sq' then
              case pieceAt bd sq' of
              Nothing -> ml sq' ((Move sq' Nothing Nothing) : ms)
              Just p' -> if polyNeq (colourOf p') c then cont ((Move sq' (Just p') Nothing) : ms) else cont ms
            else cont ms
  in
  ml sq
kingmoves :: Colour -> Square -> Board -> [Move]
kingmoves c (p,q) bd =
  sift c bd [] [(p-1,q+1), (p,q+1), (p+1,q+1), (p-1,q), (p+1,q), (p-1,q-1), (p,q-1), (p+1,q-1)]
knightmoves :: Colour -> Square -> Board -> [Move]
knightmoves c (p,q) bd =
  sift c bd [] [(p-1,q+2),(p+1,q+2), (p-2,q+1), (p+2,q+1), (p-2,q-1), (p+2,q-1), (p-1,q-2), (p+1,q-2)]
sift :: Colour -> Board -> [Move] -> [Square] -> [Move]
sift _ _  ms [] = ms
sift c bd ms (sq:sqs) =
  if onboard sq then
    case pieceAt bd sq of
                Nothing -> sift c bd ((Move sq Nothing Nothing) : ms) sqs
                Just p' -> if polyEq (colourOf p') c then sift c bd ms sqs
                           else sift c bd ((Move sq (Just p') Nothing) : ms) sqs
  else sift c bd ms sqs
pawnmoves :: Colour -> Square -> Board -> [Move]
pawnmoves c (p,q) bd =
  let fwd = case c of { White -> 1; Black -> 0-1 } in
  let promote = \xy -> \mcp -> case xy of { (x,y) ->
    if (((polyEq c Black) && (y==1)) || ((polyEq c White) && (y==8))) then
      map (\param -> Move (x,y) mcp (Just param)) [(c,Queen), (c,Rook), (c,Bishop), (c,Knight)]
    else [Move (x,y) mcp Nothing]
  } in
  let movs =
             let on1 = (p,q+fwd) in
             let on2 = (p,q+2*fwd) in
             if polyEq (pieceAt bd on1) Nothing then
               promote on1 Nothing ++ (
                 if (((q==2) && (polyEq c White)) || ((q==7) && (polyEq c Black))) && (polyEq (pieceAt bd on2) Nothing) then
                   [Move on2 Nothing Nothing]
                 else
                   []
               )
             else
               []
  in
  let caps = concat [ promote sq (Just p') | sq <- [(p+1,q+fwd), (p-1,q+fwd)], (Just p') <- [pieceAt bd sq], not (polyEq (colourOf p') c) ] in
  movs ++ caps
queenmoves :: Colour -> Square -> Board -> [Move]
queenmoves c sq bd = (bishopmoves c sq bd) ++ (rookmoves c sq bd)
kingincheck :: Colour -> Board -> Bool
kingincheck c bd =
  let givesCheck = \kxy -> case kxy of
                          (k,(x,y)) ->
                            let kthreat = \param ->
                                            let xkyk = kingSquare c bd in
                                            case xkyk of {(xk,yk) ->
                                            case param of
                                                      King -> ((abs (x-xk)) <= 1) && ((abs (y-yk)) <= 1)
                                                      Queen -> (kthreat Rook) || (kthreat Bishop)
                                                      Rook ->
                                                        ((x==xk) && (emptyAtAll bd (\xeye -> case xeye of { (xe,ye) -> (xe==xk) && ((min y yk) < ye) && (ye < (max y yk))}))) ||
                                                        ((y==yk) && (emptyAtAll bd (\xeye -> case xeye of { (xe,ye) -> (ye==yk) && ((min x xk) < xe) && (xe < (max x xk))})))
                                                      Bishop ->
                                                        (((x+y)==(xk+yk)) && (emptyAtAll bd (\xeye -> case xeye of { (xe,ye) -> ((xe+ye)==(xk+yk)) && ((min x xk) < xe) && (xe < (max x xk)) }))) ||
                                                        (((x-y)==(xk-yk)) && (emptyAtAll bd (\xeye -> case xeye of { (xe,ye) -> ((xe-ye)==(xk-yk)) && ((min x xk) < xe) && (xe < (max x xk)) })))
                                                      Knight ->
                                                        (((abs (x-xk)) == 2) && ((abs (y-yk)) == 1)) || (((abs (x-xk)) == 1) && ((abs (y-yk)) == 2))
                                                      Pawn ->
                                                        ((abs (x-xk)) == 1) && (case c of { Black -> yk == (y+1); White -> yk == (y-1) })
                                            }
                            in
                            kthreat k
  in
  any givesCheck (forcesColoured (opponent c) bd)
---------------
readProblem :: String -> (Board, (Colour, Int))
readProblem s = (parseProblem . lines) s
comment s = ( (polyEq s []) || (polyEq (take 2 s) ("--")))
parseProblem :: [String] -> (Board, (Colour, Int))
parseProblem s =
  let bdtxt_gltxt = splitAt 8 (filter (not . comment) s) in
  case bdtxt_gltxt of { (bdtxt, gltxt) ->
    let bd = parseBoard bdtxt in
    let gl = parseGoal gltxt in
    (bd, gl)
  }
parseBoard :: [String] -> Board
parseBoard ls =
  let addPiece = \p_sq -> case p_sq of { (p,sq) -> putPieceAt sq p } in
  ((foldr addPiece emptyBoard) . concat . zipWith parseRank (reverse [1..8])) ls
parseRank r x = (concat . (zipWith (parseSquare r) [1..8]) . (filter (\x -> not (polyEq x ' ')))) x
parseSquare r f '-' = []
parseSquare r f  c  =
  let clr = if isUpper c then Black else White in
  let kin = case toLower c of
              'k' -> King
              'q' -> Queen
              'r' -> Rook
              'b' -> Bishop
              'n' -> Knight
              'p' -> Pawn
  in
  [((clr,kin), (f,r))]
parseGoal :: [String] -> (Colour, Int)
parseGoal [gltxt] =
  let ws = words gltxt in
  let c  = if polyEq (head ws) "Black" then Black else White in
  let n = 2 in
  (c, n)
-----------------
solve :: Board -> Colour -> Int -> String
solve bd c n = showResult (solution bd c ((2*n)-1))
data Solution = Solution MoveInFull [(MoveInFull,Solution)]
solution :: Board -> Colour -> Int -> Maybe Solution
solution bd c n =
  let solnOr = \mifb -> \other -> case mifb of { (mif,b) ->
                  let rsm = replies b (opponent c) (n-1) in
                  case rsm of
                    Nothing -> other
                    Just [] ->
                      if kingincheck (opponent c) b then
                        Just (Solution mif [])
                      else
                        other
                    Just rs -> Just (Solution mif rs)
                }
  in
  if n > 0 then
    let mds = moveDetailsFor c bd in foldr solnOr Nothing mds
  else
    error "n <= 0"
replies :: Board -> Colour -> Int -> Maybe [(MoveInFull, Solution)]
replies bd c n =
  let mds = moveDetailsFor c bd in
  let solnAnd = \mifb -> \rest -> case mifb of { (mif,b) ->
                let sm = solution b (opponent c) (n-1) in
                case sm of
                  Nothing -> Nothing
                  Just s ->  case rest of
                      Nothing -> Nothing
                      Just ms -> Just ((mif,s):ms)
              }
  in
  if n==0 then
    if null mds then Just [] else Nothing
  else if n>0 then
    foldr solnAnd (Just []) mds
  else
    error "n < 0"
showResult Nothing = "No solution!"
showResult (Just s) = showSoln (compact s) 1
compact :: Solution -> Soln
compact (Solution mif rs) = Soln mif (foldr insertCompact [] rs)
insertCompact (mif,s) ls =
  let cs = compact s in
  let ic = \ls -> case ls of
            [] -> [([mif],cs)]
            ((mifs,cs'):etc) -> let a = (showSoln cs 1) in
                                let b = (showSoln cs' 1) in
                                if polyLt a b then
                                  ([mif], cs):((mifs,cs'):etc)
                                else if polyEq a b then
                                  (insert mif mifs, cs):etc
                                else if polyGt a b then
                                  (mifs,cs'):(ic etc)
                                else
                                  error "compare error"
              -- case compare (showSoln cs 1) (showSoln cs' 1) of
              --                     LT -> ([mif], cs):((mifs,cs'):etc)
              --                     EQ -> (insert mif mifs, cs):etc
              --                     GT -> (mifs,cs'):(ic etc)
  in
  ic ls
  where
  insert x [] = [x]
  insert x (y:ys) = if polyGt x y then y : (insert x ys) else x : (y : ys)
showSoln (Soln mif rs) n =
  (string_of_int n) ++ ". " ++ (showMoveInFull mif) ++
  ( case rs of
    []       -> "++|"
    [(mifs,s)] -> ", " ++
      ( if (length mifs) > 1 then "..." else showMoves mifs) ++
      "; " ++ showSoln s (n+1)
    _       -> ",|" ++ showReplies (sort rs) n )
showReplies [] n = ""
showReplies ((mifs,s):rs) n =
  (tab n) ++ "if " ++
  (
    if (null rs) && ((length mifs) > 1) then
      "others"
    else
      showMoves mifs
  ) ++
  "; " ++ (showSoln s (n+1)) ++ (showReplies rs n)
tab :: Int -> String
tab n = if n <= 0 then [] else ' ':(tab (n - 1))
------------
testMate_nofib dummy = 
  let input = primId "-- A. Ellerman|-- 1st prize, Luigi Centurini, Genoa, 1925|-- `One of the very best modern two-movers,|-- unsurpassed for beauty of idea and|-- execution. (Phillips)||b k - - - - - - |- n p - - - - - |- - - - - - - - |r - - - - p - - |R - - - K - - - |- - - r P - p - |- Q - - - - - - |- - - - - q B B ||White to play and mate in 2|" in
  let bdcn = readProblem input in
  case bdcn of {(bd,(c,n)) ->
    (showBoard bd) ++ "|" ++ (showColour c) ++ " to move and mate in " ++ (string_of_int n) ++ "|" ++ "|" ++ (solve bd c n)
  }
testMate_nofib $ primId 0
