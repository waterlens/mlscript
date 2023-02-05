// problem: have path like: rev1·rev, but no rev·rev·rev ... things like these
// def rev l1 l2 = case l1 of {
//     C h t -> rev t (C h l2)
//     | N -> l2
// };

// def rev1 l11 l22 = case l11 of {
//     C h1 t1 -> rev1 t1 (C h1 l22)
//     | N -> l22
// };

// def p = C K N;

// rev (rev1 p N) N

// def rev:1 = 12: fun l1:4 -> 11: fun l2:5 -> 10: case 1: l1:4 of {C h:6 t:7 -> 8: (4: (2: rev:1 3: t:7) 7: [C 6: h:6 5: l2:5]) | N -> 9: l2:5}
// def rev1:2 = 24: fun l11:8 -> 23: fun l22:9 -> 22: case 13: l11:8 of {C h1:10 t1:11 -> 20: (16: (14: rev1:2 15: t1:11) 19: [C 18: h1:10 17: l22:9]) | N -> 21: l22:9}
// def p:3 = 27: [C 26: [K] 25: [N]]
// 36: (34: (28: rev:1 33: (31: (29: rev1:2 30: p:3) 32: [N])) 35: [N])

// =============================
// unroll automatically to the correct length
// def p = C (C p)
// def c x = case x of {
//     C a -> case a of {
//         C b -> case b of {
//             C y -> c y
//         }
//     }
// }

// c p

// def p:1 = 3: [C 2: [C 1: p:1]]
// def c:2 = 13: fun x:3 -> 12: case 4: x:3 of {C a:4 -> 11: case 5: a:4 of {C b:5 -> 10: case 6: b:5 of {C y:6 -> 9: (7: c:2 8: y:6)}}}
// 16: (14: c:2 15: p:1)

// =============================

// different recursive length example??
// does not work because recursive check for this path is the same as the recursive on the other path,
// and we ignore the path when determining recursive constraints, so the other path will not be able to collect all
// its info since it stops early than it should?
// def p = C (C p);
// // def c x = Pair (case x of { C a -> case a of { C b -> case b of { C y -> c y } } }) (case x of { C z -> c z });
// // def c x = Pair (case x of { C z -> c z }) (case x of { C a -> case a of { C b -> case b of { C y -> c y } } });

// def c x = Pair (case x of { C z -> c z }) (d x);
// def d xx = case xx of { C a -> case a of { C b -> case b of { C y -> c y } } };

// c p
// def p:1 = 3: [C 2: [C 1: p:1]]
// def c:2 = 19: fun x:3 -> 18: [Pair 17: case 9: x:3 of {C a:5 -> 16: case 10: a:5 of {C b:6 -> 15: case 11: b:6 of {C y:7 -> 14: (12: c:2 13: y:7)}}} 8: case 4: x:3 of {C z:4 -> 7: (5: c:2 6: z:4)}]
// 22: (20: c:2 21: p:1)

// =============================

// similar to 
// def c (x, y) = c (x.a, y.b.b)
// def aa = {a = {a = aa}}
// def bb = {b = bb}
// c (aa, bb)

// def aa = A aa;
// def bb = B (B bb);
// def p = Pair aa bb;
// def c x = case x of { Pair a b -> c (Pair (case a of {A y -> case y of {A z -> z}}) (case b of {B b -> b})) };

// c p

// =============================
def map f ls = case ls of {
    C h t -> C (f h) (map f t)
    | N -> N
}

def l = C K N;

def ff x = case x of {
    K -> T
}

map ff l

// def map:1 = 14: fun f:4 -> 13: fun ls:5 -> 12: case 1: ls:5 of {C h:6 t:7 -> 10: [C 9: (7: f:4 8: h:6) 6: (4: (2: map:1 3: f:4) 5: t:7)] | N -> 11: [N]}
// def l:2 = 17: [C 16: [K] 15: l:2]
// def ff:3 = 21: fun x:8 -> 20: case 18: x:8 of {K -> 19: [T]}
// 26: (24: (22: map:1 23: ff:3) 25: l:2)

// =============================

// should this work??? since this requires the function `c`'s type to be different inside its body? (not let-polymorphism???)
// but now we have subtyping, so this should be able to work:
// c: (Pair ⊤ ⊤) → ⊥

// how should this be??
// def p = Pair C T;

// def c x = case x of { Pair a b -> c (Pair b a) };

// c p

// def p:1 = 3: [Pair 2: [C] 1: [T]]
// def c:2 = 11: fun x:3 -> 10: case 4: x:3 of {Pair a:4 b:5 -> 9: (5: c:2 8: [Pair 7: b:5 6: a:4])}
// 14: (12: c:2 13: p:1)

// =============================

// case C A (B C) of { C a b -> D b }

// =============================

// def id x = id2 x

// def id2 x2 = x2

// def p = C T

// def c xx = case xx of { C a -> N }

// c (id p)

// ==============================

// def p = C (C N)

// def c x = case x of {
//     C a -> c a
//     | N -> K
// }

// c p