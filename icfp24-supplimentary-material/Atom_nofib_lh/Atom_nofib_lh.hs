data AtomState = State Position Velocity
type Position   = [Float]
type Velocity   = [Float]
type Force  = [Float]
type StateStream = [AtomState]
type ForceLaw a = a -> StateStream -> [Force]
test :: StateStream
test = runExperiment testforce 0.02 [1.0] (State [1.0] [0.0])
testforce :: ForceLaw [Float]
testforce k ss = lazy (case (force ss) of ((State pos vel):atoms) -> (dotMult (scalarMut (0.0 -. 1.0) k) pos) : (testforce k atoms))
show (State pos vel) = concat [ (string_of_float component) ++ "t"  | component <- pos ]
runExperiment :: ForceLaw a -> Float -> a -> AtomState -> StateStream
runExperiment law dt param init = lazy (let stream = (runExperiment law dt param init) in init : (zipWith_lz_lz (propagate dt) (law param stream) stream))
propagate :: Float -> Force -> AtomState -> AtomState
propagate dt aforce (State pos vel) = State (dotPlus pos (scalarMut dt vel)) (dotPlus vel (scalarMut dt aforce))
dotPlus l [] = l
dotPlus [] l = l
dotPlus (f:fs) (g:gs) = (f +. g):(dotPlus fs gs)
dotMult _ [] = []
dotMult [] _ = []
dotMult (f:fs) (g:gs) = (f *. g) : (dotMult fs gs)
scalarMut:: Num a => a-> [a] -> [a]
scalarMut c []     = []
scalarMut c (f:fs) = (c *. f) : (scalarMut c fs)
testAtom_nofib n = concat [(show state) ++ "n" | state <- (take_lz n $ runExperiment testforce 0.02 [1.0] (State [1.0] [0.0]))]
testAtom_nofib $ primId 1000
