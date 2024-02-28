map_dnet :: (a -> b) -> DISC_NET a -> DISC_NET b
map_dnet f (Switch alist defalt) = Switch (map (cross (\x -> x) (map_dnet f)) alist) (map_dnet f defalt)
map_dnet f (Return x) = Return (f x)
delete_eqns :: [NUM] -> DNET -> DNET
delete_eqns nums =
  let ok = \e -> not (inList (eqno e) nums) in
  map_dnet (filter ok)
skeleton :: DNET -> DISC_NET [NUM]
skeleton x = map_dnet (map eqno) x
quant :: (PRED a -> PRED [a]) -> RELATION a b -> RELATION b [a]
quant q rel y xs =
  let p = \x -> rel x y in
  q p xs
eqRewrite ord x y = (polyEq (ord (x, y)) Equal)
gtRewrite ord x y = (polyEq (ord (x, y)) Greater)
ltRewrite ord x y = (polyEq (ord (x, y)) Less)
geRewrite ord x y = (inList (ord (x, y)) [Greater, Equal])
dropWhile f [] = []
dropWhile f (h:t) = if (f h) then dropWhile f t else (h:t)
takeWhile p [] = []
takeWhile p (x:xs) = if (p x) then x:(takeWhile p xs) else []
fst (a, b) = a
snd (a, b) = b
inList x (h:t) = if polyEq x h then True else inList x t
inList x [] = False
or [] = False
or (h:t) = if h then True else or t
all p [] = True
all p (h:t) = if p h then all p t else False
any p [] = False
any p (h:t) = if p h then True else any p t
data EXPR = Func FUNC [EXPR] | Var VAR
type FUNC    = String
type VAR    = String
type NUM    = Int
type EXPR_PAIR = (EXPR, EXPR)
data EQUATION = Eqn NUM EXPR_PAIR
type PARSER    = String -> Maybe (SYNVAL, String)
data SYNVAL    = Expr EXPR | List [SYNVAL] | MkString String
type SUBST = [(VAR, EXPR)]
type PATH = [NUM]
type TACTIC = EXPR -> Maybe EXPR
data TOKEN = Afunc FUNC | Avar
data DISC_NET a = Switch [(FUNC, DISC_NET a)] (DISC_NET a) | Return a
type DNET = DISC_NET [EQUATION]
data ANSWER = Equal | Greater | Less | Unrelated deriving Eq
type ORDERING a   = (a, a) -> ANSWER
type PRED a        = a -> Bool
type RELATION a b = a -> b -> Bool
type EXTENSION = ORDERING EXPR -> ORDERING EXPR
type CRIT_PAIR    = EXPR_PAIR
data ITEM         = Item NUM CRIT_PAIR
type AGENDA       = [ITEM]
type KB_DATA = (ORDERING EXPR, EXPR_PAIR -> NUM)
copy n x = if n <= 0 then [] else x:(copy (n - 1) x)
eqListExpr [] [] = True
eqListExpr (a:b) (c:d) = if eqExpr a c then eqListExpr b d else False
eqListExpr _ _ = False
succeed x             = Just x
croak                 = Nothing
exists Nothing        = False
exists x              = True
the (Just x)          = x
orElse Nothing y      = y
orElse x y            = x
getOrElse (Just x) y  = x
getOrElse Nothing y   = y
orElseMap p q s       = orElse (p s) (q s)
maybeX p x            = if p then Just x else Nothing
first_ok x            = foldr (orElse) Nothing x
sift x                = (concat . map listify) x
listify x             = getOrElse (lift box x) []
box x                 = [x]
lift f Nothing        = Nothing
lift f (Just x)       = Just (f x)
prop :: (a -> Maybe b) -> (Maybe a -> Maybe b)
prop f Nothing = Nothing
prop f (Just x) = f x
prop2 :: (a -> b -> Maybe c) -> (Maybe a -> b -> Maybe c)
prop2 f Nothing y = Nothing
prop2 f (Just x) y = f x y
prop_fold :: (a -> b -> Maybe a) -> a -> [b] -> Maybe a
prop_fold f x [] = Just x
prop_fold f x (y:ys) = prop2 (prop_fold f) (f x y) ys
squash                :: Maybe (Maybe a) -> Maybe a
squash (Just x)       = x
squash Nothing        = Nothing
pair x y              = (x, y)
cross              :: (a -> c) -> (b -> d) -> (a,b) -> (c,d)
cross f g (x,y)     = (f x, g y)
eqExpr (Func f1 es1) (Func f2 es2) = (polyEq f1 f2) && (eqListExpr es1 es2)
eqExpr (Var v1) (Var v2) = polyEq v1 v2
eqExpr other1 other2 = False
lhs (Eqn n (a, b)) = a
rhs (Eqn n (a, b)) = b
eqno (Eqn n (a, b)) = n
eqpr (Eqn n pr) = pr
cost :: (EXPR, EXPR) -> NUM
cost (a, b) = (size a) + (size b)
      where
      size x = expr_fold (\x -> \a -> (sum a) + 1) (\dum -> 0) x
