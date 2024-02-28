lz_map f ls = case ls of {
                [] -> lazy [];
                (h:t) -> lazy ((f h):(lz_map f t))
              }
append_lz xs ys = case xs of {
                    [] -> force ys;
                    (h:t) -> lazy (h: (append_lz t ys))
                  }
cycle xs = append_lz xs (lazy (cycle xs))
toUpper c = case c of {
  'a' -> 'A';
  'b' -> 'B';
  'c' -> 'C';
  'd' -> 'D';
  'e' -> 'E';
  'f' -> 'F';
  'g' -> 'G';
  'h' -> 'H';
  'i' -> 'I';
  'j' -> 'J';
  'k' -> 'K';
  'l' -> 'L';
  'm' -> 'M';
  'n' -> 'N';
  'o' -> 'O';
  'p' -> 'P';
  'q' -> 'Q';
  'r' -> 'R';
  's' -> 'S';
  't' -> 'T';
  'u' -> 'U';
  'v' -> 'V';
  'w' -> 'W';
  'x' -> 'X';
  'y' -> 'Y';
  'z' -> 'Z';
  c -> c
}
drop n []      = []
drop n (h:t)   = if n > 0 then (drop (n - 1) t) else t
break p [] = ([], [])
break p (x:xs) = if p x then ([], (x:xs)) else case (break p xs) of { (ys, zs) -> ((x:ys), zs) }
isSpace c = polyEq c ' '
words s =  case (dropWhile isSpace s) of
          [] -> []
          (h:t) -> case (break isSpace (h:t)) of (w, s'') -> (w : (words s''))
unwords []              =  ""
unwords (w:ws)          = w ++ go ws
  where
    go []     = ""
    go (v:vs) = ' ' : (v ++ (go vs))
null [] = True
null (h:t) = False
null_lz ls = case (force ls) of { [] -> True; (h:t) -> False }
dropWhile f [] = []
dropWhile f (h:t) = if (f h) then dropWhile f t else (h:t)
inList x (h:t) = if polyEq x h then True else inList x t
inList x [] = False
testEliza_nofib n = let input = [
                                  "Are we alone?",
                                  "That the Roswell event was actually an alien encounter. Do you agreed?",
                                  "But why not talk about you, its more fun.",
                                  "I dont ask, you do",
                                  "do ray me",
                                  "Nop, thats because your a computer",
                                  "you dont",
                                  "Oh, a paranoid computer, ehh?",
                                  "Tell me about *your* mother",
                                  "No, what what was she like?",
                                  "I_m asking questions, not you",
                                  "no",
                                  "yes",
                                  "but I_m not"
                                ] in (map (\i -> (length . (session (initial) []) . (filter (not . null)) . (map (words . trim)) . take (i `mod` 20)) input) (primId [1..n]))
trim  :: String -> String                     -- strip punctuation characters
trim ls = ((foldr cons "") . (dropWhile (\x -> inList x [' ', '.', '!', '?', ',']))) ls
          where cons x xs = if (inList x [' ', '.', '!', '?', ',']) && (null xs) then [] else (x:xs)
-- Read a line at a time, and produce some kind of response -------------------
session               :: State -> Words -> [Words] -> String
session rs prev []     = []
session rs prev (l:ls) = 
  case (if polyEq prev l then repeated rs else answer rs l) of {
    (response, rs') -> response ++ "nn" ++ (session rs' l ls)
  }
answer                :: State -> Words -> (String, State)
answer st l            =
  case (ans (keyTabOf st) l) of {
    (response, kt) -> (response, newKeyTab kt st)
  }
    where
       cons e (r, es)       = (r, e:es)
       ans (e:es) l =
          case e of {
            (key,a_as) ->
              case (force a_as) of {
                (a:as) ->
                      let rs = replies key l in
                      if null_lz rs then
                        cons e (ans es l)
                      else
                        (makeResponse a (head_lz rs), (key,as):es)
              }
          }
