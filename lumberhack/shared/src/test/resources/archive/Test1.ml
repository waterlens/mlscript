data MyList a = N | C a (MyList a);

def add = primitive;

add 1 (id 1);

def id x = x;

def p0 = C 1 (C 2 (C 3 N));

def c0 x = case x of {
  | C n a -> case a of {
    | C m b -> b
    }
  };

c0 p0