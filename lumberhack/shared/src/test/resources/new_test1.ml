def pppp = C 1 (C 2 N)

def cccc x = case x of {
  C a xs -> cccc xs
  | N -> K
};

cccc pppp