-- Find all possible replies without leading string for given key ------------
replies                 :: Words -> Words -> [String]
replies key l            = (map_lz ((conjug l) . drop (length key)) . (filter_lz (\ls -> prefix key ((lz_map ucase ls)))) . tails) l
prefix                  :: Eq a => [a] -> [a] -> Bool
--- prefix []     xs       = True
--- prefix (x:xs) []       = False
--- prefix (x:xs) (y:ys)   = polyEq x y && (prefix xs ys)
prefix xxs yys = case xxs of {
                    [] -> True;
                    (x:xs) -> case (force yys) of {
                      [] -> False;
                      (y:ys) -> polyEq x y && (prefix xs ys)
                    }
                  }
tails                   :: [a] -> [[a]]          -- non-empty tails of list
tails []                 = lazy []
tails xs                 = lazy (xs : (tails (tail xs)))
ucase                   :: String -> String      -- map string to upper case
ucase ls                 = map toUpper ls
-- Replace keywords in a list of words with appropriate conjugations ---------
conjug     :: Words -> Words -> String
conjug d _w =
  (unwords . trailingI . (map conj) . maybe d) _w  -- d is default input
              where maybe d xs = if null xs then d else xs
                    conj  w    = head ([m | (w',m) <- conjugates, polyEq (ucase w) w'] ++ [w])
                    trailingI _ls =
                      let cons = \x xs -> if (polyEq x "I") && (null xs) then ["me"] else x:xs in
                      foldr cons [] _ls
conjugates :: [(Word, Word)]
conjugates =
  let oneways  = [ ("me",   "you") ] in
  let bothways = [ ("are",  "am"), ("we_re", "was"), ("you",  "I"), ("your",  "my"), ("I_ve", "you_ve"), ("I_m", "you_re") ] in
  prepare (oneways ++ concat [[(x,y), (y,x)] | (x,y) <- bothways])
    where
      prepare _ls = map (\wr -> case wr of (w,r) -> (ucase w, r)) _ls
-- Response data --------------------------------------------------------------
type Word     = String
type Words    = [Word]
type KeyTable = [(Key, Replies)]
type Replies  = [String]
type State    = (KeyTable, Replies)
type Key      = Words
repeated  :: State -> (String, State)
repeated (kt, r_rp) = case (force r_rp) of {
                        (r:rp) -> (r, (kt, rp))
                      }
---- repeated (kt, (r:rp))      = (r, (kt, rp))
newKeyTab                 :: KeyTable -> State -> State
newKeyTab kt' (kt, rp)     = (kt', rp)
keyTabOf                  :: State -> KeyTable
keyTabOf (kt, rp)          = kt
makeResponse             :: String -> String -> String
makeResponse ('?':cs) us  = cs ++ " " ++ us ++ "?"
makeResponse ('.':cs) us  = cs ++ " " ++ us ++ "."
makeResponse cs       us  = cs
repeatMsgs = [ "Why did you repeat yourself?", "Do you expect a different answer by repeating yourself?", "Come, come, elucidate your thoughts.", "Please don_t repeat yourself!" ]
respMsgs =
          let canYou = [ "?Don_t you believe that I can", "?Perhaps you would like to be able to", "?You want me to be able to" ] in
          let canI = [ "?Perhaps you don_t want to", "?Do you want to be able to" ] in
          let youAre = [ "?What makes you think I am", "?Does it please you to believe I am", "?Perhaps you would like to be", "?Do you sometimes wish you were" ] in
          let iDont = [ "?Don_t you really", "?Why don_t you", "?Do you wish to be able to", "Does that trouble you?" ] in
          let iFeel = [ "Tell me more about such feelings.", "?Do you often feel", "?Do you enjoy feeling" ] in
          let whyDont = [ "?Do you really believe I don_t", ".Perhaps in good time I will", "?Do you want me to" ] in
          let whyCant = [ "?Do you think you should be able to", "?Why can_t you" ] in
          let areYou = [ "?Why are you interested in whether or not I am", "?Would you prefer if I were not", "?Perhaps in your fantasies I am" ] in
          let iCant = [ "?How do you know you can_t", "Have you tried?", "?Perhaps you can now" ] in
          let iAm = [ "?Did you come to me because you are", "?How long have you been", "?Do you believe it is normal to be", "?Do you enjoy being" ] in
          let you = [ "We were discussing you --not me.", "?Oh,", "You_re not really talking about me, are you?" ] in
          let yes = [ "You seem quite positive.", "Are you Sure?", "I see.", "I understand." ] in
          let no = [ "Are you saying no just to be negative?", "You are being a bit negative.", "Why not?", "Are you sure?", "Why no?" ] in
          let computer = [ "Do computers worry you?", "Are you talking about me in particular?", "Are you frightened by machines?", "Why do you mention computers?", "What do you think machines have to do with your problems?", "Don_t you think computers can help people?", "What is it about machines that worries you?" ] in
          let iWant = [ "?Why do you want", "?What would it mean to you if you got", "?Suppose you got", "?What if you never got", ".I sometimes also want" ] in
          let question = [ "Why do you ask?", "Does that question interest you?", "What answer would please you the most?", "What do you think?", "Are such questions on your mind often?", "What is it that you really want to know?", "Have you asked anyone else?", "Have you asked such questions before?", "What else comes to mind when you ask that?" ] in
          let name = [ "Names don_t interest me.", "I don_t care about names --please go on." ] in
          let because = [ "Is that the real reason?", "Don_t any other reasons come to mind?", "Does that reason explain anything else?", "What other reasons might there be?" ] in
          let sorry = [ "Please don_t apologise!", "Apologies are not necessary.", "What feelings do you have when you apologise?", "Don_t be so defensive!" ] in
          let dream = [ "What does that dream suggest to you?", "Do you dream often?", "What persons appear in your dreams?", "Are you disturbed by your dreams?" ] in
          let hello = [ "How do you...please state your problem." ] in
          let maybe = [ "You don_t seem quite certain.", "Why the uncertain tone?", "Can_t you be more positive?", "You aren_t sure?", "Don_t you know?" ] in
          let your = [ "?Why are you concerned about my", "?What about your own" ] in
          let always = [ "Can you think of a specific example?", "When?", "What are you thinking of?", "Really, always?" ] in
          let think = [ "Do you really think so?", "?But you are not sure you", "?Do you doubt you" ] in
          let alike = [ "In what way?", "What resemblence do you see?", "What does the similarity suggest to you?", "What other connections do you see?", "Cound there really be some connection?", "How?" ] in
          let friend = [ "Why do you bring up the topic of friends?", "Do your friends worry you?", "Do your friends pick on you?", "Are you sure you have any friends?", "Do you impose on your friends?", "Perhaps your love for friends worries you." ] in
          let nokeyMsgs = [ "I_m not sure I understand you fully.", "What does that suggest to you?", "I see.", "Can you elaborate on that?", "Say, do you have any psychological problems?" ] in
          [ ("CAN YOU", canYou), ("CAN I", canI), ("YOU ARE", youAre), ("YOU_RE", youAre), ("I DON_T", iDont), ("I FEEL", iFeel), ("WHY DON_T YOU", whyDont), ("WHY CAN_T I", whyCant), ("ARE YOU", areYou), ("I CAN_T", iCant), ("I AM", iAm), ("I_M", iAm), ("YOU", you), ("YES", yes), ("NO", no), ("COMPUTER", computer), ("COMPUTERS", computer), ("I WANT", iWant), ("WHAT", question), ("HOW", question), ("WHO", question), ("WHERE", question), ("WHEN", question), ("WHY", question), ("NAME", name), ("BECAUSE", because), ("CAUSE", because), ("SORRY", sorry), ("DREAM", dream), ("DREAMS", dream), ("HI", hello), ("HELLO", hello), ("MAYBE", maybe), ("YOUR", your), ("ALWAYS", always), ("THINK", think), ("ALIKE", alike), ("FRIEND", friend), ("FRIENDS", friend), ("", nokeyMsgs) ]
initial     :: State
initial = ([(words k, cycle rs) | (k,rs) <-respMsgs], cycle repeatMsgs)
testEliza_nofib $ primId 20
