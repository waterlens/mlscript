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
unlines ls = concat $ map (\l -> l ++ ['n']) ls
foldr1 f (h:t) = foldr f h t
scanl f q ls   = q : (case ls of
                               []   -> [];
                               x:xs -> scanl f (f q x) xs)
drop n []      = []
drop n (h:t)   = if n > 0 then (drop (n - 1) t) else t
copy n a       = if n > 0 then (a:(copy (n - 1) a)) else []
height p       = length p
width  p       = length (head p)
stack ls       = foldr1 (\a b -> a ++ b) ls
spread ls      = foldr1 (\a b -> zipWith mappend a b) ls
emptyPic (h,w) = copy h (copy w ' ')
block n        = stack . (map spread) . (groop n)
blockT n       = spread . (map stack) . (groop n)
groop n []     = []
groop n xs     = take n xs : (groop n (drop n xs))
lframe (m,n) p = let h = height p in (let w = width p in ((zipWith mappend p (emptyPic (h,n-w))) ++ (emptyPic (m-h,n))))
monthLengths year = let feb = (if (leap year) then 29 else 28) in [31,feb,31,30,31,30,31,31,30,31,30,31]
leap year         = if year`mod`100 == 0 then year`mod`400 == 0
                                         else year`mod`4   == 0
monthNames        = ["January","February","March","April","May","June","July","August","September","October","November","December"]
jan1st year       = let last = (year - 1) in ((year + last`div`4 - last`div`100 + last`div`400) `mod` 7)
firstDays year    = take 12 (map (\a -> a `mod` 7) (scanl (\a b -> a + b) (jan1st year) (monthLengths year)))
date ml d      = if ((d<1) || (ml<d)) then ["   "] else [rjustify 3 (string_of_int d)]
dates fd ml    = map (\d -> date ml d) [(1-fd)..(42-fd)]
cal year       = unlines ((banner year) ++ (body year))
                  where
                    banner yr      = [cjustify 75 (string_of_int yr)] ++ (emptyPic (1,75))
                    body           = (block 3) . (map (pad . pic)) . months
                    pic (mn,fd,ml) = (title mn) ++ (table fd ml)
                    pad p          = (zipWith mappend (zipWith mappend (side) p) (side)) ++ (end)
                    side         = emptyPic (8,2)
                    end          = emptyPic (1,25)
                    title mn       = [cjustify 21 mn]
                    table fd ml    = daynames ++ (entries fd ml)
                    daynames       = [" Su Mo Tu We Th Fr Sa"]
                    entries fd ml  = block 7 (dates fd ml)
                    months yer    = zip3 monthNames (firstDays yer) (monthLengths yer)
cjustify n s = let m = (n - length s) in (let halfm = (m `div` 2) in ((space halfm) ++ s ++ (space (m - halfm))))
ljustify n s = s ++ (space (n - (length s)))
rjustify n s = (space (n - (length s))) ++ s
space n      = copy n ' '
testCalendar_nofib n = map (\n -> length $ cal n) $ primId [1993..(1993+n)]
testCalendar_nofib $ primId 100