expr_fold :: (FUNC -> [a] -> a) -> (VAR -> a) -> EXPR -> a
expr_fold ff vv (Var v) = vv v
expr_fold ff vv (Func f a) = ff f (map (expr_fold ff vv) a)
occurs :: VAR -> EXPR -> Bool
occurs v = expr_fold (\dum -> or) (\x -> polyEq x v)
assoc alist x =
  let match_x = \uv -> case uv of {(u,v) -> maybeX (polyEq x u) v} in
  first_ok (map match_x alist)
update_alist :: Eq a => a -> (b -> b) -> b -> [(a, b)] -> [(a, b)]
update_alist x f defalt =
  let upd = \ls -> case ls of {
    [] -> [(x, f defalt)];
    ((y, z):alist) -> if polyEq x y then ((x, f z):alist) else ((y, z):(upd alist));
  } in
  upd
apply :: SUBST -> VAR -> EXPR
apply s v = getOrElse (assoc s v) (Var v)
sub :: EXPR -> SUBST -> EXPR
sub t s = expr_fold (\x -> \y -> Func x y) (apply s) t
comp_sub s1 s2 = [(v, sub t s1) | (v, t) <- s2] ++ s1
stand :: String -> EXPR -> EXPR
stand suffix = expr_fold (\x -> \y -> Func x y) (\v -> Var (v ++ suffix))
stand_eqn :: String -> EQUATION -> EQUATION
stand_eqn suffix (Eqn n (lhs, rhs)) = Eqn n (stand suffix lhs, stand suffix rhs)
subterms :: EXPR -> [(PATH, EXPR)]
subterms (Var v) = []
subterms (Func f a) = [([], Func f a)] ++ [(i:k, u) | (i, t) <- (zip_lz_nl [0..] a), (k, u) <- subterms t]
replace :: EXPR -> PATH -> EXPR -> EXPR
replace t [] u = u
replace (Func f a) (i:k) u = Func f (modify a i (\t -> replace t k u))
modify (x:a) 0 f = (f x) : a
modify (x:a) i f = x : (modify a (i-1) f)
match :: EXPR -> EXPR -> Maybe SUBST
match p t = match' [] (p, t)
match' s (Var v, t) =
  let u = assoc s v in
  if not (exists u) then succeed ((v, t):s)
  else if eqExpr (the u) t then succeed s
  else croak
