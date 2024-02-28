max a b = if a > b then a else b
data MandTree = NS MandTree MandTree | EW MandTree MandTree | Leaf Colour deriving (Show)
-- Colour - colour of a point or rectangle
type Colour = Int
-- Point - 2-Tuple of integers, (Int1,Int2),
--         where Int1 - x-coord of point,
--               Int2 - y-coord of point.
type Point = (Int,Int)
-- MandTuple
type MandTuple = (Int,Int,Int,Int,Colour)
-- size: Size of window - Square 400x400
size :: Int
size = 200
-- build_tree - Constructs mandtree
build_tree :: Point -> Point -> MandTree
build_tree x1y1 x2y2 =
  case x1y1 of {
    (x1,y1) -> case x2y2 of {
      (x2,y2) ->
            let rec_col = check_perim x1y1 x2y2 in
            let split   = if (x2-x1) >= (y2-y1) then "NS" else "EW" in
            let split_x = (x2+x1) `div` 2 in
            let split_y = (y2+y1) `div` 2 in
            let nsp1    = x1y1 in
            let nsp2    = (split_x, y2) in
            let nsp3    = (split_x+1, y1) in
            let nsp4    = x2y2 in
            let ewp1    = x1y1 in
            let ewp2    = (x2, split_y) in
            let ewp3    = (x1, split_y+1) in
            let ewp4    = x2y2 in
            if rec_col /= (0-1) then
              Leaf rec_col
            else
              if polyEq split "NS" then (NS (build_tree nsp1 nsp2) (build_tree nsp3 nsp4)) else (EW (build_tree ewp1 ewp2) (build_tree ewp3 ewp4))
    }
  }
check_perim :: Point -> Point -> Colour
check_perim x1y1 x2y2 =
  case x1y1 of {
    (x1,y1) -> case x2y2 of {
      (x2,y2) ->
              let col1         = point_colour x1y1 in
              let col2         = point_colour (x2,y1) in
              let col3         = point_colour x2y2 in
              let col4         = point_colour (x1,y2) in
              let corners_diff = if col1 == col2 then (if col1 == col3 then (if col1 == col4 then False else True) else True) else True in
              let check_line = \xcyc xdyd -> 
                                  case xcyc of {
                                    (xc,yc) -> case xdyd of {
                                      (xd,yd) ->
                                        let finished = if (equalp xdyd right) then (xc >= x2)
                                                       else if (equalp xdyd down) then (yc <= y2)
                                                       else if (equalp xdyd left) then (xc <= x1)
                                                       else (yc >= y1)
                                        in
                                        if finished then True
                                        else if ((point_colour xcyc) /= col1) then False
                                        else check_line (xc+xd, yc+yd) (xd,yd)
                                    }
                                  }
              in
              let check_sides =
                            if (check_line (x1+1,y1) right) then
                              if (check_line (x2,y1+1) down) then
                                if (check_line (x2-1,y2) left) then
                                  if (check_line (x1,y2-1) up) then
                                    col1
                                  else
                                    (0-1)
                                else
                                  (0-1)
                              else
                                (0-1)
                            else
                              (0-1)
              in
              if (equalp x1y1 x2y2) then
                 point_colour x1y1
              else if corners_diff then
                 0-1
              else
                check_sides
    }
  }
-- Evaluate the color index of a point
-- This is the algoritm described on page 121 of "The Beauty of Fractals"
-- The code is commented with the step numbers from the algorithm.
-- point_colour - Calculates the dwell value of a point.
point_colour :: Point -> Colour
point_colour (x, y) = check_radius (np x) (nq y) 0 0.0 0.0 -- step1
-- check_radius - Calculates the escape radius of a point
check_radius :: Float -> Float -> Int -> Float -> Float -> Colour
check_radius p q k x y =
  let xn = new_x x y p in
  let yn = new_y x y q in
  let r = radius xn yn in
  let kp = k + 1       in
  if kp == num_cols then 0
  else
    if polyGt r (float_of_int m) then
      kp
    else
      check_radius p q (kp) xn yn
-- M Set Properties.
pmn :: Float -- Min p value.
pmn =  0.0 -. 2.25
pmx :: Float -- Max p value.
pmx =   0.75
qmn :: Float -- Min q value.
qmn = 0.0 -. 1.5
qmx :: Float -- Max q value
qmx = 1.5
m :: Int      -- The escape radius, M.
m =  20
--- Misc functions.
equalp :: Point -> Point -> Bool
equalp (x1, y1) (x2, y2) = ((x1 == x2) && (y1 == y2))
-- Set calculation functions.
num_cols :: Int -- The number of colors; num_cols+1 = length (the_colors).
num_cols = 26
delta_p :: Float      -- The change in p per pixel.
delta_p =  (pmx -. pmn) /. (float_of_int (size - 1))
delta_q :: Float      -- The change in q per pixel.
delta_q =  (qmx -. qmn) /. (float_of_int (size - 1))
np :: Int -> Float     -- Calculate a new value of p.
np x = pmn +. ((float_of_int x) *. delta_p)
nq :: Int -> Float     -- Calculate a new value of q.
nq y = qmn +. ((float_of_int y) *. delta_q)
radius :: Float -> Float -> Float       -- Current radius of apoint (x,y).
radius x y = (x *. x) +. (y *. y)
new_x :: Float -> Float -> Float -> Float       -- iterate new x value.
new_x x y p = (x *. x) -. (y *. y) +. p
new_y :: Float -> Float -> Float -> Float       -- iterate new y value.
new_y x y q = (2.0 *. x *. y) +. q
-- Misc. functions for traversing perimeter of rectangle.
up,down,left,right :: Point
up    = ( 0,0-1)
down  = ( 0, 1)
left  = (0-1, 0)
right = ( 1, 0)
-- finite: forces evaluation of a tree
finite            :: MandTree -> Bool
finite (Leaf c)   =  (c == c)
finite (NS t1 t2) =  ((finite t1) && (finite t2))
finite (EW t1 t2) =  ((finite t1) && (finite t2))
testMandel2_nofib n =
  let size' = max (length n) size in
  let tree = (build_tree (0,0) (size', size' `div` 2)) in
  finite tree
testMandel2_nofib $ primId [60]
