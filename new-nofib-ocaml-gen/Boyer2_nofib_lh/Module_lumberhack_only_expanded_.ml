

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec sublist_lh__d1 _lh_sublist_arg1_0 =
  (match _lh_sublist_arg1_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`Nil)))
    | `LH_C(_lh_sublist_LH_C_0_0, _lh_sublist_LH_C_1_0) -> 
      (match _lh_sublist_LH_C_0_0 with
        | `LH_C(_lh_sublist_LH_C_0_1, _lh_sublist_LH_C_1_1) -> 
          (match _lh_sublist_LH_C_0_1 with
            | '(' -> 
              (match _lh_sublist_LH_C_1_1 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_3 = (sublist_lh__d1 _lh_sublist_LH_C_1_0) in
                    (match _lh_matchIdent_3 with
                      | `LH_P2(_lh_sublist_LH_P2_0_0, _lh_sublist_LH_P2_1_0) -> 
                        (let rec _lh_matchIdent_4 = (sublist_lh__d1 _lh_sublist_LH_P2_0_0) in
                          (match _lh_matchIdent_4 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1, _lh_sublist_LH_P2_1_1) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_0, _lh_sublist_LH_P2_1_1))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_5 = (sublist_lh__d1 _lh_sublist_LH_C_1_0) in
                    (match _lh_matchIdent_5 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2, _lh_sublist_LH_P2_1_2) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_2))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_1 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_0, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_6 = (sublist_lh__d1 _lh_sublist_LH_C_1_0) in
                    (match _lh_matchIdent_6 with
                      | `LH_P2(_lh_sublist_LH_P2_0_3, _lh_sublist_LH_P2_1_3) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_3, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_3))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_7 = (sublist_lh__d1 _lh_sublist_LH_C_1_0) in
                (match _lh_matchIdent_7 with
                  | `LH_P2(_lh_sublist_LH_P2_0_4, _lh_sublist_LH_P2_1_4) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_4, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_4))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_8 = (sublist_lh__d1 _lh_sublist_LH_C_1_0) in
            (match _lh_matchIdent_8 with
              | `LH_P2(_lh_sublist_LH_P2_0_5, _lh_sublist_LH_P2_1_5) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_5, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_5))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec mkLisplist_lh__d1 _lh_mkLisplist_arg1_1 =
  (match _lh_mkLisplist_arg1_1 with
    | `LH_C(_lh_mkLisplist_LH_C_0_2, _lh_mkLisplist_LH_C_1_2) -> 
      (match _lh_mkLisplist_LH_C_0_2 with
        | `LH_C(_lh_mkLisplist_LH_C_0_3, _lh_mkLisplist_LH_C_1_3) -> 
          (match _lh_mkLisplist_LH_C_0_3 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_3 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1_4 = (sublist_lh__d1 _lh_mkLisplist_LH_C_1_2) in
                    (match _lh_matchIdent_1_4 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_1, _lh_mkLisplist_LH_P2_1_1) -> 
                        (let rec _lh_matchIdent_1_5 = _lh_mkLisplist_LH_P2_0_1 in
                          (match _lh_matchIdent_1_5 with
                            | `LH_N -> 
                              _lh_mkLisplist_LH_P2_1_1
                            | _ -> 
                              (`Nil)))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (`Nil))
            | _ -> 
              (`Nil))
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec mappend_lh__d3 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d3 t_2) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend_lh__d1 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d1 t_4) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_lh__d5 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d5 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend_lh__d4 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d4 t_1) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec restOfToken_lh__d1 _lh_restOfToken_arg1_0 =
  (match _lh_restOfToken_arg1_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_0, _lh_restOfToken_LH_C_1_0) -> 
      (if (((_lh_restOfToken_LH_C_0_0 = '(') || (_lh_restOfToken_LH_C_0_0 = ')')) || (_lh_restOfToken_LH_C_0_0 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_0, _lh_restOfToken_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_1 = (restOfToken_lh__d1 _lh_restOfToken_LH_C_1_0) in
          (match _lh_matchIdent_1 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_0, _lh_restOfToken_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_0, _lh_restOfToken_LH_P2_0_0)), _lh_restOfToken_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec getToken_lh__d1 _lh_getToken_arg1_0 =
  (match _lh_getToken_arg1_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_getToken_LH_C_0_0, _lh_getToken_LH_C_1_0) -> 
      (if (_lh_getToken_LH_C_0_0 = ' ') then
        (getToken_lh__d1 _lh_getToken_LH_C_1_0)
      else
        (if ((_lh_getToken_LH_C_0_0 = '(') || (_lh_getToken_LH_C_0_0 = ')')) then
          (`LH_P2((`LH_C(_lh_getToken_LH_C_0_0, (`LH_N))), _lh_getToken_LH_C_1_0))
        else
          (let rec _lh_matchIdent_9 = (restOfToken_lh__d1 _lh_getToken_LH_C_1_0) in
            (match _lh_matchIdent_9 with
              | `LH_P2(_lh_getToken_LH_P2_0_0, _lh_getToken_LH_P2_1_0) -> 
                (`LH_P2((`LH_C(_lh_getToken_LH_C_0_0, _lh_getToken_LH_P2_0_0)), _lh_getToken_LH_P2_1_0))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"));;
let rec strToToken_lh__d1 _lh_strToToken_arg1_1 =
  (match _lh_strToToken_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_1_6 = (getToken_lh__d1 _lh_strToToken_arg1_1) in
        (match _lh_matchIdent_1_6 with
          | `LH_P2(_lh_strToToken_LH_P2_0_1, _lh_strToToken_LH_P2_1_1) -> 
            (`LH_C(_lh_strToToken_LH_P2_0_1, (strToToken_lh__d1 _lh_strToToken_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))));;
let rec mappend_lh__d2 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d2 t_3) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec subterm_lh__d1 _lh_subterm_arg1_0 =
  (let rec c_0 = ((mappend_lh__d4 (`LH_C('c', (`LH_N)))) (string_of_int _lh_subterm_arg1_0)) in
    (let rec str_0 = ((mappend_lh__d3 ((mappend_lh__d5 ((mappend_lh__d2 ((mappend_lh__d1 (`LH_C('(', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_0)) (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_0)) (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('[', (`LH_C(']', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('w', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (mkLisplist_lh__d1 (strToToken_lh__d1 str_0))));;
let rec assoc_lh__d1 _lh_assoc_arg1_0 =
  (match _lh_assoc_arg1_0 with
    | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
      (match _lh_assoc_LH_P2_1_0 with
        | `Cons(_lh_assoc_Cons_0_0) -> 
          (match _lh_assoc_Cons_0_0 with
            | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
              (let rec _lh_matchIdent_1_7 = _lh_assoc_LH_P2_0_1 in
                (match _lh_matchIdent_1_7 with
                  | `Cons(_lh_assoc_Cons_0_1) -> 
                    (match _lh_assoc_Cons_0_1 with
                      | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
                        (match _lh_assoc_LH_P2_0_2 with
                          | `Atom(_lh_assoc_Atom_0_0) -> 
                            (if (_lh_assoc_LH_P2_0_0 = (`Atom(_lh_assoc_Atom_0_0))) then
                              _lh_assoc_LH_P2_0_1
                            else
                              (assoc_lh__d1 (`LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_1))))
                          | _ -> 
                            (`Nil))
                      | _ -> 
                        (`Nil))
                  | _ -> 
                    (`Nil)))
            | _ -> 
              (`Nil))
        | _ -> 
          (`Nil))
    | _ -> 
      (failwith "error"));;
let rec applysubst_lh__d1 _lh_applysubst_arg1_1 _lh_applysubst_arg2_1 =
  (match _lh_applysubst_arg2_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_1) -> 
      (let rec _lh_matchIdent_1_9 = (assoc_lh__d1 (`LH_P2((`Atom(_lh_applysubst_Atom_0_1)), _lh_applysubst_arg1_1))) in
        (match _lh_matchIdent_1_9 with
          | `Cons(_lh_applysubst_Cons_0_2) -> 
            (match _lh_applysubst_Cons_0_2 with
              | `LH_P2(_lh_applysubst_LH_P2_0_2, _lh_applysubst_LH_P2_1_2) -> 
                _lh_applysubst_LH_P2_1_2
              | _ -> 
                (`Atom(_lh_applysubst_Atom_0_1)))
          | _ -> 
            (`Atom(_lh_applysubst_Atom_0_1))))
    | `Cons(_lh_applysubst_Cons_0_3) -> 
      (match _lh_applysubst_Cons_0_3 with
        | `LH_P2(_lh_applysubst_LH_P2_0_3, _lh_applysubst_LH_P2_1_3) -> 
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_3, ((applysubstlst_lh__d1 _lh_applysubst_arg1_1) _lh_applysubst_LH_P2_1_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
applysubstlst_lh__d1 _lh_applysubstlst_arg1_0 _lh_applysubstlst_arg2_0 =
  (match _lh_applysubstlst_arg2_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_0) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_0) -> 
      (match _lh_applysubstlst_Cons_0_0 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_0, _lh_applysubstlst_LH_P2_1_0) -> 
          (`Cons((`LH_P2(((applysubst_lh__d1 _lh_applysubstlst_arg1_0) _lh_applysubstlst_LH_P2_0_0), ((applysubstlst_lh__d1 _lh_applysubstlst_arg1_0) _lh_applysubstlst_LH_P2_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec strToToken_lh__d2 _lh_strToToken_arg1_0 =
  (match _lh_strToToken_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_1_3 = (getToken_lh__d1 _lh_strToToken_arg1_0) in
        (match _lh_matchIdent_1_3 with
          | `LH_P2(_lh_strToToken_LH_P2_0_0, _lh_strToToken_LH_P2_1_0) -> 
            (`LH_C(_lh_strToToken_LH_P2_0_0, (strToToken_lh__d2 _lh_strToToken_LH_P2_1_0)))
          | _ -> 
            (failwith "error"))));;
let rec mkLisplist_lh__d2 _lh_mkLisplist_arg1_0 =
  (match _lh_mkLisplist_arg1_0 with
    | `LH_C(_lh_mkLisplist_LH_C_0_0, _lh_mkLisplist_LH_C_1_0) -> 
      (match _lh_mkLisplist_LH_C_0_0 with
        | `LH_C(_lh_mkLisplist_LH_C_0_1, _lh_mkLisplist_LH_C_1_1) -> 
          (match _lh_mkLisplist_LH_C_0_1 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_1 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1_1 = (sublist_lh__d1 _lh_mkLisplist_LH_C_1_0) in
                    (match _lh_matchIdent_1_1 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_0, _lh_mkLisplist_LH_P2_1_0) -> 
                        (let rec _lh_matchIdent_1_2 = _lh_mkLisplist_LH_P2_0_0 in
                          (match _lh_matchIdent_1_2 with
                            | `LH_N -> 
                              _lh_mkLisplist_LH_P2_1_0
                            | _ -> 
                              (`Nil)))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (`Nil))
            | _ -> 
              (`Nil))
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec statement_lh__d1 _lh_statement_arg1_0 =
  (mkLisplist_lh__d2 (strToToken_lh__d2 (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec teststatement_lh__d1 _lh_teststatement_arg1_0 =
  ((applysubst_lh__d1 (subterm_lh__d1 _lh_teststatement_arg1_0)) (statement_lh__d1 0));;
let rec getLUT_lh__d1 _lh_getLUT_arg1_0 =
  (match _lh_getLUT_arg1_0 with
    | `LH_P2(_lh_getLUT_LH_P2_0_0, _lh_getLUT_LH_P2_1_0) -> 
      (match _lh_getLUT_LH_P2_1_0 with
        | `Empty -> 
          (`LH_N)
        | `Node(_lh_getLUT_Node_0_0) -> 
          (match _lh_getLUT_Node_0_0 with
            | `LH_P3(_lh_getLUT_LH_P3_0_0, _lh_getLUT_LH_P3_1_0, _lh_getLUT_LH_P3_2_0) -> 
              (match _lh_getLUT_LH_P3_1_0 with
                | `LH_P2(_lh_getLUT_LH_P2_0_1, _lh_getLUT_LH_P2_1_1) -> 
                  (if (_lh_getLUT_LH_P2_0_0 = _lh_getLUT_LH_P2_0_1) then
                    _lh_getLUT_LH_P2_1_1
                  else
                    (if (_lh_getLUT_LH_P2_0_0 < _lh_getLUT_LH_P2_0_1) then
                      (getLUT_lh__d1 (`LH_P2(_lh_getLUT_LH_P2_0_0, _lh_getLUT_LH_P3_0_0)))
                    else
                      (getLUT_lh__d1 (`LH_P2(_lh_getLUT_LH_P2_0_0, _lh_getLUT_LH_P3_2_0)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec car_lh__d8 _lh_car_arg1_0 =
  (match _lh_car_arg1_0 with
    | `Cons(_lh_car_Cons_0_0) -> 
      (match _lh_car_Cons_0_0 with
        | `LH_P2(_lh_car_LH_P2_0_0, _lh_car_LH_P2_1_0) -> 
          _lh_car_LH_P2_0_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_lh__d6 _lh_cdr_arg1_0 =
  (match _lh_cdr_arg1_0 with
    | `Cons(_lh_cdr_Cons_0_0) -> 
      (match _lh_cdr_Cons_0_0 with
        | `LH_P2(_lh_cdr_LH_P2_0_0, _lh_cdr_LH_P2_1_0) -> 
          _lh_cdr_LH_P2_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cadr_lh__d3 _lh_cadr_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    (car_lh__d8 (cdr_lh__d6 _lh_funcomp_x_2))) _lh_cadr_arg1_0);;
let rec caddr_lh__d3 _lh_caddr_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      (car_lh__d8 (cdr_lh__d6 _lh_funcomp_x_1))) (cdr_lh__d6 _lh_funcomp_x_0))) _lh_caddr_arg1_0);;
let rec atom_lh__d1 _lh_atom_arg1_0 =
  (match _lh_atom_arg1_0 with
    | `Atom(_lh_atom_Atom_0_0) -> 
      true
    | _ -> 
      false);;
let rec onewayunify1_lh__d1 _lh_onewayunify1_arg1_0 _lh_onewayunify1_arg2_0 _lh_onewayunify1_arg3_0 =
  (if (atom_lh__d1 _lh_onewayunify1_arg2_0) then
    (let rec _lh_matchIdent_2 = (assoc_lh__d1 (`LH_P2(_lh_onewayunify1_arg2_0, _lh_onewayunify1_arg3_0))) in
      (match _lh_matchIdent_2 with
        | `Cons(_lh_onewayunify1_Cons_0_0) -> 
          (match _lh_onewayunify1_Cons_0_0 with
            | `LH_P2(_lh_onewayunify1_LH_P2_0_0, _lh_onewayunify1_LH_P2_1_0) -> 
              (`LH_P2((_lh_onewayunify1_arg1_0 = _lh_onewayunify1_LH_P2_1_0), _lh_onewayunify1_arg3_0))
            | _ -> 
              (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_0, _lh_onewayunify1_arg1_0)))), _lh_onewayunify1_arg3_0)))))))
        | _ -> 
          (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_0, _lh_onewayunify1_arg1_0)))), _lh_onewayunify1_arg3_0))))))))
  else
    (if (atom_lh__d1 _lh_onewayunify1_arg1_0) then
      (`LH_P2(false, _lh_onewayunify1_arg3_0))
    else
      (if ((car_lh__d8 _lh_onewayunify1_arg1_0) = (car_lh__d8 _lh_onewayunify1_arg2_0)) then
        (((onewayunify1lst_lh__d1 (cdr_lh__d6 _lh_onewayunify1_arg1_0)) (cdr_lh__d6 _lh_onewayunify1_arg2_0)) _lh_onewayunify1_arg3_0)
      else
        (`LH_P2(false, _lh_onewayunify1_arg3_0)))))