match' s (Func f a, Func g b) = if polyEq f g then prop_fold match' s (zip a b) else croak
match' s (Func f a, Var v) = croak
rewrite :: EQUATION -> TACTIC
rewrite (Eqn n (l, r)) = (lift (sub r)) . (match l)
try_all :: [TACTIC] -> TACTIC
try_all x = foldr (orElseMap) (\dum -> croak) x
inside :: TACTIC -> TACTIC
inside rw t = first_ok [ lift (replace t k) (rw u) | (k, u) <- subterms t ]
reduce1 eqn = inside (rewrite eqn)
reduce eqns = inside (try_all (map rewrite eqns))
unify t u = unify' [] (t, u)
unify' s (Var v, u) = univar s v u
unify' s (Func f a, Var v) = univar s v (Func f a)
unify' s (Func f a, Func g b)
    = if polyEq f g then prop_fold unify' s (zip a b) else croak
univar s v u =
  let t = assoc s v in
  if exists t then unify' s (the t, u)
  else if eqExpr u (Var v) then succeed s
  else
    let u' = sub u s in
    if not ( occurs v u') then succeed (comp_sub [(v, u')] s)
    else croak
simplify :: TACTIC -> EXPR -> EXPR
simplify rw = let f = \t -> getOrElse (lift f (rw t)) t in f
result (s1, s2) =
  let group_completion = knuth_bendix (rpo (rank_order rank) lex_ext) (map parse_eqn [ "(a * b) * c = a * (b * c)", "E * x = x", "I(x) * x = E" ]) in
  (eqExpr (simplify (super_reduce group_completion) (parse s1)) (parse s2))
  where
    ----- parsing -----
    parse_eqn s = case (fst (the (p_eqn s))) of (List [Expr lhs, Expr rhs]) -> (lhs, rhs)
    parse s                 = (unExpr . fst . the . p_expr) s
    unExpr (Expr e)         = e
    unString (MkString s)   = s
    build                 :: (SYNVAL -> SYNVAL) -> (PARSER -> PARSER)
    build f p             = (lift (cross f (\x -> x))) . p
    seq2                  :: (SYNVAL -> SYNVAL -> SYNVAL) -> (PARSER -> PARSER -> PARSER)
    seq2 f p q =
      let g = (\xs -> case xs of (x, s) -> lift (cross (f x) (\x -> x)) (q s)) in (squash . (lift g) . p)
    seq2Lzq f p q =
      let g = (\xs -> case xs of (x, s) -> lift (cross (f x) (\x -> x)) ((force q) s)) in (squash . (lift g) . p)
    seQ                   :: ([SYNVAL] -> SYNVAL) -> ([PARSER] -> PARSER)
    seQ f ps              = build (mk_list f) (foldr (seq2 mk_cons) empty ps)
    mk_cons x (List xs)   = List (x:xs)
    mk_list f (List xs)   = f xs
    empty                 :: PARSER
    empty s               = succeed (List [], s)
    list_of               :: PARSER -> Char -> PARSER
    -- NOTE:
    list_of p sep         =
      let p' = lazy (seq2 mk_cons p (orElseMap (seq2Lzq (\x -> \y -> y) (look_for sep) p') empty)) in
      force p'
    sp p                  = p . dropWhile (\x -> polyEq x ' ')
    look_for c            = sp (pchar (\x -> polyEq x c))
    pchar p []            = croak
    pchar p (c:s)         = if p c then succeed (MkString [c], s) else croak
    string_of kind s =
      let chars = takeWhile kind s in
      let s'    = dropWhile kind s in
      maybeX (polyNeq chars "") (MkString chars, s')
    p_eqn x = seQ q_eqn [p_expr, look_for '=', p_expr] x
    q_eqn [lhs, eqRewrite, rhs] = List [lhs, rhs]
    p_expr x = orElseMap (seQ q_op [p_term, p_op, p_term]) p_term x
    q_op [Expr a, MkString op, Expr b] = Expr (Func op [a, b])
    p_term x = orElseMap (seQ q_func [p_ident, look_for '(', list_of p_expr ',', look_for ')']) p_prim x
    q_func [MkString fun, lb, List args, rb] = Expr (Func fun (map unExpr args))
    p_prim x = orElseMap p_name (seQ (\x -> atIndex 1 x) [look_for '(', p_expr, look_for ')']) x
    p_name x = build q_name p_ident x
    q_name (MkString s) = if ((int_of_char (atIndex 0 s)) >= (int_of_char 'a')) && ((int_of_char (atIndex 0 s)) <= (int_of_char 'z')) then Expr (Var s) else Expr (Func s [])
    p_ident x = sp (string_of alphanum) x
    p_op x = sp (string_of opsym) x
    opsym x = (\x -> inList x ['*', '+', '%', '@', '-', '/', '?', ':']) x
    alphanum c = ((((int_of_char c) >= (int_of_char 'A')) && ((int_of_char c) <= (int_of_char 'Z'))) ||
                (((int_of_char c) >= (int_of_char 'a')) && ((int_of_char c) <= (int_of_char 'z'))) ||
                (((int_of_char c) >= (int_of_char '0')) && ((int_of_char c) <= (int_of_char '9'))))
    ----- parsing -----
    g_init exp = [exp]
    g_first ((Func f a) : z) = Afunc f
    g_first ((Var v) : z) = Avar
    g_rest ((Func f a) : z) = a ++ z
    g_rest ((Var v) : z) = z
    g_skip x = tail x
    preorder z = if eqListExpr z [] then [] else ([g_first z] ++ (preorder (g_rest z)))
    empty_net = Return []
    is_switch (Switch alist defalt) = True
    is_switch (Return eqns) = False
    find :: EXPR -> DNET -> [EQUATION]
    find exp d = find' (g_init exp) d
    find' z (Return eqns) = eqns
    find' z (Switch alist defalt)
        = (find_assoc (g_first z) (g_rest z) alist) ++ (find' (g_skip z) defalt)
    find_assoc (Afunc f) z alist
        = getOrElse (lift (find' z) (assoc alist f)) []
    find_assoc Avar z alist = []
    mk_dnet :: [EQUATION] -> DNET
    mk_dnet x = foldl add_eqn empty_net x
    add_eqn :: DNET -> EQUATION -> DNET
    add_eqn d eqn = thread (preorder (g_init (lhs eqn))) eqn d
    thread :: [TOKEN] -> EQUATION -> DNET -> DNET
    thread ((Afunc f) : z) e (Switch alist defalt) = Switch (update_alist f (thread z e) empty_net alist) defalt
    thread (Avar : z) e (Switch alist defalt) = Switch alist (thread z e defalt)
    thread [] e (Return eqns) = Return (e : eqns)
    thread ((Afunc f) : z) e (Return eqns) = thread ((Afunc f) : z) e (Switch [] (Return eqns))
    thread (Avar : z) e (Return eqns) =
      let d' = thread z e (Return eqns) in
      if is_switch d' then Switch [] d' else  d'
    super_reduce d = inside (dnet_reduce d)
    dnet_reduce d t = try_all (map rewrite (find t d)) t
    num_order :: ORDERING NUM
    num_order (i, j) =
      if i > j then
        Greater
      else if i < j then
        Less
      else
        Equal
    rank_order :: (a -> NUM) -> ORDERING a
    rank_order rank (x, y) = num_order (rank x, rank y)
    delete :: RELATION a b -> a -> [b] -> Maybe [b]
    delete eqRewrite x [] = croak
    delete eqRewrite x (y:ys) = if eqRewrite x y then succeed ys else lift (\x -> y:x) (delete eqRewrite x ys)
    rem_eq :: RELATION a b -> ([a], [b]) -> ([a], [b])
    rem_eq eqRewrite ([], ys) = ([], ys)
    rem_eq eqRewrite (x:xs, ys) =
      let add_x = \xsys -> case xsys of {(xs', ys') -> ((x:xs'), ys')} in
      getOrElse (lift (rem_eq eqRewrite . pair xs) (delete eqRewrite x ys)) (add_x (rem_eq eqRewrite (xs, ys)))
    dominates :: ORDERING a -> RELATION [a] [a]
    dominates ord = quant all (quant any (gtRewrite ord))
    multi :: ORDERING a -> ORDERING [a]
    multi ord (a, b) =
      case rem_eq (eqRewrite ord) (a, b) of
        (a', b') -> if dominates ord a' b' then Greater else (if dominates ord b' a' then Less else Unrelated)
    lexico :: ORDERING a -> ORDERING [a]
    lexico ord ([], []) = Equal
    lexico ord (x:a, []) = Greater
    lexico ord ([], y:b) = Less
    lexico ord (x:a, y:b) = lex_combine (ord (x, y)) (lexico ord (a, b))
    lex_combine Equal o = o
    lex_combine Greater o = Greater
    lex_combine Less o = Less
    lex_combine Unrelated o = Unrelated
    multi_ext :: EXTENSION
    multi_ext ord (Func f a, Func g b) = multi ord (a, b)
    lex_ext :: EXTENSION
    lex_ext ord (Func f a, Func g b) =
      let estimate = lexico ord (a, b) in
      let confirm = \x -> case x of {
        Equal     -> True;
        Greater   -> quant all (ltRewrite ord) (Func f a) b;
        Less      -> quant all (ltRewrite ord) (Func g b) a;
        Unrelated -> False;
      } in
      if confirm estimate then estimate
      else if quant any (geRewrite ord) (Func g b) a then Greater
      else if quant any (geRewrite ord) (Func f a) b then Less
      else Unrelated
    rpo :: ORDERING FUNC -> EXTENSION -> ORDERING EXPR
    rpo ord ext =
      let rpo' = \param -> case param of {
        (Var x, Var y)       -> if polyEq x y then Equal else Unrelated;
        (Var x, Func f a)    -> if occurs x (Func f a) then Less else Unrelated;
        (Func f a, Var x)    -> if occurs x (Func f a) then Greater else Unrelated;
        (Func f a, Func g b) -> case (ord (f, g)) of {
                                  Equal     -> ext (rpo') (Func f a, Func g b);
                                  Greater   -> if quant all (ltRewrite rpo') (Func f a) b then Greater
                                              else if quant any (geRewrite rpo') (Func f a) b then Less
                                              else Unrelated;
                                  Less      -> if quant all (ltRewrite rpo') (Func g b) a then Less
                                              else if quant any (geRewrite rpo') (Func g b) a then Greater
                                              else Unrelated;
                                  Unrelated -> Unrelated;
                                };
        _ -> error "error"
      } in
      rpo'
    item_cost (Item c e) = c
    mk_item :: (EXPR_PAIR -> NUM) -> CRIT_PAIR -> ITEM
    mk_item cfun eqn = Item (cfun eqn) eqn
    addby :: (a -> NUM) -> [a] -> [a] -> [a]
    addby f xs ys =
      let insert = \x -> \ls -> case ls of {
        [] -> [x];
        (y:ys) -> if (f x) <= (f y) then x:(y:ys) else y:(insert x ys)
      } in
      foldr insert ys xs
    add_agenda :: (EXPR_PAIR -> NUM) -> [CRIT_PAIR] -> AGENDA -> AGENDA
    add_agenda cfun eqns = addby item_cost (map (mk_item cfun) eqns)
    superpose :: EXPR -> EXPR -> [(PATH, SUBST)]
    superpose t u = sift [ lift (pair k) (unify t w) | (k, w) <- subterms u ]
    strict_super :: EXPR -> EXPR -> [(PATH, SUBST)]
    strict_super t (Func f a) = [ (i:k, s) | (i, u) <- (zip_lz_nl [0..] a), (k, s) <- superpose t u ]
    mk_crit :: EQUATION -> EQUATION -> (PATH, SUBST) -> CRIT_PAIR
    mk_crit (Eqn n1 (l1, r1)) (Eqn n2 (l2, r2)) (k, s) = (sub (replace l2 k r1) s, sub r2 s)
    crit_pairs :: EQUATION -> EQUATION -> [CRIT_PAIR]
    crit_pairs e1 e2 =
      (map (mk_crit e1 e2) (superpose (lhs e1) (lhs e2))) ++ (map (mk_crit e2 e1) (strict_super (lhs e2) (lhs e1)))
    all_crit_pairs :: EQUATION -> [EQUATION] -> [CRIT_PAIR]
    all_crit_pairs eqn theory =
      let eqn' = stand_eqn "1" eqn in
      let eqn'' = stand_eqn "2" eqn in
      let theory'' = map (stand_eqn "2") theory in
      (map (mk_crit eqn' eqn'') (strict_super (lhs eqn') (lhs eqn''))) ++ (concat (map (crit_pairs eqn') theory''))
    knuth_bendix :: ORDERING EXPR -> [EXPR_PAIR] -> DNET
    knuth_bendix ord axs = knuth_bendix1 (ord, cost) axs
    knuth_bendix1 datums axs = process datums 1 [] empty_net (add_agenda (snd datums) axs [])
    process :: KB_DATA -> NUM -> [EQUATION] -> DNET -> AGENDA -> DNET
    process datums n thy net [] = net
    process datums n thy net ((Item w eqn) : todo) = process1 datums n thy net todo (preprocess net eqn)
    preprocess :: DNET -> CRIT_PAIR -> CRIT_PAIR
    preprocess net (lhs, rhs) = (simplify (super_reduce net) lhs, simplify (super_reduce net) rhs)
    process1 :: KB_DATA -> NUM -> [EQUATION] -> DNET -> AGENDA -> CRIT_PAIR -> DNET
    process1 datums n thy net todo (lhs, rhs) =
      let o = (fst datums) (lhs, rhs) in
      case o of
            Unrelated -> process datums n thy net (add_agenda (\dum -> 1000) [(lhs, rhs)] todo)
            Equal ->     process datums n thy net todo
            _ ->
              let eqn = case o of { Greater -> Eqn n (lhs, rhs); Less -> Eqn n (rhs, lhs) } in
              process2 datums (n+1) thy net todo eqn
    process2 :: KB_DATA -> NUM -> [EQUATION] -> DNET -> AGENDA -> EQUATION -> DNET
    process2 datums n thy net todo new_rule =
      case (split (reducible (reduce1 new_rule)) thy) of { (deleted, thy') ->
      let net' = add_eqn (delete_eqns (map eqno deleted) net) new_rule in
      let deletions = map eqpr deleted in
      let critical = all_crit_pairs new_rule thy' in
      let new_agenda = sift (map (resolve (super_reduce net')) (deletions ++ critical)) in
      let todo' = add_agenda (snd datums) new_agenda todo in
      process datums n (thy' ++ [new_rule]) net' todo' }
    resolve :: TACTIC -> CRIT_PAIR -> Maybe CRIT_PAIR
    resolve tac pr =
      let lhs' = simplify tac (fst pr) in
      let rhs' = simplify tac (snd pr) in
      if eqExpr lhs' rhs' then croak else succeed (lhs', rhs')
    reducible :: TACTIC -> EQUATION -> Bool
    reducible tac (Eqn n (lhs, rhs)) = (exists (tac lhs)) || (exists (tac rhs))
    split :: (a -> Bool) -> [a] -> ([a], [a])
    split p xs =
      let tmp = (zip (map p xs) xs) in
      ([ x | (b, x) <- tmp, b ], [ x | (b, x) <- tmp, not(b) ])
    rank "E" = 1
    rank "*" = 2
    rank "I" = 3
testRewrite_nofib n = all result (copy n ("I(a * b)", "I(b) * I(a)"))
testRewrite_nofib $ primId 50
