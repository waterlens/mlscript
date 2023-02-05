def suc n = case n of {
    S a -> case a of {
        S b -> b
    }
}

def main = suc (S (S 2))

def test = main;

test

// -----defInstance-----
// test:3^13 ⋅ main:2^12 ⋅ suc:1^7 ⋅ ɛ:
//         10: [S [S 2]]  <-->  5: case n:4 of {S a:5 -> case a:5 of {S b:6 -> b:6}}
//         9: [S 2]  <-->  4: case a:5 of {S b:6 -> b:6}
// test:3^13 ⋅ main:2^12 ⋅ ɛ:
//         10: [S [S 2]]  <-->  5: case n:4 of {S a:5 -> case a:5 of {S b:6 -> b:6}}
//         9: [S 2]  <-->  4: case a:5 of {S b:6 -> b:6}