mySnd (a,b) = b
myIsDigit c = let n = int_of_char c in (n >= 48) && (n <= 57)
copy n x = if n <= 0 then [] else x:(copy (n-1) x)
inList x (h:t) = if polyEq x h then True else inList x t
inList x [] = False
eqTupleTwo (a,b) (c,d) = (polyEq a b) && (polyEq c d)
intintComp :: (Int, Int) -> (Int, Int) -> Bool
intintComp (a,b) (c,d) = (a < c) || ((a == c) && (b < d))
intChessSetComp :: (Int, ChessSet) -> (Int, ChessSet) -> Bool
intChessSetComp (a,b) (c,d) = (a < c)
myInit (a:[]) = []
myInit (a:t) = a:(myInit t)
myLast [] = (0-100, 0-100)
myLast (h:t) = go h t
  where
    go h [] = h
    go h (head:t) = go head t
type Tile     = (Int,Int)
data ChessSet = Board Int Int Tile [Tile]
-- instance Eq ChessSet where
--     _ == _ = True
-- instance Ord ChessSet where
--     _ <= _ = True
-- instance Show ChessSet where
--    showsPrec p board@(Board sze n f ts)
--       = showString (printBoard sze 1 sortedTrail)
--         where
--          sortedTrail = quickSort (assignMoveNo ts sze n)
showChessSet (Board sze n f ts) =
  let sortedTrail = quickSortIntInt (assignMoveNo ts sze n) in
  printBoard sze 1 sortedTrail