and
onewayunify1lst_lh__d1 _lh_onewayunify1lst_arg1_0 _lh_onewayunify1lst_arg2_0 _lh_onewayunify1lst_arg3_0 =
  (match _lh_onewayunify1lst_arg1_0 with
    | `Nil -> 
      (`LH_P2(true, _lh_onewayunify1lst_arg3_0))
    | _ -> 
      (let rec _lh_matchIdent_0 = (((onewayunify1_lh__d1 (car_lh__d8 _lh_onewayunify1lst_arg1_0)) (car_lh__d8 _lh_onewayunify1lst_arg2_0)) _lh_onewayunify1lst_arg3_0) in
        (match _lh_matchIdent_0 with
          | `LH_P2(_lh_onewayunify1lst_LH_P2_0_0, _lh_onewayunify1lst_LH_P2_1_0) -> 
            (if _lh_onewayunify1lst_LH_P2_0_0 then
              (((onewayunify1lst_lh__d1 (cdr_lh__d6 _lh_onewayunify1lst_arg1_0)) (cdr_lh__d6 _lh_onewayunify1lst_arg2_0)) _lh_onewayunify1lst_LH_P2_1_0)
            else
              (`LH_P2(false, _lh_onewayunify1lst_LH_P2_1_0)))
          | _ -> 
            (failwith "error"))));;
