data Term               = Var Id | Fun Id [Term] [Lemma] | ERROR
type Lemma              = (Term, Term)
type Substitution       = [(Id, Term)]
data Id = A | B | C | D | X | Y | Z | U | W |
          ADD1 | AND | APPEND | CONS | CONSP | DIFFERENCE |
          DIVIDES | EQUAL | EVEN | EXP | F | FALSE |
          FOUR | GCD | GREATEREQP | GREATERP | IF | IFF |
          IMPLIES | LENGTH | LESSEQP | LESSP | LISTP | MEMBER |
          NIL | NILP | NLISTP | NOT | ODD | ONE | OR | PLUS |
          QUOTIENT | REMAINDER | REVERSE | SUB1 | TIMES | TRUE |
          TWO | ZERO | ZEROP
          deriving Eq
instance Eq Term where
          Var i1 == Var i2                = i1 == i2
          Fun f1 ts1 _ == Fun f2 ts2 _    = f1 == f2 && (termLsEq ts1 ts2)
          _ == _                          = False
all f [] = True
all f (h:t) = if f h then all f t else False
replicate n x = if n == 0 then [] else (x:(replicate (n - 1) x))
termInList term (h:t) = if termEq term h then True else termInList term t
termInList term [] = False
termLsEq (h1:t1) (h2:t2) = if termEq h1 h2 then termLsEq t1 t2 else False
termLsEq [] [] = True
termEq (Var i1) (Var i2) = polyEq i1 i2
termEq (Fun f1 ts1 _) (Fun f2 ts2 _) = (polyEq f1 f2) && (termLsEq ts1 ts2)
termEq _ _ = False
one_way_unify :: Term -> Term -> (Bool, Substitution)
one_way_unify term1 term2 = one_way_unify1 term1 term2 []
one_way_unify1 :: Term -> Term -> Substitution -> (Bool, Substitution)
one_way_unify1 term1 (Var vid2) subst = case (find vid2 subst) of {
  (found, v2) -> if found then (termEq term1 v2, subst) else (True, (vid2,term1):subst)
}
one_way_unify1 (Fun f1 as1 _) (Fun f2 as2 _) subst = if (polyEq f1 f2) then one_way_unify1_lst as1 as2 subst else (False, [])
one_way_unify1 _ _ _ = (False, [])
one_way_unify1_lst [] [] subst = (True, subst)
one_way_unify1_lst (t1:ts1) (t2:ts2) subst = case (one_way_unify1 t1 t2 subst) of {
  (hd_ok, subst') -> case (one_way_unify1_lst ts1 ts2 subst') of {
    (tl_ok, subst'') -> (hd_ok && tl_ok, subst'')
  }
}
one_way_unify1_lst _ _ _ = (False, [])
find :: Id -> Substitution -> (Bool, Term)
find vid []                = (False, ERROR)
find vid1 ((vid2,val2):bs) = if (polyEq vid1 vid2) then (True, val2) else find vid1 bs
apply_subst :: Substitution -> Term -> Term
apply_subst subst (Var vid) = case (find vid subst) of {
  (found, value) -> if found then value else (Var vid)
}
apply_subst subst (Fun f args ls) = Fun f (map (apply_subst subst) args) ls
rewrite :: Term -> Term
rewrite (Var v) = (Var v)
rewrite (Fun f args lemmas) = rewrite_with_lemmas (Fun f (map rewrite args) lemmas) lemmas
rewrite_with_lemmas :: Term -> [Lemma] -> Term
rewrite_with_lemmas term lss = rewrite_with_lemmas_helper term (force lss)
rewrite_with_lemmas_helper term lss = case lss of {
  [] -> term;
  ((lhs, rhs):ls) -> case (one_way_unify term lhs) of {
    (unified, subst) -> if unified then rewrite (apply_subst subst rhs) else rewrite_with_lemmas_helper term ls
  }
}
tautp :: Term -> Bool
tautp x = tautologyp (rewrite x) [] []
tautologyp :: Term -> [Term] -> [Term] -> Bool
tautologyp x true_lst false_lst =
  if (truep x true_lst) then
    True
  else if (falsep x false_lst) then
    False
  else case x of {
    (Fun IF [cond, t, e] _) ->
      if truep cond true_lst then
        tautologyp t true_lst false_lst
      else if falsep cond false_lst then
        tautologyp e true_lst false_lst
      else
        (tautologyp t (cond:true_lst) false_lst) && (tautologyp e true_lst (cond:false_lst));
    _ -> False
  }
