// def sum ls = case ls of { C h t -> S N (sum t) }
// def mapa lsa = case lsa of { C ha ta -> C (primitive ha) (mapa ta) }
// def mapb lsb = case lsb of { C hb tb -> C (primitive hb) (mapb tb) }

// // def p = C K p;

// // def id2 y = case y of { C z zz -> C z zz }
// // def id2 y = y;
// // def id x = id2 x;

// mapa (mapb (primitive))

// how is this related to the number of times of unrolling?
// idea: find all complete paths (with concrete start of producer and concrete end of consumers)
    // everything in between a path should be both a consumer and then a producer
    // then look at the def of the things after them, and determine the intermediate/temporary producer strategy
    // then fuse all the strategies together, from the end to the start
    // then done?!
        // (constraints as graph, which is an approximation of the original data flow of the program, then find the longest path might help!!)
    // how to differentiate some path from another?

// def sum:1 = 8: fun ls:5 -> 7: case 1: ls:5 of {C h:6 t:7 -> 6: [S 5: [N] 4: (2: sum:1 3: t:7)]}
// def mapa:2 = 18: fun lsa:8 -> 17: case 9: lsa:8 of {C ha:9 ta:10 -> 16: [C 15: (13: primitive:0 14: ha:9) 12: (10: mapa:2 11: ta:10)]}
// def mapb:3 = 28: fun lsb:11 -> 27: case 19: lsb:11 of {C hb:12 tb:13 -> 26: [C 25: (23: primitive:0 24: hb:12) 22: (20: mapb:3 21: tb:13)]}
// def p:4 = 31: [C 30: [K] 29: p:4]
// 38: (32: sum:1 37: (33: mapa:2 36: (34: mapb:3 35: p:4)))

// ==================

// def p = C (C (C p));

// def c x = case x of { C a -> case a of { C b -> c b } }

// c p

// ==================

// def p = C (C p);

// def c x = case x of {
//     C a -> case a of {
//         C b -> case b of {
//             C y -> c y
//         }
//     }
// }

// c p

// ==================

// def p = C p;

// def c x = case (C x) of { C a -> c a };

// // def id2 yy = yy;
// // def id y = id2 y;

// c p

// ==================
def p = C N;
def wrap y = C y;
def c x = case (C x) of { C a -> c a };
c p

// ==================
// def id a = case a of {
//     A -> C
//     | B -> T
// };

// id A;

// def p = C p;
// def c x = case x of { C a -> c a };
// def main = c p;
// main