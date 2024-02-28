{------------------------------------------------------------------------------
                                   KNOWLEDGE
Knowledge, in the form of sentences and phrases with variables in them, is
represented using a tree structure. Simple parsers are provided for rules,
goals, relations and nouns. Functions are provided for converting a text file
into a table of definitions and for accessing the table.
------------------------------------------------------------------------------}
-- module Knowledge where
-- import Result
-- import Table
-- import Data.List(nub)--1.3
-- The type `Phrase' is a tree-like data structure for storing sentences and
-- phrases. A phrase is usually a term consisting of a word with a list of
-- subphrases. Variables are picked out separately as they have a special role,
-- and a function is provided for extracting a duplicate-free list of the names
-- of the variables in a phrase. Variable names start with capital letters. A
-- single type is used rather than separate types for rules, goals, relations
-- and so on to make it easier to write the matching and searching modules.
strEq (ha:ta) hbtb = case hbtb of { (hb:tb) -> if polyEq ha hb then strEq ta tb else False; [] -> False }
strEq [] hbtb = case hbtb of { (hb:tb) -> False; [] -> True }
nub []             =  []
nub (x:xs)         =  x : nub (filter (\y -> not (polyEq x y)) xs)
inList x (h:t) = if polyEq x h then True else inList x t
inList x [] = False
takeWhile p [] = []
takeWhile p (x:xs) = if (p x) then x:(takeWhile p xs) else []
dropWhile f [] = []
dropWhile f (h:t) = if (f h) then dropWhile f t else (h:t)
or [] = False
or (h:t) = if h then True else or t
null [] = True
null (h:t) = False
fst (a,b) = a
foldr1 f (h:[]) = h
foldr1 f (h:t) = f h (foldr1 f t)
break p [] = ([], [])
break p (x:xs) = if p x then ([], (x:xs)) else case (break p xs) of { (ys, zs) -> ((x:ys), zs) }
isSpace c = polyEq c ' '
words s = case (dropWhile isSpace s) of
          [] -> []
          (h:t) -> case (break isSpace (h:t)) of (w, s'') -> (w : (words s''))
lines s = case break (\x -> polyEq x '|') s of
                  (l, s') -> (l:(case s' of { [] -> []; _:s'' -> lines s'' }))
drop n [] = []
drop n (h:t) = if n > 0 then (drop (n - 1) t) else (h:t)
-- manually added functions
data Phrase = Term String [Phrase] | Var String
vars p = nub (names p)
  where
    names (Var x) = [x]
    names (Term x ps) = concat [names p | p <- ps]
-- The display function `showPhrase' assumes that the only phrases are
-- variables, nouns, and pairs of subphrases with joining words between them.
showPhrase (Var x) = x
showPhrase (Term x []) = x
showPhrase (Term op [p1,p2]) = (showPhrase p1) ++ " " ++ op ++ " " ++ (showPhrase p2)
-- Each parser takes a list of words and returns a Phrase. The parsers for
-- rules, goals and relations involve finding the joining word and the two
-- lists of words on either side with `split', and then parsing the two lists.
-- A rule is a relation and a goal joined by `if'. A goal is a collection of
-- relations joined by `and' and `or', with `and' binding tighter. A relation
-- is two nouns joined by a verb, and a noun is a word, perhaps preceded by
-- `a', `an' or `the' for readability. These parsers are neither very general
-- (no brackets, for instance) nor very efficient, nor do they detect errors.
rule ws = split ws relation "if" goal
goal ws =
  if inList "or" ws then
    split ws goal "or" goal
  else if inList "and" ws then
    split ws goal "and" goal
  else
    relation ws
relation ws =
  let verbs = ["is","describes","has","can","eats"] in
  let verb = head [w | w<-ws, inList w verbs] in
  split ws noun verb noun