let rec onewayunify_lh__d1 _lh_onewayunify_arg1_0 _lh_onewayunify_arg2_0 =
  (((onewayunify1_lh__d1 _lh_onewayunify_arg1_0) _lh_onewayunify_arg2_0) (`Nil));;
let rec applysubst_lh__d2 _lh_applysubst_arg1_0 _lh_applysubst_arg2_0 =
  (match _lh_applysubst_arg2_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_0) -> 
      (let rec _lh_matchIdent_1_0 = (assoc_lh__d1 (`LH_P2((`Atom(_lh_applysubst_Atom_0_0)), _lh_applysubst_arg1_0))) in
        (match _lh_matchIdent_1_0 with
          | `Cons(_lh_applysubst_Cons_0_0) -> 
            (match _lh_applysubst_Cons_0_0 with
              | `LH_P2(_lh_applysubst_LH_P2_0_0, _lh_applysubst_LH_P2_1_0) -> 
                _lh_applysubst_LH_P2_1_0
              | _ -> 
                (`Atom(_lh_applysubst_Atom_0_0)))
          | _ -> 
            (`Atom(_lh_applysubst_Atom_0_0))))
    | `Cons(_lh_applysubst_Cons_0_1) -> 
      (match _lh_applysubst_Cons_0_1 with
        | `LH_P2(_lh_applysubst_LH_P2_0_1, _lh_applysubst_LH_P2_1_1) -> 
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_1, ((applysubstlst_lh__d1 _lh_applysubst_arg1_0) _lh_applysubst_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec tv_lh__d1 _lh_tv_arg1_0 =
  (match _lh_tv_arg1_0 with
    | `Atom(_lh_tv_Atom_0_0) -> 
      _lh_tv_Atom_0_0
    | _ -> 
      (failwith "error"));;
let rec rewrite_lh__d1 _lh_rewrite_arg1_0 _lh_rewrite_arg2_0 =
  (match _lh_rewrite_arg1_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewrite_Atom_0_0) -> 
      (`Atom(_lh_rewrite_Atom_0_0))
    | `Cons(_lh_rewrite_Cons_0_0) -> 
      (match _lh_rewrite_Cons_0_0 with
        | `LH_P2(_lh_rewrite_LH_P2_0_0, _lh_rewrite_LH_P2_1_0) -> 
          (((rewritewithlemmas_lh__d1 (`Cons((`LH_P2(_lh_rewrite_LH_P2_0_0, ((rewriteargs_lh__d1 _lh_rewrite_LH_P2_1_0) _lh_rewrite_arg2_0)))))) (getLUT_lh__d1 (`LH_P2((tv_lh__d1 _lh_rewrite_LH_P2_0_0), _lh_rewrite_arg2_0)))) _lh_rewrite_arg2_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
rewriteargs_lh__d1 _lh_rewriteargs_arg1_0 _lh_rewriteargs_arg2_0 =
  (match _lh_rewriteargs_arg1_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewriteargs_Atom_0_0) -> 
      (failwith "error")
    | `Cons(_lh_rewriteargs_Cons_0_0) -> 
      (match _lh_rewriteargs_Cons_0_0 with
        | `LH_P2(_lh_rewriteargs_LH_P2_0_0, _lh_rewriteargs_LH_P2_1_0) -> 
          (`Cons((`LH_P2(((rewrite_lh__d1 _lh_rewriteargs_LH_P2_0_0) _lh_rewriteargs_arg2_0), ((rewriteargs_lh__d1 _lh_rewriteargs_LH_P2_1_0) _lh_rewriteargs_arg2_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
rewritewithlemmas_lh__d1 _lh_rewritewithlemmas_arg1_0 _lh_rewritewithlemmas_arg2_0 _lh_rewritewithlemmas_arg3_0 =
  (match _lh_rewritewithlemmas_arg2_0 with
    | `LH_N -> 
      _lh_rewritewithlemmas_arg1_0
    | `LH_C(_lh_rewritewithlemmas_LH_C_0_0, _lh_rewritewithlemmas_LH_C_1_0) -> 
      (let rec _lh_matchIdent_1_8 = ((onewayunify_lh__d1 _lh_rewritewithlemmas_arg1_0) (cadr_lh__d3 _lh_rewritewithlemmas_LH_C_0_0)) in
        (match _lh_matchIdent_1_8 with
          | `LH_P2(_lh_rewritewithlemmas_LH_P2_0_0, _lh_rewritewithlemmas_LH_P2_1_0) -> 
            (if _lh_rewritewithlemmas_LH_P2_0_0 then
              ((rewrite_lh__d1 ((applysubst_lh__d2 _lh_rewritewithlemmas_LH_P2_1_0) (caddr_lh__d3 _lh_rewritewithlemmas_LH_C_0_0))) _lh_rewritewithlemmas_arg3_0)
            else
              (((rewritewithlemmas_lh__d1 _lh_rewritewithlemmas_arg1_0) _lh_rewritewithlemmas_LH_C_1_0) _lh_rewritewithlemmas_arg3_0))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d2_d2 _lh_lispmember_arg1_2 =
  (match _lh_lispmember_arg1_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_4) -> 
      (match _lh_lispmember_LH_P2_1_4 with
        | `Cons(_lh_lispmember_Cons_0_2) -> 
          (match _lh_lispmember_Cons_0_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5, _lh_lispmember_LH_P2_1_5) -> 
              (if (_lh_lispmember_LH_P2_0_4 = _lh_lispmember_LH_P2_0_5) then
                true
              else
                (lispmember_lh__d2_d2 (`LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d2_d4 _lh_lispmember_arg1_0 =
  (match _lh_lispmember_arg1_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_0, _lh_lispmember_LH_P2_1_0) -> 
      (match _lh_lispmember_LH_P2_1_0 with
        | `Cons(_lh_lispmember_Cons_0_0) -> 
          (match _lh_lispmember_Cons_0_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1, _lh_lispmember_LH_P2_1_1) -> 
              (if (_lh_lispmember_LH_P2_0_0 = _lh_lispmember_LH_P2_0_1) then
                true
              else
                (lispmember_lh__d2_d4 (`LH_P2(_lh_lispmember_LH_P2_0_0, _lh_lispmember_LH_P2_1_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d2_d3 _lh_lispmember_arg1_1 =
  (match _lh_lispmember_arg1_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_2) -> 
      (match _lh_lispmember_LH_P2_1_2 with
        | `Cons(_lh_lispmember_Cons_0_1) -> 
          (match _lh_lispmember_Cons_0_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3, _lh_lispmember_LH_P2_1_3) -> 
              (if (_lh_lispmember_LH_P2_0_2 = _lh_lispmember_LH_P2_0_3) then
                true
              else
                (lispmember_lh__d2_d3 (`LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec truep_lh__d3 _lh_truep_arg1_0 =
  (match _lh_truep_arg1_0 with
    | `LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0) -> 
      (match _lh_truep_LH_P2_0_0 with
        | `Nil -> 
          false
        | `Cons(_lh_truep_Cons_0_0) -> 
          (match _lh_truep_Cons_0_0 with
            | `LH_P2(_lh_truep_LH_P2_0_1, _lh_truep_LH_P2_1_1) -> 
              (match _lh_truep_LH_P2_0_1 with
                | `Atom(_lh_truep_Atom_0_0) -> 
                  (match _lh_truep_Atom_0_0 with
                    | `LH_C(_lh_truep_LH_C_0_0, _lh_truep_LH_C_1_0) -> 
                      (match _lh_truep_LH_C_0_0 with
                        | 't' -> 
                          (match _lh_truep_LH_C_1_0 with
                            | `LH_N -> 
                              (match _lh_truep_LH_P2_1_1 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember_lh__d2_d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                            | _ -> 
                              (lispmember_lh__d2_d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                        | _ -> 
                          (lispmember_lh__d2_d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                    | _ -> 
                      (lispmember_lh__d2_d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                | _ -> 
                  (lispmember_lh__d2_d3 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
            | _ -> 
              (lispmember_lh__d2_d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
        | _ -> 
          (lispmember_lh__d2_d2 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d9 _lh_lispmember_arg1_1_5 =
  (match _lh_lispmember_arg1_1_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_0, _lh_lispmember_LH_P2_1_3_0) -> 
      (match _lh_lispmember_LH_P2_1_3_0 with
        | `Cons(_lh_lispmember_Cons_0_1_5) -> 
          (match _lh_lispmember_Cons_0_1_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_1, _lh_lispmember_LH_P2_1_3_1) -> 
              (if (_lh_lispmember_LH_P2_0_3_0 = _lh_lispmember_LH_P2_0_3_1) then
                true
              else
                (lispmember_lh__d9 (`LH_P2(_lh_lispmember_LH_P2_0_3_0, _lh_lispmember_LH_P2_1_3_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d0 _lh_lispmember_arg1_1_4 =
  (match _lh_lispmember_arg1_1_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_8, _lh_lispmember_LH_P2_1_2_8) -> 
      (match _lh_lispmember_LH_P2_1_2_8 with
        | `Cons(_lh_lispmember_Cons_0_1_4) -> 
          (match _lh_lispmember_Cons_0_1_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_9, _lh_lispmember_LH_P2_1_2_9) -> 
              (if (_lh_lispmember_LH_P2_0_2_8 = _lh_lispmember_LH_P2_0_2_9) then
                true
              else
                (lispmember_lh__d1_d0 (`LH_P2(_lh_lispmember_LH_P2_0_2_8, _lh_lispmember_LH_P2_1_2_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d4 _lh_lispmember_arg1_1_0 =
  (match _lh_lispmember_arg1_1_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_0, _lh_lispmember_LH_P2_1_2_0) -> 
      (match _lh_lispmember_LH_P2_1_2_0 with
        | `Cons(_lh_lispmember_Cons_0_1_0) -> 
          (match _lh_lispmember_Cons_0_1_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_1, _lh_lispmember_LH_P2_1_2_1) -> 
              (if (_lh_lispmember_LH_P2_0_2_0 = _lh_lispmember_LH_P2_0_2_1) then
                true
              else
                (lispmember_lh__d1_d4 (`LH_P2(_lh_lispmember_LH_P2_0_2_0, _lh_lispmember_LH_P2_1_2_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d3 _lh_lispmember_arg1_1_1 =
  (match _lh_lispmember_arg1_1_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_2, _lh_lispmember_LH_P2_1_2_2) -> 
      (match _lh_lispmember_LH_P2_1_2_2 with
        | `Cons(_lh_lispmember_Cons_0_1_1) -> 
          (match _lh_lispmember_Cons_0_1_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_3, _lh_lispmember_LH_P2_1_2_3) -> 
              (if (_lh_lispmember_LH_P2_0_2_2 = _lh_lispmember_LH_P2_0_2_3) then
                true
              else
                (lispmember_lh__d1_d3 (`LH_P2(_lh_lispmember_LH_P2_0_2_2, _lh_lispmember_LH_P2_1_2_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d8 _lh_lispmember_arg1_1_6 =
  (match _lh_lispmember_arg1_1_6 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_2, _lh_lispmember_LH_P2_1_3_2) -> 
      (match _lh_lispmember_LH_P2_1_3_2 with
        | `Cons(_lh_lispmember_Cons_0_1_6) -> 
          (match _lh_lispmember_Cons_0_1_6 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_3, _lh_lispmember_LH_P2_1_3_3) -> 
              (if (_lh_lispmember_LH_P2_0_3_2 = _lh_lispmember_LH_P2_0_3_3) then
                true
              else
                (lispmember_lh__d8 (`LH_P2(_lh_lispmember_LH_P2_0_3_2, _lh_lispmember_LH_P2_1_3_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d1 _lh_lispmember_arg1_1_3 =
  (match _lh_lispmember_arg1_1_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_6, _lh_lispmember_LH_P2_1_2_6) -> 
      (match _lh_lispmember_LH_P2_1_2_6 with
        | `Cons(_lh_lispmember_Cons_0_1_3) -> 
          (match _lh_lispmember_Cons_0_1_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_7, _lh_lispmember_LH_P2_1_2_7) -> 
              (if (_lh_lispmember_LH_P2_0_2_6 = _lh_lispmember_LH_P2_0_2_7) then
                true
              else
                (lispmember_lh__d1_d1 (`LH_P2(_lh_lispmember_LH_P2_0_2_6, _lh_lispmember_LH_P2_1_2_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d2 _lh_lispmember_arg1_1_2 =
  (match _lh_lispmember_arg1_1_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_4, _lh_lispmember_LH_P2_1_2_4) -> 
      (match _lh_lispmember_LH_P2_1_2_4 with
        | `Cons(_lh_lispmember_Cons_0_1_2) -> 
          (match _lh_lispmember_Cons_0_1_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_5, _lh_lispmember_LH_P2_1_2_5) -> 
              (if (_lh_lispmember_LH_P2_0_2_4 = _lh_lispmember_LH_P2_0_2_5) then
                true
              else
                (lispmember_lh__d1_d2 (`LH_P2(_lh_lispmember_LH_P2_0_2_4, _lh_lispmember_LH_P2_1_2_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec truep_lh__d2 _lh_truep_arg1_1 =
  (match _lh_truep_arg1_1 with
    | `LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2) -> 
      (match _lh_truep_LH_P2_0_2 with
        | `Nil -> 
          false
        | `Cons(_lh_truep_Cons_0_1) -> 
          (match _lh_truep_Cons_0_1 with
            | `LH_P2(_lh_truep_LH_P2_0_3, _lh_truep_LH_P2_1_3) -> 
              (match _lh_truep_LH_P2_0_3 with
                | `Atom(_lh_truep_Atom_0_1) -> 
                  (match _lh_truep_Atom_0_1 with
                    | `LH_C(_lh_truep_LH_C_0_1, _lh_truep_LH_C_1_1) -> 
                      (match _lh_truep_LH_C_0_1 with
                        | 't' -> 
                          (match _lh_truep_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_truep_LH_P2_1_3 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember_lh__d1_d1 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember_lh__d1_d2 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember_lh__d1_d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember_lh__d1_d3 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                | _ -> 
                  (lispmember_lh__d1_d0 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
            | _ -> 
              (lispmember_lh__d9 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
        | _ -> 
          (lispmember_lh__d8 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d6 _lh_lispmember_arg1_8 =
  (match _lh_lispmember_arg1_8 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_6, _lh_lispmember_LH_P2_1_1_6) -> 
      (match _lh_lispmember_LH_P2_1_1_6 with
        | `Cons(_lh_lispmember_Cons_0_8) -> 
          (match _lh_lispmember_Cons_0_8 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_7, _lh_lispmember_LH_P2_1_1_7) -> 
              (if (_lh_lispmember_LH_P2_0_1_6 = _lh_lispmember_LH_P2_0_1_7) then
                true
              else
                (lispmember_lh__d1_d6 (`LH_P2(_lh_lispmember_LH_P2_0_1_6, _lh_lispmember_LH_P2_1_1_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d8 _lh_lispmember_arg1_6 =
  (match _lh_lispmember_arg1_6 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_2, _lh_lispmember_LH_P2_1_1_2) -> 
      (match _lh_lispmember_LH_P2_1_1_2 with
        | `Cons(_lh_lispmember_Cons_0_6) -> 
          (match _lh_lispmember_Cons_0_6 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_3, _lh_lispmember_LH_P2_1_1_3) -> 
              (if (_lh_lispmember_LH_P2_0_1_2 = _lh_lispmember_LH_P2_0_1_3) then
                true
              else
                (lispmember_lh__d1_d8 (`LH_P2(_lh_lispmember_LH_P2_0_1_2, _lh_lispmember_LH_P2_1_1_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d2_d1 _lh_lispmember_arg1_3 =
  (match _lh_lispmember_arg1_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_6) -> 
      (match _lh_lispmember_LH_P2_1_6 with
        | `Cons(_lh_lispmember_Cons_0_3) -> 
          (match _lh_lispmember_Cons_0_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7, _lh_lispmember_LH_P2_1_7) -> 
              (if (_lh_lispmember_LH_P2_0_6 = _lh_lispmember_LH_P2_0_7) then
                true
              else
                (lispmember_lh__d2_d1 (`LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d7 _lh_lispmember_arg1_7 =
  (match _lh_lispmember_arg1_7 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_4, _lh_lispmember_LH_P2_1_1_4) -> 
      (match _lh_lispmember_LH_P2_1_1_4 with
        | `Cons(_lh_lispmember_Cons_0_7) -> 
          (match _lh_lispmember_Cons_0_7 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_5, _lh_lispmember_LH_P2_1_1_5) -> 
              (if (_lh_lispmember_LH_P2_0_1_4 = _lh_lispmember_LH_P2_0_1_5) then
                true
              else
                (lispmember_lh__d1_d7 (`LH_P2(_lh_lispmember_LH_P2_0_1_4, _lh_lispmember_LH_P2_1_1_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d9 _lh_lispmember_arg1_5 =
  (match _lh_lispmember_arg1_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_0, _lh_lispmember_LH_P2_1_1_0) -> 
      (match _lh_lispmember_LH_P2_1_1_0 with
        | `Cons(_lh_lispmember_Cons_0_5) -> 
          (match _lh_lispmember_Cons_0_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_1, _lh_lispmember_LH_P2_1_1_1) -> 
              (if (_lh_lispmember_LH_P2_0_1_0 = _lh_lispmember_LH_P2_0_1_1) then
                true
              else
                (lispmember_lh__d1_d9 (`LH_P2(_lh_lispmember_LH_P2_0_1_0, _lh_lispmember_LH_P2_1_1_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d2_d0 _lh_lispmember_arg1_4 =
  (match _lh_lispmember_arg1_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_8) -> 
      (match _lh_lispmember_LH_P2_1_8 with
        | `Cons(_lh_lispmember_Cons_0_4) -> 
          (match _lh_lispmember_Cons_0_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9, _lh_lispmember_LH_P2_1_9) -> 
              (if (_lh_lispmember_LH_P2_0_8 = _lh_lispmember_LH_P2_0_9) then
                true
              else
                (lispmember_lh__d2_d0 (`LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1_d5 _lh_lispmember_arg1_9 =
  (match _lh_lispmember_arg1_9 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_8, _lh_lispmember_LH_P2_1_1_8) -> 
      (match _lh_lispmember_LH_P2_1_1_8 with
        | `Cons(_lh_lispmember_Cons_0_9) -> 
          (match _lh_lispmember_Cons_0_9 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_9, _lh_lispmember_LH_P2_1_1_9) -> 
              (if (_lh_lispmember_LH_P2_0_1_8 = _lh_lispmember_LH_P2_0_1_9) then
                true
              else
                (lispmember_lh__d1_d5 (`LH_P2(_lh_lispmember_LH_P2_0_1_8, _lh_lispmember_LH_P2_1_1_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec falsep_lh__d1 _lh_falsep_arg1_1 =
  (match _lh_falsep_arg1_1 with
    | `LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2) -> 
      (match _lh_falsep_LH_P2_0_2 with
        | `Nil -> 
          false
        | `Cons(_lh_falsep_Cons_0_1) -> 
          (match _lh_falsep_Cons_0_1 with
            | `LH_P2(_lh_falsep_LH_P2_0_3, _lh_falsep_LH_P2_1_3) -> 
              (match _lh_falsep_LH_P2_0_3 with
                | `Atom(_lh_falsep_Atom_0_1) -> 
                  (match _lh_falsep_Atom_0_1 with
                    | `LH_C(_lh_falsep_LH_C_0_1, _lh_falsep_LH_C_1_1) -> 
                      (match _lh_falsep_LH_C_0_1 with
                        | 'f' -> 
                          (match _lh_falsep_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_falsep_LH_P2_1_3 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember_lh__d1_d7 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember_lh__d1_d5 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember_lh__d1_d8 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember_lh__d2_d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                | _ -> 
                  (lispmember_lh__d1_d6 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
            | _ -> 
              (lispmember_lh__d2_d0 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
        | _ -> 
          (lispmember_lh__d1_d9 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"));;
let rec car_lh__d2 _lh_car_arg1_6 =
  (match _lh_car_arg1_6 with
    | `Cons(_lh_car_Cons_0_6) -> 
      (match _lh_car_Cons_0_6 with
        | `LH_P2(_lh_car_LH_P2_0_6, _lh_car_LH_P2_1_6) -> 
          _lh_car_LH_P2_0_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_lh__d3 _lh_car_arg1_5 =
  (match _lh_car_arg1_5 with
    | `Cons(_lh_car_Cons_0_5) -> 
      (match _lh_car_Cons_0_5 with
        | `LH_P2(_lh_car_LH_P2_0_5, _lh_car_LH_P2_1_5) -> 
          _lh_car_LH_P2_0_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_lh__d1 _lh_car_arg1_7 =
  (match _lh_car_arg1_7 with
    | `Cons(_lh_car_Cons_0_7) -> 
      (match _lh_car_Cons_0_7 with
        | `LH_P2(_lh_car_LH_P2_0_7, _lh_car_LH_P2_1_7) -> 
          _lh_car_LH_P2_0_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec lispmember_lh__d6 _lh_lispmember_arg1_1_8 =
  (match _lh_lispmember_arg1_1_8 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_6, _lh_lispmember_LH_P2_1_3_6) -> 
      (match _lh_lispmember_LH_P2_1_3_6 with
        | `Cons(_lh_lispmember_Cons_0_1_8) -> 
          (match _lh_lispmember_Cons_0_1_8 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_7, _lh_lispmember_LH_P2_1_3_7) -> 
              (if (_lh_lispmember_LH_P2_0_3_6 = _lh_lispmember_LH_P2_0_3_7) then
                true
              else
                (lispmember_lh__d6 (`LH_P2(_lh_lispmember_LH_P2_0_3_6, _lh_lispmember_LH_P2_1_3_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d3 _lh_lispmember_arg1_2_1 =
  (match _lh_lispmember_arg1_2_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4_2, _lh_lispmember_LH_P2_1_4_2) -> 
      (match _lh_lispmember_LH_P2_1_4_2 with
        | `Cons(_lh_lispmember_Cons_0_2_1) -> 
          (match _lh_lispmember_Cons_0_2_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_4_3, _lh_lispmember_LH_P2_1_4_3) -> 
              (if (_lh_lispmember_LH_P2_0_4_2 = _lh_lispmember_LH_P2_0_4_3) then
                true
              else
                (lispmember_lh__d3 (`LH_P2(_lh_lispmember_LH_P2_0_4_2, _lh_lispmember_LH_P2_1_4_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d1 _lh_lispmember_arg1_2_3 =
  (match _lh_lispmember_arg1_2_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4_6, _lh_lispmember_LH_P2_1_4_6) -> 
      (match _lh_lispmember_LH_P2_1_4_6 with
        | `Cons(_lh_lispmember_Cons_0_2_3) -> 
          (match _lh_lispmember_Cons_0_2_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_4_7, _lh_lispmember_LH_P2_1_4_7) -> 
              (if (_lh_lispmember_LH_P2_0_4_6 = _lh_lispmember_LH_P2_0_4_7) then
                true
              else
                (lispmember_lh__d1 (`LH_P2(_lh_lispmember_LH_P2_0_4_6, _lh_lispmember_LH_P2_1_4_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d5 _lh_lispmember_arg1_1_9 =
  (match _lh_lispmember_arg1_1_9 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_8, _lh_lispmember_LH_P2_1_3_8) -> 
      (match _lh_lispmember_LH_P2_1_3_8 with
        | `Cons(_lh_lispmember_Cons_0_1_9) -> 
          (match _lh_lispmember_Cons_0_1_9 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_9, _lh_lispmember_LH_P2_1_3_9) -> 
              (if (_lh_lispmember_LH_P2_0_3_8 = _lh_lispmember_LH_P2_0_3_9) then
                true
              else
                (lispmember_lh__d5 (`LH_P2(_lh_lispmember_LH_P2_0_3_8, _lh_lispmember_LH_P2_1_3_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d7 _lh_lispmember_arg1_1_7 =
  (match _lh_lispmember_arg1_1_7 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_4, _lh_lispmember_LH_P2_1_3_4) -> 
      (match _lh_lispmember_LH_P2_1_3_4 with
        | `Cons(_lh_lispmember_Cons_0_1_7) -> 
          (match _lh_lispmember_Cons_0_1_7 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_5, _lh_lispmember_LH_P2_1_3_5) -> 
              (if (_lh_lispmember_LH_P2_0_3_4 = _lh_lispmember_LH_P2_0_3_5) then
                true
              else
                (lispmember_lh__d7 (`LH_P2(_lh_lispmember_LH_P2_0_3_4, _lh_lispmember_LH_P2_1_3_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d2 _lh_lispmember_arg1_2_2 =
  (match _lh_lispmember_arg1_2_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4_4, _lh_lispmember_LH_P2_1_4_4) -> 
      (match _lh_lispmember_LH_P2_1_4_4 with
        | `Cons(_lh_lispmember_Cons_0_2_2) -> 
          (match _lh_lispmember_Cons_0_2_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_4_5, _lh_lispmember_LH_P2_1_4_5) -> 
              (if (_lh_lispmember_LH_P2_0_4_4 = _lh_lispmember_LH_P2_0_4_5) then
                true
              else
                (lispmember_lh__d2 (`LH_P2(_lh_lispmember_LH_P2_0_4_4, _lh_lispmember_LH_P2_1_4_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_lh__d4 _lh_lispmember_arg1_2_0 =
  (match _lh_lispmember_arg1_2_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4_0, _lh_lispmember_LH_P2_1_4_0) -> 
      (match _lh_lispmember_LH_P2_1_4_0 with
        | `Cons(_lh_lispmember_Cons_0_2_0) -> 
          (match _lh_lispmember_Cons_0_2_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_4_1, _lh_lispmember_LH_P2_1_4_1) -> 
              (if (_lh_lispmember_LH_P2_0_4_0 = _lh_lispmember_LH_P2_0_4_1) then
                true
              else
                (lispmember_lh__d4 (`LH_P2(_lh_lispmember_LH_P2_0_4_0, _lh_lispmember_LH_P2_1_4_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec truep_lh__d1 _lh_truep_arg1_2 =
  (match _lh_truep_arg1_2 with
    | `LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4) -> 
      (match _lh_truep_LH_P2_0_4 with
        | `Nil -> 
          false
        | `Cons(_lh_truep_Cons_0_2) -> 
          (match _lh_truep_Cons_0_2 with
            | `LH_P2(_lh_truep_LH_P2_0_5, _lh_truep_LH_P2_1_5) -> 
              (match _lh_truep_LH_P2_0_5 with
                | `Atom(_lh_truep_Atom_0_2) -> 
                  (match _lh_truep_Atom_0_2 with
                    | `LH_C(_lh_truep_LH_C_0_2, _lh_truep_LH_C_1_2) -> 
                      (match _lh_truep_LH_C_0_2 with
                        | 't' -> 
                          (match _lh_truep_LH_C_1_2 with
                            | `LH_N -> 
                              (match _lh_truep_LH_P2_1_5 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember_lh__d1 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                            | _ -> 
                              (lispmember_lh__d6 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                        | _ -> 
                          (lispmember_lh__d2 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                    | _ -> 
                      (lispmember_lh__d3 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                | _ -> 
                  (lispmember_lh__d5 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
            | _ -> 
              (lispmember_lh__d4 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
        | _ -> 
          (lispmember_lh__d7 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
    | _ -> 
      (failwith "error"));;
let rec falsep_lh__d2 _lh_falsep_arg1_0 =
  (match _lh_falsep_arg1_0 with
    | `LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0) -> 
      (match _lh_falsep_LH_P2_0_0 with
        | `Nil -> 
          false
        | `Cons(_lh_falsep_Cons_0_0) -> 
          (match _lh_falsep_Cons_0_0 with
            | `LH_P2(_lh_falsep_LH_P2_0_1, _lh_falsep_LH_P2_1_1) -> 
              (match _lh_falsep_LH_P2_0_1 with
                | `Atom(_lh_falsep_Atom_0_0) -> 
                  (match _lh_falsep_Atom_0_0 with
                    | `LH_C(_lh_falsep_LH_C_0_0, _lh_falsep_LH_C_1_0) -> 
                      (match _lh_falsep_LH_C_0_0 with
                        | 'f' -> 
                          (match _lh_falsep_LH_C_1_0 with
                            | `LH_N -> 
                              (match _lh_falsep_LH_P2_1_1 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember_lh__d2_d4 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                            | _ -> 
                              (lispmember_lh__d2_d4 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                        | _ -> 
                          (lispmember_lh__d2_d4 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                    | _ -> 
                      (lispmember_lh__d2_d4 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                | _ -> 
                  (lispmember_lh__d2_d4 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
            | _ -> 
              (lispmember_lh__d2_d4 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
        | _ -> 
          (lispmember_lh__d2_d4 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
    | _ -> 
      (failwith "error"));;
let rec cdr_lh__d5 _lh_cdr_arg1_1 =
  (match _lh_cdr_arg1_1 with
    | `Cons(_lh_cdr_Cons_0_1) -> 
      (match _lh_cdr_Cons_0_1 with
        | `LH_P2(_lh_cdr_LH_P2_0_1, _lh_cdr_LH_P2_1_1) -> 
          _lh_cdr_LH_P2_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec caddr_lh__d2 _lh_caddr_arg1_1 =
  ((fun _lh_funcomp_x_3 -> 
    ((fun _lh_funcomp_x_4 -> 
      (car_lh__d8 (cdr_lh__d5 _lh_funcomp_x_4))) (cdr_lh__d6 _lh_funcomp_x_3))) _lh_caddr_arg1_1);;
let rec cdr_lh__d1 _lh_cdr_arg1_5 =
  (match _lh_cdr_arg1_5 with
    | `Cons(_lh_cdr_Cons_0_5) -> 
      (match _lh_cdr_Cons_0_5 with
        | `LH_P2(_lh_cdr_LH_P2_0_5, _lh_cdr_LH_P2_1_5) -> 
          _lh_cdr_LH_P2_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_lh__d5 _lh_car_arg1_3 =
  (match _lh_car_arg1_3 with
    | `Cons(_lh_car_Cons_0_3) -> 
      (match _lh_car_Cons_0_3 with
        | `LH_P2(_lh_car_LH_P2_0_3, _lh_car_LH_P2_1_3) -> 
          _lh_car_LH_P2_0_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_lh__d2 _lh_cdr_arg1_4 =
  (match _lh_cdr_arg1_4 with
    | `Cons(_lh_cdr_Cons_0_4) -> 
      (match _lh_cdr_Cons_0_4 with
        | `LH_P2(_lh_cdr_LH_P2_0_4, _lh_cdr_LH_P2_1_4) -> 
          _lh_cdr_LH_P2_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec caddr_lh__d1 _lh_caddr_arg1_2 =
  ((fun _lh_funcomp_x_7 -> 
    ((fun _lh_funcomp_x_8 -> 
      (car_lh__d5 (cdr_lh__d1 _lh_funcomp_x_8))) (cdr_lh__d2 _lh_funcomp_x_7))) _lh_caddr_arg1_2);;
let rec car_lh__d4 _lh_car_arg1_4 =
  (match _lh_car_arg1_4 with
    | `Cons(_lh_car_Cons_0_4) -> 
      (match _lh_car_Cons_0_4 with
        | `LH_P2(_lh_car_LH_P2_0_4, _lh_car_LH_P2_1_4) -> 
          _lh_car_LH_P2_0_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_lh__d6 _lh_car_arg1_2 =
  (match _lh_car_arg1_2 with
    | `Cons(_lh_car_Cons_0_2) -> 
      (match _lh_car_Cons_0_2 with
        | `LH_P2(_lh_car_LH_P2_0_2, _lh_car_LH_P2_1_2) -> 
          _lh_car_LH_P2_0_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_lh__d3 _lh_cdr_arg1_3 =
  (match _lh_cdr_arg1_3 with
    | `Cons(_lh_cdr_Cons_0_3) -> 
      (match _lh_cdr_Cons_0_3 with
        | `LH_P2(_lh_cdr_LH_P2_0_3, _lh_cdr_LH_P2_1_3) -> 
          _lh_cdr_LH_P2_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cadr_lh__d1 _lh_cadr_arg1_2 =
  ((fun _lh_funcomp_x_6 -> 
    (car_lh__d6 (cdr_lh__d3 _lh_funcomp_x_6))) _lh_cadr_arg1_2);;
let rec cdr_lh__d4 _lh_cdr_arg1_2 =
  (match _lh_cdr_arg1_2 with
    | `Cons(_lh_cdr_Cons_0_2) -> 
      (match _lh_cdr_Cons_0_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_2, _lh_cdr_LH_P2_1_2) -> 
          _lh_cdr_LH_P2_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_lh__d7 _lh_car_arg1_1 =
  (match _lh_car_arg1_1 with
    | `Cons(_lh_car_Cons_0_1) -> 
      (match _lh_car_Cons_0_1 with
        | `LH_P2(_lh_car_LH_P2_0_1, _lh_car_LH_P2_1_1) -> 
          _lh_car_LH_P2_0_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cadr_lh__d2 _lh_cadr_arg1_1 =
  ((fun _lh_funcomp_x_5 -> 
    (car_lh__d7 (cdr_lh__d4 _lh_funcomp_x_5))) _lh_cadr_arg1_1);;
let rec tautologyp_lh__d1 _lh_tautologyp_arg1_0 =
  (match _lh_tautologyp_arg1_0 with
    | `LH_P3(_lh_tautologyp_LH_P3_0_0, _lh_tautologyp_LH_P3_1_0, _lh_tautologyp_LH_P3_2_0) -> 
      (match _lh_tautologyp_LH_P3_0_0 with
        | `Nil -> 
          false
        | `Atom(_lh_tautologyp_Atom_0_0) -> 
          (truep_lh__d2 (`LH_P2((`Atom(_lh_tautologyp_Atom_0_0)), _lh_tautologyp_LH_P3_1_0)))
        | `Cons(_lh_tautologyp_Cons_0_0) -> 
          (match _lh_tautologyp_Cons_0_0 with
            | `LH_P2(_lh_tautologyp_LH_P2_0_0, _lh_tautologyp_LH_P2_1_0) -> 
              (if (truep_lh__d1 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_0, _lh_tautologyp_LH_P2_1_0)))), _lh_tautologyp_LH_P3_1_0))) then
                true
              else
                (if (falsep_lh__d2 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_0, _lh_tautologyp_LH_P2_1_0)))), _lh_tautologyp_LH_P3_2_0))) then
                  false
                else
                  (let rec _lh_matchIdent_2_0 = _lh_tautologyp_LH_P2_0_0 in
                    (match _lh_matchIdent_2_0 with
                      | `Atom(_lh_tautologyp_Atom_0_1) -> 
                        (match _lh_tautologyp_Atom_0_1 with
                          | `LH_C(_lh_tautologyp_LH_C_0_0, _lh_tautologyp_LH_C_1_0) -> 
                            (match _lh_tautologyp_LH_C_0_0 with
                              | 'i' -> 
                                (match _lh_tautologyp_LH_C_1_0 with
                                  | `LH_C(_lh_tautologyp_LH_C_0_1, _lh_tautologyp_LH_C_1_1) -> 
                                    (match _lh_tautologyp_LH_C_0_1 with
                                      | 'f' -> 
                                        (match _lh_tautologyp_LH_C_1_1 with
                                          | `LH_N -> 
                                            (if (truep_lh__d3 (`LH_P2((car_lh__d1 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0))) then
                                              (tautologyp_lh__d1 (`LH_P3((cadr_lh__d1 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0, _lh_tautologyp_LH_P3_2_0)))
                                            else
                                              (if (falsep_lh__d1 (`LH_P2((car_lh__d4 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_2_0))) then
                                                (tautologyp_lh__d1 (`LH_P3((caddr_lh__d2 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0, _lh_tautologyp_LH_P3_2_0)))
                                              else
                                                ((tautologyp_lh__d1 (`LH_P3((cadr_lh__d2 _lh_tautologyp_LH_P2_1_0), (`Cons((`LH_P2((car_lh__d3 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0)))), _lh_tautologyp_LH_P3_2_0))) && (tautologyp_lh__d1 (`LH_P3((caddr_lh__d1 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0, (`Cons((`LH_P2((car_lh__d2 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_2_0))))))))))
                                          | _ -> 
                                            false)
                                      | _ -> 
                                        false)
                                  | _ -> 
                                    false)
                              | _ -> 
                                false)
                          | _ -> 
                            false)
                      | _ -> 
                        false))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rules_lh__d1 _lh_rules_arg1_0 =
  (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('d', (`LH_C('e', (`LH_C('g', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('p', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('n', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('-', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('c', (`LH_C('-', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('1', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('w', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('1', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('2', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('3', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('4', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('5', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('6', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('m', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec makelemmas_lh__d1 _lh_makelemmas_arg1_0 =
  (match _lh_makelemmas_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_makelemmas_LH_C_0_0, _lh_makelemmas_LH_C_1_0) -> 
      (`LH_C((mkLisplist_lh__d2 (strToToken_lh__d2 _lh_makelemmas_LH_C_0_0)), (makelemmas_lh__d1 _lh_makelemmas_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec addtoLUT_lh__d1 _lh_addtoLUT_arg1_0 =
  (match _lh_addtoLUT_arg1_0 with
    | `LH_P3(_lh_addtoLUT_LH_P3_0_0, _lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P3_2_0) -> 
      (match _lh_addtoLUT_LH_P3_2_0 with
        | `Empty -> 
          (`Node((`LH_P3((`Empty), (`LH_P2(_lh_addtoLUT_LH_P3_0_0, (`LH_C(_lh_addtoLUT_LH_P3_1_0, (`LH_N))))), (`Empty)))))
        | `Node(_lh_addtoLUT_Node_0_0) -> 
          (match _lh_addtoLUT_Node_0_0 with
            | `LH_P3(_lh_addtoLUT_LH_P3_0_1, _lh_addtoLUT_LH_P3_1_1, _lh_addtoLUT_LH_P3_2_1) -> 
              (match _lh_addtoLUT_LH_P3_1_1 with
                | `LH_P2(_lh_addtoLUT_LH_P2_0_0, _lh_addtoLUT_LH_P2_1_0) -> 
                  (if (_lh_addtoLUT_LH_P3_0_0 = _lh_addtoLUT_LH_P2_0_0) then
                    (`Node((`LH_P3(_lh_addtoLUT_LH_P3_0_1, (`LH_P2(_lh_addtoLUT_LH_P2_0_0, (`LH_C(_lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P2_1_0)))), _lh_addtoLUT_LH_P3_2_1))))
                  else
                    (if (_lh_addtoLUT_LH_P3_0_0 < _lh_addtoLUT_LH_P2_0_0) then
                      (`Node((`LH_P3((addtoLUT_lh__d1 (`LH_P3(_lh_addtoLUT_LH_P3_0_0, _lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P3_0_1))), (`LH_P2(_lh_addtoLUT_LH_P2_0_0, _lh_addtoLUT_LH_P2_1_0)), _lh_addtoLUT_LH_P3_2_1))))
                    else
                      (`Node((`LH_P3(_lh_addtoLUT_LH_P3_0_1, (`LH_P2(_lh_addtoLUT_LH_P2_0_0, _lh_addtoLUT_LH_P2_1_0)), (addtoLUT_lh__d1 (`LH_P3(_lh_addtoLUT_LH_P3_0_0, _lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P3_2_1)))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec addlemma_lh__d1 _lh_addlemma_arg1_0 _lh_addlemma_arg2_0 =
  (match _lh_addlemma_arg1_0 with
    | `Nil -> 
      _lh_addlemma_arg2_0
    | `Atom(_lh_addlemma_Atom_0_0) -> 
      (failwith "error")
    | `Cons(_lh_addlemma_Cons_0_0) -> 
      (match _lh_addlemma_Cons_0_0 with
        | `LH_P2(_lh_addlemma_LH_P2_0_0, _lh_addlemma_LH_P2_1_0) -> 
          (let rec z_0 = (car_lh__d8 _lh_addlemma_LH_P2_1_0) in
            (if (((tv_lh__d1 _lh_addlemma_LH_P2_0_0) = (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_N)))))))))))) && (not (atom_lh__d1 z_0))) then
              (addtoLUT_lh__d1 (`LH_P3((tv_lh__d1 (car_lh__d8 z_0)), (`Cons((`LH_P2(_lh_addlemma_LH_P2_0_0, _lh_addlemma_LH_P2_1_0)))), _lh_addlemma_arg2_0)))
            else
              (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec addlemmalst_lh__d1 _lh_addlemmalst_arg1_0 _lh_addlemmalst_arg2_0 =
  (match _lh_addlemmalst_arg1_0 with
    | `LH_N -> 
      _lh_addlemmalst_arg2_0
    | `LH_C(_lh_addlemmalst_LH_C_0_0, _lh_addlemmalst_LH_C_1_0) -> 
      ((addlemmalst_lh__d1 _lh_addlemmalst_LH_C_1_0) ((addlemma_lh__d1 _lh_addlemmalst_LH_C_0_0) _lh_addlemmalst_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec lemmas_lh__d1 _lh_lemmas_arg1_0 =
  ((addlemmalst_lh__d1 (makelemmas_lh__d1 (rules_lh__d1 0))) (`Empty));;
let rec tautp_lh__d1 _lh_tautp_arg1_0 =
  (tautologyp_lh__d1 (`LH_P3(((rewrite_lh__d1 _lh_tautp_arg1_0) (lemmas_lh__d1 0)), (`Nil), (`Nil))));;
let rec testresult_lh__d1 _lh_testresult_arg1_0 =
  (tautp_lh__d1 (teststatement_lh__d1 _lh_testresult_arg1_0));;
let rec report_lh__d1 _lh_report_arg1_0 =
  (match _lh_report_arg1_0 with
    | true -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
    | false -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec testBoyer2_nofib_lh__d1 _lh_testBoyer2_nofib_arg1_0 =
  (report_lh__d1 (testresult_lh__d1 _lh_testBoyer2_nofib_arg1_0));;
end;;