createBoard::Int -> Tile -> ChessSet
createBoard x t = Board x 1 t [t]
sizeBoard::ChessSet -> Int
sizeBoard (Board s _ _ _) = s
noPieces::ChessSet -> Int
noPieces (Board _ n _ _) = n
addPiece::Tile -> ChessSet -> ChessSet
addPiece t (Board s n f ts) = Board s (n+1) f (t:ts)
deleteFirst::ChessSet -> ChessSet
deleteFirst (Board s n f ts) =
  let ts' = myInit ts in
  Board s (n-1) (myLast ts') ts'
positionPiece::Int -> ChessSet -> Tile
positionPiece x (Board _ n _ ts) = atIndex (n - x) ts
lastPiece::ChessSet -> Tile
lastPiece (Board _ _ _ (t:ts)) = t
firstPiece::ChessSet -> Tile
firstPiece (Board _ _ f _) = f
pieceAtTile::Tile -> ChessSet -> Int
pieceAtTile x (Board _ _ _ ts)
   = find x ts
     where
      find x [] = error "Tile not used"
      find x (y:xs) = if eqTupleTwo x y then (1 + length xs) else find x xs
isSquareFree::Tile -> ChessSet -> Bool
isSquareFree x (Board _ _ _ ts) = not (inList x ts)
assignMoveNo [] size x = []
assignMoveNo ((x,y):t) size z =(((y-1)*size)+x,z):(assignMoveNo t size (z-1))
printBoard s n [] = 
   if (n  > (s*s)) then ""
   else if ((n `mod` s) /= 0) then "*" ++ (spaces (s*s) 1) ++ (printBoard s (n+1) [] )
   else if ((n `mod` s) == 0) then "*|" ++ (printBoard s (n+1) [] )
   else error "printBoard empty list error"
printBoard s n ((i,j):xs) = 
   if (i == n) && ((n `mod` s) == 0) then (string_of_int j) ++ "|" ++ (printBoard s (n+1) xs )
   else if (i==n) && ((n `mod` s) /= 0) then (string_of_int j) ++ (spaces (s*s) j) ++ (printBoard s (n+1) xs )
   else if ((n `mod` s) /= 0) then "*" ++ (spaces (s*s) 1) ++ (printBoard s (n+1) ((i,j):xs) )
   else if ((n `mod` s) == 0) then "*|" ++ (printBoard s (n+1) ((i,j):xs) )
   else error "printBoard non-empty list error"
spaces s y = copy ((logTen s) - (logTen y) + 1) ' '
      where
         logTen 0 = 0
         logTen x = 1 + logTen (x `div` 10)
data Direction = UL | UR | DL |DR | LU | LD | RU | RD
move::Direction -> Tile -> Tile
move UL (x,y) = (x-1,y-2)
move UR (x,y) = (x+1,y-2)
move DL (x,y) = (x-1,y+2)
move DR (x,y) = (x+1,y+2)
move LU (x,y) = (x-2,y-1)
move LD (x,y) = (x-2,y+1)
move RU (x,y) = (x+2,y-1)
move RD (x,y) = (x+2,y+1)
startTour::Tile -> Int -> ChessSet
startTour st size =
  if ((size `mod` 2) == 0) then createBoard size st
  else error "Tour doesnt exist for odd size board"
moveKnight::ChessSet -> Direction -> ChessSet
moveKnight board dir
   = addPiece (move dir (lastPiece board)) board
canMove::ChessSet -> Direction -> Bool
canMove board dir
   = canMoveTo (move dir (lastPiece board)) board
canMoveTo::Tile -> ChessSet -> Bool
canMoveTo (x,y) board =
  let sze = sizeBoard board in
  (x >= 1) && (x <=sze) && (y >= 1) && (y <=sze) && (isSquareFree (x,y) board)
descendents::ChessSet -> [ChessSet]
descendents board =
  if (canJumpFirst board) && (deadEnd (addPiece (firstPiece board) board)) then []
  else
    let singles = singleDescend board in
    let scrut = length singles in
    if scrut == 0 then map mySnd (quickSortIntChessSet (descAndNo board))
    else if scrut == 1 then singles
    else []
singleDescend::ChessSet -> [ChessSet]    
singleDescend board = [x | (y,x) <- descAndNo board, y == 1]
descAndNo::ChessSet -> [(Int,ChessSet)]
descAndNo board
   = [(length (possibleMoves (deleteFirst x)),x) | x<- allDescend board]
allDescend::ChessSet -> [ChessSet]
allDescend board
   =  map (moveKnight board) (possibleMoves board)
possibleMoves::ChessSet -> [Direction]
possibleMoves board
   =[x | x <- [UL,UR,DL,DR,LU,LD,RU,RD], (canMove board x)]
deadEnd::ChessSet -> Bool
deadEnd board = (length (possibleMoves board)) == 0
canJumpFirst::ChessSet -> Bool
canJumpFirst board
  = canMoveTo (firstPiece board) (deleteFirst board)
tourFinished::ChessSet -> Bool
tourFinished board =
  let sze = sizeBoard board in
  ((noPieces board) == (sze*sze)) && (canJumpFirst board)
printTour::[[Char]] -> [Char]
printTour ss =
  case (map (strToInt 0) ss) of {
    [size, number] -> pp (take_lz number (depthSearch (root size) grow isFinished))
  }
    where
      strToInt y []     = y
      strToInt y (x:xs) = strToInt ((10*y) + (int_of_char x - int_of_char '0')) xs
      pp []      = []
      pp ((x,y):xs)     = "|Knights tour with " ++ (string_of_int x)  ++ " backtracking moves|" ++ (showChessSet y) ++ (pp xs)
grow::(Int,ChessSet) -> [(Int,ChessSet)]
grow (x,y) = zip_lz_nl (repeat (x+1)) (descendents y)
isFinished::(Int,ChessSet) -> Bool
isFinished (x,y) = tourFinished y
root::Int -> Queue (Int,ChessSet)
root sze = addAllFront (zip_lz_nl (repeat (1-(sze*sze))) (zipWith startTour [(x,y) | x<-[1..sze], y<-[1..sze]] (copy (sze*sze) sze))) createQueue
-- depthSearch :: (Eq a) => Queue a -> (a -> [a]) -> (a -> Bool) -> Queue a
depthSearch q growFn finFn =
  if (case q of { [] -> True; _ -> False} ) then lazy []
  else if finFn (inquireFront q) then lazy ((inquireFront q):((depthSearch (removeFront q) growFn finFn)))
  else (depthSearch (addAllFront (growFn (inquireFront q)) (removeFront q)) growFn finFn)
type Queue a = [a]
createQueue::Queue a
createQueue = []
addFront::a -> Queue a -> Queue a
addFront x q = x:q
addBack::a -> Queue a -> Queue a
addBack x q = q ++ [x]
addAllFront::[a] -> Queue a -> Queue a
addAllFront list q = list ++ q
addAllBack::[a] -> Queue a -> Queue a
addAllBack list q = q ++ list
inquireFront::Queue a -> a
inquireFront []    = error "Cannot inquire on empty Queue"
inquireFront (h:t) = h
inquireBack::Queue a -> a
inquireBack []     = error "Cannot inquire on empty Queue"
inquireBack [x]    = x
inquireBack (x:xs) = inquireBack xs
removeFront::Queue a -> Queue a
removeFront []    = error "Cannot remove from an empty Queue"
removeFront (h:t) = t
removeBack::Queue a -> Queue a
removeBack []    = error "Cannot inquire on empty Queue"
removeBack [x]   =  []
removeBack (x:xs) = x:(removeBack xs)
-- emptyQueue::(Eq a) => Queue a -> Bool
emptyQueue x = polyEq x []
sizeQueue::Queue b -> Int
sizeQueue xs = length xs
-- quickSort :: (Ord a) => [a] -> [a]
quickSortIntChessSet []     = []
quickSortIntChessSet (x:xs) = (quickSortIntChessSet [y | y<-xs, intChessSetComp y x]) ++ [x] ++ (quickSortIntChessSet [y | y<-xs, not (intChessSetComp y x)])
quickSortIntInt []     = []
quickSortIntInt (x:xs) = (quickSortIntInt [y | y<-xs, intintComp y x]) ++ [x] ++ (quickSortIntInt [y | y<-xs, not (intintComp y x)])
testKnights_nofib ss =
  if (argsOk ss) then
    (length (printTour ss))
  else
    error usageString
  where
    usageString= "|Usage: knights <board size> <no solutions>|"
    argsOk ss = ((length ss) == 2) && (foldr ((\a b -> a && b) . all_digits) True ss)
    all_digits s = foldr ((\a b -> a && b) . myIsDigit) True s
testKnights_nofib $ primId ["8", "1"]
