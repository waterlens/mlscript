data IntList = N | C Int IntList;

def add = primitive;
def sub = primitive;

def range from to = case (sub to from) of {
  | 0 -> C from N
  | diff -> C from (range (add from 1) to)
};

def sum list = case list of {
  | C h t -> add h (sum t)
  | N -> 0
};

def unfused from to =
    sum (range from to);

def fused from to = case (sub to from) of {
  | 0 -> 0
  | diff -> add from (fused (add from 1) to)
};

unfused 1 10;
fused 1 10