truep :: Term -> [Term] -> Bool
truep (Fun TRUE _ _)   _ = True
truep x l                = termInList x l
falsep :: Term -> [Term] -> Bool
falsep (Fun FALSE _ _) _ = True
falsep x l               = termInList x l
test0 xxxx =
        let subst0 = [
                    (X, f (plus (plus a b) (plus c zero))),
                    (Y, f (times (times a b) (plus c d))),
                    (Z, f (reverse_ (append (append a b) nil))),
                    (U, equal (plus a b) (difference x y)),
                    (W, lessp (remainder a b) (member a (length_ b)))
                  ] in
        let theorem = implies (and_ (implies xxxx y) (and_ (implies y z) (and_ (implies z u) (implies u w)))) (implies x w) in
          tautp (apply_subst subst0 theorem)
    where
      a       =    Var A
      b       =    Var B
      c       =    Var C
      d       =    Var D
      u       =    Var U
      w       =    Var W
      x       =    Var X
      y       =    Var Y
      z       =    Var Z
      boyerFalse = Fun FALSE [] (lazy [])
      nil =        Fun NIL   [] (lazy [])
      boyerTrue =  Fun TRUE  [] (lazy [])
      zero    =    Fun ZERO  [] (lazy [])
      one     =    Fun ONE [] (lazy [(one, add1 zero)])
      two     =    Fun TWO [] (lazy [(two, add1 one)])
      four    =    Fun FOUR [] (lazy [(four, add1 (add1 two))])
      add1 a  =    Fun ADD1 [a] (lazy [])
      if_ a b c = Fun IF [a,b,c] (lazy [(if_ (if_ x y z) u w, if_ x (if_ y u w) (if_ z u w))])
      not_ a  =   Fun NOT [a] (lazy [(not_ x, if_ x boyerFalse boyerTrue)])
      and_ a b =  Fun AND [a,b] (lazy [(and_ x y, if_ x (if_ y boyerTrue boyerFalse) boyerFalse)])
      append a b = Fun APPEND [a,b] (lazy [(append (append x y) z, append x (append y z))])
      cons a b = Fun CONS [a,b] (lazy [])
      consp a =  Fun CONSP [a] (lazy [(consp (cons x y), boyerTrue)])
      difference a b
              = Fun DIFFERENCE [a,b] (lazy [
                (difference x x,                      zero),
                (difference (plus x y) x,             y),
                (difference (plus y x) x,             y),
                (difference (plus x y) (plus x z),    difference y z),
                (difference (plus y (plus x z)) x,    plus y z),
                (difference (add1 (plus y z)) z,      add1 y),
                (difference (add1 (add1 x)) two,      x)])
      divides a b
              = Fun DIVIDES [a,b] (lazy [
                (divides x y,                 zerop (remainder y x))])
      equal a b
              = Fun EQUAL [a,b] (lazy [
                (equal (plus x y) zero,       and_ (zerop x) (zerop y)),
                (equal (plus x y) (plus x z), equal y z),
                (equal zero (difference x y), not_ (lessp y x)),
                (equal x (difference x y),    or_ (equal x zero)
                                                  (zerop y)),
                (equal (times x y) zero,      or_ (zerop x) (zerop y)),
                (equal (append x y) (append x z), equal y z),
                (equal y (times x y),         or_ (equal y zero)
                                                  (equal x one)),
                (equal x (times x y),         or_ (equal x zero)
                                                  (equal y one)),
                (equal (times x y) one,       and_ (equal x one)
                                                  (equal y one)),
                (equal (difference x y)
                      (difference z y),      if_ (lessp x y)
                                                  (not_ (lessp y z))
                                                  (if_ (lessp z y)
                                                      (not_ (lessp y x))
                                                      (equal x z))),
                (equal (lessp x y) z,         if_ (lessp x y)
                                                  (equal boyerTrue z)
                                                  (equal boyerFalse z))])
      even_ a = Fun EVEN [a] (lazy [
                (even_ x,                     if_ (zerop x)
                                                  boyerTrue
                                                  (odd_ (sub1 x)))])
      exp_ a b
              = Fun EXP [a,b] (lazy [
                (exp_ x (plus y z),           times (exp_ x y) (exp_ x z)),
                (exp_ x (times y z),          exp_ (exp_ x y) z)])
      f a     = Fun F [a] (lazy [])
      gcd_ a b
              = Fun GCD [a,b] (lazy [
                (gcd_ x y,                     gcd_ y x),
                (gcd_ (times x z) (times y z), times z (gcd_ x y))])
      greatereqp a b
              = Fun GREATEREQP [a,b] (lazy [
                (greatereqp x y,              not_ (lessp x y))])
      greaterp a b
              = Fun GREATERP [a,b] (lazy [
                (greaterp x y,                lessp y x)])
      implies a b
              = Fun IMPLIES [a,b] (lazy [
                (implies x y,                 if_ x (if_ y boyerTrue boyerFalse) boyerTrue)])
      iff a b = Fun IFF [a,b] (lazy [
                (iff x y,                     and_ (implies x y)
                                                  (implies y x))])
      length_ a
              = Fun LENGTH [a] (lazy [
                (length_ (reverse_ x),        length_ x),
                (length_ (cons x (cons y (cons z (cons u w)))),
                                              plus four (length_
                                              w))])
      lesseqp a b
              = Fun LESSEQP [a,b] (lazy [
                (lesseqp x y,                 not_ (lessp y x))])
      lessp a b
              = Fun LESSP [a,b] (lazy [
                (lessp (remainder x y) y,     not_ (zerop y)),
                (lessp (quotient x y) x,      and_ (not_ (zerop x))
                                                  (lessp one y)),
                (lessp (plus x y) (plus x z), lessp y z),
                (lessp (times x z) (times y z),
                                              and_ (not_ (zerop z))
                                                  (lessp x y)),
                (lessp y (plus x y),          not_ (zerop x))])
      nilp a  = Fun NILP [a] (lazy [
                (nilp x,                      equal x nil)])
      listp a = Fun LISTP [a] (lazy [
                (listp x,                     or_ (nilp x) (consp x))])
      member a b
              = Fun MEMBER [a,b] (lazy [
                (member x (append y z),       or_ (member x y) (member x z)),
                (member x (reverse_ y),       member x y)])
      nlistp a
              = Fun NLISTP [a] (lazy [
                (nlistp x,                    not_ (listp x))])
      odd_ a  = Fun ODD [a] (lazy [
                (odd_ x,                      even_ (sub1 x))])
      or_ a b = Fun OR [a,b] (lazy [
                (or_ x y,                     if_ x boyerTrue (if_ y boyerTrue boyerFalse))])
      plus a b
              = Fun PLUS [a,b] (lazy [
                (plus (plus x y) z,           plus x (plus y z)),
                (plus (remainder x y)
                    (times y (quotient x y)), x),
                (plus x (add1 y),             add1 (plus x y))])
      quotient a b
              = Fun QUOTIENT [a,b] (lazy [
                (quotient (plus x (plus x y))
                          two,                plus x (quotient y two)),
                (quotient (times y x) y,      if_ (zerop y) zero x)])
      remainder a b
              = Fun REMAINDER [a,b] (lazy [
                (remainder x one,             zero),
                (remainder x x,               zero),
                (remainder (times x y) x,     zero),
                (remainder (times x y) y,     zero)])
      reverse_ a
              = Fun REVERSE [a] (lazy [(reverse_ (append x y), append (reverse_ y) (reverse_ x))])
      sub1 a  = Fun SUB1 [a] (lazy [(sub1 (add1 x), x)])
      times a b
              = Fun TIMES [a,b] (lazy [
                (times x (plus y z),          plus (times x y) (times x z)),
                (times (times x y) z,         times x (times y z)),
                (times x (difference y z),    difference (times y x) (times z x)),
                (times x (add1 y),            plus x (times x y))])
      zerop a = Fun ZEROP [a] (lazy [(zerop x, equal x zero)])
testBoyer_nofib n = all test0 (replicate n (Var X))
testBoyer_nofib $ primId 5
