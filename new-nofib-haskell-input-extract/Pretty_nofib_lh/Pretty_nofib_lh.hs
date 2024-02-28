foldr1 f (h:[]) = h
foldr1 f (h:t) = f h (foldr1 f t)
copy n x = if n <= 0 then [] else x:(copy (n - 1) x)
data CSeq = CNil | CAppend CSeq CSeq | CIndent Int CSeq | CNewline | CStr [Char] | CCh Char
data PprStyle = PprForUser | PprDebug | PprShowAll | PprInterface
type Pretty = Int -> Bool -> PrettyRep
cShow   :: CSeq -> [Char]
cNil    :: CSeq
cAppend :: CSeq -> CSeq -> CSeq
cIndent :: Int -> CSeq -> CSeq
cNL     :: CSeq
cStr    :: [Char] -> CSeq
cCh     :: Char -> CSeq
cNil     = CNil
cAppend cs1 cs2  = CAppend cs1 cs2
cIndent n cs   = CIndent n cs
cNL       = CNewline
cStr s    = CStr s
cCh c     = CCh c
cShow seq = flatten 0 True seq []
flatten :: Int -> Bool -> CSeq -> [(Int,CSeq)] -> String
flatten n nlp CNil seqs = flattenS nlp seqs
flatten n nlp (CAppend seq1 seq2) seqs = flatten n nlp seq1 ((n,seq2) : seqs)
flatten n nlp (CIndent n' seq) seqs = flatten (n' + n) nlp seq seqs
flatten n nlp CNewline seqs = '|' : (flattenS True seqs)
flatten n False (CStr s) seqs = s ++ (flattenS False seqs)
flatten n False (CCh c)  seqs = c :  (flattenS False seqs)
flatten n True  (CStr s) seqs = mkIndent n (s ++ (flattenS False seqs))
flatten n True  (CCh c)  seqs = mkIndent n (c :  (flattenS False seqs))
flattenS :: Bool -> [(Int, CSeq)] -> String
flattenS nlp [] = ""
flattenS nlp ((col,seq):seqs) = flatten col nlp seq seqs
mkIndent :: Int -> String -> String
mkIndent 0 s = s
mkIndent n s = if (n >= 8) then ('|' : (mkIndent (n-8) s)) else (' ' : (mkIndent (n-1) s))
------------------------------
ppNil         :: Pretty
ppSP, pp'SP, ppLbrack, ppRbrack, ppLparen, ppRparen, ppSemi, ppComma :: Pretty
ppStr         :: [Char] -> Pretty
ppChar        :: Char -> Pretty
ppInt         :: Int -> Pretty
-- ppInteger     :: Integer -> Pretty
-- ppDouble      :: Double -> Pretty
ppBeside      :: Pretty -> Pretty -> Pretty
ppBesides     :: [Pretty] -> Pretty
ppBesideSP    :: Pretty -> Pretty -> Pretty
ppCat         :: [Pretty] -> Pretty
ppAbove       :: Pretty -> Pretty -> Pretty
ppAboves      :: [Pretty] -> Pretty
ppInterleave  :: Pretty -> [Pretty] -> Pretty
ppSep         :: [Pretty] -> Pretty
ppHang        :: Pretty -> Int -> Pretty -> Pretty
ppNest        :: Int -> Pretty -> Pretty
ppShow        :: Int -> Pretty -> [Char]
ppUnformatted :: Pretty -> [Char]
data PrettyRep = MkPrettyRep CSeq Int Bool Bool
ppShow width p = case (p width False) of
    MkPrettyRep seq ll emp sl -> cShow seq
ppUnformatted p = case (p 80 False) of
    MkPrettyRep seq ll emp sl -> cShow seq
ppNil width is_vert = MkPrettyRep cNil 0 True (width >= 0)
ppStr  s width is_vert =
  let ls = length s in
  MkPrettyRep (cStr s) ls False (width >= ls)
