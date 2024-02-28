inList x (h:t) = if x == h then True else inList x t
inList x [] = False
snd (a,b) = b
type Edge  vertex = (vertex, vertex)
type Cycle vertex = [vertex]
stronglyConnComp :: Eq vertex => [Edge vertex] -> [vertex] -> [[vertex]]
stronglyConnComp es vs
  = snd (span_tree (new_range (map swap es)) ([],[]) (snd (dfs (new_range es) ([],[]) vs)))
  where
    swap (x,y) = (y,x)
    new_range [] w = []
    new_range ((x,y):xys) w
        = if x==w
          then (y : (new_range xys w))
          else (new_range xys w)
    span_tree r (vs,ns) [] = (vs,ns)
    span_tree r (vs,ns) (x:xs) =
      if inList x vs then
        span_tree r (vs,ns) xs
      else
        case (dfs r (x:vs,[]) (r x)) of { (vs',ns') -> span_tree r (vs',(x:ns'):ns) xs }
dfs r (vs,ns) [] = (vs,ns)
dfs r (vs,ns) (x:xs) =
  if inList x vs then
    dfs r (vs,ns) xs
  else
    case (dfs r (x:vs,[]) (r x)) of { (vs',ns') -> dfs r (vs',(x:ns')++ns) xs }
testScc_nofib dummy =
  let a = 1 in
  let b = 2 in
  let c = 3 in
  let d = 4 in
  let f = 5 in
  let g = 6 in
  let h = 7 in
  let vertices = [a,b,c,d,f,g,h] in
  let edges = [(b, a),(c, b),(c, d),(c, h),(d, c),(f, a),(f, g),(f, h),(g, f),(h, g)] in
  stronglyConnComp edges vertices
testScc_nofib $ primId 0
