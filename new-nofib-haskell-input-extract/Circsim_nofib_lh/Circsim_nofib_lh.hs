append__lz xs ys = case xs of {
                      [] -> ys;
                      (h:t) -> lazy (h:(append__lz t ys))
                    }
import System.Environment
import Control.Monad (forM_)
import Data.List
import Prelude hiding (length, or, foldr, maximum, concat, foldl)
data BinTree a b = Cell a | Node b (BinTree a b) (BinTree a b) deriving Show
type Circuit a = (Int, [Label], [Label], [State a])
type Label = (String, Pid)
type Pid = Int
data Component = None | Inp | Outp | Dff | Inv | And2 | Or2 | Xor deriving (Eq, Show)
data Unit = Unit
--- data State a = PS
---   {pid        :: Int,    -- site identifier
---    compType   :: Component,  -- component represented in the site
---    pathDepth  :: Int,    -- path depth at which outputs become valid
---    inports    :: [InPort a],  -- tags and latches for the inputs
---    outports   :: [OutPort a]  -- tags and latches for the outputs
---   }
data State a = PS Int Component Int [InPort a] [OutPort a] deriving Show
pid (PS _pid _compType _pathDepth _inports _outports) = _pid
compType (PS _pid _compType _pathDepth _inports _outports) = _compType
pathDepth (PS _pid _compType _pathDepth _inports _outports) = _pathDepth
inports (PS _pid _compType _pathDepth _inports _outports) = _inports
outports (PS _pid _compType _pathDepth _inports _outports) = _outports
updateOutports ps new = PS (pid ps) (compType ps) (pathDepth ps) (inports ps) new
updateInports ps new = PS (pid ps) (compType ps) (pathDepth ps) new (outports ps)
type InPort a =
  (Pid,  -- identifies processor that will supply the input signal
   Int,  -- the output port number of the signal
   a)    -- latch to hold the input signal value
type OutPort a =
  (Int,  -- output port number for the signal value
  a,  -- latch to hold the signal value
  Bool,  -- need to send it to the left?
  Int,  -- distance to send to the left
  Bool,  -- need to send it to the right?
  Int)  -- distance to send to the right
data Boolean = F | T deriving (Eq, Show)
type Packet a =
  (Pid,  -- id of this packet
  Int,  -- output port number for the signal value
  a,  -- latch to hold the signal value
  Bool,  -- need to send it to the left?
  Int,  -- distance to send to the left
  Bool,  -- need to send it to the right?
  Int,  -- distance to send to the right
  Int)  -- extent
--- class (Eq a, Show a) => Signal a where
---   zeroS, one :: a
---   inv :: a -> a
---   and2, or2, xor :: a -> a -> a
---   inv x = if (x==one) then zeroS else one
---   and2 x y = if (x==one) && (y==one) then one else zeroS
---   or2 x y = if (x==one) || (y==one) then one else zeroS
---   xor x y = if (x==y) then one else zeroS
--- instance Signal Boolean where
---   zeroS = F
---   one   = T
unzip ls = foldr (\ab asbs -> case ab of {(a, b) -> (case asbs of {(as, bs) -> ((a:as), (b:bs))})}) ([],[]) ls
combine y h ys t = (y:h) : (transpose (ys:t))
transpose [] = []
transpose ([] : xss) = transpose xss
transpose ((x : xs) : xss) = case (unzip [(hd, tl) | hd : tl <- xss]) of {
  (hds, tls) -> combine x hds xs tls
}
snd (_, b) = b
or [] = False
or (h:t) = if h then True else (or t)
drop n []      = []
drop n (h:t)   = if n <= 0 then (h:t) else (drop (n - 1) t)
scanl f q ls   = q : (case ls of
                               []   -> [];
                               x:xs -> scanl f (f q x) xs)
quotRem a b = (div a b, mod a b)
power b n = if n == 0 then 1 else (b * (power b (n - 1)))
maximum (h:t) = go h t
  where go m [] = m
        go m (h:t) = if m > h then go m t else go h t