ppChar c width is_vert = MkPrettyRep (cCh c) 1 False (width >= 1)
ppInt  n               = ppStr (string_of_int n)
pp'SP x     = ppStr ", " x
ppSP     x  = ppChar ' ' x
ppLbrack x  = ppChar '[' x
ppRbrack x  = ppChar ']' x
ppLparen x  = ppChar '(' x
ppRparen x  = ppChar ')' x
ppSemi   x  = ppChar ';' x
ppComma  x  = ppChar ',' x
ppInterleave sep ps =
  let pi = \ls -> case ls of {
    [] -> [];
    [x] -> [x];
    (x:xs) -> (ppBeside x sep) : (pi xs)
  } in
  ppSep (pi ps)
ppBeside p1 p2 width is_vert =
  case (p1 width False) of {
  (MkPrettyRep seq1 ll1 emp1 sl1) -> case (p2 (width-ll1) False) of {
  (MkPrettyRep seq2 ll2 emp2 sl2) ->
    MkPrettyRep (cAppend seq1 (cIndent ll1 seq2)) (ll1 + ll2) (andL emp1 emp2) (andL (width >= 0) (andL sl1 sl2))
  }}
ppBesides [] = ppNil
ppBesides ps = foldr1 ppBeside ps
ppBesideSP p1 p2 width is_vert =
  case (p1 width False) of {
  (MkPrettyRep seq1 ll1 emp1 sl1) ->
  let li = if emp1 then 0 else ll1+1 in
  case (p2 (width-li) False) of {
  (MkPrettyRep seq2 ll2 emp2 sl2) ->
    let wi = if emp1 then 0 else 1 in
    let sp = if emp1 `orL` emp2 then cNil else (cCh ' ') in
    MkPrettyRep (seq1 `cAppend` (sp `cAppend` (cIndent li seq2))) (li + ll2) (emp1 `andL` emp2) ((width >= wi) `andL` (sl1 `andL` sl2))
  }}
ppCat []  = ppNil
ppCat ps  = foldr1 ppBesideSP ps
ppAbove p1 p2 width is_vert =
  case (p1 width True) of {
  (MkPrettyRep seq1 ll1 emp1 sl1) -> case (p2 width True) of {
  (MkPrettyRep seq2 ll2 emp2 sl2) ->
    let nl = if orL emp1 emp2 then cNil else cNL in
    MkPrettyRep (cAppend seq1 (cAppend nl seq2)) ll2 (andL emp1 emp2) False
  }}
ppAboves [] = ppNil
ppAboves ps = foldr1 ppAbove ps
ppNest n p width False = p width False
ppNest n p width True =
  case (p (width-n) True) of {
  (MkPrettyRep seq ll emp sl) -> MkPrettyRep (cIndent n seq) (ll+n) emp sl
  }
ppHang p1 n p2 width is_vert =
  case (p1 width False) of {
  (MkPrettyRep seq1 ll1 emp1 sl1) -> case (p2 (width-(ll1+1)) False) of {
  (MkPrettyRep seq2 ll2 emp2 sl2) -> case (p2 (width-n) False) of {
  (MkPrettyRep seq2' ll2' emp2' sl2') ->
    if emp1 then
      p2 width is_vert
    else
      if (ll1 <= n) `orL` sl2 then
        MkPrettyRep (seq1 `cAppend` (cCh ' ') `cAppend` (cIndent (ll1+1) seq2)) (ll1 + 1 + ll2) False (sl1 `andL` sl2)
      else
        MkPrettyRep (seq1 `cAppend` (cNL `cAppend` (cIndent n seq2'))) ll2' False False
  }}}
ppSep []  width is_vert = ppNil width is_vert
ppSep [p] width is_vert = p     width is_vert
ppSep ps  width is_vert =
  case (ppCat ps width is_vert) of {
  (MkPrettyRep seq ll emp sl) ->
    if sl then
      (MkPrettyRep seq ll emp sl)
    else
      ppAboves ps width is_vert
  }
andL :: Bool -> Bool -> Bool
andL False x = False
andL True  x = x
orL :: Bool -> Bool -> Bool
orL True  x = True
orL False x = x
--------------------------------------
testPretty_nofib dummy =
  let pretty_stuff = ppAboves [ ppBesides [ppInt (0-42), ppChar '@', ppStr "This is a string"], pp'SP, ppHang (ppStr "This is the label") (8) (ppCat (copy 50 (ppStr "xxxxx"))) ] in
  ((ppShow (80) pretty_stuff) ++ "|")
testPretty_nofib $ primId 0
