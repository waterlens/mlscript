fst (a,b) = a
snd (a,b) = b
fromJust (Just a) = a
isJust (Just _) = True
isJust Nothing = False
copy n a = if n <= 0 then [] else a:(copy (n - 1) a)
mapMaybe f [] = []
mapMaybe f (h:t) = case f h of
  Nothing -> mapMaybe f t
  Just a -> a:(mapMaybe f t)
myMin a b = if a > b then a else b
compareIntInt (a,b) (c,d) =
  if a > c then
    GT
  else if a < c then
    LT
  else if b > d then
    GT
  else if b < d then
    LT
  else
    EQ
data Map k a  = Tip | Bin Int k a (Map k a) (Map k a)
mapLookup k Tip = Nothing
mapLookup k (Bin _ kx x l r) =
  case compareIntInt k kx of
    LT -> mapLookup k l
    GT -> mapLookup k r
    EQ -> Just x
insert kx x Tip = Bin 1 kx x Tip Tip
insert kx x (Bin sz ky y l r) =
  case compareIntInt kx ky of
    LT -> balance ky y (insert kx x l) r
    GT -> balance ky y l (insert kx x r)
    EQ -> Bin sz kx x l r
  where
  balance k x l r =
    let size = \p -> case p of { Tip -> 0; (Bin sz _ _ _ _) -> sz } in
    let sizeL = size l in
    let sizeR = size r in
    let sizeX = sizeL + sizeR + 1 in
      if (sizeL + sizeR) <= 1 then Bin sizeX k x l r
      else if sizeR >= (4*sizeL) then rotateL k x l r
      else if sizeL >= (4*sizeR) then rotateR k x l r
      else Bin sizeX k x l r
  rotateL k x l (Bin _a _b _c ly ry) =
    let size = \p -> case p of { Tip -> 0; (Bin sz _ _ _ _) -> sz } in
    if (size ly) < (2*(size ry)) then singleL k x l (Bin _a _b _c ly ry)
    else doubleL k x l (Bin _a _b _c ly ry)
  rotateL _ _ _ Tip = error "rotateL Tip"
  rotateR k x (Bin _a _b _c ly ry) r =
    let size = \p -> case p of { Tip -> 0; (Bin sz _ _ _ _) -> sz } in
    if ((size ry) < (2*(size ly))) then singleR k x (Bin _a _b _c ly ry) r
    else doubleR k x (Bin _a _b _c ly ry) r
  rotateR _ _ Tip _ = error "rotateR Tip"
  singleL k1 x1 t1 (Bin _ k2 x2 t2 t3)  =
    let size = \p -> case p of { Tip -> 0; (Bin sz _ _ _ _) -> sz } in
    let bin = \k -> \x -> \l -> \r -> Bin ((size l) + (size r) + 1) k x l r in
    bin k2 x2 (bin k1 x1 t1 t2) t3
  singleL _ _ _ Tip = error "singleL Tip"
  singleR k1 x1 (Bin _ k2 x2 t1 t2) t3  =
    let size = \p -> case p of { Tip -> 0; (Bin sz _ _ _ _) -> sz } in
    let bin = \k -> \x -> \l -> \r -> Bin ((size l) + (size r) + 1) k x l r in
    bin k2 x2 t1 (bin k1 x1 t2 t3)
  singleR _ _ Tip _ = error "singleR Tip"
  doubleL k1 x1 t1 (Bin _ k2 x2 (Bin _ k3 x3 t2 t3) t4) =
    let size = \p -> case p of { Tip -> 0; (Bin sz _ _ _ _) -> sz } in
    let bin = \k -> \x -> \l -> \r -> Bin ((size l) + (size r) + 1) k x l r in
    bin k3 x3 (bin k1 x1 t1 t2) (bin k2 x2 t3 t4)
  doubleL _ _ _ _ = error "doubleL"
  doubleR k1 x1 (Bin _ k2 x2 t1 (Bin _ k3 x3 t2 t3)) t4 =
    let size = \p -> case p of { Tip -> 0; (Bin sz _ _ _ _) -> sz } in
    let bin = \k -> \x -> \l -> \r -> Bin ((size l) + (size r) + 1) k x l r in
    bin k3 x3 (bin k2 x2 t1 t2) (bin k1 x1 t3 t4)
  doubleR _ _ _ _ = error "doubleR"
  singleton k x = Bin 1 k x Tip Tip
