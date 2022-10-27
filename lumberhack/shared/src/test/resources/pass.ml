// def pppp = C 1 (C 2 N);
// def eeee z = case z of {
//     C aaa bbb -> bbb
//     | N -> 7
// };
// def dddd y = case y of {
//     C aa bb -> eeee bb
//     | N -> 5
// };
// def cccc x = case x of {
//     C a b -> dddd b
//     | N -> 3
// };
// cccc pppp

// ========

// def p = C (C p);
// def c x = case x of {
//     C a -> case a of {
//         C b -> case b of {
//             C y -> c y
//         }
//     }
// };
// c p

// ========

// def p = C (C (C (id p)));
// def c x = case x of { C a -> case a of { C b -> c b } };
// def id2 z = z;
// def id y = id2 y;
// def id3 d = d;
// c (id3 p);

// def p = C (C (p));
// def c x = case x of { C a -> c a };
// def id2 yy = yy;
// def id y = id2 y;
// c (id p);

// def p = C (C (C p));
// def c x = case x of { C a -> case a of { C a -> c a }};
// def id2 yy = yy;
// def id y = id2 y;
// c (id p);

// def p = C (C (C p));
// def c x = case x of { C a -> case a of { C b -> c b }};
// // def 
// def id2 yy = yy;
// def id y = id2 y;
// def id3 = id;
// c (id3 p);



// ========

// def sum ls = case ls of { C h t -> S N (sum t) }
// def mapa lsa = case lsa of { C ha ta -> C (primitive ha) (mapa ta) }
// def mapb lsb = case lsb of { C hb tb -> C (primitive hb) (mapb tb) }
// sum (mapa (mapb (primitive)))

// =========

// case C A (B C) of { C a b -> D b }

// =========

// def id k = k;
// def id1 x = id x;
// def id2 y = y;
// def id3 z = z;
// def p = C (C (C (id7 (C (C (id1 p))))));
// def c xx = case xx of { C a -> c a };
// def id4 k = k;
// def id5 j = j;
// def id6 l = l;
// def id7 i = i;

// (id6 id4 c) ((id5 id2) (id3 p))

// =========

// def t = T K (T N L L) (T N L L);
// def c x = case x of {
//     T n l r -> T (case n of { K -> KK | N -> N }) (c l) (c r)
//     | L -> L
// };
// c t;

// ==========

// def p = C (C (C p));
// def ca x = case x of { C a -> cb a };
// def cb y = case y of { C b -> ca b };
// ca p;