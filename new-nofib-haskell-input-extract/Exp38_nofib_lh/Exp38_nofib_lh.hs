natPlus  Z     y   = y
natPlus (S x)  y   = S (natPlus x y)
natMult x      Z   = Z
natMult x   (S y)  = natPlus (natMult x y) x
fromInteger x      = if x < 1 then Z else (S (fromInteger (x - 1)))
int Z     = 0
int (S x) = 1 + (int x)
p x Z     = S Z
p x (S y) = natMult x (p x y)
testExp38_nofib n = int (p (fromInteger 3) (fromInteger n))
testExp38_nofib $ primId 8
