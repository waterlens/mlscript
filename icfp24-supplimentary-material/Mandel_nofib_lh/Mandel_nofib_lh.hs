take_lz_lz n ls =
  if n > 0 then
    case (force ls) of {
      [] -> lazy [];
      (h:t) -> lazy (h:(take_lz_lz (n - 1) t))
    }
  else
    lazy []
myMax a b = if polyGt a b then a else b
data Complex a = Complex a a deriving (Eq, Show)
comp_magnitude (Complex a b) = (a *. a) +. (b *. b)
comp_times (Complex a b) (Complex c d) = Complex ((a *. c) -. (b *. d)) ((a *. d) +. (b *. c))
comp_plus (Complex a b) (Complex c d) = Complex (a +. c) (b +. d)
mandel c = 
  let infiniteMandel = lazy (c : (map_lz (\z -> comp_plus (comp_times z z) c) (infiniteMandel))) in
  infiniteMandel
whenDiverge::  Int -> Double -> Complex Double -> Int
whenDiverge limit radius c =
  let walkIt = \ls -> case (force ls) of { [] -> 0; (x:xs) -> if (diverge x radius) then 0 else 1 + (walkIt xs) } in
  walkIt (take_lz_lz limit (mandel c))
-- VERY IMPORTANT FUNCTION: sits in inner loop
diverge::Complex Double -> Double -> Bool
diverge cmplx radius = polyGt (comp_magnitude cmplx) radius
parallelMandel:: [Complex Double] -> Int -> Double -> [Int]
parallelMandel mat limit radius = map (whenDiverge limit radius) mat
-- mandelset::Double -> 			-- Minimum X viewport
-- 	         Double -> 			-- Minimum Y viewport
-- 	         Double -> 			-- Maximum X viewport
-- 	         Double ->			-- maximum Y viewport
-- 	         Integer -> 			-- Window width
-- 	         Integer -> 			-- Window height
-- 	         Int -> 			-- Window depth
-- 	         PixMap			-- result pixmap
mandelset x y x' y' screenX screenY lIMIT =
  let prettyRGB = (\s -> let t = (lIMIT - s) in (s,t,t)) in
  let windowToViewport = \s -> \t -> (Complex (x +. (((float_of_int s) *. (x' -. x)) /. (float_of_int screenX))) (y +. (((float_of_int t) *. (y' -. y)) /. (float_of_int screenY)))) in
  let result = parallelMandel [windowToViewport s t | t <- [1..screenY] , s<-[1..screenX]] lIMIT ((myMax (x'-.x) (y'-.y)) /. 2.0) in
  createPixmap screenX screenY lIMIT (map prettyRGB result)
data PixMap = Pixmap Integer Integer Int [(Int,Int,Int)] deriving Show
createPixmap::Integer -> Integer -> Int -> [(Int,Int,Int)] -> PixMap
createPixmap width height max colours = Pixmap width height max colours
testMandel_nofib dummy =
  let minx = 0.0 -. 2.0 in
  let miny = 0.0 -. 2.0 in
  let maxx = 2.0 in
  let maxy = 2.0 in
  let screenX = 80 in
  let screenY = 80 in
  let limit = 75 in
  mandelset minx miny maxx maxy screenX screenY limit
testMandel_nofib $ primId 0
