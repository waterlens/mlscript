lastt ls a = case ls of { [] -> a; (h:t) -> lastt t h }
last ls = case ls of { (h:t) -> lastt t h }
copy_lz n x =
        if n == 0 then
          lazy []
        else
          lazy (x : (copy_lz (n - 1) x))
append_lz xs ys =
        case xs of {
          [] -> ys;
          (h:t) -> lazy (h:(append_lz t ys))
        }
append_lz_lz xs ys =
        case (force xs) of {
          [] -> ys;
          (h:t) -> lazy (h:(append_lz_lz t ys))
        }
init (a:[]) = []
init (a:t) = a:(init t)
zipWith3 f xs ys zs = case xs of {
                  (hx:tx) -> case ys of {
                    (hy:ty) -> case zs of {
                      (hz:tz) -> (f hx hy hz):(zipWith3 f tx ty tz);
                      [] -> []
                    };
                    [] -> []
                  };
                  [] -> []
                }
zip3 xs ys zs = case xs of {
                  (hx:tx) -> case ys of {
                    (hy:ty) -> case zs of {
                      (hz:tz) -> (hx, hy, hz):(zip3 tx ty tz);
                      [] -> []
                    };
                    [] -> []
                  };
                  [] -> []
                }
start = [lazy [],lazy [],lazy [],lazy [],lazy [],lazy [],lazy [],lazy [],lazy [],lazy [],lazy [],lazy [],lazy [],lazy [],
         (lazy (0:(lazy (0:(lazy (0:(lazy (1:(lazy (1:(lazy (1:(lazy (1:(lazy (1:(lazy (0:(lazy (1:(lazy (1:(lazy (1:(lazy (1:(lazy (1:(lazy (0:(lazy (1:(lazy (1:(lazy (1:(lazy (1:(lazy (1:(lazy (0:(lazy (1:(lazy (1:(lazy (1:(lazy (1:(lazy (1:(lazy (0:(lazy [])))))))))))))))))))))))))))))))))))))))))))))))))))))))
        ]
gen n board = map row (shift (copy n 0) board)
row (last,this,next)
  = zipWith3 elt (shift 0 last) (shift 0 this) (shift 0 next)
elt (a,b,c) (d,e,f) (g,h,i) =
  let tot = a+b+c+d+f+g+h+i in
    if (tot < 2) || (tot > 3) then
      0
    else
      if (tot == 3) then 1 else e
shiftr x xs = [x] ++ (init xs)
shiftl x xs = (tail xs) ++ [x]
shift x xs = zip3 (shiftr x xs) xs (shiftl x xs)
copy 0 x = []
copy n x = x : (copy (n-1) x)
disp (gen,xss) =
  lazy (gen ++ "nn" ++ (((foldr (glue "n") "") . (map (concat . (map star)))) xss))
star 0 = "  "
star 1 = " o"
glue s xs ys = xs ++ s ++ ys
limit ls = case (force ls) of {
  (x:ys) -> case (force ys) of {
    (y:xs) -> if (polyEq x y) then [x] else (x : (limit (lazy (y:xs))))
  }
}
generations sz =
  ((map disp) . (zip_lz_nl (map_lz string_of_int [0..])) . limit . (iterate (gen sz)))
  (take_lz sz (map_lz ((\l -> take_lz sz l) . (\l -> append_lz_lz l (copy_lz sz 0))) (append_lz start (copy_lz sz (copy_lz sz 0)))))
testLife_nofib n = length (force (last (generations n)))
testLife_nofib $ primId 29