copy n x = if n > 0 then x:(copy (n - 1) x) else []
copy_lz n x = if n > 0 then lazy (x:(copy_lz (n - 1) x)) else lazy []
until p f i = if (p i) then i else until p f (f i)
splitAt n ls = (take n ls, drop n ls)
put :: [a] -> BinTree a Unit
put [x] = Cell x
put xs  = case (splitAt ((length xs) `div` 2) xs) of {
  (fstHalf, sndHalf) -> Node Unit (put fstHalf) (put sndHalf)
}
get :: BinTree a b -> [a]
get (Cell x) = [x]
get (Node x l r) = get l ++ get r
upsweep :: (a -> a -> a) -> BinTree a b -> (a, BinTree a (a,a))
upsweep f (Cell a)     = (a, Cell a)
upsweep f (Node x l r) = case (upsweep f l) of {
  (lv, l') -> case (upsweep f r) of {
    (rv, r') -> (f lv rv, Node (lv, rv) l' r')
  }
}
downsweep :: (a -> b -> c -> (c,c)) -> c -> BinTree d (a,b) -> BinTree c Unit
downsweep g d (Cell x)      = Cell d
downsweep g d (Node (lv,rv) l r) = case (g lv rv d) of {
  (dl, dr) -> case (downsweep g dl l, downsweep g dr r) of {
    (l', r') -> Node Unit l' r'
  }
}
sweep_ud :: (a -> a -> a) -> (a -> a -> b -> (b,b)) -> b -> BinTree a c -> (a, BinTree b Unit)
sweep_ud up down u t = case (upsweep up t) of {
  (ans, t') -> (ans, downsweep down u t')
}
scanL :: (a -> a -> a) -> a -> [a] -> (a,[a])
scanL f u xs =
  let down = \l r x -> (x, f x l) in
  case (sweep_ud f down u (put xs)) of {
    (up_ans, t') -> (up_ans, get t')
  }
scanR :: (a -> a -> a) -> a -> [a] -> (a,[a])
scanR f u xs =
  let down = \l r x -> (f r x, x) in
  case (sweep_ud f down u (put xs)) of {
    (up_ans, t') -> (up_ans, get t')
  }
scanlr :: (a -> a -> a) -> (a -> a -> a) -> a -> a -> [a] -> ((a,a), [(a,a)])
scanlr f g lu ru xs =
  let xs' = map (\x -> (x,x)) xs in
  case (sweep_ud (up f g) (down f g) (lu,ru) (put xs')) of {
    ((l_ans,r_ans), t) -> let ans = (g r_ans ru, f lu l_ans) in (ans, get t)
  }
  where
    up f g (lx,ly) (rx,ry) = (f lx rx, g ly ry)
    down f g (lx,ly) (rx,ry) (a,b) = ((a, g ry b), (f a lx, b))
nearest_power_of_two :: Int -> Int
nearest_power_of_two x = until (\a -> a >= x) (\a -> a * 2) 1
--- pad_circuit :: Signal a => Circuit a -> Circuit a
pad_circuit (size, ins, outs, states) =
  let p2 = nearest_power_of_two size in
  (p2, ins, outs, take_lz p2 (append__lz states (copy_lz p2 emptyState)))
--- emptyState :: Signal a => State a
emptyState = PS (0-1) None (0-1) [] []
inv x = if (polyEq x T) then F else T
and2 x y = if (polyEq x T) && (polyEq y T) then T else F
or2 x y = if (polyEq x T) || (polyEq y T) then T else F
xor x y = if (polyEq x y) then T else F
--- emptyPacket :: Signal a => Packet a
emptyPacket = (0-1, 0-1, F, False, 0, False, 0, 1)
send_right :: Packet a -> Packet a -> Packet a
send_right (ia,sa,ma,qla,dla,qra,dra,ea) (ib,sb,mb,qlb,dlb,qrb,drb,eb) =
  if qra && (dra>eb)
    then (ia,sa,ma,qla,dla,qra,dra-eb,ea+eb)
    else (ib,sb,mb,qlb,dlb,qrb,drb,ea+eb)
send_left :: Packet a -> Packet a -> Packet a
send_left (ia,sa,ma,qla,dla,qra,dra,ea) (ib,sb,mb,qlb,dlb,qrb,drb,eb) =
  if qlb && (dlb>ea)
    then (ib,sb,mb,qlb,dlb-ea,qrb,drb,ea+eb)
    else (ia,sa,ma,qla,dla,qra,dra,ea+eb)
--- send :: Signal a => [Packet a] -> ((Packet a, Packet a), [(Packet a, Packet a)])
send xs = scanlr send_right send_left emptyPacket emptyPacket xs
--- circuit_simulate :: Signal a => [[a]] -> Circuit a -> [[a]]
circuit_simulate inputs_list circuit = map collect_outputs (simulate inputs_list circuit)
collect_outputs :: Circuit a -> [a]
collect_outputs (size, ins, outs, states) = map (get_output states) outs
   where
    get_output states (label, p) = third (head [ head (inports s) | s<-states, (p == (pid s))])
    third (_,_,v) = v
--- simulate :: Signal a => [[a]] -> Circuit a -> [Circuit a]
simulate inputs_list (size, ins, outs, states) =
  tail (scanl (do_cycle (critical_path_depth (size, ins, outs, states))) (size, ins, outs, map init_dffs states) inputs_list)
--- do_cycle :: Signal a => Int -> Circuit a -> [a] -> Circuit a
do_cycle cpd (size, ins, outs, states) inputs =
  let states1 = map (store_inputs (zip ins inputs)) states in
  let states2 = do_sends 0 states1 in
  let states3 = foldl sim_then_send states2 [1..cpd] in
  let states4 = restore_requests states states3 in
  (size, ins, outs, states4)
    where
    sim_then_send state d = do_sends d (simulate_components d state)
--- restore_requests :: Signal a => [State a] -> [State a] -> [State a]
restore_requests old_states new_states = zipWith restore old_states new_states
     where
      restore os ns = updateOutports ns (zipWith restore_outport (outports os) (outports ns))
      restore_outport (p,_,ql,dl,qr,dq) (_,m,_,_,_,_) = (p,m,ql,dl,qr,dq)
--- do_sends :: Signal a => Int -> [State a] -> [State a]
do_sends d states = until (acknowledge d) (do_send d) states
--- acknowledge :: Signal a => Int -> [State a] -> Bool
acknowledge d states =
  let states1 = map (check_depth d) states in 
  not (or (map (check_requests . outports) states1))
    where
    check_requests xs = or (map check_lr_requests xs)
    check_lr_requests (p,m,ql,dl,qr,dr) = ql || qr
--- do_send :: Signal a => Int -> [State a] -> [State a]
do_send d states =
  let states1 = map (check_depth d) states in
  let send_results = map (snd . send) ((transpose . pad_packets) (map make_packet states1)) in
  let pss' = transpose send_results in
  zipWith (update_io d) pss' states
--- update_io :: Signal a => Int -> [(Packet a,Packet a)] -> State a -> State a
update_io d lrps state =
  let update_is = \state -> updateInports state (foldr update_i (inports state) lrps) in
  let update_os = \state -> if (pathDepth state) == d then updateOutports state (zipWith update_o lrps (outports state)) else state in
  update_os (update_is state)
--- update_o :: Signal a => (Packet a, Packet a) -> OutPort a -> OutPort a
update_o (lp, rp) out = check_left lp (check_right rp out)
check_left (pid, port, pm, pql, pdl, pqr, pdr, e) (p, m, ql, dl, qr, dr)
  = if pqr && (pdr>0)
    then (p, m, ql, dl, qr, dr)
    else (p, m, ql, dl, False, dr)
check_right (pid, port, pm, pql, pdl, pqr, pdr, e) (p, m, ql, dl, qr, dr)
  = if pql && (pdl>0)
    then (p, m, ql, dl, qr, dr)
    else (p, m, False, dl, qr, dr)
--- update_i :: Signal a => (Packet a, Packet a) -> [InPort a] -> [InPort a]
update_i (l,r) ins = up_i l (up_i r ins)
--- up_i :: Signal a => Packet a -> [InPort a] -> [InPort a]
up_i (i, p, m', _, _, _, _, _) ins = map (compare_and_update (i,p,m')) ins
--- compare_and_update :: Signal a => InPort a -> InPort a -> InPort a
compare_and_update (i, p, m') (pid, port, m)
  = if polyEq (i, p) (pid, port)
    then (pid, port, m')
    else (pid, port, m)
--- make_packet :: Signal a => State a -> [Packet a]
make_packet state = [ (pid state, p, m, ql, dl, qr, dr, 1) | (p, m, ql, dl, qr, dr) <- outports state ]
--- pad_packets :: Signal a => [[Packet a]] -> [[Packet a]]
pad_packets pss =
  let pad = \xs -> let max_ps = maximum (map length pss) in take_lz max_ps (append__lz xs (copy_lz max_ps emptyPacket)) in
  map pad pss
--- check_depth :: Signal a => Int -> State a -> State a
check_depth d state
  = if (pathDepth state) == d
    then state
    else update_requests False state
--- update_requests :: Signal a => Bool -> State a -> State a
update_requests b state
  = updateOutports state [ (p, m, b, dl, b, dr) | (p, m, ql, dl, qr, dr) <- outports state ]
--- simulate_components :: Signal a => Int -> [State a] -> [State a]
simulate_components depth states = map (simulate_component depth) states
--- simulate_component :: Signal a => Int -> State a -> State a
simulate_component d state =
  let out_signals = [ sig | (_,_,sig) <- inports state] in
  let new_value = apply_component (compType state) out_signals in
    if (d == (pathDepth state)) && not (polyEq new_value Nothing)
    then case new_value of {Just v -> update_outports state v}
    else state
--- apply_component :: Signal a => Component -> [a] -> Maybe a
apply_component Inp _      = Nothing
apply_component Outp [x]   = Just x
apply_component Dff [x]    = Just x
apply_component Inv [x]    = Just (inv x)
apply_component And2 [x,y] = Just (and2 x y)
apply_component Or2 [x,y]  = Just (or2 x y)
apply_component Xor [x,y]  = Just (xor x y)
apply_component None s     = Nothing
--- store_inputs :: Signal a => [(Label,a)] -> State a -> State a
store_inputs label_inputs (PS pid Inp _b _c _d)
  = head [ update_outports (PS pid Inp _b _c _d) value | ((label, input_pid), value) <- label_inputs, pid == input_pid ]
store_inputs label_inputs state = state
--- init_dffs :: Signal a => State a -> State a
init_dffs state =
  if polyEq (compType state) Dff
  then update_outports state F
  else state
--- critical_path_depth :: Signal a => Circuit a -> Int
critical_path_depth (size, ins, outs, states) = maximum (map pathDepth states)
--- update_outports :: Signal a => State a -> a -> State a
update_outports state value
  = updateOutports state [ (p, value, ql, dl, qr, dr) | (p, m, ql, dl, qr, dr) <- (outports state) ]
--- regs :: Signal a => Int -> Circuit a
regs bits =
  let is = ("sto",0):(zipWith_lz_nl ilabel [0..] [ (7*x)+1 | x <- [0..bits-1]]) in
  let os = zipWith_lz_nl olabel [0..] [ (7*x)+7 | x <- [0..bits-1]] in
  let sto = PS 0 Inp 0 [] [(0, F, False, 0, True, (8*(bits-1))+5)] in
  let states = sto:(concat (map (reg 0) [ (7*x)+1 | x <- [0..bits-1]])) in
  (1+(7*bits), is, os, states)
    where
    ilabel n pid = ("x" ++ (string_of_int n), pid)
    olabel n pid = ("y" ++ (string_of_int n), pid)
--- reg :: Signal a => Pid -> Pid -> [State a]
reg sto n
  = [ PS n Inp 0 [] [(0, F, False, 0, True, 4)],
      PS (n+1) Dff 1 [(n+5, 0, F)] [(0, F, False, 0, True, 5)],
      PS (n+2) Inv 1 [(sto, 0, F)] [(0, F, False, 0, True, 1)],
      PS (n+3) And2 2 [(n+1, 0, F), (n+2, 0, F)] [(0, F, False, 0, True, 2)],
      PS (n+4) And2 1 [(sto, 0, F), (n, 0, F)] [(0, F, False, 0, True, 1)],
      PS (n+5) Or2 3 [(n+3, 0, F), (n+4, 0, F)] [(0, F, True, 4, False, 0)],
      PS (n+6) Outp 4 [(n+1, 0, F)] []
    ]
testCircsim_nofib n = run 8 n
run :: Int -> Int -> [[Boolean]]
run num_bits num_cycles =
  let example = pad_circuit (regs num_bits) in
  let inputs = copy (num_bits + 1) (T) in
  let cycles = copy num_cycles (inputs) in
  circuit_simulate cycles example
testCircsim_nofib $ primId 40