------------------------------------------------------------------------------
indent n = if n <= 0 then [] else (' ':(indent (n - 1)))
data Mode = PageMode | ZigZagMode | LeftMode | OneLineMode
data AnnotDetails = AnnotStart | NoAnnot TextDetails Int | AnnotEnd
data TextDetails = Chr  Char | Str  String | PStr String
data IsEmpty = IsEmpty | NotEmpty
data Doc
  = Empty
  | NilAbove Doc
  | TextBeside AnnotDetails Doc
  | Nest Int Doc
  | Union Doc Doc
  | NoDoc
  | Beside Doc Bool Doc
  | Above Doc Bool Doc
-------------------------------------
-- Pieces
data Piece = P  PieceId [[Offset]] [[Offset]]
-- In both cases, the list of offset is all the
-- squares except the bottom LH one
type PieceId = Char
data Sex = Male | Female
flip Male   = Female
flip Female = Male
-------------------------------------
-- The main search
data Solution = Soln Board | Choose [Solution] | Fail Board Square
search :: Square -> Sex -> Board -> [Piece] -> Solution
search (row,col) sex bd [] = Soln bd -- Finished
search (row,col) sex bd ps =
  if col == (maxCol+1) then
    search (row+1, 1) (flip sex) bd ps
  else if isJust (check bd (row,col)) then
    search (next (row,col)) (flip sex) bd ps
  else
    let choices = [(id, os, ps) | (P id ms fs, ps) <- pickOne ps, os <- (case sex of { Male -> ms; Female -> fs })] in
    case mapMaybe (try (row,col) sex bd) choices of
          [] -> Fail bd (row,col)
          ss -> Choose ss
try :: Square -> Sex -> Board -> (PieceId,[Offset],[Piece]) -> Maybe Solution
try sq sex bd (id,os,ps) = case (fit bd sq id os) of
  Just bd' -> Just (search (next sq) (flip sex) bd' ps)
  Nothing  -> Nothing
fit :: Board -> Square -> PieceId -> [Offset] -> Maybe Board
fit bd sq id []     = Just (extend bd sq id)
fit bd sq id (o:os) = case extend_maybe bd (addIntInt sq o) id of
      Just bd' -> fit bd' sq id os
      Nothing  -> Nothing
--------------------------
--  Offsets and squares
type Offset  = (Int,Int)
type Square  = (Int,Int)
-- (1,1) is bottom LH corner
addIntInt :: Square -> Offset -> Square
addIntInt (row,col) (orow, ocol) = (row + orow, col + ocol)
next :: Square -> Square
next (row,col) = (row,col+1)
maxRow,maxCol :: Int
maxRow = 8
maxCol = 8
------------------------
--  Boards
check  :: Board -> Square -> Maybe PieceId
extend        :: Board -> Square -> PieceId -> Board
extend_maybe :: Board -> Square -> PieceId -> Maybe Board
type Board = Map Square PieceId
emptyBoard = Tip
check bd sq = mapLookup sq bd
extend bd sq id = insert sq id bd
extend_maybe bd (row,col) id =
  if (row > maxRow) || (col < 1) || (col > maxCol) then
    Nothing
  else
    case check bd (row, col) of
        Just _  -> Nothing
        Nothing -> Just (extend bd (row,col) id)
--------------------------
--  Utility
pickOne :: [a] -> [(a,[a])]
pickOne xs = go (\x -> x) xs
  where
    go f [] = []
    go f (x:xs) = (x, f xs) : (go ((\p -> x : p) . f) xs)