noun [a,x] = if inList a ["a","an","the"] then noun [a ++ " " ++ x] else error "noun error"
noun [x] = if (polyLeq 'A' (head x)) && (polyLeq (head x) 'Z') then Var x else Term x []
split ws f op g = Term op [f (takeWhile (\x -> not (strEq x op)) ws), g (tail (dropWhile (\x -> not (strEq x op)) ws))]
-- The `definitions' function takes a list of text lines and converts it into a
-- table of definitions. Each entry is a verb, together with the rules which
-- are define that verb. Each verb is either completely defined in the table
-- (eg `is', `describes') or is completely undefined so that the user has to be
-- asked (eg `has', `eats'). The `relevant' function extracts from the table
-- the list of rules which are relevant to a given relation.
definitions ls =
  let verb = \x -> case x of { (Term "if" [Term v ns, g]) -> v } in
  let rs = [rule (words l) | l<-ls] in
  let verbs = nub [verb r | r<-rs] in
  let def = \v -> [r | r<-rs, polyEq (verb r) v] in
  updateList newTable [(v, def v) | v<-verbs]
relevant defs (Term v ns) =
  let lookup = find (defs) v in
  if fails lookup then [] else answer lookup
{------------------------------------------------------------------------------
                                   MATCHING
This module provides a `match' function which implements the famous unification
algorithm. It takes a pair of `patterns', ie structures with variables in them,
matches them against each other, and extracts information about the values
which variables must have in order for the match to be successful. For example,
if `X has stripes' is matched against `Y has Z' then the match is successful,
and the information X=Y and Z=stripes is gleaned. The information about
variables is stored using the `Environment' type; a table which maps variable
names to phrases. The exports from this module are the `Environment' type and
the `match' function.
------------------------------------------------------------------------------}
-- module Match where
-- import Result
-- import Table
-- import Knowledge
-- The `Environment' type stores information about variables. The `subst'
-- function is used whenever a phrase contains variables about which
-- information may be known. The variables in the phrase are (recursively)
-- substituted by their values in the given environment.
type Environment = Table String Phrase
subst env (Term x ps) = Term x [subst env p | p<-ps]
subst env (Var x) =
  let lookup = find (env) x in
  if fails lookup then (Var x) else subst env (answer lookup)
-- The `match' function substitutes any known information about the variables
-- in its argument patterns before comparing them with `compear'.  The
-- `matchList' function deals with a list of pairs of patterns which need to be
-- matched. The information gleaned from each pair is used in matching the
-- next, and the final result contains all the information.
match env p1 p2 = compear env (subst env p1) (subst env p2)
matchList env [] = success env
matchList env ((p1,p2):pairs) =
  let res = match env p1 p2 in
  if fails res then res else matchList (answer res) pairs
-- The `compear' function is the heart of the algorithm. It compares two
-- phrases and updates the given environment accordingly. For normal terms, it
-- compares the joining words. If these are equal, then it compares
-- corresponding pairs of subphrases. If one or other of the phrases is a
-- variable, then it makes a suitable entry in the environment.
compear env (Term x1 ps1) (Term x2 ps2) =
  if polyEq x1 x2 then
    matchList env (zip ps1 ps2)
  else
    failure "no match"
compear env (Var x) (Var y) =
  if polyNeq x y then
    success (update env x (Var y))
  else 
    success env
compear env (Var x) p =
  if not (occurs (Var x) p) then
    success (update env x p)
  else
   failure "occurs check failed"
compear env p (Var x) = compear env (Var x) p
-- The `occurs' check makes sure that a variable does not itself occur in the
-- phrase which it is being set equal to. For example, if X were being set
-- equal to `the animal eats X', then there would be no solution for X,
-- indicating some sort of logical error.
occurs v (Term x ps) = or [occurs v p | p<-ps]
occurs (Var y) (Var x) = polyEq y x
occurs p (Var x) = False
{------------------------------------------------------------------------------
            RESULTS
RESULTS which may succeed or fail can be represented in two ways, both of which
have important advantages. When only one possible answer is expected, a tagged
union allows a value of one type (the answer) to be returned in the case of
success, and a value of a different type (a reason) to be returned in case of
failure.  The Result type is presented here as an (abstract) type with the
following functions:
   success a     creates a value representing a successful result with value a
   succeeds x    tests a result to see if it is successful
   answer x      extracts the answer from a successful result
   failure r     creates a failure value with reason r
   fails x       tests a result to see if it is a failure
   reason x      extracts the reason from a failed result
There is a potential confusion with the constructors Success and Failure which
are used by the IO Response type. The Answer and Reason constructors here are
not intended to be used directly in programs.
------------------------------------------------------------------------------}
-- module Result where
data Result a r = Answer a | Reason r
success a = Answer a
succeeds (Answer a) = True
succeeds _ = False
answer (Answer a) = a
failure r = Reason r
fails x = (not . succeeds) x
reason (Reason r) = r
-- The second representation of results, invaluable for use in search
-- algorithms which may produce many answers, is as a list of successful
-- answers. There is no provision for a reason to be given in the case of
-- failure, which is represented by []. The `answers' function converts from
-- the above representation to the new one, otherwise normal list operations
-- are used (eg `null' to test for failure).
answers (Answer a) = [a]
answers _ = []
{------------------------------------------------------------------------------
                                   SEARCHING
The `solve' function is the logical inference mechanism which allows the expert
system to search for solutions to goals, by making deductions from the stored
definitions and from the answers to the questions which it asks the user. This
is essentially the same as the inference mechanism which is built into logic
programming languages, with two main differences.  The first is that the search
algorithm has to be programmed explicitly, and the second is that interaction
with the user cannot be handled as a side effect; questions are returned as
part of the result, and answers are fed in as part of the argument.
------------------------------------------------------------------------------}
-- module Search where
-- import Result
-- import Table
-- import Knowledge
-- import Match
-- A call to `solve' returns a list of solutions and questions of type
-- `Solution'. Each solution will be preceded by the questions to which `solve'
-- needs answers in order to form that solution, and the answers to these
-- questions are passed to `solve' in its database argument. A solution
-- consists of an environment giving information about variables, and a list of
-- variable names which are not mentioned in the environment and are therefore
-- available for general use. In particular, the search procedure often calls
-- for a copy of a goal to be made using fresh variables, and the `freshCopy'
-- function performs this, returning a modified solution along with the copy.
data Solution = Soln Environment [String] | Question String
freshCopy (Soln env vs) p =
  let xs = vars p in
  let n = length xs in
  let tab = updateList newTable (zip xs [Var v | v <- take n vs]) in
  ((Soln env (drop n vs)), subst tab p)
-- The arguments to `solve' are: a database of stored definitions and
-- information gained from answers to questions, a partial solution
-- representing the information gained about variables so far in the search,
-- and a goal to be satisfied. The first equation allows questions which are
-- generated deep within the search to be passed up and out in the main
-- solution stream. Compound goals are solved by solving the two subgoals and
-- combining the solutions. In the case of `and', information gained in each
-- solution to the first subgoal is used in solving the second. A simple goal
-- (a relation) is solved either by consulting the stored definitions, or by
-- asking the user a question, depending on the verb in that relation.
solve db (Question q) g = [Question q]
solve db soln (Term "or" [g1,g2]) = (solve db soln g1) ++ (solve db soln g2)
solve db soln (Term "and" [g1,g2]) =
  concat [solve db res g2 | res <- solve db soln g1]
solve db soln g =
  case db of {
    (defs, info) ->
      let rs = relevant defs g in
      if not (null rs) then lookUp db soln g rs else ask info soln g
  }
-- To `lookUp' a simple goal using the list of rules `rs', a fresh copy of each
-- rule is made (to avoid name clashes with variables about which information
-- is already known), and `try' is used to see if the left hand side of the
-- rule matches the goal. If it does, the goal on the right hand side of the
-- rule is used to continue the search for solutions.
lookUp db soln g rs =
  let copies = [freshCopy soln r | r<-rs] in
  concat [try db soln' g r' | (soln',r') <- copies]
try db (Soln env vs) g (Term "if" [p,newg]) =
  let m = match env g p in
  if fails m then [] else solve db (Soln (answer m) vs) newg
-- If the solver must ask a question then that question is returned in the list
-- of solutions. The answer is then looked up in the table `info' of
-- questions-and-answers passed as an argument. If the answer is `yes', then
-- the current partial solution is returned. This assumes that questions
-- contain no variables, eg `the animal has stripes?'. Note that, as with other
-- interactive i/o functions, `ask' must return the question before testing the
-- answer.
ask info (Soln env vs) g =
  let sp = showPhrase (subst env g) in
  let ans = answer (find (info) sp) in
  (Question sp) : (if ans then [Soln env vs] else [])
-- SLPJ Nov 99
-- I've hauled out sp as a common sub expression; it was
-- duplicated before.  If we don't haul it out, it's a matter
-- of chance whether GHC spots it or not, and that makes the
-- numbers wobble around a lot.
{------------------------------------------------------------------------------
            TABLES
A Table is a set of entries, each containing a key and an associated value, the
key being used to look up the value.
In database-style applications, the value may be a record, and the key may be a
field in it. The normal effect of sharing of subexpressions should avoid
serious space problems. However, `computed' keys may cause a space problem.
Keys are assumed to be unique. The effect of non-unique keys can be obtained by
associated a list value such as [v1,v2,...] with each key.
With the `enterList' function, the first entry for a key takes precedence over
any later ones with the same key. This allows a table to be built `lazily', the
entries in the list only being evaluated as needed to satisfy `find' calls.
REQUIREMENTS:
   The results module `result.g' must be loaded before this one.
   The key type must be ordered (an instance of class Ord).
EXPORTS:
   Table k v        the type of tables; k and v are the key and value types
   newTable         an empty table
   enter t k v      add entry to t (no effect if old entry for k exists)
   enterList t es   add a list of (key,val) pairs to t
   update t k v     change entry in t (or add new entry if necessary)
   updateList t es  change a list of (key,val) pairs in t
   find t k         lookup k in t giving (success v) or (failure "not found")
   delete t k       remove entry in t for key k (if any)
   entries t        return list of all (key,val) pairs in t in key order
------------------------------------------------------------------------------}
-- module Table where
-- import Result
-- The implementation here uses a binary search tree, giving `log n' time
-- operations, provided that the tree remains well-balanced.  Eventually, there
-- should be a constant-time version with the same semantics.
-- // TODO: string comparison
data Table k v = Empty | Fork (Table k v) (k,v) (Table k v)
newTable = Empty
find info key =
  case info of
    Empty -> failure "not found"
    (Fork left (k,v) right) ->
      if polyLt key k then find left key
      else if polyEq key k then success v
      else if polyGt key k then find right key
      else error "find comparison error"
enter Empty key val = Fork Empty (key,val) Empty
enter (Fork left (k,v) right) key val =
  if polyLt key k then Fork (enter left key val) (k,v) right
  else if polyEq key k then Fork left (k,v) right
  else if polyGt key k then Fork left (k,v) (enter right key val)
  else error "enter comparison error"
update Empty key val = Fork Empty (key,val) Empty
update (Fork left (k,v) right) key val =
  if polyLt key k then Fork (update left key val) (k,v) right
  else if polyEq key k then Fork left (key,val) right
  else if polyGt key k then Fork left (k,v) (update right key val)
  else error "update comparison error"
delete Empty key = Empty
delete (Fork left (k,v) right) key =
  if polyLt key k then Fork (delete left key) (k,v) right
  else if polyEq key k then graft left right
  else if polyGt key k then Fork left (k,v) (delete right key)
  else error "delete comparison error"
    where
      graft left Empty = left
      graft left right = case (leftmost right) of { (e, right') -> Fork left e right' }
      leftmost (Fork Empty e r) = (e,r)
      leftmost (Fork l e r) = case (leftmost l) of { (e2, l') -> (e2, Fork l' e r) }
-- `enterList t es' adds a list of new entries. It is lazy in es (but may build
-- a poorly balanced tree).
enterList t [] = t
enterList Empty (e:res) =
  let k = fst e in
  let left = enterList Empty [e1 | e1<-res, polyLt (fst e1) k] in
  let right = enterList Empty [e1 | e1<-res, polyGt (fst e1) k] in
  Fork left e right
enterList (Fork left e right) es =
  let k = fst e in
  let left' = enterList left [e1 | e1<-es, polyLt (fst e1) k] in
  let right' = enterList right [e1 | e1<-es, polyGt (fst e1) k] in
  Fork left' e right'
-- `updateList t es' makes a list of updates. It is strict in es, and optimised
-- to produce a well balanced tree. it can be used with es==[] purely to
-- rebalance the tree.
updateList t es =
  balance (mergeKey (entries t) (unique (sortKey es)))
  where
  balance [] = Empty
  balance es =
    let m = (length es) `div` 2 in
    let left = balance (take m es) in
    let right = balance (drop (m+1) es) in
    Fork left (atIndex m es) right
  unique [] = []
  unique [e] = [e]
  unique ((k1,v1):(k2,v2):res) =
     if polyEq k1 k2 then unique ((k2,v2):res) else (k1,v1):(unique ((k2,v2):res))
sortKey kvs = foldr insertKey [] kvs
  where
    insertKey kv []          = [kv]
    insertKey (k1,v1) ((k2,v2):res) =
      if polyLeq k1 k2 then
        (k1,v1):(k2,v2):res
      else
        (k2,v2):(insertKey (k1,v1) res)
mergeKey [] kvs = kvs
mergeKey kvs [] = kvs
mergeKey ((k1,v1):kvs1) ((k2,v2):kvs2) =
        if polyLeq k1 k2 then (k1,v1) : (mergeKey kvs1 ((k2,v2):kvs2))
        else (k2,v2):(mergeKey ((k1,v1):kvs1) kvs2)
-- `entries t' returns the list of entries in t, sorted by key. Inefficient
-- unless tree-optimised version of ++ is used.
entries Empty  =  []
entries (Fork left e right)  =  (entries left) ++ [e] ++ (entries right)
-- The `strip' function takes the list of questions and solutions from the main
-- call to `solve' and removes all but the first occurrence of each question,
-- to make sure that the user is not asked the same question twice. The first
-- argument is a list of the questions seen so far.
strip qs [] = []
strip qs ((Question q) : rs) =
  if inList q qs then
    strip qs rs
  else
    ((Question q) : (strip (q:qs) rs))
strip qs (soln:rs) = (soln : (strip qs rs))
-- The display function displays a list of questions and solutions as a
-- character stream. It also takes the list of variable names in the original
-- goal to interpret solution environments using `showVars', and the list of
-- answers from the user to determine whether to continue displaying more
-- solutions.
display [] xs as = "No (more) solutions|"
display ((Question q) : rs) xs as =
  ("Is it true that ") ++ q ++ "?|" ++ (display rs xs (tail as))
display ((Soln env vs) : rs) xs as =
  let sol = showVars env xs in
  let etc = if ((polyEq as []) || (polyEq (head as) False)) then "" else display rs xs (tail as) in
  "Solution: " ++ sol ++ ". More?|" ++ etc
showVars env vs =
  let join = \x y -> x ++ "; " ++ y in
  let showVar = \v -> v ++ " = " ++ showPhrase (subst env (Var v)) in
  foldr1 join (map showVar vs)
process contents input =
  "Solving: " ++ (showPhrase (problem contents)) ++ "|" ++ (display (results contents input) (vars (problem contents)) (replies input))
  where
  newsoln = Soln newTable ['X' : (string_of_int n) | n <- [0..1]]
  problem contents = goal (words (head (lines contents)))
  defs contents = definitions (tail (lines contents))
  replies input = [polyNeq (words l) ["no"] | l <- lines input]
  db contents input = ((defs contents), (info contents input))
  info contents input = enterList newTable [(q,a) | (Question q, a) <- zip (results contents input) (replies input)]
  results contents input = strip [] (solve (db contents input) newsoln (problem contents))
-- // add primId because they are read from file and stdin
testExpert_nofib n =
  let animals = primId "the animal is X|X is a zebra if X has stripes and X has hooves|X is a tiger if X has stripes and X has claws|X is a dog if mammal describes X and X can bark|X is a cat if mammal describes X and X can mieow|mammal describes X if X has hair or X has milk|X is a bird if X has feathers|X is a bird if X can fly and X has eggs|X is a fish if X can swim and X has fins" in
  let contents = primId "No|No|You bet|Maybe|A tiger?|Unhuh|Yep|y|n|y|y|y|y|n" in
  (length . (process animals) . take (n + 9999)) contents
testExpert_nofib $ primId 3
