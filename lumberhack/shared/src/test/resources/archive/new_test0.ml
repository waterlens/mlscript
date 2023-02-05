def pppp = C 1 (C 2 N);

def eeee z = case z of {
    C aaa bbb -> bbb
    | N -> 7
};

def dddd y = case y of {
    C aa bb -> eeee bb
    | N -> 5
};

def cccc x = case x of {
    C a b -> dddd b
    | N -> 3
};

cccc pppp


// -----defInstance-----
// cccc:4^25 ⋅ ɛ:
//         5: [C 1 [C 2 [N]]]  <-->  23: case x:11 of {C a:12 b:13 -> (dddd:3 b:13) | N -> 3}
// cccc:4^25 ⋅ dddd:3^19 ⋅ ɛ:
//         3: [C 2 [N]]  <-->  16: case y:8 of {C aa:9 bb:10 -> (eeee:2 bb:10) | N -> 5}
// cccc:4^25 ⋅ dddd:3^19 ⋅ eeee:2^12 ⋅ ɛ:
//         1: [N]  <-->  9: case z:5 of {C aaa:6 bbb:7 -> bbb:7 | N -> 7}
// pppp:1^26 ⋅ ɛ:
//         1: [N]  <-->  9: case z:5 of {C aaa:6 bbb:7 -> bbb:7 | N -> 7}
//         3: [C 2 [N]]  <-->  16: case y:8 of {C aa:9 bb:10 -> (eeee:2 bb:10) | N -> 5}
//         5: [C 1 [C 2 [N]]]  <-->  23: case x:11 of {C a:12 b:13 -> (dddd:3 b:13) | N -> 3}