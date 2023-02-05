// def p = C p;
// def c x = case (C x) of { C a -> c a };
// c p

// ==========

// def p = C p;
// def c x = case (C x) of { C a -> case (C a) of { C y -> c y } };
// c p

// ==========

// NOTE: push in problem
// def map f ls = case ls of {
//     C h t -> C (f h) (map f t)
//     | N -> N
// }
// def l = C K l;
// def ff x = case x of {
//     K -> T
// }
// map ff l

// ==========

// NOTE: only first head is handled?
// def map f ls = case ls of {
//     C h t -> C (f h) (map f t)
//     | N -> N
// }
// def l = C K (C KK (C KKK N));
// def ff x = case x of {
//     K -> T
//     | KK -> TT
//     | KKK -> TTT
// }
// // map primitive l
// map ff l
// // map (fun x -> case x of { K -> T | KK -> TT | KKK -> TTT }) l;
// // map (fun x -> ff x) l;

// ==========

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

// ==========

// id2 is used twice here, even though its type is the same
// def p = C (C (C (id2 p)));
// def c x = case x of { C a -> case a of { C a -> c a } }
// def id2 yy = yy;
// def id y = id2 y;
// c (id p);

// ==========

// no polymorphism, type is different
// def id x = x;
// def p1 = C p1;
// def c1 a = case a of { C i -> c1 i };
// (id c1) (id p1);

// ===========

// no path strats from `main`
// but at this case, it is impossible to get a constraint
// with its path starting from `main`?
// unless we keep track of where certain constraints come from,
// like long time ago
def p = C p;
def c x = case x of { C a -> c a };
def main m = P m (c p);
main T

// ===========

// the constructor and the destructor are from the same `c`, but their path are all ε
// def p = C N;
// def wrap y = C y;
// def c x = case (C x) of { C a -> c a };
// c p