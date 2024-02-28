and [] = True
and (h:t) = if h then and t else False
type Win = [[Int]]
type Board = [Row]
type Row = [Piece]
data Piece = X | O | Empty deriving Eq
data Evaluation = XWin | OWin | Score Int deriving Eq
data Tree a = Branch a [Tree a]
type Player = Evaluation -> Evaluation -> Evaluation
type Move = (Board,Evaluation)
showEvaluation XWin = "XWin"
showEvaluation OWin = "OWin"
showEvaluation (Score a) = "Score" ++ (string_of_int a)
wins :: [Win]
wins = [win1,win2,win3,win4,win5,win6,win7,win8]
win1,win2,win3,win4,win5,win6,win7,win8 :: Win
win1 = [[1,1,1],
        [0,0,0],
        [0,0,0]]
win2 = [[0,0,0],
        [1,1,1],
        [0,0,0]]
win3 = [[0,0,0],
        [0,0,0],
        [1,1,1]]
win4 = [[1,0,0],
        [1,0,0],
        [1,0,0]]
win5 = [[0,1,0],
        [0,1,0],
        [0,1,0]]
win6 = [[0,0,1],
        [0,0,1],
        [0,0,1]]
win7 = [[1,0,0],
        [0,1,0],
        [0,0,1]]
win8 = [[0,0,1],
        [0,1,0],
        [1,0,0]]
--------------------
showBoard :: Board -> String
showBoard [r1,r2,r3] =  (showRow r1) ++ "|------|" ++ (showRow r2) ++ "|------|" ++ (showRow r3) ++ "||"
showRow [p1,p2,p3] = (showPiece p1) ++ "|" ++ (showPiece p2) ++ "|" ++ (showPiece p3)
showPiece :: Piece -> String
showPiece X = "X"
showPiece O = "O"
showPiece Empty = " "
placePiece :: Piece -> Board -> (Int,Int) -> [Board]
placePiece p board pos =
  if not (empty pos board) then
    []
  else case board of {[r1,r2,r3] -> case pos of {
    (1,x) -> [[insert p r1 x,r2,r3]];
    (2,x) -> [[r1,insert p r2 x,r3]];
    (3,x) -> [[r1,r2,insert p r3 x]]
  }}
insert :: Piece -> Row -> Int -> Row
insert p [p1,p2,p3] 1 = [p,p2,p3]
insert p [p1,p2,p3] 2 = [p1,p,p3]
insert p [p1,p2,p3] 3 = [p1,p2,p]
empty :: (Int,Int) -> Board -> Bool
empty (1,x) [r1,r2,r3] = empty' x r1
empty (2,x) [r1,r2,r3] = empty' x r2
empty (3,x) [r1,r2,r3] = empty' x r3
empty' :: Int -> Row -> Bool
empty' 1 [Empty,_,_] = True
empty' 2 [_,Empty,_] = True
empty' 3 [_,_,Empty] = True
empty' _ _ = False
fullBoard b = and (map (\x -> not (polyEq x Empty)) (concat b))
--newPositions :: Piece -> Board -> [Board]
newPositions piece board = concat (map (placePiece piece board) [(x,y) | x<-[1..3], y <-[1..3]])
initialBoard :: Board
initialBoard = [[Empty,Empty,Empty], [Empty,Empty,Empty], [Empty,Empty,Empty]]
eval x =
  if x == 3 then
    XWin
  else if x == (0 - 3) then
    OWin
  else Score x
static :: Board -> Evaluation
static board = interpret 0 (map (score board) wins)
interpret :: Int -> [Evaluation] -> Evaluation
interpret x [] = (Score x)
interpret x ((Score y):l) = interpret (x+y) l
interpret x (XWin:l) = XWin
interpret x (OWin:l) = OWin
score :: Board -> Win -> Evaluation
score board win  = eval (sum (map sum (map2 (map2 scorePiece) board win)))
scorePiece :: Piece -> Int -> Int
scorePiece X score = score
scorePiece Empty _ = 0
scorePiece O score = 0-score
map2 :: (a -> b -> c) -> [a] -> [b] -> [c]
map2 f [] x = []
map2 f x [] = []
map2 f (x:xs) (y:ys) = (f x y):(map2 f xs ys)
------------------------
repTree :: (a->[a]) -> (a->[a])-> a -> (Tree a)
repTree f g a = Branch a (map (repTree g f) (f a))
mapTree :: (a -> b) -> (Tree a) -> (Tree b)
mapTree f (Branch a l) = Branch (f a) (map (mapTree f) l)
prune :: Int -> (Tree a) -> (Tree a)
prune 0 (Branch a l) = Branch a []
--should be:prune (n+1) (Branch a l) = Branch a (map (prune n) l)
prune n (Branch a l) =
  if n < 0 then
    error "Tree.prune: < 0"
  else
    Branch a (map (prune (n-1)) l)
------------------------
prog :: String -> String
prog input =
  let game = alternate X max' min' (board input) in
  "OXO|" ++ (concat (map showMove game))
  where
  board "doesnt happen" = testBoard ++ testBoard
  board _                = testBoard
testBoard = [[Empty,O,Empty],[Empty,X,Empty],[Empty,Empty,Empty]]
--------------------------
alternate :: Piece -> Player -> Player -> Board -> [Move]
alternate player f g board =
  if fullBoard board then []
  else if polyEq (static board) XWin then []
  else if polyEq (static board) OWin then []
  else
    let opposition = opposite player in
    let possibles = newPositions player board in
    let scores = map (bestMove opposition g f) possibles in
    let boardd_eval = best f possibles scores in
    case boardd_eval of { (boardd, eval) ->
      (boardd,eval):(alternate opposition g f boardd)
    }
opposite :: Piece -> Piece
opposite X = O
opposite O = X
best :: Player -> [Board] -> [Evaluation] -> Move
best f (b:bs) (s:ss) =
  let best' = \b -> \s -> \ls1 -> \ls2 -> case ls1 of {
    [] -> case ls2 of { [] -> (b, s) };
    (b':bs) -> case ls2 of { (s':ss) -> if polyEq s (f s s') then best' b s bs ss else best' b' s' bs ss }
  } in
  best' b s bs ss
showMove :: Move -> String
showMove (b,e) = (showEvaluation e) ++ "|" ++ (showBoard b)
bestMove :: Piece -> Player -> Player -> Board -> Evaluation
bestMove p f g = ((mise f g) . cropTree) . (mapTree static . searchTree p)
cropTree :: (Tree Evaluation) -> (Tree Evaluation)
cropTree (Branch a []) = (Branch a [])
cropTree (Branch (Score x) l) = Branch (Score x) (map cropTree l)
cropTree (Branch x l) = Branch x []
searchTree :: Piece -> Board -> (Tree Board)
searchTree p board = prune 5 (repTree (newPositions p) (newPositions (opposite p)) board)
mise :: Player -> Player -> (Tree Evaluation) -> Evaluation
mise f g (Branch a []) = a
mise f g (Branch _ l) = foldr f (g OWin XWin) (map (mise g f) l)
max' :: Evaluation -> Evaluation -> Evaluation
max' XWin _ = XWin
max' _ XWin = XWin
max' b OWin = b
max' OWin b = b
max' (Score x) (Score y) = if x>y then (Score x) else (Score y)
min' :: Evaluation -> Evaluation -> Evaluation
min' OWin _ = OWin
min' _ OWin = OWin
min' b XWin = b
min' XWin b = b
min' (Score x) (Score y) = if x<y then (Score x) else (Score y)
-------------------------------------
testMinimax_nofib n = length (prog n)
testMinimax_nofib $ primId "180000"
