copy n a       = if n > 0 then (a:(copy (n - 1) a)) else []
contains x (h:t) = (polyEq x h) || (contains x t)
contains x [] = False
clauseHelper (Dis p q)       x   = clauseHelper p (clauseHelper q x)
clauseHelper (Sym s)       (c,a) = (insert s c , a)
clauseHelper (Not (Sym s)) (c,a) = (c , insert s a)
clause p = clauseHelper p ([] , [])
clauses t = (concat . map disp . unicl . split . disin . negin . elim . parse) t
conjunct (Con p q) = True
conjunct p = False
disin (Dis p (Con q r)) = Con (disin (Dis p q)) (disin (Dis p r))
disin (Dis (Con p q) r) = Con (disin (Dis p r)) (disin (Dis q r))
disin (Dis p q) = let dp = disin p in (let dq = disin q in
                                      if ((conjunct dp) || (conjunct dq)) then disin (Dis dp dq)
                                      else (Dis dp dq))
disin (Con p q) = Con (disin p) (disin q)
disin p = p
disp (l,r) = (interleave l (spaces $ length l)) ++ "<=" ++ ((interleave (spaces $ length r) r) ++ "n")
elim (Sym s) = Sym s
elim (Not p) = Not (elim p)
elim (Dis p q) = Dis (elim p) (elim q)
elim (Con p q) = Con (elim p) (elim q)
elim (Imp p q) = Dis (Not (elim p)) (elim q)
elim (Eqv f f') = Con (elim (Imp f f')) (elim (Imp f' f))
insert x [] = [x]
insert x (y:ys) =
  if (polyLt x y) then x : (y:ys)
  else if (polyGt x y) then y : insert x ys
  else (y:ys)
interleave (x:xs) ys = x : interleave ys xs
interleave []     _  = []
negin (Not (Not p)) = negin p
negin (Not (Con p q)) = Dis (negin (Not p)) (negin (Not q))
negin (Not (Dis p q)) = Con (negin (Not p)) (negin (Not q))
negin (Dis p q) = Dis (negin p) (negin q)
negin (Con p q) = Con (negin p) (negin q)
negin p = p
opri '(' = 0
opri '=' = 1
opri '>' = 2
opri '|' = 3
opri '&' = 4
opri '~' = 5
parse t = case (parseHelper t []) of { [Ast f] -> f }
parseHelper [] s = redstar s
parseHelper (' ':t) s = parseHelper t s
parseHelper ('(':t) s = parseHelper t ((Lex '(') : s)
parseHelper (')':t) s = case (redstar s) of { (x : (Lex '(') : ss) -> parseHelper t (x:ss) }
parseHelper (c:t) s = if ((polyLeq 'a' c) && (polyLeq c 'z')) then parseHelper t ((Ast (Sym c)) : s)
                 else if (spri s) > (opri c) then parseHelper (c:t) (red s)
                 else parseHelper t ((Lex c) : s)
red ((Ast p) : (Lex '=') : (Ast q) : s) = (Ast (Eqv q p)) : s
red ((Ast p) : (Lex '>') : (Ast q) : s) = (Ast (Imp q p)) : s
red ((Ast p) : (Lex '|') : (Ast q) : s) = (Ast (Dis q p)) : s
red ((Ast p) : (Lex '&') : (Ast q) : s) = (Ast (Con q p)) : s
red ((Ast p) : (Lex '~') : s) = (Ast (Not p)) : s
redstar s = (while ((/=) 0 . spri) red) s
spaces n = copy n ' '
splitHelper (Con p q) a = splitHelper p (splitHelper q a)
splitHelper p a = p : a
split p = splitHelper p []
spri ((Ast x) : (Lex c) : s) = opri c
spri s = 0
tautclause (c,a) = polyNeq [x | x <- c, (contains x a)] []
uniclHelper p x = let cp = (clause p) in (if tautclause cp then x else insert cp x)
unicl a = foldr uniclHelper [] a
while p f x = if p x then while p f (f x) else x
testClausify_nofib n = let xs = (copy n "(a = a = a) = (a = a = a) = (a = a = a)") in (concat (map clauses xs))
testClausify_nofib $ primId 10