-----------------------------------
--  The initial setup
initialPieces = [(bPiece), (cPiece), (dPiece), (ePiece), (fPiece), (gPiece), (hPiece), (iPiece), (jPiece), (kPiece), (lPiece), (mPiece), (nPiece)]
nPiece = P 'n' ([[(0,1),(1,1),(2,1),(2,2)], [(1,0),(1,0-1),(1,0-2),(2,0-2)]]) ([])
mPiece = P 'm' ([ [(0,1),(1,0),(2,0),(3,0)] ]) ([ [(0,1),(0,2),(0,3),(1,3)], [(1,0),(2,0),(3,0),(3,0-1)] ])
lPiece = P 'l' ([ [(0,1),(0,2),(0,3),(1,2)], [(1,0),(2,0),(3,0),(2,0-1)] ]) ([ [(1,0-1),(1,0),(1,1),(1,2)], [(1,0),(2,0),(3,0),(1,1)] ])
kPiece = P 'k' ([ [(0,1),(1,0),(2,0),(2,0-1)] ]) ([ [(1,0),(1,1),(1,2),(2,2)] ])
jPiece = P 'j' ([ [(0,1),(0,2),(0,3),(1,1)], [(1,0),(2,0),(3,0),(1,0-1)], [(1,0-2),(1,0-1),(1,0),(1,1)] ]) ([ [(1,0),(2,0),(3,0),(2,2)] ])
iPiece = P 'i' ([ [(1,0),(2,0),(2,1),(3,1)], [(0,1),(0,2),(1,0),(1,0-1)], [(1,0),(1,1),(2,1),(3,1)] ]) ([ [(0,1),(1,0),(1,0-1),(1,0-2)] ])
hPiece = P 'h' ([ [(0,1),(1,1),(1,2),(2,2)], [(1,0),(1,0-1),(2,0-1),(2,0-2)], [(1,0),(1,1),(2,1),(2,2)] ]) ([ [(0,1),(1,0),(1,0-1),(2,0-1)] ])
gPiece = P 'g' ([ ]) ([ [(0,1),(1,1),(1,2),(1,3)], [(1,0),(1,0-1),(2,0-1),(3,0-1)], [(0,1),(0,2),(1,2),(1,3)], [(1,0),(2,0),(2,0-1),(3,0-1)] ])
fPiece = P 'f' ([ [(0,1),(1,1),(2,1),(3,1)], [(1,0),(1,0-1),(1,0-2),(1,0-3)], [(1,0),(2,0),(3,0),(3,1)] ]) ([ [(0,1),(0,2),(0,3),(1,0)] ])
ePiece = P 'e' ([ [(0,1),(1,1),(1,2)], [(1,0),(1,0-1),(2,0-1)] ]) ([ [(0,1),(1,1),(1,2)], [(1,0),(1,0-1),(2,0-1)] ])
dPiece = P 'd' ([ [(0,1),(1,1),(2,1)], [(1,0),(1,0-1),(1,0-2)] ]) ([ [(1,0),(2,0),(2,1)] ])
cPiece = P 'c' ([ ]) ([ [(0,1),(0,2),(1,1)], [(1,0),(1,0-1),(2,0)], [(1,0-1),(1,0),(1,1)], [(1,0),(1,1),(2,0)] ])
bPiece = P 'b' ([ [(0,1),(0,2),(1,2)], [(1,0),(2,0),(2,0-1)], [(0,1),(1,0),(2,0)] ]) ([ [(1,0),(1,1),(1,2)] ])
testLastPiece_nofib dummy =
  let initialBoard = fromJust (fit emptyBoard (1,1) 'a' [(1,0),(1,1)]) in
  let solutions = search (1,2) Female initialBoard (initialPieces) in
  printDoc ((display solutions))
  where
    display :: Solution -> Doc
    display (Soln bd) = vcat [text "Success!", nest 2 (displayBoard bd)]
    display (Choose ss) = vcat (map display ss)
    display (Fail bd (row,col)) = Empty
    displayBoard :: Board -> Doc
    displayBoard bd =
      let sq = \n -> \col -> case check bd (n,col) of { Just id -> char id; Nothing -> char '.' } in
      let row = \n -> hcat (map (sq n) [1..maxCol]) in
      above_ (vcat (map row [1..maxRow])) False (text "")
    eliminateEmpty _    Empty _ q = q
    eliminateEmpty cons p     g q =
      (NotEmpty,
      case q of
        (NotEmpty, q') -> cons p g q'
        (IsEmpty, _) -> p)
    reduceVert (Above  p g q) = eliminateEmpty (\a -> \b -> \c -> Above a b c) (snd (reduceVert p)) g (reduceVert q)
    reduceVert doc            = (NotEmpty, doc)
    vcat ls = (snd . reduceVert . (foldr (\p -> \q -> Above p False q) Empty)) ls
    text :: String -> Doc
    text s = case length s of { sl -> TextBeside (NoAnnot (Str s) sl) Empty }
    char :: Char -> Doc
    char c = TextBeside (NoAnnot (Chr c) 1) Empty
    reduceHoriz (Beside p g q) = eliminateEmpty (\a -> \b -> \c -> Beside a b c) (snd (reduceHoriz p)) g (reduceHoriz q)
    reduceHoriz doc            = (NotEmpty, doc)
    hcat ls = (snd . reduceHoriz . (foldr (\p -> \q -> Beside p False q) Empty)) ls
    above_ p _ Empty = p
    above_ Empty _ q = q
    above_ p g q     = Above p g q
    nest :: Int -> Doc -> Doc
    nest k p = mkNest k (reduceDoc p)
    mkNest k (Nest k1 p)       = mkNest (k + k1) p
    mkNest _ NoDoc             = NoDoc
    mkNest _ Empty             = Empty
    mkNest 0 p                 = p
    mkNest k p                 = Nest k p
    reduceDoc (Beside p g q) = beside p g (reduceDoc q)
    reduceDoc (Above  p g q) = above  p g (reduceDoc q)
    reduceDoc p              = p
    beside NoDoc               _ _   = NoDoc
    beside (Union p1 p2)     g q   = Union (beside p1 g q) (beside p2 g q)
    beside Empty               _ q   = q
    beside (Nest k p)          g q   = Nest k (beside p g q)
    beside (Beside p1 g1 q1) g2 q2 =
        if polyEq g1 g2 then beside p1 g1 (beside q1 g2 q2)
        else beside (reduceDoc (Beside p1 g1 q1)) g2 q2
    beside (Above _a _b _c)    g q   = let d = reduceDoc (Above _a _b _c) in beside d g q
    beside (NilAbove p)        g q   = NilAbove (beside p g q)
    beside (TextBeside t p)    g q   =
      let rest = case p of { Empty -> nilBeside g q;  _ -> beside p g q } in
      TextBeside t rest
    above (Above p g1 q1)  g2 q2 = above p g1 (above q1 g2 q2)
    above (Beside _a _b _c) g q  = aboveNest (reduceDoc (Beside _a _b _c)) g 0 (reduceDoc q)
    above p g q                  = aboveNest p g 0 (reduceDoc q)
    nilBeside _ Empty         = Empty -- Hence the text "" in the spec
    nilBeside g (Nest _ p)    = nilBeside g p
    nilBeside g p = if g then TextBeside spaceText p else p
    aboveNest NoDoc               _ _ _ = NoDoc
    aboveNest (Union p1 p2)     g k q = Union (aboveNest p1 g k q) (aboveNest p2 g k q)
    aboveNest Empty               _ k q = mkNest k q
    aboveNest (Nest k1 p)         g k q = Nest k1 (aboveNest p g (k - k1) q)
    aboveNest (NilAbove p)        g k q = NilAbove (aboveNest p g k q)
    aboveNest (TextBeside s p)    g k q =
      let k1 = k - (annotSize s) in
      let rest = case p of { Empty -> nilAboveNest g k1 q; _ -> aboveNest  p g k1 q } in
      TextBeside s rest
    aboveNest (Above _ _ _)          _ _ _ = error "aboveNest Above"
    aboveNest (Beside _ _ _)         _ _ _ = error "aboveNest Beside"
    nilAboveNest _ _ Empty       = Empty
    nilAboveNest g k (Nest k1 q) = nilAboveNest g (k + k1) q
    nilAboveNest g k q =
      if (not g) && (k > 0) then TextBeside (NoAnnot (Str (indent k)) k) q
      else NilAbove (mkNest k q)
    printDoc :: Doc -> String
    printDoc d =
      let put = \k -> \next -> case k of { Chr c -> c:next; Str s -> s ++ next; PStr s -> s ++ next } in
      let done = "|" in
      fullRender ZigZagMode 200 1.5 put done d
    fullRender m l r txt =
      let annTxt = \p -> case p of { (NoAnnot s _) -> txt s; _ -> (\x -> x) } in
      fullRenderAnn m l r annTxt
    fullRenderAnn OneLineMode _ _ txt end doc
      = easyDisplay spaceText (\_dummy y -> y) txt end (reduceDoc doc)
    fullRenderAnn LeftMode    _ _ txt end doc
      = easyDisplay nlText first txt end (reduceDoc doc)
    fullRenderAnn m lineLen ribbons txt rest doc =
      let ribbonLen   = int_of_float (ceiling ((float_of_int lineLen) /. ribbons)) in
      let bestLineLen = case m of { ZigZagMode -> 2147483647; _ -> lineLen } in
      let doc' = best bestLineLen ribbonLen (reduceDoc doc) in
      displayDoc m lineLen ribbonLen txt rest doc'
    easyDisplay nlSpaceText choose txt end = let lay = \x -> case x of {
                                                      NoDoc            -> error "easyDisplay: NoDoc";
                                                      (Union p q)      -> lay (choose p q);
                                                      (Nest _ p)       -> lay p;
                                                      Empty            -> end;
                                                      (NilAbove p)     -> txt nlSpaceText (lay p);
                                                      (TextBeside s p) -> txt s (lay p);
                                                      (Above _ _ _)       -> error "easyDisplay Above";
                                                      (Beside _ _ _)      -> error "easyDisplay Beside"
                                                    } in lay
    displayDoc m page_width ribbon_width txt end doc
      = case page_width - ribbon_width of { gap_width ->
          case div gap_width 2 of { shift ->
            let lay =
                  let lay2 = \k -> \param -> case param of (NilAbove p)     -> txt nlText (lay k p)
                                                           (TextBeside s p) -> txt s (lay2 (k + (annotSize s)) p)
                                                           (Nest _ p)       -> lay2 k p
                                                           Empty            -> end
                                                           (Above _ _ _)    -> error "display lay2 Above"
                                                           (Beside _ _ _)   -> error "display lay2 Beside"
                                                           NoDoc            -> error "display lay2 NoDoc"
                                                           (Union _ _)      -> error "display lay2 Union"
                  in
                  let lay1 = \k -> \s -> \p -> let r = k + (annotSize s) in txt (NoAnnot (Str (indent k)) k) (txt s (lay2 r p)) in
                  \k -> \docc -> case docc of (Nest k1 p) ->   lay (k + k1) p
                                              Empty ->         end
                                              (NilAbove p) ->  txt nlText (lay k p)
                                              (TextBeside s p) ->
                                                                case m of
                                                                      ZigZagMode -> if k >= gap_width then
                                                                                        txt nlText (
                                                                                        txt (NoAnnot (Str (copy shift '/')) shift) (
                                                                                        txt nlText
                                                                                        (lay1 (k - shift) s p)))
                                                                                    else if k < 0 then
                                                                                        txt nlText (
                                                                                        txt (NoAnnot (Str (copy shift '|')) shift) (
                                                                                        txt nlText
                                                                                        (lay1 (k + shift) s p)))
                                                                                    else lay1 k s p
                                                                      _ -> lay1 k s p
                                              (Above _ _ _) ->    error "display lay Above"
                                              (Beside _ _ _) ->   error "display lay Beside"
                                              NoDoc ->         error "display lay NoDoc"
                                              (Union _ _) ->    error "display lay Union"
            in
            lay 0 doc
        }}
    best w0 r = get r w0
      where
        get  r w Empty               = Empty
        get  r w NoDoc               = NoDoc
        get  r w (NilAbove p)        = NilAbove (get r w p)
        get  r w (TextBeside s p)    = TextBeside s (get1 r w (annotSize s) p)
        get  r w (Nest k p)          = Nest k (get r (w - k) p)
        get  r w (Union p q)         = nicest w r (get r w p) (get r w q)
        get  r w (Above _ _ _)       = error "best get Above"
        get  r w (Beside _ _ _)      = error "best get Beside"
        get1 r _ _  Empty               = Empty
        get1 r _ _  NoDoc               = NoDoc
        get1 r w sl (NilAbove p)        = NilAbove (get r (w - sl) p)
        get1 r w sl (TextBeside s p)    = TextBeside s (get1 r w (sl + annotSize s) p)
        get1 r w sl (Nest _ p)          = get1 r w sl p
        get1 r w sl (Union p q)         = nicest1 w r sl (get1 r w sl p) (get1 r w sl q)
        get1 r _ _  (Above _ _ _)       = error "best get1 Above"
        get1 r _ _  (Beside _ _ _)      = error "best get1 Beside"
    first p q = if nonEmptySet p then p else q
    nicest w r = nicest1 w r 0
    nicest1 w r sl p q = if fits ((myMin w r) - sl) p then p else q
    fits n param =
      if n < 0 then False
      else case param of
                NoDoc            -> False
                Empty            -> True
                (NilAbove _)     -> True
                (TextBeside s p) -> fits (n - annotSize s) p
                (Above _ _ _)       -> error "fits Above"
                (Beside _ _ _)      -> error "fits Beside"
                (Union _ _)       -> error "fits Union"
                (Nest _ _)        -> error "fits Nest"
    nonEmptySet NoDoc              = False
    nonEmptySet (Union _ _)        = True
    nonEmptySet Empty              = True
    nonEmptySet (NilAbove _)       = True
    nonEmptySet (TextBeside _ p)   = nonEmptySet p
    nonEmptySet (Nest _ p)         = nonEmptySet p
    nonEmptySet (Above _ _ _)      = error "nonEmptySet Above"
    nonEmptySet (Beside _ _ _)     = error "nonEmptySet Beside"
    spaceText = NoAnnot (Chr ' ') 1
    nlText = NoAnnot (Chr '|') 1
    annotSize (NoAnnot _ l) = l
    annotSize _             = 0
testLastPiece_nofib $ primId 0
