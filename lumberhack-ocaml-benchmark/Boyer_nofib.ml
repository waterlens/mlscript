(*
touch ./Boyer_nofib.mli && ocamlc ./Boyer_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Boyer_nofib.ml -o "./Boyer_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Boyer_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
let rec all_d0 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
        ((all_d0 _lh_all_arg1_1) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec find_d0 _lh_find_arg1_2 _lh_find_arg2_2 =
  (match _lh_find_arg2_2 with
    | `LH_N -> 
      (`LH_P2(false, (`ERROR)))
    | `LH_C(_lh_find_LH_C_0_2, _lh_find_LH_C_1_2) -> 
      (match _lh_find_LH_C_0_2 with
        | `LH_P2(_lh_find_LH_P2_0_2, _lh_find_LH_P2_1_2) -> 
          (if (_lh_find_arg1_2 = _lh_find_LH_P2_0_2) then
            (`LH_P2(true, _lh_find_LH_P2_1_2))
          else
            ((find_d0 _lh_find_arg1_2) _lh_find_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1 _lh_find_arg1_1 _lh_find_arg2_1 =
  (match _lh_find_arg2_1 with
    | `LH_N -> 
      (`LH_P2(false, (`ERROR)))
    | `LH_C(_lh_find_LH_C_0_1, _lh_find_LH_C_1_1) -> 
      (match _lh_find_LH_C_0_1 with
        | `LH_P2(_lh_find_LH_P2_0_1, _lh_find_LH_P2_1_1) -> 
          (if (_lh_find_arg1_1 = _lh_find_LH_P2_0_1) then
            (`LH_P2(true, _lh_find_LH_P2_1_1))
          else
            ((find_d1 _lh_find_arg1_1) _lh_find_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d2 _lh_find_arg1_3 _lh_find_arg2_3 =
  (match _lh_find_arg2_3 with
    | `LH_N -> 
      (`LH_P2(false, (`ERROR)))
    | `LH_C(_lh_find_LH_C_0_3, _lh_find_LH_C_1_3) -> 
      (match _lh_find_LH_C_0_3 with
        | `LH_P2(_lh_find_LH_P2_0_3, _lh_find_LH_P2_1_3) -> 
          (if (_lh_find_arg1_3 = _lh_find_LH_P2_0_3) then
            (`LH_P2(true, _lh_find_LH_P2_1_3))
          else
            ((find_d2 _lh_find_arg1_3) _lh_find_LH_C_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_d0 f_1_5 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_5 h_2_2), ((map_d0 f_1_5) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1 f_1_4 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_4 h_2_1), ((map_d1 f_1_4) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2 f_1_3 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_3 h_2_0), ((map_d2 f_1_3) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec replicate_d0 _lh_replicate_arg1_1 _lh_replicate_arg2_1 =
  (if (_lh_replicate_arg1_1 = 0) then
    (`LH_N)
  else
    (`LH_C(_lh_replicate_arg2_1, ((replicate_d0 (_lh_replicate_arg1_1 - 1)) _lh_replicate_arg2_1))));;
let rec apply_subst_d0 _lh_apply_subst_arg1_2 _lh_apply_subst_arg2_2 =
  (match _lh_apply_subst_arg2_2 with
    | `Var(_lh_apply_subst_Var_0_2) -> 
      (let rec _lh_matchIdent_1_3 = ((find_d0 _lh_apply_subst_Var_0_2) _lh_apply_subst_arg1_2) in
        (match _lh_matchIdent_1_3 with
          | `LH_P2(_lh_apply_subst_LH_P2_0_2, _lh_apply_subst_LH_P2_1_2) -> 
            (if _lh_apply_subst_LH_P2_0_2 then
              _lh_apply_subst_LH_P2_1_2
            else
              (`Var(_lh_apply_subst_Var_0_2)))
          | _ -> 
            (failwith "error")))
    | `Fun(_lh_apply_subst_Fun_0_2, _lh_apply_subst_Fun_1_2, _lh_apply_subst_Fun_2_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_2, ((map_d0 (apply_subst_d0 _lh_apply_subst_arg1_2)) _lh_apply_subst_Fun_1_2), _lh_apply_subst_Fun_2_2))
    | _ -> 
      (failwith "error"))
and apply_subst_d1 _lh_apply_subst_arg1_1 _lh_apply_subst_arg2_1 =
  (match _lh_apply_subst_arg2_1 with
    | `Var(_lh_apply_subst_Var_0_1) -> 
      (let rec _lh_matchIdent_1_1 = ((find_d1 _lh_apply_subst_Var_0_1) _lh_apply_subst_arg1_1) in
        (match _lh_matchIdent_1_1 with
          | `LH_P2(_lh_apply_subst_LH_P2_0_1, _lh_apply_subst_LH_P2_1_1) -> 
            (if _lh_apply_subst_LH_P2_0_1 then
              _lh_apply_subst_LH_P2_1_1
            else
              (`Var(_lh_apply_subst_Var_0_1)))
          | _ -> 
            (failwith "error")))
    | `Fun(_lh_apply_subst_Fun_0_1, _lh_apply_subst_Fun_1_1, _lh_apply_subst_Fun_2_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_1, ((map_d2 (apply_subst_d1 _lh_apply_subst_arg1_1)) _lh_apply_subst_Fun_1_1), _lh_apply_subst_Fun_2_1))
    | _ -> 
      (failwith "error"))
and falsep_d0 _lh_falsep_arg1_1 _lh_falsep_arg2_1 =
  (match _lh_falsep_arg1_1 with
    | `Fun(_lh_falsep_Fun_0_1, _lh_falsep_Fun_1_1, _lh_falsep_Fun_2_1) -> 
      (match _lh_falsep_Fun_0_1 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList_d0 _lh_falsep_arg1_1) _lh_falsep_arg2_1))
    | _ -> 
      ((termInList_d0 _lh_falsep_arg1_1) _lh_falsep_arg2_1))
and falsep_d1 _lh_falsep_arg1_2 _lh_falsep_arg2_2 =
  (match _lh_falsep_arg1_2 with
    | `Fun(_lh_falsep_Fun_0_2, _lh_falsep_Fun_1_2, _lh_falsep_Fun_2_2) -> 
      (match _lh_falsep_Fun_0_2 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList_d1 _lh_falsep_arg1_2) _lh_falsep_arg2_2))
    | _ -> 
      ((termInList_d1 _lh_falsep_arg1_2) _lh_falsep_arg2_2))
and one_way_unify1_lst_d0 _lh_one_way_unify1_lst_arg1_1 _lh_one_way_unify1_lst_arg2_1 _lh_one_way_unify1_lst_arg3_1 =
  (match _lh_one_way_unify1_lst_arg1_1 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2, _lh_one_way_unify1_lst_LH_C_1_2) -> 
      (match _lh_one_way_unify1_lst_arg2_1 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3, _lh_one_way_unify1_lst_LH_C_1_3) -> 
          (let rec _lh_matchIdent_7 = (((one_way_unify1_d0 _lh_one_way_unify1_lst_LH_C_0_2) _lh_one_way_unify1_lst_LH_C_0_3) _lh_one_way_unify1_lst_arg3_1) in
            (match _lh_matchIdent_7 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2, _lh_one_way_unify1_lst_LH_P2_1_2) -> 
                (let rec _lh_matchIdent_8 = (((one_way_unify1_lst_d0 _lh_one_way_unify1_lst_LH_C_1_2) _lh_one_way_unify1_lst_LH_C_1_3) _lh_one_way_unify1_lst_LH_P2_1_2) in
                  (match _lh_matchIdent_8 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3, _lh_one_way_unify1_lst_LH_P2_1_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_2 && _lh_one_way_unify1_lst_LH_P2_0_3), _lh_one_way_unify1_lst_LH_P2_1_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_d0 _lh_one_way_unify1_arg1_1 _lh_one_way_unify1_arg2_1 _lh_one_way_unify1_arg3_1 =
  (match _lh_one_way_unify1_arg2_1 with
    | `Var(_lh_one_way_unify1_Var_0_1) -> 
      (let rec _lh_matchIdent_1_4 = ((find_d2 _lh_one_way_unify1_Var_0_1) _lh_one_way_unify1_arg3_1) in
        (match _lh_matchIdent_1_4 with
          | `LH_P2(_lh_one_way_unify1_LH_P2_0_1, _lh_one_way_unify1_LH_P2_1_1) -> 
            (if _lh_one_way_unify1_LH_P2_0_1 then
              (`LH_P2(((termEq_d0 _lh_one_way_unify1_arg1_1) _lh_one_way_unify1_LH_P2_1_1), _lh_one_way_unify1_arg3_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1, _lh_one_way_unify1_arg1_1)), _lh_one_way_unify1_arg3_1)))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1 with
        | `Fun(_lh_one_way_unify1_Fun_0_2, _lh_one_way_unify1_Fun_1_2, _lh_one_way_unify1_Fun_2_2) -> 
          (match _lh_one_way_unify1_arg2_1 with
            | `Fun(_lh_one_way_unify1_Fun_0_3, _lh_one_way_unify1_Fun_1_3, _lh_one_way_unify1_Fun_2_3) -> 
              (if (_lh_one_way_unify1_Fun_0_2 = _lh_one_way_unify1_Fun_0_3) then
                (((one_way_unify1_lst_d0 _lh_one_way_unify1_Fun_1_2) _lh_one_way_unify1_Fun_1_3) _lh_one_way_unify1_arg3_1)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify_d0 _lh_one_way_unify_arg1_1 _lh_one_way_unify_arg2_1 =
  (((one_way_unify1_d0 _lh_one_way_unify_arg1_1) _lh_one_way_unify_arg2_1) (`LH_N))
and rewrite_with_lemmas_helper_d0 _lh_rewrite_with_lemmas_helper_arg1_1 _lh_rewrite_with_lemmas_helper_arg2_1 =
  (let rec _lh_matchIdent_9 = _lh_rewrite_with_lemmas_helper_arg2_1 in
    (match _lh_matchIdent_9 with
      | `LH_N -> 
        _lh_rewrite_with_lemmas_helper_arg1_1
      | `LH_C(_lh_rewrite_with_lemmas_helper_LH_C_0_1, _lh_rewrite_with_lemmas_helper_LH_C_1_1) -> 
        (match _lh_rewrite_with_lemmas_helper_LH_C_0_1 with
          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2, _lh_rewrite_with_lemmas_helper_LH_P2_1_2) -> 
            (let rec _lh_matchIdent_1_0 = ((one_way_unify_d0 _lh_rewrite_with_lemmas_helper_arg1_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_2) in
              (match _lh_matchIdent_1_0 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_3) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_3 then
                    (rewrite_d0 ((apply_subst_d1 _lh_rewrite_with_lemmas_helper_LH_P2_1_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2))
                  else
                    ((rewrite_with_lemmas_helper_d0 _lh_rewrite_with_lemmas_helper_arg1_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and rewrite_with_lemmas_d0 _lh_rewrite_with_lemmas_arg1_1 _lh_rewrite_with_lemmas_arg2_1 =
  ((rewrite_with_lemmas_helper_d0 _lh_rewrite_with_lemmas_arg1_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_1))
and rewrite_d0 _lh_rewrite_arg1_1 =
  (match _lh_rewrite_arg1_1 with
    | `Var(_lh_rewrite_Var_0_1) -> 
      (`Var(_lh_rewrite_Var_0_1))
    | `Fun(_lh_rewrite_Fun_0_1, _lh_rewrite_Fun_1_1, _lh_rewrite_Fun_2_1) -> 
      ((rewrite_with_lemmas_d0 (`Fun(_lh_rewrite_Fun_0_1, ((map_d1 rewrite_d0) _lh_rewrite_Fun_1_1), _lh_rewrite_Fun_2_1))) _lh_rewrite_Fun_2_1)
    | _ -> 
      (failwith "error"))
and tautologyp_d0 _lh_tautologyp_arg1_1 _lh_tautologyp_arg2_1 _lh_tautologyp_arg3_1 =
  (if ((truep_d0 _lh_tautologyp_arg1_1) _lh_tautologyp_arg2_1) then
    true
  else
    (if ((falsep_d0 _lh_tautologyp_arg1_1) _lh_tautologyp_arg3_1) then
      false
    else
      (let rec _lh_matchIdent_1_2 = _lh_tautologyp_arg1_1 in
        (match _lh_matchIdent_1_2 with
          | `Fun(_lh_tautologyp_Fun_0_1, _lh_tautologyp_Fun_1_1, _lh_tautologyp_Fun_2_1) -> 
            (match _lh_tautologyp_Fun_0_1 with
              | `IF -> 
                (match _lh_tautologyp_Fun_1_1 with
                  | `LH_C(_lh_tautologyp_LH_C_0_3, _lh_tautologyp_LH_C_1_3) -> 
                    (match _lh_tautologyp_LH_C_1_3 with
                      | `LH_C(_lh_tautologyp_LH_C_0_4, _lh_tautologyp_LH_C_1_4) -> 
                        (match _lh_tautologyp_LH_C_1_4 with
                          | `LH_C(_lh_tautologyp_LH_C_0_5, _lh_tautologyp_LH_C_1_5) -> 
                            (match _lh_tautologyp_LH_C_1_5 with
                              | `LH_N -> 
                                (if ((truep_d1 _lh_tautologyp_LH_C_0_3) _lh_tautologyp_arg2_1) then
                                  (((tautologyp_d0 _lh_tautologyp_LH_C_0_4) _lh_tautologyp_arg2_1) _lh_tautologyp_arg3_1)
                                else
                                  (if ((falsep_d1 _lh_tautologyp_LH_C_0_3) _lh_tautologyp_arg3_1) then
                                    (((tautologyp_d0 _lh_tautologyp_LH_C_0_5) _lh_tautologyp_arg2_1) _lh_tautologyp_arg3_1)
                                  else
                                    ((((tautologyp_d0 _lh_tautologyp_LH_C_0_4) (`LH_C(_lh_tautologyp_LH_C_0_3, _lh_tautologyp_arg2_1))) _lh_tautologyp_arg3_1) && (((tautologyp_d0 _lh_tautologyp_LH_C_0_5) _lh_tautologyp_arg2_1) (`LH_C(_lh_tautologyp_LH_C_0_3, _lh_tautologyp_arg3_1))))))
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
and tautp_d0 _lh_tautp_arg1_1 =
  (((tautologyp_d0 (rewrite_d0 _lh_tautp_arg1_1)) (`LH_N)) (`LH_N))
and termEq_d0 _lh_termEq_arg1_5 _lh_termEq_arg2_5 =
  (match _lh_termEq_arg1_5 with
    | `Var(_lh_termEq_Var_0_1_0) -> 
      (match _lh_termEq_arg2_5 with
        | `Var(_lh_termEq_Var_0_1_1) -> 
          (_lh_termEq_Var_0_1_0 = _lh_termEq_Var_0_1_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_0, _lh_termEq_Fun_1_1_0, _lh_termEq_Fun_2_1_0) -> 
      (match _lh_termEq_arg2_5 with
        | `Fun(_lh_termEq_Fun_0_1_1, _lh_termEq_Fun_1_1_1, _lh_termEq_Fun_2_1_1) -> 
          ((_lh_termEq_Fun_0_1_0 = _lh_termEq_Fun_0_1_1) && ((termLsEq_d0 _lh_termEq_Fun_1_1_0) _lh_termEq_Fun_1_1_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d1 _lh_termEq_arg1_3 _lh_termEq_arg2_3 =
  (match _lh_termEq_arg1_3 with
    | `Var(_lh_termEq_Var_0_6) -> 
      (match _lh_termEq_arg2_3 with
        | `Var(_lh_termEq_Var_0_7) -> 
          (_lh_termEq_Var_0_6 = _lh_termEq_Var_0_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_6, _lh_termEq_Fun_1_6, _lh_termEq_Fun_2_6) -> 
      (match _lh_termEq_arg2_3 with
        | `Fun(_lh_termEq_Fun_0_7, _lh_termEq_Fun_1_7, _lh_termEq_Fun_2_7) -> 
          ((_lh_termEq_Fun_0_6 = _lh_termEq_Fun_0_7) && ((termLsEq_d1 _lh_termEq_Fun_1_6) _lh_termEq_Fun_1_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d2 _lh_termEq_arg1_1 _lh_termEq_arg2_1 =
  (match _lh_termEq_arg1_1 with
    | `Var(_lh_termEq_Var_0_2) -> 
      (match _lh_termEq_arg2_1 with
        | `Var(_lh_termEq_Var_0_3) -> 
          (_lh_termEq_Var_0_2 = _lh_termEq_Var_0_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2, _lh_termEq_Fun_1_2, _lh_termEq_Fun_2_2) -> 
      (match _lh_termEq_arg2_1 with
        | `Fun(_lh_termEq_Fun_0_3, _lh_termEq_Fun_1_3, _lh_termEq_Fun_2_3) -> 
          ((_lh_termEq_Fun_0_2 = _lh_termEq_Fun_0_3) && ((termLsEq_d2 _lh_termEq_Fun_1_2) _lh_termEq_Fun_1_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d3 _lh_termEq_arg1_2 _lh_termEq_arg2_2 =
  (match _lh_termEq_arg1_2 with
    | `Var(_lh_termEq_Var_0_4) -> 
      (match _lh_termEq_arg2_2 with
        | `Var(_lh_termEq_Var_0_5) -> 
          (_lh_termEq_Var_0_4 = _lh_termEq_Var_0_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_4, _lh_termEq_Fun_1_4, _lh_termEq_Fun_2_4) -> 
      (match _lh_termEq_arg2_2 with
        | `Fun(_lh_termEq_Fun_0_5, _lh_termEq_Fun_1_5, _lh_termEq_Fun_2_5) -> 
          ((_lh_termEq_Fun_0_4 = _lh_termEq_Fun_0_5) && ((termLsEq_d3 _lh_termEq_Fun_1_4) _lh_termEq_Fun_1_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d4 _lh_termEq_arg1_4 _lh_termEq_arg2_4 =
  (match _lh_termEq_arg1_4 with
    | `Var(_lh_termEq_Var_0_8) -> 
      (match _lh_termEq_arg2_4 with
        | `Var(_lh_termEq_Var_0_9) -> 
          (_lh_termEq_Var_0_8 = _lh_termEq_Var_0_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_8, _lh_termEq_Fun_1_8, _lh_termEq_Fun_2_8) -> 
      (match _lh_termEq_arg2_4 with
        | `Fun(_lh_termEq_Fun_0_9, _lh_termEq_Fun_1_9, _lh_termEq_Fun_2_9) -> 
          ((_lh_termEq_Fun_0_8 = _lh_termEq_Fun_0_9) && ((termLsEq_d4 _lh_termEq_Fun_1_8) _lh_termEq_Fun_1_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termInList_d0 _lh_termInList_arg1_4 _lh_termInList_arg2_4 =
  (match _lh_termInList_arg2_4 with
    | `LH_C(_lh_termInList_LH_C_0_4, _lh_termInList_LH_C_1_4) -> 
      (if ((termEq_d1 _lh_termInList_arg1_4) _lh_termInList_LH_C_0_4) then
        true
      else
        ((termInList_d0 _lh_termInList_arg1_4) _lh_termInList_LH_C_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d1 _lh_termInList_arg1_3 _lh_termInList_arg2_3 =
  (match _lh_termInList_arg2_3 with
    | `LH_C(_lh_termInList_LH_C_0_3, _lh_termInList_LH_C_1_3) -> 
      (if ((termEq_d2 _lh_termInList_arg1_3) _lh_termInList_LH_C_0_3) then
        true
      else
        ((termInList_d1 _lh_termInList_arg1_3) _lh_termInList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d2 _lh_termInList_arg1_1 _lh_termInList_arg2_1 =
  (match _lh_termInList_arg2_1 with
    | `LH_C(_lh_termInList_LH_C_0_1, _lh_termInList_LH_C_1_1) -> 
      (if ((termEq_d3 _lh_termInList_arg1_1) _lh_termInList_LH_C_0_1) then
        true
      else
        ((termInList_d2 _lh_termInList_arg1_1) _lh_termInList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d3 _lh_termInList_arg1_2 _lh_termInList_arg2_2 =
  (match _lh_termInList_arg2_2 with
    | `LH_C(_lh_termInList_LH_C_0_2, _lh_termInList_LH_C_1_2) -> 
      (if ((termEq_d4 _lh_termInList_arg1_2) _lh_termInList_LH_C_0_2) then
        true
      else
        ((termInList_d3 _lh_termInList_arg1_2) _lh_termInList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termLsEq_d0 _lh_termLsEq_arg1_1 _lh_termLsEq_arg2_1 =
  (match _lh_termLsEq_arg1_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2, _lh_termLsEq_LH_C_1_2) -> 
      (match _lh_termLsEq_arg2_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_3, _lh_termLsEq_LH_C_1_3) -> 
          (if ((termEq_d0 _lh_termLsEq_LH_C_0_2) _lh_termLsEq_LH_C_0_3) then
            ((termLsEq_d0 _lh_termLsEq_LH_C_1_2) _lh_termLsEq_LH_C_1_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d1 _lh_termLsEq_arg1_2 _lh_termLsEq_arg2_2 =
  (match _lh_termLsEq_arg1_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_4, _lh_termLsEq_LH_C_1_4) -> 
      (match _lh_termLsEq_arg2_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_5, _lh_termLsEq_LH_C_1_5) -> 
          (if ((termEq_d1 _lh_termLsEq_LH_C_0_4) _lh_termLsEq_LH_C_0_5) then
            ((termLsEq_d1 _lh_termLsEq_LH_C_1_4) _lh_termLsEq_LH_C_1_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d2 _lh_termLsEq_arg1_4 _lh_termLsEq_arg2_4 =
  (match _lh_termLsEq_arg1_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_8, _lh_termLsEq_LH_C_1_8) -> 
      (match _lh_termLsEq_arg2_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_9, _lh_termLsEq_LH_C_1_9) -> 
          (if ((termEq_d2 _lh_termLsEq_LH_C_0_8) _lh_termLsEq_LH_C_0_9) then
            ((termLsEq_d2 _lh_termLsEq_LH_C_1_8) _lh_termLsEq_LH_C_1_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d3 _lh_termLsEq_arg1_3 _lh_termLsEq_arg2_3 =
  (match _lh_termLsEq_arg1_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_6, _lh_termLsEq_LH_C_1_6) -> 
      (match _lh_termLsEq_arg2_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_7, _lh_termLsEq_LH_C_1_7) -> 
          (if ((termEq_d3 _lh_termLsEq_LH_C_0_6) _lh_termLsEq_LH_C_0_7) then
            ((termLsEq_d3 _lh_termLsEq_LH_C_1_6) _lh_termLsEq_LH_C_1_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d4 _lh_termLsEq_arg1_5 _lh_termLsEq_arg2_5 =
  (match _lh_termLsEq_arg1_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_0, _lh_termLsEq_LH_C_1_1_0) -> 
      (match _lh_termLsEq_arg2_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_1, _lh_termLsEq_LH_C_1_1_1) -> 
          (if ((termEq_d4 _lh_termLsEq_LH_C_0_1_0) _lh_termLsEq_LH_C_0_1_1) then
            ((termLsEq_d4 _lh_termLsEq_LH_C_1_1_0) _lh_termLsEq_LH_C_1_1_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and test0_d0 _lh_test0_arg1_1 =
  let rec difference_1 = (fun _lh_difference_arg1_1 _lh_difference_arg2_1 -> 
    (`Fun((`DIFFERENCE), (`LH_C(_lh_difference_arg1_1, (`LH_C(_lh_difference_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((difference_1 x_3) x_3), zero_1)), (`LH_C((`LH_P2(((difference_1 ((plus_1 x_3) y_1)) x_3), y_1)), (`LH_C((`LH_P2(((difference_1 ((plus_1 y_1) x_3)) x_3), y_1)), (`LH_C((`LH_P2(((difference_1 ((plus_1 x_3) y_1)) ((plus_1 x_3) z_1)), ((difference_1 y_1) z_1))), (`LH_C((`LH_P2(((difference_1 ((plus_1 y_1) ((plus_1 x_3) z_1))) x_3), ((plus_1 y_1) z_1))), (`LH_C((`LH_P2(((difference_1 (add1_1 ((plus_1 y_1) z_1))) z_1), (add1_1 y_1))), (`LH_C((`LH_P2(((difference_1 (add1_1 (add1_1 x_3))) two_1), x_3)), (`LH_N)))))))))))))))))))
  and times_1 = (fun _lh_times_arg1_1 _lh_times_arg2_1 -> 
    (`Fun((`TIMES), (`LH_C(_lh_times_arg1_1, (`LH_C(_lh_times_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((times_1 x_3) ((plus_1 y_1) z_1)), ((plus_1 ((times_1 x_3) y_1)) ((times_1 x_3) z_1)))), (`LH_C((`LH_P2(((times_1 ((times_1 x_3) y_1)) z_1), ((times_1 x_3) ((times_1 y_1) z_1)))), (`LH_C((`LH_P2(((times_1 x_3) ((difference_1 y_1) z_1)), ((difference_1 ((times_1 y_1) x_3)) ((times_1 z_1) x_3)))), (`LH_C((`LH_P2(((times_1 x_3) (add1_1 y_1)), ((plus_1 x_3) ((times_1 x_3) y_1)))), (`LH_N)))))))))))))
  and sub1_1 = (fun _lh_sub1_arg1_1 -> 
    (`Fun((`SUB1), (`LH_C(_lh_sub1_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((sub1_1 (add1_1 x_3)), x_3)), (`LH_N)))))))
  and cons_1 = (fun _lh_cons_arg1_1 _lh_cons_arg2_1 -> 
    (`Fun((`CONS), (`LH_C(_lh_cons_arg1_1, (`LH_C(_lh_cons_arg2_1, (`LH_N))))), (lazy (`LH_N)))))
  and remainder_1 = (fun _lh_remainder_arg1_1 _lh_remainder_arg2_1 -> 
    (`Fun((`REMAINDER), (`LH_C(_lh_remainder_arg1_1, (`LH_C(_lh_remainder_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((remainder_1 x_3) one_1), zero_1)), (`LH_C((`LH_P2(((remainder_1 x_3) x_3), zero_1)), (`LH_C((`LH_P2(((remainder_1 ((times_1 x_3) y_1)) x_3), zero_1)), (`LH_C((`LH_P2(((remainder_1 ((times_1 x_3) y_1)) y_1), zero_1)), (`LH_N)))))))))))))
  and z_1 = (`Var((`Z)))
  and zerop_1 = (fun _lh_zerop_arg1_1 -> 
    (`Fun((`ZEROP), (`LH_C(_lh_zerop_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((zerop_1 x_3), ((equal_1 x_3) zero_1))), (`LH_N)))))))
  and nilp_1 = (fun _lh_nilp_arg1_1 -> 
    (`Fun((`NILP), (`LH_C(_lh_nilp_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((nilp_1 x_3), ((equal_1 x_3) nil_1))), (`LH_N)))))))
  and greatereqp_1 = (fun _lh_greatereqp_arg1_1 _lh_greatereqp_arg2_1 -> 
    (`Fun((`GREATEREQP), (`LH_C(_lh_greatereqp_arg1_1, (`LH_C(_lh_greatereqp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greatereqp_1 x_3) y_1), (not__1 ((lessp_1 x_3) y_1)))), (`LH_N)))))))
  and not__1 = (fun _lh_not__arg1_1 -> 
    (`Fun((`NOT), (`LH_C(_lh_not__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((not__1 x_3), (((if__1 x_3) boyerFalse_1) boyerTrue_1))), (`LH_N)))))))
  and or__1 = (fun _lh_or__arg1_1 _lh_or__arg2_1 -> 
    (`Fun((`OR), (`LH_C(_lh_or__arg1_1, (`LH_C(_lh_or__arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((or__1 x_3) y_1), (((if__1 x_3) boyerTrue_1) (((if__1 y_1) boyerTrue_1) boyerFalse_1)))), (`LH_N)))))))
  and b_3 = (`Var((`B)))
  and append_1 = (fun _lh_append_arg1_1 _lh_append_arg2_1 -> 
    (`Fun((`APPEND), (`LH_C(_lh_append_arg1_1, (`LH_C(_lh_append_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((append_1 ((append_1 x_3) y_1)) z_1), ((append_1 x_3) ((append_1 y_1) z_1)))), (`LH_N)))))))
  and x_3 = (`Var((`X)))
  and u_1 = (`Var((`U)))
  and greaterp_1 = (fun _lh_greaterp_arg1_1 _lh_greaterp_arg2_1 -> 
    (`Fun((`GREATERP), (`LH_C(_lh_greaterp_arg1_1, (`LH_C(_lh_greaterp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greaterp_1 x_3) y_1), ((lessp_1 y_1) x_3))), (`LH_N)))))))
  and member_1 = (fun _lh_member_arg1_1 _lh_member_arg2_1 -> 
    (`Fun((`MEMBER), (`LH_C(_lh_member_arg1_1, (`LH_C(_lh_member_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((member_1 x_3) ((append_1 y_1) z_1)), ((or__1 ((member_1 x_3) y_1)) ((member_1 x_3) z_1)))), (`LH_C((`LH_P2(((member_1 x_3) (reverse__1 y_1)), ((member_1 x_3) y_1))), (`LH_N)))))))))
  and w_1 = (`Var((`W)))
  and lesseqp_1 = (fun _lh_lesseqp_arg1_1 _lh_lesseqp_arg2_1 -> 
    (`Fun((`LESSEQP), (`LH_C(_lh_lesseqp_arg1_1, (`LH_C(_lh_lesseqp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lesseqp_1 x_3) y_1), (not__1 ((lessp_1 y_1) x_3)))), (`LH_N)))))))
  and nil_1 = (`Fun((`NIL), (`LH_N), (lazy (`LH_N))))
  and length__1 = (fun _lh_length__arg1_1 -> 
    (`Fun((`LENGTH), (`LH_C(_lh_length__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((length__1 (reverse__1 x_3)), (length__1 x_3))), (`LH_C((`LH_P2((length__1 ((cons_1 x_3) ((cons_1 y_1) ((cons_1 z_1) ((cons_1 u_1) w_1))))), ((plus_1 four_1) (length__1 w_1)))), (`LH_N)))))))))
  and add1_1 = (fun _lh_add1_arg1_1 -> 
    (`Fun((`ADD1), (`LH_C(_lh_add1_arg1_1, (`LH_N))), (lazy (`LH_N)))))
  and reverse__1 = (fun _lh_reverse__arg1_1 -> 
    (`Fun((`REVERSE), (`LH_C(_lh_reverse__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((reverse__1 ((append_1 x_3) y_1)), ((append_1 (reverse__1 y_1)) (reverse__1 x_3)))), (`LH_N)))))))
  and equal_1 = (fun _lh_equal_arg1_1 _lh_equal_arg2_1 -> 
    (`Fun((`EQUAL), (`LH_C(_lh_equal_arg1_1, (`LH_C(_lh_equal_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((equal_1 ((plus_1 x_3) y_1)) zero_1), ((and__1 (zerop_1 x_3)) (zerop_1 y_1)))), (`LH_C((`LH_P2(((equal_1 ((plus_1 x_3) y_1)) ((plus_1 x_3) z_1)), ((equal_1 y_1) z_1))), (`LH_C((`LH_P2(((equal_1 zero_1) ((difference_1 x_3) y_1)), (not__1 ((lessp_1 y_1) x_3)))), (`LH_C((`LH_P2(((equal_1 x_3) ((difference_1 x_3) y_1)), ((or__1 ((equal_1 x_3) zero_1)) (zerop_1 y_1)))), (`LH_C((`LH_P2(((equal_1 ((times_1 x_3) y_1)) zero_1), ((or__1 (zerop_1 x_3)) (zerop_1 y_1)))), (`LH_C((`LH_P2(((equal_1 ((append_1 x_3) y_1)) ((append_1 x_3) z_1)), ((equal_1 y_1) z_1))), (`LH_C((`LH_P2(((equal_1 y_1) ((times_1 x_3) y_1)), ((or__1 ((equal_1 y_1) zero_1)) ((equal_1 x_3) one_1)))), (`LH_C((`LH_P2(((equal_1 x_3) ((times_1 x_3) y_1)), ((or__1 ((equal_1 x_3) zero_1)) ((equal_1 y_1) one_1)))), (`LH_C((`LH_P2(((equal_1 ((times_1 x_3) y_1)) one_1), ((and__1 ((equal_1 x_3) one_1)) ((equal_1 y_1) one_1)))), (`LH_C((`LH_P2(((equal_1 ((difference_1 x_3) y_1)) ((difference_1 z_1) y_1)), (((if__1 ((lessp_1 x_3) y_1)) (not__1 ((lessp_1 y_1) z_1))) (((if__1 ((lessp_1 z_1) y_1)) (not__1 ((lessp_1 y_1) x_3))) ((equal_1 x_3) z_1))))), (`LH_C((`LH_P2(((equal_1 ((lessp_1 x_3) y_1)) z_1), (((if__1 ((lessp_1 x_3) y_1)) ((equal_1 boyerTrue_1) z_1)) ((equal_1 boyerFalse_1) z_1)))), (`LH_N)))))))))))))))))))))))))))
  and zero_1 = (`Fun((`ZERO), (`LH_N), (lazy (`LH_N))))
  and two_1 = (`Fun((`TWO), (`LH_N), (lazy (`LH_C((`LH_P2(two_1, (add1_1 one_1))), (`LH_N))))))
  and if__1 = (fun _lh_if__arg1_1 _lh_if__arg2_1 _lh_if__arg3_1 -> 
    (`Fun((`IF), (`LH_C(_lh_if__arg1_1, (`LH_C(_lh_if__arg2_1, (`LH_C(_lh_if__arg3_1, (`LH_N))))))), (lazy (`LH_C((`LH_P2((((if__1 (((if__1 x_3) y_1) z_1)) u_1) w_1), (((if__1 x_3) (((if__1 y_1) u_1) w_1)) (((if__1 z_1) u_1) w_1)))), (`LH_N)))))))
  and boyerFalse_1 = (`Fun((`FALSE), (`LH_N), (lazy (`LH_N))))
  and plus_1 = (fun _lh_plus_arg1_1 _lh_plus_arg2_1 -> 
    (`Fun((`PLUS), (`LH_C(_lh_plus_arg1_1, (`LH_C(_lh_plus_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((plus_1 ((plus_1 x_3) y_1)) z_1), ((plus_1 x_3) ((plus_1 y_1) z_1)))), (`LH_C((`LH_P2(((plus_1 ((remainder_1 x_3) y_1)) ((times_1 y_1) ((quotient_1 x_3) y_1))), x_3)), (`LH_C((`LH_P2(((plus_1 x_3) (add1_1 y_1)), (add1_1 ((plus_1 x_3) y_1)))), (`LH_N)))))))))))
  and iff_1 = (fun _lh_iff_arg1_1 _lh_iff_arg2_1 -> 
    (`Fun((`IFF), (`LH_C(_lh_iff_arg1_1, (`LH_C(_lh_iff_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((iff_1 x_3) y_1), ((and__1 ((implies_1 x_3) y_1)) ((implies_1 y_1) x_3)))), (`LH_N)))))))
  and a_6 = (`Var((`A)))
  and odd__1 = (fun _lh_odd__arg1_1 -> 
    (`Fun((`ODD), (`LH_C(_lh_odd__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((odd__1 x_3), (even__1 (sub1_1 x_3)))), (`LH_N)))))))
  and nlistp_1 = (fun _lh_nlistp_arg1_1 -> 
    (`Fun((`NLISTP), (`LH_C(_lh_nlistp_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((nlistp_1 x_3), (not__1 (listp_1 x_3)))), (`LH_N)))))))
  and divides_1 = (fun _lh_divides_arg1_1 _lh_divides_arg2_1 -> 
    (`Fun((`DIVIDES), (`LH_C(_lh_divides_arg1_1, (`LH_C(_lh_divides_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((divides_1 x_3) y_1), (zerop_1 ((remainder_1 y_1) x_3)))), (`LH_N)))))))
  and even__1 = (fun _lh_even__arg1_1 -> 
    (`Fun((`EVEN), (`LH_C(_lh_even__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((even__1 x_3), (((if__1 (zerop_1 x_3)) boyerTrue_1) (odd__1 (sub1_1 x_3))))), (`LH_N)))))))
  and exp__1 = (fun _lh_exp__arg1_1 _lh_exp__arg2_1 -> 
    (`Fun((`EXP), (`LH_C(_lh_exp__arg1_1, (`LH_C(_lh_exp__arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((exp__1 x_3) ((plus_1 y_1) z_1)), ((times_1 ((exp__1 x_3) y_1)) ((exp__1 x_3) z_1)))), (`LH_C((`LH_P2(((exp__1 x_3) ((times_1 y_1) z_1)), ((exp__1 ((exp__1 x_3) y_1)) z_1))), (`LH_N)))))))))
  and y_1 = (`Var((`Y)))
  and consp_1 = (fun _lh_consp_arg1_1 -> 
    (`Fun((`CONSP), (`LH_C(_lh_consp_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((consp_1 ((cons_1 x_3) y_1)), boyerTrue_1)), (`LH_N)))))))
  and four_1 = (`Fun((`FOUR), (`LH_N), (lazy (`LH_C((`LH_P2(four_1, (add1_1 (add1_1 two_1)))), (`LH_N))))))
  and f_1_6 = (fun _lh_f_arg1_1 -> 
    (`Fun((`F), (`LH_C(_lh_f_arg1_1, (`LH_N))), (lazy (`LH_N)))))
  and implies_1 = (fun _lh_implies_arg1_1 _lh_implies_arg2_1 -> 
    (`Fun((`IMPLIES), (`LH_C(_lh_implies_arg1_1, (`LH_C(_lh_implies_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((implies_1 x_3) y_1), (((if__1 x_3) (((if__1 y_1) boyerTrue_1) boyerFalse_1)) boyerTrue_1))), (`LH_N)))))))
  and d_1 = (`Var((`D)))
  and lessp_1 = (fun _lh_lessp_arg1_1 _lh_lessp_arg2_1 -> 
    (`Fun((`LESSP), (`LH_C(_lh_lessp_arg1_1, (`LH_C(_lh_lessp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lessp_1 ((remainder_1 x_3) y_1)) y_1), (not__1 (zerop_1 y_1)))), (`LH_C((`LH_P2(((lessp_1 ((quotient_1 x_3) y_1)) x_3), ((and__1 (not__1 (zerop_1 x_3))) ((lessp_1 one_1) y_1)))), (`LH_C((`LH_P2(((lessp_1 ((plus_1 x_3) y_1)) ((plus_1 x_3) z_1)), ((lessp_1 y_1) z_1))), (`LH_C((`LH_P2(((lessp_1 ((times_1 x_3) z_1)) ((times_1 y_1) z_1)), ((and__1 (not__1 (zerop_1 z_1))) ((lessp_1 x_3) y_1)))), (`LH_C((`LH_P2(((lessp_1 y_1) ((plus_1 x_3) y_1)), (not__1 (zerop_1 x_3)))), (`LH_N)))))))))))))))
  and boyerTrue_1 = (`Fun((`TRUE), (`LH_N), (lazy (`LH_N))))
  and listp_1 = (fun _lh_listp_arg1_1 -> 
    (`Fun((`LISTP), (`LH_C(_lh_listp_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((listp_1 x_3), ((or__1 (nilp_1 x_3)) (consp_1 x_3)))), (`LH_N)))))))
  and one_1 = (`Fun((`ONE), (`LH_N), (lazy (`LH_C((`LH_P2(one_1, (add1_1 zero_1))), (`LH_N))))))
  and gcd__1 = (fun _lh_gcd__arg1_1 _lh_gcd__arg2_1 -> 
    (`Fun((`GCD), (`LH_C(_lh_gcd__arg1_1, (`LH_C(_lh_gcd__arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((gcd__1 x_3) y_1), ((gcd__1 y_1) x_3))), (`LH_C((`LH_P2(((gcd__1 ((times_1 x_3) z_1)) ((times_1 y_1) z_1)), ((times_1 z_1) ((gcd__1 x_3) y_1)))), (`LH_N)))))))))
  and and__1 = (fun _lh_and__arg1_1 _lh_and__arg2_1 -> 
    (`Fun((`AND), (`LH_C(_lh_and__arg1_1, (`LH_C(_lh_and__arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((and__1 x_3) y_1), (((if__1 x_3) (((if__1 y_1) boyerTrue_1) boyerFalse_1)) boyerFalse_1))), (`LH_N)))))))
  and quotient_1 = (fun _lh_quotient_arg1_1 _lh_quotient_arg2_1 -> 
    (`Fun((`QUOTIENT), (`LH_C(_lh_quotient_arg1_1, (`LH_C(_lh_quotient_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((quotient_1 ((plus_1 x_3) ((plus_1 x_3) y_1))) two_1), ((plus_1 x_3) ((quotient_1 y_1) two_1)))), (`LH_C((`LH_P2(((quotient_1 ((times_1 y_1) x_3)) y_1), (((if__1 (zerop_1 y_1)) zero_1) x_3))), (`LH_N)))))))))
  and c_1 = (`Var((`C)))
  in (let rec subst0_1 = (`LH_C((`LH_P2((`X), (f_1_6 ((plus_1 ((plus_1 a_6) b_3)) ((plus_1 c_1) zero_1))))), (`LH_C((`LH_P2((`Y), (f_1_6 ((times_1 ((times_1 a_6) b_3)) ((plus_1 c_1) d_1))))), (`LH_C((`LH_P2((`Z), (f_1_6 (reverse__1 ((append_1 ((append_1 a_6) b_3)) nil_1))))), (`LH_C((`LH_P2((`U), ((equal_1 ((plus_1 a_6) b_3)) ((difference_1 x_3) y_1)))), (`LH_C((`LH_P2((`W), ((lessp_1 ((remainder_1 a_6) b_3)) ((member_1 a_6) (length__1 b_3))))), (`LH_N))))))))))) in
    (let rec theorem_1 = ((implies_1 ((and__1 ((implies_1 _lh_test0_arg1_1) y_1)) ((and__1 ((implies_1 y_1) z_1)) ((and__1 ((implies_1 z_1) u_1)) ((implies_1 u_1) w_1))))) ((implies_1 x_3) w_1)) in
      (tautp_d0 ((apply_subst_d0 subst0_1) theorem_1))))
and testBoyer_nofib_d0 _lh_testBoyer_nofib_arg1_1 =
  ((all_d0 test0_d0) ((replicate_d0 _lh_testBoyer_nofib_arg1_1) (`Var((`X)))))
and truep_d0 _lh_truep_arg1_1 _lh_truep_arg2_1 =
  (match _lh_truep_arg1_1 with
    | `Fun(_lh_truep_Fun_0_1, _lh_truep_Fun_1_1, _lh_truep_Fun_2_1) -> 
      (match _lh_truep_Fun_0_1 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList_d2 _lh_truep_arg1_1) _lh_truep_arg2_1))
    | _ -> 
      ((termInList_d2 _lh_truep_arg1_1) _lh_truep_arg2_1))
and truep_d1 _lh_truep_arg1_2 _lh_truep_arg2_2 =
  (match _lh_truep_arg1_2 with
    | `Fun(_lh_truep_Fun_0_2, _lh_truep_Fun_1_2, _lh_truep_Fun_2_2) -> 
      (match _lh_truep_Fun_0_2 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList_d3 _lh_truep_arg1_2) _lh_truep_arg2_2))
    | _ -> 
      ((termInList_d3 _lh_truep_arg1_2) _lh_truep_arg2_2));;

(* lumberhack *)
let rec all_d0_d0 _lh_all_arg1_2 _lh_all_arg2_0 =
  (_lh_all_arg2_0 _lh_all_arg1_2);;
let rec find_d0_d0 _lh_find_arg1_1_3 _lh_find_arg2_2 =
  (_lh_find_arg2_2 _lh_find_arg1_1_3);;
let rec find_d1_d0 _lh_find_arg1_1_2 _lh_find_arg2_1 =
  (match _lh_find_arg2_1 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_1_6 = (`ERROR) in
        (let rec _lh_apply_subst_LH_P2_0_6 = false in
          (fun _lh_apply_subst_Var_0_8 -> 
            (if _lh_apply_subst_LH_P2_0_6 then
              _lh_apply_subst_LH_P2_1_6
            else
              (`Var(_lh_apply_subst_Var_0_8))))))
    | `LH_C(_lh_find_LH_C_0_6, _lh_find_LH_C_1_1_1) -> 
      (match _lh_find_LH_C_0_6 with
        | `LH_P2(_lh_find_LH_P2_0_6, _lh_find_LH_P2_1_6) -> 
          (if (_lh_find_arg1_1_2 = _lh_find_LH_P2_0_6) then
            (let rec _lh_apply_subst_LH_P2_1_7 = _lh_find_LH_P2_1_6 in
              (let rec _lh_apply_subst_LH_P2_0_7 = true in
                (fun _lh_apply_subst_Var_0_9 -> 
                  (if _lh_apply_subst_LH_P2_0_7 then
                    _lh_apply_subst_LH_P2_1_7
                  else
                    (`Var(_lh_apply_subst_Var_0_9))))))
          else
            ((find_d1_d0 _lh_find_arg1_1_2) _lh_find_LH_C_1_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_d0_d0 f_1 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_1 h_0), ((map_d0_d0 f_1) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0 f_2 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_2 h_1), ((map_d1_d0 f_2) t_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0 f_3 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C((f_3 h_2), ((map_d2_d0 f_3) t_2)))
    | `LH_N -> 
      (`LH_N));;
let rec apply_subst_d0_d0 _lh_apply_subst_arg1_1 _lh_apply_subst_arg2_1 =
  (match _lh_apply_subst_arg2_1 with
    | `Var(_lh_apply_subst_Var_0_1) -> 
      (let rec _lh_matchIdent_4 = ((find_d0_d0 _lh_apply_subst_Var_0_1) _lh_apply_subst_arg1_1) in
        (_lh_matchIdent_4 _lh_apply_subst_Var_0_1))
    | `Fun(_lh_apply_subst_Fun_0_1, _lh_apply_subst_Fun_1_1, _lh_apply_subst_Fun_2_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_1, ((map_d0_d0 (apply_subst_d0_d0 _lh_apply_subst_arg1_1)) _lh_apply_subst_Fun_1_1), _lh_apply_subst_Fun_2_1))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0 _lh_apply_subst_arg1_0 _lh_apply_subst_arg2_0 =
  (match _lh_apply_subst_arg2_0 with
    | `Var(_lh_apply_subst_Var_0_0) -> 
      (let rec _lh_matchIdent_2 = ((find_d1_d0 _lh_apply_subst_Var_0_0) _lh_apply_subst_arg1_0) in
        (_lh_matchIdent_2 _lh_apply_subst_Var_0_0))
    | `Fun(_lh_apply_subst_Fun_0_0, _lh_apply_subst_Fun_1_0, _lh_apply_subst_Fun_2_0) -> 
      (`Fun(_lh_apply_subst_Fun_0_0, ((map_d2_d0 (apply_subst_d1_d0 _lh_apply_subst_arg1_0)) _lh_apply_subst_Fun_1_0), _lh_apply_subst_Fun_2_0))
    | _ -> 
      (failwith "error"))
and falsep_d0_d0 _lh_falsep_arg1_1 _lh_falsep_arg2_1 =
  (match _lh_falsep_arg1_1 with
    | `Fun(_lh_falsep_Fun_0_1, _lh_falsep_Fun_1_1, _lh_falsep_Fun_2_1) -> 
      (match _lh_falsep_Fun_0_1 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList_d0_d0 _lh_falsep_arg1_1) _lh_falsep_arg2_1))
    | _ -> 
      ((termInList_d0_d1 _lh_falsep_arg1_1) _lh_falsep_arg2_1))
and falsep_d1_d0 _lh_falsep_arg1_0 _lh_falsep_arg2_0 =
  (match _lh_falsep_arg1_0 with
    | `Fun(_lh_falsep_Fun_0_0, _lh_falsep_Fun_1_0, _lh_falsep_Fun_2_0) -> 
      (match _lh_falsep_Fun_0_0 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList_d1_d0 _lh_falsep_arg1_0) _lh_falsep_arg2_0))
    | _ -> 
      ((termInList_d1_d1 _lh_falsep_arg1_0) _lh_falsep_arg2_0))
and find_d2_d0 _lh_find_arg1_1_1 _lh_find_arg2_0 =
  (match _lh_find_arg2_0 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_1_0 = (`ERROR) in
        (let rec _lh_one_way_unify1_LH_P2_0_0 = false in
          (fun _lh_one_way_unify1_Var_0_1 _lh_one_way_unify1_arg1_1 _lh_one_way_unify1_arg3_1 -> 
            (if _lh_one_way_unify1_LH_P2_0_0 then
              (`LH_P2(((termEq_d0_d0 _lh_one_way_unify1_arg1_1) _lh_one_way_unify1_LH_P2_1_0), _lh_one_way_unify1_arg3_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1, _lh_one_way_unify1_arg1_1)), _lh_one_way_unify1_arg3_1))))))))
    | `LH_C(_lh_find_LH_C_0_5, _lh_find_LH_C_1_1_0) -> 
      (match _lh_find_LH_C_0_5 with
        | `LH_P2(_lh_find_LH_P2_0_5, _lh_find_LH_P2_1_5) -> 
          (if (_lh_find_arg1_1_1 = _lh_find_LH_P2_0_5) then
            (let rec _lh_one_way_unify1_LH_P2_1_1 = _lh_find_LH_P2_1_5 in
              (let rec _lh_one_way_unify1_LH_P2_0_1 = true in
                (fun _lh_one_way_unify1_Var_0_2 _lh_one_way_unify1_arg1_2 _lh_one_way_unify1_arg3_2 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1 then
                    (`LH_P2(((termEq_d0_d0 _lh_one_way_unify1_arg1_2) _lh_one_way_unify1_LH_P2_1_1), _lh_one_way_unify1_arg3_2))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_2, _lh_one_way_unify1_arg1_2)), _lh_one_way_unify1_arg3_2))))))))
          else
            ((find_d2_d0 _lh_find_arg1_1_1) _lh_find_LH_C_1_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and one_way_unify1_lst_d0_d0 _lh_one_way_unify1_lst_arg1_0 _lh_one_way_unify1_lst_arg2_0 _lh_one_way_unify1_lst_arg3_0 =
  (match _lh_one_way_unify1_lst_arg1_0 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_0 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_0))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_0, _lh_one_way_unify1_lst_LH_C_1_0) -> 
      (match _lh_one_way_unify1_lst_arg2_0 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1, _lh_one_way_unify1_lst_LH_C_1_1) -> 
          (let rec _lh_matchIdent_0 = (((one_way_unify1_d0_d0 _lh_one_way_unify1_lst_LH_C_0_0) _lh_one_way_unify1_lst_LH_C_0_1) _lh_one_way_unify1_lst_arg3_0) in
            (match _lh_matchIdent_0 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_0, _lh_one_way_unify1_lst_LH_P2_1_0) -> 
                (let rec _lh_matchIdent_1 = (((one_way_unify1_lst_d0_d0 _lh_one_way_unify1_lst_LH_C_1_0) _lh_one_way_unify1_lst_LH_C_1_1) _lh_one_way_unify1_lst_LH_P2_1_0) in
                  (match _lh_matchIdent_1 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1, _lh_one_way_unify1_lst_LH_P2_1_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_0 && _lh_one_way_unify1_lst_LH_P2_0_1), _lh_one_way_unify1_lst_LH_P2_1_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_d0_d0 _lh_one_way_unify1_arg1_0 _lh_one_way_unify1_arg2_0 _lh_one_way_unify1_arg3_0 =
  (match _lh_one_way_unify1_arg2_0 with
    | `Var(_lh_one_way_unify1_Var_0_0) -> 
      (let rec _lh_matchIdent_3 = ((find_d2_d0 _lh_one_way_unify1_Var_0_0) _lh_one_way_unify1_arg3_0) in
        (((_lh_matchIdent_3 _lh_one_way_unify1_Var_0_0) _lh_one_way_unify1_arg1_0) _lh_one_way_unify1_arg3_0))
    | _ -> 
      (match _lh_one_way_unify1_arg1_0 with
        | `Fun(_lh_one_way_unify1_Fun_0_0, _lh_one_way_unify1_Fun_1_0, _lh_one_way_unify1_Fun_2_0) -> 
          (match _lh_one_way_unify1_arg2_0 with
            | `Fun(_lh_one_way_unify1_Fun_0_1, _lh_one_way_unify1_Fun_1_1, _lh_one_way_unify1_Fun_2_1) -> 
              (if (_lh_one_way_unify1_Fun_0_0 = _lh_one_way_unify1_Fun_0_1) then
                (((one_way_unify1_lst_d0_d0 _lh_one_way_unify1_Fun_1_0) _lh_one_way_unify1_Fun_1_1) _lh_one_way_unify1_arg3_0)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify_d0_d0 _lh_one_way_unify_arg1_0 _lh_one_way_unify_arg2_0 =
  (((one_way_unify1_d0_d0 _lh_one_way_unify_arg1_0) _lh_one_way_unify_arg2_0) (`LH_N))
and replicate_d0_d0 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 = 0) then
    (fun _lh_all_arg1_0 -> 
      true)
  else
    (let rec _lh_all_LH_C_1_0 = ((replicate_d0_d0 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec _lh_all_LH_C_0_0 = _lh_replicate_arg2_0 in
        (fun _lh_all_arg1_1 -> 
          (if (_lh_all_arg1_1 _lh_all_LH_C_0_0) then
            ((all_d0_d0 _lh_all_arg1_1) _lh_all_LH_C_1_0)
          else
            false)))))
and rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_0 _lh_rewrite_with_lemmas_helper_arg2_0 =
  (let rec _lh_matchIdent_6 = _lh_rewrite_with_lemmas_helper_arg2_0 in
    (match _lh_matchIdent_6 with
      | `LH_N -> 
        _lh_rewrite_with_lemmas_helper_arg1_0
      | `LH_C(_lh_rewrite_with_lemmas_helper_LH_C_0_0, _lh_rewrite_with_lemmas_helper_LH_C_1_0) -> 
        (match _lh_rewrite_with_lemmas_helper_LH_C_0_0 with
          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_0, _lh_rewrite_with_lemmas_helper_LH_P2_1_0) -> 
            (let rec _lh_matchIdent_7 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_0) in
              (match _lh_matchIdent_7 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_0))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_0) _lh_rewrite_with_lemmas_helper_LH_C_1_0))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and rewrite_with_lemmas_d0_d0 _lh_rewrite_with_lemmas_arg1_0 _lh_rewrite_with_lemmas_arg2_0 =
  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_arg1_0) (Lazy.force _lh_rewrite_with_lemmas_arg2_0))
and rewrite_d0_d0 _lh_rewrite_arg1_0 =
  (match _lh_rewrite_arg1_0 with
    | `Var(_lh_rewrite_Var_0_0) -> 
      (`Var(_lh_rewrite_Var_0_0))
    | `Fun(_lh_rewrite_Fun_0_0, _lh_rewrite_Fun_1_0, _lh_rewrite_Fun_2_0) -> 
      ((rewrite_with_lemmas_d0_d0 (`Fun(_lh_rewrite_Fun_0_0, ((map_d1_d0 rewrite_d0_d0) _lh_rewrite_Fun_1_0), _lh_rewrite_Fun_2_0))) _lh_rewrite_Fun_2_0)
    | _ -> 
      (failwith "error"))
and tautologyp_d0_d0 _lh_tautologyp_arg1_0 _lh_tautologyp_arg2_0 _lh_tautologyp_arg3_0 =
  (if ((truep_d0_d0 _lh_tautologyp_arg1_0) _lh_tautologyp_arg2_0) then
    true
  else
    (if ((falsep_d0_d0 _lh_tautologyp_arg1_0) _lh_tautologyp_arg3_0) then
      false
    else
      (let rec _lh_matchIdent_5 = _lh_tautologyp_arg1_0 in
        (match _lh_matchIdent_5 with
          | `Fun(_lh_tautologyp_Fun_0_0, _lh_tautologyp_Fun_1_0, _lh_tautologyp_Fun_2_0) -> 
            (match _lh_tautologyp_Fun_0_0 with
              | `IF -> 
                (match _lh_tautologyp_Fun_1_0 with
                  | `LH_C(_lh_tautologyp_LH_C_0_0, _lh_tautologyp_LH_C_1_0) -> 
                    (match _lh_tautologyp_LH_C_1_0 with
                      | `LH_C(_lh_tautologyp_LH_C_0_1, _lh_tautologyp_LH_C_1_1) -> 
                        (match _lh_tautologyp_LH_C_1_1 with
                          | `LH_C(_lh_tautologyp_LH_C_0_2, _lh_tautologyp_LH_C_1_2) -> 
                            (match _lh_tautologyp_LH_C_1_2 with
                              | `LH_N -> 
                                (if ((truep_d1_d0 _lh_tautologyp_LH_C_0_0) _lh_tautologyp_arg2_0) then
                                  (((tautologyp_d0_d0 _lh_tautologyp_LH_C_0_1) _lh_tautologyp_arg2_0) _lh_tautologyp_arg3_0)
                                else
                                  (if ((falsep_d1_d0 _lh_tautologyp_LH_C_0_0) _lh_tautologyp_arg3_0) then
                                    (((tautologyp_d0_d0 _lh_tautologyp_LH_C_0_2) _lh_tautologyp_arg2_0) _lh_tautologyp_arg3_0)
                                  else
                                    ((((tautologyp_d0_d0 _lh_tautologyp_LH_C_0_1) (`LH_C(_lh_tautologyp_LH_C_0_0, _lh_tautologyp_arg2_0))) _lh_tautologyp_arg3_0) && (((tautologyp_d0_d0 _lh_tautologyp_LH_C_0_2) _lh_tautologyp_arg2_0) (`LH_C(_lh_tautologyp_LH_C_0_0, _lh_tautologyp_arg3_0))))))
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
and tautp_d0_d0 _lh_tautp_arg1_0 =
  (((tautologyp_d0_d0 (rewrite_d0_d0 _lh_tautp_arg1_0)) (`LH_N)) (`LH_N))
and termEq_d0_d0 _lh_termEq_arg1_1 _lh_termEq_arg2_1 =
  (match _lh_termEq_arg1_1 with
    | `Var(_lh_termEq_Var_0_2) -> 
      (match _lh_termEq_arg2_1 with
        | `Var(_lh_termEq_Var_0_3) -> 
          (_lh_termEq_Var_0_2 = _lh_termEq_Var_0_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2, _lh_termEq_Fun_1_2, _lh_termEq_Fun_2_2) -> 
      (match _lh_termEq_arg2_1 with
        | `Fun(_lh_termEq_Fun_0_3, _lh_termEq_Fun_1_3, _lh_termEq_Fun_2_3) -> 
          ((_lh_termEq_Fun_0_2 = _lh_termEq_Fun_0_3) && ((termLsEq_d0_d0 _lh_termEq_Fun_1_2) _lh_termEq_Fun_1_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d1_d0 _lh_termEq_arg1_2 _lh_termEq_arg2_2 =
  (match _lh_termEq_arg1_2 with
    | `Var(_lh_termEq_Var_0_4) -> 
      (match _lh_termEq_arg2_2 with
        | `Var(_lh_termEq_Var_0_5) -> 
          (_lh_termEq_Var_0_4 = _lh_termEq_Var_0_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_4, _lh_termEq_Fun_1_4, _lh_termEq_Fun_2_4) -> 
      (match _lh_termEq_arg2_2 with
        | `Fun(_lh_termEq_Fun_0_5, _lh_termEq_Fun_1_5, _lh_termEq_Fun_2_5) -> 
          ((_lh_termEq_Fun_0_4 = _lh_termEq_Fun_0_5) && ((termLsEq_d1_d0 _lh_termEq_Fun_1_4) _lh_termEq_Fun_1_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d1_d1 _lh_termEq_arg1_6 _lh_termEq_arg2_6 =
  (match _lh_termEq_arg1_6 with
    | `Var(_lh_termEq_Var_0_1_2) -> 
      (match _lh_termEq_arg2_6 with
        | `Var(_lh_termEq_Var_0_1_3) -> 
          (_lh_termEq_Var_0_1_2 = _lh_termEq_Var_0_1_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_2, _lh_termEq_Fun_1_1_2, _lh_termEq_Fun_2_1_2) -> 
      (match _lh_termEq_arg2_6 with
        | `Fun(_lh_termEq_Fun_0_1_3, _lh_termEq_Fun_1_1_3, _lh_termEq_Fun_2_1_3) -> 
          ((_lh_termEq_Fun_0_1_2 = _lh_termEq_Fun_0_1_3) && ((termLsEq_d1_d1 _lh_termEq_Fun_1_1_2) _lh_termEq_Fun_1_1_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d2_d0 _lh_termEq_arg1_7 _lh_termEq_arg2_7 =
  (match _lh_termEq_arg1_7 with
    | `Var(_lh_termEq_Var_0_1_4) -> 
      (match _lh_termEq_arg2_7 with
        | `Var(_lh_termEq_Var_0_1_5) -> 
          (_lh_termEq_Var_0_1_4 = _lh_termEq_Var_0_1_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_4, _lh_termEq_Fun_1_1_4, _lh_termEq_Fun_2_1_4) -> 
      (match _lh_termEq_arg2_7 with
        | `Fun(_lh_termEq_Fun_0_1_5, _lh_termEq_Fun_1_1_5, _lh_termEq_Fun_2_1_5) -> 
          ((_lh_termEq_Fun_0_1_4 = _lh_termEq_Fun_0_1_5) && ((termLsEq_d2_d0 _lh_termEq_Fun_1_1_4) _lh_termEq_Fun_1_1_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d2_d1 _lh_termEq_arg1_8 _lh_termEq_arg2_8 =
  (match _lh_termEq_arg1_8 with
    | `Var(_lh_termEq_Var_0_1_6) -> 
      (match _lh_termEq_arg2_8 with
        | `Var(_lh_termEq_Var_0_1_7) -> 
          (_lh_termEq_Var_0_1_6 = _lh_termEq_Var_0_1_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_6, _lh_termEq_Fun_1_1_6, _lh_termEq_Fun_2_1_6) -> 
      (match _lh_termEq_arg2_8 with
        | `Fun(_lh_termEq_Fun_0_1_7, _lh_termEq_Fun_1_1_7, _lh_termEq_Fun_2_1_7) -> 
          ((_lh_termEq_Fun_0_1_6 = _lh_termEq_Fun_0_1_7) && ((termLsEq_d2_d1 _lh_termEq_Fun_1_1_6) _lh_termEq_Fun_1_1_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d3_d0 _lh_termEq_arg1_3 _lh_termEq_arg2_3 =
  (match _lh_termEq_arg1_3 with
    | `Var(_lh_termEq_Var_0_6) -> 
      (match _lh_termEq_arg2_3 with
        | `Var(_lh_termEq_Var_0_7) -> 
          (_lh_termEq_Var_0_6 = _lh_termEq_Var_0_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_6, _lh_termEq_Fun_1_6, _lh_termEq_Fun_2_6) -> 
      (match _lh_termEq_arg2_3 with
        | `Fun(_lh_termEq_Fun_0_7, _lh_termEq_Fun_1_7, _lh_termEq_Fun_2_7) -> 
          ((_lh_termEq_Fun_0_6 = _lh_termEq_Fun_0_7) && ((termLsEq_d3_d0 _lh_termEq_Fun_1_6) _lh_termEq_Fun_1_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d3_d1 _lh_termEq_arg1_0 _lh_termEq_arg2_0 =
  (match _lh_termEq_arg1_0 with
    | `Var(_lh_termEq_Var_0_0) -> 
      (match _lh_termEq_arg2_0 with
        | `Var(_lh_termEq_Var_0_1) -> 
          (_lh_termEq_Var_0_0 = _lh_termEq_Var_0_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_0, _lh_termEq_Fun_1_0, _lh_termEq_Fun_2_0) -> 
      (match _lh_termEq_arg2_0 with
        | `Fun(_lh_termEq_Fun_0_1, _lh_termEq_Fun_1_1, _lh_termEq_Fun_2_1) -> 
          ((_lh_termEq_Fun_0_0 = _lh_termEq_Fun_0_1) && ((termLsEq_d3_d1 _lh_termEq_Fun_1_0) _lh_termEq_Fun_1_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d4_d0 _lh_termEq_arg1_5 _lh_termEq_arg2_5 =
  (match _lh_termEq_arg1_5 with
    | `Var(_lh_termEq_Var_0_1_0) -> 
      (match _lh_termEq_arg2_5 with
        | `Var(_lh_termEq_Var_0_1_1) -> 
          (_lh_termEq_Var_0_1_0 = _lh_termEq_Var_0_1_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_0, _lh_termEq_Fun_1_1_0, _lh_termEq_Fun_2_1_0) -> 
      (match _lh_termEq_arg2_5 with
        | `Fun(_lh_termEq_Fun_0_1_1, _lh_termEq_Fun_1_1_1, _lh_termEq_Fun_2_1_1) -> 
          ((_lh_termEq_Fun_0_1_0 = _lh_termEq_Fun_0_1_1) && ((termLsEq_d4_d0 _lh_termEq_Fun_1_1_0) _lh_termEq_Fun_1_1_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d4_d1 _lh_termEq_arg1_4 _lh_termEq_arg2_4 =
  (match _lh_termEq_arg1_4 with
    | `Var(_lh_termEq_Var_0_8) -> 
      (match _lh_termEq_arg2_4 with
        | `Var(_lh_termEq_Var_0_9) -> 
          (_lh_termEq_Var_0_8 = _lh_termEq_Var_0_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_8, _lh_termEq_Fun_1_8, _lh_termEq_Fun_2_8) -> 
      (match _lh_termEq_arg2_4 with
        | `Fun(_lh_termEq_Fun_0_9, _lh_termEq_Fun_1_9, _lh_termEq_Fun_2_9) -> 
          ((_lh_termEq_Fun_0_8 = _lh_termEq_Fun_0_9) && ((termLsEq_d4_d1 _lh_termEq_Fun_1_8) _lh_termEq_Fun_1_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termInList_d0_d0 _lh_termInList_arg1_3 _lh_termInList_arg2_3 =
  (match _lh_termInList_arg2_3 with
    | `LH_C(_lh_termInList_LH_C_0_3, _lh_termInList_LH_C_1_3) -> 
      (if ((termEq_d1_d0 _lh_termInList_arg1_3) _lh_termInList_LH_C_0_3) then
        true
      else
        ((termInList_d0_d0 _lh_termInList_arg1_3) _lh_termInList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d0_d1 _lh_termInList_arg1_2 _lh_termInList_arg2_2 =
  (match _lh_termInList_arg2_2 with
    | `LH_C(_lh_termInList_LH_C_0_2, _lh_termInList_LH_C_1_2) -> 
      (if ((termEq_d1_d1 _lh_termInList_arg1_2) _lh_termInList_LH_C_0_2) then
        true
      else
        ((termInList_d0_d1 _lh_termInList_arg1_2) _lh_termInList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d1_d0 _lh_termInList_arg1_4 _lh_termInList_arg2_4 =
  (match _lh_termInList_arg2_4 with
    | `LH_C(_lh_termInList_LH_C_0_4, _lh_termInList_LH_C_1_4) -> 
      (if ((termEq_d2_d0 _lh_termInList_arg1_4) _lh_termInList_LH_C_0_4) then
        true
      else
        ((termInList_d1_d0 _lh_termInList_arg1_4) _lh_termInList_LH_C_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d1_d1 _lh_termInList_arg1_6 _lh_termInList_arg2_6 =
  (match _lh_termInList_arg2_6 with
    | `LH_C(_lh_termInList_LH_C_0_6, _lh_termInList_LH_C_1_6) -> 
      (if ((termEq_d2_d1 _lh_termInList_arg1_6) _lh_termInList_LH_C_0_6) then
        true
      else
        ((termInList_d1_d1 _lh_termInList_arg1_6) _lh_termInList_LH_C_1_6))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d2_d0 _lh_termInList_arg1_0 _lh_termInList_arg2_0 =
  (match _lh_termInList_arg2_0 with
    | `LH_C(_lh_termInList_LH_C_0_0, _lh_termInList_LH_C_1_0) -> 
      (if ((termEq_d3_d0 _lh_termInList_arg1_0) _lh_termInList_LH_C_0_0) then
        true
      else
        ((termInList_d2_d0 _lh_termInList_arg1_0) _lh_termInList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d2_d1 _lh_termInList_arg1_5 _lh_termInList_arg2_5 =
  (match _lh_termInList_arg2_5 with
    | `LH_C(_lh_termInList_LH_C_0_5, _lh_termInList_LH_C_1_5) -> 
      (if ((termEq_d3_d1 _lh_termInList_arg1_5) _lh_termInList_LH_C_0_5) then
        true
      else
        ((termInList_d2_d1 _lh_termInList_arg1_5) _lh_termInList_LH_C_1_5))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d3_d0 _lh_termInList_arg1_1 _lh_termInList_arg2_1 =
  (match _lh_termInList_arg2_1 with
    | `LH_C(_lh_termInList_LH_C_0_1, _lh_termInList_LH_C_1_1) -> 
      (if ((termEq_d4_d0 _lh_termInList_arg1_1) _lh_termInList_LH_C_0_1) then
        true
      else
        ((termInList_d3_d0 _lh_termInList_arg1_1) _lh_termInList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d3_d1 _lh_termInList_arg1_7 _lh_termInList_arg2_7 =
  (match _lh_termInList_arg2_7 with
    | `LH_C(_lh_termInList_LH_C_0_7, _lh_termInList_LH_C_1_7) -> 
      (if ((termEq_d4_d1 _lh_termInList_arg1_7) _lh_termInList_LH_C_0_7) then
        true
      else
        ((termInList_d3_d1 _lh_termInList_arg1_7) _lh_termInList_LH_C_1_7))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0 _lh_termLsEq_arg1_8 _lh_termLsEq_arg2_8 =
  (match _lh_termLsEq_arg1_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_6, _lh_termLsEq_LH_C_1_1_6) -> 
      (match _lh_termLsEq_arg2_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_7, _lh_termLsEq_LH_C_1_1_7) -> 
          (if ((termEq_d0_d0 _lh_termLsEq_LH_C_0_1_6) _lh_termLsEq_LH_C_0_1_7) then
            ((termLsEq_d0_d0 _lh_termLsEq_LH_C_1_1_6) _lh_termLsEq_LH_C_1_1_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d1_d0 _lh_termLsEq_arg1_6 _lh_termLsEq_arg2_6 =
  (match _lh_termLsEq_arg1_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_2, _lh_termLsEq_LH_C_1_1_2) -> 
      (match _lh_termLsEq_arg2_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_3, _lh_termLsEq_LH_C_1_1_3) -> 
          (if ((termEq_d1_d0 _lh_termLsEq_LH_C_0_1_2) _lh_termLsEq_LH_C_0_1_3) then
            ((termLsEq_d1_d0 _lh_termLsEq_LH_C_1_1_2) _lh_termLsEq_LH_C_1_1_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d1_d1 _lh_termLsEq_arg1_4 _lh_termLsEq_arg2_4 =
  (match _lh_termLsEq_arg1_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_8, _lh_termLsEq_LH_C_1_8) -> 
      (match _lh_termLsEq_arg2_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_9, _lh_termLsEq_LH_C_1_9) -> 
          (if ((termEq_d1_d1 _lh_termLsEq_LH_C_0_8) _lh_termLsEq_LH_C_0_9) then
            ((termLsEq_d1_d1 _lh_termLsEq_LH_C_1_8) _lh_termLsEq_LH_C_1_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d2_d0 _lh_termLsEq_arg1_5 _lh_termLsEq_arg2_5 =
  (match _lh_termLsEq_arg1_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_0, _lh_termLsEq_LH_C_1_1_0) -> 
      (match _lh_termLsEq_arg2_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_1, _lh_termLsEq_LH_C_1_1_1) -> 
          (if ((termEq_d2_d0 _lh_termLsEq_LH_C_0_1_0) _lh_termLsEq_LH_C_0_1_1) then
            ((termLsEq_d2_d0 _lh_termLsEq_LH_C_1_1_0) _lh_termLsEq_LH_C_1_1_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d2_d1 _lh_termLsEq_arg1_2 _lh_termLsEq_arg2_2 =
  (match _lh_termLsEq_arg1_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_4, _lh_termLsEq_LH_C_1_4) -> 
      (match _lh_termLsEq_arg2_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_5, _lh_termLsEq_LH_C_1_5) -> 
          (if ((termEq_d2_d1 _lh_termLsEq_LH_C_0_4) _lh_termLsEq_LH_C_0_5) then
            ((termLsEq_d2_d1 _lh_termLsEq_LH_C_1_4) _lh_termLsEq_LH_C_1_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d3_d0 _lh_termLsEq_arg1_3 _lh_termLsEq_arg2_3 =
  (match _lh_termLsEq_arg1_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_6, _lh_termLsEq_LH_C_1_6) -> 
      (match _lh_termLsEq_arg2_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_7, _lh_termLsEq_LH_C_1_7) -> 
          (if ((termEq_d3_d0 _lh_termLsEq_LH_C_0_6) _lh_termLsEq_LH_C_0_7) then
            ((termLsEq_d3_d0 _lh_termLsEq_LH_C_1_6) _lh_termLsEq_LH_C_1_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d3_d1 _lh_termLsEq_arg1_7 _lh_termLsEq_arg2_7 =
  (match _lh_termLsEq_arg1_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_4, _lh_termLsEq_LH_C_1_1_4) -> 
      (match _lh_termLsEq_arg2_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_5, _lh_termLsEq_LH_C_1_1_5) -> 
          (if ((termEq_d3_d1 _lh_termLsEq_LH_C_0_1_4) _lh_termLsEq_LH_C_0_1_5) then
            ((termLsEq_d3_d1 _lh_termLsEq_LH_C_1_1_4) _lh_termLsEq_LH_C_1_1_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d4_d0 _lh_termLsEq_arg1_1 _lh_termLsEq_arg2_1 =
  (match _lh_termLsEq_arg1_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2, _lh_termLsEq_LH_C_1_2) -> 
      (match _lh_termLsEq_arg2_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_3, _lh_termLsEq_LH_C_1_3) -> 
          (if ((termEq_d4_d0 _lh_termLsEq_LH_C_0_2) _lh_termLsEq_LH_C_0_3) then
            ((termLsEq_d4_d0 _lh_termLsEq_LH_C_1_2) _lh_termLsEq_LH_C_1_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d4_d1 _lh_termLsEq_arg1_0 _lh_termLsEq_arg2_0 =
  (match _lh_termLsEq_arg1_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_0, _lh_termLsEq_LH_C_1_0) -> 
      (match _lh_termLsEq_arg2_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_1, _lh_termLsEq_LH_C_1_1) -> 
          (if ((termEq_d4_d1 _lh_termLsEq_LH_C_0_0) _lh_termLsEq_LH_C_0_1) then
            ((termLsEq_d4_d1 _lh_termLsEq_LH_C_1_0) _lh_termLsEq_LH_C_1_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and test0_d0_d0 _lh_test0_arg1_0 =
  let rec boyerTrue_0 = (`Fun((`TRUE), (`LH_N), (lazy (`LH_N))))
  and append_0 = (fun _lh_append_arg1_0 _lh_append_arg2_0 -> 
    (`Fun((`APPEND), (`LH_C(_lh_append_arg1_0, (`LH_C(_lh_append_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((append_0 ((append_0 x_0) y_0)) z_0), ((append_0 x_0) ((append_0 y_0) z_0)))), (`LH_N)))))))
  and difference_0 = (fun _lh_difference_arg1_0 _lh_difference_arg2_0 -> 
    (`Fun((`DIFFERENCE), (`LH_C(_lh_difference_arg1_0, (`LH_C(_lh_difference_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((difference_0 x_0) x_0), zero_0)), (`LH_C((`LH_P2(((difference_0 ((plus_0 x_0) y_0)) x_0), y_0)), (`LH_C((`LH_P2(((difference_0 ((plus_0 y_0) x_0)) x_0), y_0)), (`LH_C((`LH_P2(((difference_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)), ((difference_0 y_0) z_0))), (`LH_C((`LH_P2(((difference_0 ((plus_0 y_0) ((plus_0 x_0) z_0))) x_0), ((plus_0 y_0) z_0))), (`LH_C((`LH_P2(((difference_0 (add1_0 ((plus_0 y_0) z_0))) z_0), (add1_0 y_0))), (`LH_C((`LH_P2(((difference_0 (add1_0 (add1_0 x_0))) two_0), x_0)), (`LH_N)))))))))))))))))))
  and iff_0 = (fun _lh_iff_arg1_0 _lh_iff_arg2_0 -> 
    (`Fun((`IFF), (`LH_C(_lh_iff_arg1_0, (`LH_C(_lh_iff_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((iff_0 x_0) y_0), ((and__0 ((implies_0 x_0) y_0)) ((implies_0 y_0) x_0)))), (`LH_N)))))))
  and z_0 = (`Var((`Z)))
  and remainder_0 = (fun _lh_remainder_arg1_0 _lh_remainder_arg2_0 -> 
    (`Fun((`REMAINDER), (`LH_C(_lh_remainder_arg1_0, (`LH_C(_lh_remainder_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((remainder_0 x_0) one_0), zero_0)), (`LH_C((`LH_P2(((remainder_0 x_0) x_0), zero_0)), (`LH_C((`LH_P2(((remainder_0 ((times_0 x_0) y_0)) x_0), zero_0)), (`LH_C((`LH_P2(((remainder_0 ((times_0 x_0) y_0)) y_0), zero_0)), (`LH_N)))))))))))))
  and nlistp_0 = (fun _lh_nlistp_arg1_0 -> 
    (`Fun((`NLISTP), (`LH_C(_lh_nlistp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((nlistp_0 x_0), (not__0 (listp_0 x_0)))), (`LH_N)))))))
  and and__0 = (fun _lh_and__arg1_0 _lh_and__arg2_0 -> 
    (`Fun((`AND), (`LH_C(_lh_and__arg1_0, (`LH_C(_lh_and__arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((and__0 x_0) y_0), (((if__0 x_0) (((if__0 y_0) boyerTrue_0) boyerFalse_0)) boyerFalse_0))), (`LH_N)))))))
  and implies_0 = (fun _lh_implies_arg1_0 _lh_implies_arg2_0 -> 
    (`Fun((`IMPLIES), (`LH_C(_lh_implies_arg1_0, (`LH_C(_lh_implies_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((implies_0 x_0) y_0), (((if__0 x_0) (((if__0 y_0) boyerTrue_0) boyerFalse_0)) boyerTrue_0))), (`LH_N)))))))
  and equal_0 = (fun _lh_equal_arg1_0 _lh_equal_arg2_0 -> 
    (`Fun((`EQUAL), (`LH_C(_lh_equal_arg1_0, (`LH_C(_lh_equal_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((equal_0 ((plus_0 x_0) y_0)) zero_0), ((and__0 (zerop_0 x_0)) (zerop_0 y_0)))), (`LH_C((`LH_P2(((equal_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)), ((equal_0 y_0) z_0))), (`LH_C((`LH_P2(((equal_0 zero_0) ((difference_0 x_0) y_0)), (not__0 ((lessp_0 y_0) x_0)))), (`LH_C((`LH_P2(((equal_0 x_0) ((difference_0 x_0) y_0)), ((or__0 ((equal_0 x_0) zero_0)) (zerop_0 y_0)))), (`LH_C((`LH_P2(((equal_0 ((times_0 x_0) y_0)) zero_0), ((or__0 (zerop_0 x_0)) (zerop_0 y_0)))), (`LH_C((`LH_P2(((equal_0 ((append_0 x_0) y_0)) ((append_0 x_0) z_0)), ((equal_0 y_0) z_0))), (`LH_C((`LH_P2(((equal_0 y_0) ((times_0 x_0) y_0)), ((or__0 ((equal_0 y_0) zero_0)) ((equal_0 x_0) one_0)))), (`LH_C((`LH_P2(((equal_0 x_0) ((times_0 x_0) y_0)), ((or__0 ((equal_0 x_0) zero_0)) ((equal_0 y_0) one_0)))), (`LH_C((`LH_P2(((equal_0 ((times_0 x_0) y_0)) one_0), ((and__0 ((equal_0 x_0) one_0)) ((equal_0 y_0) one_0)))), (`LH_C((`LH_P2(((equal_0 ((difference_0 x_0) y_0)) ((difference_0 z_0) y_0)), (((if__0 ((lessp_0 x_0) y_0)) (not__0 ((lessp_0 y_0) z_0))) (((if__0 ((lessp_0 z_0) y_0)) (not__0 ((lessp_0 y_0) x_0))) ((equal_0 x_0) z_0))))), (`LH_C((`LH_P2(((equal_0 ((lessp_0 x_0) y_0)) z_0), (((if__0 ((lessp_0 x_0) y_0)) ((equal_0 boyerTrue_0) z_0)) ((equal_0 boyerFalse_0) z_0)))), (`LH_N)))))))))))))))))))))))))))
  and divides_0 = (fun _lh_divides_arg1_0 _lh_divides_arg2_0 -> 
    (`Fun((`DIVIDES), (`LH_C(_lh_divides_arg1_0, (`LH_C(_lh_divides_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((divides_0 x_0) y_0), (zerop_0 ((remainder_0 y_0) x_0)))), (`LH_N)))))))
  and b_0 = (`Var((`B)))
  and lesseqp_0 = (fun _lh_lesseqp_arg1_0 _lh_lesseqp_arg2_0 -> 
    (`Fun((`LESSEQP), (`LH_C(_lh_lesseqp_arg1_0, (`LH_C(_lh_lesseqp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lesseqp_0 x_0) y_0), (not__0 ((lessp_0 y_0) x_0)))), (`LH_N)))))))
  and exp__0 = (fun _lh_exp__arg1_0 _lh_exp__arg2_0 -> 
    (`Fun((`EXP), (`LH_C(_lh_exp__arg1_0, (`LH_C(_lh_exp__arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((exp__0 x_0) ((plus_0 y_0) z_0)), ((times_0 ((exp__0 x_0) y_0)) ((exp__0 x_0) z_0)))), (`LH_C((`LH_P2(((exp__0 x_0) ((times_0 y_0) z_0)), ((exp__0 ((exp__0 x_0) y_0)) z_0))), (`LH_N)))))))))
  and lessp_0 = (fun _lh_lessp_arg1_0 _lh_lessp_arg2_0 -> 
    (`Fun((`LESSP), (`LH_C(_lh_lessp_arg1_0, (`LH_C(_lh_lessp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lessp_0 ((remainder_0 x_0) y_0)) y_0), (not__0 (zerop_0 y_0)))), (`LH_C((`LH_P2(((lessp_0 ((quotient_0 x_0) y_0)) x_0), ((and__0 (not__0 (zerop_0 x_0))) ((lessp_0 one_0) y_0)))), (`LH_C((`LH_P2(((lessp_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)), ((lessp_0 y_0) z_0))), (`LH_C((`LH_P2(((lessp_0 ((times_0 x_0) z_0)) ((times_0 y_0) z_0)), ((and__0 (not__0 (zerop_0 z_0))) ((lessp_0 x_0) y_0)))), (`LH_C((`LH_P2(((lessp_0 y_0) ((plus_0 x_0) y_0)), (not__0 (zerop_0 x_0)))), (`LH_N)))))))))))))))
  and reverse__0 = (fun _lh_reverse__arg1_0 -> 
    (`Fun((`REVERSE), (`LH_C(_lh_reverse__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((reverse__0 ((append_0 x_0) y_0)), ((append_0 (reverse__0 y_0)) (reverse__0 x_0)))), (`LH_N)))))))
  and zerop_0 = (fun _lh_zerop_arg1_0 -> 
    (`Fun((`ZEROP), (`LH_C(_lh_zerop_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((zerop_0 x_0), ((equal_0 x_0) zero_0))), (`LH_N)))))))
  and zero_0 = (`Fun((`ZERO), (`LH_N), (lazy (`LH_N))))
  and f_0 = (fun _lh_f_arg1_0 -> 
    (`Fun((`F), (`LH_C(_lh_f_arg1_0, (`LH_N))), (lazy (`LH_N)))))
  and listp_0 = (fun _lh_listp_arg1_0 -> 
    (`Fun((`LISTP), (`LH_C(_lh_listp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((listp_0 x_0), ((or__0 (nilp_0 x_0)) (consp_0 x_0)))), (`LH_N)))))))
  and u_0 = (`Var((`U)))
  and times_0 = (fun _lh_times_arg1_0 _lh_times_arg2_0 -> 
    (`Fun((`TIMES), (`LH_C(_lh_times_arg1_0, (`LH_C(_lh_times_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((times_0 x_0) ((plus_0 y_0) z_0)), ((plus_0 ((times_0 x_0) y_0)) ((times_0 x_0) z_0)))), (`LH_C((`LH_P2(((times_0 ((times_0 x_0) y_0)) z_0), ((times_0 x_0) ((times_0 y_0) z_0)))), (`LH_C((`LH_P2(((times_0 x_0) ((difference_0 y_0) z_0)), ((difference_0 ((times_0 y_0) x_0)) ((times_0 z_0) x_0)))), (`LH_C((`LH_P2(((times_0 x_0) (add1_0 y_0)), ((plus_0 x_0) ((times_0 x_0) y_0)))), (`LH_N)))))))))))))
  and one_0 = (`Fun((`ONE), (`LH_N), (lazy (`LH_C((`LH_P2(one_0, (add1_0 zero_0))), (`LH_N))))))
  and plus_0 = (fun _lh_plus_arg1_0 _lh_plus_arg2_0 -> 
    (`Fun((`PLUS), (`LH_C(_lh_plus_arg1_0, (`LH_C(_lh_plus_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((plus_0 ((plus_0 x_0) y_0)) z_0), ((plus_0 x_0) ((plus_0 y_0) z_0)))), (`LH_C((`LH_P2(((plus_0 ((remainder_0 x_0) y_0)) ((times_0 y_0) ((quotient_0 x_0) y_0))), x_0)), (`LH_C((`LH_P2(((plus_0 x_0) (add1_0 y_0)), (add1_0 ((plus_0 x_0) y_0)))), (`LH_N)))))))))))
  and a_0 = (`Var((`A)))
  and if__0 = (fun _lh_if__arg1_0 _lh_if__arg2_0 _lh_if__arg3_0 -> 
    (`Fun((`IF), (`LH_C(_lh_if__arg1_0, (`LH_C(_lh_if__arg2_0, (`LH_C(_lh_if__arg3_0, (`LH_N))))))), (lazy (`LH_C((`LH_P2((((if__0 (((if__0 x_0) y_0) z_0)) u_0) w_0), (((if__0 x_0) (((if__0 y_0) u_0) w_0)) (((if__0 z_0) u_0) w_0)))), (`LH_N)))))))
  and w_0 = (`Var((`W)))
  and nil_0 = (`Fun((`NIL), (`LH_N), (lazy (`LH_N))))
  and x_0 = (`Var((`X)))
  and odd__0 = (fun _lh_odd__arg1_0 -> 
    (`Fun((`ODD), (`LH_C(_lh_odd__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((odd__0 x_0), (even__0 (sub1_0 x_0)))), (`LH_N)))))))
  and y_0 = (`Var((`Y)))
  and greatereqp_0 = (fun _lh_greatereqp_arg1_0 _lh_greatereqp_arg2_0 -> 
    (`Fun((`GREATEREQP), (`LH_C(_lh_greatereqp_arg1_0, (`LH_C(_lh_greatereqp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greatereqp_0 x_0) y_0), (not__0 ((lessp_0 x_0) y_0)))), (`LH_N)))))))
  and not__0 = (fun _lh_not__arg1_0 -> 
    (`Fun((`NOT), (`LH_C(_lh_not__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((not__0 x_0), (((if__0 x_0) boyerFalse_0) boyerTrue_0))), (`LH_N)))))))
  and member_0 = (fun _lh_member_arg1_0 _lh_member_arg2_0 -> 
    (`Fun((`MEMBER), (`LH_C(_lh_member_arg1_0, (`LH_C(_lh_member_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((member_0 x_0) ((append_0 y_0) z_0)), ((or__0 ((member_0 x_0) y_0)) ((member_0 x_0) z_0)))), (`LH_C((`LH_P2(((member_0 x_0) (reverse__0 y_0)), ((member_0 x_0) y_0))), (`LH_N)))))))))
  and d_0 = (`Var((`D)))
  and c_0 = (`Var((`C)))
  and consp_0 = (fun _lh_consp_arg1_0 -> 
    (`Fun((`CONSP), (`LH_C(_lh_consp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((consp_0 ((cons_0 x_0) y_0)), boyerTrue_0)), (`LH_N)))))))
  and nilp_0 = (fun _lh_nilp_arg1_0 -> 
    (`Fun((`NILP), (`LH_C(_lh_nilp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((nilp_0 x_0), ((equal_0 x_0) nil_0))), (`LH_N)))))))
  and two_0 = (`Fun((`TWO), (`LH_N), (lazy (`LH_C((`LH_P2(two_0, (add1_0 one_0))), (`LH_N))))))
  and sub1_0 = (fun _lh_sub1_arg1_0 -> 
    (`Fun((`SUB1), (`LH_C(_lh_sub1_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((sub1_0 (add1_0 x_0)), x_0)), (`LH_N)))))))
  and add1_0 = (fun _lh_add1_arg1_0 -> 
    (`Fun((`ADD1), (`LH_C(_lh_add1_arg1_0, (`LH_N))), (lazy (`LH_N)))))
  and greaterp_0 = (fun _lh_greaterp_arg1_0 _lh_greaterp_arg2_0 -> 
    (`Fun((`GREATERP), (`LH_C(_lh_greaterp_arg1_0, (`LH_C(_lh_greaterp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greaterp_0 x_0) y_0), ((lessp_0 y_0) x_0))), (`LH_N)))))))
  and or__0 = (fun _lh_or__arg1_0 _lh_or__arg2_0 -> 
    (`Fun((`OR), (`LH_C(_lh_or__arg1_0, (`LH_C(_lh_or__arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((or__0 x_0) y_0), (((if__0 x_0) boyerTrue_0) (((if__0 y_0) boyerTrue_0) boyerFalse_0)))), (`LH_N)))))))
  and length__0 = (fun _lh_length__arg1_0 -> 
    (`Fun((`LENGTH), (`LH_C(_lh_length__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((length__0 (reverse__0 x_0)), (length__0 x_0))), (`LH_C((`LH_P2((length__0 ((cons_0 x_0) ((cons_0 y_0) ((cons_0 z_0) ((cons_0 u_0) w_0))))), ((plus_0 four_0) (length__0 w_0)))), (`LH_N)))))))))
  and boyerFalse_0 = (`Fun((`FALSE), (`LH_N), (lazy (`LH_N))))
  and four_0 = (`Fun((`FOUR), (`LH_N), (lazy (`LH_C((`LH_P2(four_0, (add1_0 (add1_0 two_0)))), (`LH_N))))))
  and cons_0 = (fun _lh_cons_arg1_0 _lh_cons_arg2_0 -> 
    (`Fun((`CONS), (`LH_C(_lh_cons_arg1_0, (`LH_C(_lh_cons_arg2_0, (`LH_N))))), (lazy (`LH_N)))))
  and quotient_0 = (fun _lh_quotient_arg1_0 _lh_quotient_arg2_0 -> 
    (`Fun((`QUOTIENT), (`LH_C(_lh_quotient_arg1_0, (`LH_C(_lh_quotient_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((quotient_0 ((plus_0 x_0) ((plus_0 x_0) y_0))) two_0), ((plus_0 x_0) ((quotient_0 y_0) two_0)))), (`LH_C((`LH_P2(((quotient_0 ((times_0 y_0) x_0)) y_0), (((if__0 (zerop_0 y_0)) zero_0) x_0))), (`LH_N)))))))))
  and gcd__0 = (fun _lh_gcd__arg1_0 _lh_gcd__arg2_0 -> 
    (`Fun((`GCD), (`LH_C(_lh_gcd__arg1_0, (`LH_C(_lh_gcd__arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((gcd__0 x_0) y_0), ((gcd__0 y_0) x_0))), (`LH_C((`LH_P2(((gcd__0 ((times_0 x_0) z_0)) ((times_0 y_0) z_0)), ((times_0 z_0) ((gcd__0 x_0) y_0)))), (`LH_N)))))))))
  and even__0 = (fun _lh_even__arg1_0 -> 
    (`Fun((`EVEN), (`LH_C(_lh_even__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((even__0 x_0), (((if__0 (zerop_0 x_0)) boyerTrue_0) (odd__0 (sub1_0 x_0))))), (`LH_N)))))))
  in (let rec subst0_0 = (let rec _lh_find_LH_C_1_0 = (let rec _lh_find_LH_C_1_1 = (let rec _lh_find_LH_C_1_2 = (let rec _lh_find_LH_C_1_3 = (let rec _lh_find_LH_C_1_4 = (fun _lh_find_arg1_0 -> 
    (let rec _lh_apply_subst_LH_P2_1_0 = (`ERROR) in
      (let rec _lh_apply_subst_LH_P2_0_0 = false in
        (fun _lh_apply_subst_Var_0_2 -> 
          (if _lh_apply_subst_LH_P2_0_0 then
            _lh_apply_subst_LH_P2_1_0
          else
            (`Var(_lh_apply_subst_Var_0_2))))))) in
    (let rec _lh_find_LH_C_0_0 = (let rec _lh_find_LH_P2_1_0 = ((lessp_0 ((remainder_0 a_0) b_0)) ((member_0 a_0) (length__0 b_0))) in
      (let rec _lh_find_LH_P2_0_0 = (`W) in
        (fun _lh_find_LH_C_1_5 _lh_find_arg1_1 -> 
          (if (_lh_find_arg1_1 = _lh_find_LH_P2_0_0) then
            (let rec _lh_apply_subst_LH_P2_1_1 = _lh_find_LH_P2_1_0 in
              (let rec _lh_apply_subst_LH_P2_0_1 = true in
                (fun _lh_apply_subst_Var_0_3 -> 
                  (if _lh_apply_subst_LH_P2_0_1 then
                    _lh_apply_subst_LH_P2_1_1
                  else
                    (`Var(_lh_apply_subst_Var_0_3))))))
          else
            ((find_d0_d0 _lh_find_arg1_1) _lh_find_LH_C_1_5))))) in
      (fun _lh_find_arg1_2 -> 
        ((_lh_find_LH_C_0_0 _lh_find_LH_C_1_4) _lh_find_arg1_2)))) in
    (let rec _lh_find_LH_C_0_1 = (let rec _lh_find_LH_P2_1_1 = ((equal_0 ((plus_0 a_0) b_0)) ((difference_0 x_0) y_0)) in
      (let rec _lh_find_LH_P2_0_1 = (`U) in
        (fun _lh_find_LH_C_1_6 _lh_find_arg1_3 -> 
          (if (_lh_find_arg1_3 = _lh_find_LH_P2_0_1) then
            (let rec _lh_apply_subst_LH_P2_1_2 = _lh_find_LH_P2_1_1 in
              (let rec _lh_apply_subst_LH_P2_0_2 = true in
                (fun _lh_apply_subst_Var_0_4 -> 
                  (if _lh_apply_subst_LH_P2_0_2 then
                    _lh_apply_subst_LH_P2_1_2
                  else
                    (`Var(_lh_apply_subst_Var_0_4))))))
          else
            ((find_d0_d0 _lh_find_arg1_3) _lh_find_LH_C_1_6))))) in
      (fun _lh_find_arg1_4 -> 
        ((_lh_find_LH_C_0_1 _lh_find_LH_C_1_3) _lh_find_arg1_4)))) in
    (let rec _lh_find_LH_C_0_2 = (let rec _lh_find_LH_P2_1_2 = (f_0 (reverse__0 ((append_0 ((append_0 a_0) b_0)) nil_0))) in
      (let rec _lh_find_LH_P2_0_2 = (`Z) in
        (fun _lh_find_LH_C_1_7 _lh_find_arg1_5 -> 
          (if (_lh_find_arg1_5 = _lh_find_LH_P2_0_2) then
            (let rec _lh_apply_subst_LH_P2_1_3 = _lh_find_LH_P2_1_2 in
              (let rec _lh_apply_subst_LH_P2_0_3 = true in
                (fun _lh_apply_subst_Var_0_5 -> 
                  (if _lh_apply_subst_LH_P2_0_3 then
                    _lh_apply_subst_LH_P2_1_3
                  else
                    (`Var(_lh_apply_subst_Var_0_5))))))
          else
            ((find_d0_d0 _lh_find_arg1_5) _lh_find_LH_C_1_7))))) in
      (fun _lh_find_arg1_6 -> 
        ((_lh_find_LH_C_0_2 _lh_find_LH_C_1_2) _lh_find_arg1_6)))) in
    (let rec _lh_find_LH_C_0_3 = (let rec _lh_find_LH_P2_1_3 = (f_0 ((times_0 ((times_0 a_0) b_0)) ((plus_0 c_0) d_0))) in
      (let rec _lh_find_LH_P2_0_3 = (`Y) in
        (fun _lh_find_LH_C_1_8 _lh_find_arg1_7 -> 
          (if (_lh_find_arg1_7 = _lh_find_LH_P2_0_3) then
            (let rec _lh_apply_subst_LH_P2_1_4 = _lh_find_LH_P2_1_3 in
              (let rec _lh_apply_subst_LH_P2_0_4 = true in
                (fun _lh_apply_subst_Var_0_6 -> 
                  (if _lh_apply_subst_LH_P2_0_4 then
                    _lh_apply_subst_LH_P2_1_4
                  else
                    (`Var(_lh_apply_subst_Var_0_6))))))
          else
            ((find_d0_d0 _lh_find_arg1_7) _lh_find_LH_C_1_8))))) in
      (fun _lh_find_arg1_8 -> 
        ((_lh_find_LH_C_0_3 _lh_find_LH_C_1_1) _lh_find_arg1_8)))) in
    (let rec _lh_find_LH_C_0_4 = (let rec _lh_find_LH_P2_1_4 = (f_0 ((plus_0 ((plus_0 a_0) b_0)) ((plus_0 c_0) zero_0))) in
      (let rec _lh_find_LH_P2_0_4 = (`X) in
        (fun _lh_find_LH_C_1_9 _lh_find_arg1_9 -> 
          (if (_lh_find_arg1_9 = _lh_find_LH_P2_0_4) then
            (let rec _lh_apply_subst_LH_P2_1_5 = _lh_find_LH_P2_1_4 in
              (let rec _lh_apply_subst_LH_P2_0_5 = true in
                (fun _lh_apply_subst_Var_0_7 -> 
                  (if _lh_apply_subst_LH_P2_0_5 then
                    _lh_apply_subst_LH_P2_1_5
                  else
                    (`Var(_lh_apply_subst_Var_0_7))))))
          else
            ((find_d0_d0 _lh_find_arg1_9) _lh_find_LH_C_1_9))))) in
      (fun _lh_find_arg1_1_0 -> 
        ((_lh_find_LH_C_0_4 _lh_find_LH_C_1_0) _lh_find_arg1_1_0)))) in
    (let rec theorem_0 = ((implies_0 ((and__0 ((implies_0 _lh_test0_arg1_0) y_0)) ((and__0 ((implies_0 y_0) z_0)) ((and__0 ((implies_0 z_0) u_0)) ((implies_0 u_0) w_0))))) ((implies_0 x_0) w_0)) in
      (tautp_d0_d0 ((apply_subst_d0_d0 subst0_0) theorem_0))))
and testBoyer_nofib_d0_d0 _lh_testBoyer_nofib_arg1_0 =
  ((all_d0_d0 test0_d0_d0) ((replicate_d0_d0 _lh_testBoyer_nofib_arg1_0) (`Var((`X)))))
and truep_d0_d0 _lh_truep_arg1_1 _lh_truep_arg2_1 =
  (match _lh_truep_arg1_1 with
    | `Fun(_lh_truep_Fun_0_1, _lh_truep_Fun_1_1, _lh_truep_Fun_2_1) -> 
      (match _lh_truep_Fun_0_1 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList_d2_d0 _lh_truep_arg1_1) _lh_truep_arg2_1))
    | _ -> 
      ((termInList_d2_d1 _lh_truep_arg1_1) _lh_truep_arg2_1))
and truep_d1_d0 _lh_truep_arg1_0 _lh_truep_arg2_0 =
  (match _lh_truep_arg1_0 with
    | `Fun(_lh_truep_Fun_0_0, _lh_truep_Fun_1_0, _lh_truep_Fun_2_0) -> 
      (match _lh_truep_Fun_0_0 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList_d3_d0 _lh_truep_arg1_0) _lh_truep_arg2_0))
    | _ -> 
      ((termInList_d3_d1 _lh_truep_arg1_0) _lh_truep_arg2_0));;

(* lumberhack_pop_out *)
let rec all_d0_d0_d0 _lh_all_arg1_3 _lh_all_arg2_1 =
  (_lh_all_arg2_1 _lh_all_arg1_3);;
let rec all_d0_d0_d1 _lh_all_arg1_4 _lh_all_arg2_2 =
  (_lh_all_arg2_2 _lh_all_arg1_4);;
let rec find_d0_d0_d0 _lh_find_arg1_3_2 _lh_find_arg2_1_0 =
  (_lh_find_arg2_1_0 _lh_find_arg1_3_2);;
let rec find_d0_d0_d1 _lh_find_arg1_3_0 _lh_find_arg2_8 =
  (_lh_find_arg2_8 _lh_find_arg1_3_0);;
let rec find_d0_d0_d2 _lh_find_arg1_1_4 _lh_find_arg2_3 =
  (_lh_find_arg2_3 _lh_find_arg1_1_4);;
let rec find_d0_d0_d3 _lh_find_arg1_3_1 _lh_find_arg2_9 =
  (_lh_find_arg2_9 _lh_find_arg1_3_1);;
let rec find_d0_d0_d4 _lh_find_arg1_2_9 _lh_find_arg2_7 =
  (_lh_find_arg2_7 _lh_find_arg1_2_9);;
let rec find_d0_d0_d5 _lh_find_arg1_2_8 _lh_find_arg2_6 =
  (_lh_find_arg2_6 _lh_find_arg1_2_8);;
let rec find_d1_d0_d0 _lh_find_arg1_1_5 _lh_find_arg2_4 =
  (match _lh_find_arg2_4 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_1_8 = (`ERROR) in
        (let rec _lh_apply_subst_LH_P2_0_8 = false in
          (fun _lh_apply_subst_Var_0_1_0 -> 
            (if _lh_apply_subst_LH_P2_0_8 then
              _lh_apply_subst_LH_P2_1_8
            else
              (`Var(_lh_apply_subst_Var_0_1_0))))))
    | `LH_C(_lh_find_LH_C_0_7, _lh_find_LH_C_1_1_2) -> 
      (match _lh_find_LH_C_0_7 with
        | `LH_P2(_lh_find_LH_P2_0_7, _lh_find_LH_P2_1_7) -> 
          (if (_lh_find_arg1_1_5 = _lh_find_LH_P2_0_7) then
            (let rec _lh_apply_subst_LH_P2_1_9 = _lh_find_LH_P2_1_7 in
              (let rec _lh_apply_subst_LH_P2_0_9 = true in
                (fun _lh_apply_subst_Var_0_1_1 -> 
                  (if _lh_apply_subst_LH_P2_0_9 then
                    _lh_apply_subst_LH_P2_1_9
                  else
                    (`Var(_lh_apply_subst_Var_0_1_1))))))
          else
            ((find_d1_d0_d0 _lh_find_arg1_1_5) _lh_find_LH_C_1_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_d0_d0_d0 f_7 ls_5 =
  (match ls_5 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C((f_7 h_5), ((map_d0_d0_d0 f_7) t_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d0 f_5 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C((f_5 h_3), ((map_d1_d0_d0 f_5) t_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d0 f_6 ls_4 =
  (match ls_4 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_6 h_4), ((map_d2_d0_d0 f_6) t_4)))
    | `LH_N -> 
      (`LH_N));;
let rec apply_subst_d0_d0_d0 _lh_apply_subst_arg1_2 _lh_apply_subst_arg2_2 =
  (match _lh_apply_subst_arg2_2 with
    | `Var(_lh_apply_subst_Var_0_1_8) -> 
      (let rec _lh_matchIdent_1_0 = ((find_d0_d0_d0 _lh_apply_subst_Var_0_1_8) _lh_apply_subst_arg1_2) in
        (_lh_matchIdent_1_0 _lh_apply_subst_Var_0_1_8))
    | `Fun(_lh_apply_subst_Fun_0_2, _lh_apply_subst_Fun_1_2, _lh_apply_subst_Fun_2_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_2, ((map_d0_d0_d0 (apply_subst_d0_d0_d0 _lh_apply_subst_arg1_2)) _lh_apply_subst_Fun_1_2), _lh_apply_subst_Fun_2_2))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d0 _lh_apply_subst_arg1_3 _lh_apply_subst_arg2_3 =
  (match _lh_apply_subst_arg2_3 with
    | `Var(_lh_apply_subst_Var_0_1_9) -> 
      (let rec _lh_matchIdent_1_5 = ((find_d1_d0_d0 _lh_apply_subst_Var_0_1_9) _lh_apply_subst_arg1_3) in
        (_lh_matchIdent_1_5 _lh_apply_subst_Var_0_1_9))
    | `Fun(_lh_apply_subst_Fun_0_3, _lh_apply_subst_Fun_1_3, _lh_apply_subst_Fun_2_3) -> 
      (`Fun(_lh_apply_subst_Fun_0_3, ((map_d2_d0_d0 (apply_subst_d1_d0_d0 _lh_apply_subst_arg1_3)) _lh_apply_subst_Fun_1_3), _lh_apply_subst_Fun_2_3))
    | _ -> 
      (failwith "error"))
and falsep_d0_d0_d0 _lh_falsep_arg1_2 _lh_falsep_arg2_2 =
  (match _lh_falsep_arg1_2 with
    | `Fun(_lh_falsep_Fun_0_2, _lh_falsep_Fun_1_2, _lh_falsep_Fun_2_2) -> 
      (match _lh_falsep_Fun_0_2 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList_d0_d0_d0 _lh_falsep_arg1_2) _lh_falsep_arg2_2))
    | _ -> 
      ((termInList_d0_d1_d0 _lh_falsep_arg1_2) _lh_falsep_arg2_2))
and falsep_d1_d0_d0 _lh_falsep_arg1_3 _lh_falsep_arg2_3 =
  (match _lh_falsep_arg1_3 with
    | `Fun(_lh_falsep_Fun_0_3, _lh_falsep_Fun_1_3, _lh_falsep_Fun_2_3) -> 
      (match _lh_falsep_Fun_0_3 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList_d1_d0_d0 _lh_falsep_arg1_3) _lh_falsep_arg2_3))
    | _ -> 
      ((termInList_d1_d1_d0 _lh_falsep_arg1_3) _lh_falsep_arg2_3))
and find_d2_d0_d0 _lh_find_arg1_2_7 _lh_find_arg2_5 =
  (match _lh_find_arg2_5 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_1_2 = (`ERROR) in
        (let rec _lh_one_way_unify1_LH_P2_0_2 = false in
          (fun _lh_one_way_unify1_Var_0_3 _lh_one_way_unify1_arg1_3 _lh_one_way_unify1_arg3_3 -> 
            (if _lh_one_way_unify1_LH_P2_0_2 then
              (`LH_P2(((termEq_d0_d0_d0 _lh_one_way_unify1_arg1_3) _lh_one_way_unify1_LH_P2_1_2), _lh_one_way_unify1_arg3_3))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_3, _lh_one_way_unify1_arg1_3)), _lh_one_way_unify1_arg3_3))))))))
    | `LH_C(_lh_find_LH_C_0_1_3, _lh_find_LH_C_1_2_3) -> 
      (match _lh_find_LH_C_0_1_3 with
        | `LH_P2(_lh_find_LH_P2_0_1_3, _lh_find_LH_P2_1_1_3) -> 
          (if (_lh_find_arg1_2_7 = _lh_find_LH_P2_0_1_3) then
            (let rec _lh_one_way_unify1_LH_P2_1_3 = _lh_find_LH_P2_1_1_3 in
              (let rec _lh_one_way_unify1_LH_P2_0_3 = true in
                (fun _lh_one_way_unify1_Var_0_4 _lh_one_way_unify1_arg1_4 _lh_one_way_unify1_arg3_4 -> 
                  (if _lh_one_way_unify1_LH_P2_0_3 then
                    (`LH_P2(((termEq_d0_d0_d1 _lh_one_way_unify1_arg1_4) _lh_one_way_unify1_LH_P2_1_3), _lh_one_way_unify1_arg3_4))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_4, _lh_one_way_unify1_arg1_4)), _lh_one_way_unify1_arg3_4))))))))
          else
            ((find_d2_d0_d0 _lh_find_arg1_2_7) _lh_find_LH_C_1_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and one_way_unify1_lst_d0_d0_d0 _lh_one_way_unify1_lst_arg1_1 _lh_one_way_unify1_lst_arg2_1 _lh_one_way_unify1_lst_arg3_1 =
  (match _lh_one_way_unify1_lst_arg1_1 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2, _lh_one_way_unify1_lst_LH_C_1_2) -> 
      (match _lh_one_way_unify1_lst_arg2_1 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3, _lh_one_way_unify1_lst_LH_C_1_3) -> 
          (let rec _lh_matchIdent_8 = (((one_way_unify1_d0_d0_d0 _lh_one_way_unify1_lst_LH_C_0_2) _lh_one_way_unify1_lst_LH_C_0_3) _lh_one_way_unify1_lst_arg3_1) in
            (match _lh_matchIdent_8 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2, _lh_one_way_unify1_lst_LH_P2_1_2) -> 
                (let rec _lh_matchIdent_9 = (((one_way_unify1_lst_d0_d0_d0 _lh_one_way_unify1_lst_LH_C_1_2) _lh_one_way_unify1_lst_LH_C_1_3) _lh_one_way_unify1_lst_LH_P2_1_2) in
                  (match _lh_matchIdent_9 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3, _lh_one_way_unify1_lst_LH_P2_1_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_2 && _lh_one_way_unify1_lst_LH_P2_0_3), _lh_one_way_unify1_lst_LH_P2_1_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_d0_d0_d0 _lh_one_way_unify1_arg1_5 _lh_one_way_unify1_arg2_1 _lh_one_way_unify1_arg3_5 =
  (match _lh_one_way_unify1_arg2_1 with
    | `Var(_lh_one_way_unify1_Var_0_5) -> 
      (let rec _lh_matchIdent_1_4 = ((find_d2_d0_d0 _lh_one_way_unify1_Var_0_5) _lh_one_way_unify1_arg3_5) in
        (((_lh_matchIdent_1_4 _lh_one_way_unify1_Var_0_5) _lh_one_way_unify1_arg1_5) _lh_one_way_unify1_arg3_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_2, _lh_one_way_unify1_Fun_1_2, _lh_one_way_unify1_Fun_2_2) -> 
          (match _lh_one_way_unify1_arg2_1 with
            | `Fun(_lh_one_way_unify1_Fun_0_3, _lh_one_way_unify1_Fun_1_3, _lh_one_way_unify1_Fun_2_3) -> 
              (if (_lh_one_way_unify1_Fun_0_2 = _lh_one_way_unify1_Fun_0_3) then
                (((one_way_unify1_lst_d0_d0_d0 _lh_one_way_unify1_Fun_1_2) _lh_one_way_unify1_Fun_1_3) _lh_one_way_unify1_arg3_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify_d0_d0_d0 _lh_one_way_unify_arg1_1 _lh_one_way_unify_arg2_1 =
  (((one_way_unify1_d0_d0_d0 _lh_one_way_unify_arg1_1) _lh_one_way_unify_arg2_1) (`LH_N))
and replicate_d0_d0_d0 _lh_replicate_arg1_1 _lh_replicate_arg2_1 _lh_popOutId_0_0 =
  (if (_lh_replicate_arg1_1 = 0) then
    true
  else
    (let rec _lh_all_LH_C_1_1 = ((replicate_d0_d0_d0 (_lh_replicate_arg1_1 - 1)) _lh_replicate_arg2_1) in
      (let rec _lh_all_LH_C_0_1 = _lh_replicate_arg2_1 in
        (if (_lh_popOutId_0_0 _lh_all_LH_C_0_1) then
          ((all_d0_d0_d1 _lh_popOutId_0_0) _lh_all_LH_C_1_1)
        else
          false))))
and rewrite_with_lemmas_helper_d0_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1 _lh_rewrite_with_lemmas_helper_arg2_1 =
  (let rec _lh_matchIdent_1_1 = _lh_rewrite_with_lemmas_helper_arg2_1 in
    (match _lh_matchIdent_1_1 with
      | `LH_N -> 
        _lh_rewrite_with_lemmas_helper_arg1_1
      | `LH_C(_lh_rewrite_with_lemmas_helper_LH_C_0_1, _lh_rewrite_with_lemmas_helper_LH_C_1_1) -> 
        (match _lh_rewrite_with_lemmas_helper_LH_C_0_1 with
          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2, _lh_rewrite_with_lemmas_helper_LH_P2_1_2) -> 
            (let rec _lh_matchIdent_1_2 = ((one_way_unify_d0_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_2) in
              (match _lh_matchIdent_1_2 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_3) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_3 then
                    (rewrite_d0_d0_d0 ((apply_subst_d1_d0_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and rewrite_with_lemmas_d0_d0_d0 _lh_rewrite_with_lemmas_arg1_1 _lh_rewrite_with_lemmas_arg2_1 =
  ((rewrite_with_lemmas_helper_d0_d0_d0 _lh_rewrite_with_lemmas_arg1_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_1))
and rewrite_d0_d0_d0 _lh_rewrite_arg1_1 =
  (match _lh_rewrite_arg1_1 with
    | `Var(_lh_rewrite_Var_0_1) -> 
      (`Var(_lh_rewrite_Var_0_1))
    | `Fun(_lh_rewrite_Fun_0_1, _lh_rewrite_Fun_1_1, _lh_rewrite_Fun_2_1) -> 
      ((rewrite_with_lemmas_d0_d0_d0 (`Fun(_lh_rewrite_Fun_0_1, ((map_d1_d0_d0 rewrite_d0_d0_d0) _lh_rewrite_Fun_1_1), _lh_rewrite_Fun_2_1))) _lh_rewrite_Fun_2_1)
    | _ -> 
      (failwith "error"))
and tautologyp_d0_d0_d0 _lh_tautologyp_arg1_1 _lh_tautologyp_arg2_1 _lh_tautologyp_arg3_1 =
  (if ((truep_d0_d0_d0 _lh_tautologyp_arg1_1) _lh_tautologyp_arg2_1) then
    true
  else
    (if ((falsep_d0_d0_d0 _lh_tautologyp_arg1_1) _lh_tautologyp_arg3_1) then
      false
    else
      (let rec _lh_matchIdent_1_3 = _lh_tautologyp_arg1_1 in
        (match _lh_matchIdent_1_3 with
          | `Fun(_lh_tautologyp_Fun_0_1, _lh_tautologyp_Fun_1_1, _lh_tautologyp_Fun_2_1) -> 
            (match _lh_tautologyp_Fun_0_1 with
              | `IF -> 
                (match _lh_tautologyp_Fun_1_1 with
                  | `LH_C(_lh_tautologyp_LH_C_0_3, _lh_tautologyp_LH_C_1_3) -> 
                    (match _lh_tautologyp_LH_C_1_3 with
                      | `LH_C(_lh_tautologyp_LH_C_0_4, _lh_tautologyp_LH_C_1_4) -> 
                        (match _lh_tautologyp_LH_C_1_4 with
                          | `LH_C(_lh_tautologyp_LH_C_0_5, _lh_tautologyp_LH_C_1_5) -> 
                            (match _lh_tautologyp_LH_C_1_5 with
                              | `LH_N -> 
                                (if ((truep_d1_d0_d0 _lh_tautologyp_LH_C_0_3) _lh_tautologyp_arg2_1) then
                                  (((tautologyp_d0_d0_d0 _lh_tautologyp_LH_C_0_4) _lh_tautologyp_arg2_1) _lh_tautologyp_arg3_1)
                                else
                                  (if ((falsep_d1_d0_d0 _lh_tautologyp_LH_C_0_3) _lh_tautologyp_arg3_1) then
                                    (((tautologyp_d0_d0_d0 _lh_tautologyp_LH_C_0_5) _lh_tautologyp_arg2_1) _lh_tautologyp_arg3_1)
                                  else
                                    ((((tautologyp_d0_d0_d0 _lh_tautologyp_LH_C_0_4) (`LH_C(_lh_tautologyp_LH_C_0_3, _lh_tautologyp_arg2_1))) _lh_tautologyp_arg3_1) && (((tautologyp_d0_d0_d0 _lh_tautologyp_LH_C_0_5) _lh_tautologyp_arg2_1) (`LH_C(_lh_tautologyp_LH_C_0_3, _lh_tautologyp_arg3_1))))))
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
and tautp_d0_d0_d0 _lh_tautp_arg1_1 =
  (((tautologyp_d0_d0_d0 (rewrite_d0_d0_d0 _lh_tautp_arg1_1)) (`LH_N)) (`LH_N))
and termEq_d0_d0_d0 _lh_termEq_arg1_1_5 _lh_termEq_arg2_1_5 =
  (match _lh_termEq_arg1_1_5 with
    | `Var(_lh_termEq_Var_0_3_0) -> 
      (match _lh_termEq_arg2_1_5 with
        | `Var(_lh_termEq_Var_0_3_1) -> 
          (_lh_termEq_Var_0_3_0 = _lh_termEq_Var_0_3_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_3_0, _lh_termEq_Fun_1_3_0, _lh_termEq_Fun_2_3_0) -> 
      (match _lh_termEq_arg2_1_5 with
        | `Fun(_lh_termEq_Fun_0_3_1, _lh_termEq_Fun_1_3_1, _lh_termEq_Fun_2_3_1) -> 
          ((_lh_termEq_Fun_0_3_0 = _lh_termEq_Fun_0_3_1) && ((termLsEq_d0_d0_d0 _lh_termEq_Fun_1_3_0) _lh_termEq_Fun_1_3_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1 _lh_termEq_arg1_1_7 _lh_termEq_arg2_1_7 =
  (match _lh_termEq_arg1_1_7 with
    | `Var(_lh_termEq_Var_0_3_4) -> 
      (match _lh_termEq_arg2_1_7 with
        | `Var(_lh_termEq_Var_0_3_5) -> 
          (_lh_termEq_Var_0_3_4 = _lh_termEq_Var_0_3_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_3_4, _lh_termEq_Fun_1_3_4, _lh_termEq_Fun_2_3_4) -> 
      (match _lh_termEq_arg2_1_7 with
        | `Fun(_lh_termEq_Fun_0_3_5, _lh_termEq_Fun_1_3_5, _lh_termEq_Fun_2_3_5) -> 
          ((_lh_termEq_Fun_0_3_4 = _lh_termEq_Fun_0_3_5) && ((termLsEq_d0_d0_d1 _lh_termEq_Fun_1_3_4) _lh_termEq_Fun_1_3_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d1_d0_d0 _lh_termEq_arg1_1_1 _lh_termEq_arg2_1_1 =
  (match _lh_termEq_arg1_1_1 with
    | `Var(_lh_termEq_Var_0_2_2) -> 
      (match _lh_termEq_arg2_1_1 with
        | `Var(_lh_termEq_Var_0_2_3) -> 
          (_lh_termEq_Var_0_2_2 = _lh_termEq_Var_0_2_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_2, _lh_termEq_Fun_1_2_2, _lh_termEq_Fun_2_2_2) -> 
      (match _lh_termEq_arg2_1_1 with
        | `Fun(_lh_termEq_Fun_0_2_3, _lh_termEq_Fun_1_2_3, _lh_termEq_Fun_2_2_3) -> 
          ((_lh_termEq_Fun_0_2_2 = _lh_termEq_Fun_0_2_3) && ((termLsEq_d1_d0_d0 _lh_termEq_Fun_1_2_2) _lh_termEq_Fun_1_2_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d1_d1_d0 _lh_termEq_arg1_9 _lh_termEq_arg2_9 =
  (match _lh_termEq_arg1_9 with
    | `Var(_lh_termEq_Var_0_1_8) -> 
      (match _lh_termEq_arg2_9 with
        | `Var(_lh_termEq_Var_0_1_9) -> 
          (_lh_termEq_Var_0_1_8 = _lh_termEq_Var_0_1_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_8, _lh_termEq_Fun_1_1_8, _lh_termEq_Fun_2_1_8) -> 
      (match _lh_termEq_arg2_9 with
        | `Fun(_lh_termEq_Fun_0_1_9, _lh_termEq_Fun_1_1_9, _lh_termEq_Fun_2_1_9) -> 
          ((_lh_termEq_Fun_0_1_8 = _lh_termEq_Fun_0_1_9) && ((termLsEq_d1_d1_d0 _lh_termEq_Fun_1_1_8) _lh_termEq_Fun_1_1_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d2_d0_d0 _lh_termEq_arg1_1_3 _lh_termEq_arg2_1_3 =
  (match _lh_termEq_arg1_1_3 with
    | `Var(_lh_termEq_Var_0_2_6) -> 
      (match _lh_termEq_arg2_1_3 with
        | `Var(_lh_termEq_Var_0_2_7) -> 
          (_lh_termEq_Var_0_2_6 = _lh_termEq_Var_0_2_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_6, _lh_termEq_Fun_1_2_6, _lh_termEq_Fun_2_2_6) -> 
      (match _lh_termEq_arg2_1_3 with
        | `Fun(_lh_termEq_Fun_0_2_7, _lh_termEq_Fun_1_2_7, _lh_termEq_Fun_2_2_7) -> 
          ((_lh_termEq_Fun_0_2_6 = _lh_termEq_Fun_0_2_7) && ((termLsEq_d2_d0_d0 _lh_termEq_Fun_1_2_6) _lh_termEq_Fun_1_2_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d2_d1_d0 _lh_termEq_arg1_1_6 _lh_termEq_arg2_1_6 =
  (match _lh_termEq_arg1_1_6 with
    | `Var(_lh_termEq_Var_0_3_2) -> 
      (match _lh_termEq_arg2_1_6 with
        | `Var(_lh_termEq_Var_0_3_3) -> 
          (_lh_termEq_Var_0_3_2 = _lh_termEq_Var_0_3_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_3_2, _lh_termEq_Fun_1_3_2, _lh_termEq_Fun_2_3_2) -> 
      (match _lh_termEq_arg2_1_6 with
        | `Fun(_lh_termEq_Fun_0_3_3, _lh_termEq_Fun_1_3_3, _lh_termEq_Fun_2_3_3) -> 
          ((_lh_termEq_Fun_0_3_2 = _lh_termEq_Fun_0_3_3) && ((termLsEq_d2_d1_d0 _lh_termEq_Fun_1_3_2) _lh_termEq_Fun_1_3_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d3_d0_d0 _lh_termEq_arg1_1_8 _lh_termEq_arg2_1_8 =
  (match _lh_termEq_arg1_1_8 with
    | `Var(_lh_termEq_Var_0_3_6) -> 
      (match _lh_termEq_arg2_1_8 with
        | `Var(_lh_termEq_Var_0_3_7) -> 
          (_lh_termEq_Var_0_3_6 = _lh_termEq_Var_0_3_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_3_6, _lh_termEq_Fun_1_3_6, _lh_termEq_Fun_2_3_6) -> 
      (match _lh_termEq_arg2_1_8 with
        | `Fun(_lh_termEq_Fun_0_3_7, _lh_termEq_Fun_1_3_7, _lh_termEq_Fun_2_3_7) -> 
          ((_lh_termEq_Fun_0_3_6 = _lh_termEq_Fun_0_3_7) && ((termLsEq_d3_d0_d0 _lh_termEq_Fun_1_3_6) _lh_termEq_Fun_1_3_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d3_d1_d0 _lh_termEq_arg1_1_2 _lh_termEq_arg2_1_2 =
  (match _lh_termEq_arg1_1_2 with
    | `Var(_lh_termEq_Var_0_2_4) -> 
      (match _lh_termEq_arg2_1_2 with
        | `Var(_lh_termEq_Var_0_2_5) -> 
          (_lh_termEq_Var_0_2_4 = _lh_termEq_Var_0_2_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_4, _lh_termEq_Fun_1_2_4, _lh_termEq_Fun_2_2_4) -> 
      (match _lh_termEq_arg2_1_2 with
        | `Fun(_lh_termEq_Fun_0_2_5, _lh_termEq_Fun_1_2_5, _lh_termEq_Fun_2_2_5) -> 
          ((_lh_termEq_Fun_0_2_4 = _lh_termEq_Fun_0_2_5) && ((termLsEq_d3_d1_d0 _lh_termEq_Fun_1_2_4) _lh_termEq_Fun_1_2_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d4_d0_d0 _lh_termEq_arg1_1_4 _lh_termEq_arg2_1_4 =
  (match _lh_termEq_arg1_1_4 with
    | `Var(_lh_termEq_Var_0_2_8) -> 
      (match _lh_termEq_arg2_1_4 with
        | `Var(_lh_termEq_Var_0_2_9) -> 
          (_lh_termEq_Var_0_2_8 = _lh_termEq_Var_0_2_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_8, _lh_termEq_Fun_1_2_8, _lh_termEq_Fun_2_2_8) -> 
      (match _lh_termEq_arg2_1_4 with
        | `Fun(_lh_termEq_Fun_0_2_9, _lh_termEq_Fun_1_2_9, _lh_termEq_Fun_2_2_9) -> 
          ((_lh_termEq_Fun_0_2_8 = _lh_termEq_Fun_0_2_9) && ((termLsEq_d4_d0_d0 _lh_termEq_Fun_1_2_8) _lh_termEq_Fun_1_2_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d4_d1_d0 _lh_termEq_arg1_1_0 _lh_termEq_arg2_1_0 =
  (match _lh_termEq_arg1_1_0 with
    | `Var(_lh_termEq_Var_0_2_0) -> 
      (match _lh_termEq_arg2_1_0 with
        | `Var(_lh_termEq_Var_0_2_1) -> 
          (_lh_termEq_Var_0_2_0 = _lh_termEq_Var_0_2_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_0, _lh_termEq_Fun_1_2_0, _lh_termEq_Fun_2_2_0) -> 
      (match _lh_termEq_arg2_1_0 with
        | `Fun(_lh_termEq_Fun_0_2_1, _lh_termEq_Fun_1_2_1, _lh_termEq_Fun_2_2_1) -> 
          ((_lh_termEq_Fun_0_2_0 = _lh_termEq_Fun_0_2_1) && ((termLsEq_d4_d1_d0 _lh_termEq_Fun_1_2_0) _lh_termEq_Fun_1_2_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termInList_d0_d0_d0 _lh_termInList_arg1_1_2 _lh_termInList_arg2_1_2 =
  (match _lh_termInList_arg2_1_2 with
    | `LH_C(_lh_termInList_LH_C_0_1_2, _lh_termInList_LH_C_1_1_2) -> 
      (if ((termEq_d1_d0_d0 _lh_termInList_arg1_1_2) _lh_termInList_LH_C_0_1_2) then
        true
      else
        ((termInList_d0_d0_d0 _lh_termInList_arg1_1_2) _lh_termInList_LH_C_1_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d0_d1_d0 _lh_termInList_arg1_1_5 _lh_termInList_arg2_1_5 =
  (match _lh_termInList_arg2_1_5 with
    | `LH_C(_lh_termInList_LH_C_0_1_5, _lh_termInList_LH_C_1_1_5) -> 
      (if ((termEq_d1_d1_d0 _lh_termInList_arg1_1_5) _lh_termInList_LH_C_0_1_5) then
        true
      else
        ((termInList_d0_d1_d0 _lh_termInList_arg1_1_5) _lh_termInList_LH_C_1_1_5))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d1_d0_d0 _lh_termInList_arg1_1_0 _lh_termInList_arg2_1_0 =
  (match _lh_termInList_arg2_1_0 with
    | `LH_C(_lh_termInList_LH_C_0_1_0, _lh_termInList_LH_C_1_1_0) -> 
      (if ((termEq_d2_d0_d0 _lh_termInList_arg1_1_0) _lh_termInList_LH_C_0_1_0) then
        true
      else
        ((termInList_d1_d0_d0 _lh_termInList_arg1_1_0) _lh_termInList_LH_C_1_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d1_d1_d0 _lh_termInList_arg1_8 _lh_termInList_arg2_8 =
  (match _lh_termInList_arg2_8 with
    | `LH_C(_lh_termInList_LH_C_0_8, _lh_termInList_LH_C_1_8) -> 
      (if ((termEq_d2_d1_d0 _lh_termInList_arg1_8) _lh_termInList_LH_C_0_8) then
        true
      else
        ((termInList_d1_d1_d0 _lh_termInList_arg1_8) _lh_termInList_LH_C_1_8))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d2_d0_d0 _lh_termInList_arg1_9 _lh_termInList_arg2_9 =
  (match _lh_termInList_arg2_9 with
    | `LH_C(_lh_termInList_LH_C_0_9, _lh_termInList_LH_C_1_9) -> 
      (if ((termEq_d3_d0_d0 _lh_termInList_arg1_9) _lh_termInList_LH_C_0_9) then
        true
      else
        ((termInList_d2_d0_d0 _lh_termInList_arg1_9) _lh_termInList_LH_C_1_9))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d2_d1_d0 _lh_termInList_arg1_1_4 _lh_termInList_arg2_1_4 =
  (match _lh_termInList_arg2_1_4 with
    | `LH_C(_lh_termInList_LH_C_0_1_4, _lh_termInList_LH_C_1_1_4) -> 
      (if ((termEq_d3_d1_d0 _lh_termInList_arg1_1_4) _lh_termInList_LH_C_0_1_4) then
        true
      else
        ((termInList_d2_d1_d0 _lh_termInList_arg1_1_4) _lh_termInList_LH_C_1_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d3_d0_d0 _lh_termInList_arg1_1_1 _lh_termInList_arg2_1_1 =
  (match _lh_termInList_arg2_1_1 with
    | `LH_C(_lh_termInList_LH_C_0_1_1, _lh_termInList_LH_C_1_1_1) -> 
      (if ((termEq_d4_d0_d0 _lh_termInList_arg1_1_1) _lh_termInList_LH_C_0_1_1) then
        true
      else
        ((termInList_d3_d0_d0 _lh_termInList_arg1_1_1) _lh_termInList_LH_C_1_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d3_d1_d0 _lh_termInList_arg1_1_3 _lh_termInList_arg2_1_3 =
  (match _lh_termInList_arg2_1_3 with
    | `LH_C(_lh_termInList_LH_C_0_1_3, _lh_termInList_LH_C_1_1_3) -> 
      (if ((termEq_d4_d1_d0 _lh_termInList_arg1_1_3) _lh_termInList_LH_C_0_1_3) then
        true
      else
        ((termInList_d3_d1_d0 _lh_termInList_arg1_1_3) _lh_termInList_LH_C_1_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d0 _lh_termLsEq_arg1_1_3 _lh_termLsEq_arg2_1_3 =
  (match _lh_termLsEq_arg1_1_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_6, _lh_termLsEq_LH_C_1_2_6) -> 
      (match _lh_termLsEq_arg2_1_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_7, _lh_termLsEq_LH_C_1_2_7) -> 
          (if ((termEq_d0_d0_d0 _lh_termLsEq_LH_C_0_2_6) _lh_termLsEq_LH_C_0_2_7) then
            ((termLsEq_d0_d0_d0 _lh_termLsEq_LH_C_1_2_6) _lh_termLsEq_LH_C_1_2_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1 _lh_termLsEq_arg1_1_7 _lh_termLsEq_arg2_1_7 =
  (match _lh_termLsEq_arg1_1_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_3_4, _lh_termLsEq_LH_C_1_3_4) -> 
      (match _lh_termLsEq_arg2_1_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_3_5, _lh_termLsEq_LH_C_1_3_5) -> 
          (if ((termEq_d0_d0_d1 _lh_termLsEq_LH_C_0_3_4) _lh_termLsEq_LH_C_0_3_5) then
            ((termLsEq_d0_d0_d1 _lh_termLsEq_LH_C_1_3_4) _lh_termLsEq_LH_C_1_3_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d1_d0_d0 _lh_termLsEq_arg1_1_0 _lh_termLsEq_arg2_1_0 =
  (match _lh_termLsEq_arg1_1_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_0, _lh_termLsEq_LH_C_1_2_0) -> 
      (match _lh_termLsEq_arg2_1_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_1, _lh_termLsEq_LH_C_1_2_1) -> 
          (if ((termEq_d1_d0_d0 _lh_termLsEq_LH_C_0_2_0) _lh_termLsEq_LH_C_0_2_1) then
            ((termLsEq_d1_d0_d0 _lh_termLsEq_LH_C_1_2_0) _lh_termLsEq_LH_C_1_2_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d1_d1_d0 _lh_termLsEq_arg1_1_4 _lh_termLsEq_arg2_1_4 =
  (match _lh_termLsEq_arg1_1_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_8, _lh_termLsEq_LH_C_1_2_8) -> 
      (match _lh_termLsEq_arg2_1_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_9, _lh_termLsEq_LH_C_1_2_9) -> 
          (if ((termEq_d1_d1_d0 _lh_termLsEq_LH_C_0_2_8) _lh_termLsEq_LH_C_0_2_9) then
            ((termLsEq_d1_d1_d0 _lh_termLsEq_LH_C_1_2_8) _lh_termLsEq_LH_C_1_2_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d2_d0_d0 _lh_termLsEq_arg1_1_6 _lh_termLsEq_arg2_1_6 =
  (match _lh_termLsEq_arg1_1_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_3_2, _lh_termLsEq_LH_C_1_3_2) -> 
      (match _lh_termLsEq_arg2_1_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_3_3, _lh_termLsEq_LH_C_1_3_3) -> 
          (if ((termEq_d2_d0_d0 _lh_termLsEq_LH_C_0_3_2) _lh_termLsEq_LH_C_0_3_3) then
            ((termLsEq_d2_d0_d0 _lh_termLsEq_LH_C_1_3_2) _lh_termLsEq_LH_C_1_3_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d2_d1_d0 _lh_termLsEq_arg1_1_5 _lh_termLsEq_arg2_1_5 =
  (match _lh_termLsEq_arg1_1_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_3_0, _lh_termLsEq_LH_C_1_3_0) -> 
      (match _lh_termLsEq_arg2_1_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_3_1, _lh_termLsEq_LH_C_1_3_1) -> 
          (if ((termEq_d2_d1_d0 _lh_termLsEq_LH_C_0_3_0) _lh_termLsEq_LH_C_0_3_1) then
            ((termLsEq_d2_d1_d0 _lh_termLsEq_LH_C_1_3_0) _lh_termLsEq_LH_C_1_3_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d3_d0_d0 _lh_termLsEq_arg1_1_2 _lh_termLsEq_arg2_1_2 =
  (match _lh_termLsEq_arg1_1_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_4, _lh_termLsEq_LH_C_1_2_4) -> 
      (match _lh_termLsEq_arg2_1_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_5, _lh_termLsEq_LH_C_1_2_5) -> 
          (if ((termEq_d3_d0_d0 _lh_termLsEq_LH_C_0_2_4) _lh_termLsEq_LH_C_0_2_5) then
            ((termLsEq_d3_d0_d0 _lh_termLsEq_LH_C_1_2_4) _lh_termLsEq_LH_C_1_2_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d3_d1_d0 _lh_termLsEq_arg1_1_1 _lh_termLsEq_arg2_1_1 =
  (match _lh_termLsEq_arg1_1_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_2, _lh_termLsEq_LH_C_1_2_2) -> 
      (match _lh_termLsEq_arg2_1_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_3, _lh_termLsEq_LH_C_1_2_3) -> 
          (if ((termEq_d3_d1_d0 _lh_termLsEq_LH_C_0_2_2) _lh_termLsEq_LH_C_0_2_3) then
            ((termLsEq_d3_d1_d0 _lh_termLsEq_LH_C_1_2_2) _lh_termLsEq_LH_C_1_2_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d4_d0_d0 _lh_termLsEq_arg1_9 _lh_termLsEq_arg2_9 =
  (match _lh_termLsEq_arg1_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_8, _lh_termLsEq_LH_C_1_1_8) -> 
      (match _lh_termLsEq_arg2_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_9, _lh_termLsEq_LH_C_1_1_9) -> 
          (if ((termEq_d4_d0_d0 _lh_termLsEq_LH_C_0_1_8) _lh_termLsEq_LH_C_0_1_9) then
            ((termLsEq_d4_d0_d0 _lh_termLsEq_LH_C_1_1_8) _lh_termLsEq_LH_C_1_1_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d4_d1_d0 _lh_termLsEq_arg1_1_8 _lh_termLsEq_arg2_1_8 =
  (match _lh_termLsEq_arg1_1_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_3_6, _lh_termLsEq_LH_C_1_3_6) -> 
      (match _lh_termLsEq_arg2_1_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_3_7, _lh_termLsEq_LH_C_1_3_7) -> 
          (if ((termEq_d4_d1_d0 _lh_termLsEq_LH_C_0_3_6) _lh_termLsEq_LH_C_0_3_7) then
            ((termLsEq_d4_d1_d0 _lh_termLsEq_LH_C_1_3_6) _lh_termLsEq_LH_C_1_3_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and test0_d0_d0_d0 _lh_test0_arg1_1 =
  let rec u_1 = (`Var((`U)))
  and difference_1 = (fun _lh_difference_arg1_1 _lh_difference_arg2_1 -> 
    (`Fun((`DIFFERENCE), (`LH_C(_lh_difference_arg1_1, (`LH_C(_lh_difference_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((difference_1 x_1) x_1), zero_1)), (`LH_C((`LH_P2(((difference_1 ((plus_1 x_1) y_1)) x_1), y_1)), (`LH_C((`LH_P2(((difference_1 ((plus_1 y_1) x_1)) x_1), y_1)), (`LH_C((`LH_P2(((difference_1 ((plus_1 x_1) y_1)) ((plus_1 x_1) z_1)), ((difference_1 y_1) z_1))), (`LH_C((`LH_P2(((difference_1 ((plus_1 y_1) ((plus_1 x_1) z_1))) x_1), ((plus_1 y_1) z_1))), (`LH_C((`LH_P2(((difference_1 (add1_1 ((plus_1 y_1) z_1))) z_1), (add1_1 y_1))), (`LH_C((`LH_P2(((difference_1 (add1_1 (add1_1 x_1))) two_1), x_1)), (`LH_N)))))))))))))))))))
  and times_1 = (fun _lh_times_arg1_1 _lh_times_arg2_1 -> 
    (`Fun((`TIMES), (`LH_C(_lh_times_arg1_1, (`LH_C(_lh_times_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((times_1 x_1) ((plus_1 y_1) z_1)), ((plus_1 ((times_1 x_1) y_1)) ((times_1 x_1) z_1)))), (`LH_C((`LH_P2(((times_1 ((times_1 x_1) y_1)) z_1), ((times_1 x_1) ((times_1 y_1) z_1)))), (`LH_C((`LH_P2(((times_1 x_1) ((difference_1 y_1) z_1)), ((difference_1 ((times_1 y_1) x_1)) ((times_1 z_1) x_1)))), (`LH_C((`LH_P2(((times_1 x_1) (add1_1 y_1)), ((plus_1 x_1) ((times_1 x_1) y_1)))), (`LH_N)))))))))))))
  and sub1_1 = (fun _lh_sub1_arg1_1 -> 
    (`Fun((`SUB1), (`LH_C(_lh_sub1_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((sub1_1 (add1_1 x_1)), x_1)), (`LH_N)))))))
  and cons_1 = (fun _lh_cons_arg1_1 _lh_cons_arg2_1 -> 
    (`Fun((`CONS), (`LH_C(_lh_cons_arg1_1, (`LH_C(_lh_cons_arg2_1, (`LH_N))))), (lazy (`LH_N)))))
  and remainder_1 = (fun _lh_remainder_arg1_1 _lh_remainder_arg2_1 -> 
    (`Fun((`REMAINDER), (`LH_C(_lh_remainder_arg1_1, (`LH_C(_lh_remainder_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((remainder_1 x_1) one_1), zero_1)), (`LH_C((`LH_P2(((remainder_1 x_1) x_1), zero_1)), (`LH_C((`LH_P2(((remainder_1 ((times_1 x_1) y_1)) x_1), zero_1)), (`LH_C((`LH_P2(((remainder_1 ((times_1 x_1) y_1)) y_1), zero_1)), (`LH_N)))))))))))))
  and a_1 = (`Var((`A)))
  and odd__1 = (fun _lh_odd__arg1_1 -> 
    (`Fun((`ODD), (`LH_C(_lh_odd__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((odd__1 x_1), (even__1 (sub1_1 x_1)))), (`LH_N)))))))
  and z_1 = (`Var((`Z)))
  and zerop_1 = (fun _lh_zerop_arg1_1 -> 
    (`Fun((`ZEROP), (`LH_C(_lh_zerop_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((zerop_1 x_1), ((equal_1 x_1) zero_1))), (`LH_N)))))))
  and x_1 = (`Var((`X)))
  and nilp_1 = (fun _lh_nilp_arg1_1 -> 
    (`Fun((`NILP), (`LH_C(_lh_nilp_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((nilp_1 x_1), ((equal_1 x_1) nil_1))), (`LH_N)))))))
  and greatereqp_1 = (fun _lh_greatereqp_arg1_1 _lh_greatereqp_arg2_1 -> 
    (`Fun((`GREATEREQP), (`LH_C(_lh_greatereqp_arg1_1, (`LH_C(_lh_greatereqp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greatereqp_1 x_1) y_1), (not__1 ((lessp_1 x_1) y_1)))), (`LH_N)))))))
  and or__1 = (fun _lh_or__arg1_1 _lh_or__arg2_1 -> 
    (`Fun((`OR), (`LH_C(_lh_or__arg1_1, (`LH_C(_lh_or__arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((or__1 x_1) y_1), (((if__1 x_1) boyerTrue_1) (((if__1 y_1) boyerTrue_1) boyerFalse_1)))), (`LH_N)))))))
  and append_1 = (fun _lh_append_arg1_1 _lh_append_arg2_1 -> 
    (`Fun((`APPEND), (`LH_C(_lh_append_arg1_1, (`LH_C(_lh_append_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((append_1 ((append_1 x_1) y_1)) z_1), ((append_1 x_1) ((append_1 y_1) z_1)))), (`LH_N)))))))
  and greaterp_1 = (fun _lh_greaterp_arg1_1 _lh_greaterp_arg2_1 -> 
    (`Fun((`GREATERP), (`LH_C(_lh_greaterp_arg1_1, (`LH_C(_lh_greaterp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greaterp_1 x_1) y_1), ((lessp_1 y_1) x_1))), (`LH_N)))))))
  and b_1 = (`Var((`B)))
  and member_1 = (fun _lh_member_arg1_1 _lh_member_arg2_1 -> 
    (`Fun((`MEMBER), (`LH_C(_lh_member_arg1_1, (`LH_C(_lh_member_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((member_1 x_1) ((append_1 y_1) z_1)), ((or__1 ((member_1 x_1) y_1)) ((member_1 x_1) z_1)))), (`LH_C((`LH_P2(((member_1 x_1) (reverse__1 y_1)), ((member_1 x_1) y_1))), (`LH_N)))))))))
  and w_1 = (`Var((`W)))
  and lesseqp_1 = (fun _lh_lesseqp_arg1_1 _lh_lesseqp_arg2_1 -> 
    (`Fun((`LESSEQP), (`LH_C(_lh_lesseqp_arg1_1, (`LH_C(_lh_lesseqp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lesseqp_1 x_1) y_1), (not__1 ((lessp_1 y_1) x_1)))), (`LH_N)))))))
  and nil_1 = (`Fun((`NIL), (`LH_N), (lazy (`LH_N))))
  and length__1 = (fun _lh_length__arg1_1 -> 
    (`Fun((`LENGTH), (`LH_C(_lh_length__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((length__1 (reverse__1 x_1)), (length__1 x_1))), (`LH_C((`LH_P2((length__1 ((cons_1 x_1) ((cons_1 y_1) ((cons_1 z_1) ((cons_1 u_1) w_1))))), ((plus_1 four_1) (length__1 w_1)))), (`LH_N)))))))))
  and add1_1 = (fun _lh_add1_arg1_1 -> 
    (`Fun((`ADD1), (`LH_C(_lh_add1_arg1_1, (`LH_N))), (lazy (`LH_N)))))
  and reverse__1 = (fun _lh_reverse__arg1_1 -> 
    (`Fun((`REVERSE), (`LH_C(_lh_reverse__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((reverse__1 ((append_1 x_1) y_1)), ((append_1 (reverse__1 y_1)) (reverse__1 x_1)))), (`LH_N)))))))
  and equal_1 = (fun _lh_equal_arg1_1 _lh_equal_arg2_1 -> 
    (`Fun((`EQUAL), (`LH_C(_lh_equal_arg1_1, (`LH_C(_lh_equal_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((equal_1 ((plus_1 x_1) y_1)) zero_1), ((and__1 (zerop_1 x_1)) (zerop_1 y_1)))), (`LH_C((`LH_P2(((equal_1 ((plus_1 x_1) y_1)) ((plus_1 x_1) z_1)), ((equal_1 y_1) z_1))), (`LH_C((`LH_P2(((equal_1 zero_1) ((difference_1 x_1) y_1)), (not__1 ((lessp_1 y_1) x_1)))), (`LH_C((`LH_P2(((equal_1 x_1) ((difference_1 x_1) y_1)), ((or__1 ((equal_1 x_1) zero_1)) (zerop_1 y_1)))), (`LH_C((`LH_P2(((equal_1 ((times_1 x_1) y_1)) zero_1), ((or__1 (zerop_1 x_1)) (zerop_1 y_1)))), (`LH_C((`LH_P2(((equal_1 ((append_1 x_1) y_1)) ((append_1 x_1) z_1)), ((equal_1 y_1) z_1))), (`LH_C((`LH_P2(((equal_1 y_1) ((times_1 x_1) y_1)), ((or__1 ((equal_1 y_1) zero_1)) ((equal_1 x_1) one_1)))), (`LH_C((`LH_P2(((equal_1 x_1) ((times_1 x_1) y_1)), ((or__1 ((equal_1 x_1) zero_1)) ((equal_1 y_1) one_1)))), (`LH_C((`LH_P2(((equal_1 ((times_1 x_1) y_1)) one_1), ((and__1 ((equal_1 x_1) one_1)) ((equal_1 y_1) one_1)))), (`LH_C((`LH_P2(((equal_1 ((difference_1 x_1) y_1)) ((difference_1 z_1) y_1)), (((if__1 ((lessp_1 x_1) y_1)) (not__1 ((lessp_1 y_1) z_1))) (((if__1 ((lessp_1 z_1) y_1)) (not__1 ((lessp_1 y_1) x_1))) ((equal_1 x_1) z_1))))), (`LH_C((`LH_P2(((equal_1 ((lessp_1 x_1) y_1)) z_1), (((if__1 ((lessp_1 x_1) y_1)) ((equal_1 boyerTrue_1) z_1)) ((equal_1 boyerFalse_1) z_1)))), (`LH_N)))))))))))))))))))))))))))
  and zero_1 = (`Fun((`ZERO), (`LH_N), (lazy (`LH_N))))
  and two_1 = (`Fun((`TWO), (`LH_N), (lazy (`LH_C((`LH_P2(two_1, (add1_1 one_1))), (`LH_N))))))
  and if__1 = (fun _lh_if__arg1_1 _lh_if__arg2_1 _lh_if__arg3_1 -> 
    (`Fun((`IF), (`LH_C(_lh_if__arg1_1, (`LH_C(_lh_if__arg2_1, (`LH_C(_lh_if__arg3_1, (`LH_N))))))), (lazy (`LH_C((`LH_P2((((if__1 (((if__1 x_1) y_1) z_1)) u_1) w_1), (((if__1 x_1) (((if__1 y_1) u_1) w_1)) (((if__1 z_1) u_1) w_1)))), (`LH_N)))))))
  and boyerFalse_1 = (`Fun((`FALSE), (`LH_N), (lazy (`LH_N))))
  and plus_1 = (fun _lh_plus_arg1_1 _lh_plus_arg2_1 -> 
    (`Fun((`PLUS), (`LH_C(_lh_plus_arg1_1, (`LH_C(_lh_plus_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((plus_1 ((plus_1 x_1) y_1)) z_1), ((plus_1 x_1) ((plus_1 y_1) z_1)))), (`LH_C((`LH_P2(((plus_1 ((remainder_1 x_1) y_1)) ((times_1 y_1) ((quotient_1 x_1) y_1))), x_1)), (`LH_C((`LH_P2(((plus_1 x_1) (add1_1 y_1)), (add1_1 ((plus_1 x_1) y_1)))), (`LH_N)))))))))))
  and iff_1 = (fun _lh_iff_arg1_1 _lh_iff_arg2_1 -> 
    (`Fun((`IFF), (`LH_C(_lh_iff_arg1_1, (`LH_C(_lh_iff_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((iff_1 x_1) y_1), ((and__1 ((implies_1 x_1) y_1)) ((implies_1 y_1) x_1)))), (`LH_N)))))))
  and nlistp_1 = (fun _lh_nlistp_arg1_1 -> 
    (`Fun((`NLISTP), (`LH_C(_lh_nlistp_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((nlistp_1 x_1), (not__1 (listp_1 x_1)))), (`LH_N)))))))
  and divides_1 = (fun _lh_divides_arg1_1 _lh_divides_arg2_1 -> 
    (`Fun((`DIVIDES), (`LH_C(_lh_divides_arg1_1, (`LH_C(_lh_divides_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((divides_1 x_1) y_1), (zerop_1 ((remainder_1 y_1) x_1)))), (`LH_N)))))))
  and even__1 = (fun _lh_even__arg1_1 -> 
    (`Fun((`EVEN), (`LH_C(_lh_even__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((even__1 x_1), (((if__1 (zerop_1 x_1)) boyerTrue_1) (odd__1 (sub1_1 x_1))))), (`LH_N)))))))
  and exp__1 = (fun _lh_exp__arg1_1 _lh_exp__arg2_1 -> 
    (`Fun((`EXP), (`LH_C(_lh_exp__arg1_1, (`LH_C(_lh_exp__arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((exp__1 x_1) ((plus_1 y_1) z_1)), ((times_1 ((exp__1 x_1) y_1)) ((exp__1 x_1) z_1)))), (`LH_C((`LH_P2(((exp__1 x_1) ((times_1 y_1) z_1)), ((exp__1 ((exp__1 x_1) y_1)) z_1))), (`LH_N)))))))))
  and y_1 = (`Var((`Y)))
  and consp_1 = (fun _lh_consp_arg1_1 -> 
    (`Fun((`CONSP), (`LH_C(_lh_consp_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((consp_1 ((cons_1 x_1) y_1)), boyerTrue_1)), (`LH_N)))))))
  and four_1 = (`Fun((`FOUR), (`LH_N), (lazy (`LH_C((`LH_P2(four_1, (add1_1 (add1_1 two_1)))), (`LH_N))))))
  and implies_1 = (fun _lh_implies_arg1_1 _lh_implies_arg2_1 -> 
    (`Fun((`IMPLIES), (`LH_C(_lh_implies_arg1_1, (`LH_C(_lh_implies_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((implies_1 x_1) y_1), (((if__1 x_1) (((if__1 y_1) boyerTrue_1) boyerFalse_1)) boyerTrue_1))), (`LH_N)))))))
  and d_1 = (`Var((`D)))
  and lessp_1 = (fun _lh_lessp_arg1_1 _lh_lessp_arg2_1 -> 
    (`Fun((`LESSP), (`LH_C(_lh_lessp_arg1_1, (`LH_C(_lh_lessp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lessp_1 ((remainder_1 x_1) y_1)) y_1), (not__1 (zerop_1 y_1)))), (`LH_C((`LH_P2(((lessp_1 ((quotient_1 x_1) y_1)) x_1), ((and__1 (not__1 (zerop_1 x_1))) ((lessp_1 one_1) y_1)))), (`LH_C((`LH_P2(((lessp_1 ((plus_1 x_1) y_1)) ((plus_1 x_1) z_1)), ((lessp_1 y_1) z_1))), (`LH_C((`LH_P2(((lessp_1 ((times_1 x_1) z_1)) ((times_1 y_1) z_1)), ((and__1 (not__1 (zerop_1 z_1))) ((lessp_1 x_1) y_1)))), (`LH_C((`LH_P2(((lessp_1 y_1) ((plus_1 x_1) y_1)), (not__1 (zerop_1 x_1)))), (`LH_N)))))))))))))))
  and boyerTrue_1 = (`Fun((`TRUE), (`LH_N), (lazy (`LH_N))))
  and listp_1 = (fun _lh_listp_arg1_1 -> 
    (`Fun((`LISTP), (`LH_C(_lh_listp_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((listp_1 x_1), ((or__1 (nilp_1 x_1)) (consp_1 x_1)))), (`LH_N)))))))
  and one_1 = (`Fun((`ONE), (`LH_N), (lazy (`LH_C((`LH_P2(one_1, (add1_1 zero_1))), (`LH_N))))))
  and gcd__1 = (fun _lh_gcd__arg1_1 _lh_gcd__arg2_1 -> 
    (`Fun((`GCD), (`LH_C(_lh_gcd__arg1_1, (`LH_C(_lh_gcd__arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((gcd__1 x_1) y_1), ((gcd__1 y_1) x_1))), (`LH_C((`LH_P2(((gcd__1 ((times_1 x_1) z_1)) ((times_1 y_1) z_1)), ((times_1 z_1) ((gcd__1 x_1) y_1)))), (`LH_N)))))))))
  and and__1 = (fun _lh_and__arg1_1 _lh_and__arg2_1 -> 
    (`Fun((`AND), (`LH_C(_lh_and__arg1_1, (`LH_C(_lh_and__arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((and__1 x_1) y_1), (((if__1 x_1) (((if__1 y_1) boyerTrue_1) boyerFalse_1)) boyerFalse_1))), (`LH_N)))))))
  and not__1 = (fun _lh_not__arg1_1 -> 
    (`Fun((`NOT), (`LH_C(_lh_not__arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((not__1 x_1), (((if__1 x_1) boyerFalse_1) boyerTrue_1))), (`LH_N)))))))
  and f_4 = (fun _lh_f_arg1_1 -> 
    (`Fun((`F), (`LH_C(_lh_f_arg1_1, (`LH_N))), (lazy (`LH_N)))))
  and quotient_1 = (fun _lh_quotient_arg1_1 _lh_quotient_arg2_1 -> 
    (`Fun((`QUOTIENT), (`LH_C(_lh_quotient_arg1_1, (`LH_C(_lh_quotient_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((quotient_1 ((plus_1 x_1) ((plus_1 x_1) y_1))) two_1), ((plus_1 x_1) ((quotient_1 y_1) two_1)))), (`LH_C((`LH_P2(((quotient_1 ((times_1 y_1) x_1)) y_1), (((if__1 (zerop_1 y_1)) zero_1) x_1))), (`LH_N)))))))))
  and c_1 = (`Var((`C)))
  in (let rec subst0_1 = (let rec _lh_find_LH_C_1_1_3 = (let rec _lh_find_LH_C_1_1_4 = (let rec _lh_find_LH_C_1_1_5 = (let rec _lh_find_LH_C_1_1_6 = (let rec _lh_find_LH_C_1_1_7 = (fun _lh_find_arg1_1_6 -> 
    (let rec _lh_apply_subst_LH_P2_1_1_0 = (`ERROR) in
      (let rec _lh_apply_subst_LH_P2_0_1_0 = false in
        (fun _lh_apply_subst_Var_0_1_2 -> 
          (if _lh_apply_subst_LH_P2_0_1_0 then
            _lh_apply_subst_LH_P2_1_1_0
          else
            (`Var(_lh_apply_subst_Var_0_1_2))))))) in
    (let rec _lh_find_LH_C_0_8 = (let rec _lh_find_LH_P2_1_8 = ((lessp_1 ((remainder_1 a_1) b_1)) ((member_1 a_1) (length__1 b_1))) in
      (let rec _lh_find_LH_P2_0_8 = (`W) in
        (fun _lh_find_LH_C_1_1_8 _lh_find_arg1_1_7 -> 
          (if (_lh_find_arg1_1_7 = _lh_find_LH_P2_0_8) then
            (let rec _lh_apply_subst_LH_P2_1_1_1 = _lh_find_LH_P2_1_8 in
              (let rec _lh_apply_subst_LH_P2_0_1_1 = true in
                (fun _lh_apply_subst_Var_0_1_3 -> 
                  (if _lh_apply_subst_LH_P2_0_1_1 then
                    _lh_apply_subst_LH_P2_1_1_1
                  else
                    (`Var(_lh_apply_subst_Var_0_1_3))))))
          else
            ((find_d0_d0_d1 _lh_find_arg1_1_7) _lh_find_LH_C_1_1_8))))) in
      (fun _lh_find_arg1_1_8 -> 
        ((_lh_find_LH_C_0_8 _lh_find_LH_C_1_1_7) _lh_find_arg1_1_8)))) in
    (let rec _lh_find_LH_C_0_9 = (let rec _lh_find_LH_P2_1_9 = ((equal_1 ((plus_1 a_1) b_1)) ((difference_1 x_1) y_1)) in
      (let rec _lh_find_LH_P2_0_9 = (`U) in
        (fun _lh_find_LH_C_1_1_9 _lh_find_arg1_1_9 -> 
          (if (_lh_find_arg1_1_9 = _lh_find_LH_P2_0_9) then
            (let rec _lh_apply_subst_LH_P2_1_1_2 = _lh_find_LH_P2_1_9 in
              (let rec _lh_apply_subst_LH_P2_0_1_2 = true in
                (fun _lh_apply_subst_Var_0_1_4 -> 
                  (if _lh_apply_subst_LH_P2_0_1_2 then
                    _lh_apply_subst_LH_P2_1_1_2
                  else
                    (`Var(_lh_apply_subst_Var_0_1_4))))))
          else
            ((find_d0_d0_d2 _lh_find_arg1_1_9) _lh_find_LH_C_1_1_9))))) in
      (fun _lh_find_arg1_2_0 -> 
        ((_lh_find_LH_C_0_9 _lh_find_LH_C_1_1_6) _lh_find_arg1_2_0)))) in
    (let rec _lh_find_LH_C_0_1_0 = (let rec _lh_find_LH_P2_1_1_0 = (f_4 (reverse__1 ((append_1 ((append_1 a_1) b_1)) nil_1))) in
      (let rec _lh_find_LH_P2_0_1_0 = (`Z) in
        (fun _lh_find_LH_C_1_2_0 _lh_find_arg1_2_1 -> 
          (if (_lh_find_arg1_2_1 = _lh_find_LH_P2_0_1_0) then
            (let rec _lh_apply_subst_LH_P2_1_1_3 = _lh_find_LH_P2_1_1_0 in
              (let rec _lh_apply_subst_LH_P2_0_1_3 = true in
                (fun _lh_apply_subst_Var_0_1_5 -> 
                  (if _lh_apply_subst_LH_P2_0_1_3 then
                    _lh_apply_subst_LH_P2_1_1_3
                  else
                    (`Var(_lh_apply_subst_Var_0_1_5))))))
          else
            ((find_d0_d0_d3 _lh_find_arg1_2_1) _lh_find_LH_C_1_2_0))))) in
      (fun _lh_find_arg1_2_2 -> 
        ((_lh_find_LH_C_0_1_0 _lh_find_LH_C_1_1_5) _lh_find_arg1_2_2)))) in
    (let rec _lh_find_LH_C_0_1_1 = (let rec _lh_find_LH_P2_1_1_1 = (f_4 ((times_1 ((times_1 a_1) b_1)) ((plus_1 c_1) d_1))) in
      (let rec _lh_find_LH_P2_0_1_1 = (`Y) in
        (fun _lh_find_LH_C_1_2_1 _lh_find_arg1_2_3 -> 
          (if (_lh_find_arg1_2_3 = _lh_find_LH_P2_0_1_1) then
            (let rec _lh_apply_subst_LH_P2_1_1_4 = _lh_find_LH_P2_1_1_1 in
              (let rec _lh_apply_subst_LH_P2_0_1_4 = true in
                (fun _lh_apply_subst_Var_0_1_6 -> 
                  (if _lh_apply_subst_LH_P2_0_1_4 then
                    _lh_apply_subst_LH_P2_1_1_4
                  else
                    (`Var(_lh_apply_subst_Var_0_1_6))))))
          else
            ((find_d0_d0_d4 _lh_find_arg1_2_3) _lh_find_LH_C_1_2_1))))) in
      (fun _lh_find_arg1_2_4 -> 
        ((_lh_find_LH_C_0_1_1 _lh_find_LH_C_1_1_4) _lh_find_arg1_2_4)))) in
    (let rec _lh_find_LH_C_0_1_2 = (let rec _lh_find_LH_P2_1_1_2 = (f_4 ((plus_1 ((plus_1 a_1) b_1)) ((plus_1 c_1) zero_1))) in
      (let rec _lh_find_LH_P2_0_1_2 = (`X) in
        (fun _lh_find_LH_C_1_2_2 _lh_find_arg1_2_5 -> 
          (if (_lh_find_arg1_2_5 = _lh_find_LH_P2_0_1_2) then
            (let rec _lh_apply_subst_LH_P2_1_1_5 = _lh_find_LH_P2_1_1_2 in
              (let rec _lh_apply_subst_LH_P2_0_1_5 = true in
                (fun _lh_apply_subst_Var_0_1_7 -> 
                  (if _lh_apply_subst_LH_P2_0_1_5 then
                    _lh_apply_subst_LH_P2_1_1_5
                  else
                    (`Var(_lh_apply_subst_Var_0_1_7))))))
          else
            ((find_d0_d0_d5 _lh_find_arg1_2_5) _lh_find_LH_C_1_2_2))))) in
      (fun _lh_find_arg1_2_6 -> 
        ((_lh_find_LH_C_0_1_2 _lh_find_LH_C_1_1_3) _lh_find_arg1_2_6)))) in
    (let rec theorem_1 = ((implies_1 ((and__1 ((implies_1 _lh_test0_arg1_1) y_1)) ((and__1 ((implies_1 y_1) z_1)) ((and__1 ((implies_1 z_1) u_1)) ((implies_1 u_1) w_1))))) ((implies_1 x_1) w_1)) in
      (tautp_d0_d0_d0 ((apply_subst_d0_d0_d0 subst0_1) theorem_1))))
and testBoyer_nofib_d0_d0_d0 _lh_testBoyer_nofib_arg1_1 =
  ((all_d0_d0_d0 test0_d0_d0_d0) ((replicate_d0_d0_d0 _lh_testBoyer_nofib_arg1_1) (`Var((`X)))))
and truep_d0_d0_d0 _lh_truep_arg1_3 _lh_truep_arg2_3 =
  (match _lh_truep_arg1_3 with
    | `Fun(_lh_truep_Fun_0_3, _lh_truep_Fun_1_3, _lh_truep_Fun_2_3) -> 
      (match _lh_truep_Fun_0_3 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList_d2_d0_d0 _lh_truep_arg1_3) _lh_truep_arg2_3))
    | _ -> 
      ((termInList_d2_d1_d0 _lh_truep_arg1_3) _lh_truep_arg2_3))
and truep_d1_d0_d0 _lh_truep_arg1_2 _lh_truep_arg2_2 =
  (match _lh_truep_arg1_2 with
    | `Fun(_lh_truep_Fun_0_2, _lh_truep_Fun_1_2, _lh_truep_Fun_2_2) -> 
      (match _lh_truep_Fun_0_2 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList_d3_d0_d0 _lh_truep_arg1_2) _lh_truep_arg2_2))
    | _ -> 
      ((termInList_d3_d1_d0 _lh_truep_arg1_2) _lh_truep_arg2_2));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Boyer_nofib" (fun () -> ignore ((testBoyer_nofib_d0 5)));
  Bench.Test.create ~name:"lumberhack_Boyer_nofib" (fun () -> ignore ((testBoyer_nofib_d0_d0 5)));
  Bench.Test.create ~name:"lumberhack_pop_out_Boyer_nofib" (fun () -> ignore ((testBoyer_nofib_d0_d0_d0 5)));
])
