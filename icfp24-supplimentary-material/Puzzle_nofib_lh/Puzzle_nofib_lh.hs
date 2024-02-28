all f [] = True
all f (h:t) = if f h then all f t else False
data ItemType = Bono | Edge | Larry | Adam deriving Eq
succItem Bono = Edge
succItem Edge = Larry
succItem Larry = Adam
isEnd Bono = False
isEnd Edge = False
isEnd Larry = False
isEnd Adam = True
itemFromTo a b = if polyEq a b then [a] else (a:(itemFromTo (succItem a) b))
data BankType = LeftBank | RightBank deriving Eq
data StateType = State BankType BankType BankType BankType deriving Eq
type History = [(Int, StateType)]
type Solutions = [History]
bonoPos (State a b c d) = a
edgePos (State a b c d) = b
larryPos (State a b c d) = c
adamPos (State a b c d) = d
initialState, finalState :: StateType
initialState = State LeftBank LeftBank LeftBank LeftBank
finalState = State RightBank RightBank RightBank RightBank
position :: ItemType -> StateType ->  BankType
position Bono = bonoPos
position Edge = edgePos
position Larry = larryPos
position Adam = adamPos
updateState :: StateType -> ItemType -> BankType -> StateType
updateState (State a b c d) Bono pos = State pos b c d
updateState (State a b c d) Edge pos = State a pos c d
updateState (State a b c d) Larry pos = State a b pos d
updateState (State a b c d) Adam pos = State a b c pos
opposite :: BankType -> BankType
opposite LeftBank = RightBank
opposite RightBank = LeftBank
notSeen :: StateType -> History -> Bool
notSeen state = all (\_s -> case _s of (_, s) -> polyNeq state s)
writeItem :: ItemType -> BankType -> ShowS
writeItem Bono LeftBank rest
  = "    Bono |                    ||" ++ rest
writeItem Edge LeftBank rest
  = "The Edge |                    ||" ++ rest
writeItem Larry LeftBank rest
  = "   Larry |                    ||" ++ rest
writeItem Adam LeftBank rest
  = "    Adam |                    ||" ++ rest
writeItem Bono RightBank rest
  = "         |                    | Bono|" ++ rest
writeItem Edge RightBank rest
  = "         |                    | The Edge|" ++ rest
writeItem Larry RightBank rest
  = "         |                    | Larry|" ++ rest
writeItem Adam RightBank rest
  = "         |                    | Adam|" ++ rest
writeState :: StateType -> ShowS
writeState state = (\s -> "----------------------------------------|" ++ s) . (writeItem Bono (bonoPos state)) . (writeItem Edge (edgePos state)) . (writeItem Larry (larryPos state)) . (writeItem Adam (adamPos state)) . (\s -> "----------------------------------------|" ++ s)
writeHistory :: History -> ShowS
writeHistory [ ] = \x -> x
writeHistory history = foldr (\timestate acc -> case timestate of (time, state) -> ((\x -> "Time: " ++ x) . (\x -> (string_of_int ((totalTime history) - time)) ++ x) . (\x -> '|':x) . (writeState state) . acc)) (\x -> x) history
writeSolutions :: Solutions -> Int -> ShowS
writeSolutions [ ] _ = \x -> x
writeSolutions (item : next) count
  = (\x -> "Solution " ++ x) . (\x -> (string_of_int count) ++ x) . (\x -> '|':x) . (writeHistory item) . (writeSolutions next (count + 1))
totalTime :: History -> Int
totalTime ((time, _) : _) = time
minSolutions :: Solutions -> Solutions
minSolutions [ ] = [ ]
minSolutions (history : next) =
  let minAcc = \minSoFar -> \mins -> \ls -> case ls of {
    [] -> mins;
    (history : next) ->
      let total = totalTime history in
      if minSoFar < total then
        minAcc minSoFar mins next
      else if minSoFar == total then
        minAcc minSoFar (history : mins) next
      else
        minAcc total [history] next
  }
  in
  reverse (minAcc (totalTime history) [history] next)
u2times :: ItemType -> Int
u2times Bono = 10
u2times Edge = 5
u2times Larry = 2
u2times Adam = 1
transfer :: StateType -> StateType -> BankType -> Int -> History -> Solutions
-- We are trying to get from a legal state, source, to another legal
-- state and history tells us one way to do it in time countdown
-- starting from dest where the torch is at location.
-- If we find newDest from which we can get to dest in one step
-- we can find all the solutions recursively.
transfer source dest location countdown history =
  if polyEq source dest then
    [(countdown, dest) : history]
  else
    let newHistory = (countdown, dest) : history in
    let newLocation = opposite location in
    let moveOne = concat [transfer source newDest newLocation newTime newHistory
                            | item <- itemFromTo Bono Adam,
                              polyEq (position item dest) location,
                              let newDest = updateState dest item newLocation,
                              notSeen newDest history,
                              let newTime = countdown + (u2times item)] in
    let moveTwo = concat [transfer source newDest newLocation newTime newHistory
                            | i <- itemFromTo Bono Larry,
                              j <- itemFromTo (succItem i) Adam,
                              (polyEq (position i dest) location) && (polyEq (position j dest) location),
                              let newDest = updateState (updateState dest i newLocation) j newLocation,
                              notSeen newDest history,
                              let newTime = countdown + (u2times i)] in
    moveOne ++ moveTwo
    -- let moveOne = concat [transfer source (updateState dest item newLocation) newLocation (countdown + u2times item) newHistory
    --                         | item <- [Bono .. Adam],
    --                           position item dest == location,
    --                           notSeen (updateState dest item newLocation) history] in
    -- let moveTwo = concat [transfer source (updateState (updateState dest i newLocation) j newLocation) newLocation (countdown + u2times i) newHistory
    --                         | i <- [Bono .. Larry],
    --                           j <- [succ i .. Adam],
    --                           position i dest == location &&
    --                           position j dest == location,
    --                           notSeen (updateState (updateState dest i newLocation) j newLocation) history] in
testPuzzle_nofib x =
  let time = if ((length x) == 1) then 0 else error "puzzle expects exactly one argument" in
  let solutions = transfer initialState finalState RightBank time [ ] in
  let mins = minSolutions solutions in
  (writeSolutions mins 1 "")
testPuzzle_nofib $ primId [2]
