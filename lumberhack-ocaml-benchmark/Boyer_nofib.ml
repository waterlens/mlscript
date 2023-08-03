(*
ocamlfind ocamlopt -rectypes -thread -O3 ./Boyer_nofib.ml -o "./Boyer_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Boyer_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
      (let rec _lh_apply_subst_LH_P2_0_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_8 -> 
            (if _lh_apply_subst_LH_P2_0_6 then
              _lh_apply_subst_LH_P2_1_6
            else
              (`Var(_lh_apply_subst_Var_0_8))))))
    | `LH_C(_lh_find_LH_C_0_6, _lh_find_LH_C_1_1_1) -> 
      (match _lh_find_LH_C_0_6 with
        | `LH_P2(_lh_find_LH_P2_0_6, _lh_find_LH_P2_1_6) -> 
          (if (_lh_find_arg1_1_2 = _lh_find_LH_P2_0_6) then
            (let rec _lh_apply_subst_LH_P2_0_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_7 = _lh_find_LH_P2_1_6 in
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
let rec rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_5_7 _lh_rewrite_with_lemmas_helper_arg2_0 =
  (let rec _lh_matchIdent_6_7 = _lh_rewrite_with_lemmas_helper_arg2_0 in
    (_lh_matchIdent_6_7 _lh_rewrite_with_lemmas_helper_arg1_1_5_7));;
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
      (let rec _lh_one_way_unify1_LH_P2_0_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1 _lh_one_way_unify1_arg3_1 _lh_one_way_unify1_Var_0_1 -> 
            (if _lh_one_way_unify1_LH_P2_0_0 then
              (`LH_P2(((termEq_d0_d0 _lh_one_way_unify1_arg1_1) _lh_one_way_unify1_LH_P2_1_0), _lh_one_way_unify1_arg3_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1, _lh_one_way_unify1_arg1_1)), _lh_one_way_unify1_arg3_1))))))))
    | `LH_C(_lh_find_LH_C_0_5, _lh_find_LH_C_1_1_0) -> 
      (match _lh_find_LH_C_0_5 with
        | `LH_P2(_lh_find_LH_P2_0_5, _lh_find_LH_P2_1_5) -> 
          (if (_lh_find_arg1_1_1 = _lh_find_LH_P2_0_5) then
            (let rec _lh_one_way_unify1_LH_P2_0_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1 = _lh_find_LH_P2_1_5 in
                (fun _lh_one_way_unify1_arg1_2 _lh_one_way_unify1_arg3_2 _lh_one_way_unify1_Var_0_2 -> 
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
        (((_lh_matchIdent_3 _lh_one_way_unify1_arg1_0) _lh_one_way_unify1_arg3_0) _lh_one_way_unify1_Var_0_0))
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
    (let rec _lh_all_LH_C_0_0 = _lh_replicate_arg2_0 in
      (let rec _lh_all_LH_C_1_0 = ((replicate_d0_d0 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
        (fun _lh_all_arg1_1 -> 
          (if (_lh_all_arg1_1 _lh_all_LH_C_0_0) then
            ((all_d0_d0 _lh_all_arg1_1) _lh_all_LH_C_1_0)
          else
            false)))))
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
      (let rec _lh_matchIdent_6_6 = _lh_tautologyp_arg1_0 in
        (match _lh_matchIdent_6_6 with
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
  let rec boyerTrue_0 = (`Fun((`TRUE), (`LH_N), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_3_2 -> 
    _lh_rewrite_with_lemmas_helper_arg1_3_2))))
  and append_0 = (fun _lh_append_arg1_0 _lh_append_arg2_0 -> 
    (`Fun((`APPEND), (`LH_C(_lh_append_arg1_0, (`LH_C(_lh_append_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_8 = ((append_0 ((append_0 x_0) y_0)) z_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_8 = ((append_0 x_0) ((append_0 y_0) z_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_6 _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_8 -> 
          (let rec _lh_matchIdent_5_9 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_3_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_8) in
            (match _lh_matchIdent_5_9 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_9 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_3_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_7 -> 
        _lh_rewrite_with_lemmas_helper_arg1_1_3_7) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_8 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_4 _lh_rewrite_with_lemmas_helper_arg1_1_3_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_9))))))))
  and difference_0 = (fun _lh_difference_arg1_0 _lh_difference_arg2_0 -> 
    (`Fun((`DIFFERENCE), (`LH_C(_lh_difference_arg1_0, (`LH_C(_lh_difference_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_3_4 = ((difference_0 x_0) x_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_3_4 = zero_0 in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_7 _lh_rewrite_with_lemmas_helper_LH_C_1_3_4 -> 
          (let rec _lh_matchIdent_2_2 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_3_4) in
            (match _lh_matchIdent_2_2 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_3_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_3_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_3_5 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_3_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_3_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4_7) _lh_rewrite_with_lemmas_helper_LH_C_1_3_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_3_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_3_6 = ((difference_0 ((plus_0 x_0) y_0)) x_0) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_3_6 = y_0 in
          (fun _lh_rewrite_with_lemmas_helper_arg1_4_8 _lh_rewrite_with_lemmas_helper_LH_C_1_3_6 -> 
            (let rec _lh_matchIdent_2_3 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_3_6) in
              (match _lh_matchIdent_2_3 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_3_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_3_7) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_3_7 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_3_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_3_6))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4_8) _lh_rewrite_with_lemmas_helper_LH_C_1_3_6))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_3_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_3_8 = ((difference_0 ((plus_0 y_0) x_0)) x_0) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_3_8 = y_0 in
            (fun _lh_rewrite_with_lemmas_helper_arg1_4_9 _lh_rewrite_with_lemmas_helper_LH_C_1_3_8 -> 
              (let rec _lh_matchIdent_2_4 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_3_8) in
                (match _lh_matchIdent_2_4 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_3_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_3_9) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_3_9 then
                      (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_3_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_3_8))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4_9) _lh_rewrite_with_lemmas_helper_LH_C_1_3_8))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_3_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_4_0 = ((difference_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_4_0 = ((difference_0 y_0) z_0) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_5_0 _lh_rewrite_with_lemmas_helper_LH_C_1_4_0 -> 
                (let rec _lh_matchIdent_2_5 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_4_0) in
                  (match _lh_matchIdent_2_5 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_4_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_4_1) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_4_1 then
                        (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_4_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_4_0))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5_0) _lh_rewrite_with_lemmas_helper_LH_C_1_4_0))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_4_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_4_2 = ((difference_0 ((plus_0 y_0) ((plus_0 x_0) z_0))) x_0) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_4_2 = ((plus_0 y_0) z_0) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_5_1 _lh_rewrite_with_lemmas_helper_LH_C_1_4_2 -> 
                  (let rec _lh_matchIdent_2_6 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_4_2) in
                    (match _lh_matchIdent_2_6 with
                      | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_4_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_4_3) -> 
                        (if _lh_rewrite_with_lemmas_helper_LH_P2_0_4_3 then
                          (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_4_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_4_2))
                        else
                          ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5_1) _lh_rewrite_with_lemmas_helper_LH_C_1_4_2))
                      | _ -> 
                        (failwith "error")))))) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_4_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_4_4 = ((difference_0 (add1_0 ((plus_0 y_0) z_0))) z_0) in
                (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_4_4 = (add1_0 y_0) in
                  (fun _lh_rewrite_with_lemmas_helper_arg1_5_2 _lh_rewrite_with_lemmas_helper_LH_C_1_4_4 -> 
                    (let rec _lh_matchIdent_2_7 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_4_4) in
                      (match _lh_matchIdent_2_7 with
                        | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_4_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_4_5) -> 
                          (if _lh_rewrite_with_lemmas_helper_LH_P2_0_4_5 then
                            (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_4_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_4_4))
                          else
                            ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5_2) _lh_rewrite_with_lemmas_helper_LH_C_1_4_4))
                        | _ -> 
                          (failwith "error")))))) in
                (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_4_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_4_6 = ((difference_0 (add1_0 (add1_0 x_0))) two_0) in
                  (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_4_6 = x_0 in
                    (fun _lh_rewrite_with_lemmas_helper_arg1_5_3 _lh_rewrite_with_lemmas_helper_LH_C_1_4_6 -> 
                      (let rec _lh_matchIdent_2_8 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_4_6) in
                        (match _lh_matchIdent_2_8 with
                          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_4_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_4_7) -> 
                            (if _lh_rewrite_with_lemmas_helper_LH_P2_0_4_7 then
                              (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_4_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_4_6))
                            else
                              ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5_3) _lh_rewrite_with_lemmas_helper_LH_C_1_4_6))
                          | _ -> 
                            (failwith "error")))))) in
                  (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_4_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_5_4 -> 
                    _lh_rewrite_with_lemmas_helper_arg1_5_4) in
                    (fun _lh_rewrite_with_lemmas_helper_arg1_5_5 -> 
                      ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_3 _lh_rewrite_with_lemmas_helper_arg1_5_5) _lh_rewrite_with_lemmas_helper_LH_C_1_4_7)))) in
                  (fun _lh_rewrite_with_lemmas_helper_arg1_5_6 -> 
                    ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_2 _lh_rewrite_with_lemmas_helper_arg1_5_6) _lh_rewrite_with_lemmas_helper_LH_C_1_4_5)))) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_5_7 -> 
                  ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_1 _lh_rewrite_with_lemmas_helper_arg1_5_7) _lh_rewrite_with_lemmas_helper_LH_C_1_4_3)))) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_5_8 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_0 _lh_rewrite_with_lemmas_helper_arg1_5_8) _lh_rewrite_with_lemmas_helper_LH_C_1_4_1)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_5_9 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_9 _lh_rewrite_with_lemmas_helper_arg1_5_9) _lh_rewrite_with_lemmas_helper_LH_C_1_3_9)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_6_0 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_8 _lh_rewrite_with_lemmas_helper_arg1_6_0) _lh_rewrite_with_lemmas_helper_LH_C_1_3_7)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_6_1 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_7 _lh_rewrite_with_lemmas_helper_arg1_6_1) _lh_rewrite_with_lemmas_helper_LH_C_1_3_5))))))))
  and iff_0 = (fun _lh_iff_arg1_0 _lh_iff_arg2_0 -> 
    (`Fun((`IFF), (`LH_C(_lh_iff_arg1_0, (`LH_C(_lh_iff_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((iff_0 x_0) y_0), ((and__0 ((implies_0 x_0) y_0)) ((implies_0 y_0) x_0)))), (`LH_N)))))))
  and z_0 = (`Var((`Z)))
  and remainder_0 = (fun _lh_remainder_arg1_0 _lh_remainder_arg2_0 -> 
    (`Fun((`REMAINDER), (`LH_C(_lh_remainder_arg1_0, (`LH_C(_lh_remainder_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_4 = ((remainder_0 x_0) one_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4 = zero_0 in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_4 _lh_rewrite_with_lemmas_helper_LH_C_1_2_4 -> 
          (let rec _lh_matchIdent_1_7 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_4) in
            (match _lh_matchIdent_1_7 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_5 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3_4) _lh_rewrite_with_lemmas_helper_LH_C_1_2_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_6 = ((remainder_0 x_0) x_0) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_6 = zero_0 in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_5 _lh_rewrite_with_lemmas_helper_LH_C_1_2_6 -> 
            (let rec _lh_matchIdent_1_8 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_6) in
              (match _lh_matchIdent_1_8 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_7) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_7 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_6))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3_5) _lh_rewrite_with_lemmas_helper_LH_C_1_2_6))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_8 = ((remainder_0 ((times_0 x_0) y_0)) x_0) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_8 = zero_0 in
            (fun _lh_rewrite_with_lemmas_helper_arg1_3_6 _lh_rewrite_with_lemmas_helper_LH_C_1_2_8 -> 
              (let rec _lh_matchIdent_1_9 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_8) in
                (match _lh_matchIdent_1_9 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_9) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_9 then
                      (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_8))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3_6) _lh_rewrite_with_lemmas_helper_LH_C_1_2_8))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_3_0 = ((remainder_0 ((times_0 x_0) y_0)) y_0) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_3_0 = zero_0 in
              (fun _lh_rewrite_with_lemmas_helper_arg1_3_7 _lh_rewrite_with_lemmas_helper_LH_C_1_3_0 -> 
                (let rec _lh_matchIdent_2_0 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_3_0) in
                  (match _lh_matchIdent_2_0 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_3_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_3_1) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_3_1 then
                        (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_3_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_3_0))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3_7) _lh_rewrite_with_lemmas_helper_LH_C_1_3_0))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_3_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_8 -> 
              _lh_rewrite_with_lemmas_helper_arg1_3_8) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_3_9 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_5 _lh_rewrite_with_lemmas_helper_arg1_3_9) _lh_rewrite_with_lemmas_helper_LH_C_1_3_1)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_4_0 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_4 _lh_rewrite_with_lemmas_helper_arg1_4_0) _lh_rewrite_with_lemmas_helper_LH_C_1_2_9)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_4_1 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_3 _lh_rewrite_with_lemmas_helper_arg1_4_1) _lh_rewrite_with_lemmas_helper_LH_C_1_2_7)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_2 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_2 _lh_rewrite_with_lemmas_helper_arg1_4_2) _lh_rewrite_with_lemmas_helper_LH_C_1_2_5))))))))
  and nlistp_0 = (fun _lh_nlistp_arg1_0 -> 
    (`Fun((`NLISTP), (`LH_C(_lh_nlistp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((nlistp_0 x_0), (not__0 (listp_0 x_0)))), (`LH_N)))))))
  and and__0 = (fun _lh_and__arg1_0 _lh_and__arg2_0 -> 
    (`Fun((`AND), (`LH_C(_lh_and__arg1_0, (`LH_C(_lh_and__arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_4_8 = ((and__0 x_0) y_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_4_8 = (((if__0 x_0) (((if__0 y_0) boyerTrue_0) boyerFalse_0)) boyerFalse_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_6_2 _lh_rewrite_with_lemmas_helper_LH_C_1_4_8 -> 
          (let rec _lh_matchIdent_2_9 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_6_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_4_8) in
            (match _lh_matchIdent_2_9 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_4_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_4_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_4_9 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_4_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_4_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_6_2) _lh_rewrite_with_lemmas_helper_LH_C_1_4_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_4_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_6_3 -> 
        _lh_rewrite_with_lemmas_helper_arg1_6_3) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_6_4 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_4 _lh_rewrite_with_lemmas_helper_arg1_6_4) _lh_rewrite_with_lemmas_helper_LH_C_1_4_9))))))))
  and implies_0 = (fun _lh_implies_arg1_0 _lh_implies_arg2_0 -> 
    (`Fun((`IMPLIES), (`LH_C(_lh_implies_arg1_0, (`LH_C(_lh_implies_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0 = ((implies_0 x_0) y_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0 = (((if__0 x_0) (((if__0 y_0) boyerTrue_0) boyerFalse_0)) boyerTrue_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_2 _lh_rewrite_with_lemmas_helper_LH_C_1_1_0 -> 
          (let rec _lh_matchIdent_1_0 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0) in
            (match _lh_matchIdent_1_0 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_3 -> 
        _lh_rewrite_with_lemmas_helper_arg1_1_3) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_4 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_5 _lh_rewrite_with_lemmas_helper_arg1_1_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1))))))))
  and equal_0 = (fun _lh_equal_arg1_0 _lh_equal_arg2_0 -> 
    (`Fun((`EQUAL), (`LH_C(_lh_equal_arg1_0, (`LH_C(_lh_equal_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_8_4 = ((equal_0 ((plus_0 x_0) y_0)) zero_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_8_4 = ((and__0 (zerop_0 x_0)) (zerop_0 y_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_0 _lh_rewrite_with_lemmas_helper_LH_C_1_8_4 -> 
          (let rec _lh_matchIdent_4_7 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_8_4) in
            (match _lh_matchIdent_4_7 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_8_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_8_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_8_5 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_8_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_8_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_0) _lh_rewrite_with_lemmas_helper_LH_C_1_8_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_8_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_8_6 = ((equal_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_8_6 = ((equal_0 y_0) z_0) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_1 _lh_rewrite_with_lemmas_helper_LH_C_1_8_6 -> 
            (let rec _lh_matchIdent_4_8 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_8_6) in
              (match _lh_matchIdent_4_8 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_8_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_8_7) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_8_7 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_8_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_8_6))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_1) _lh_rewrite_with_lemmas_helper_LH_C_1_8_6))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_8_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_8_8 = ((equal_0 zero_0) ((difference_0 x_0) y_0)) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_8_8 = (not__0 ((lessp_0 y_0) x_0)) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_2 _lh_rewrite_with_lemmas_helper_LH_C_1_8_8 -> 
              (let rec _lh_matchIdent_4_9 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_8_8) in
                (match _lh_matchIdent_4_9 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_8_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_8_9) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_8_9 then
                      (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_8_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_8_8))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_2) _lh_rewrite_with_lemmas_helper_LH_C_1_8_8))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_8_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_9_0 = ((equal_0 x_0) ((difference_0 x_0) y_0)) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_9_0 = ((or__0 ((equal_0 x_0) zero_0)) (zerop_0 y_0)) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_3 _lh_rewrite_with_lemmas_helper_LH_C_1_9_0 -> 
                (let rec _lh_matchIdent_5_0 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_9_0) in
                  (match _lh_matchIdent_5_0 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_9_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_9_1) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_9_1 then
                        (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_9_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_9_0))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_3) _lh_rewrite_with_lemmas_helper_LH_C_1_9_0))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_9_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_9_2 = ((equal_0 ((times_0 x_0) y_0)) zero_0) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_9_2 = ((or__0 (zerop_0 x_0)) (zerop_0 y_0)) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_4 _lh_rewrite_with_lemmas_helper_LH_C_1_9_2 -> 
                  (let rec _lh_matchIdent_5_1 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_9_2) in
                    (match _lh_matchIdent_5_1 with
                      | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_9_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_9_3) -> 
                        (if _lh_rewrite_with_lemmas_helper_LH_P2_0_9_3 then
                          (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_9_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_9_2))
                        else
                          ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_4) _lh_rewrite_with_lemmas_helper_LH_C_1_9_2))
                      | _ -> 
                        (failwith "error")))))) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_9_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_9_4 = ((equal_0 ((append_0 x_0) y_0)) ((append_0 x_0) z_0)) in
                (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_9_4 = ((equal_0 y_0) z_0) in
                  (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_5 _lh_rewrite_with_lemmas_helper_LH_C_1_9_4 -> 
                    (let rec _lh_matchIdent_5_2 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_9_4) in
                      (match _lh_matchIdent_5_2 with
                        | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_9_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_9_5) -> 
                          (if _lh_rewrite_with_lemmas_helper_LH_P2_0_9_5 then
                            (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_9_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_9_4))
                          else
                            ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_5) _lh_rewrite_with_lemmas_helper_LH_C_1_9_4))
                        | _ -> 
                          (failwith "error")))))) in
                (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_9_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_9_6 = ((equal_0 y_0) ((times_0 x_0) y_0)) in
                  (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_9_6 = ((or__0 ((equal_0 y_0) zero_0)) ((equal_0 x_0) one_0)) in
                    (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_6 _lh_rewrite_with_lemmas_helper_LH_C_1_9_6 -> 
                      (let rec _lh_matchIdent_5_3 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_9_6) in
                        (match _lh_matchIdent_5_3 with
                          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_9_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_9_7) -> 
                            (if _lh_rewrite_with_lemmas_helper_LH_P2_0_9_7 then
                              (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_9_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_9_6))
                            else
                              ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_6) _lh_rewrite_with_lemmas_helper_LH_C_1_9_6))
                          | _ -> 
                            (failwith "error")))))) in
                  (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_9_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_9_8 = ((equal_0 x_0) ((times_0 x_0) y_0)) in
                    (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_9_8 = ((or__0 ((equal_0 x_0) zero_0)) ((equal_0 y_0) one_0)) in
                      (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_7 _lh_rewrite_with_lemmas_helper_LH_C_1_9_8 -> 
                        (let rec _lh_matchIdent_5_4 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_9_8) in
                          (match _lh_matchIdent_5_4 with
                            | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_9_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_9_9) -> 
                              (if _lh_rewrite_with_lemmas_helper_LH_P2_0_9_9 then
                                (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_9_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_9_8))
                              else
                                ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_7) _lh_rewrite_with_lemmas_helper_LH_C_1_9_8))
                            | _ -> 
                              (failwith "error")))))) in
                    (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_9_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_0 = ((equal_0 ((times_0 x_0) y_0)) one_0) in
                      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_0 = ((and__0 ((equal_0 x_0) one_0)) ((equal_0 y_0) one_0)) in
                        (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_8 _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_0 -> 
                          (let rec _lh_matchIdent_5_5 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_0) in
                            (match _lh_matchIdent_5_5 with
                              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_1) -> 
                                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_1 then
                                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_0))
                                else
                                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_0))
                              | _ -> 
                                (failwith "error")))))) in
                      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_2 = ((equal_0 ((difference_0 x_0) y_0)) ((difference_0 z_0) y_0)) in
                        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_2 = (((if__0 ((lessp_0 x_0) y_0)) (not__0 ((lessp_0 y_0) z_0))) (((if__0 ((lessp_0 z_0) y_0)) (not__0 ((lessp_0 y_0) x_0))) ((equal_0 x_0) z_0))) in
                          (fun _lh_rewrite_with_lemmas_helper_arg1_1_1_9 _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_2 -> 
                            (let rec _lh_matchIdent_5_6 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_2) in
                              (match _lh_matchIdent_5_6 with
                                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_3) -> 
                                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_3 then
                                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_2))
                                  else
                                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_1_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_2))
                                | _ -> 
                                  (failwith "error")))))) in
                        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_4 = ((equal_0 ((lessp_0 x_0) y_0)) z_0) in
                          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_4 = (((if__0 ((lessp_0 x_0) y_0)) ((equal_0 boyerTrue_0) z_0)) ((equal_0 boyerFalse_0) z_0)) in
                            (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_0 _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_4 -> 
                              (let rec _lh_matchIdent_5_7 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_2_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_4) in
                                (match _lh_matchIdent_5_7 with
                                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_5) -> 
                                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_5 then
                                      (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_4))
                                    else
                                      ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_2_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_4))
                                  | _ -> 
                                    (failwith "error")))))) in
                          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_5 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_1 -> 
                            _lh_rewrite_with_lemmas_helper_arg1_1_2_1) in
                            (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_2 -> 
                              ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_2 _lh_rewrite_with_lemmas_helper_arg1_1_2_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_5)))) in
                          (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_3 -> 
                            ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_1 _lh_rewrite_with_lemmas_helper_arg1_1_2_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_3)))) in
                        (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_4 -> 
                          ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_0 _lh_rewrite_with_lemmas_helper_arg1_1_2_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_1)))) in
                      (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_5 -> 
                        ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_9 _lh_rewrite_with_lemmas_helper_arg1_1_2_5) _lh_rewrite_with_lemmas_helper_LH_C_1_9_9)))) in
                    (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_6 -> 
                      ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_8 _lh_rewrite_with_lemmas_helper_arg1_1_2_6) _lh_rewrite_with_lemmas_helper_LH_C_1_9_7)))) in
                  (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_7 -> 
                    ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_7 _lh_rewrite_with_lemmas_helper_arg1_1_2_7) _lh_rewrite_with_lemmas_helper_LH_C_1_9_5)))) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_8 -> 
                  ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_6 _lh_rewrite_with_lemmas_helper_arg1_1_2_8) _lh_rewrite_with_lemmas_helper_LH_C_1_9_3)))) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_1_2_9 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_5 _lh_rewrite_with_lemmas_helper_arg1_1_2_9) _lh_rewrite_with_lemmas_helper_LH_C_1_9_1)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_0 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_4 _lh_rewrite_with_lemmas_helper_arg1_1_3_0) _lh_rewrite_with_lemmas_helper_LH_C_1_8_9)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_1 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_3 _lh_rewrite_with_lemmas_helper_arg1_1_3_1) _lh_rewrite_with_lemmas_helper_LH_C_1_8_7)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_2 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_2 _lh_rewrite_with_lemmas_helper_arg1_1_3_2) _lh_rewrite_with_lemmas_helper_LH_C_1_8_5))))))))
  and divides_0 = (fun _lh_divides_arg1_0 _lh_divides_arg2_0 -> 
    (`Fun((`DIVIDES), (`LH_C(_lh_divides_arg1_0, (`LH_C(_lh_divides_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((divides_0 x_0) y_0), (zerop_0 ((remainder_0 y_0) x_0)))), (`LH_N)))))))
  and b_0 = (`Var((`B)))
  and lesseqp_0 = (fun _lh_lesseqp_arg1_0 _lh_lesseqp_arg2_0 -> 
    (`Fun((`LESSEQP), (`LH_C(_lh_lesseqp_arg1_0, (`LH_C(_lh_lesseqp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lesseqp_0 x_0) y_0), (not__0 ((lessp_0 y_0) x_0)))), (`LH_N)))))))
  and exp__0 = (fun _lh_exp__arg1_0 _lh_exp__arg2_0 -> 
    (`Fun((`EXP), (`LH_C(_lh_exp__arg1_0, (`LH_C(_lh_exp__arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2 = ((exp__0 x_0) ((plus_0 y_0) z_0)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2 = ((times_0 ((exp__0 x_0) y_0)) ((exp__0 x_0) z_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_6 _lh_rewrite_with_lemmas_helper_LH_C_1_1_2 -> 
          (let rec _lh_matchIdent_1_1 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2) in
            (match _lh_matchIdent_1_1 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4 = ((exp__0 x_0) ((times_0 y_0) z_0)) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4 = ((exp__0 ((exp__0 x_0) y_0)) z_0) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_7 _lh_rewrite_with_lemmas_helper_LH_C_1_1_4 -> 
            (let rec _lh_matchIdent_1_2 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4) in
              (match _lh_matchIdent_1_2 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_5 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_8 -> 
          _lh_rewrite_with_lemmas_helper_arg1_1_8) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_9 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_7 _lh_rewrite_with_lemmas_helper_arg1_1_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_0 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_6 _lh_rewrite_with_lemmas_helper_arg1_2_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3))))))))
  and lessp_0 = (fun _lh_lessp_arg1_0 _lh_lessp_arg2_0 -> 
    (`Fun((`LESSP), (`LH_C(_lh_lessp_arg1_0, (`LH_C(_lh_lessp_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_6_6 = ((lessp_0 ((remainder_0 x_0) y_0)) y_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_6_6 = (not__0 (zerop_0 y_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_8_8 _lh_rewrite_with_lemmas_helper_LH_C_1_6_6 -> 
          (let rec _lh_matchIdent_3_8 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_8_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_6_6) in
            (match _lh_matchIdent_3_8 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_6_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_6_7) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_6_7 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_6_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_6_6))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_8_8) _lh_rewrite_with_lemmas_helper_LH_C_1_6_6))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_6_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_6_8 = ((lessp_0 ((quotient_0 x_0) y_0)) x_0) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_6_8 = ((and__0 (not__0 (zerop_0 x_0))) ((lessp_0 one_0) y_0)) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_8_9 _lh_rewrite_with_lemmas_helper_LH_C_1_6_8 -> 
            (let rec _lh_matchIdent_3_9 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_8_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_6_8) in
              (match _lh_matchIdent_3_9 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_6_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_6_9) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_6_9 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_6_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_6_8))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_8_9) _lh_rewrite_with_lemmas_helper_LH_C_1_6_8))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_6_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_7_0 = ((lessp_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_7_0 = ((lessp_0 y_0) z_0) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_9_0 _lh_rewrite_with_lemmas_helper_LH_C_1_7_0 -> 
              (let rec _lh_matchIdent_4_0 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_9_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_7_0) in
                (match _lh_matchIdent_4_0 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_7_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_7_1) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_7_1 then
                      (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_7_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_7_0))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_9_0) _lh_rewrite_with_lemmas_helper_LH_C_1_7_0))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_7_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_7_2 = ((lessp_0 ((times_0 x_0) z_0)) ((times_0 y_0) z_0)) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_7_2 = ((and__0 (not__0 (zerop_0 z_0))) ((lessp_0 x_0) y_0)) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_9_1 _lh_rewrite_with_lemmas_helper_LH_C_1_7_2 -> 
                (let rec _lh_matchIdent_4_1 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_9_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_7_2) in
                  (match _lh_matchIdent_4_1 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_7_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_7_3) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_7_3 then
                        (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_7_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_7_2))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_9_1) _lh_rewrite_with_lemmas_helper_LH_C_1_7_2))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_7_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_7_4 = ((lessp_0 y_0) ((plus_0 x_0) y_0)) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_7_4 = (not__0 (zerop_0 x_0)) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_9_2 _lh_rewrite_with_lemmas_helper_LH_C_1_7_4 -> 
                  (let rec _lh_matchIdent_4_2 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_9_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_7_4) in
                    (match _lh_matchIdent_4_2 with
                      | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_7_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_7_5) -> 
                        (if _lh_rewrite_with_lemmas_helper_LH_P2_0_7_5 then
                          (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_7_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_7_4))
                        else
                          ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_9_2) _lh_rewrite_with_lemmas_helper_LH_C_1_7_4))
                      | _ -> 
                        (failwith "error")))))) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_7_5 = (fun _lh_rewrite_with_lemmas_helper_arg1_9_3 -> 
                _lh_rewrite_with_lemmas_helper_arg1_9_3) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_9_4 -> 
                  ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_7 _lh_rewrite_with_lemmas_helper_arg1_9_4) _lh_rewrite_with_lemmas_helper_LH_C_1_7_5)))) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_9_5 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_6 _lh_rewrite_with_lemmas_helper_arg1_9_5) _lh_rewrite_with_lemmas_helper_LH_C_1_7_3)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_9_6 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_5 _lh_rewrite_with_lemmas_helper_arg1_9_6) _lh_rewrite_with_lemmas_helper_LH_C_1_7_1)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_9_7 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_4 _lh_rewrite_with_lemmas_helper_arg1_9_7) _lh_rewrite_with_lemmas_helper_LH_C_1_6_9)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_9_8 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_3 _lh_rewrite_with_lemmas_helper_arg1_9_8) _lh_rewrite_with_lemmas_helper_LH_C_1_6_7))))))))
  and reverse__0 = (fun _lh_reverse__arg1_0 -> 
    (`Fun((`REVERSE), (`LH_C(_lh_reverse__arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_6_0 = (reverse__0 ((append_0 x_0) y_0)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_6_0 = ((append_0 (reverse__0 y_0)) (reverse__0 x_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_7_9 _lh_rewrite_with_lemmas_helper_LH_C_1_6_0 -> 
          (let rec _lh_matchIdent_3_5 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_7_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_6_0) in
            (match _lh_matchIdent_3_5 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_6_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_6_1) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_6_1 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_6_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_6_0))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_7_9) _lh_rewrite_with_lemmas_helper_LH_C_1_6_0))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_6_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_8_0 -> 
        _lh_rewrite_with_lemmas_helper_arg1_8_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_8_1 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_0 _lh_rewrite_with_lemmas_helper_arg1_8_1) _lh_rewrite_with_lemmas_helper_LH_C_1_6_1))))))))
  and zerop_0 = (fun _lh_zerop_arg1_0 -> 
    (`Fun((`ZEROP), (`LH_C(_lh_zerop_arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_0 = (zerop_0 x_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_0 = ((equal_0 x_0) zero_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_9 _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_0 -> 
          (let rec _lh_matchIdent_6_0 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_3_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_0) in
            (match _lh_matchIdent_6_0 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_1) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_1 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_0))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_3_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_0))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_0 -> 
        _lh_rewrite_with_lemmas_helper_arg1_1_4_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_1 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_5 _lh_rewrite_with_lemmas_helper_arg1_1_4_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_1))))))))
  and zero_0 = (`Fun((`ZERO), (`LH_N), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_1_5_6 -> 
    _lh_rewrite_with_lemmas_helper_arg1_1_5_6))))
  and f_0 = (fun _lh_f_arg1_0 -> 
    (`Fun((`F), (`LH_C(_lh_f_arg1_0, (`LH_N))), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_3_3 -> 
      _lh_rewrite_with_lemmas_helper_arg1_3_3)))))
  and listp_0 = (fun _lh_listp_arg1_0 -> 
    (`Fun((`LISTP), (`LH_C(_lh_listp_arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_5_0 = (listp_0 x_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_5_0 = ((or__0 (nilp_0 x_0)) (consp_0 x_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_6_5 _lh_rewrite_with_lemmas_helper_LH_C_1_5_0 -> 
          (let rec _lh_matchIdent_3_0 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_6_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_5_0) in
            (match _lh_matchIdent_3_0 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_5_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_5_1) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_5_1 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_5_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_5_0))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_6_5) _lh_rewrite_with_lemmas_helper_LH_C_1_5_0))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_5_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_6_6 -> 
        _lh_rewrite_with_lemmas_helper_arg1_6_6) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_6_7 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_5 _lh_rewrite_with_lemmas_helper_arg1_6_7) _lh_rewrite_with_lemmas_helper_LH_C_1_5_1))))))))
  and u_0 = (`Var((`U)))
  and times_0 = (fun _lh_times_arg1_0 _lh_times_arg2_0 -> 
    (`Fun((`TIMES), (`LH_C(_lh_times_arg1_0, (`LH_C(_lh_times_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2 = ((times_0 x_0) ((plus_0 y_0) z_0)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2 = ((plus_0 ((times_0 x_0) y_0)) ((times_0 x_0) z_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3 _lh_rewrite_with_lemmas_helper_LH_C_1_2 -> 
          (let rec _lh_matchIdent_6 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_2) in
            (match _lh_matchIdent_6 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_3 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_3) _lh_rewrite_with_lemmas_helper_LH_C_1_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_4 = ((times_0 ((times_0 x_0) y_0)) z_0) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_4 = ((times_0 x_0) ((times_0 y_0) z_0)) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_4 _lh_rewrite_with_lemmas_helper_LH_C_1_4 -> 
            (let rec _lh_matchIdent_7 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_4) in
              (match _lh_matchIdent_7 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_5) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_5 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_4))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4) _lh_rewrite_with_lemmas_helper_LH_C_1_4))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_6 = ((times_0 x_0) ((difference_0 y_0) z_0)) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_6 = ((difference_0 ((times_0 y_0) x_0)) ((times_0 z_0) x_0)) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_5 _lh_rewrite_with_lemmas_helper_LH_C_1_6 -> 
              (let rec _lh_matchIdent_8 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_6) in
                (match _lh_matchIdent_8 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_7) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_7 then
                      (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_6))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_5) _lh_rewrite_with_lemmas_helper_LH_C_1_6))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_8 = ((times_0 x_0) (add1_0 y_0)) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_8 = ((plus_0 x_0) ((times_0 x_0) y_0)) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_6 _lh_rewrite_with_lemmas_helper_LH_C_1_8 -> 
                (let rec _lh_matchIdent_9 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_8) in
                  (match _lh_matchIdent_9 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_9) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_9 then
                        (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_8))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_6) _lh_rewrite_with_lemmas_helper_LH_C_1_8))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_7 -> 
              _lh_rewrite_with_lemmas_helper_arg1_7) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_8 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_4 _lh_rewrite_with_lemmas_helper_arg1_8) _lh_rewrite_with_lemmas_helper_LH_C_1_9)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_9 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_3 _lh_rewrite_with_lemmas_helper_arg1_9) _lh_rewrite_with_lemmas_helper_LH_C_1_7)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_0 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_2 _lh_rewrite_with_lemmas_helper_arg1_1_0) _lh_rewrite_with_lemmas_helper_LH_C_1_5)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_1 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1 _lh_rewrite_with_lemmas_helper_arg1_1_1) _lh_rewrite_with_lemmas_helper_LH_C_1_3))))))))
  and one_0 = (`Fun((`ONE), (`LH_N), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_6_2 = one_0 in
    (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_6_2 = (add1_0 zero_0) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_8_2 _lh_rewrite_with_lemmas_helper_LH_C_1_6_2 -> 
        (let rec _lh_matchIdent_3_6 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_8_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_6_2) in
          (match _lh_matchIdent_3_6 with
            | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_6_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_6_3) -> 
              (if _lh_rewrite_with_lemmas_helper_LH_P2_0_6_3 then
                (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_6_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_6_2))
              else
                ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_8_2) _lh_rewrite_with_lemmas_helper_LH_C_1_6_2))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_6_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_8_3 -> 
      _lh_rewrite_with_lemmas_helper_arg1_8_3) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_8_4 -> 
        ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_1 _lh_rewrite_with_lemmas_helper_arg1_8_4) _lh_rewrite_with_lemmas_helper_LH_C_1_6_3)))))))
  and plus_0 = (fun _lh_plus_arg1_0 _lh_plus_arg2_0 -> 
    (`Fun((`PLUS), (`LH_C(_lh_plus_arg1_0, (`LH_C(_lh_plus_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6 = ((plus_0 ((plus_0 x_0) y_0)) z_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6 = ((plus_0 x_0) ((plus_0 y_0) z_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_2 _lh_rewrite_with_lemmas_helper_LH_C_1_1_6 -> 
          (let rec _lh_matchIdent_1_3 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6) in
            (match _lh_matchIdent_1_3 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8 = ((plus_0 ((remainder_0 x_0) y_0)) ((times_0 y_0) ((quotient_0 x_0) y_0))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8 = x_0 in
          (fun _lh_rewrite_with_lemmas_helper_arg1_2_3 _lh_rewrite_with_lemmas_helper_LH_C_1_1_8 -> 
            (let rec _lh_matchIdent_1_4 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8) in
              (match _lh_matchIdent_1_4 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0 = ((plus_0 x_0) (add1_0 y_0)) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0 = (add1_0 ((plus_0 x_0) y_0)) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_2_4 _lh_rewrite_with_lemmas_helper_LH_C_1_2_0 -> 
              (let rec _lh_matchIdent_1_5 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0) in
                (match _lh_matchIdent_1_5 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1 then
                      (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_4) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_2_5 -> 
            _lh_rewrite_with_lemmas_helper_arg1_2_5) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_2_6 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0 _lh_rewrite_with_lemmas_helper_arg1_2_6) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_2_7 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_9 _lh_rewrite_with_lemmas_helper_arg1_2_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_8 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_8 _lh_rewrite_with_lemmas_helper_arg1_2_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7))))))))
  and a_0 = (`Var((`A)))
  and if__0 = (fun _lh_if__arg1_0 _lh_if__arg2_0 _lh_if__arg3_0 -> 
    (`Fun((`IF), (`LH_C(_lh_if__arg1_0, (`LH_C(_lh_if__arg2_0, (`LH_C(_lh_if__arg3_0, (`LH_N))))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_5_8 = (((if__0 (((if__0 x_0) y_0) z_0)) u_0) w_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_5_8 = (((if__0 x_0) (((if__0 y_0) u_0) w_0)) (((if__0 z_0) u_0) w_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_7_6 _lh_rewrite_with_lemmas_helper_LH_C_1_5_8 -> 
          (let rec _lh_matchIdent_3_4 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_7_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_5_8) in
            (match _lh_matchIdent_3_4 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_5_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_5_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_5_9 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_5_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_5_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_7_6) _lh_rewrite_with_lemmas_helper_LH_C_1_5_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_5_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_7_7 -> 
        _lh_rewrite_with_lemmas_helper_arg1_7_7) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_7_8 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_9 _lh_rewrite_with_lemmas_helper_arg1_7_8) _lh_rewrite_with_lemmas_helper_LH_C_1_5_9))))))))
  and w_0 = (`Var((`W)))
  and nil_0 = (`Fun((`NIL), (`LH_N), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_2 -> 
    _lh_rewrite_with_lemmas_helper_arg1_1_4_2))))
  and x_0 = (`Var((`X)))
  and odd__0 = (fun _lh_odd__arg1_0 -> 
    (`Fun((`ODD), (`LH_C(_lh_odd__arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_5_2 = (odd__0 x_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_5_2 = (even__0 (sub1_0 x_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_6_8 _lh_rewrite_with_lemmas_helper_LH_C_1_5_2 -> 
          (let rec _lh_matchIdent_3_1 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_6_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_5_2) in
            (match _lh_matchIdent_3_1 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_5_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_5_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_5_3 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_5_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_5_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_6_8) _lh_rewrite_with_lemmas_helper_LH_C_1_5_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_5_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_6_9 -> 
        _lh_rewrite_with_lemmas_helper_arg1_6_9) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_7_0 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_6 _lh_rewrite_with_lemmas_helper_arg1_7_0) _lh_rewrite_with_lemmas_helper_LH_C_1_5_3))))))))
  and y_0 = (`Var((`Y)))
  and greatereqp_0 = (fun _lh_greatereqp_arg1_0 _lh_greatereqp_arg2_0 -> 
    (`Fun((`GREATEREQP), (`LH_C(_lh_greatereqp_arg1_0, (`LH_C(_lh_greatereqp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greatereqp_0 x_0) y_0), (not__0 ((lessp_0 x_0) y_0)))), (`LH_N)))))))
  and not__0 = (fun _lh_not__arg1_0 -> 
    (`Fun((`NOT), (`LH_C(_lh_not__arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_7_8 = (not__0 x_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_7_8 = (((if__0 x_0) boyerFalse_0) boyerTrue_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_2 _lh_rewrite_with_lemmas_helper_LH_C_1_7_8 -> 
          (let rec _lh_matchIdent_4_4 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_0_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_7_8) in
            (match _lh_matchIdent_4_4 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_7_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_7_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_7_9 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_7_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_7_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_0_2) _lh_rewrite_with_lemmas_helper_LH_C_1_7_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_7_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_3 -> 
        _lh_rewrite_with_lemmas_helper_arg1_1_0_3) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_4 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_9 _lh_rewrite_with_lemmas_helper_arg1_1_0_4) _lh_rewrite_with_lemmas_helper_LH_C_1_7_9))))))))
  and member_0 = (fun _lh_member_arg1_0 _lh_member_arg2_0 -> 
    (`Fun((`MEMBER), (`LH_C(_lh_member_arg1_0, (`LH_C(_lh_member_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_4 = ((member_0 x_0) ((append_0 y_0) z_0)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_4 = ((or__0 ((member_0 x_0) y_0)) ((member_0 x_0) z_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_6 _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_4 -> 
          (let rec _lh_matchIdent_6_2 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_4_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_4) in
            (match _lh_matchIdent_6_2 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_5 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_4_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_6 = ((member_0 x_0) (reverse__0 y_0)) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_6 = ((member_0 x_0) y_0) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_7 _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_6 -> 
            (let rec _lh_matchIdent_6_3 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_4_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_6) in
              (match _lh_matchIdent_6_3 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_7) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_7 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_6))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_4_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_6))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_8 -> 
          _lh_rewrite_with_lemmas_helper_arg1_1_4_8) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_9 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_8 _lh_rewrite_with_lemmas_helper_arg1_1_4_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_7)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_5_0 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_7 _lh_rewrite_with_lemmas_helper_arg1_1_5_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_5))))))))
  and d_0 = (`Var((`D)))
  and c_0 = (`Var((`C)))
  and consp_0 = (fun _lh_consp_arg1_0 -> 
    (`Fun((`CONSP), (`LH_C(_lh_consp_arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_6 = (consp_0 ((cons_0 x_0) y_0)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_6 = boyerTrue_0 in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_3 _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_6 -> 
          (let rec _lh_matchIdent_5_8 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_3_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_6) in
            (match _lh_matchIdent_5_8 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_7) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_0_7 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_0_6))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_3_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_6))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_4 -> 
        _lh_rewrite_with_lemmas_helper_arg1_1_3_4) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_3_5 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_3 _lh_rewrite_with_lemmas_helper_arg1_1_3_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_0_7))))))))
  and nilp_0 = (fun _lh_nilp_arg1_0 -> 
    (`Fun((`NILP), (`LH_C(_lh_nilp_arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_3_2 = (nilp_0 x_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_3_2 = ((equal_0 x_0) nil_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_4 _lh_rewrite_with_lemmas_helper_LH_C_1_3_2 -> 
          (let rec _lh_matchIdent_2_1 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_3_2) in
            (match _lh_matchIdent_2_1 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_3_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_3_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_3_3 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_3_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_3_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_4_4) _lh_rewrite_with_lemmas_helper_LH_C_1_3_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_3_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_4_5 -> 
        _lh_rewrite_with_lemmas_helper_arg1_4_5) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_6 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_6 _lh_rewrite_with_lemmas_helper_arg1_4_6) _lh_rewrite_with_lemmas_helper_LH_C_1_3_3))))))))
  and two_0 = (`Fun((`TWO), (`LH_N), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2 = two_0 in
    (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2 = (add1_0 one_0) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_2_9 _lh_rewrite_with_lemmas_helper_LH_C_1_2_2 -> 
        (let rec _lh_matchIdent_1_6 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2) in
          (match _lh_matchIdent_1_6 with
            | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3) -> 
              (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3 then
                (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2))
              else
                ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_9) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_0 -> 
      _lh_rewrite_with_lemmas_helper_arg1_3_0) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_3_1 -> 
        ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1 _lh_rewrite_with_lemmas_helper_arg1_3_1) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3)))))))
  and sub1_0 = (fun _lh_sub1_arg1_0 -> 
    (`Fun((`SUB1), (`LH_C(_lh_sub1_arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_2 = (sub1_0 (add1_0 x_0)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_2 = x_0 in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_3 _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_2 -> 
          (let rec _lh_matchIdent_6_1 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_4_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_2) in
            (match _lh_matchIdent_6_1 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_3 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_4_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_4 -> 
        _lh_rewrite_with_lemmas_helper_arg1_1_4_4) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_4_5 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_6 _lh_rewrite_with_lemmas_helper_arg1_1_4_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_3))))))))
  and add1_0 = (fun _lh_add1_arg1_0 -> 
    (`Fun((`ADD1), (`LH_C(_lh_add1_arg1_0, (`LH_N))), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_4_3 -> 
      _lh_rewrite_with_lemmas_helper_arg1_4_3)))))
  and greaterp_0 = (fun _lh_greaterp_arg1_0 _lh_greaterp_arg2_0 -> 
    (`Fun((`GREATERP), (`LH_C(_lh_greaterp_arg1_0, (`LH_C(_lh_greaterp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greaterp_0 x_0) y_0), ((lessp_0 y_0) x_0))), (`LH_N)))))))
  and or__0 = (fun _lh_or__arg1_0 _lh_or__arg2_0 -> 
    (`Fun((`OR), (`LH_C(_lh_or__arg1_0, (`LH_C(_lh_or__arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_6_4 = ((or__0 x_0) y_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_6_4 = (((if__0 x_0) boyerTrue_0) (((if__0 y_0) boyerTrue_0) boyerFalse_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_8_5 _lh_rewrite_with_lemmas_helper_LH_C_1_6_4 -> 
          (let rec _lh_matchIdent_3_7 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_8_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_6_4) in
            (match _lh_matchIdent_3_7 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_6_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_6_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_6_5 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_6_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_6_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_8_5) _lh_rewrite_with_lemmas_helper_LH_C_1_6_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_6_5 = (fun _lh_rewrite_with_lemmas_helper_arg1_8_6 -> 
        _lh_rewrite_with_lemmas_helper_arg1_8_6) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_8_7 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_2 _lh_rewrite_with_lemmas_helper_arg1_8_7) _lh_rewrite_with_lemmas_helper_LH_C_1_6_5))))))))
  and length__0 = (fun _lh_length__arg1_0 -> 
    (`Fun((`LENGTH), (`LH_C(_lh_length__arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_5_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_8 = (length__0 (reverse__0 x_0)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_8 = (length__0 x_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_5_1 _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_8 -> 
          (let rec _lh_matchIdent_6_4 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_5_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_8) in
            (match _lh_matchIdent_6_4 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_1_9 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_1_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_5_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_0 = (length__0 ((cons_0 x_0) ((cons_0 y_0) ((cons_0 z_0) ((cons_0 u_0) w_0))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_0 = ((plus_0 four_0) (length__0 w_0)) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_5_2 _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_0 -> 
            (let rec _lh_matchIdent_6_5 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_5_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_0) in
              (match _lh_matchIdent_6_5 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_1) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_1 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_0))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_5_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_0))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_5_3 -> 
          _lh_rewrite_with_lemmas_helper_arg1_1_5_3) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_5_4 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_0 _lh_rewrite_with_lemmas_helper_arg1_1_5_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_1)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_5_5 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_5_9 _lh_rewrite_with_lemmas_helper_arg1_1_5_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_1_9))))))))
  and boyerFalse_0 = (`Fun((`FALSE), (`LH_N), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_2_1 -> 
    _lh_rewrite_with_lemmas_helper_arg1_2_1))))
  and four_0 = (`Fun((`FOUR), (`LH_N), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_0 = four_0 in
    (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_0 = (add1_0 (add1_0 two_0)) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_0 _lh_rewrite_with_lemmas_helper_LH_C_1_0 -> 
        (let rec _lh_matchIdent_5 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_0) in
          (match _lh_matchIdent_5 with
            | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1) -> 
              (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1 then
                (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_0))
              else
                ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_0) _lh_rewrite_with_lemmas_helper_LH_C_1_0))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_1 -> 
      _lh_rewrite_with_lemmas_helper_arg1_1) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_2 -> 
        ((_lh_rewrite_with_lemmas_helper_LH_C_0_0 _lh_rewrite_with_lemmas_helper_arg1_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1)))))))
  and cons_0 = (fun _lh_cons_arg1_0 _lh_cons_arg2_0 -> 
    (`Fun((`CONS), (`LH_C(_lh_cons_arg1_0, (`LH_C(_lh_cons_arg2_0, (`LH_N))))), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_1_5 -> 
      _lh_rewrite_with_lemmas_helper_arg1_1_5)))))
  and quotient_0 = (fun _lh_quotient_arg1_0 _lh_quotient_arg2_0 -> 
    (`Fun((`QUOTIENT), (`LH_C(_lh_quotient_arg1_0, (`LH_C(_lh_quotient_arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_5_4 = ((quotient_0 ((plus_0 x_0) ((plus_0 x_0) y_0))) two_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_5_4 = ((plus_0 x_0) ((quotient_0 y_0) two_0)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_7_1 _lh_rewrite_with_lemmas_helper_LH_C_1_5_4 -> 
          (let rec _lh_matchIdent_3_2 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_7_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_5_4) in
            (match _lh_matchIdent_3_2 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_5_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_5_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_5_5 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_5_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_5_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_7_1) _lh_rewrite_with_lemmas_helper_LH_C_1_5_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_5_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_2_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_5_6 = ((quotient_0 ((times_0 y_0) x_0)) y_0) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_5_6 = (((if__0 (zerop_0 y_0)) zero_0) x_0) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_7_2 _lh_rewrite_with_lemmas_helper_LH_C_1_5_6 -> 
            (let rec _lh_matchIdent_3_3 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_7_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_5_6) in
              (match _lh_matchIdent_3_3 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_5_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_5_7) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_5_7 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_5_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_5_6))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_7_2) _lh_rewrite_with_lemmas_helper_LH_C_1_5_6))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_5_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_7_3 -> 
          _lh_rewrite_with_lemmas_helper_arg1_7_3) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_7_4 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_8 _lh_rewrite_with_lemmas_helper_arg1_7_4) _lh_rewrite_with_lemmas_helper_LH_C_1_5_7)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_7_5 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_2_7 _lh_rewrite_with_lemmas_helper_arg1_7_5) _lh_rewrite_with_lemmas_helper_LH_C_1_5_5))))))))
  and gcd__0 = (fun _lh_gcd__arg1_0 _lh_gcd__arg2_0 -> 
    (`Fun((`GCD), (`LH_C(_lh_gcd__arg1_0, (`LH_C(_lh_gcd__arg2_0, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_8_0 = ((gcd__0 x_0) y_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_8_0 = ((gcd__0 y_0) x_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_5 _lh_rewrite_with_lemmas_helper_LH_C_1_8_0 -> 
          (let rec _lh_matchIdent_4_5 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_0_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_8_0) in
            (match _lh_matchIdent_4_5 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_8_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_8_1) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_8_1 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_8_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_8_0))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_0_5) _lh_rewrite_with_lemmas_helper_LH_C_1_8_0))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_8_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_4_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_8_2 = ((gcd__0 ((times_0 x_0) z_0)) ((times_0 y_0) z_0)) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_8_2 = ((times_0 z_0) ((gcd__0 x_0) y_0)) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_6 _lh_rewrite_with_lemmas_helper_LH_C_1_8_2 -> 
            (let rec _lh_matchIdent_4_6 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_0_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_8_2) in
              (match _lh_matchIdent_4_6 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_8_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_8_3) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_8_3 then
                    (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_8_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_8_2))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_0_6) _lh_rewrite_with_lemmas_helper_LH_C_1_8_2))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_8_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_7 -> 
          _lh_rewrite_with_lemmas_helper_arg1_1_0_7) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_8 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_1 _lh_rewrite_with_lemmas_helper_arg1_1_0_8) _lh_rewrite_with_lemmas_helper_LH_C_1_8_3)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_9 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_4_0 _lh_rewrite_with_lemmas_helper_arg1_1_0_9) _lh_rewrite_with_lemmas_helper_LH_C_1_8_1))))))))
  and even__0 = (fun _lh_even__arg1_0 -> 
    (`Fun((`EVEN), (`LH_C(_lh_even__arg1_0, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_3_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_7_6 = (even__0 x_0) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_7_6 = (((if__0 (zerop_0 x_0)) boyerTrue_0) (odd__0 (sub1_0 x_0))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_9_9 _lh_rewrite_with_lemmas_helper_LH_C_1_7_6 -> 
          (let rec _lh_matchIdent_4_3 = ((one_way_unify_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_9_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_7_6) in
            (match _lh_matchIdent_4_3 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_7_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_7_7) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_7_7 then
                  (rewrite_d0_d0 ((apply_subst_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_7_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_7_6))
                else
                  ((rewrite_with_lemmas_helper_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_9_9) _lh_rewrite_with_lemmas_helper_LH_C_1_7_6))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_7_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_0 -> 
        _lh_rewrite_with_lemmas_helper_arg1_1_0_0) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_1_0_1 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_3_8 _lh_rewrite_with_lemmas_helper_arg1_1_0_1) _lh_rewrite_with_lemmas_helper_LH_C_1_7_7))))))))
  in (let rec subst0_0 = (let rec _lh_find_LH_C_0_0 = (let rec _lh_find_LH_P2_0_0 = (`X) in
    (let rec _lh_find_LH_P2_1_0 = (f_0 ((plus_0 ((plus_0 a_0) b_0)) ((plus_0 c_0) zero_0))) in
      (fun _lh_find_arg1_0 _lh_find_LH_C_1_0 -> 
        (if (_lh_find_arg1_0 = _lh_find_LH_P2_0_0) then
          (let rec _lh_apply_subst_LH_P2_0_0 = true in
            (let rec _lh_apply_subst_LH_P2_1_0 = _lh_find_LH_P2_1_0 in
              (fun _lh_apply_subst_Var_0_2 -> 
                (if _lh_apply_subst_LH_P2_0_0 then
                  _lh_apply_subst_LH_P2_1_0
                else
                  (`Var(_lh_apply_subst_Var_0_2))))))
        else
          ((find_d0_d0 _lh_find_arg1_0) _lh_find_LH_C_1_0))))) in
    (let rec _lh_find_LH_C_1_1 = (let rec _lh_find_LH_C_0_1 = (let rec _lh_find_LH_P2_0_1 = (`Y) in
      (let rec _lh_find_LH_P2_1_1 = (f_0 ((times_0 ((times_0 a_0) b_0)) ((plus_0 c_0) d_0))) in
        (fun _lh_find_arg1_1 _lh_find_LH_C_1_2 -> 
          (if (_lh_find_arg1_1 = _lh_find_LH_P2_0_1) then
            (let rec _lh_apply_subst_LH_P2_0_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_1 = _lh_find_LH_P2_1_1 in
                (fun _lh_apply_subst_Var_0_3 -> 
                  (if _lh_apply_subst_LH_P2_0_1 then
                    _lh_apply_subst_LH_P2_1_1
                  else
                    (`Var(_lh_apply_subst_Var_0_3))))))
          else
            ((find_d0_d0 _lh_find_arg1_1) _lh_find_LH_C_1_2))))) in
      (let rec _lh_find_LH_C_1_3 = (let rec _lh_find_LH_C_0_2 = (let rec _lh_find_LH_P2_0_2 = (`Z) in
        (let rec _lh_find_LH_P2_1_2 = (f_0 (reverse__0 ((append_0 ((append_0 a_0) b_0)) nil_0))) in
          (fun _lh_find_arg1_2 _lh_find_LH_C_1_4 -> 
            (if (_lh_find_arg1_2 = _lh_find_LH_P2_0_2) then
              (let rec _lh_apply_subst_LH_P2_0_2 = true in
                (let rec _lh_apply_subst_LH_P2_1_2 = _lh_find_LH_P2_1_2 in
                  (fun _lh_apply_subst_Var_0_4 -> 
                    (if _lh_apply_subst_LH_P2_0_2 then
                      _lh_apply_subst_LH_P2_1_2
                    else
                      (`Var(_lh_apply_subst_Var_0_4))))))
            else
              ((find_d0_d0 _lh_find_arg1_2) _lh_find_LH_C_1_4))))) in
        (let rec _lh_find_LH_C_1_5 = (let rec _lh_find_LH_C_0_3 = (let rec _lh_find_LH_P2_0_3 = (`U) in
          (let rec _lh_find_LH_P2_1_3 = ((equal_0 ((plus_0 a_0) b_0)) ((difference_0 x_0) y_0)) in
            (fun _lh_find_arg1_3 _lh_find_LH_C_1_6 -> 
              (if (_lh_find_arg1_3 = _lh_find_LH_P2_0_3) then
                (let rec _lh_apply_subst_LH_P2_0_3 = true in
                  (let rec _lh_apply_subst_LH_P2_1_3 = _lh_find_LH_P2_1_3 in
                    (fun _lh_apply_subst_Var_0_5 -> 
                      (if _lh_apply_subst_LH_P2_0_3 then
                        _lh_apply_subst_LH_P2_1_3
                      else
                        (`Var(_lh_apply_subst_Var_0_5))))))
              else
                ((find_d0_d0 _lh_find_arg1_3) _lh_find_LH_C_1_6))))) in
          (let rec _lh_find_LH_C_1_7 = (let rec _lh_find_LH_C_0_4 = (let rec _lh_find_LH_P2_0_4 = (`W) in
            (let rec _lh_find_LH_P2_1_4 = ((lessp_0 ((remainder_0 a_0) b_0)) ((member_0 a_0) (length__0 b_0))) in
              (fun _lh_find_arg1_4 _lh_find_LH_C_1_8 -> 
                (if (_lh_find_arg1_4 = _lh_find_LH_P2_0_4) then
                  (let rec _lh_apply_subst_LH_P2_0_4 = true in
                    (let rec _lh_apply_subst_LH_P2_1_4 = _lh_find_LH_P2_1_4 in
                      (fun _lh_apply_subst_Var_0_6 -> 
                        (if _lh_apply_subst_LH_P2_0_4 then
                          _lh_apply_subst_LH_P2_1_4
                        else
                          (`Var(_lh_apply_subst_Var_0_6))))))
                else
                  ((find_d0_d0 _lh_find_arg1_4) _lh_find_LH_C_1_8))))) in
            (let rec _lh_find_LH_C_1_9 = (fun _lh_find_arg1_5 -> 
              (let rec _lh_apply_subst_LH_P2_0_5 = false in
                (let rec _lh_apply_subst_LH_P2_1_5 = (`ERROR) in
                  (fun _lh_apply_subst_Var_0_7 -> 
                    (if _lh_apply_subst_LH_P2_0_5 then
                      _lh_apply_subst_LH_P2_1_5
                    else
                      (`Var(_lh_apply_subst_Var_0_7))))))) in
              (fun _lh_find_arg1_6 -> 
                ((_lh_find_LH_C_0_4 _lh_find_arg1_6) _lh_find_LH_C_1_9)))) in
            (fun _lh_find_arg1_7 -> 
              ((_lh_find_LH_C_0_3 _lh_find_arg1_7) _lh_find_LH_C_1_7)))) in
          (fun _lh_find_arg1_8 -> 
            ((_lh_find_LH_C_0_2 _lh_find_arg1_8) _lh_find_LH_C_1_5)))) in
        (fun _lh_find_arg1_9 -> 
          ((_lh_find_LH_C_0_1 _lh_find_arg1_9) _lh_find_LH_C_1_3)))) in
      (fun _lh_find_arg1_1_0 -> 
        ((_lh_find_LH_C_0_0 _lh_find_arg1_1_0) _lh_find_LH_C_1_1)))) in
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
let rec all_d0_d0_d1 _lh_all_arg1_6 _lh_all_arg2_2 =
  (_lh_all_arg2_2 _lh_all_arg1_6);;
let rec find_d0_d0_d0 _lh_find_arg1_4_5 _lh_find_arg2_3_4 =
  (_lh_find_arg2_3_4 _lh_find_arg1_4_5);;
let rec find_d0_d0_d1 _lh_find_arg1_1_1_5 _lh_find_arg2_1_0_4 =
  (_lh_find_arg2_1_0_4 _lh_find_arg1_1_1_5);;
let rec find_d0_d0_d2 _lh_find_arg1_6_2 _lh_find_arg2_5_1 =
  (_lh_find_arg2_5_1 _lh_find_arg1_6_2);;
let rec find_d0_d0_d3 _lh_find_arg1_5_4 _lh_find_arg2_4_3 =
  (_lh_find_arg2_4_3 _lh_find_arg1_5_4);;
let rec find_d0_d0_d4 _lh_find_arg1_6_8 _lh_find_arg2_5_7 =
  (_lh_find_arg2_5_7 _lh_find_arg1_6_8);;
let rec find_d0_d0_d5 _lh_find_arg1_8_5 _lh_find_arg2_7_4 =
  (_lh_find_arg2_7_4 _lh_find_arg1_8_5);;
let rec find_d1_d0_d0 _lh_find_arg1_7_6 _lh_find_arg2_6_5 =
  (match _lh_find_arg2_6_5 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_5_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_5_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_9_3 -> 
            (if _lh_apply_subst_LH_P2_0_5_8 then
              _lh_apply_subst_LH_P2_1_5_8
            else
              (`Var(_lh_apply_subst_Var_0_9_3))))))
    | `LH_C(_lh_find_LH_C_0_6_5, _lh_find_LH_C_1_7_0) -> 
      (match _lh_find_LH_C_0_6_5 with
        | `LH_P2(_lh_find_LH_P2_0_6_5, _lh_find_LH_P2_1_6_5) -> 
          (if (_lh_find_arg1_7_6 = _lh_find_LH_P2_0_6_5) then
            (let rec _lh_apply_subst_LH_P2_0_5_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_5_9 = _lh_find_LH_P2_1_6_5 in
                (fun _lh_apply_subst_Var_0_9_4 -> 
                  (if _lh_apply_subst_LH_P2_0_5_9 then
                    _lh_apply_subst_LH_P2_1_5_9
                  else
                    (`Var(_lh_apply_subst_Var_0_9_4))))))
          else
            ((find_d1_d0_d0 _lh_find_arg1_7_6) _lh_find_LH_C_1_7_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1 _lh_find_arg1_1_6 _lh_find_arg2_5 =
  (match _lh_find_arg2_5 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_4 -> 
            (if _lh_apply_subst_LH_P2_0_1_0 then
              _lh_apply_subst_LH_P2_1_1_0
            else
              (`Var(_lh_apply_subst_Var_0_1_4))))))
    | `LH_C(_lh_find_LH_C_0_9, _lh_find_LH_C_1_1_4) -> 
      (match _lh_find_LH_C_0_9 with
        | `LH_P2(_lh_find_LH_P2_0_9, _lh_find_LH_P2_1_9) -> 
          (if (_lh_find_arg1_1_6 = _lh_find_LH_P2_0_9) then
            (let rec _lh_apply_subst_LH_P2_0_1_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_1 = _lh_find_LH_P2_1_9 in
                (fun _lh_apply_subst_Var_0_1_5 -> 
                  (if _lh_apply_subst_LH_P2_0_1_1 then
                    _lh_apply_subst_LH_P2_1_1_1
                  else
                    (`Var(_lh_apply_subst_Var_0_1_5))))))
          else
            ((find_d1_d0_d1 _lh_find_arg1_1_6) _lh_find_LH_C_1_1_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d0 _lh_find_arg1_8_9 _lh_find_arg2_7_8 =
  (match _lh_find_arg2_7_8 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_7_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_7_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_0_9 -> 
            (if _lh_apply_subst_LH_P2_0_7_0 then
              _lh_apply_subst_LH_P2_1_7_0
            else
              (`Var(_lh_apply_subst_Var_0_1_0_9))))))
    | `LH_C(_lh_find_LH_C_0_7_7, _lh_find_LH_C_1_8_2) -> 
      (match _lh_find_LH_C_0_7_7 with
        | `LH_P2(_lh_find_LH_P2_0_7_7, _lh_find_LH_P2_1_7_7) -> 
          (if (_lh_find_arg1_8_9 = _lh_find_LH_P2_0_7_7) then
            (let rec _lh_apply_subst_LH_P2_0_7_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_7_1 = _lh_find_LH_P2_1_7_7 in
                (fun _lh_apply_subst_Var_0_1_1_0 -> 
                  (if _lh_apply_subst_LH_P2_0_7_1 then
                    _lh_apply_subst_LH_P2_1_7_1
                  else
                    (`Var(_lh_apply_subst_Var_0_1_1_0))))))
          else
            ((find_d1_d0_d1_d0 _lh_find_arg1_8_9) _lh_find_LH_C_1_8_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d1 _lh_find_arg1_1_4_1 _lh_find_arg2_1_1_9 =
  (match _lh_find_arg2_1_1_9 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_2_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_2_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_8_5 -> 
            (if _lh_apply_subst_LH_P2_0_1_2_6 then
              _lh_apply_subst_LH_P2_1_1_2_6
            else
              (`Var(_lh_apply_subst_Var_0_1_8_5))))))
    | `LH_C(_lh_find_LH_C_0_1_2_2, _lh_find_LH_C_1_1_3_2) -> 
      (match _lh_find_LH_C_0_1_2_2 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_2, _lh_find_LH_P2_1_1_2_2) -> 
          (if (_lh_find_arg1_1_4_1 = _lh_find_LH_P2_0_1_2_2) then
            (let rec _lh_apply_subst_LH_P2_0_1_2_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_2_7 = _lh_find_LH_P2_1_1_2_2 in
                (fun _lh_apply_subst_Var_0_1_8_6 -> 
                  (if _lh_apply_subst_LH_P2_0_1_2_7 then
                    _lh_apply_subst_LH_P2_1_1_2_7
                  else
                    (`Var(_lh_apply_subst_Var_0_1_8_6))))))
          else
            ((find_d1_d0_d1_d1 _lh_find_arg1_1_4_1) _lh_find_LH_C_1_1_3_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d2 _lh_find_arg1_1_3_6 _lh_find_arg2_1_1_4 =
  (match _lh_find_arg2_1_1_4 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_1_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_1_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_7_2 -> 
            (if _lh_apply_subst_LH_P2_0_1_1_6 then
              _lh_apply_subst_LH_P2_1_1_1_6
            else
              (`Var(_lh_apply_subst_Var_0_1_7_2))))))
    | `LH_C(_lh_find_LH_C_0_1_1_7, _lh_find_LH_C_1_1_2_7) -> 
      (match _lh_find_LH_C_0_1_1_7 with
        | `LH_P2(_lh_find_LH_P2_0_1_1_7, _lh_find_LH_P2_1_1_1_7) -> 
          (if (_lh_find_arg1_1_3_6 = _lh_find_LH_P2_0_1_1_7) then
            (let rec _lh_apply_subst_LH_P2_0_1_1_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_1_7 = _lh_find_LH_P2_1_1_1_7 in
                (fun _lh_apply_subst_Var_0_1_7_3 -> 
                  (if _lh_apply_subst_LH_P2_0_1_1_7 then
                    _lh_apply_subst_LH_P2_1_1_1_7
                  else
                    (`Var(_lh_apply_subst_Var_0_1_7_3))))))
          else
            ((find_d1_d0_d1_d2 _lh_find_arg1_1_3_6) _lh_find_LH_C_1_1_2_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d3 _lh_find_arg1_6_7 _lh_find_arg2_5_6 =
  (match _lh_find_arg2_5_6 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_4_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_4_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_7_9 -> 
            (if _lh_apply_subst_LH_P2_0_4_6 then
              _lh_apply_subst_LH_P2_1_4_6
            else
              (`Var(_lh_apply_subst_Var_0_7_9))))))
    | `LH_C(_lh_find_LH_C_0_5_7, _lh_find_LH_C_1_6_2) -> 
      (match _lh_find_LH_C_0_5_7 with
        | `LH_P2(_lh_find_LH_P2_0_5_7, _lh_find_LH_P2_1_5_7) -> 
          (if (_lh_find_arg1_6_7 = _lh_find_LH_P2_0_5_7) then
            (let rec _lh_apply_subst_LH_P2_0_4_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_4_7 = _lh_find_LH_P2_1_5_7 in
                (fun _lh_apply_subst_Var_0_8_0 -> 
                  (if _lh_apply_subst_LH_P2_0_4_7 then
                    _lh_apply_subst_LH_P2_1_4_7
                  else
                    (`Var(_lh_apply_subst_Var_0_8_0))))))
          else
            ((find_d1_d0_d1_d3 _lh_find_arg1_6_7) _lh_find_LH_C_1_6_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d4 _lh_find_arg1_2_3 _lh_find_arg2_1_2 =
  (match _lh_find_arg2_1_2 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_2_2 -> 
            (if _lh_apply_subst_LH_P2_0_1_6 then
              _lh_apply_subst_LH_P2_1_1_6
            else
              (`Var(_lh_apply_subst_Var_0_2_2))))))
    | `LH_C(_lh_find_LH_C_0_1_6, _lh_find_LH_C_1_2_1) -> 
      (match _lh_find_LH_C_0_1_6 with
        | `LH_P2(_lh_find_LH_P2_0_1_6, _lh_find_LH_P2_1_1_6) -> 
          (if (_lh_find_arg1_2_3 = _lh_find_LH_P2_0_1_6) then
            (let rec _lh_apply_subst_LH_P2_0_1_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_7 = _lh_find_LH_P2_1_1_6 in
                (fun _lh_apply_subst_Var_0_2_3 -> 
                  (if _lh_apply_subst_LH_P2_0_1_7 then
                    _lh_apply_subst_LH_P2_1_1_7
                  else
                    (`Var(_lh_apply_subst_Var_0_2_3))))))
          else
            ((find_d1_d0_d1_d4 _lh_find_arg1_2_3) _lh_find_LH_C_1_2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d5 _lh_find_arg1_1_0_8 _lh_find_arg2_9_7 =
  (match _lh_find_arg2_9_7 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_9_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_9_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_3_9 -> 
            (if _lh_apply_subst_LH_P2_0_9_0 then
              _lh_apply_subst_LH_P2_1_9_0
            else
              (`Var(_lh_apply_subst_Var_0_1_3_9))))))
    | `LH_C(_lh_find_LH_C_0_9_6, _lh_find_LH_C_1_1_0_1) -> 
      (match _lh_find_LH_C_0_9_6 with
        | `LH_P2(_lh_find_LH_P2_0_9_6, _lh_find_LH_P2_1_9_6) -> 
          (if (_lh_find_arg1_1_0_8 = _lh_find_LH_P2_0_9_6) then
            (let rec _lh_apply_subst_LH_P2_0_9_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_9_1 = _lh_find_LH_P2_1_9_6 in
                (fun _lh_apply_subst_Var_0_1_4_0 -> 
                  (if _lh_apply_subst_LH_P2_0_9_1 then
                    _lh_apply_subst_LH_P2_1_9_1
                  else
                    (`Var(_lh_apply_subst_Var_0_1_4_0))))))
          else
            ((find_d1_d0_d1_d5 _lh_find_arg1_1_0_8) _lh_find_LH_C_1_1_0_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d6 _lh_find_arg1_7_2 _lh_find_arg2_6_1 =
  (match _lh_find_arg2_6_1 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_5_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_5_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_8_7 -> 
            (if _lh_apply_subst_LH_P2_0_5_4 then
              _lh_apply_subst_LH_P2_1_5_4
            else
              (`Var(_lh_apply_subst_Var_0_8_7))))))
    | `LH_C(_lh_find_LH_C_0_6_1, _lh_find_LH_C_1_6_6) -> 
      (match _lh_find_LH_C_0_6_1 with
        | `LH_P2(_lh_find_LH_P2_0_6_1, _lh_find_LH_P2_1_6_1) -> 
          (if (_lh_find_arg1_7_2 = _lh_find_LH_P2_0_6_1) then
            (let rec _lh_apply_subst_LH_P2_0_5_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_5_5 = _lh_find_LH_P2_1_6_1 in
                (fun _lh_apply_subst_Var_0_8_8 -> 
                  (if _lh_apply_subst_LH_P2_0_5_5 then
                    _lh_apply_subst_LH_P2_1_5_5
                  else
                    (`Var(_lh_apply_subst_Var_0_8_8))))))
          else
            ((find_d1_d0_d1_d6 _lh_find_arg1_7_2) _lh_find_LH_C_1_6_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d7 _lh_find_arg1_1_3_3 _lh_find_arg2_1_1_1 =
  (match _lh_find_arg2_1_1_1 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_1_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_1_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_6_8 -> 
            (if _lh_apply_subst_LH_P2_0_1_1_2 then
              _lh_apply_subst_LH_P2_1_1_1_2
            else
              (`Var(_lh_apply_subst_Var_0_1_6_8))))))
    | `LH_C(_lh_find_LH_C_0_1_1_4, _lh_find_LH_C_1_1_2_4) -> 
      (match _lh_find_LH_C_0_1_1_4 with
        | `LH_P2(_lh_find_LH_P2_0_1_1_4, _lh_find_LH_P2_1_1_1_4) -> 
          (if (_lh_find_arg1_1_3_3 = _lh_find_LH_P2_0_1_1_4) then
            (let rec _lh_apply_subst_LH_P2_0_1_1_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_1_3 = _lh_find_LH_P2_1_1_1_4 in
                (fun _lh_apply_subst_Var_0_1_6_9 -> 
                  (if _lh_apply_subst_LH_P2_0_1_1_3 then
                    _lh_apply_subst_LH_P2_1_1_1_3
                  else
                    (`Var(_lh_apply_subst_Var_0_1_6_9))))))
          else
            ((find_d1_d0_d1_d7 _lh_find_arg1_1_3_3) _lh_find_LH_C_1_1_2_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d8 _lh_find_arg1_1_1_1 _lh_find_arg2_1_0_0 =
  (match _lh_find_arg2_1_0_0 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_9_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_9_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_4_4 -> 
            (if _lh_apply_subst_LH_P2_0_9_4 then
              _lh_apply_subst_LH_P2_1_9_4
            else
              (`Var(_lh_apply_subst_Var_0_1_4_4))))))
    | `LH_C(_lh_find_LH_C_0_9_9, _lh_find_LH_C_1_1_0_4) -> 
      (match _lh_find_LH_C_0_9_9 with
        | `LH_P2(_lh_find_LH_P2_0_9_9, _lh_find_LH_P2_1_9_9) -> 
          (if (_lh_find_arg1_1_1_1 = _lh_find_LH_P2_0_9_9) then
            (let rec _lh_apply_subst_LH_P2_0_9_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_9_5 = _lh_find_LH_P2_1_9_9 in
                (fun _lh_apply_subst_Var_0_1_4_5 -> 
                  (if _lh_apply_subst_LH_P2_0_9_5 then
                    _lh_apply_subst_LH_P2_1_9_5
                  else
                    (`Var(_lh_apply_subst_Var_0_1_4_5))))))
          else
            ((find_d1_d0_d1_d8 _lh_find_arg1_1_1_1) _lh_find_LH_C_1_1_0_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d1_d9 _lh_find_arg1_1_0_9 _lh_find_arg2_9_8 =
  (match _lh_find_arg2_9_8 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_9_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_9_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_4_1 -> 
            (if _lh_apply_subst_LH_P2_0_9_2 then
              _lh_apply_subst_LH_P2_1_9_2
            else
              (`Var(_lh_apply_subst_Var_0_1_4_1))))))
    | `LH_C(_lh_find_LH_C_0_9_7, _lh_find_LH_C_1_1_0_2) -> 
      (match _lh_find_LH_C_0_9_7 with
        | `LH_P2(_lh_find_LH_P2_0_9_7, _lh_find_LH_P2_1_9_7) -> 
          (if (_lh_find_arg1_1_0_9 = _lh_find_LH_P2_0_9_7) then
            (let rec _lh_apply_subst_LH_P2_0_9_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_9_3 = _lh_find_LH_P2_1_9_7 in
                (fun _lh_apply_subst_Var_0_1_4_2 -> 
                  (if _lh_apply_subst_LH_P2_0_9_3 then
                    _lh_apply_subst_LH_P2_1_9_3
                  else
                    (`Var(_lh_apply_subst_Var_0_1_4_2))))))
          else
            ((find_d1_d0_d1_d9 _lh_find_arg1_1_0_9) _lh_find_LH_C_1_1_0_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2 _lh_find_arg1_3_2 _lh_find_arg2_2_1 =
  (match _lh_find_arg2_2_1 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_2_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_2_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_3_9 -> 
            (if _lh_apply_subst_LH_P2_0_2_4 then
              _lh_apply_subst_LH_P2_1_2_4
            else
              (`Var(_lh_apply_subst_Var_0_3_9))))))
    | `LH_C(_lh_find_LH_C_0_2_5, _lh_find_LH_C_1_3_0) -> 
      (match _lh_find_LH_C_0_2_5 with
        | `LH_P2(_lh_find_LH_P2_0_2_5, _lh_find_LH_P2_1_2_5) -> 
          (if (_lh_find_arg1_3_2 = _lh_find_LH_P2_0_2_5) then
            (let rec _lh_apply_subst_LH_P2_0_2_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_2_5 = _lh_find_LH_P2_1_2_5 in
                (fun _lh_apply_subst_Var_0_4_0 -> 
                  (if _lh_apply_subst_LH_P2_0_2_5 then
                    _lh_apply_subst_LH_P2_1_2_5
                  else
                    (`Var(_lh_apply_subst_Var_0_4_0))))))
          else
            ((find_d1_d0_d2 _lh_find_arg1_3_2) _lh_find_LH_C_1_3_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d0 _lh_find_arg1_3_9 _lh_find_arg2_2_8 =
  (match _lh_find_arg2_2_8 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_2_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_2_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_4_4 -> 
            (if _lh_apply_subst_LH_P2_0_2_8 then
              _lh_apply_subst_LH_P2_1_2_8
            else
              (`Var(_lh_apply_subst_Var_0_4_4))))))
    | `LH_C(_lh_find_LH_C_0_3_2, _lh_find_LH_C_1_3_7) -> 
      (match _lh_find_LH_C_0_3_2 with
        | `LH_P2(_lh_find_LH_P2_0_3_2, _lh_find_LH_P2_1_3_2) -> 
          (if (_lh_find_arg1_3_9 = _lh_find_LH_P2_0_3_2) then
            (let rec _lh_apply_subst_LH_P2_0_2_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_2_9 = _lh_find_LH_P2_1_3_2 in
                (fun _lh_apply_subst_Var_0_4_5 -> 
                  (if _lh_apply_subst_LH_P2_0_2_9 then
                    _lh_apply_subst_LH_P2_1_2_9
                  else
                    (`Var(_lh_apply_subst_Var_0_4_5))))))
          else
            ((find_d1_d0_d2_d0 _lh_find_arg1_3_9) _lh_find_LH_C_1_3_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d1 _lh_find_arg1_2_7 _lh_find_arg2_1_6 =
  (match _lh_find_arg2_1_6 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_2_8 -> 
            (if _lh_apply_subst_LH_P2_0_1_8 then
              _lh_apply_subst_LH_P2_1_1_8
            else
              (`Var(_lh_apply_subst_Var_0_2_8))))))
    | `LH_C(_lh_find_LH_C_0_2_0, _lh_find_LH_C_1_2_5) -> 
      (match _lh_find_LH_C_0_2_0 with
        | `LH_P2(_lh_find_LH_P2_0_2_0, _lh_find_LH_P2_1_2_0) -> 
          (if (_lh_find_arg1_2_7 = _lh_find_LH_P2_0_2_0) then
            (let rec _lh_apply_subst_LH_P2_0_1_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_9 = _lh_find_LH_P2_1_2_0 in
                (fun _lh_apply_subst_Var_0_2_9 -> 
                  (if _lh_apply_subst_LH_P2_0_1_9 then
                    _lh_apply_subst_LH_P2_1_1_9
                  else
                    (`Var(_lh_apply_subst_Var_0_2_9))))))
          else
            ((find_d1_d0_d2_d1 _lh_find_arg1_2_7) _lh_find_LH_C_1_2_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d2 _lh_find_arg1_9_9 _lh_find_arg2_8_8 =
  (match _lh_find_arg2_8_8 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_8_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_8_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_2_3 -> 
            (if _lh_apply_subst_LH_P2_0_8_0 then
              _lh_apply_subst_LH_P2_1_8_0
            else
              (`Var(_lh_apply_subst_Var_0_1_2_3))))))
    | `LH_C(_lh_find_LH_C_0_8_7, _lh_find_LH_C_1_9_2) -> 
      (match _lh_find_LH_C_0_8_7 with
        | `LH_P2(_lh_find_LH_P2_0_8_7, _lh_find_LH_P2_1_8_7) -> 
          (if (_lh_find_arg1_9_9 = _lh_find_LH_P2_0_8_7) then
            (let rec _lh_apply_subst_LH_P2_0_8_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_8_1 = _lh_find_LH_P2_1_8_7 in
                (fun _lh_apply_subst_Var_0_1_2_4 -> 
                  (if _lh_apply_subst_LH_P2_0_8_1 then
                    _lh_apply_subst_LH_P2_1_8_1
                  else
                    (`Var(_lh_apply_subst_Var_0_1_2_4))))))
          else
            ((find_d1_d0_d2_d2 _lh_find_arg1_9_9) _lh_find_LH_C_1_9_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d3 _lh_find_arg1_1_1_6 _lh_find_arg2_1_0_5 =
  (match _lh_find_arg2_1_0_5 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_0_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_0_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_5_4 -> 
            (if _lh_apply_subst_LH_P2_0_1_0_0 then
              _lh_apply_subst_LH_P2_1_1_0_0
            else
              (`Var(_lh_apply_subst_Var_0_1_5_4))))))
    | `LH_C(_lh_find_LH_C_0_1_0_3, _lh_find_LH_C_1_1_0_8) -> 
      (match _lh_find_LH_C_0_1_0_3 with
        | `LH_P2(_lh_find_LH_P2_0_1_0_3, _lh_find_LH_P2_1_1_0_3) -> 
          (if (_lh_find_arg1_1_1_6 = _lh_find_LH_P2_0_1_0_3) then
            (let rec _lh_apply_subst_LH_P2_0_1_0_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_0_1 = _lh_find_LH_P2_1_1_0_3 in
                (fun _lh_apply_subst_Var_0_1_5_5 -> 
                  (if _lh_apply_subst_LH_P2_0_1_0_1 then
                    _lh_apply_subst_LH_P2_1_1_0_1
                  else
                    (`Var(_lh_apply_subst_Var_0_1_5_5))))))
          else
            ((find_d1_d0_d2_d3 _lh_find_arg1_1_1_6) _lh_find_LH_C_1_1_0_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d4 _lh_find_arg1_7_1 _lh_find_arg2_6_0 =
  (match _lh_find_arg2_6_0 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_5_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_5_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_8_5 -> 
            (if _lh_apply_subst_LH_P2_0_5_2 then
              _lh_apply_subst_LH_P2_1_5_2
            else
              (`Var(_lh_apply_subst_Var_0_8_5))))))
    | `LH_C(_lh_find_LH_C_0_6_0, _lh_find_LH_C_1_6_5) -> 
      (match _lh_find_LH_C_0_6_0 with
        | `LH_P2(_lh_find_LH_P2_0_6_0, _lh_find_LH_P2_1_6_0) -> 
          (if (_lh_find_arg1_7_1 = _lh_find_LH_P2_0_6_0) then
            (let rec _lh_apply_subst_LH_P2_0_5_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_5_3 = _lh_find_LH_P2_1_6_0 in
                (fun _lh_apply_subst_Var_0_8_6 -> 
                  (if _lh_apply_subst_LH_P2_0_5_3 then
                    _lh_apply_subst_LH_P2_1_5_3
                  else
                    (`Var(_lh_apply_subst_Var_0_8_6))))))
          else
            ((find_d1_d0_d2_d4 _lh_find_arg1_7_1) _lh_find_LH_C_1_6_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d5 _lh_find_arg1_5_3 _lh_find_arg2_4_2 =
  (match _lh_find_arg2_4_2 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_3_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_3_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_5_2 -> 
            (if _lh_apply_subst_LH_P2_0_3_2 then
              _lh_apply_subst_LH_P2_1_3_2
            else
              (`Var(_lh_apply_subst_Var_0_5_2))))))
    | `LH_C(_lh_find_LH_C_0_4_5, _lh_find_LH_C_1_5_0) -> 
      (match _lh_find_LH_C_0_4_5 with
        | `LH_P2(_lh_find_LH_P2_0_4_5, _lh_find_LH_P2_1_4_5) -> 
          (if (_lh_find_arg1_5_3 = _lh_find_LH_P2_0_4_5) then
            (let rec _lh_apply_subst_LH_P2_0_3_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_3_3 = _lh_find_LH_P2_1_4_5 in
                (fun _lh_apply_subst_Var_0_5_3 -> 
                  (if _lh_apply_subst_LH_P2_0_3_3 then
                    _lh_apply_subst_LH_P2_1_3_3
                  else
                    (`Var(_lh_apply_subst_Var_0_5_3))))))
          else
            ((find_d1_d0_d2_d5 _lh_find_arg1_5_3) _lh_find_LH_C_1_5_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d6 _lh_find_arg1_1_3_1 _lh_find_arg2_1_0_9 =
  (match _lh_find_arg2_1_0_9 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_1_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_1_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_6_4 -> 
            (if _lh_apply_subst_LH_P2_0_1_1_0 then
              _lh_apply_subst_LH_P2_1_1_1_0
            else
              (`Var(_lh_apply_subst_Var_0_1_6_4))))))
    | `LH_C(_lh_find_LH_C_0_1_1_2, _lh_find_LH_C_1_1_2_2) -> 
      (match _lh_find_LH_C_0_1_1_2 with
        | `LH_P2(_lh_find_LH_P2_0_1_1_2, _lh_find_LH_P2_1_1_1_2) -> 
          (if (_lh_find_arg1_1_3_1 = _lh_find_LH_P2_0_1_1_2) then
            (let rec _lh_apply_subst_LH_P2_0_1_1_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_1_1 = _lh_find_LH_P2_1_1_1_2 in
                (fun _lh_apply_subst_Var_0_1_6_5 -> 
                  (if _lh_apply_subst_LH_P2_0_1_1_1 then
                    _lh_apply_subst_LH_P2_1_1_1_1
                  else
                    (`Var(_lh_apply_subst_Var_0_1_6_5))))))
          else
            ((find_d1_d0_d2_d6 _lh_find_arg1_1_3_1) _lh_find_LH_C_1_1_2_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d7 _lh_find_arg1_1_4_8 _lh_find_arg2_1_2_6 =
  (match _lh_find_arg2_1_2_6 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_3_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_3_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_9_5 -> 
            (if _lh_apply_subst_LH_P2_0_1_3_2 then
              _lh_apply_subst_LH_P2_1_1_3_2
            else
              (`Var(_lh_apply_subst_Var_0_1_9_5))))))
    | `LH_C(_lh_find_LH_C_0_1_2_9, _lh_find_LH_C_1_1_3_9) -> 
      (match _lh_find_LH_C_0_1_2_9 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_9, _lh_find_LH_P2_1_1_2_9) -> 
          (if (_lh_find_arg1_1_4_8 = _lh_find_LH_P2_0_1_2_9) then
            (let rec _lh_apply_subst_LH_P2_0_1_3_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_3_3 = _lh_find_LH_P2_1_1_2_9 in
                (fun _lh_apply_subst_Var_0_1_9_6 -> 
                  (if _lh_apply_subst_LH_P2_0_1_3_3 then
                    _lh_apply_subst_LH_P2_1_1_3_3
                  else
                    (`Var(_lh_apply_subst_Var_0_1_9_6))))))
          else
            ((find_d1_d0_d2_d7 _lh_find_arg1_1_4_8) _lh_find_LH_C_1_1_3_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d8 _lh_find_arg1_8_8 _lh_find_arg2_7_7 =
  (match _lh_find_arg2_7_7 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_6_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_6_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_0_6 -> 
            (if _lh_apply_subst_LH_P2_0_6_8 then
              _lh_apply_subst_LH_P2_1_6_8
            else
              (`Var(_lh_apply_subst_Var_0_1_0_6))))))
    | `LH_C(_lh_find_LH_C_0_7_6, _lh_find_LH_C_1_8_1) -> 
      (match _lh_find_LH_C_0_7_6 with
        | `LH_P2(_lh_find_LH_P2_0_7_6, _lh_find_LH_P2_1_7_6) -> 
          (if (_lh_find_arg1_8_8 = _lh_find_LH_P2_0_7_6) then
            (let rec _lh_apply_subst_LH_P2_0_6_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_6_9 = _lh_find_LH_P2_1_7_6 in
                (fun _lh_apply_subst_Var_0_1_0_7 -> 
                  (if _lh_apply_subst_LH_P2_0_6_9 then
                    _lh_apply_subst_LH_P2_1_6_9
                  else
                    (`Var(_lh_apply_subst_Var_0_1_0_7))))))
          else
            ((find_d1_d0_d2_d8 _lh_find_arg1_8_8) _lh_find_LH_C_1_8_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d2_d9 _lh_find_arg1_5_1 _lh_find_arg2_4_0 =
  (match _lh_find_arg2_4_0 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_3_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_3_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_5_0 -> 
            (if _lh_apply_subst_LH_P2_0_3_0 then
              _lh_apply_subst_LH_P2_1_3_0
            else
              (`Var(_lh_apply_subst_Var_0_5_0))))))
    | `LH_C(_lh_find_LH_C_0_4_3, _lh_find_LH_C_1_4_8) -> 
      (match _lh_find_LH_C_0_4_3 with
        | `LH_P2(_lh_find_LH_P2_0_4_3, _lh_find_LH_P2_1_4_3) -> 
          (if (_lh_find_arg1_5_1 = _lh_find_LH_P2_0_4_3) then
            (let rec _lh_apply_subst_LH_P2_0_3_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_3_1 = _lh_find_LH_P2_1_4_3 in
                (fun _lh_apply_subst_Var_0_5_1 -> 
                  (if _lh_apply_subst_LH_P2_0_3_1 then
                    _lh_apply_subst_LH_P2_1_3_1
                  else
                    (`Var(_lh_apply_subst_Var_0_5_1))))))
          else
            ((find_d1_d0_d2_d9 _lh_find_arg1_5_1) _lh_find_LH_C_1_4_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3 _lh_find_arg1_5_9 _lh_find_arg2_4_8 =
  (match _lh_find_arg2_4_8 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_3_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_3_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_6_8 -> 
            (if _lh_apply_subst_LH_P2_0_3_8 then
              _lh_apply_subst_LH_P2_1_3_8
            else
              (`Var(_lh_apply_subst_Var_0_6_8))))))
    | `LH_C(_lh_find_LH_C_0_5_0, _lh_find_LH_C_1_5_5) -> 
      (match _lh_find_LH_C_0_5_0 with
        | `LH_P2(_lh_find_LH_P2_0_5_0, _lh_find_LH_P2_1_5_0) -> 
          (if (_lh_find_arg1_5_9 = _lh_find_LH_P2_0_5_0) then
            (let rec _lh_apply_subst_LH_P2_0_3_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_3_9 = _lh_find_LH_P2_1_5_0 in
                (fun _lh_apply_subst_Var_0_6_9 -> 
                  (if _lh_apply_subst_LH_P2_0_3_9 then
                    _lh_apply_subst_LH_P2_1_3_9
                  else
                    (`Var(_lh_apply_subst_Var_0_6_9))))))
          else
            ((find_d1_d0_d3 _lh_find_arg1_5_9) _lh_find_LH_C_1_5_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d0 _lh_find_arg1_6_5 _lh_find_arg2_5_4 =
  (match _lh_find_arg2_5_4 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_4_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_4_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_7_7 -> 
            (if _lh_apply_subst_LH_P2_0_4_4 then
              _lh_apply_subst_LH_P2_1_4_4
            else
              (`Var(_lh_apply_subst_Var_0_7_7))))))
    | `LH_C(_lh_find_LH_C_0_5_5, _lh_find_LH_C_1_6_0) -> 
      (match _lh_find_LH_C_0_5_5 with
        | `LH_P2(_lh_find_LH_P2_0_5_5, _lh_find_LH_P2_1_5_5) -> 
          (if (_lh_find_arg1_6_5 = _lh_find_LH_P2_0_5_5) then
            (let rec _lh_apply_subst_LH_P2_0_4_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_4_5 = _lh_find_LH_P2_1_5_5 in
                (fun _lh_apply_subst_Var_0_7_8 -> 
                  (if _lh_apply_subst_LH_P2_0_4_5 then
                    _lh_apply_subst_LH_P2_1_4_5
                  else
                    (`Var(_lh_apply_subst_Var_0_7_8))))))
          else
            ((find_d1_d0_d3_d0 _lh_find_arg1_6_5) _lh_find_LH_C_1_6_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d1 _lh_find_arg1_1_0_2 _lh_find_arg2_9_1 =
  (match _lh_find_arg2_9_1 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_8_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_8_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_3_1 -> 
            (if _lh_apply_subst_LH_P2_0_8_4 then
              _lh_apply_subst_LH_P2_1_8_4
            else
              (`Var(_lh_apply_subst_Var_0_1_3_1))))))
    | `LH_C(_lh_find_LH_C_0_9_0, _lh_find_LH_C_1_9_5) -> 
      (match _lh_find_LH_C_0_9_0 with
        | `LH_P2(_lh_find_LH_P2_0_9_0, _lh_find_LH_P2_1_9_0) -> 
          (if (_lh_find_arg1_1_0_2 = _lh_find_LH_P2_0_9_0) then
            (let rec _lh_apply_subst_LH_P2_0_8_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_8_5 = _lh_find_LH_P2_1_9_0 in
                (fun _lh_apply_subst_Var_0_1_3_2 -> 
                  (if _lh_apply_subst_LH_P2_0_8_5 then
                    _lh_apply_subst_LH_P2_1_8_5
                  else
                    (`Var(_lh_apply_subst_Var_0_1_3_2))))))
          else
            ((find_d1_d0_d3_d1 _lh_find_arg1_1_0_2) _lh_find_LH_C_1_9_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d2 _lh_find_arg1_9_6 _lh_find_arg2_8_5 =
  (match _lh_find_arg2_8_5 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_7_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_7_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_2_0 -> 
            (if _lh_apply_subst_LH_P2_0_7_8 then
              _lh_apply_subst_LH_P2_1_7_8
            else
              (`Var(_lh_apply_subst_Var_0_1_2_0))))))
    | `LH_C(_lh_find_LH_C_0_8_4, _lh_find_LH_C_1_8_9) -> 
      (match _lh_find_LH_C_0_8_4 with
        | `LH_P2(_lh_find_LH_P2_0_8_4, _lh_find_LH_P2_1_8_4) -> 
          (if (_lh_find_arg1_9_6 = _lh_find_LH_P2_0_8_4) then
            (let rec _lh_apply_subst_LH_P2_0_7_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_7_9 = _lh_find_LH_P2_1_8_4 in
                (fun _lh_apply_subst_Var_0_1_2_1 -> 
                  (if _lh_apply_subst_LH_P2_0_7_9 then
                    _lh_apply_subst_LH_P2_1_7_9
                  else
                    (`Var(_lh_apply_subst_Var_0_1_2_1))))))
          else
            ((find_d1_d0_d3_d2 _lh_find_arg1_9_6) _lh_find_LH_C_1_8_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d3 _lh_find_arg1_1_4_3 _lh_find_arg2_1_2_1 =
  (match _lh_find_arg2_1_2_1 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_2_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_2_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_8_8 -> 
            (if _lh_apply_subst_LH_P2_0_1_2_8 then
              _lh_apply_subst_LH_P2_1_1_2_8
            else
              (`Var(_lh_apply_subst_Var_0_1_8_8))))))
    | `LH_C(_lh_find_LH_C_0_1_2_4, _lh_find_LH_C_1_1_3_4) -> 
      (match _lh_find_LH_C_0_1_2_4 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_4, _lh_find_LH_P2_1_1_2_4) -> 
          (if (_lh_find_arg1_1_4_3 = _lh_find_LH_P2_0_1_2_4) then
            (let rec _lh_apply_subst_LH_P2_0_1_2_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_2_9 = _lh_find_LH_P2_1_1_2_4 in
                (fun _lh_apply_subst_Var_0_1_8_9 -> 
                  (if _lh_apply_subst_LH_P2_0_1_2_9 then
                    _lh_apply_subst_LH_P2_1_1_2_9
                  else
                    (`Var(_lh_apply_subst_Var_0_1_8_9))))))
          else
            ((find_d1_d0_d3_d3 _lh_find_arg1_1_4_3) _lh_find_LH_C_1_1_3_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d4 _lh_find_arg1_1_4_5 _lh_find_arg2_1_2_3 =
  (match _lh_find_arg2_1_2_3 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_3_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_3_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_9_1 -> 
            (if _lh_apply_subst_LH_P2_0_1_3_0 then
              _lh_apply_subst_LH_P2_1_1_3_0
            else
              (`Var(_lh_apply_subst_Var_0_1_9_1))))))
    | `LH_C(_lh_find_LH_C_0_1_2_6, _lh_find_LH_C_1_1_3_6) -> 
      (match _lh_find_LH_C_0_1_2_6 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_6, _lh_find_LH_P2_1_1_2_6) -> 
          (if (_lh_find_arg1_1_4_5 = _lh_find_LH_P2_0_1_2_6) then
            (let rec _lh_apply_subst_LH_P2_0_1_3_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_3_1 = _lh_find_LH_P2_1_1_2_6 in
                (fun _lh_apply_subst_Var_0_1_9_2 -> 
                  (if _lh_apply_subst_LH_P2_0_1_3_1 then
                    _lh_apply_subst_LH_P2_1_1_3_1
                  else
                    (`Var(_lh_apply_subst_Var_0_1_9_2))))))
          else
            ((find_d1_d0_d3_d4 _lh_find_arg1_1_4_5) _lh_find_LH_C_1_1_3_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d5 _lh_find_arg1_2_9 _lh_find_arg2_1_8 =
  (match _lh_find_arg2_1_8 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_2_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_2_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_3_6 -> 
            (if _lh_apply_subst_LH_P2_0_2_2 then
              _lh_apply_subst_LH_P2_1_2_2
            else
              (`Var(_lh_apply_subst_Var_0_3_6))))))
    | `LH_C(_lh_find_LH_C_0_2_2, _lh_find_LH_C_1_2_7) -> 
      (match _lh_find_LH_C_0_2_2 with
        | `LH_P2(_lh_find_LH_P2_0_2_2, _lh_find_LH_P2_1_2_2) -> 
          (if (_lh_find_arg1_2_9 = _lh_find_LH_P2_0_2_2) then
            (let rec _lh_apply_subst_LH_P2_0_2_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_2_3 = _lh_find_LH_P2_1_2_2 in
                (fun _lh_apply_subst_Var_0_3_7 -> 
                  (if _lh_apply_subst_LH_P2_0_2_3 then
                    _lh_apply_subst_LH_P2_1_2_3
                  else
                    (`Var(_lh_apply_subst_Var_0_3_7))))))
          else
            ((find_d1_d0_d3_d5 _lh_find_arg1_2_9) _lh_find_LH_C_1_2_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d6 _lh_find_arg1_1_3_8 _lh_find_arg2_1_1_6 =
  (match _lh_find_arg2_1_1_6 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_2_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_2_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_7_8 -> 
            (if _lh_apply_subst_LH_P2_0_1_2_0 then
              _lh_apply_subst_LH_P2_1_1_2_0
            else
              (`Var(_lh_apply_subst_Var_0_1_7_8))))))
    | `LH_C(_lh_find_LH_C_0_1_1_9, _lh_find_LH_C_1_1_2_9) -> 
      (match _lh_find_LH_C_0_1_1_9 with
        | `LH_P2(_lh_find_LH_P2_0_1_1_9, _lh_find_LH_P2_1_1_1_9) -> 
          (if (_lh_find_arg1_1_3_8 = _lh_find_LH_P2_0_1_1_9) then
            (let rec _lh_apply_subst_LH_P2_0_1_2_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_2_1 = _lh_find_LH_P2_1_1_1_9 in
                (fun _lh_apply_subst_Var_0_1_7_9 -> 
                  (if _lh_apply_subst_LH_P2_0_1_2_1 then
                    _lh_apply_subst_LH_P2_1_1_2_1
                  else
                    (`Var(_lh_apply_subst_Var_0_1_7_9))))))
          else
            ((find_d1_d0_d3_d6 _lh_find_arg1_1_3_8) _lh_find_LH_C_1_1_2_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d7 _lh_find_arg1_6_9 _lh_find_arg2_5_8 =
  (match _lh_find_arg2_5_8 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_4_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_4_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_8_1 -> 
            (if _lh_apply_subst_LH_P2_0_4_8 then
              _lh_apply_subst_LH_P2_1_4_8
            else
              (`Var(_lh_apply_subst_Var_0_8_1))))))
    | `LH_C(_lh_find_LH_C_0_5_8, _lh_find_LH_C_1_6_3) -> 
      (match _lh_find_LH_C_0_5_8 with
        | `LH_P2(_lh_find_LH_P2_0_5_8, _lh_find_LH_P2_1_5_8) -> 
          (if (_lh_find_arg1_6_9 = _lh_find_LH_P2_0_5_8) then
            (let rec _lh_apply_subst_LH_P2_0_4_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_4_9 = _lh_find_LH_P2_1_5_8 in
                (fun _lh_apply_subst_Var_0_8_2 -> 
                  (if _lh_apply_subst_LH_P2_0_4_9 then
                    _lh_apply_subst_LH_P2_1_4_9
                  else
                    (`Var(_lh_apply_subst_Var_0_8_2))))))
          else
            ((find_d1_d0_d3_d7 _lh_find_arg1_6_9) _lh_find_LH_C_1_6_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d8 _lh_find_arg1_8_4 _lh_find_arg2_7_3 =
  (match _lh_find_arg2_7_3 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_6_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_6_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_0_3 -> 
            (if _lh_apply_subst_LH_P2_0_6_6 then
              _lh_apply_subst_LH_P2_1_6_6
            else
              (`Var(_lh_apply_subst_Var_0_1_0_3))))))
    | `LH_C(_lh_find_LH_C_0_7_3, _lh_find_LH_C_1_7_8) -> 
      (match _lh_find_LH_C_0_7_3 with
        | `LH_P2(_lh_find_LH_P2_0_7_3, _lh_find_LH_P2_1_7_3) -> 
          (if (_lh_find_arg1_8_4 = _lh_find_LH_P2_0_7_3) then
            (let rec _lh_apply_subst_LH_P2_0_6_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_6_7 = _lh_find_LH_P2_1_7_3 in
                (fun _lh_apply_subst_Var_0_1_0_4 -> 
                  (if _lh_apply_subst_LH_P2_0_6_7 then
                    _lh_apply_subst_LH_P2_1_6_7
                  else
                    (`Var(_lh_apply_subst_Var_0_1_0_4))))))
          else
            ((find_d1_d0_d3_d8 _lh_find_arg1_8_4) _lh_find_LH_C_1_7_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d3_d9 _lh_find_arg1_1_3_9 _lh_find_arg2_1_1_7 =
  (match _lh_find_arg2_1_1_7 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_2_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_2_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_8_0 -> 
            (if _lh_apply_subst_LH_P2_0_1_2_2 then
              _lh_apply_subst_LH_P2_1_1_2_2
            else
              (`Var(_lh_apply_subst_Var_0_1_8_0))))))
    | `LH_C(_lh_find_LH_C_0_1_2_0, _lh_find_LH_C_1_1_3_0) -> 
      (match _lh_find_LH_C_0_1_2_0 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_0, _lh_find_LH_P2_1_1_2_0) -> 
          (if (_lh_find_arg1_1_3_9 = _lh_find_LH_P2_0_1_2_0) then
            (let rec _lh_apply_subst_LH_P2_0_1_2_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_2_3 = _lh_find_LH_P2_1_1_2_0 in
                (fun _lh_apply_subst_Var_0_1_8_1 -> 
                  (if _lh_apply_subst_LH_P2_0_1_2_3 then
                    _lh_apply_subst_LH_P2_1_1_2_3
                  else
                    (`Var(_lh_apply_subst_Var_0_1_8_1))))))
          else
            ((find_d1_d0_d3_d9 _lh_find_arg1_1_3_9) _lh_find_LH_C_1_1_3_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4 _lh_find_arg1_1_4_0 _lh_find_arg2_1_1_8 =
  (match _lh_find_arg2_1_1_8 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_2_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_2_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_8_2 -> 
            (if _lh_apply_subst_LH_P2_0_1_2_4 then
              _lh_apply_subst_LH_P2_1_1_2_4
            else
              (`Var(_lh_apply_subst_Var_0_1_8_2))))))
    | `LH_C(_lh_find_LH_C_0_1_2_1, _lh_find_LH_C_1_1_3_1) -> 
      (match _lh_find_LH_C_0_1_2_1 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_1, _lh_find_LH_P2_1_1_2_1) -> 
          (if (_lh_find_arg1_1_4_0 = _lh_find_LH_P2_0_1_2_1) then
            (let rec _lh_apply_subst_LH_P2_0_1_2_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_2_5 = _lh_find_LH_P2_1_1_2_1 in
                (fun _lh_apply_subst_Var_0_1_8_3 -> 
                  (if _lh_apply_subst_LH_P2_0_1_2_5 then
                    _lh_apply_subst_LH_P2_1_1_2_5
                  else
                    (`Var(_lh_apply_subst_Var_0_1_8_3))))))
          else
            ((find_d1_d0_d4 _lh_find_arg1_1_4_0) _lh_find_LH_C_1_1_3_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d0 _lh_find_arg1_1_1_8 _lh_find_arg2_1_0_7 =
  (match _lh_find_arg2_1_0_7 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_0_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_0_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_5_6 -> 
            (if _lh_apply_subst_LH_P2_0_1_0_2 then
              _lh_apply_subst_LH_P2_1_1_0_2
            else
              (`Var(_lh_apply_subst_Var_0_1_5_6))))))
    | `LH_C(_lh_find_LH_C_0_1_0_5, _lh_find_LH_C_1_1_1_0) -> 
      (match _lh_find_LH_C_0_1_0_5 with
        | `LH_P2(_lh_find_LH_P2_0_1_0_5, _lh_find_LH_P2_1_1_0_5) -> 
          (if (_lh_find_arg1_1_1_8 = _lh_find_LH_P2_0_1_0_5) then
            (let rec _lh_apply_subst_LH_P2_0_1_0_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_0_3 = _lh_find_LH_P2_1_1_0_5 in
                (fun _lh_apply_subst_Var_0_1_5_7 -> 
                  (if _lh_apply_subst_LH_P2_0_1_0_3 then
                    _lh_apply_subst_LH_P2_1_1_0_3
                  else
                    (`Var(_lh_apply_subst_Var_0_1_5_7))))))
          else
            ((find_d1_d0_d4_d0 _lh_find_arg1_1_1_8) _lh_find_LH_C_1_1_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d1 _lh_find_arg1_3_4 _lh_find_arg2_2_3 =
  (match _lh_find_arg2_2_3 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_2_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_2_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_4_1 -> 
            (if _lh_apply_subst_LH_P2_0_2_6 then
              _lh_apply_subst_LH_P2_1_2_6
            else
              (`Var(_lh_apply_subst_Var_0_4_1))))))
    | `LH_C(_lh_find_LH_C_0_2_7, _lh_find_LH_C_1_3_2) -> 
      (match _lh_find_LH_C_0_2_7 with
        | `LH_P2(_lh_find_LH_P2_0_2_7, _lh_find_LH_P2_1_2_7) -> 
          (if (_lh_find_arg1_3_4 = _lh_find_LH_P2_0_2_7) then
            (let rec _lh_apply_subst_LH_P2_0_2_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_2_7 = _lh_find_LH_P2_1_2_7 in
                (fun _lh_apply_subst_Var_0_4_2 -> 
                  (if _lh_apply_subst_LH_P2_0_2_7 then
                    _lh_apply_subst_LH_P2_1_2_7
                  else
                    (`Var(_lh_apply_subst_Var_0_4_2))))))
          else
            ((find_d1_d0_d4_d1 _lh_find_arg1_3_4) _lh_find_LH_C_1_3_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d2 _lh_find_arg1_9_5 _lh_find_arg2_8_4 =
  (match _lh_find_arg2_8_4 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_7_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_7_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_1_8 -> 
            (if _lh_apply_subst_LH_P2_0_7_6 then
              _lh_apply_subst_LH_P2_1_7_6
            else
              (`Var(_lh_apply_subst_Var_0_1_1_8))))))
    | `LH_C(_lh_find_LH_C_0_8_3, _lh_find_LH_C_1_8_8) -> 
      (match _lh_find_LH_C_0_8_3 with
        | `LH_P2(_lh_find_LH_P2_0_8_3, _lh_find_LH_P2_1_8_3) -> 
          (if (_lh_find_arg1_9_5 = _lh_find_LH_P2_0_8_3) then
            (let rec _lh_apply_subst_LH_P2_0_7_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_7_7 = _lh_find_LH_P2_1_8_3 in
                (fun _lh_apply_subst_Var_0_1_1_9 -> 
                  (if _lh_apply_subst_LH_P2_0_7_7 then
                    _lh_apply_subst_LH_P2_1_7_7
                  else
                    (`Var(_lh_apply_subst_Var_0_1_1_9))))))
          else
            ((find_d1_d0_d4_d2 _lh_find_arg1_9_5) _lh_find_LH_C_1_8_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d3 _lh_find_arg1_1_1_3 _lh_find_arg2_1_0_2 =
  (match _lh_find_arg2_1_0_2 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_9_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_9_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_5_0 -> 
            (if _lh_apply_subst_LH_P2_0_9_6 then
              _lh_apply_subst_LH_P2_1_9_6
            else
              (`Var(_lh_apply_subst_Var_0_1_5_0))))))
    | `LH_C(_lh_find_LH_C_0_1_0_1, _lh_find_LH_C_1_1_0_6) -> 
      (match _lh_find_LH_C_0_1_0_1 with
        | `LH_P2(_lh_find_LH_P2_0_1_0_1, _lh_find_LH_P2_1_1_0_1) -> 
          (if (_lh_find_arg1_1_1_3 = _lh_find_LH_P2_0_1_0_1) then
            (let rec _lh_apply_subst_LH_P2_0_9_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_9_7 = _lh_find_LH_P2_1_1_0_1 in
                (fun _lh_apply_subst_Var_0_1_5_1 -> 
                  (if _lh_apply_subst_LH_P2_0_9_7 then
                    _lh_apply_subst_LH_P2_1_9_7
                  else
                    (`Var(_lh_apply_subst_Var_0_1_5_1))))))
          else
            ((find_d1_d0_d4_d3 _lh_find_arg1_1_1_3) _lh_find_LH_C_1_1_0_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d4 _lh_find_arg1_1_0_4 _lh_find_arg2_9_3 =
  (match _lh_find_arg2_9_3 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_8_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_8_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_3_6 -> 
            (if _lh_apply_subst_LH_P2_0_8_8 then
              _lh_apply_subst_LH_P2_1_8_8
            else
              (`Var(_lh_apply_subst_Var_0_1_3_6))))))
    | `LH_C(_lh_find_LH_C_0_9_2, _lh_find_LH_C_1_9_7) -> 
      (match _lh_find_LH_C_0_9_2 with
        | `LH_P2(_lh_find_LH_P2_0_9_2, _lh_find_LH_P2_1_9_2) -> 
          (if (_lh_find_arg1_1_0_4 = _lh_find_LH_P2_0_9_2) then
            (let rec _lh_apply_subst_LH_P2_0_8_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_8_9 = _lh_find_LH_P2_1_9_2 in
                (fun _lh_apply_subst_Var_0_1_3_7 -> 
                  (if _lh_apply_subst_LH_P2_0_8_9 then
                    _lh_apply_subst_LH_P2_1_8_9
                  else
                    (`Var(_lh_apply_subst_Var_0_1_3_7))))))
          else
            ((find_d1_d0_d4_d4 _lh_find_arg1_1_0_4) _lh_find_LH_C_1_9_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d5 _lh_find_arg1_7_0 _lh_find_arg2_5_9 =
  (match _lh_find_arg2_5_9 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_5_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_5_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_8_3 -> 
            (if _lh_apply_subst_LH_P2_0_5_0 then
              _lh_apply_subst_LH_P2_1_5_0
            else
              (`Var(_lh_apply_subst_Var_0_8_3))))))
    | `LH_C(_lh_find_LH_C_0_5_9, _lh_find_LH_C_1_6_4) -> 
      (match _lh_find_LH_C_0_5_9 with
        | `LH_P2(_lh_find_LH_P2_0_5_9, _lh_find_LH_P2_1_5_9) -> 
          (if (_lh_find_arg1_7_0 = _lh_find_LH_P2_0_5_9) then
            (let rec _lh_apply_subst_LH_P2_0_5_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_5_1 = _lh_find_LH_P2_1_5_9 in
                (fun _lh_apply_subst_Var_0_8_4 -> 
                  (if _lh_apply_subst_LH_P2_0_5_1 then
                    _lh_apply_subst_LH_P2_1_5_1
                  else
                    (`Var(_lh_apply_subst_Var_0_8_4))))))
          else
            ((find_d1_d0_d4_d5 _lh_find_arg1_7_0) _lh_find_LH_C_1_6_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d6 _lh_find_arg1_1_5_0 _lh_find_arg2_1_2_8 =
  (match _lh_find_arg2_1_2_8 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_3_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_3_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_9_7 -> 
            (if _lh_apply_subst_LH_P2_0_1_3_4 then
              _lh_apply_subst_LH_P2_1_1_3_4
            else
              (`Var(_lh_apply_subst_Var_0_1_9_7))))))
    | `LH_C(_lh_find_LH_C_0_1_3_1, _lh_find_LH_C_1_1_4_1) -> 
      (match _lh_find_LH_C_0_1_3_1 with
        | `LH_P2(_lh_find_LH_P2_0_1_3_1, _lh_find_LH_P2_1_1_3_1) -> 
          (if (_lh_find_arg1_1_5_0 = _lh_find_LH_P2_0_1_3_1) then
            (let rec _lh_apply_subst_LH_P2_0_1_3_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_3_5 = _lh_find_LH_P2_1_1_3_1 in
                (fun _lh_apply_subst_Var_0_1_9_8 -> 
                  (if _lh_apply_subst_LH_P2_0_1_3_5 then
                    _lh_apply_subst_LH_P2_1_1_3_5
                  else
                    (`Var(_lh_apply_subst_Var_0_1_9_8))))))
          else
            ((find_d1_d0_d4_d6 _lh_find_arg1_1_5_0) _lh_find_LH_C_1_1_4_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d7 _lh_find_arg1_1_7 _lh_find_arg2_6 =
  (match _lh_find_arg2_6 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_6 -> 
            (if _lh_apply_subst_LH_P2_0_1_2 then
              _lh_apply_subst_LH_P2_1_1_2
            else
              (`Var(_lh_apply_subst_Var_0_1_6))))))
    | `LH_C(_lh_find_LH_C_0_1_0, _lh_find_LH_C_1_1_5) -> 
      (match _lh_find_LH_C_0_1_0 with
        | `LH_P2(_lh_find_LH_P2_0_1_0, _lh_find_LH_P2_1_1_0) -> 
          (if (_lh_find_arg1_1_7 = _lh_find_LH_P2_0_1_0) then
            (let rec _lh_apply_subst_LH_P2_0_1_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_3 = _lh_find_LH_P2_1_1_0 in
                (fun _lh_apply_subst_Var_0_1_7 -> 
                  (if _lh_apply_subst_LH_P2_0_1_3 then
                    _lh_apply_subst_LH_P2_1_1_3
                  else
                    (`Var(_lh_apply_subst_Var_0_1_7))))))
          else
            ((find_d1_d0_d4_d7 _lh_find_arg1_1_7) _lh_find_LH_C_1_1_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d8 _lh_find_arg1_1_4 _lh_find_arg2_3 =
  (match _lh_find_arg2_3 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_0 -> 
            (if _lh_apply_subst_LH_P2_0_8 then
              _lh_apply_subst_LH_P2_1_8
            else
              (`Var(_lh_apply_subst_Var_0_1_0))))))
    | `LH_C(_lh_find_LH_C_0_7, _lh_find_LH_C_1_1_2) -> 
      (match _lh_find_LH_C_0_7 with
        | `LH_P2(_lh_find_LH_P2_0_7, _lh_find_LH_P2_1_7) -> 
          (if (_lh_find_arg1_1_4 = _lh_find_LH_P2_0_7) then
            (let rec _lh_apply_subst_LH_P2_0_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_9 = _lh_find_LH_P2_1_7 in
                (fun _lh_apply_subst_Var_0_1_1 -> 
                  (if _lh_apply_subst_LH_P2_0_9 then
                    _lh_apply_subst_LH_P2_1_9
                  else
                    (`Var(_lh_apply_subst_Var_0_1_1))))))
          else
            ((find_d1_d0_d4_d8 _lh_find_arg1_1_4) _lh_find_LH_C_1_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d4_d9 _lh_find_arg1_1_3_7 _lh_find_arg2_1_1_5 =
  (match _lh_find_arg2_1_1_5 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_1_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_1_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_7_6 -> 
            (if _lh_apply_subst_LH_P2_0_1_1_8 then
              _lh_apply_subst_LH_P2_1_1_1_8
            else
              (`Var(_lh_apply_subst_Var_0_1_7_6))))))
    | `LH_C(_lh_find_LH_C_0_1_1_8, _lh_find_LH_C_1_1_2_8) -> 
      (match _lh_find_LH_C_0_1_1_8 with
        | `LH_P2(_lh_find_LH_P2_0_1_1_8, _lh_find_LH_P2_1_1_1_8) -> 
          (if (_lh_find_arg1_1_3_7 = _lh_find_LH_P2_0_1_1_8) then
            (let rec _lh_apply_subst_LH_P2_0_1_1_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_1_9 = _lh_find_LH_P2_1_1_1_8 in
                (fun _lh_apply_subst_Var_0_1_7_7 -> 
                  (if _lh_apply_subst_LH_P2_0_1_1_9 then
                    _lh_apply_subst_LH_P2_1_1_1_9
                  else
                    (`Var(_lh_apply_subst_Var_0_1_7_7))))))
          else
            ((find_d1_d0_d4_d9 _lh_find_arg1_1_3_7) _lh_find_LH_C_1_1_2_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5 _lh_find_arg1_1_0_3 _lh_find_arg2_9_2 =
  (match _lh_find_arg2_9_2 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_8_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_8_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_3_4 -> 
            (if _lh_apply_subst_LH_P2_0_8_6 then
              _lh_apply_subst_LH_P2_1_8_6
            else
              (`Var(_lh_apply_subst_Var_0_1_3_4))))))
    | `LH_C(_lh_find_LH_C_0_9_1, _lh_find_LH_C_1_9_6) -> 
      (match _lh_find_LH_C_0_9_1 with
        | `LH_P2(_lh_find_LH_P2_0_9_1, _lh_find_LH_P2_1_9_1) -> 
          (if (_lh_find_arg1_1_0_3 = _lh_find_LH_P2_0_9_1) then
            (let rec _lh_apply_subst_LH_P2_0_8_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_8_7 = _lh_find_LH_P2_1_9_1 in
                (fun _lh_apply_subst_Var_0_1_3_5 -> 
                  (if _lh_apply_subst_LH_P2_0_8_7 then
                    _lh_apply_subst_LH_P2_1_8_7
                  else
                    (`Var(_lh_apply_subst_Var_0_1_3_5))))))
          else
            ((find_d1_d0_d5 _lh_find_arg1_1_0_3) _lh_find_LH_C_1_9_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d0 _lh_find_arg1_6_3 _lh_find_arg2_5_2 =
  (match _lh_find_arg2_5_2 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_4_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_4_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_7_5 -> 
            (if _lh_apply_subst_LH_P2_0_4_2 then
              _lh_apply_subst_LH_P2_1_4_2
            else
              (`Var(_lh_apply_subst_Var_0_7_5))))))
    | `LH_C(_lh_find_LH_C_0_5_3, _lh_find_LH_C_1_5_8) -> 
      (match _lh_find_LH_C_0_5_3 with
        | `LH_P2(_lh_find_LH_P2_0_5_3, _lh_find_LH_P2_1_5_3) -> 
          (if (_lh_find_arg1_6_3 = _lh_find_LH_P2_0_5_3) then
            (let rec _lh_apply_subst_LH_P2_0_4_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_4_3 = _lh_find_LH_P2_1_5_3 in
                (fun _lh_apply_subst_Var_0_7_6 -> 
                  (if _lh_apply_subst_LH_P2_0_4_3 then
                    _lh_apply_subst_LH_P2_1_4_3
                  else
                    (`Var(_lh_apply_subst_Var_0_7_6))))))
          else
            ((find_d1_d0_d5_d0 _lh_find_arg1_6_3) _lh_find_LH_C_1_5_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d1 _lh_find_arg1_2_2 _lh_find_arg2_1_1 =
  (match _lh_find_arg2_1_1 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_2_0 -> 
            (if _lh_apply_subst_LH_P2_0_1_4 then
              _lh_apply_subst_LH_P2_1_1_4
            else
              (`Var(_lh_apply_subst_Var_0_2_0))))))
    | `LH_C(_lh_find_LH_C_0_1_5, _lh_find_LH_C_1_2_0) -> 
      (match _lh_find_LH_C_0_1_5 with
        | `LH_P2(_lh_find_LH_P2_0_1_5, _lh_find_LH_P2_1_1_5) -> 
          (if (_lh_find_arg1_2_2 = _lh_find_LH_P2_0_1_5) then
            (let rec _lh_apply_subst_LH_P2_0_1_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_5 = _lh_find_LH_P2_1_1_5 in
                (fun _lh_apply_subst_Var_0_2_1 -> 
                  (if _lh_apply_subst_LH_P2_0_1_5 then
                    _lh_apply_subst_LH_P2_1_1_5
                  else
                    (`Var(_lh_apply_subst_Var_0_2_1))))))
          else
            ((find_d1_d0_d5_d1 _lh_find_arg1_2_2) _lh_find_LH_C_1_2_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d2 _lh_find_arg1_5_6 _lh_find_arg2_4_5 =
  (match _lh_find_arg2_4_5 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_3_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_3_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_5_6 -> 
            (if _lh_apply_subst_LH_P2_0_3_4 then
              _lh_apply_subst_LH_P2_1_3_4
            else
              (`Var(_lh_apply_subst_Var_0_5_6))))))
    | `LH_C(_lh_find_LH_C_0_4_7, _lh_find_LH_C_1_5_2) -> 
      (match _lh_find_LH_C_0_4_7 with
        | `LH_P2(_lh_find_LH_P2_0_4_7, _lh_find_LH_P2_1_4_7) -> 
          (if (_lh_find_arg1_5_6 = _lh_find_LH_P2_0_4_7) then
            (let rec _lh_apply_subst_LH_P2_0_3_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_3_5 = _lh_find_LH_P2_1_4_7 in
                (fun _lh_apply_subst_Var_0_5_7 -> 
                  (if _lh_apply_subst_LH_P2_0_3_5 then
                    _lh_apply_subst_LH_P2_1_3_5
                  else
                    (`Var(_lh_apply_subst_Var_0_5_7))))))
          else
            ((find_d1_d0_d5_d2 _lh_find_arg1_5_6) _lh_find_LH_C_1_5_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d3 _lh_find_arg1_7_7 _lh_find_arg2_6_6 =
  (match _lh_find_arg2_6_6 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_6_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_6_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_9_5 -> 
            (if _lh_apply_subst_LH_P2_0_6_0 then
              _lh_apply_subst_LH_P2_1_6_0
            else
              (`Var(_lh_apply_subst_Var_0_9_5))))))
    | `LH_C(_lh_find_LH_C_0_6_6, _lh_find_LH_C_1_7_1) -> 
      (match _lh_find_LH_C_0_6_6 with
        | `LH_P2(_lh_find_LH_P2_0_6_6, _lh_find_LH_P2_1_6_6) -> 
          (if (_lh_find_arg1_7_7 = _lh_find_LH_P2_0_6_6) then
            (let rec _lh_apply_subst_LH_P2_0_6_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_6_1 = _lh_find_LH_P2_1_6_6 in
                (fun _lh_apply_subst_Var_0_9_6 -> 
                  (if _lh_apply_subst_LH_P2_0_6_1 then
                    _lh_apply_subst_LH_P2_1_6_1
                  else
                    (`Var(_lh_apply_subst_Var_0_9_6))))))
          else
            ((find_d1_d0_d5_d3 _lh_find_arg1_7_7) _lh_find_LH_C_1_7_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d4 _lh_find_arg1_7_4 _lh_find_arg2_6_3 =
  (match _lh_find_arg2_6_3 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_5_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_5_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_9_1 -> 
            (if _lh_apply_subst_LH_P2_0_5_6 then
              _lh_apply_subst_LH_P2_1_5_6
            else
              (`Var(_lh_apply_subst_Var_0_9_1))))))
    | `LH_C(_lh_find_LH_C_0_6_3, _lh_find_LH_C_1_6_8) -> 
      (match _lh_find_LH_C_0_6_3 with
        | `LH_P2(_lh_find_LH_P2_0_6_3, _lh_find_LH_P2_1_6_3) -> 
          (if (_lh_find_arg1_7_4 = _lh_find_LH_P2_0_6_3) then
            (let rec _lh_apply_subst_LH_P2_0_5_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_5_7 = _lh_find_LH_P2_1_6_3 in
                (fun _lh_apply_subst_Var_0_9_2 -> 
                  (if _lh_apply_subst_LH_P2_0_5_7 then
                    _lh_apply_subst_LH_P2_1_5_7
                  else
                    (`Var(_lh_apply_subst_Var_0_9_2))))))
          else
            ((find_d1_d0_d5_d4 _lh_find_arg1_7_4) _lh_find_LH_C_1_6_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d5 _lh_find_arg1_8_3 _lh_find_arg2_7_2 =
  (match _lh_find_arg2_7_2 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_6_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_6_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_0_1 -> 
            (if _lh_apply_subst_LH_P2_0_6_4 then
              _lh_apply_subst_LH_P2_1_6_4
            else
              (`Var(_lh_apply_subst_Var_0_1_0_1))))))
    | `LH_C(_lh_find_LH_C_0_7_2, _lh_find_LH_C_1_7_7) -> 
      (match _lh_find_LH_C_0_7_2 with
        | `LH_P2(_lh_find_LH_P2_0_7_2, _lh_find_LH_P2_1_7_2) -> 
          (if (_lh_find_arg1_8_3 = _lh_find_LH_P2_0_7_2) then
            (let rec _lh_apply_subst_LH_P2_0_6_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_6_5 = _lh_find_LH_P2_1_7_2 in
                (fun _lh_apply_subst_Var_0_1_0_2 -> 
                  (if _lh_apply_subst_LH_P2_0_6_5 then
                    _lh_apply_subst_LH_P2_1_6_5
                  else
                    (`Var(_lh_apply_subst_Var_0_1_0_2))))))
          else
            ((find_d1_d0_d5_d5 _lh_find_arg1_8_3) _lh_find_LH_C_1_7_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d6 _lh_find_arg1_9_3 _lh_find_arg2_8_2 =
  (match _lh_find_arg2_8_2 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_7_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_7_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_1_4 -> 
            (if _lh_apply_subst_LH_P2_0_7_4 then
              _lh_apply_subst_LH_P2_1_7_4
            else
              (`Var(_lh_apply_subst_Var_0_1_1_4))))))
    | `LH_C(_lh_find_LH_C_0_8_1, _lh_find_LH_C_1_8_6) -> 
      (match _lh_find_LH_C_0_8_1 with
        | `LH_P2(_lh_find_LH_P2_0_8_1, _lh_find_LH_P2_1_8_1) -> 
          (if (_lh_find_arg1_9_3 = _lh_find_LH_P2_0_8_1) then
            (let rec _lh_apply_subst_LH_P2_0_7_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_7_5 = _lh_find_LH_P2_1_8_1 in
                (fun _lh_apply_subst_Var_0_1_1_5 -> 
                  (if _lh_apply_subst_LH_P2_0_7_5 then
                    _lh_apply_subst_LH_P2_1_7_5
                  else
                    (`Var(_lh_apply_subst_Var_0_1_1_5))))))
          else
            ((find_d1_d0_d5_d6 _lh_find_arg1_9_3) _lh_find_LH_C_1_8_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d7 _lh_find_arg1_1_3_4 _lh_find_arg2_1_1_2 =
  (match _lh_find_arg2_1_1_2 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_1_1_4 = false in
        (let rec _lh_apply_subst_LH_P2_1_1_1_4 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_7_0 -> 
            (if _lh_apply_subst_LH_P2_0_1_1_4 then
              _lh_apply_subst_LH_P2_1_1_1_4
            else
              (`Var(_lh_apply_subst_Var_0_1_7_0))))))
    | `LH_C(_lh_find_LH_C_0_1_1_5, _lh_find_LH_C_1_1_2_5) -> 
      (match _lh_find_LH_C_0_1_1_5 with
        | `LH_P2(_lh_find_LH_P2_0_1_1_5, _lh_find_LH_P2_1_1_1_5) -> 
          (if (_lh_find_arg1_1_3_4 = _lh_find_LH_P2_0_1_1_5) then
            (let rec _lh_apply_subst_LH_P2_0_1_1_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_1_5 = _lh_find_LH_P2_1_1_1_5 in
                (fun _lh_apply_subst_Var_0_1_7_1 -> 
                  (if _lh_apply_subst_LH_P2_0_1_1_5 then
                    _lh_apply_subst_LH_P2_1_1_1_5
                  else
                    (`Var(_lh_apply_subst_Var_0_1_7_1))))))
          else
            ((find_d1_d0_d5_d7 _lh_find_arg1_1_3_4) _lh_find_LH_C_1_1_2_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d8 _lh_find_arg1_2_8 _lh_find_arg2_1_7 =
  (match _lh_find_arg2_1_7 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_2_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_2_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_3_4 -> 
            (if _lh_apply_subst_LH_P2_0_2_0 then
              _lh_apply_subst_LH_P2_1_2_0
            else
              (`Var(_lh_apply_subst_Var_0_3_4))))))
    | `LH_C(_lh_find_LH_C_0_2_1, _lh_find_LH_C_1_2_6) -> 
      (match _lh_find_LH_C_0_2_1 with
        | `LH_P2(_lh_find_LH_P2_0_2_1, _lh_find_LH_P2_1_2_1) -> 
          (if (_lh_find_arg1_2_8 = _lh_find_LH_P2_0_2_1) then
            (let rec _lh_apply_subst_LH_P2_0_2_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_2_1 = _lh_find_LH_P2_1_2_1 in
                (fun _lh_apply_subst_Var_0_3_5 -> 
                  (if _lh_apply_subst_LH_P2_0_2_1 then
                    _lh_apply_subst_LH_P2_1_2_1
                  else
                    (`Var(_lh_apply_subst_Var_0_3_5))))))
          else
            ((find_d1_d0_d5_d8 _lh_find_arg1_2_8) _lh_find_LH_C_1_2_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d5_d9 _lh_find_arg1_6_1 _lh_find_arg2_5_0 =
  (match _lh_find_arg2_5_0 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_4_0 = false in
        (let rec _lh_apply_subst_LH_P2_1_4_0 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_7_1 -> 
            (if _lh_apply_subst_LH_P2_0_4_0 then
              _lh_apply_subst_LH_P2_1_4_0
            else
              (`Var(_lh_apply_subst_Var_0_7_1))))))
    | `LH_C(_lh_find_LH_C_0_5_2, _lh_find_LH_C_1_5_7) -> 
      (match _lh_find_LH_C_0_5_2 with
        | `LH_P2(_lh_find_LH_P2_0_5_2, _lh_find_LH_P2_1_5_2) -> 
          (if (_lh_find_arg1_6_1 = _lh_find_LH_P2_0_5_2) then
            (let rec _lh_apply_subst_LH_P2_0_4_1 = true in
              (let rec _lh_apply_subst_LH_P2_1_4_1 = _lh_find_LH_P2_1_5_2 in
                (fun _lh_apply_subst_Var_0_7_2 -> 
                  (if _lh_apply_subst_LH_P2_0_4_1 then
                    _lh_apply_subst_LH_P2_1_4_1
                  else
                    (`Var(_lh_apply_subst_Var_0_7_2))))))
          else
            ((find_d1_d0_d5_d9 _lh_find_arg1_6_1) _lh_find_LH_C_1_5_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d6 _lh_find_arg1_8_1 _lh_find_arg2_7_0 =
  (match _lh_find_arg2_7_0 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_6_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_6_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_9_7 -> 
            (if _lh_apply_subst_LH_P2_0_6_2 then
              _lh_apply_subst_LH_P2_1_6_2
            else
              (`Var(_lh_apply_subst_Var_0_9_7))))))
    | `LH_C(_lh_find_LH_C_0_7_0, _lh_find_LH_C_1_7_5) -> 
      (match _lh_find_LH_C_0_7_0 with
        | `LH_P2(_lh_find_LH_P2_0_7_0, _lh_find_LH_P2_1_7_0) -> 
          (if (_lh_find_arg1_8_1 = _lh_find_LH_P2_0_7_0) then
            (let rec _lh_apply_subst_LH_P2_0_6_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_6_3 = _lh_find_LH_P2_1_7_0 in
                (fun _lh_apply_subst_Var_0_9_8 -> 
                  (if _lh_apply_subst_LH_P2_0_6_3 then
                    _lh_apply_subst_LH_P2_1_6_3
                  else
                    (`Var(_lh_apply_subst_Var_0_9_8))))))
          else
            ((find_d1_d0_d6 _lh_find_arg1_8_1) _lh_find_LH_C_1_7_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d6_d0 _lh_find_arg1_5_8 _lh_find_arg2_4_7 =
  (match _lh_find_arg2_4_7 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_3_6 = false in
        (let rec _lh_apply_subst_LH_P2_1_3_6 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_6_5 -> 
            (if _lh_apply_subst_LH_P2_0_3_6 then
              _lh_apply_subst_LH_P2_1_3_6
            else
              (`Var(_lh_apply_subst_Var_0_6_5))))))
    | `LH_C(_lh_find_LH_C_0_4_9, _lh_find_LH_C_1_5_4) -> 
      (match _lh_find_LH_C_0_4_9 with
        | `LH_P2(_lh_find_LH_P2_0_4_9, _lh_find_LH_P2_1_4_9) -> 
          (if (_lh_find_arg1_5_8 = _lh_find_LH_P2_0_4_9) then
            (let rec _lh_apply_subst_LH_P2_0_3_7 = true in
              (let rec _lh_apply_subst_LH_P2_1_3_7 = _lh_find_LH_P2_1_4_9 in
                (fun _lh_apply_subst_Var_0_6_6 -> 
                  (if _lh_apply_subst_LH_P2_0_3_7 then
                    _lh_apply_subst_LH_P2_1_3_7
                  else
                    (`Var(_lh_apply_subst_Var_0_6_6))))))
          else
            ((find_d1_d0_d6_d0 _lh_find_arg1_5_8) _lh_find_LH_C_1_5_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d7 _lh_find_arg1_1_1_4 _lh_find_arg2_1_0_3 =
  (match _lh_find_arg2_1_0_3 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_9_8 = false in
        (let rec _lh_apply_subst_LH_P2_1_9_8 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_5_2 -> 
            (if _lh_apply_subst_LH_P2_0_9_8 then
              _lh_apply_subst_LH_P2_1_9_8
            else
              (`Var(_lh_apply_subst_Var_0_1_5_2))))))
    | `LH_C(_lh_find_LH_C_0_1_0_2, _lh_find_LH_C_1_1_0_7) -> 
      (match _lh_find_LH_C_0_1_0_2 with
        | `LH_P2(_lh_find_LH_P2_0_1_0_2, _lh_find_LH_P2_1_1_0_2) -> 
          (if (_lh_find_arg1_1_1_4 = _lh_find_LH_P2_0_1_0_2) then
            (let rec _lh_apply_subst_LH_P2_0_9_9 = true in
              (let rec _lh_apply_subst_LH_P2_1_9_9 = _lh_find_LH_P2_1_1_0_2 in
                (fun _lh_apply_subst_Var_0_1_5_3 -> 
                  (if _lh_apply_subst_LH_P2_0_9_9 then
                    _lh_apply_subst_LH_P2_1_9_9
                  else
                    (`Var(_lh_apply_subst_Var_0_1_5_3))))))
          else
            ((find_d1_d0_d7 _lh_find_arg1_1_1_4) _lh_find_LH_C_1_1_0_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d8 _lh_find_arg1_9_2 _lh_find_arg2_8_1 =
  (match _lh_find_arg2_8_1 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_7_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_7_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_1_2 -> 
            (if _lh_apply_subst_LH_P2_0_7_2 then
              _lh_apply_subst_LH_P2_1_7_2
            else
              (`Var(_lh_apply_subst_Var_0_1_1_2))))))
    | `LH_C(_lh_find_LH_C_0_8_0, _lh_find_LH_C_1_8_5) -> 
      (match _lh_find_LH_C_0_8_0 with
        | `LH_P2(_lh_find_LH_P2_0_8_0, _lh_find_LH_P2_1_8_0) -> 
          (if (_lh_find_arg1_9_2 = _lh_find_LH_P2_0_8_0) then
            (let rec _lh_apply_subst_LH_P2_0_7_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_7_3 = _lh_find_LH_P2_1_8_0 in
                (fun _lh_apply_subst_Var_0_1_1_3 -> 
                  (if _lh_apply_subst_LH_P2_0_7_3 then
                    _lh_apply_subst_LH_P2_1_7_3
                  else
                    (`Var(_lh_apply_subst_Var_0_1_1_3))))))
          else
            ((find_d1_d0_d8 _lh_find_arg1_9_2) _lh_find_LH_C_1_8_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find_d1_d0_d9 _lh_find_arg1_1_0_1 _lh_find_arg2_9_0 =
  (match _lh_find_arg2_9_0 with
    | `LH_N -> 
      (let rec _lh_apply_subst_LH_P2_0_8_2 = false in
        (let rec _lh_apply_subst_LH_P2_1_8_2 = (`ERROR) in
          (fun _lh_apply_subst_Var_0_1_2_9 -> 
            (if _lh_apply_subst_LH_P2_0_8_2 then
              _lh_apply_subst_LH_P2_1_8_2
            else
              (`Var(_lh_apply_subst_Var_0_1_2_9))))))
    | `LH_C(_lh_find_LH_C_0_8_9, _lh_find_LH_C_1_9_4) -> 
      (match _lh_find_LH_C_0_8_9 with
        | `LH_P2(_lh_find_LH_P2_0_8_9, _lh_find_LH_P2_1_8_9) -> 
          (if (_lh_find_arg1_1_0_1 = _lh_find_LH_P2_0_8_9) then
            (let rec _lh_apply_subst_LH_P2_0_8_3 = true in
              (let rec _lh_apply_subst_LH_P2_1_8_3 = _lh_find_LH_P2_1_8_9 in
                (fun _lh_apply_subst_Var_0_1_3_0 -> 
                  (if _lh_apply_subst_LH_P2_0_8_3 then
                    _lh_apply_subst_LH_P2_1_8_3
                  else
                    (`Var(_lh_apply_subst_Var_0_1_3_0))))))
          else
            ((find_d1_d0_d9 _lh_find_arg1_1_0_1) _lh_find_LH_C_1_9_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_d0_d0_d0 f_9_5 ls_9_4 =
  (match ls_9_4 with
    | `LH_C(h_9_4, t_9_4) -> 
      (`LH_C((f_9_5 h_9_4), ((map_d0_d0_d0 f_9_5) t_9_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d0 f_9_8 ls_9_7 =
  (match ls_9_7 with
    | `LH_C(h_9_7, t_9_7) -> 
      (`LH_C((f_9_8 h_9_7), ((map_d1_d0_d0 f_9_8) t_9_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1 f_1_0_9 ls_1_0_8 =
  (match ls_1_0_8 with
    | `LH_C(h_1_0_8, t_1_0_8) -> 
      (`LH_C((f_1_0_9 h_1_0_8), ((map_d1_d0_d1 f_1_0_9) t_1_0_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d0 f_3_2 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_1, t_3_1) -> 
      (`LH_C((f_3_2 h_3_1), ((map_d1_d0_d1_d0 f_3_2) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d1 f_6_0 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_5_9, t_5_9) -> 
      (`LH_C((f_6_0 h_5_9), ((map_d1_d0_d1_d1 f_6_0) t_5_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d2 f_2_4 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_3, t_2_3) -> 
      (`LH_C((f_2_4 h_2_3), ((map_d1_d0_d1_d2 f_2_4) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d3 f_4_0 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_3_9, t_3_9) -> 
      (`LH_C((f_4_0 h_3_9), ((map_d1_d0_d1_d3 f_4_0) t_3_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d4 f_8_8 ls_8_7 =
  (match ls_8_7 with
    | `LH_C(h_8_7, t_8_7) -> 
      (`LH_C((f_8_8 h_8_7), ((map_d1_d0_d1_d4 f_8_8) t_8_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d5 f_2_6 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_5, t_2_5) -> 
      (`LH_C((f_2_6 h_2_5), ((map_d1_d0_d1_d5 f_2_6) t_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d6 f_6_1 ls_6_0 =
  (match ls_6_0 with
    | `LH_C(h_6_0, t_6_0) -> 
      (`LH_C((f_6_1 h_6_0), ((map_d1_d0_d1_d6 f_6_1) t_6_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d7 f_5_7 ls_5_6 =
  (match ls_5_6 with
    | `LH_C(h_5_6, t_5_6) -> 
      (`LH_C((f_5_7 h_5_6), ((map_d1_d0_d1_d7 f_5_7) t_5_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d8 f_1_1_5 ls_1_1_3 =
  (match ls_1_1_3 with
    | `LH_C(h_1_1_3, t_1_1_3) -> 
      (`LH_C((f_1_1_5 h_1_1_3), ((map_d1_d0_d1_d8 f_1_1_5) t_1_1_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d1_d9 f_5_3 ls_5_2 =
  (match ls_5_2 with
    | `LH_C(h_5_2, t_5_2) -> 
      (`LH_C((f_5_3 h_5_2), ((map_d1_d0_d1_d9 f_5_3) t_5_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2 f_7_0 ls_6_9 =
  (match ls_6_9 with
    | `LH_C(h_6_9, t_6_9) -> 
      (`LH_C((f_7_0 h_6_9), ((map_d1_d0_d2 f_7_0) t_6_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d0 f_2_2 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_1, t_2_1) -> 
      (`LH_C((f_2_2 h_2_1), ((map_d1_d0_d2_d0 f_2_2) t_2_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d1 f_7_1 ls_7_0 =
  (match ls_7_0 with
    | `LH_C(h_7_0, t_7_0) -> 
      (`LH_C((f_7_1 h_7_0), ((map_d1_d0_d2_d1 f_7_1) t_7_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d2 f_3_4 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_3_3, t_3_3) -> 
      (`LH_C((f_3_4 h_3_3), ((map_d1_d0_d2_d2 f_3_4) t_3_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d3 f_9_6 ls_9_5 =
  (match ls_9_5 with
    | `LH_C(h_9_5, t_9_5) -> 
      (`LH_C((f_9_6 h_9_5), ((map_d1_d0_d2_d3 f_9_6) t_9_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d4 f_2_8 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_2_7, t_2_7) -> 
      (`LH_C((f_2_8 h_2_7), ((map_d1_d0_d2_d4 f_2_8) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d5 f_1_8 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C((f_1_8 h_1_7), ((map_d1_d0_d2_d5 f_1_8) t_1_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d6 f_5_5 ls_5_4 =
  (match ls_5_4 with
    | `LH_C(h_5_4, t_5_4) -> 
      (`LH_C((f_5_5 h_5_4), ((map_d1_d0_d2_d6 f_5_5) t_5_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d7 f_5_1 ls_5_0 =
  (match ls_5_0 with
    | `LH_C(h_5_0, t_5_0) -> 
      (`LH_C((f_5_1 h_5_0), ((map_d1_d0_d2_d7 f_5_1) t_5_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d8 f_2_1 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_0, t_2_0) -> 
      (`LH_C((f_2_1 h_2_0), ((map_d1_d0_d2_d8 f_2_1) t_2_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d2_d9 f_4_8 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_4_7, t_4_7) -> 
      (`LH_C((f_4_8 h_4_7), ((map_d1_d0_d2_d9 f_4_8) t_4_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3 f_8_7 ls_8_6 =
  (match ls_8_6 with
    | `LH_C(h_8_6, t_8_6) -> 
      (`LH_C((f_8_7 h_8_6), ((map_d1_d0_d3 f_8_7) t_8_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d0 f_1_0_3 ls_1_0_2 =
  (match ls_1_0_2 with
    | `LH_C(h_1_0_2, t_1_0_2) -> 
      (`LH_C((f_1_0_3 h_1_0_2), ((map_d1_d0_d3_d0 f_1_0_3) t_1_0_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d1 f_3_5 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_3_4, t_3_4) -> 
      (`LH_C((f_3_5 h_3_4), ((map_d1_d0_d3_d1 f_3_5) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d2 f_8_2 ls_8_1 =
  (match ls_8_1 with
    | `LH_C(h_8_1, t_8_1) -> 
      (`LH_C((f_8_2 h_8_1), ((map_d1_d0_d3_d2 f_8_2) t_8_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d3 f_5_4 ls_5_3 =
  (match ls_5_3 with
    | `LH_C(h_5_3, t_5_3) -> 
      (`LH_C((f_5_4 h_5_3), ((map_d1_d0_d3_d3 f_5_4) t_5_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d4 f_1_2_8 ls_1_2_6 =
  (match ls_1_2_6 with
    | `LH_C(h_1_2_6, t_1_2_6) -> 
      (`LH_C((f_1_2_8 h_1_2_6), ((map_d1_d0_d3_d4 f_1_2_8) t_1_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d5 f_2_0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_1_9, t_1_9) -> 
      (`LH_C((f_2_0 h_1_9), ((map_d1_d0_d3_d5 f_2_0) t_1_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d6 f_4_1 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_4_0, t_4_0) -> 
      (`LH_C((f_4_1 h_4_0), ((map_d1_d0_d3_d6 f_4_1) t_4_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d7 f_6_3 ls_6_2 =
  (match ls_6_2 with
    | `LH_C(h_6_2, t_6_2) -> 
      (`LH_C((f_6_3 h_6_2), ((map_d1_d0_d3_d7 f_6_3) t_6_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d8 f_1_2_1 ls_1_1_9 =
  (match ls_1_1_9 with
    | `LH_C(h_1_1_9, t_1_1_9) -> 
      (`LH_C((f_1_2_1 h_1_1_9), ((map_d1_d0_d3_d8 f_1_2_1) t_1_1_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d3_d9 f_7_8 ls_7_7 =
  (match ls_7_7 with
    | `LH_C(h_7_7, t_7_7) -> 
      (`LH_C((f_7_8 h_7_7), ((map_d1_d0_d3_d9 f_7_8) t_7_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4 f_1_5 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C((f_1_5 h_1_4), ((map_d1_d0_d4 f_1_5) t_1_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d0 f_1_2_5 ls_1_2_3 =
  (match ls_1_2_3 with
    | `LH_C(h_1_2_3, t_1_2_3) -> 
      (`LH_C((f_1_2_5 h_1_2_3), ((map_d1_d0_d4_d0 f_1_2_5) t_1_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d1 f_3_1 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C((f_3_1 h_3_0), ((map_d1_d0_d4_d1 f_3_1) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d2 f_1_2_7 ls_1_2_5 =
  (match ls_1_2_5 with
    | `LH_C(h_1_2_5, t_1_2_5) -> 
      (`LH_C((f_1_2_7 h_1_2_5), ((map_d1_d0_d4_d2 f_1_2_7) t_1_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d3 f_6_4 ls_6_3 =
  (match ls_6_3 with
    | `LH_C(h_6_3, t_6_3) -> 
      (`LH_C((f_6_4 h_6_3), ((map_d1_d0_d4_d3 f_6_4) t_6_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d4 f_5_2 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_5_1, t_5_1) -> 
      (`LH_C((f_5_2 h_5_1), ((map_d1_d0_d4_d4 f_5_2) t_5_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d5 f_1_0_2 ls_1_0_1 =
  (match ls_1_0_1 with
    | `LH_C(h_1_0_1, t_1_0_1) -> 
      (`LH_C((f_1_0_2 h_1_0_1), ((map_d1_d0_d4_d5 f_1_0_2) t_1_0_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d6 f_1_1_7 ls_1_1_5 =
  (match ls_1_1_5 with
    | `LH_C(h_1_1_5, t_1_1_5) -> 
      (`LH_C((f_1_1_7 h_1_1_5), ((map_d1_d0_d4_d6 f_1_1_7) t_1_1_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d7 f_8_5 ls_8_4 =
  (match ls_8_4 with
    | `LH_C(h_8_4, t_8_4) -> 
      (`LH_C((f_8_5 h_8_4), ((map_d1_d0_d4_d7 f_8_5) t_8_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d8 f_1_0_1 ls_1_0_0 =
  (match ls_1_0_0 with
    | `LH_C(h_1_0_0, t_1_0_0) -> 
      (`LH_C((f_1_0_1 h_1_0_0), ((map_d1_d0_d4_d8 f_1_0_1) t_1_0_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d4_d9 f_4_6 ls_4_5 =
  (match ls_4_5 with
    | `LH_C(h_4_5, t_4_5) -> 
      (`LH_C((f_4_6 h_4_5), ((map_d1_d0_d4_d9 f_4_6) t_4_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5 f_1_2_0 ls_1_1_8 =
  (match ls_1_1_8 with
    | `LH_C(h_1_1_8, t_1_1_8) -> 
      (`LH_C((f_1_2_0 h_1_1_8), ((map_d1_d0_d5 f_1_2_0) t_1_1_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d0 f_8 ls_7 =
  (match ls_7 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C((f_8 h_7), ((map_d1_d0_d5_d0 f_8) t_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d1 f_4 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C((f_4 h_3), ((map_d1_d0_d5_d1 f_4) t_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d2 f_1_0_4 ls_1_0_3 =
  (match ls_1_0_3 with
    | `LH_C(h_1_0_3, t_1_0_3) -> 
      (`LH_C((f_1_0_4 h_1_0_3), ((map_d1_d0_d5_d2 f_1_0_4) t_1_0_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d3 f_5 ls_4 =
  (match ls_4 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_5 h_4), ((map_d1_d0_d5_d3 f_5) t_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d4 f_1_1_3 ls_1_1_1 =
  (match ls_1_1_1 with
    | `LH_C(h_1_1_1, t_1_1_1) -> 
      (`LH_C((f_1_1_3 h_1_1_1), ((map_d1_d0_d5_d4 f_1_1_3) t_1_1_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d5 f_1_1_4 ls_1_1_2 =
  (match ls_1_1_2 with
    | `LH_C(h_1_1_2, t_1_1_2) -> 
      (`LH_C((f_1_1_4 h_1_1_2), ((map_d1_d0_d5_d5 f_1_1_4) t_1_1_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d6 f_1_4 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C((f_1_4 h_1_3), ((map_d1_d0_d5_d6 f_1_4) t_1_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d7 f_8_6 ls_8_5 =
  (match ls_8_5 with
    | `LH_C(h_8_5, t_8_5) -> 
      (`LH_C((f_8_6 h_8_5), ((map_d1_d0_d5_d7 f_8_6) t_8_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d8 f_7_9 ls_7_8 =
  (match ls_7_8 with
    | `LH_C(h_7_8, t_7_8) -> 
      (`LH_C((f_7_9 h_7_8), ((map_d1_d0_d5_d8 f_7_9) t_7_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d5_d9 f_7_7 ls_7_6 =
  (match ls_7_6 with
    | `LH_C(h_7_6, t_7_6) -> 
      (`LH_C((f_7_7 h_7_6), ((map_d1_d0_d5_d9 f_7_7) t_7_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d6 f_8_0 ls_7_9 =
  (match ls_7_9 with
    | `LH_C(h_7_9, t_7_9) -> 
      (`LH_C((f_8_0 h_7_9), ((map_d1_d0_d6 f_8_0) t_7_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d6_d0 f_9 ls_8 =
  (match ls_8 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C((f_9 h_8), ((map_d1_d0_d6_d0 f_9) t_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d6_d1 f_1_2_6 ls_1_2_4 =
  (match ls_1_2_4 with
    | `LH_C(h_1_2_4, t_1_2_4) -> 
      (`LH_C((f_1_2_6 h_1_2_4), ((map_d1_d0_d6_d1 f_1_2_6) t_1_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d7 f_4_7 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_4_6, t_4_6) -> 
      (`LH_C((f_4_7 h_4_6), ((map_d1_d0_d7 f_4_7) t_4_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d8 f_6_9 ls_6_8 =
  (match ls_6_8 with
    | `LH_C(h_6_8, t_6_8) -> 
      (`LH_C((f_6_9 h_6_8), ((map_d1_d0_d8 f_6_9) t_6_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0_d9 f_1_1_9 ls_1_1_7 =
  (match ls_1_1_7 with
    | `LH_C(h_1_1_7, t_1_1_7) -> 
      (`LH_C((f_1_1_9 h_1_1_7), ((map_d1_d0_d9 f_1_1_9) t_1_1_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d0 f_4_3 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_4_2, t_4_2) -> 
      (`LH_C((f_4_3 h_4_2), ((map_d2_d0_d0 f_4_3) t_4_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1 f_1_0_8 ls_1_0_7 =
  (match ls_1_0_7 with
    | `LH_C(h_1_0_7, t_1_0_7) -> 
      (`LH_C((f_1_0_8 h_1_0_7), ((map_d2_d0_d1 f_1_0_8) t_1_0_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d0 f_1_1_2 ls_1_1_0 =
  (match ls_1_1_0 with
    | `LH_C(h_1_1_0, t_1_1_0) -> 
      (`LH_C((f_1_1_2 h_1_1_0), ((map_d2_d0_d1_d0 f_1_1_2) t_1_1_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d1 f_6_2 ls_6_1 =
  (match ls_6_1 with
    | `LH_C(h_6_1, t_6_1) -> 
      (`LH_C((f_6_2 h_6_1), ((map_d2_d0_d1_d1 f_6_2) t_6_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d2 f_3_7 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_3_6, t_3_6) -> 
      (`LH_C((f_3_7 h_3_6), ((map_d2_d0_d1_d2 f_3_7) t_3_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d3 f_6 ls_5 =
  (match ls_5 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C((f_6 h_5), ((map_d2_d0_d1_d3 f_6) t_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d4 f_5_0 ls_4_9 =
  (match ls_4_9 with
    | `LH_C(h_4_9, t_4_9) -> 
      (`LH_C((f_5_0 h_4_9), ((map_d2_d0_d1_d4 f_5_0) t_4_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d5 f_3_8 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_3_7, t_3_7) -> 
      (`LH_C((f_3_8 h_3_7), ((map_d2_d0_d1_d5 f_3_8) t_3_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d6 f_3_3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_2, t_3_2) -> 
      (`LH_C((f_3_3 h_3_2), ((map_d2_d0_d1_d6 f_3_3) t_3_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d7 f_2_5 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_4, t_2_4) -> 
      (`LH_C((f_2_5 h_2_4), ((map_d2_d0_d1_d7 f_2_5) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d8 f_1_1_6 ls_1_1_4 =
  (match ls_1_1_4 with
    | `LH_C(h_1_1_4, t_1_1_4) -> 
      (`LH_C((f_1_1_6 h_1_1_4), ((map_d2_d0_d1_d8 f_1_1_6) t_1_1_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d1_d9 f_8_1 ls_8_0 =
  (match ls_8_0 with
    | `LH_C(h_8_0, t_8_0) -> 
      (`LH_C((f_8_1 h_8_0), ((map_d2_d0_d1_d9 f_8_1) t_8_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2 f_1_3 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C((f_1_3 h_1_2), ((map_d2_d0_d2 f_1_3) t_1_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d0 f_9_2 ls_9_1 =
  (match ls_9_1 with
    | `LH_C(h_9_1, t_9_1) -> 
      (`LH_C((f_9_2 h_9_1), ((map_d2_d0_d2_d0 f_9_2) t_9_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d1 f_8_4 ls_8_3 =
  (match ls_8_3 with
    | `LH_C(h_8_3, t_8_3) -> 
      (`LH_C((f_8_4 h_8_3), ((map_d2_d0_d2_d1 f_8_4) t_8_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d2 f_8_9 ls_8_8 =
  (match ls_8_8 with
    | `LH_C(h_8_8, t_8_8) -> 
      (`LH_C((f_8_9 h_8_8), ((map_d2_d0_d2_d2 f_8_9) t_8_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d3 f_1_9 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C((f_1_9 h_1_8), ((map_d2_d0_d2_d3 f_1_9) t_1_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d4 f_4_2 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_4_1, t_4_1) -> 
      (`LH_C((f_4_2 h_4_1), ((map_d2_d0_d2_d4 f_4_2) t_4_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d5 f_7_6 ls_7_5 =
  (match ls_7_5 with
    | `LH_C(h_7_5, t_7_5) -> 
      (`LH_C((f_7_6 h_7_5), ((map_d2_d0_d2_d5 f_7_6) t_7_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d6 f_6_7 ls_6_6 =
  (match ls_6_6 with
    | `LH_C(h_6_6, t_6_6) -> 
      (`LH_C((f_6_7 h_6_6), ((map_d2_d0_d2_d6 f_6_7) t_6_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d7 f_1_2_2 ls_1_2_0 =
  (match ls_1_2_0 with
    | `LH_C(h_1_2_0, t_1_2_0) -> 
      (`LH_C((f_1_2_2 h_1_2_0), ((map_d2_d0_d2_d7 f_1_2_2) t_1_2_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d8 f_5_9 ls_5_8 =
  (match ls_5_8 with
    | `LH_C(h_5_8, t_5_8) -> 
      (`LH_C((f_5_9 h_5_8), ((map_d2_d0_d2_d8 f_5_9) t_5_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d2_d9 f_1_1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C((f_1_1 h_1_0), ((map_d2_d0_d2_d9 f_1_1) t_1_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3 f_1_0_5 ls_1_0_4 =
  (match ls_1_0_4 with
    | `LH_C(h_1_0_4, t_1_0_4) -> 
      (`LH_C((f_1_0_5 h_1_0_4), ((map_d2_d0_d3 f_1_0_5) t_1_0_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d0 f_2_3 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_2, t_2_2) -> 
      (`LH_C((f_2_3 h_2_2), ((map_d2_d0_d3_d0 f_2_3) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d1 f_2_9 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_2_8, t_2_8) -> 
      (`LH_C((f_2_9 h_2_8), ((map_d2_d0_d3_d1 f_2_9) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d2 f_7_5 ls_7_4 =
  (match ls_7_4 with
    | `LH_C(h_7_4, t_7_4) -> 
      (`LH_C((f_7_5 h_7_4), ((map_d2_d0_d3_d2 f_7_5) t_7_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d3 f_9_7 ls_9_6 =
  (match ls_9_6 with
    | `LH_C(h_9_6, t_9_6) -> 
      (`LH_C((f_9_7 h_9_6), ((map_d2_d0_d3_d3 f_9_7) t_9_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d4 f_4_5 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_4_4, t_4_4) -> 
      (`LH_C((f_4_5 h_4_4), ((map_d2_d0_d3_d4 f_4_5) t_4_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d5 f_1_0_7 ls_1_0_6 =
  (match ls_1_0_6 with
    | `LH_C(h_1_0_6, t_1_0_6) -> 
      (`LH_C((f_1_0_7 h_1_0_6), ((map_d2_d0_d3_d5 f_1_0_7) t_1_0_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d6 f_1_0_6 ls_1_0_5 =
  (match ls_1_0_5 with
    | `LH_C(h_1_0_5, t_1_0_5) -> 
      (`LH_C((f_1_0_6 h_1_0_5), ((map_d2_d0_d3_d6 f_1_0_6) t_1_0_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d7 f_6_6 ls_6_5 =
  (match ls_6_5 with
    | `LH_C(h_6_5, t_6_5) -> 
      (`LH_C((f_6_6 h_6_5), ((map_d2_d0_d3_d7 f_6_6) t_6_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d8 f_9_3 ls_9_2 =
  (match ls_9_2 with
    | `LH_C(h_9_2, t_9_2) -> 
      (`LH_C((f_9_3 h_9_2), ((map_d2_d0_d3_d8 f_9_3) t_9_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d3_d9 f_3_0 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_2_9, t_2_9) -> 
      (`LH_C((f_3_0 h_2_9), ((map_d2_d0_d3_d9 f_3_0) t_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4 f_7 ls_6 =
  (match ls_6 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C((f_7 h_6), ((map_d2_d0_d4 f_7) t_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d0 f_1_1_1 ls_1_0_9 =
  (match ls_1_0_9 with
    | `LH_C(h_1_0_9, t_1_0_9) -> 
      (`LH_C((f_1_1_1 h_1_0_9), ((map_d2_d0_d4_d0 f_1_1_1) t_1_0_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d1 f_6_8 ls_6_7 =
  (match ls_6_7 with
    | `LH_C(h_6_7, t_6_7) -> 
      (`LH_C((f_6_8 h_6_7), ((map_d2_d0_d4_d1 f_6_8) t_6_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d2 f_7_3 ls_7_2 =
  (match ls_7_2 with
    | `LH_C(h_7_2, t_7_2) -> 
      (`LH_C((f_7_3 h_7_2), ((map_d2_d0_d4_d2 f_7_3) t_7_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d3 f_1_7 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C((f_1_7 h_1_6), ((map_d2_d0_d4_d3 f_1_7) t_1_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d4 f_7_4 ls_7_3 =
  (match ls_7_3 with
    | `LH_C(h_7_3, t_7_3) -> 
      (`LH_C((f_7_4 h_7_3), ((map_d2_d0_d4_d4 f_7_4) t_7_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d5 f_4_4 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_4_3, t_4_3) -> 
      (`LH_C((f_4_4 h_4_3), ((map_d2_d0_d4_d5 f_4_4) t_4_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d6 f_6_5 ls_6_4 =
  (match ls_6_4 with
    | `LH_C(h_6_4, t_6_4) -> 
      (`LH_C((f_6_5 h_6_4), ((map_d2_d0_d4_d6 f_6_5) t_6_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d7 f_1_1_8 ls_1_1_6 =
  (match ls_1_1_6 with
    | `LH_C(h_1_1_6, t_1_1_6) -> 
      (`LH_C((f_1_1_8 h_1_1_6), ((map_d2_d0_d4_d7 f_1_1_8) t_1_1_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d8 f_8_3 ls_8_2 =
  (match ls_8_2 with
    | `LH_C(h_8_2, t_8_2) -> 
      (`LH_C((f_8_3 h_8_2), ((map_d2_d0_d4_d8 f_8_3) t_8_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d4_d9 f_9_9 ls_9_8 =
  (match ls_9_8 with
    | `LH_C(h_9_8, t_9_8) -> 
      (`LH_C((f_9_9 h_9_8), ((map_d2_d0_d4_d9 f_9_9) t_9_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5 f_1_2_4 ls_1_2_2 =
  (match ls_1_2_2 with
    | `LH_C(h_1_2_2, t_1_2_2) -> 
      (`LH_C((f_1_2_4 h_1_2_2), ((map_d2_d0_d5 f_1_2_4) t_1_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d0 f_2_7 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_2_6, t_2_6) -> 
      (`LH_C((f_2_7 h_2_6), ((map_d2_d0_d5_d0 f_2_7) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d1 f_3_9 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_3_8, t_3_8) -> 
      (`LH_C((f_3_9 h_3_8), ((map_d2_d0_d5_d1 f_3_9) t_3_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d2 f_3_6 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_3_5, t_3_5) -> 
      (`LH_C((f_3_6 h_3_5), ((map_d2_d0_d5_d2 f_3_6) t_3_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d3 f_1_0_0 ls_9_9 =
  (match ls_9_9 with
    | `LH_C(h_9_9, t_9_9) -> 
      (`LH_C((f_1_0_0 h_9_9), ((map_d2_d0_d5_d3 f_1_0_0) t_9_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d4 f_1_0 ls_9 =
  (match ls_9 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C((f_1_0 h_9), ((map_d2_d0_d5_d4 f_1_0) t_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d5 f_1_2_3 ls_1_2_1 =
  (match ls_1_2_1 with
    | `LH_C(h_1_2_1, t_1_2_1) -> 
      (`LH_C((f_1_2_3 h_1_2_1), ((map_d2_d0_d5_d5 f_1_2_3) t_1_2_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d6 f_5_8 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_5_7, t_5_7) -> 
      (`LH_C((f_5_8 h_5_7), ((map_d2_d0_d5_d6 f_5_8) t_5_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d7 f_9_0 ls_8_9 =
  (match ls_8_9 with
    | `LH_C(h_8_9, t_8_9) -> 
      (`LH_C((f_9_0 h_8_9), ((map_d2_d0_d5_d7 f_9_0) t_8_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d8 f_1_6 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C((f_1_6 h_1_5), ((map_d2_d0_d5_d8 f_1_6) t_1_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d5_d9 f_1_2 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C((f_1_2 h_1_1), ((map_d2_d0_d5_d9 f_1_2) t_1_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d6 f_9_4 ls_9_3 =
  (match ls_9_3 with
    | `LH_C(h_9_3, t_9_3) -> 
      (`LH_C((f_9_4 h_9_3), ((map_d2_d0_d6 f_9_4) t_9_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d6_d0 f_7_2 ls_7_1 =
  (match ls_7_1 with
    | `LH_C(h_7_1, t_7_1) -> 
      (`LH_C((f_7_2 h_7_1), ((map_d2_d0_d6_d0 f_7_2) t_7_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d7 f_5_6 ls_5_5 =
  (match ls_5_5 with
    | `LH_C(h_5_5, t_5_5) -> 
      (`LH_C((f_5_6 h_5_5), ((map_d2_d0_d7 f_5_6) t_5_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d8 f_4_9 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_4_8, t_4_8) -> 
      (`LH_C((f_4_9 h_4_8), ((map_d2_d0_d8 f_4_9) t_4_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0_d9 f_9_1 ls_9_0 =
  (match ls_9_0 with
    | `LH_C(h_9_0, t_9_0) -> 
      (`LH_C((f_9_1 h_9_0), ((map_d2_d0_d9 f_9_1) t_9_0)))
    | `LH_N -> 
      (`LH_N));;
let rec rewrite_with_lemmas_helper_d0_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_1_9_7 _lh_rewrite_with_lemmas_helper_arg2_4_0 =
  (let rec _lh_matchIdent_1_6_7 = _lh_rewrite_with_lemmas_helper_arg2_4_0 in
    (_lh_matchIdent_1_6_7 _lh_rewrite_with_lemmas_helper_arg1_1_9_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d1 _lh_rewrite_with_lemmas_helper_arg1_2_3_5 _lh_rewrite_with_lemmas_helper_arg2_7_8 =
  (let rec _lh_matchIdent_2_9_4 = _lh_rewrite_with_lemmas_helper_arg2_7_8 in
    (_lh_matchIdent_2_9_4 _lh_rewrite_with_lemmas_helper_arg1_2_3_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0 _lh_rewrite_with_lemmas_helper_arg1_1_6_1 _lh_rewrite_with_lemmas_helper_arg2_4 =
  (let rec _lh_matchIdent_7_6 = _lh_rewrite_with_lemmas_helper_arg2_4 in
    (_lh_matchIdent_7_6 _lh_rewrite_with_lemmas_helper_arg1_1_6_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_1_9 _lh_rewrite_with_lemmas_helper_arg2_6_2 =
  (let rec _lh_matchIdent_2_4_0 = _lh_rewrite_with_lemmas_helper_arg2_6_2 in
    (_lh_matchIdent_2_4_0 _lh_rewrite_with_lemmas_helper_arg1_2_1_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d1 _lh_rewrite_with_lemmas_helper_arg1_4_2_8 _lh_rewrite_with_lemmas_helper_arg2_1_1_4 =
  (let rec _lh_matchIdent_4_5_8 = _lh_rewrite_with_lemmas_helper_arg2_1_1_4 in
    (_lh_matchIdent_4_5_8 _lh_rewrite_with_lemmas_helper_arg1_4_2_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d2 _lh_rewrite_with_lemmas_helper_arg1_1_8_2 _lh_rewrite_with_lemmas_helper_arg2_2_5 =
  (let rec _lh_matchIdent_1_3_2 = _lh_rewrite_with_lemmas_helper_arg2_2_5 in
    (_lh_matchIdent_1_3_2 _lh_rewrite_with_lemmas_helper_arg1_1_8_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d3 _lh_rewrite_with_lemmas_helper_arg1_2_4_2 _lh_rewrite_with_lemmas_helper_arg2_8_5 =
  (let rec _lh_matchIdent_3_1_5 = _lh_rewrite_with_lemmas_helper_arg2_8_5 in
    (_lh_matchIdent_3_1_5 _lh_rewrite_with_lemmas_helper_arg1_2_4_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d4 _lh_rewrite_with_lemmas_helper_arg1_1_5_8 _lh_rewrite_with_lemmas_helper_arg2_1 =
  (let rec _lh_matchIdent_6_8 = _lh_rewrite_with_lemmas_helper_arg2_1 in
    (_lh_matchIdent_6_8 _lh_rewrite_with_lemmas_helper_arg1_1_5_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d5 _lh_rewrite_with_lemmas_helper_arg1_2_5_3 _lh_rewrite_with_lemmas_helper_arg2_9_6 =
  (let rec _lh_matchIdent_3_5_1 = _lh_rewrite_with_lemmas_helper_arg2_9_6 in
    (_lh_matchIdent_3_5_1 _lh_rewrite_with_lemmas_helper_arg1_2_5_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d6 _lh_rewrite_with_lemmas_helper_arg1_2_0_3 _lh_rewrite_with_lemmas_helper_arg2_4_6 =
  (let rec _lh_matchIdent_1_8_0 = _lh_rewrite_with_lemmas_helper_arg2_4_6 in
    (_lh_matchIdent_1_8_0 _lh_rewrite_with_lemmas_helper_arg1_2_0_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d7 _lh_rewrite_with_lemmas_helper_arg1_2_1_4 _lh_rewrite_with_lemmas_helper_arg2_5_7 =
  (let rec _lh_matchIdent_2_2_1 = _lh_rewrite_with_lemmas_helper_arg2_5_7 in
    (_lh_matchIdent_2_2_1 _lh_rewrite_with_lemmas_helper_arg1_2_1_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d8 _lh_rewrite_with_lemmas_helper_arg1_1_8_6 _lh_rewrite_with_lemmas_helper_arg2_2_9 =
  (let rec _lh_matchIdent_1_4_7 = _lh_rewrite_with_lemmas_helper_arg2_2_9 in
    (_lh_matchIdent_1_4_7 _lh_rewrite_with_lemmas_helper_arg1_1_8_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d0_d9 _lh_rewrite_with_lemmas_helper_arg1_2_2_3 _lh_rewrite_with_lemmas_helper_arg2_6_6 =
  (let rec _lh_matchIdent_2_5_0 = _lh_rewrite_with_lemmas_helper_arg2_6_6 in
    (_lh_matchIdent_2_5_0 _lh_rewrite_with_lemmas_helper_arg1_2_2_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1 _lh_rewrite_with_lemmas_helper_arg1_2_5_7 _lh_rewrite_with_lemmas_helper_arg2_1_0_0 =
  (let rec _lh_matchIdent_3_5_8 = _lh_rewrite_with_lemmas_helper_arg2_1_0_0 in
    (_lh_matchIdent_3_5_8 _lh_rewrite_with_lemmas_helper_arg1_2_5_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d0 _lh_rewrite_with_lemmas_helper_arg1_1_8_4 _lh_rewrite_with_lemmas_helper_arg2_2_7 =
  (let rec _lh_matchIdent_1_4_2 = _lh_rewrite_with_lemmas_helper_arg2_2_7 in
    (_lh_matchIdent_1_4_2 _lh_rewrite_with_lemmas_helper_arg1_1_8_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d1 _lh_rewrite_with_lemmas_helper_arg1_1_7_3 _lh_rewrite_with_lemmas_helper_arg2_1_6 =
  (let rec _lh_matchIdent_1_0_6 = _lh_rewrite_with_lemmas_helper_arg2_1_6 in
    (_lh_matchIdent_1_0_6 _lh_rewrite_with_lemmas_helper_arg1_1_7_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d2 _lh_rewrite_with_lemmas_helper_arg1_2_3_3 _lh_rewrite_with_lemmas_helper_arg2_7_6 =
  (let rec _lh_matchIdent_2_7_8 = _lh_rewrite_with_lemmas_helper_arg2_7_6 in
    (_lh_matchIdent_2_7_8 _lh_rewrite_with_lemmas_helper_arg1_2_3_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d3 _lh_rewrite_with_lemmas_helper_arg1_1_6_3 _lh_rewrite_with_lemmas_helper_arg2_6 =
  (let rec _lh_matchIdent_7_8 = _lh_rewrite_with_lemmas_helper_arg2_6 in
    (_lh_matchIdent_7_8 _lh_rewrite_with_lemmas_helper_arg1_1_6_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d4 _lh_rewrite_with_lemmas_helper_arg1_2_2_2 _lh_rewrite_with_lemmas_helper_arg2_6_5 =
  (let rec _lh_matchIdent_2_4_7 = _lh_rewrite_with_lemmas_helper_arg2_6_5 in
    (_lh_matchIdent_2_4_7 _lh_rewrite_with_lemmas_helper_arg1_2_2_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d5 _lh_rewrite_with_lemmas_helper_arg1_1_8_7 _lh_rewrite_with_lemmas_helper_arg2_3_0 =
  (let rec _lh_matchIdent_1_4_9 = _lh_rewrite_with_lemmas_helper_arg2_3_0 in
    (_lh_matchIdent_1_4_9 _lh_rewrite_with_lemmas_helper_arg1_1_8_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d6 _lh_rewrite_with_lemmas_helper_arg1_1_6_7 _lh_rewrite_with_lemmas_helper_arg2_1_0 =
  (let rec _lh_matchIdent_8_5 = _lh_rewrite_with_lemmas_helper_arg2_1_0 in
    (_lh_matchIdent_8_5 _lh_rewrite_with_lemmas_helper_arg1_1_6_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d7 _lh_rewrite_with_lemmas_helper_arg1_2_0_8 _lh_rewrite_with_lemmas_helper_arg2_5_1 =
  (let rec _lh_matchIdent_2_0_4 = _lh_rewrite_with_lemmas_helper_arg2_5_1 in
    (_lh_matchIdent_2_0_4 _lh_rewrite_with_lemmas_helper_arg1_2_0_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d8 _lh_rewrite_with_lemmas_helper_arg1_2_5_0 _lh_rewrite_with_lemmas_helper_arg2_9_3 =
  (let rec _lh_matchIdent_3_4_0 = _lh_rewrite_with_lemmas_helper_arg2_9_3 in
    (_lh_matchIdent_3_4_0 _lh_rewrite_with_lemmas_helper_arg1_2_5_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d1_d9 _lh_rewrite_with_lemmas_helper_arg1_4_3_0 _lh_rewrite_with_lemmas_helper_arg2_1_1_6 =
  (let rec _lh_matchIdent_4_7_8 = _lh_rewrite_with_lemmas_helper_arg2_1_1_6 in
    (_lh_matchIdent_4_7_8 _lh_rewrite_with_lemmas_helper_arg1_4_3_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d2 _lh_rewrite_with_lemmas_helper_arg1_2_5_8 _lh_rewrite_with_lemmas_helper_arg2_1_0_1 =
  (let rec _lh_matchIdent_3_6_4 = _lh_rewrite_with_lemmas_helper_arg2_1_0_1 in
    (_lh_matchIdent_3_6_4 _lh_rewrite_with_lemmas_helper_arg1_2_5_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d2_d0 _lh_rewrite_with_lemmas_helper_arg1_4_2_9 _lh_rewrite_with_lemmas_helper_arg2_1_1_5 =
  (let rec _lh_matchIdent_4_7_3 = _lh_rewrite_with_lemmas_helper_arg2_1_1_5 in
    (_lh_matchIdent_4_7_3 _lh_rewrite_with_lemmas_helper_arg1_4_2_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d2_d1 _lh_rewrite_with_lemmas_helper_arg1_4_3_1 _lh_rewrite_with_lemmas_helper_arg2_1_1_7 =
  (let rec _lh_matchIdent_4_8_0 = _lh_rewrite_with_lemmas_helper_arg2_1_1_7 in
    (_lh_matchIdent_4_8_0 _lh_rewrite_with_lemmas_helper_arg1_4_3_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d2_d2 _lh_rewrite_with_lemmas_helper_arg1_1_8_0 _lh_rewrite_with_lemmas_helper_arg2_2_3 =
  (let rec _lh_matchIdent_1_3_0 = _lh_rewrite_with_lemmas_helper_arg2_2_3 in
    (_lh_matchIdent_1_3_0 _lh_rewrite_with_lemmas_helper_arg1_1_8_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d3 _lh_rewrite_with_lemmas_helper_arg1_1_9_5 _lh_rewrite_with_lemmas_helper_arg2_3_8 =
  (let rec _lh_matchIdent_1_6_5 = _lh_rewrite_with_lemmas_helper_arg2_3_8 in
    (_lh_matchIdent_1_6_5 _lh_rewrite_with_lemmas_helper_arg1_1_9_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d4 _lh_rewrite_with_lemmas_helper_arg1_2_6_0 _lh_rewrite_with_lemmas_helper_arg2_1_0_3 =
  (let rec _lh_matchIdent_3_7_3 = _lh_rewrite_with_lemmas_helper_arg2_1_0_3 in
    (_lh_matchIdent_3_7_3 _lh_rewrite_with_lemmas_helper_arg1_2_6_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d5 _lh_rewrite_with_lemmas_helper_arg1_2_5_2 _lh_rewrite_with_lemmas_helper_arg2_9_5 =
  (let rec _lh_matchIdent_3_4_2 = _lh_rewrite_with_lemmas_helper_arg2_9_5 in
    (_lh_matchIdent_3_4_2 _lh_rewrite_with_lemmas_helper_arg1_2_5_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d6 _lh_rewrite_with_lemmas_helper_arg1_1_9_1 _lh_rewrite_with_lemmas_helper_arg2_3_4 =
  (let rec _lh_matchIdent_1_5_8 = _lh_rewrite_with_lemmas_helper_arg2_3_4 in
    (_lh_matchIdent_1_5_8 _lh_rewrite_with_lemmas_helper_arg1_1_9_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d7 _lh_rewrite_with_lemmas_helper_arg1_1_9_0 _lh_rewrite_with_lemmas_helper_arg2_3_3 =
  (let rec _lh_matchIdent_1_5_4 = _lh_rewrite_with_lemmas_helper_arg2_3_3 in
    (_lh_matchIdent_1_5_4 _lh_rewrite_with_lemmas_helper_arg1_1_9_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d8 _lh_rewrite_with_lemmas_helper_arg1_1_8_8 _lh_rewrite_with_lemmas_helper_arg2_3_1 =
  (let rec _lh_matchIdent_1_5_1 = _lh_rewrite_with_lemmas_helper_arg2_3_1 in
    (_lh_matchIdent_1_5_1 _lh_rewrite_with_lemmas_helper_arg1_1_8_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d1_d9 _lh_rewrite_with_lemmas_helper_arg1_1_9_2 _lh_rewrite_with_lemmas_helper_arg2_3_5 =
  (let rec _lh_matchIdent_1_5_9 = _lh_rewrite_with_lemmas_helper_arg2_3_5 in
    (_lh_matchIdent_1_5_9 _lh_rewrite_with_lemmas_helper_arg1_1_9_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d2 _lh_rewrite_with_lemmas_helper_arg1_2_3_2 _lh_rewrite_with_lemmas_helper_arg2_7_5 =
  (let rec _lh_matchIdent_2_7_2 = _lh_rewrite_with_lemmas_helper_arg2_7_5 in
    (_lh_matchIdent_2_7_2 _lh_rewrite_with_lemmas_helper_arg1_2_3_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d0 _lh_rewrite_with_lemmas_helper_arg1_2_4_8 _lh_rewrite_with_lemmas_helper_arg2_9_1 =
  (let rec _lh_matchIdent_3_2_9 = _lh_rewrite_with_lemmas_helper_arg2_9_1 in
    (_lh_matchIdent_3_2_9 _lh_rewrite_with_lemmas_helper_arg1_2_4_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d1 _lh_rewrite_with_lemmas_helper_arg1_2_5_5 _lh_rewrite_with_lemmas_helper_arg2_9_8 =
  (let rec _lh_matchIdent_3_5_5 = _lh_rewrite_with_lemmas_helper_arg2_9_8 in
    (_lh_matchIdent_3_5_5 _lh_rewrite_with_lemmas_helper_arg1_2_5_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d2 _lh_rewrite_with_lemmas_helper_arg1_4_3_7 _lh_rewrite_with_lemmas_helper_arg2_1_2_3 =
  (let rec _lh_matchIdent_4_9_6 = _lh_rewrite_with_lemmas_helper_arg2_1_2_3 in
    (_lh_matchIdent_4_9_6 _lh_rewrite_with_lemmas_helper_arg1_4_3_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d3 _lh_rewrite_with_lemmas_helper_arg1_2_4_9 _lh_rewrite_with_lemmas_helper_arg2_9_2 =
  (let rec _lh_matchIdent_3_3_4 = _lh_rewrite_with_lemmas_helper_arg2_9_2 in
    (_lh_matchIdent_3_3_4 _lh_rewrite_with_lemmas_helper_arg1_2_4_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d4 _lh_rewrite_with_lemmas_helper_arg1_1_6_9 _lh_rewrite_with_lemmas_helper_arg2_1_2 =
  (let rec _lh_matchIdent_9_5 = _lh_rewrite_with_lemmas_helper_arg2_1_2 in
    (_lh_matchIdent_9_5 _lh_rewrite_with_lemmas_helper_arg1_1_6_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d5 _lh_rewrite_with_lemmas_helper_arg1_2_1_7 _lh_rewrite_with_lemmas_helper_arg2_6_0 =
  (let rec _lh_matchIdent_2_3_0 = _lh_rewrite_with_lemmas_helper_arg2_6_0 in
    (_lh_matchIdent_2_3_0 _lh_rewrite_with_lemmas_helper_arg1_2_1_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d6 _lh_rewrite_with_lemmas_helper_arg1_2_0_2 _lh_rewrite_with_lemmas_helper_arg2_4_5 =
  (let rec _lh_matchIdent_1_7_9 = _lh_rewrite_with_lemmas_helper_arg2_4_5 in
    (_lh_matchIdent_1_7_9 _lh_rewrite_with_lemmas_helper_arg1_2_0_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d7 _lh_rewrite_with_lemmas_helper_arg1_2_3_8 _lh_rewrite_with_lemmas_helper_arg2_8_1 =
  (let rec _lh_matchIdent_2_9_9 = _lh_rewrite_with_lemmas_helper_arg2_8_1 in
    (_lh_matchIdent_2_9_9 _lh_rewrite_with_lemmas_helper_arg1_2_3_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d8 _lh_rewrite_with_lemmas_helper_arg1_1_7_8 _lh_rewrite_with_lemmas_helper_arg2_2_1 =
  (let rec _lh_matchIdent_1_2_6 = _lh_rewrite_with_lemmas_helper_arg2_2_1 in
    (_lh_matchIdent_1_2_6 _lh_rewrite_with_lemmas_helper_arg1_1_7_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d2_d9 _lh_rewrite_with_lemmas_helper_arg1_4_3_4 _lh_rewrite_with_lemmas_helper_arg2_1_2_0 =
  (let rec _lh_matchIdent_4_8_4 = _lh_rewrite_with_lemmas_helper_arg2_1_2_0 in
    (_lh_matchIdent_4_8_4 _lh_rewrite_with_lemmas_helper_arg1_4_3_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d3 _lh_rewrite_with_lemmas_helper_arg1_2_5_9 _lh_rewrite_with_lemmas_helper_arg2_1_0_2 =
  (let rec _lh_matchIdent_3_6_5 = _lh_rewrite_with_lemmas_helper_arg2_1_0_2 in
    (_lh_matchIdent_3_6_5 _lh_rewrite_with_lemmas_helper_arg1_2_5_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d0 _lh_rewrite_with_lemmas_helper_arg1_2_4_6 _lh_rewrite_with_lemmas_helper_arg2_8_9 =
  (let rec _lh_matchIdent_3_2_7 = _lh_rewrite_with_lemmas_helper_arg2_8_9 in
    (_lh_matchIdent_3_2_7 _lh_rewrite_with_lemmas_helper_arg1_2_4_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d1 _lh_rewrite_with_lemmas_helper_arg1_2_3_1 _lh_rewrite_with_lemmas_helper_arg2_7_4 =
  (let rec _lh_matchIdent_2_6_8 = _lh_rewrite_with_lemmas_helper_arg2_7_4 in
    (_lh_matchIdent_2_6_8 _lh_rewrite_with_lemmas_helper_arg1_2_3_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d2 _lh_rewrite_with_lemmas_helper_arg1_2_4_3 _lh_rewrite_with_lemmas_helper_arg2_8_6 =
  (let rec _lh_matchIdent_3_1_6 = _lh_rewrite_with_lemmas_helper_arg2_8_6 in
    (_lh_matchIdent_3_1_6 _lh_rewrite_with_lemmas_helper_arg1_2_4_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d3 _lh_rewrite_with_lemmas_helper_arg1_1_8_5 _lh_rewrite_with_lemmas_helper_arg2_2_8 =
  (let rec _lh_matchIdent_1_4_6 = _lh_rewrite_with_lemmas_helper_arg2_2_8 in
    (_lh_matchIdent_1_4_6 _lh_rewrite_with_lemmas_helper_arg1_1_8_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d4 _lh_rewrite_with_lemmas_helper_arg1_1_6_5 _lh_rewrite_with_lemmas_helper_arg2_8 =
  (let rec _lh_matchIdent_8_0 = _lh_rewrite_with_lemmas_helper_arg2_8 in
    (_lh_matchIdent_8_0 _lh_rewrite_with_lemmas_helper_arg1_1_6_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d5 _lh_rewrite_with_lemmas_helper_arg1_2_2_4 _lh_rewrite_with_lemmas_helper_arg2_6_7 =
  (let rec _lh_matchIdent_2_5_2 = _lh_rewrite_with_lemmas_helper_arg2_6_7 in
    (_lh_matchIdent_2_5_2 _lh_rewrite_with_lemmas_helper_arg1_2_2_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d6 _lh_rewrite_with_lemmas_helper_arg1_2_1_5 _lh_rewrite_with_lemmas_helper_arg2_5_8 =
  (let rec _lh_matchIdent_2_2_2 = _lh_rewrite_with_lemmas_helper_arg2_5_8 in
    (_lh_matchIdent_2_2_2 _lh_rewrite_with_lemmas_helper_arg1_2_1_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d7 _lh_rewrite_with_lemmas_helper_arg1_1_7_5 _lh_rewrite_with_lemmas_helper_arg2_1_8 =
  (let rec _lh_matchIdent_1_1_3 = _lh_rewrite_with_lemmas_helper_arg2_1_8 in
    (_lh_matchIdent_1_1_3 _lh_rewrite_with_lemmas_helper_arg1_1_7_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d8 _lh_rewrite_with_lemmas_helper_arg1_1_7_7 _lh_rewrite_with_lemmas_helper_arg2_2_0 =
  (let rec _lh_matchIdent_1_2_5 = _lh_rewrite_with_lemmas_helper_arg2_2_0 in
    (_lh_matchIdent_1_2_5 _lh_rewrite_with_lemmas_helper_arg1_1_7_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d3_d9 _lh_rewrite_with_lemmas_helper_arg1_2_4_4 _lh_rewrite_with_lemmas_helper_arg2_8_7 =
  (let rec _lh_matchIdent_3_2_0 = _lh_rewrite_with_lemmas_helper_arg2_8_7 in
    (_lh_matchIdent_3_2_0 _lh_rewrite_with_lemmas_helper_arg1_2_4_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d4 _lh_rewrite_with_lemmas_helper_arg1_2_6_3 _lh_rewrite_with_lemmas_helper_arg2_1_0_6 =
  (let rec _lh_matchIdent_3_8_0 = _lh_rewrite_with_lemmas_helper_arg2_1_0_6 in
    (_lh_matchIdent_3_8_0 _lh_rewrite_with_lemmas_helper_arg1_2_6_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d0 _lh_rewrite_with_lemmas_helper_arg1_2_0_9 _lh_rewrite_with_lemmas_helper_arg2_5_2 =
  (let rec _lh_matchIdent_2_0_6 = _lh_rewrite_with_lemmas_helper_arg2_5_2 in
    (_lh_matchIdent_2_0_6 _lh_rewrite_with_lemmas_helper_arg1_2_0_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d1 _lh_rewrite_with_lemmas_helper_arg1_2_2_8 _lh_rewrite_with_lemmas_helper_arg2_7_1 =
  (let rec _lh_matchIdent_2_6_4 = _lh_rewrite_with_lemmas_helper_arg2_7_1 in
    (_lh_matchIdent_2_6_4 _lh_rewrite_with_lemmas_helper_arg1_2_2_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d2 _lh_rewrite_with_lemmas_helper_arg1_4_3_5 _lh_rewrite_with_lemmas_helper_arg2_1_2_1 =
  (let rec _lh_matchIdent_4_9_2 = _lh_rewrite_with_lemmas_helper_arg2_1_2_1 in
    (_lh_matchIdent_4_9_2 _lh_rewrite_with_lemmas_helper_arg1_4_3_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d3 _lh_rewrite_with_lemmas_helper_arg1_4_3_6 _lh_rewrite_with_lemmas_helper_arg2_1_2_2 =
  (let rec _lh_matchIdent_4_9_3 = _lh_rewrite_with_lemmas_helper_arg2_1_2_2 in
    (_lh_matchIdent_4_9_3 _lh_rewrite_with_lemmas_helper_arg1_4_3_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d4 _lh_rewrite_with_lemmas_helper_arg1_1_6_8 _lh_rewrite_with_lemmas_helper_arg2_1_1 =
  (let rec _lh_matchIdent_9_0 = _lh_rewrite_with_lemmas_helper_arg2_1_1 in
    (_lh_matchIdent_9_0 _lh_rewrite_with_lemmas_helper_arg1_1_6_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d5 _lh_rewrite_with_lemmas_helper_arg1_2_0_5 _lh_rewrite_with_lemmas_helper_arg2_4_8 =
  (let rec _lh_matchIdent_1_8_7 = _lh_rewrite_with_lemmas_helper_arg2_4_8 in
    (_lh_matchIdent_1_8_7 _lh_rewrite_with_lemmas_helper_arg1_2_0_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d6 _lh_rewrite_with_lemmas_helper_arg1_2_1_0 _lh_rewrite_with_lemmas_helper_arg2_5_3 =
  (let rec _lh_matchIdent_2_1_1 = _lh_rewrite_with_lemmas_helper_arg2_5_3 in
    (_lh_matchIdent_2_1_1 _lh_rewrite_with_lemmas_helper_arg1_2_1_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d7 _lh_rewrite_with_lemmas_helper_arg1_1_7_6 _lh_rewrite_with_lemmas_helper_arg2_1_9 =
  (let rec _lh_matchIdent_1_1_6 = _lh_rewrite_with_lemmas_helper_arg2_1_9 in
    (_lh_matchIdent_1_1_6 _lh_rewrite_with_lemmas_helper_arg1_1_7_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d8 _lh_rewrite_with_lemmas_helper_arg1_1_7_1 _lh_rewrite_with_lemmas_helper_arg2_1_4 =
  (let rec _lh_matchIdent_9_9 = _lh_rewrite_with_lemmas_helper_arg2_1_4 in
    (_lh_matchIdent_9_9 _lh_rewrite_with_lemmas_helper_arg1_1_7_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d4_d9 _lh_rewrite_with_lemmas_helper_arg1_2_0_4 _lh_rewrite_with_lemmas_helper_arg2_4_7 =
  (let rec _lh_matchIdent_1_8_5 = _lh_rewrite_with_lemmas_helper_arg2_4_7 in
    (_lh_matchIdent_1_8_5 _lh_rewrite_with_lemmas_helper_arg1_2_0_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d5 _lh_rewrite_with_lemmas_helper_arg1_2_2_0 _lh_rewrite_with_lemmas_helper_arg2_6_3 =
  (let rec _lh_matchIdent_2_4_1 = _lh_rewrite_with_lemmas_helper_arg2_6_3 in
    (_lh_matchIdent_2_4_1 _lh_rewrite_with_lemmas_helper_arg1_2_2_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d0 _lh_rewrite_with_lemmas_helper_arg1_2_2_7 _lh_rewrite_with_lemmas_helper_arg2_7_0 =
  (let rec _lh_matchIdent_2_6_3 = _lh_rewrite_with_lemmas_helper_arg2_7_0 in
    (_lh_matchIdent_2_6_3 _lh_rewrite_with_lemmas_helper_arg1_2_2_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d1 _lh_rewrite_with_lemmas_helper_arg1_1_9_3 _lh_rewrite_with_lemmas_helper_arg2_3_6 =
  (let rec _lh_matchIdent_1_6_2 = _lh_rewrite_with_lemmas_helper_arg2_3_6 in
    (_lh_matchIdent_1_6_2 _lh_rewrite_with_lemmas_helper_arg1_1_9_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d2 _lh_rewrite_with_lemmas_helper_arg1_4_2_4 _lh_rewrite_with_lemmas_helper_arg2_1_1_0 =
  (let rec _lh_matchIdent_4_4_8 = _lh_rewrite_with_lemmas_helper_arg2_1_1_0 in
    (_lh_matchIdent_4_4_8 _lh_rewrite_with_lemmas_helper_arg1_4_2_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d3 _lh_rewrite_with_lemmas_helper_arg1_2_1_1 _lh_rewrite_with_lemmas_helper_arg2_5_4 =
  (let rec _lh_matchIdent_2_1_3 = _lh_rewrite_with_lemmas_helper_arg2_5_4 in
    (_lh_matchIdent_2_1_3 _lh_rewrite_with_lemmas_helper_arg1_2_1_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d4 _lh_rewrite_with_lemmas_helper_arg1_4_2_3 _lh_rewrite_with_lemmas_helper_arg2_1_0_9 =
  (let rec _lh_matchIdent_4_4_7 = _lh_rewrite_with_lemmas_helper_arg2_1_0_9 in
    (_lh_matchIdent_4_4_7 _lh_rewrite_with_lemmas_helper_arg1_4_2_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d5 _lh_rewrite_with_lemmas_helper_arg1_2_3_4 _lh_rewrite_with_lemmas_helper_arg2_7_7 =
  (let rec _lh_matchIdent_2_8_7 = _lh_rewrite_with_lemmas_helper_arg2_7_7 in
    (_lh_matchIdent_2_8_7 _lh_rewrite_with_lemmas_helper_arg1_2_3_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d6 _lh_rewrite_with_lemmas_helper_arg1_1_7_4 _lh_rewrite_with_lemmas_helper_arg2_1_7 =
  (let rec _lh_matchIdent_1_1_2 = _lh_rewrite_with_lemmas_helper_arg2_1_7 in
    (_lh_matchIdent_1_1_2 _lh_rewrite_with_lemmas_helper_arg1_1_7_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d7 _lh_rewrite_with_lemmas_helper_arg1_2_4_0 _lh_rewrite_with_lemmas_helper_arg2_8_3 =
  (let rec _lh_matchIdent_3_0_2 = _lh_rewrite_with_lemmas_helper_arg2_8_3 in
    (_lh_matchIdent_3_0_2 _lh_rewrite_with_lemmas_helper_arg1_2_4_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d8 _lh_rewrite_with_lemmas_helper_arg1_2_2_5 _lh_rewrite_with_lemmas_helper_arg2_6_8 =
  (let rec _lh_matchIdent_2_5_4 = _lh_rewrite_with_lemmas_helper_arg2_6_8 in
    (_lh_matchIdent_2_5_4 _lh_rewrite_with_lemmas_helper_arg1_2_2_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d5_d9 _lh_rewrite_with_lemmas_helper_arg1_2_3_9 _lh_rewrite_with_lemmas_helper_arg2_8_2 =
  (let rec _lh_matchIdent_3_0_1 = _lh_rewrite_with_lemmas_helper_arg2_8_2 in
    (_lh_matchIdent_3_0_1 _lh_rewrite_with_lemmas_helper_arg1_2_3_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d6 _lh_rewrite_with_lemmas_helper_arg1_1_8_9 _lh_rewrite_with_lemmas_helper_arg2_3_2 =
  (let rec _lh_matchIdent_1_5_2 = _lh_rewrite_with_lemmas_helper_arg2_3_2 in
    (_lh_matchIdent_1_5_2 _lh_rewrite_with_lemmas_helper_arg1_1_8_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d0 _lh_rewrite_with_lemmas_helper_arg1_1_8_3 _lh_rewrite_with_lemmas_helper_arg2_2_6 =
  (let rec _lh_matchIdent_1_3_3 = _lh_rewrite_with_lemmas_helper_arg2_2_6 in
    (_lh_matchIdent_1_3_3 _lh_rewrite_with_lemmas_helper_arg1_1_8_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d1 _lh_rewrite_with_lemmas_helper_arg1_2_6_1 _lh_rewrite_with_lemmas_helper_arg2_1_0_4 =
  (let rec _lh_matchIdent_3_7_8 = _lh_rewrite_with_lemmas_helper_arg2_1_0_4 in
    (_lh_matchIdent_3_7_8 _lh_rewrite_with_lemmas_helper_arg1_2_6_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d2 _lh_rewrite_with_lemmas_helper_arg1_1_7_9 _lh_rewrite_with_lemmas_helper_arg2_2_2 =
  (let rec _lh_matchIdent_1_2_9 = _lh_rewrite_with_lemmas_helper_arg2_2_2 in
    (_lh_matchIdent_1_2_9 _lh_rewrite_with_lemmas_helper_arg1_1_7_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d3 _lh_rewrite_with_lemmas_helper_arg1_4_3_3 _lh_rewrite_with_lemmas_helper_arg2_1_1_9 =
  (let rec _lh_matchIdent_4_8_3 = _lh_rewrite_with_lemmas_helper_arg2_1_1_9 in
    (_lh_matchIdent_4_8_3 _lh_rewrite_with_lemmas_helper_arg1_4_3_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d4 _lh_rewrite_with_lemmas_helper_arg1_2_3_0 _lh_rewrite_with_lemmas_helper_arg2_7_3 =
  (let rec _lh_matchIdent_2_6_6 = _lh_rewrite_with_lemmas_helper_arg2_7_3 in
    (_lh_matchIdent_2_6_6 _lh_rewrite_with_lemmas_helper_arg1_2_3_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d5 _lh_rewrite_with_lemmas_helper_arg1_1_5_9 _lh_rewrite_with_lemmas_helper_arg2_2 =
  (let rec _lh_matchIdent_7_0 = _lh_rewrite_with_lemmas_helper_arg2_2 in
    (_lh_matchIdent_7_0 _lh_rewrite_with_lemmas_helper_arg1_1_5_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d6 _lh_rewrite_with_lemmas_helper_arg1_1_9_4 _lh_rewrite_with_lemmas_helper_arg2_3_7 =
  (let rec _lh_matchIdent_1_6_4 = _lh_rewrite_with_lemmas_helper_arg2_3_7 in
    (_lh_matchIdent_1_6_4 _lh_rewrite_with_lemmas_helper_arg1_1_9_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d7 _lh_rewrite_with_lemmas_helper_arg1_4_2_6 _lh_rewrite_with_lemmas_helper_arg2_1_1_2 =
  (let rec _lh_matchIdent_4_5_4 = _lh_rewrite_with_lemmas_helper_arg2_1_1_2 in
    (_lh_matchIdent_4_5_4 _lh_rewrite_with_lemmas_helper_arg1_4_2_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d8 _lh_rewrite_with_lemmas_helper_arg1_1_9_8 _lh_rewrite_with_lemmas_helper_arg2_4_1 =
  (let rec _lh_matchIdent_1_7_0 = _lh_rewrite_with_lemmas_helper_arg2_4_1 in
    (_lh_matchIdent_1_7_0 _lh_rewrite_with_lemmas_helper_arg1_1_9_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d6_d9 _lh_rewrite_with_lemmas_helper_arg1_1_7_0 _lh_rewrite_with_lemmas_helper_arg2_1_3 =
  (let rec _lh_matchIdent_9_6 = _lh_rewrite_with_lemmas_helper_arg2_1_3 in
    (_lh_matchIdent_9_6 _lh_rewrite_with_lemmas_helper_arg1_1_7_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d7 _lh_rewrite_with_lemmas_helper_arg1_2_2_6 _lh_rewrite_with_lemmas_helper_arg2_6_9 =
  (let rec _lh_matchIdent_2_6_0 = _lh_rewrite_with_lemmas_helper_arg2_6_9 in
    (_lh_matchIdent_2_6_0 _lh_rewrite_with_lemmas_helper_arg1_2_2_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d0 _lh_rewrite_with_lemmas_helper_arg1_4_3_2 _lh_rewrite_with_lemmas_helper_arg2_1_1_8 =
  (let rec _lh_matchIdent_4_8_1 = _lh_rewrite_with_lemmas_helper_arg2_1_1_8 in
    (_lh_matchIdent_4_8_1 _lh_rewrite_with_lemmas_helper_arg1_4_3_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d1 _lh_rewrite_with_lemmas_helper_arg1_4_2_1 _lh_rewrite_with_lemmas_helper_arg2_1_0_7 =
  (let rec _lh_matchIdent_4_4_2 = _lh_rewrite_with_lemmas_helper_arg2_1_0_7 in
    (_lh_matchIdent_4_4_2 _lh_rewrite_with_lemmas_helper_arg1_4_2_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d2 _lh_rewrite_with_lemmas_helper_arg1_1_6_6 _lh_rewrite_with_lemmas_helper_arg2_9 =
  (let rec _lh_matchIdent_8_2 = _lh_rewrite_with_lemmas_helper_arg2_9 in
    (_lh_matchIdent_8_2 _lh_rewrite_with_lemmas_helper_arg1_1_6_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d3 _lh_rewrite_with_lemmas_helper_arg1_1_6_2 _lh_rewrite_with_lemmas_helper_arg2_5 =
  (let rec _lh_matchIdent_7_7 = _lh_rewrite_with_lemmas_helper_arg2_5 in
    (_lh_matchIdent_7_7 _lh_rewrite_with_lemmas_helper_arg1_1_6_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d4 _lh_rewrite_with_lemmas_helper_arg1_1_6_0 _lh_rewrite_with_lemmas_helper_arg2_3 =
  (let rec _lh_matchIdent_7_5 = _lh_rewrite_with_lemmas_helper_arg2_3 in
    (_lh_matchIdent_7_5 _lh_rewrite_with_lemmas_helper_arg1_1_6_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d5 _lh_rewrite_with_lemmas_helper_arg1_2_6_2 _lh_rewrite_with_lemmas_helper_arg2_1_0_5 =
  (let rec _lh_matchIdent_3_7_9 = _lh_rewrite_with_lemmas_helper_arg2_1_0_5 in
    (_lh_matchIdent_3_7_9 _lh_rewrite_with_lemmas_helper_arg1_2_6_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d6 _lh_rewrite_with_lemmas_helper_arg1_2_5_1 _lh_rewrite_with_lemmas_helper_arg2_9_4 =
  (let rec _lh_matchIdent_3_4_1 = _lh_rewrite_with_lemmas_helper_arg2_9_4 in
    (_lh_matchIdent_3_4_1 _lh_rewrite_with_lemmas_helper_arg1_2_5_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d7 _lh_rewrite_with_lemmas_helper_arg1_2_4_7 _lh_rewrite_with_lemmas_helper_arg2_9_0 =
  (let rec _lh_matchIdent_3_2_8 = _lh_rewrite_with_lemmas_helper_arg2_9_0 in
    (_lh_matchIdent_3_2_8 _lh_rewrite_with_lemmas_helper_arg1_2_4_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d8 _lh_rewrite_with_lemmas_helper_arg1_2_1_8 _lh_rewrite_with_lemmas_helper_arg2_6_1 =
  (let rec _lh_matchIdent_2_3_5 = _lh_rewrite_with_lemmas_helper_arg2_6_1 in
    (_lh_matchIdent_2_3_5 _lh_rewrite_with_lemmas_helper_arg1_2_1_8));;
let rec rewrite_with_lemmas_helper_d0_d0_d7_d9 _lh_rewrite_with_lemmas_helper_arg1_2_0_7 _lh_rewrite_with_lemmas_helper_arg2_5_0 =
  (let rec _lh_matchIdent_1_8_9 = _lh_rewrite_with_lemmas_helper_arg2_5_0 in
    (_lh_matchIdent_1_8_9 _lh_rewrite_with_lemmas_helper_arg1_2_0_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d8 _lh_rewrite_with_lemmas_helper_arg1_2_5_4 _lh_rewrite_with_lemmas_helper_arg2_9_7 =
  (let rec _lh_matchIdent_3_5_4 = _lh_rewrite_with_lemmas_helper_arg2_9_7 in
    (_lh_matchIdent_3_5_4 _lh_rewrite_with_lemmas_helper_arg1_2_5_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d0 _lh_rewrite_with_lemmas_helper_arg1_2_0_1 _lh_rewrite_with_lemmas_helper_arg2_4_4 =
  (let rec _lh_matchIdent_1_7_8 = _lh_rewrite_with_lemmas_helper_arg2_4_4 in
    (_lh_matchIdent_1_7_8 _lh_rewrite_with_lemmas_helper_arg1_2_0_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d1 _lh_rewrite_with_lemmas_helper_arg1_1_9_9 _lh_rewrite_with_lemmas_helper_arg2_4_2 =
  (let rec _lh_matchIdent_1_7_3 = _lh_rewrite_with_lemmas_helper_arg2_4_2 in
    (_lh_matchIdent_1_7_3 _lh_rewrite_with_lemmas_helper_arg1_1_9_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d2 _lh_rewrite_with_lemmas_helper_arg1_2_1_2 _lh_rewrite_with_lemmas_helper_arg2_5_5 =
  (let rec _lh_matchIdent_2_1_8 = _lh_rewrite_with_lemmas_helper_arg2_5_5 in
    (_lh_matchIdent_2_1_8 _lh_rewrite_with_lemmas_helper_arg1_2_1_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d3 _lh_rewrite_with_lemmas_helper_arg1_4_2_7 _lh_rewrite_with_lemmas_helper_arg2_1_1_3 =
  (let rec _lh_matchIdent_4_5_5 = _lh_rewrite_with_lemmas_helper_arg2_1_1_3 in
    (_lh_matchIdent_4_5_5 _lh_rewrite_with_lemmas_helper_arg1_4_2_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d4 _lh_rewrite_with_lemmas_helper_arg1_1_6_4 _lh_rewrite_with_lemmas_helper_arg2_7 =
  (let rec _lh_matchIdent_7_9 = _lh_rewrite_with_lemmas_helper_arg2_7 in
    (_lh_matchIdent_7_9 _lh_rewrite_with_lemmas_helper_arg1_1_6_4));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d5 _lh_rewrite_with_lemmas_helper_arg1_1_7_2 _lh_rewrite_with_lemmas_helper_arg2_1_5 =
  (let rec _lh_matchIdent_1_0_0 = _lh_rewrite_with_lemmas_helper_arg2_1_5 in
    (_lh_matchIdent_1_0_0 _lh_rewrite_with_lemmas_helper_arg1_1_7_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d6 _lh_rewrite_with_lemmas_helper_arg1_2_3_6 _lh_rewrite_with_lemmas_helper_arg2_7_9 =
  (let rec _lh_matchIdent_2_9_7 = _lh_rewrite_with_lemmas_helper_arg2_7_9 in
    (_lh_matchIdent_2_9_7 _lh_rewrite_with_lemmas_helper_arg1_2_3_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d7 _lh_rewrite_with_lemmas_helper_arg1_1_9_6 _lh_rewrite_with_lemmas_helper_arg2_3_9 =
  (let rec _lh_matchIdent_1_6_6 = _lh_rewrite_with_lemmas_helper_arg2_3_9 in
    (_lh_matchIdent_1_6_6 _lh_rewrite_with_lemmas_helper_arg1_1_9_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d8 _lh_rewrite_with_lemmas_helper_arg1_4_2_2 _lh_rewrite_with_lemmas_helper_arg2_1_0_8 =
  (let rec _lh_matchIdent_4_4_4 = _lh_rewrite_with_lemmas_helper_arg2_1_0_8 in
    (_lh_matchIdent_4_4_4 _lh_rewrite_with_lemmas_helper_arg1_4_2_2));;
let rec rewrite_with_lemmas_helper_d0_d0_d8_d9 _lh_rewrite_with_lemmas_helper_arg1_2_5_6 _lh_rewrite_with_lemmas_helper_arg2_9_9 =
  (let rec _lh_matchIdent_3_5_6 = _lh_rewrite_with_lemmas_helper_arg2_9_9 in
    (_lh_matchIdent_3_5_6 _lh_rewrite_with_lemmas_helper_arg1_2_5_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d9 _lh_rewrite_with_lemmas_helper_arg1_2_3_7 _lh_rewrite_with_lemmas_helper_arg2_8_0 =
  (let rec _lh_matchIdent_2_9_8 = _lh_rewrite_with_lemmas_helper_arg2_8_0 in
    (_lh_matchIdent_2_9_8 _lh_rewrite_with_lemmas_helper_arg1_2_3_7));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d0 _lh_rewrite_with_lemmas_helper_arg1_4_2_5 _lh_rewrite_with_lemmas_helper_arg2_1_1_1 =
  (let rec _lh_matchIdent_4_4_9 = _lh_rewrite_with_lemmas_helper_arg2_1_1_1 in
    (_lh_matchIdent_4_4_9 _lh_rewrite_with_lemmas_helper_arg1_4_2_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d1 _lh_rewrite_with_lemmas_helper_arg1_2_2_1 _lh_rewrite_with_lemmas_helper_arg2_6_4 =
  (let rec _lh_matchIdent_2_4_4 = _lh_rewrite_with_lemmas_helper_arg2_6_4 in
    (_lh_matchIdent_2_4_4 _lh_rewrite_with_lemmas_helper_arg1_2_2_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d2 _lh_rewrite_with_lemmas_helper_arg1_2_4_5 _lh_rewrite_with_lemmas_helper_arg2_8_8 =
  (let rec _lh_matchIdent_3_2_5 = _lh_rewrite_with_lemmas_helper_arg2_8_8 in
    (_lh_matchIdent_3_2_5 _lh_rewrite_with_lemmas_helper_arg1_2_4_5));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d3 _lh_rewrite_with_lemmas_helper_arg1_2_4_1 _lh_rewrite_with_lemmas_helper_arg2_8_4 =
  (let rec _lh_matchIdent_3_1_1 = _lh_rewrite_with_lemmas_helper_arg2_8_4 in
    (_lh_matchIdent_3_1_1 _lh_rewrite_with_lemmas_helper_arg1_2_4_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d4 _lh_rewrite_with_lemmas_helper_arg1_2_1_3 _lh_rewrite_with_lemmas_helper_arg2_5_6 =
  (let rec _lh_matchIdent_2_1_9 = _lh_rewrite_with_lemmas_helper_arg2_5_6 in
    (_lh_matchIdent_2_1_9 _lh_rewrite_with_lemmas_helper_arg1_2_1_3));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d5 _lh_rewrite_with_lemmas_helper_arg1_2_0_0 _lh_rewrite_with_lemmas_helper_arg2_4_3 =
  (let rec _lh_matchIdent_1_7_7 = _lh_rewrite_with_lemmas_helper_arg2_4_3 in
    (_lh_matchIdent_1_7_7 _lh_rewrite_with_lemmas_helper_arg1_2_0_0));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d6 _lh_rewrite_with_lemmas_helper_arg1_1_8_1 _lh_rewrite_with_lemmas_helper_arg2_2_4 =
  (let rec _lh_matchIdent_1_3_1 = _lh_rewrite_with_lemmas_helper_arg2_2_4 in
    (_lh_matchIdent_1_3_1 _lh_rewrite_with_lemmas_helper_arg1_1_8_1));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d7 _lh_rewrite_with_lemmas_helper_arg1_2_2_9 _lh_rewrite_with_lemmas_helper_arg2_7_2 =
  (let rec _lh_matchIdent_2_6_5 = _lh_rewrite_with_lemmas_helper_arg2_7_2 in
    (_lh_matchIdent_2_6_5 _lh_rewrite_with_lemmas_helper_arg1_2_2_9));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d8 _lh_rewrite_with_lemmas_helper_arg1_2_0_6 _lh_rewrite_with_lemmas_helper_arg2_4_9 =
  (let rec _lh_matchIdent_1_8_8 = _lh_rewrite_with_lemmas_helper_arg2_4_9 in
    (_lh_matchIdent_1_8_8 _lh_rewrite_with_lemmas_helper_arg1_2_0_6));;
let rec rewrite_with_lemmas_helper_d0_d0_d9_d9 _lh_rewrite_with_lemmas_helper_arg1_2_1_6 _lh_rewrite_with_lemmas_helper_arg2_5_9 =
  (let rec _lh_matchIdent_2_2_9 = _lh_rewrite_with_lemmas_helper_arg2_5_9 in
    (_lh_matchIdent_2_2_9 _lh_rewrite_with_lemmas_helper_arg1_2_1_6));;
let rec apply_subst_d0_d0_d0 _lh_apply_subst_arg1_3_9 _lh_apply_subst_arg2_3_9 =
  (match _lh_apply_subst_arg2_3_9 with
    | `Var(_lh_apply_subst_Var_0_1_1_1) -> 
      (let rec _lh_matchIdent_2_8_8 = ((find_d0_d0_d0 _lh_apply_subst_Var_0_1_1_1) _lh_apply_subst_arg1_3_9) in
        (_lh_matchIdent_2_8_8 _lh_apply_subst_Var_0_1_1_1))
    | `Fun(_lh_apply_subst_Fun_0_3_9, _lh_apply_subst_Fun_1_3_9, _lh_apply_subst_Fun_2_3_9) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_9, ((map_d0_d0_d0 (apply_subst_d0_d0_d0 _lh_apply_subst_arg1_3_9)) _lh_apply_subst_Fun_1_3_9), _lh_apply_subst_Fun_2_3_9))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d0 _lh_apply_subst_arg1_7 _lh_apply_subst_arg2_7 =
  (match _lh_apply_subst_arg2_7 with
    | `Var(_lh_apply_subst_Var_0_2_5) -> 
      (let rec _lh_matchIdent_1_0_4 = ((find_d1_d0_d0 _lh_apply_subst_Var_0_2_5) _lh_apply_subst_arg1_7) in
        (_lh_matchIdent_1_0_4 _lh_apply_subst_Var_0_2_5))
    | `Fun(_lh_apply_subst_Fun_0_7, _lh_apply_subst_Fun_1_7, _lh_apply_subst_Fun_2_7) -> 
      (`Fun(_lh_apply_subst_Fun_0_7, ((map_d2_d0_d0 (apply_subst_d1_d0_d0 _lh_apply_subst_arg1_7)) _lh_apply_subst_Fun_1_7), _lh_apply_subst_Fun_2_7))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1 _lh_apply_subst_arg1_2 _lh_apply_subst_arg2_2 =
  (match _lh_apply_subst_arg2_2 with
    | `Var(_lh_apply_subst_Var_0_1_2) -> 
      (let rec _lh_matchIdent_7_1 = ((find_d1_d0_d1 _lh_apply_subst_Var_0_1_2) _lh_apply_subst_arg1_2) in
        (_lh_matchIdent_7_1 _lh_apply_subst_Var_0_1_2))
    | `Fun(_lh_apply_subst_Fun_0_2, _lh_apply_subst_Fun_1_2, _lh_apply_subst_Fun_2_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_2, ((map_d2_d0_d1 (apply_subst_d1_d0_d1 _lh_apply_subst_arg1_2)) _lh_apply_subst_Fun_1_2), _lh_apply_subst_Fun_2_2))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d0 _lh_apply_subst_arg1_5_0 _lh_apply_subst_arg2_5_0 =
  (match _lh_apply_subst_arg2_5_0 with
    | `Var(_lh_apply_subst_Var_0_1_4_6) -> 
      (let rec _lh_matchIdent_3_4_9 = ((find_d1_d0_d1_d0 _lh_apply_subst_Var_0_1_4_6) _lh_apply_subst_arg1_5_0) in
        (_lh_matchIdent_3_4_9 _lh_apply_subst_Var_0_1_4_6))
    | `Fun(_lh_apply_subst_Fun_0_5_0, _lh_apply_subst_Fun_1_5_0, _lh_apply_subst_Fun_2_5_0) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_0, ((map_d2_d0_d1_d0 (apply_subst_d1_d0_d1_d0 _lh_apply_subst_arg1_5_0)) _lh_apply_subst_Fun_1_5_0), _lh_apply_subst_Fun_2_5_0))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d1 _lh_apply_subst_arg1_4_2 _lh_apply_subst_arg2_4_2 =
  (match _lh_apply_subst_arg2_4_2 with
    | `Var(_lh_apply_subst_Var_0_1_2_2) -> 
      (let rec _lh_matchIdent_3_0_7 = ((find_d1_d0_d1_d1 _lh_apply_subst_Var_0_1_2_2) _lh_apply_subst_arg1_4_2) in
        (_lh_matchIdent_3_0_7 _lh_apply_subst_Var_0_1_2_2))
    | `Fun(_lh_apply_subst_Fun_0_4_2, _lh_apply_subst_Fun_1_4_2, _lh_apply_subst_Fun_2_4_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_2, ((map_d2_d0_d1_d1 (apply_subst_d1_d0_d1_d1 _lh_apply_subst_arg1_4_2)) _lh_apply_subst_Fun_1_4_2), _lh_apply_subst_Fun_2_4_2))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d2 _lh_apply_subst_arg1_2_6 _lh_apply_subst_arg2_2_6 =
  (match _lh_apply_subst_arg2_2_6 with
    | `Var(_lh_apply_subst_Var_0_6_2) -> 
      (let rec _lh_matchIdent_2_0_7 = ((find_d1_d0_d1_d2 _lh_apply_subst_Var_0_6_2) _lh_apply_subst_arg1_2_6) in
        (_lh_matchIdent_2_0_7 _lh_apply_subst_Var_0_6_2))
    | `Fun(_lh_apply_subst_Fun_0_2_6, _lh_apply_subst_Fun_1_2_6, _lh_apply_subst_Fun_2_2_6) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_6, ((map_d2_d0_d1_d2 (apply_subst_d1_d0_d1_d2 _lh_apply_subst_arg1_2_6)) _lh_apply_subst_Fun_1_2_6), _lh_apply_subst_Fun_2_2_6))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d3 _lh_apply_subst_arg1_2_0 _lh_apply_subst_arg2_2_0 =
  (match _lh_apply_subst_arg2_2_0 with
    | `Var(_lh_apply_subst_Var_0_5_4) -> 
      (let rec _lh_matchIdent_1_8_2 = ((find_d1_d0_d1_d3 _lh_apply_subst_Var_0_5_4) _lh_apply_subst_arg1_2_0) in
        (_lh_matchIdent_1_8_2 _lh_apply_subst_Var_0_5_4))
    | `Fun(_lh_apply_subst_Fun_0_2_0, _lh_apply_subst_Fun_1_2_0, _lh_apply_subst_Fun_2_2_0) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_0, ((map_d2_d0_d1_d3 (apply_subst_d1_d0_d1_d3 _lh_apply_subst_arg1_2_0)) _lh_apply_subst_Fun_1_2_0), _lh_apply_subst_Fun_2_2_0))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d4 _lh_apply_subst_arg1_3_7 _lh_apply_subst_arg2_3_7 =
  (match _lh_apply_subst_arg2_3_7 with
    | `Var(_lh_apply_subst_Var_0_1_0_5) -> 
      (let rec _lh_matchIdent_2_7_5 = ((find_d1_d0_d1_d4 _lh_apply_subst_Var_0_1_0_5) _lh_apply_subst_arg1_3_7) in
        (_lh_matchIdent_2_7_5 _lh_apply_subst_Var_0_1_0_5))
    | `Fun(_lh_apply_subst_Fun_0_3_7, _lh_apply_subst_Fun_1_3_7, _lh_apply_subst_Fun_2_3_7) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_7, ((map_d2_d0_d1_d4 (apply_subst_d1_d0_d1_d4 _lh_apply_subst_arg1_3_7)) _lh_apply_subst_Fun_1_3_7), _lh_apply_subst_Fun_2_3_7))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d5 _lh_apply_subst_arg1_6_3 _lh_apply_subst_arg2_6_3 =
  (match _lh_apply_subst_arg2_6_3 with
    | `Var(_lh_apply_subst_Var_0_1_9_9) -> 
      (let rec _lh_matchIdent_4_8_8 = ((find_d1_d0_d1_d5 _lh_apply_subst_Var_0_1_9_9) _lh_apply_subst_arg1_6_3) in
        (_lh_matchIdent_4_8_8 _lh_apply_subst_Var_0_1_9_9))
    | `Fun(_lh_apply_subst_Fun_0_6_3, _lh_apply_subst_Fun_1_6_3, _lh_apply_subst_Fun_2_6_3) -> 
      (`Fun(_lh_apply_subst_Fun_0_6_3, ((map_d2_d0_d1_d5 (apply_subst_d1_d0_d1_d5 _lh_apply_subst_arg1_6_3)) _lh_apply_subst_Fun_1_6_3), _lh_apply_subst_Fun_2_6_3))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d6 _lh_apply_subst_arg1_3_0 _lh_apply_subst_arg2_3_0 =
  (match _lh_apply_subst_arg2_3_0 with
    | `Var(_lh_apply_subst_Var_0_7_0) -> 
      (let rec _lh_matchIdent_2_1_5 = ((find_d1_d0_d1_d6 _lh_apply_subst_Var_0_7_0) _lh_apply_subst_arg1_3_0) in
        (_lh_matchIdent_2_1_5 _lh_apply_subst_Var_0_7_0))
    | `Fun(_lh_apply_subst_Fun_0_3_0, _lh_apply_subst_Fun_1_3_0, _lh_apply_subst_Fun_2_3_0) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_0, ((map_d2_d0_d1_d6 (apply_subst_d1_d0_d1_d6 _lh_apply_subst_arg1_3_0)) _lh_apply_subst_Fun_1_3_0), _lh_apply_subst_Fun_2_3_0))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d7 _lh_apply_subst_arg1_1_7 _lh_apply_subst_arg2_1_7 =
  (match _lh_apply_subst_arg2_1_7 with
    | `Var(_lh_apply_subst_Var_0_4_7) -> 
      (let rec _lh_matchIdent_1_5_0 = ((find_d1_d0_d1_d7 _lh_apply_subst_Var_0_4_7) _lh_apply_subst_arg1_1_7) in
        (_lh_matchIdent_1_5_0 _lh_apply_subst_Var_0_4_7))
    | `Fun(_lh_apply_subst_Fun_0_1_7, _lh_apply_subst_Fun_1_1_7, _lh_apply_subst_Fun_2_1_7) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_7, ((map_d2_d0_d1_d7 (apply_subst_d1_d0_d1_d7 _lh_apply_subst_arg1_1_7)) _lh_apply_subst_Fun_1_1_7), _lh_apply_subst_Fun_2_1_7))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d8 _lh_apply_subst_arg1_5_7 _lh_apply_subst_arg2_5_7 =
  (match _lh_apply_subst_arg2_5_7 with
    | `Var(_lh_apply_subst_Var_0_1_7_5) -> 
      (let rec _lh_matchIdent_4_5_3 = ((find_d1_d0_d1_d8 _lh_apply_subst_Var_0_1_7_5) _lh_apply_subst_arg1_5_7) in
        (_lh_matchIdent_4_5_3 _lh_apply_subst_Var_0_1_7_5))
    | `Fun(_lh_apply_subst_Fun_0_5_7, _lh_apply_subst_Fun_1_5_7, _lh_apply_subst_Fun_2_5_7) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_7, ((map_d2_d0_d1_d8 (apply_subst_d1_d0_d1_d8 _lh_apply_subst_arg1_5_7)) _lh_apply_subst_Fun_1_5_7), _lh_apply_subst_Fun_2_5_7))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d1_d9 _lh_apply_subst_arg1_2_3 _lh_apply_subst_arg2_2_3 =
  (match _lh_apply_subst_arg2_2_3 with
    | `Var(_lh_apply_subst_Var_0_5_9) -> 
      (let rec _lh_matchIdent_1_9_9 = ((find_d1_d0_d1_d9 _lh_apply_subst_Var_0_5_9) _lh_apply_subst_arg1_2_3) in
        (_lh_matchIdent_1_9_9 _lh_apply_subst_Var_0_5_9))
    | `Fun(_lh_apply_subst_Fun_0_2_3, _lh_apply_subst_Fun_1_2_3, _lh_apply_subst_Fun_2_2_3) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_3, ((map_d2_d0_d1_d9 (apply_subst_d1_d0_d1_d9 _lh_apply_subst_arg1_2_3)) _lh_apply_subst_Fun_1_2_3), _lh_apply_subst_Fun_2_2_3))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2 _lh_apply_subst_arg1_5_4 _lh_apply_subst_arg2_5_4 =
  (match _lh_apply_subst_arg2_5_4 with
    | `Var(_lh_apply_subst_Var_0_1_6_6) -> 
      (let rec _lh_matchIdent_4_4_5 = ((find_d1_d0_d2 _lh_apply_subst_Var_0_1_6_6) _lh_apply_subst_arg1_5_4) in
        (_lh_matchIdent_4_4_5 _lh_apply_subst_Var_0_1_6_6))
    | `Fun(_lh_apply_subst_Fun_0_5_4, _lh_apply_subst_Fun_1_5_4, _lh_apply_subst_Fun_2_5_4) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_4, ((map_d2_d0_d2 (apply_subst_d1_d0_d2 _lh_apply_subst_arg1_5_4)) _lh_apply_subst_Fun_1_5_4), _lh_apply_subst_Fun_2_5_4))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d0 _lh_apply_subst_arg1_2_8 _lh_apply_subst_arg2_2_8 =
  (match _lh_apply_subst_arg2_2_8 with
    | `Var(_lh_apply_subst_Var_0_6_4) -> 
      (let rec _lh_matchIdent_2_1_0 = ((find_d1_d0_d2_d0 _lh_apply_subst_Var_0_6_4) _lh_apply_subst_arg1_2_8) in
        (_lh_matchIdent_2_1_0 _lh_apply_subst_Var_0_6_4))
    | `Fun(_lh_apply_subst_Fun_0_2_8, _lh_apply_subst_Fun_1_2_8, _lh_apply_subst_Fun_2_2_8) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_8, ((map_d2_d0_d2_d0 (apply_subst_d1_d0_d2_d0 _lh_apply_subst_arg1_2_8)) _lh_apply_subst_Fun_1_2_8), _lh_apply_subst_Fun_2_2_8))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d1 _lh_apply_subst_arg1_5_2 _lh_apply_subst_arg2_5_2 =
  (match _lh_apply_subst_arg2_5_2 with
    | `Var(_lh_apply_subst_Var_0_1_4_8) -> 
      (let rec _lh_matchIdent_3_5_9 = ((find_d1_d0_d2_d1 _lh_apply_subst_Var_0_1_4_8) _lh_apply_subst_arg1_5_2) in
        (_lh_matchIdent_3_5_9 _lh_apply_subst_Var_0_1_4_8))
    | `Fun(_lh_apply_subst_Fun_0_5_2, _lh_apply_subst_Fun_1_5_2, _lh_apply_subst_Fun_2_5_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_2, ((map_d2_d0_d2_d1 (apply_subst_d1_d0_d2_d1 _lh_apply_subst_arg1_5_2)) _lh_apply_subst_Fun_1_5_2), _lh_apply_subst_Fun_2_5_2))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d2 _lh_apply_subst_arg1_6_1 _lh_apply_subst_arg2_6_1 =
  (match _lh_apply_subst_arg2_6_1 with
    | `Var(_lh_apply_subst_Var_0_1_9_3) -> 
      (let rec _lh_matchIdent_4_7_9 = ((find_d1_d0_d2_d2 _lh_apply_subst_Var_0_1_9_3) _lh_apply_subst_arg1_6_1) in
        (_lh_matchIdent_4_7_9 _lh_apply_subst_Var_0_1_9_3))
    | `Fun(_lh_apply_subst_Fun_0_6_1, _lh_apply_subst_Fun_1_6_1, _lh_apply_subst_Fun_2_6_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_6_1, ((map_d2_d0_d2_d2 (apply_subst_d1_d0_d2_d2 _lh_apply_subst_arg1_6_1)) _lh_apply_subst_Fun_1_6_1), _lh_apply_subst_Fun_2_6_1))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d3 _lh_apply_subst_arg1_1_4 _lh_apply_subst_arg2_1_4 =
  (match _lh_apply_subst_arg2_1_4 with
    | `Var(_lh_apply_subst_Var_0_3_8) -> 
      (let rec _lh_matchIdent_1_2_4 = ((find_d1_d0_d2_d3 _lh_apply_subst_Var_0_3_8) _lh_apply_subst_arg1_1_4) in
        (_lh_matchIdent_1_2_4 _lh_apply_subst_Var_0_3_8))
    | `Fun(_lh_apply_subst_Fun_0_1_4, _lh_apply_subst_Fun_1_1_4, _lh_apply_subst_Fun_2_1_4) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_4, ((map_d2_d0_d2_d3 (apply_subst_d1_d0_d2_d3 _lh_apply_subst_arg1_1_4)) _lh_apply_subst_Fun_1_1_4), _lh_apply_subst_Fun_2_1_4))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d4 _lh_apply_subst_arg1_3_4 _lh_apply_subst_arg2_3_4 =
  (match _lh_apply_subst_arg2_3_4 with
    | `Var(_lh_apply_subst_Var_0_9_0) -> 
      (let rec _lh_matchIdent_2_5_9 = ((find_d1_d0_d2_d4 _lh_apply_subst_Var_0_9_0) _lh_apply_subst_arg1_3_4) in
        (_lh_matchIdent_2_5_9 _lh_apply_subst_Var_0_9_0))
    | `Fun(_lh_apply_subst_Fun_0_3_4, _lh_apply_subst_Fun_1_3_4, _lh_apply_subst_Fun_2_3_4) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_4, ((map_d2_d0_d2_d4 (apply_subst_d1_d0_d2_d4 _lh_apply_subst_arg1_3_4)) _lh_apply_subst_Fun_1_3_4), _lh_apply_subst_Fun_2_3_4))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d5 _lh_apply_subst_arg1_1_8 _lh_apply_subst_arg2_1_8 =
  (match _lh_apply_subst_arg2_1_8 with
    | `Var(_lh_apply_subst_Var_0_4_8) -> 
      (let rec _lh_matchIdent_1_5_7 = ((find_d1_d0_d2_d5 _lh_apply_subst_Var_0_4_8) _lh_apply_subst_arg1_1_8) in
        (_lh_matchIdent_1_5_7 _lh_apply_subst_Var_0_4_8))
    | `Fun(_lh_apply_subst_Fun_0_1_8, _lh_apply_subst_Fun_1_1_8, _lh_apply_subst_Fun_2_1_8) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_8, ((map_d2_d0_d2_d5 (apply_subst_d1_d0_d2_d5 _lh_apply_subst_arg1_1_8)) _lh_apply_subst_Fun_1_1_8), _lh_apply_subst_Fun_2_1_8))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d6 _lh_apply_subst_arg1_3_1 _lh_apply_subst_arg2_3_1 =
  (match _lh_apply_subst_arg2_3_1 with
    | `Var(_lh_apply_subst_Var_0_7_3) -> 
      (let rec _lh_matchIdent_2_2_0 = ((find_d1_d0_d2_d6 _lh_apply_subst_Var_0_7_3) _lh_apply_subst_arg1_3_1) in
        (_lh_matchIdent_2_2_0 _lh_apply_subst_Var_0_7_3))
    | `Fun(_lh_apply_subst_Fun_0_3_1, _lh_apply_subst_Fun_1_3_1, _lh_apply_subst_Fun_2_3_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_1, ((map_d2_d0_d2_d6 (apply_subst_d1_d0_d2_d6 _lh_apply_subst_arg1_3_1)) _lh_apply_subst_Fun_1_3_1), _lh_apply_subst_Fun_2_3_1))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d7 _lh_apply_subst_arg1_3_3 _lh_apply_subst_arg2_3_3 =
  (match _lh_apply_subst_arg2_3_3 with
    | `Var(_lh_apply_subst_Var_0_8_9) -> 
      (let rec _lh_matchIdent_2_5_3 = ((find_d1_d0_d2_d7 _lh_apply_subst_Var_0_8_9) _lh_apply_subst_arg1_3_3) in
        (_lh_matchIdent_2_5_3 _lh_apply_subst_Var_0_8_9))
    | `Fun(_lh_apply_subst_Fun_0_3_3, _lh_apply_subst_Fun_1_3_3, _lh_apply_subst_Fun_2_3_3) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_3, ((map_d2_d0_d2_d7 (apply_subst_d1_d0_d2_d7 _lh_apply_subst_arg1_3_3)) _lh_apply_subst_Fun_1_3_3), _lh_apply_subst_Fun_2_3_3))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d8 _lh_apply_subst_arg1_1_2 _lh_apply_subst_arg2_1_2 =
  (match _lh_apply_subst_arg2_1_2 with
    | `Var(_lh_apply_subst_Var_0_3_2) -> 
      (let rec _lh_matchIdent_1_1_4 = ((find_d1_d0_d2_d8 _lh_apply_subst_Var_0_3_2) _lh_apply_subst_arg1_1_2) in
        (_lh_matchIdent_1_1_4 _lh_apply_subst_Var_0_3_2))
    | `Fun(_lh_apply_subst_Fun_0_1_2, _lh_apply_subst_Fun_1_1_2, _lh_apply_subst_Fun_2_1_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_2, ((map_d2_d0_d2_d8 (apply_subst_d1_d0_d2_d8 _lh_apply_subst_arg1_1_2)) _lh_apply_subst_Fun_1_1_2), _lh_apply_subst_Fun_2_1_2))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d2_d9 _lh_apply_subst_arg1_5_1 _lh_apply_subst_arg2_5_1 =
  (match _lh_apply_subst_arg2_5_1 with
    | `Var(_lh_apply_subst_Var_0_1_4_7) -> 
      (let rec _lh_matchIdent_3_5_0 = ((find_d1_d0_d2_d9 _lh_apply_subst_Var_0_1_4_7) _lh_apply_subst_arg1_5_1) in
        (_lh_matchIdent_3_5_0 _lh_apply_subst_Var_0_1_4_7))
    | `Fun(_lh_apply_subst_Fun_0_5_1, _lh_apply_subst_Fun_1_5_1, _lh_apply_subst_Fun_2_5_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_1, ((map_d2_d0_d2_d9 (apply_subst_d1_d0_d2_d9 _lh_apply_subst_arg1_5_1)) _lh_apply_subst_Fun_1_5_1), _lh_apply_subst_Fun_2_5_1))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3 _lh_apply_subst_arg1_3_8 _lh_apply_subst_arg2_3_8 =
  (match _lh_apply_subst_arg2_3_8 with
    | `Var(_lh_apply_subst_Var_0_1_0_8) -> 
      (let rec _lh_matchIdent_2_8_1 = ((find_d1_d0_d3 _lh_apply_subst_Var_0_1_0_8) _lh_apply_subst_arg1_3_8) in
        (_lh_matchIdent_2_8_1 _lh_apply_subst_Var_0_1_0_8))
    | `Fun(_lh_apply_subst_Fun_0_3_8, _lh_apply_subst_Fun_1_3_8, _lh_apply_subst_Fun_2_3_8) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_8, ((map_d2_d0_d3 (apply_subst_d1_d0_d3 _lh_apply_subst_arg1_3_8)) _lh_apply_subst_Fun_1_3_8), _lh_apply_subst_Fun_2_3_8))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d0 _lh_apply_subst_arg1_2_7 _lh_apply_subst_arg2_2_7 =
  (match _lh_apply_subst_arg2_2_7 with
    | `Var(_lh_apply_subst_Var_0_6_3) -> 
      (let rec _lh_matchIdent_2_0_8 = ((find_d1_d0_d3_d0 _lh_apply_subst_Var_0_6_3) _lh_apply_subst_arg1_2_7) in
        (_lh_matchIdent_2_0_8 _lh_apply_subst_Var_0_6_3))
    | `Fun(_lh_apply_subst_Fun_0_2_7, _lh_apply_subst_Fun_1_2_7, _lh_apply_subst_Fun_2_2_7) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_7, ((map_d2_d0_d3_d0 (apply_subst_d1_d0_d3_d0 _lh_apply_subst_arg1_2_7)) _lh_apply_subst_Fun_1_2_7), _lh_apply_subst_Fun_2_2_7))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d1 _lh_apply_subst_arg1_5 _lh_apply_subst_arg2_5 =
  (match _lh_apply_subst_arg2_5 with
    | `Var(_lh_apply_subst_Var_0_1_9) -> 
      (let rec _lh_matchIdent_9_4 = ((find_d1_d0_d3_d1 _lh_apply_subst_Var_0_1_9) _lh_apply_subst_arg1_5) in
        (_lh_matchIdent_9_4 _lh_apply_subst_Var_0_1_9))
    | `Fun(_lh_apply_subst_Fun_0_5, _lh_apply_subst_Fun_1_5, _lh_apply_subst_Fun_2_5) -> 
      (`Fun(_lh_apply_subst_Fun_0_5, ((map_d2_d0_d3_d1 (apply_subst_d1_d0_d3_d1 _lh_apply_subst_arg1_5)) _lh_apply_subst_Fun_1_5), _lh_apply_subst_Fun_2_5))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d2 _lh_apply_subst_arg1_1_9 _lh_apply_subst_arg2_1_9 =
  (match _lh_apply_subst_arg2_1_9 with
    | `Var(_lh_apply_subst_Var_0_4_9) -> 
      (let rec _lh_matchIdent_1_6_3 = ((find_d1_d0_d3_d2 _lh_apply_subst_Var_0_4_9) _lh_apply_subst_arg1_1_9) in
        (_lh_matchIdent_1_6_3 _lh_apply_subst_Var_0_4_9))
    | `Fun(_lh_apply_subst_Fun_0_1_9, _lh_apply_subst_Fun_1_1_9, _lh_apply_subst_Fun_2_1_9) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_9, ((map_d2_d0_d3_d2 (apply_subst_d1_d0_d3_d2 _lh_apply_subst_arg1_1_9)) _lh_apply_subst_Fun_1_1_9), _lh_apply_subst_Fun_2_1_9))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d3 _lh_apply_subst_arg1_1_0 _lh_apply_subst_arg2_1_0 =
  (match _lh_apply_subst_arg2_1_0 with
    | `Var(_lh_apply_subst_Var_0_3_0) -> 
      (let rec _lh_matchIdent_1_0_9 = ((find_d1_d0_d3_d3 _lh_apply_subst_Var_0_3_0) _lh_apply_subst_arg1_1_0) in
        (_lh_matchIdent_1_0_9 _lh_apply_subst_Var_0_3_0))
    | `Fun(_lh_apply_subst_Fun_0_1_0, _lh_apply_subst_Fun_1_1_0, _lh_apply_subst_Fun_2_1_0) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_0, ((map_d2_d0_d3_d3 (apply_subst_d1_d0_d3_d3 _lh_apply_subst_arg1_1_0)) _lh_apply_subst_Fun_1_1_0), _lh_apply_subst_Fun_2_1_0))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d4 _lh_apply_subst_arg1_1_1 _lh_apply_subst_arg2_1_1 =
  (match _lh_apply_subst_arg2_1_1 with
    | `Var(_lh_apply_subst_Var_0_3_1) -> 
      (let rec _lh_matchIdent_1_1_1 = ((find_d1_d0_d3_d4 _lh_apply_subst_Var_0_3_1) _lh_apply_subst_arg1_1_1) in
        (_lh_matchIdent_1_1_1 _lh_apply_subst_Var_0_3_1))
    | `Fun(_lh_apply_subst_Fun_0_1_1, _lh_apply_subst_Fun_1_1_1, _lh_apply_subst_Fun_2_1_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_1, ((map_d2_d0_d3_d4 (apply_subst_d1_d0_d3_d4 _lh_apply_subst_arg1_1_1)) _lh_apply_subst_Fun_1_1_1), _lh_apply_subst_Fun_2_1_1))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d5 _lh_apply_subst_arg1_4_7 _lh_apply_subst_arg2_4_7 =
  (match _lh_apply_subst_arg2_4_7 with
    | `Var(_lh_apply_subst_Var_0_1_3_3) -> 
      (let rec _lh_matchIdent_3_3_5 = ((find_d1_d0_d3_d5 _lh_apply_subst_Var_0_1_3_3) _lh_apply_subst_arg1_4_7) in
        (_lh_matchIdent_3_3_5 _lh_apply_subst_Var_0_1_3_3))
    | `Fun(_lh_apply_subst_Fun_0_4_7, _lh_apply_subst_Fun_1_4_7, _lh_apply_subst_Fun_2_4_7) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_7, ((map_d2_d0_d3_d5 (apply_subst_d1_d0_d3_d5 _lh_apply_subst_arg1_4_7)) _lh_apply_subst_Fun_1_4_7), _lh_apply_subst_Fun_2_4_7))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d6 _lh_apply_subst_arg1_4 _lh_apply_subst_arg2_4 =
  (match _lh_apply_subst_arg2_4 with
    | `Var(_lh_apply_subst_Var_0_1_8) -> 
      (let rec _lh_matchIdent_8_8 = ((find_d1_d0_d3_d6 _lh_apply_subst_Var_0_1_8) _lh_apply_subst_arg1_4) in
        (_lh_matchIdent_8_8 _lh_apply_subst_Var_0_1_8))
    | `Fun(_lh_apply_subst_Fun_0_4, _lh_apply_subst_Fun_1_4, _lh_apply_subst_Fun_2_4) -> 
      (`Fun(_lh_apply_subst_Fun_0_4, ((map_d2_d0_d3_d6 (apply_subst_d1_d0_d3_d6 _lh_apply_subst_arg1_4)) _lh_apply_subst_Fun_1_4), _lh_apply_subst_Fun_2_4))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d7 _lh_apply_subst_arg1_6_2 _lh_apply_subst_arg2_6_2 =
  (match _lh_apply_subst_arg2_6_2 with
    | `Var(_lh_apply_subst_Var_0_1_9_4) -> 
      (let rec _lh_matchIdent_4_8_2 = ((find_d1_d0_d3_d7 _lh_apply_subst_Var_0_1_9_4) _lh_apply_subst_arg1_6_2) in
        (_lh_matchIdent_4_8_2 _lh_apply_subst_Var_0_1_9_4))
    | `Fun(_lh_apply_subst_Fun_0_6_2, _lh_apply_subst_Fun_1_6_2, _lh_apply_subst_Fun_2_6_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_6_2, ((map_d2_d0_d3_d7 (apply_subst_d1_d0_d3_d7 _lh_apply_subst_arg1_6_2)) _lh_apply_subst_Fun_1_6_2), _lh_apply_subst_Fun_2_6_2))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d8 _lh_apply_subst_arg1_4_0 _lh_apply_subst_arg2_4_0 =
  (match _lh_apply_subst_arg2_4_0 with
    | `Var(_lh_apply_subst_Var_0_1_1_6) -> 
      (let rec _lh_matchIdent_2_9_3 = ((find_d1_d0_d3_d8 _lh_apply_subst_Var_0_1_1_6) _lh_apply_subst_arg1_4_0) in
        (_lh_matchIdent_2_9_3 _lh_apply_subst_Var_0_1_1_6))
    | `Fun(_lh_apply_subst_Fun_0_4_0, _lh_apply_subst_Fun_1_4_0, _lh_apply_subst_Fun_2_4_0) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_0, ((map_d2_d0_d3_d8 (apply_subst_d1_d0_d3_d8 _lh_apply_subst_arg1_4_0)) _lh_apply_subst_Fun_1_4_0), _lh_apply_subst_Fun_2_4_0))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d3_d9 _lh_apply_subst_arg1_2_9 _lh_apply_subst_arg2_2_9 =
  (match _lh_apply_subst_arg2_2_9 with
    | `Var(_lh_apply_subst_Var_0_6_7) -> 
      (let rec _lh_matchIdent_2_1_2 = ((find_d1_d0_d3_d9 _lh_apply_subst_Var_0_6_7) _lh_apply_subst_arg1_2_9) in
        (_lh_matchIdent_2_1_2 _lh_apply_subst_Var_0_6_7))
    | `Fun(_lh_apply_subst_Fun_0_2_9, _lh_apply_subst_Fun_1_2_9, _lh_apply_subst_Fun_2_2_9) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_9, ((map_d2_d0_d3_d9 (apply_subst_d1_d0_d3_d9 _lh_apply_subst_arg1_2_9)) _lh_apply_subst_Fun_1_2_9), _lh_apply_subst_Fun_2_2_9))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4 _lh_apply_subst_arg1_5_6 _lh_apply_subst_arg2_5_6 =
  (match _lh_apply_subst_arg2_5_6 with
    | `Var(_lh_apply_subst_Var_0_1_7_4) -> 
      (let rec _lh_matchIdent_4_5_0 = ((find_d1_d0_d4 _lh_apply_subst_Var_0_1_7_4) _lh_apply_subst_arg1_5_6) in
        (_lh_matchIdent_4_5_0 _lh_apply_subst_Var_0_1_7_4))
    | `Fun(_lh_apply_subst_Fun_0_5_6, _lh_apply_subst_Fun_1_5_6, _lh_apply_subst_Fun_2_5_6) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_6, ((map_d2_d0_d4 (apply_subst_d1_d0_d4 _lh_apply_subst_arg1_5_6)) _lh_apply_subst_Fun_1_5_6), _lh_apply_subst_Fun_2_5_6))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d0 _lh_apply_subst_arg1_4_6 _lh_apply_subst_arg2_4_6 =
  (match _lh_apply_subst_arg2_4_6 with
    | `Var(_lh_apply_subst_Var_0_1_2_8) -> 
      (let rec _lh_matchIdent_3_2_6 = ((find_d1_d0_d4_d0 _lh_apply_subst_Var_0_1_2_8) _lh_apply_subst_arg1_4_6) in
        (_lh_matchIdent_3_2_6 _lh_apply_subst_Var_0_1_2_8))
    | `Fun(_lh_apply_subst_Fun_0_4_6, _lh_apply_subst_Fun_1_4_6, _lh_apply_subst_Fun_2_4_6) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_6, ((map_d2_d0_d4_d0 (apply_subst_d1_d0_d4_d0 _lh_apply_subst_arg1_4_6)) _lh_apply_subst_Fun_1_4_6), _lh_apply_subst_Fun_2_4_6))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d1 _lh_apply_subst_arg1_2_1 _lh_apply_subst_arg2_2_1 =
  (match _lh_apply_subst_arg2_2_1 with
    | `Var(_lh_apply_subst_Var_0_5_5) -> 
      (let rec _lh_matchIdent_1_8_6 = ((find_d1_d0_d4_d1 _lh_apply_subst_Var_0_5_5) _lh_apply_subst_arg1_2_1) in
        (_lh_matchIdent_1_8_6 _lh_apply_subst_Var_0_5_5))
    | `Fun(_lh_apply_subst_Fun_0_2_1, _lh_apply_subst_Fun_1_2_1, _lh_apply_subst_Fun_2_2_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_1, ((map_d2_d0_d4_d1 (apply_subst_d1_d0_d4_d1 _lh_apply_subst_arg1_2_1)) _lh_apply_subst_Fun_1_2_1), _lh_apply_subst_Fun_2_2_1))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d2 _lh_apply_subst_arg1_5_3 _lh_apply_subst_arg2_5_3 =
  (match _lh_apply_subst_arg2_5_3 with
    | `Var(_lh_apply_subst_Var_0_1_4_9) -> 
      (let rec _lh_matchIdent_3_6_0 = ((find_d1_d0_d4_d2 _lh_apply_subst_Var_0_1_4_9) _lh_apply_subst_arg1_5_3) in
        (_lh_matchIdent_3_6_0 _lh_apply_subst_Var_0_1_4_9))
    | `Fun(_lh_apply_subst_Fun_0_5_3, _lh_apply_subst_Fun_1_5_3, _lh_apply_subst_Fun_2_5_3) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_3, ((map_d2_d0_d4_d2 (apply_subst_d1_d0_d4_d2 _lh_apply_subst_arg1_5_3)) _lh_apply_subst_Fun_1_5_3), _lh_apply_subst_Fun_2_5_3))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d3 _lh_apply_subst_arg1_6_0 _lh_apply_subst_arg2_6_0 =
  (match _lh_apply_subst_arg2_6_0 with
    | `Var(_lh_apply_subst_Var_0_1_9_0) -> 
      (let rec _lh_matchIdent_4_7_7 = ((find_d1_d0_d4_d3 _lh_apply_subst_Var_0_1_9_0) _lh_apply_subst_arg1_6_0) in
        (_lh_matchIdent_4_7_7 _lh_apply_subst_Var_0_1_9_0))
    | `Fun(_lh_apply_subst_Fun_0_6_0, _lh_apply_subst_Fun_1_6_0, _lh_apply_subst_Fun_2_6_0) -> 
      (`Fun(_lh_apply_subst_Fun_0_6_0, ((map_d2_d0_d4_d3 (apply_subst_d1_d0_d4_d3 _lh_apply_subst_arg1_6_0)) _lh_apply_subst_Fun_1_6_0), _lh_apply_subst_Fun_2_6_0))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d4 _lh_apply_subst_arg1_4_1 _lh_apply_subst_arg2_4_1 =
  (match _lh_apply_subst_arg2_4_1 with
    | `Var(_lh_apply_subst_Var_0_1_1_7) -> 
      (let rec _lh_matchIdent_3_0_0 = ((find_d1_d0_d4_d4 _lh_apply_subst_Var_0_1_1_7) _lh_apply_subst_arg1_4_1) in
        (_lh_matchIdent_3_0_0 _lh_apply_subst_Var_0_1_1_7))
    | `Fun(_lh_apply_subst_Fun_0_4_1, _lh_apply_subst_Fun_1_4_1, _lh_apply_subst_Fun_2_4_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_1, ((map_d2_d0_d4_d4 (apply_subst_d1_d0_d4_d4 _lh_apply_subst_arg1_4_1)) _lh_apply_subst_Fun_1_4_1), _lh_apply_subst_Fun_2_4_1))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d5 _lh_apply_subst_arg1_4_3 _lh_apply_subst_arg2_4_3 =
  (match _lh_apply_subst_arg2_4_3 with
    | `Var(_lh_apply_subst_Var_0_1_2_5) -> 
      (let rec _lh_matchIdent_3_1_2 = ((find_d1_d0_d4_d5 _lh_apply_subst_Var_0_1_2_5) _lh_apply_subst_arg1_4_3) in
        (_lh_matchIdent_3_1_2 _lh_apply_subst_Var_0_1_2_5))
    | `Fun(_lh_apply_subst_Fun_0_4_3, _lh_apply_subst_Fun_1_4_3, _lh_apply_subst_Fun_2_4_3) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_3, ((map_d2_d0_d4_d5 (apply_subst_d1_d0_d4_d5 _lh_apply_subst_arg1_4_3)) _lh_apply_subst_Fun_1_4_3), _lh_apply_subst_Fun_2_4_3))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d6 _lh_apply_subst_arg1_4_9 _lh_apply_subst_arg2_4_9 =
  (match _lh_apply_subst_arg2_4_9 with
    | `Var(_lh_apply_subst_Var_0_1_4_3) -> 
      (let rec _lh_matchIdent_3_4_8 = ((find_d1_d0_d4_d6 _lh_apply_subst_Var_0_1_4_3) _lh_apply_subst_arg1_4_9) in
        (_lh_matchIdent_3_4_8 _lh_apply_subst_Var_0_1_4_3))
    | `Fun(_lh_apply_subst_Fun_0_4_9, _lh_apply_subst_Fun_1_4_9, _lh_apply_subst_Fun_2_4_9) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_9, ((map_d2_d0_d4_d6 (apply_subst_d1_d0_d4_d6 _lh_apply_subst_arg1_4_9)) _lh_apply_subst_Fun_1_4_9), _lh_apply_subst_Fun_2_4_9))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d7 _lh_apply_subst_arg1_4_8 _lh_apply_subst_arg2_4_8 =
  (match _lh_apply_subst_arg2_4_8 with
    | `Var(_lh_apply_subst_Var_0_1_3_8) -> 
      (let rec _lh_matchIdent_3_4_3 = ((find_d1_d0_d4_d7 _lh_apply_subst_Var_0_1_3_8) _lh_apply_subst_arg1_4_8) in
        (_lh_matchIdent_3_4_3 _lh_apply_subst_Var_0_1_3_8))
    | `Fun(_lh_apply_subst_Fun_0_4_8, _lh_apply_subst_Fun_1_4_8, _lh_apply_subst_Fun_2_4_8) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_8, ((map_d2_d0_d4_d7 (apply_subst_d1_d0_d4_d7 _lh_apply_subst_arg1_4_8)) _lh_apply_subst_Fun_1_4_8), _lh_apply_subst_Fun_2_4_8))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d8 _lh_apply_subst_arg1_1_3 _lh_apply_subst_arg2_1_3 =
  (match _lh_apply_subst_arg2_1_3 with
    | `Var(_lh_apply_subst_Var_0_3_3) -> 
      (let rec _lh_matchIdent_1_1_8 = ((find_d1_d0_d4_d8 _lh_apply_subst_Var_0_3_3) _lh_apply_subst_arg1_1_3) in
        (_lh_matchIdent_1_1_8 _lh_apply_subst_Var_0_3_3))
    | `Fun(_lh_apply_subst_Fun_0_1_3, _lh_apply_subst_Fun_1_1_3, _lh_apply_subst_Fun_2_1_3) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_3, ((map_d2_d0_d4_d8 (apply_subst_d1_d0_d4_d8 _lh_apply_subst_arg1_1_3)) _lh_apply_subst_Fun_1_1_3), _lh_apply_subst_Fun_2_1_3))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d4_d9 _lh_apply_subst_arg1_8 _lh_apply_subst_arg2_8 =
  (match _lh_apply_subst_arg2_8 with
    | `Var(_lh_apply_subst_Var_0_2_6) -> 
      (let rec _lh_matchIdent_1_0_5 = ((find_d1_d0_d4_d9 _lh_apply_subst_Var_0_2_6) _lh_apply_subst_arg1_8) in
        (_lh_matchIdent_1_0_5 _lh_apply_subst_Var_0_2_6))
    | `Fun(_lh_apply_subst_Fun_0_8, _lh_apply_subst_Fun_1_8, _lh_apply_subst_Fun_2_8) -> 
      (`Fun(_lh_apply_subst_Fun_0_8, ((map_d2_d0_d4_d9 (apply_subst_d1_d0_d4_d9 _lh_apply_subst_arg1_8)) _lh_apply_subst_Fun_1_8), _lh_apply_subst_Fun_2_8))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5 _lh_apply_subst_arg1_2_4 _lh_apply_subst_arg2_2_4 =
  (match _lh_apply_subst_arg2_2_4 with
    | `Var(_lh_apply_subst_Var_0_6_0) -> 
      (let rec _lh_matchIdent_2_0_0 = ((find_d1_d0_d5 _lh_apply_subst_Var_0_6_0) _lh_apply_subst_arg1_2_4) in
        (_lh_matchIdent_2_0_0 _lh_apply_subst_Var_0_6_0))
    | `Fun(_lh_apply_subst_Fun_0_2_4, _lh_apply_subst_Fun_1_2_4, _lh_apply_subst_Fun_2_2_4) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_4, ((map_d2_d0_d5 (apply_subst_d1_d0_d5 _lh_apply_subst_arg1_2_4)) _lh_apply_subst_Fun_1_2_4), _lh_apply_subst_Fun_2_2_4))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d0 _lh_apply_subst_arg1_3_6 _lh_apply_subst_arg2_3_6 =
  (match _lh_apply_subst_arg2_3_6 with
    | `Var(_lh_apply_subst_Var_0_1_0_0) -> 
      (let rec _lh_matchIdent_2_7_0 = ((find_d1_d0_d5_d0 _lh_apply_subst_Var_0_1_0_0) _lh_apply_subst_arg1_3_6) in
        (_lh_matchIdent_2_7_0 _lh_apply_subst_Var_0_1_0_0))
    | `Fun(_lh_apply_subst_Fun_0_3_6, _lh_apply_subst_Fun_1_3_6, _lh_apply_subst_Fun_2_3_6) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_6, ((map_d2_d0_d5_d0 (apply_subst_d1_d0_d5_d0 _lh_apply_subst_arg1_3_6)) _lh_apply_subst_Fun_1_3_6), _lh_apply_subst_Fun_2_3_6))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d1 _lh_apply_subst_arg1_3 _lh_apply_subst_arg2_3 =
  (match _lh_apply_subst_arg2_3 with
    | `Var(_lh_apply_subst_Var_0_1_3) -> 
      (let rec _lh_matchIdent_7_3 = ((find_d1_d0_d5_d1 _lh_apply_subst_Var_0_1_3) _lh_apply_subst_arg1_3) in
        (_lh_matchIdent_7_3 _lh_apply_subst_Var_0_1_3))
    | `Fun(_lh_apply_subst_Fun_0_3, _lh_apply_subst_Fun_1_3, _lh_apply_subst_Fun_2_3) -> 
      (`Fun(_lh_apply_subst_Fun_0_3, ((map_d2_d0_d5_d1 (apply_subst_d1_d0_d5_d1 _lh_apply_subst_arg1_3)) _lh_apply_subst_Fun_1_3), _lh_apply_subst_Fun_2_3))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d2 _lh_apply_subst_arg1_2_5 _lh_apply_subst_arg2_2_5 =
  (match _lh_apply_subst_arg2_2_5 with
    | `Var(_lh_apply_subst_Var_0_6_1) -> 
      (let rec _lh_matchIdent_2_0_5 = ((find_d1_d0_d5_d2 _lh_apply_subst_Var_0_6_1) _lh_apply_subst_arg1_2_5) in
        (_lh_matchIdent_2_0_5 _lh_apply_subst_Var_0_6_1))
    | `Fun(_lh_apply_subst_Fun_0_2_5, _lh_apply_subst_Fun_1_2_5, _lh_apply_subst_Fun_2_2_5) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_5, ((map_d2_d0_d5_d2 (apply_subst_d1_d0_d5_d2 _lh_apply_subst_arg1_2_5)) _lh_apply_subst_Fun_1_2_5), _lh_apply_subst_Fun_2_2_5))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d3 _lh_apply_subst_arg1_6 _lh_apply_subst_arg2_6 =
  (match _lh_apply_subst_arg2_6 with
    | `Var(_lh_apply_subst_Var_0_2_4) -> 
      (let rec _lh_matchIdent_1_0_3 = ((find_d1_d0_d5_d3 _lh_apply_subst_Var_0_2_4) _lh_apply_subst_arg1_6) in
        (_lh_matchIdent_1_0_3 _lh_apply_subst_Var_0_2_4))
    | `Fun(_lh_apply_subst_Fun_0_6, _lh_apply_subst_Fun_1_6, _lh_apply_subst_Fun_2_6) -> 
      (`Fun(_lh_apply_subst_Fun_0_6, ((map_d2_d0_d5_d3 (apply_subst_d1_d0_d5_d3 _lh_apply_subst_arg1_6)) _lh_apply_subst_Fun_1_6), _lh_apply_subst_Fun_2_6))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d4 _lh_apply_subst_arg1_4_4 _lh_apply_subst_arg2_4_4 =
  (match _lh_apply_subst_arg2_4_4 with
    | `Var(_lh_apply_subst_Var_0_1_2_6) -> 
      (let rec _lh_matchIdent_3_1_7 = ((find_d1_d0_d5_d4 _lh_apply_subst_Var_0_1_2_6) _lh_apply_subst_arg1_4_4) in
        (_lh_matchIdent_3_1_7 _lh_apply_subst_Var_0_1_2_6))
    | `Fun(_lh_apply_subst_Fun_0_4_4, _lh_apply_subst_Fun_1_4_4, _lh_apply_subst_Fun_2_4_4) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_4, ((map_d2_d0_d5_d4 (apply_subst_d1_d0_d5_d4 _lh_apply_subst_arg1_4_4)) _lh_apply_subst_Fun_1_4_4), _lh_apply_subst_Fun_2_4_4))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d5 _lh_apply_subst_arg1_1_6 _lh_apply_subst_arg2_1_6 =
  (match _lh_apply_subst_arg2_1_6 with
    | `Var(_lh_apply_subst_Var_0_4_6) -> 
      (let rec _lh_matchIdent_1_4_3 = ((find_d1_d0_d5_d5 _lh_apply_subst_Var_0_4_6) _lh_apply_subst_arg1_1_6) in
        (_lh_matchIdent_1_4_3 _lh_apply_subst_Var_0_4_6))
    | `Fun(_lh_apply_subst_Fun_0_1_6, _lh_apply_subst_Fun_1_1_6, _lh_apply_subst_Fun_2_1_6) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_6, ((map_d2_d0_d5_d5 (apply_subst_d1_d0_d5_d5 _lh_apply_subst_arg1_1_6)) _lh_apply_subst_Fun_1_1_6), _lh_apply_subst_Fun_2_1_6))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d6 _lh_apply_subst_arg1_3_5 _lh_apply_subst_arg2_3_5 =
  (match _lh_apply_subst_arg2_3_5 with
    | `Var(_lh_apply_subst_Var_0_9_9) -> 
      (let rec _lh_matchIdent_2_6_9 = ((find_d1_d0_d5_d6 _lh_apply_subst_Var_0_9_9) _lh_apply_subst_arg1_3_5) in
        (_lh_matchIdent_2_6_9 _lh_apply_subst_Var_0_9_9))
    | `Fun(_lh_apply_subst_Fun_0_3_5, _lh_apply_subst_Fun_1_3_5, _lh_apply_subst_Fun_2_3_5) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_5, ((map_d2_d0_d5_d6 (apply_subst_d1_d0_d5_d6 _lh_apply_subst_arg1_3_5)) _lh_apply_subst_Fun_1_3_5), _lh_apply_subst_Fun_2_3_5))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d7 _lh_apply_subst_arg1_4_5 _lh_apply_subst_arg2_4_5 =
  (match _lh_apply_subst_arg2_4_5 with
    | `Var(_lh_apply_subst_Var_0_1_2_7) -> 
      (let rec _lh_matchIdent_3_2_4 = ((find_d1_d0_d5_d7 _lh_apply_subst_Var_0_1_2_7) _lh_apply_subst_arg1_4_5) in
        (_lh_matchIdent_3_2_4 _lh_apply_subst_Var_0_1_2_7))
    | `Fun(_lh_apply_subst_Fun_0_4_5, _lh_apply_subst_Fun_1_4_5, _lh_apply_subst_Fun_2_4_5) -> 
      (`Fun(_lh_apply_subst_Fun_0_4_5, ((map_d2_d0_d5_d7 (apply_subst_d1_d0_d5_d7 _lh_apply_subst_arg1_4_5)) _lh_apply_subst_Fun_1_4_5), _lh_apply_subst_Fun_2_4_5))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d8 _lh_apply_subst_arg1_9 _lh_apply_subst_arg2_9 =
  (match _lh_apply_subst_arg2_9 with
    | `Var(_lh_apply_subst_Var_0_2_7) -> 
      (let rec _lh_matchIdent_1_0_7 = ((find_d1_d0_d5_d8 _lh_apply_subst_Var_0_2_7) _lh_apply_subst_arg1_9) in
        (_lh_matchIdent_1_0_7 _lh_apply_subst_Var_0_2_7))
    | `Fun(_lh_apply_subst_Fun_0_9, _lh_apply_subst_Fun_1_9, _lh_apply_subst_Fun_2_9) -> 
      (`Fun(_lh_apply_subst_Fun_0_9, ((map_d2_d0_d5_d8 (apply_subst_d1_d0_d5_d8 _lh_apply_subst_arg1_9)) _lh_apply_subst_Fun_1_9), _lh_apply_subst_Fun_2_9))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d5_d9 _lh_apply_subst_arg1_5_8 _lh_apply_subst_arg2_5_8 =
  (match _lh_apply_subst_arg2_5_8 with
    | `Var(_lh_apply_subst_Var_0_1_8_4) -> 
      (let rec _lh_matchIdent_4_6_7 = ((find_d1_d0_d5_d9 _lh_apply_subst_Var_0_1_8_4) _lh_apply_subst_arg1_5_8) in
        (_lh_matchIdent_4_6_7 _lh_apply_subst_Var_0_1_8_4))
    | `Fun(_lh_apply_subst_Fun_0_5_8, _lh_apply_subst_Fun_1_5_8, _lh_apply_subst_Fun_2_5_8) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_8, ((map_d2_d0_d5_d9 (apply_subst_d1_d0_d5_d9 _lh_apply_subst_arg1_5_8)) _lh_apply_subst_Fun_1_5_8), _lh_apply_subst_Fun_2_5_8))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d6 _lh_apply_subst_arg1_5_5 _lh_apply_subst_arg2_5_5 =
  (match _lh_apply_subst_arg2_5_5 with
    | `Var(_lh_apply_subst_Var_0_1_6_7) -> 
      (let rec _lh_matchIdent_4_4_6 = ((find_d1_d0_d6 _lh_apply_subst_Var_0_1_6_7) _lh_apply_subst_arg1_5_5) in
        (_lh_matchIdent_4_4_6 _lh_apply_subst_Var_0_1_6_7))
    | `Fun(_lh_apply_subst_Fun_0_5_5, _lh_apply_subst_Fun_1_5_5, _lh_apply_subst_Fun_2_5_5) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_5, ((map_d2_d0_d6 (apply_subst_d1_d0_d6 _lh_apply_subst_arg1_5_5)) _lh_apply_subst_Fun_1_5_5), _lh_apply_subst_Fun_2_5_5))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d6_d0 _lh_apply_subst_arg1_1_5 _lh_apply_subst_arg2_1_5 =
  (match _lh_apply_subst_arg2_1_5 with
    | `Var(_lh_apply_subst_Var_0_4_3) -> 
      (let rec _lh_matchIdent_1_3_8 = ((find_d1_d0_d6_d0 _lh_apply_subst_Var_0_4_3) _lh_apply_subst_arg1_1_5) in
        (_lh_matchIdent_1_3_8 _lh_apply_subst_Var_0_4_3))
    | `Fun(_lh_apply_subst_Fun_0_1_5, _lh_apply_subst_Fun_1_1_5, _lh_apply_subst_Fun_2_1_5) -> 
      (`Fun(_lh_apply_subst_Fun_0_1_5, ((map_d2_d0_d6_d0 (apply_subst_d1_d0_d6_d0 _lh_apply_subst_arg1_1_5)) _lh_apply_subst_Fun_1_1_5), _lh_apply_subst_Fun_2_1_5))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d7 _lh_apply_subst_arg1_3_2 _lh_apply_subst_arg2_3_2 =
  (match _lh_apply_subst_arg2_3_2 with
    | `Var(_lh_apply_subst_Var_0_7_4) -> 
      (let rec _lh_matchIdent_2_2_8 = ((find_d1_d0_d7 _lh_apply_subst_Var_0_7_4) _lh_apply_subst_arg1_3_2) in
        (_lh_matchIdent_2_2_8 _lh_apply_subst_Var_0_7_4))
    | `Fun(_lh_apply_subst_Fun_0_3_2, _lh_apply_subst_Fun_1_3_2, _lh_apply_subst_Fun_2_3_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_3_2, ((map_d2_d0_d7 (apply_subst_d1_d0_d7 _lh_apply_subst_arg1_3_2)) _lh_apply_subst_Fun_1_3_2), _lh_apply_subst_Fun_2_3_2))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d8 _lh_apply_subst_arg1_2_2 _lh_apply_subst_arg2_2_2 =
  (match _lh_apply_subst_arg2_2_2 with
    | `Var(_lh_apply_subst_Var_0_5_8) -> 
      (let rec _lh_matchIdent_1_9_2 = ((find_d1_d0_d8 _lh_apply_subst_Var_0_5_8) _lh_apply_subst_arg1_2_2) in
        (_lh_matchIdent_1_9_2 _lh_apply_subst_Var_0_5_8))
    | `Fun(_lh_apply_subst_Fun_0_2_2, _lh_apply_subst_Fun_1_2_2, _lh_apply_subst_Fun_2_2_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_2_2, ((map_d2_d0_d8 (apply_subst_d1_d0_d8 _lh_apply_subst_arg1_2_2)) _lh_apply_subst_Fun_1_2_2), _lh_apply_subst_Fun_2_2_2))
    | _ -> 
      (failwith "error"))
and apply_subst_d1_d0_d9 _lh_apply_subst_arg1_5_9 _lh_apply_subst_arg2_5_9 =
  (match _lh_apply_subst_arg2_5_9 with
    | `Var(_lh_apply_subst_Var_0_1_8_7) -> 
      (let rec _lh_matchIdent_4_7_2 = ((find_d1_d0_d9 _lh_apply_subst_Var_0_1_8_7) _lh_apply_subst_arg1_5_9) in
        (_lh_matchIdent_4_7_2 _lh_apply_subst_Var_0_1_8_7))
    | `Fun(_lh_apply_subst_Fun_0_5_9, _lh_apply_subst_Fun_1_5_9, _lh_apply_subst_Fun_2_5_9) -> 
      (`Fun(_lh_apply_subst_Fun_0_5_9, ((map_d2_d0_d9 (apply_subst_d1_d0_d9 _lh_apply_subst_arg1_5_9)) _lh_apply_subst_Fun_1_5_9), _lh_apply_subst_Fun_2_5_9))
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
and find_d2_d0_d0 _lh_find_arg1_1_0_7 _lh_find_arg2_9_6 =
  (match _lh_find_arg2_9_6 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_9_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_9_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_4_0 _lh_one_way_unify1_arg3_1_4_0 _lh_one_way_unify1_Var_0_1_4_0 -> 
            (if _lh_one_way_unify1_LH_P2_0_9_6 then
              (`LH_P2(((termEq_d0_d0_d0 _lh_one_way_unify1_arg1_1_4_0) _lh_one_way_unify1_LH_P2_1_9_6), _lh_one_way_unify1_arg3_1_4_0))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_4_0, _lh_one_way_unify1_arg1_1_4_0)), _lh_one_way_unify1_arg3_1_4_0))))))))
    | `LH_C(_lh_find_LH_C_0_9_5, _lh_find_LH_C_1_1_0_0) -> 
      (match _lh_find_LH_C_0_9_5 with
        | `LH_P2(_lh_find_LH_P2_0_9_5, _lh_find_LH_P2_1_9_5) -> 
          (if (_lh_find_arg1_1_0_7 = _lh_find_LH_P2_0_9_5) then
            (let rec _lh_one_way_unify1_LH_P2_0_9_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_9_7 = _lh_find_LH_P2_1_9_5 in
                (fun _lh_one_way_unify1_arg1_1_4_1 _lh_one_way_unify1_arg3_1_4_1 _lh_one_way_unify1_Var_0_1_4_1 -> 
                  (if _lh_one_way_unify1_LH_P2_0_9_7 then
                    (`LH_P2(((termEq_d0_d0_d1 _lh_one_way_unify1_arg1_1_4_1) _lh_one_way_unify1_LH_P2_1_9_7), _lh_one_way_unify1_arg3_1_4_1))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_4_1, _lh_one_way_unify1_arg1_1_4_1)), _lh_one_way_unify1_arg3_1_4_1))))))))
          else
            ((find_d2_d0_d0 _lh_find_arg1_1_0_7) _lh_find_LH_C_1_1_0_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1 _lh_find_arg1_8_0 _lh_find_arg2_6_9 =
  (match _lh_find_arg2_6_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_7_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_7_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_0_8 _lh_one_way_unify1_arg3_1_0_8 _lh_one_way_unify1_Var_0_1_0_8 -> 
            (if _lh_one_way_unify1_LH_P2_0_7_2 then
              (`LH_P2(((termEq_d0_d0_d2 _lh_one_way_unify1_arg1_1_0_8) _lh_one_way_unify1_LH_P2_1_7_2), _lh_one_way_unify1_arg3_1_0_8))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_0_8, _lh_one_way_unify1_arg1_1_0_8)), _lh_one_way_unify1_arg3_1_0_8))))))))
    | `LH_C(_lh_find_LH_C_0_6_9, _lh_find_LH_C_1_7_4) -> 
      (match _lh_find_LH_C_0_6_9 with
        | `LH_P2(_lh_find_LH_P2_0_6_9, _lh_find_LH_P2_1_6_9) -> 
          (if (_lh_find_arg1_8_0 = _lh_find_LH_P2_0_6_9) then
            (let rec _lh_one_way_unify1_LH_P2_0_7_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_7_3 = _lh_find_LH_P2_1_6_9 in
                (fun _lh_one_way_unify1_arg1_1_0_9 _lh_one_way_unify1_arg3_1_0_9 _lh_one_way_unify1_Var_0_1_0_9 -> 
                  (if _lh_one_way_unify1_LH_P2_0_7_3 then
                    (`LH_P2(((termEq_d0_d0_d3 _lh_one_way_unify1_arg1_1_0_9) _lh_one_way_unify1_LH_P2_1_7_3), _lh_one_way_unify1_arg3_1_0_9))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_0_9, _lh_one_way_unify1_arg1_1_0_9)), _lh_one_way_unify1_arg3_1_0_9))))))))
          else
            ((find_d2_d0_d1 _lh_find_arg1_8_0) _lh_find_LH_C_1_7_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d0 _lh_find_arg1_1_4_6 _lh_find_arg2_1_2_4 =
  (match _lh_find_arg2_1_2_4 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_1_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_1_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_7_1 _lh_one_way_unify1_arg3_1_7_1 _lh_one_way_unify1_Var_0_1_7_1 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_1_4 then
              (`LH_P2(((termEq_d0_d0_d2_d0 _lh_one_way_unify1_arg1_1_7_1) _lh_one_way_unify1_LH_P2_1_1_1_4), _lh_one_way_unify1_arg3_1_7_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_7_1, _lh_one_way_unify1_arg1_1_7_1)), _lh_one_way_unify1_arg3_1_7_1))))))))
    | `LH_C(_lh_find_LH_C_0_1_2_7, _lh_find_LH_C_1_1_3_7) -> 
      (match _lh_find_LH_C_0_1_2_7 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_7, _lh_find_LH_P2_1_1_2_7) -> 
          (if (_lh_find_arg1_1_4_6 = _lh_find_LH_P2_0_1_2_7) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_1_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_1_5 = _lh_find_LH_P2_1_1_2_7 in
                (fun _lh_one_way_unify1_arg1_1_7_2 _lh_one_way_unify1_arg3_1_7_2 _lh_one_way_unify1_Var_0_1_7_2 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_1_5 then
                    (`LH_P2(((termEq_d0_d0_d2_d1 _lh_one_way_unify1_arg1_1_7_2) _lh_one_way_unify1_LH_P2_1_1_1_5), _lh_one_way_unify1_arg3_1_7_2))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_7_2, _lh_one_way_unify1_arg1_1_7_2)), _lh_one_way_unify1_arg3_1_7_2))))))))
          else
            ((find_d2_d0_d1_d0 _lh_find_arg1_1_4_6) _lh_find_LH_C_1_1_3_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d1 _lh_find_arg1_2_6 _lh_find_arg2_1_5 =
  (match _lh_find_arg2_1_5 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_2_3 _lh_one_way_unify1_arg3_2_3 _lh_one_way_unify1_Var_0_2_3 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_6 then
              (`LH_P2(((termEq_d0_d0_d2_d2 _lh_one_way_unify1_arg1_2_3) _lh_one_way_unify1_LH_P2_1_1_6), _lh_one_way_unify1_arg3_2_3))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_2_3, _lh_one_way_unify1_arg1_2_3)), _lh_one_way_unify1_arg3_2_3))))))))
    | `LH_C(_lh_find_LH_C_0_1_9, _lh_find_LH_C_1_2_4) -> 
      (match _lh_find_LH_C_0_1_9 with
        | `LH_P2(_lh_find_LH_P2_0_1_9, _lh_find_LH_P2_1_1_9) -> 
          (if (_lh_find_arg1_2_6 = _lh_find_LH_P2_0_1_9) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_7 = _lh_find_LH_P2_1_1_9 in
                (fun _lh_one_way_unify1_arg1_2_4 _lh_one_way_unify1_arg3_2_4 _lh_one_way_unify1_Var_0_2_4 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_7 then
                    (`LH_P2(((termEq_d0_d0_d2_d3 _lh_one_way_unify1_arg1_2_4) _lh_one_way_unify1_LH_P2_1_1_7), _lh_one_way_unify1_arg3_2_4))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_2_4, _lh_one_way_unify1_arg1_2_4)), _lh_one_way_unify1_arg3_2_4))))))))
          else
            ((find_d2_d0_d1_d1 _lh_find_arg1_2_6) _lh_find_LH_C_1_2_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d2 _lh_find_arg1_1_1_7 _lh_find_arg2_1_0_6 =
  (match _lh_find_arg2_1_0_6 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_0_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_0_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_5_3 _lh_one_way_unify1_arg3_1_5_3 _lh_one_way_unify1_Var_0_1_5_3 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_0_2 then
              (`LH_P2(((termEq_d0_d0_d2_d4 _lh_one_way_unify1_arg1_1_5_3) _lh_one_way_unify1_LH_P2_1_1_0_2), _lh_one_way_unify1_arg3_1_5_3))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_5_3, _lh_one_way_unify1_arg1_1_5_3)), _lh_one_way_unify1_arg3_1_5_3))))))))
    | `LH_C(_lh_find_LH_C_0_1_0_4, _lh_find_LH_C_1_1_0_9) -> 
      (match _lh_find_LH_C_0_1_0_4 with
        | `LH_P2(_lh_find_LH_P2_0_1_0_4, _lh_find_LH_P2_1_1_0_4) -> 
          (if (_lh_find_arg1_1_1_7 = _lh_find_LH_P2_0_1_0_4) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_0_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_0_3 = _lh_find_LH_P2_1_1_0_4 in
                (fun _lh_one_way_unify1_arg1_1_5_4 _lh_one_way_unify1_arg3_1_5_4 _lh_one_way_unify1_Var_0_1_5_4 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_0_3 then
                    (`LH_P2(((termEq_d0_d0_d2_d5 _lh_one_way_unify1_arg1_1_5_4) _lh_one_way_unify1_LH_P2_1_1_0_3), _lh_one_way_unify1_arg3_1_5_4))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_5_4, _lh_one_way_unify1_arg1_1_5_4)), _lh_one_way_unify1_arg3_1_5_4))))))))
          else
            ((find_d2_d0_d1_d2 _lh_find_arg1_1_1_7) _lh_find_LH_C_1_1_0_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d3 _lh_find_arg1_5_2 _lh_find_arg2_4_1 =
  (match _lh_find_arg2_4_1 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_5_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_5_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_7_2 _lh_one_way_unify1_arg3_7_2 _lh_one_way_unify1_Var_0_7_2 -> 
            (if _lh_one_way_unify1_LH_P2_0_5_2 then
              (`LH_P2(((termEq_d0_d0_d2_d6 _lh_one_way_unify1_arg1_7_2) _lh_one_way_unify1_LH_P2_1_5_2), _lh_one_way_unify1_arg3_7_2))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_7_2, _lh_one_way_unify1_arg1_7_2)), _lh_one_way_unify1_arg3_7_2))))))))
    | `LH_C(_lh_find_LH_C_0_4_4, _lh_find_LH_C_1_4_9) -> 
      (match _lh_find_LH_C_0_4_4 with
        | `LH_P2(_lh_find_LH_P2_0_4_4, _lh_find_LH_P2_1_4_4) -> 
          (if (_lh_find_arg1_5_2 = _lh_find_LH_P2_0_4_4) then
            (let rec _lh_one_way_unify1_LH_P2_0_5_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_5_3 = _lh_find_LH_P2_1_4_4 in
                (fun _lh_one_way_unify1_arg1_7_3 _lh_one_way_unify1_arg3_7_3 _lh_one_way_unify1_Var_0_7_3 -> 
                  (if _lh_one_way_unify1_LH_P2_0_5_3 then
                    (`LH_P2(((termEq_d0_d0_d2_d7 _lh_one_way_unify1_arg1_7_3) _lh_one_way_unify1_LH_P2_1_5_3), _lh_one_way_unify1_arg3_7_3))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_7_3, _lh_one_way_unify1_arg1_7_3)), _lh_one_way_unify1_arg3_7_3))))))))
          else
            ((find_d2_d0_d1_d3 _lh_find_arg1_5_2) _lh_find_LH_C_1_4_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d4 _lh_find_arg1_4_6 _lh_find_arg2_3_5 =
  (match _lh_find_arg2_3_5 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_4_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_4_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_6_0 _lh_one_way_unify1_arg3_6_0 _lh_one_way_unify1_Var_0_6_0 -> 
            (if _lh_one_way_unify1_LH_P2_0_4_2 then
              (`LH_P2(((termEq_d0_d0_d2_d8 _lh_one_way_unify1_arg1_6_0) _lh_one_way_unify1_LH_P2_1_4_2), _lh_one_way_unify1_arg3_6_0))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_6_0, _lh_one_way_unify1_arg1_6_0)), _lh_one_way_unify1_arg3_6_0))))))))
    | `LH_C(_lh_find_LH_C_0_3_8, _lh_find_LH_C_1_4_3) -> 
      (match _lh_find_LH_C_0_3_8 with
        | `LH_P2(_lh_find_LH_P2_0_3_8, _lh_find_LH_P2_1_3_8) -> 
          (if (_lh_find_arg1_4_6 = _lh_find_LH_P2_0_3_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_4_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_4_3 = _lh_find_LH_P2_1_3_8 in
                (fun _lh_one_way_unify1_arg1_6_1 _lh_one_way_unify1_arg3_6_1 _lh_one_way_unify1_Var_0_6_1 -> 
                  (if _lh_one_way_unify1_LH_P2_0_4_3 then
                    (`LH_P2(((termEq_d0_d0_d2_d9 _lh_one_way_unify1_arg1_6_1) _lh_one_way_unify1_LH_P2_1_4_3), _lh_one_way_unify1_arg3_6_1))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_6_1, _lh_one_way_unify1_arg1_6_1)), _lh_one_way_unify1_arg3_6_1))))))))
          else
            ((find_d2_d0_d1_d4 _lh_find_arg1_4_6) _lh_find_LH_C_1_4_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d5 _lh_find_arg1_3_8 _lh_find_arg2_2_7 =
  (match _lh_find_arg2_2_7 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_3_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_3_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_4_6 _lh_one_way_unify1_arg3_4_6 _lh_one_way_unify1_Var_0_4_6 -> 
            (if _lh_one_way_unify1_LH_P2_0_3_0 then
              (`LH_P2(((termEq_d0_d0_d3_d0 _lh_one_way_unify1_arg1_4_6) _lh_one_way_unify1_LH_P2_1_3_0), _lh_one_way_unify1_arg3_4_6))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_4_6, _lh_one_way_unify1_arg1_4_6)), _lh_one_way_unify1_arg3_4_6))))))))
    | `LH_C(_lh_find_LH_C_0_3_1, _lh_find_LH_C_1_3_6) -> 
      (match _lh_find_LH_C_0_3_1 with
        | `LH_P2(_lh_find_LH_P2_0_3_1, _lh_find_LH_P2_1_3_1) -> 
          (if (_lh_find_arg1_3_8 = _lh_find_LH_P2_0_3_1) then
            (let rec _lh_one_way_unify1_LH_P2_0_3_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_3_1 = _lh_find_LH_P2_1_3_1 in
                (fun _lh_one_way_unify1_arg1_4_7 _lh_one_way_unify1_arg3_4_7 _lh_one_way_unify1_Var_0_4_7 -> 
                  (if _lh_one_way_unify1_LH_P2_0_3_1 then
                    (`LH_P2(((termEq_d0_d0_d3_d1 _lh_one_way_unify1_arg1_4_7) _lh_one_way_unify1_LH_P2_1_3_1), _lh_one_way_unify1_arg3_4_7))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_4_7, _lh_one_way_unify1_arg1_4_7)), _lh_one_way_unify1_arg3_4_7))))))))
          else
            ((find_d2_d0_d1_d5 _lh_find_arg1_3_8) _lh_find_LH_C_1_3_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d6 _lh_find_arg1_4_0 _lh_find_arg2_2_9 =
  (match _lh_find_arg2_2_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_3_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_3_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_4_9 _lh_one_way_unify1_arg3_4_9 _lh_one_way_unify1_Var_0_4_9 -> 
            (if _lh_one_way_unify1_LH_P2_0_3_2 then
              (`LH_P2(((termEq_d0_d0_d3_d2 _lh_one_way_unify1_arg1_4_9) _lh_one_way_unify1_LH_P2_1_3_2), _lh_one_way_unify1_arg3_4_9))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_4_9, _lh_one_way_unify1_arg1_4_9)), _lh_one_way_unify1_arg3_4_9))))))))
    | `LH_C(_lh_find_LH_C_0_3_3, _lh_find_LH_C_1_3_8) -> 
      (match _lh_find_LH_C_0_3_3 with
        | `LH_P2(_lh_find_LH_P2_0_3_3, _lh_find_LH_P2_1_3_3) -> 
          (if (_lh_find_arg1_4_0 = _lh_find_LH_P2_0_3_3) then
            (let rec _lh_one_way_unify1_LH_P2_0_3_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_3_3 = _lh_find_LH_P2_1_3_3 in
                (fun _lh_one_way_unify1_arg1_5_0 _lh_one_way_unify1_arg3_5_0 _lh_one_way_unify1_Var_0_5_0 -> 
                  (if _lh_one_way_unify1_LH_P2_0_3_3 then
                    (`LH_P2(((termEq_d0_d0_d3_d3 _lh_one_way_unify1_arg1_5_0) _lh_one_way_unify1_LH_P2_1_3_3), _lh_one_way_unify1_arg3_5_0))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5_0, _lh_one_way_unify1_arg1_5_0)), _lh_one_way_unify1_arg3_5_0))))))))
          else
            ((find_d2_d0_d1_d6 _lh_find_arg1_4_0) _lh_find_LH_C_1_3_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d7 _lh_find_arg1_4_9 _lh_find_arg2_3_8 =
  (match _lh_find_arg2_3_8 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_4_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_4_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_6_7 _lh_one_way_unify1_arg3_6_7 _lh_one_way_unify1_Var_0_6_7 -> 
            (if _lh_one_way_unify1_LH_P2_0_4_8 then
              (`LH_P2(((termEq_d0_d0_d3_d4 _lh_one_way_unify1_arg1_6_7) _lh_one_way_unify1_LH_P2_1_4_8), _lh_one_way_unify1_arg3_6_7))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_6_7, _lh_one_way_unify1_arg1_6_7)), _lh_one_way_unify1_arg3_6_7))))))))
    | `LH_C(_lh_find_LH_C_0_4_1, _lh_find_LH_C_1_4_6) -> 
      (match _lh_find_LH_C_0_4_1 with
        | `LH_P2(_lh_find_LH_P2_0_4_1, _lh_find_LH_P2_1_4_1) -> 
          (if (_lh_find_arg1_4_9 = _lh_find_LH_P2_0_4_1) then
            (let rec _lh_one_way_unify1_LH_P2_0_4_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_4_9 = _lh_find_LH_P2_1_4_1 in
                (fun _lh_one_way_unify1_arg1_6_8 _lh_one_way_unify1_arg3_6_8 _lh_one_way_unify1_Var_0_6_8 -> 
                  (if _lh_one_way_unify1_LH_P2_0_4_9 then
                    (`LH_P2(((termEq_d0_d0_d3_d5 _lh_one_way_unify1_arg1_6_8) _lh_one_way_unify1_LH_P2_1_4_9), _lh_one_way_unify1_arg3_6_8))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_6_8, _lh_one_way_unify1_arg1_6_8)), _lh_one_way_unify1_arg3_6_8))))))))
          else
            ((find_d2_d0_d1_d7 _lh_find_arg1_4_9) _lh_find_LH_C_1_4_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d8 _lh_find_arg1_1_0_6 _lh_find_arg2_9_5 =
  (match _lh_find_arg2_9_5 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_9_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_9_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_3_8 _lh_one_way_unify1_arg3_1_3_8 _lh_one_way_unify1_Var_0_1_3_8 -> 
            (if _lh_one_way_unify1_LH_P2_0_9_4 then
              (`LH_P2(((termEq_d0_d0_d3_d6 _lh_one_way_unify1_arg1_1_3_8) _lh_one_way_unify1_LH_P2_1_9_4), _lh_one_way_unify1_arg3_1_3_8))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_3_8, _lh_one_way_unify1_arg1_1_3_8)), _lh_one_way_unify1_arg3_1_3_8))))))))
    | `LH_C(_lh_find_LH_C_0_9_4, _lh_find_LH_C_1_9_9) -> 
      (match _lh_find_LH_C_0_9_4 with
        | `LH_P2(_lh_find_LH_P2_0_9_4, _lh_find_LH_P2_1_9_4) -> 
          (if (_lh_find_arg1_1_0_6 = _lh_find_LH_P2_0_9_4) then
            (let rec _lh_one_way_unify1_LH_P2_0_9_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_9_5 = _lh_find_LH_P2_1_9_4 in
                (fun _lh_one_way_unify1_arg1_1_3_9 _lh_one_way_unify1_arg3_1_3_9 _lh_one_way_unify1_Var_0_1_3_9 -> 
                  (if _lh_one_way_unify1_LH_P2_0_9_5 then
                    (`LH_P2(((termEq_d0_d0_d3_d7 _lh_one_way_unify1_arg1_1_3_9) _lh_one_way_unify1_LH_P2_1_9_5), _lh_one_way_unify1_arg3_1_3_9))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_3_9, _lh_one_way_unify1_arg1_1_3_9)), _lh_one_way_unify1_arg3_1_3_9))))))))
          else
            ((find_d2_d0_d1_d8 _lh_find_arg1_1_0_6) _lh_find_LH_C_1_9_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d1_d9 _lh_find_arg1_6_4 _lh_find_arg2_5_3 =
  (match _lh_find_arg2_5_3 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_6_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_6_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_8_9 _lh_one_way_unify1_arg3_8_9 _lh_one_way_unify1_Var_0_8_9 -> 
            (if _lh_one_way_unify1_LH_P2_0_6_0 then
              (`LH_P2(((termEq_d0_d0_d3_d8 _lh_one_way_unify1_arg1_8_9) _lh_one_way_unify1_LH_P2_1_6_0), _lh_one_way_unify1_arg3_8_9))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_8_9, _lh_one_way_unify1_arg1_8_9)), _lh_one_way_unify1_arg3_8_9))))))))
    | `LH_C(_lh_find_LH_C_0_5_4, _lh_find_LH_C_1_5_9) -> 
      (match _lh_find_LH_C_0_5_4 with
        | `LH_P2(_lh_find_LH_P2_0_5_4, _lh_find_LH_P2_1_5_4) -> 
          (if (_lh_find_arg1_6_4 = _lh_find_LH_P2_0_5_4) then
            (let rec _lh_one_way_unify1_LH_P2_0_6_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_6_1 = _lh_find_LH_P2_1_5_4 in
                (fun _lh_one_way_unify1_arg1_9_0 _lh_one_way_unify1_arg3_9_0 _lh_one_way_unify1_Var_0_9_0 -> 
                  (if _lh_one_way_unify1_LH_P2_0_6_1 then
                    (`LH_P2(((termEq_d0_d0_d3_d9 _lh_one_way_unify1_arg1_9_0) _lh_one_way_unify1_LH_P2_1_6_1), _lh_one_way_unify1_arg3_9_0))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_9_0, _lh_one_way_unify1_arg1_9_0)), _lh_one_way_unify1_arg3_9_0))))))))
          else
            ((find_d2_d0_d1_d9 _lh_find_arg1_6_4) _lh_find_LH_C_1_5_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2 _lh_find_arg1_8_6 _lh_find_arg2_7_5 =
  (match _lh_find_arg2_7_5 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_7_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_7_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_1_4 _lh_one_way_unify1_arg3_1_1_4 _lh_one_way_unify1_Var_0_1_1_4 -> 
            (if _lh_one_way_unify1_LH_P2_0_7_6 then
              (`LH_P2(((termEq_d0_d0_d4 _lh_one_way_unify1_arg1_1_1_4) _lh_one_way_unify1_LH_P2_1_7_6), _lh_one_way_unify1_arg3_1_1_4))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_1_4, _lh_one_way_unify1_arg1_1_1_4)), _lh_one_way_unify1_arg3_1_1_4))))))))
    | `LH_C(_lh_find_LH_C_0_7_4, _lh_find_LH_C_1_7_9) -> 
      (match _lh_find_LH_C_0_7_4 with
        | `LH_P2(_lh_find_LH_P2_0_7_4, _lh_find_LH_P2_1_7_4) -> 
          (if (_lh_find_arg1_8_6 = _lh_find_LH_P2_0_7_4) then
            (let rec _lh_one_way_unify1_LH_P2_0_7_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_7_7 = _lh_find_LH_P2_1_7_4 in
                (fun _lh_one_way_unify1_arg1_1_1_5 _lh_one_way_unify1_arg3_1_1_5 _lh_one_way_unify1_Var_0_1_1_5 -> 
                  (if _lh_one_way_unify1_LH_P2_0_7_7 then
                    (`LH_P2(((termEq_d0_d0_d5 _lh_one_way_unify1_arg1_1_1_5) _lh_one_way_unify1_LH_P2_1_7_7), _lh_one_way_unify1_arg3_1_1_5))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_1_5, _lh_one_way_unify1_arg1_1_1_5)), _lh_one_way_unify1_arg3_1_1_5))))))))
          else
            ((find_d2_d0_d2 _lh_find_arg1_8_6) _lh_find_LH_C_1_7_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d0 _lh_find_arg1_4_2 _lh_find_arg2_3_1 =
  (match _lh_find_arg2_3_1 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_3_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_3_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_5_3 _lh_one_way_unify1_arg3_5_3 _lh_one_way_unify1_Var_0_5_3 -> 
            (if _lh_one_way_unify1_LH_P2_0_3_6 then
              (`LH_P2(((termEq_d0_d0_d4_d0 _lh_one_way_unify1_arg1_5_3) _lh_one_way_unify1_LH_P2_1_3_6), _lh_one_way_unify1_arg3_5_3))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5_3, _lh_one_way_unify1_arg1_5_3)), _lh_one_way_unify1_arg3_5_3))))))))
    | `LH_C(_lh_find_LH_C_0_3_5, _lh_find_LH_C_1_4_0) -> 
      (match _lh_find_LH_C_0_3_5 with
        | `LH_P2(_lh_find_LH_P2_0_3_5, _lh_find_LH_P2_1_3_5) -> 
          (if (_lh_find_arg1_4_2 = _lh_find_LH_P2_0_3_5) then
            (let rec _lh_one_way_unify1_LH_P2_0_3_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_3_7 = _lh_find_LH_P2_1_3_5 in
                (fun _lh_one_way_unify1_arg1_5_4 _lh_one_way_unify1_arg3_5_4 _lh_one_way_unify1_Var_0_5_4 -> 
                  (if _lh_one_way_unify1_LH_P2_0_3_7 then
                    (`LH_P2(((termEq_d0_d0_d4_d1 _lh_one_way_unify1_arg1_5_4) _lh_one_way_unify1_LH_P2_1_3_7), _lh_one_way_unify1_arg3_5_4))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5_4, _lh_one_way_unify1_arg1_5_4)), _lh_one_way_unify1_arg3_5_4))))))))
          else
            ((find_d2_d0_d2_d0 _lh_find_arg1_4_2) _lh_find_LH_C_1_4_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d1 _lh_find_arg1_3_6 _lh_find_arg2_2_5 =
  (match _lh_find_arg2_2_5 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_2_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_2_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_4_1 _lh_one_way_unify1_arg3_4_1 _lh_one_way_unify1_Var_0_4_1 -> 
            (if _lh_one_way_unify1_LH_P2_0_2_6 then
              (`LH_P2(((termEq_d0_d0_d4_d2 _lh_one_way_unify1_arg1_4_1) _lh_one_way_unify1_LH_P2_1_2_6), _lh_one_way_unify1_arg3_4_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_4_1, _lh_one_way_unify1_arg1_4_1)), _lh_one_way_unify1_arg3_4_1))))))))
    | `LH_C(_lh_find_LH_C_0_2_9, _lh_find_LH_C_1_3_4) -> 
      (match _lh_find_LH_C_0_2_9 with
        | `LH_P2(_lh_find_LH_P2_0_2_9, _lh_find_LH_P2_1_2_9) -> 
          (if (_lh_find_arg1_3_6 = _lh_find_LH_P2_0_2_9) then
            (let rec _lh_one_way_unify1_LH_P2_0_2_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_2_7 = _lh_find_LH_P2_1_2_9 in
                (fun _lh_one_way_unify1_arg1_4_2 _lh_one_way_unify1_arg3_4_2 _lh_one_way_unify1_Var_0_4_2 -> 
                  (if _lh_one_way_unify1_LH_P2_0_2_7 then
                    (`LH_P2(((termEq_d0_d0_d4_d3 _lh_one_way_unify1_arg1_4_2) _lh_one_way_unify1_LH_P2_1_2_7), _lh_one_way_unify1_arg3_4_2))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_4_2, _lh_one_way_unify1_arg1_4_2)), _lh_one_way_unify1_arg3_4_2))))))))
          else
            ((find_d2_d0_d2_d1 _lh_find_arg1_3_6) _lh_find_LH_C_1_3_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d2 _lh_find_arg1_1_5_1 _lh_find_arg2_1_2_9 =
  (match _lh_find_arg2_1_2_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_2_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_2_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_7_9 _lh_one_way_unify1_arg3_1_7_9 _lh_one_way_unify1_Var_0_1_7_9 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_2_0 then
              (`LH_P2(((termEq_d0_d0_d4_d4 _lh_one_way_unify1_arg1_1_7_9) _lh_one_way_unify1_LH_P2_1_1_2_0), _lh_one_way_unify1_arg3_1_7_9))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_7_9, _lh_one_way_unify1_arg1_1_7_9)), _lh_one_way_unify1_arg3_1_7_9))))))))
    | `LH_C(_lh_find_LH_C_0_1_3_2, _lh_find_LH_C_1_1_4_2) -> 
      (match _lh_find_LH_C_0_1_3_2 with
        | `LH_P2(_lh_find_LH_P2_0_1_3_2, _lh_find_LH_P2_1_1_3_2) -> 
          (if (_lh_find_arg1_1_5_1 = _lh_find_LH_P2_0_1_3_2) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_2_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_2_1 = _lh_find_LH_P2_1_1_3_2 in
                (fun _lh_one_way_unify1_arg1_1_8_0 _lh_one_way_unify1_arg3_1_8_0 _lh_one_way_unify1_Var_0_1_8_0 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_2_1 then
                    (`LH_P2(((termEq_d0_d0_d4_d5 _lh_one_way_unify1_arg1_1_8_0) _lh_one_way_unify1_LH_P2_1_1_2_1), _lh_one_way_unify1_arg3_1_8_0))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_8_0, _lh_one_way_unify1_arg1_1_8_0)), _lh_one_way_unify1_arg3_1_8_0))))))))
          else
            ((find_d2_d0_d2_d2 _lh_find_arg1_1_5_1) _lh_find_LH_C_1_1_4_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d3 _lh_find_arg1_8_7 _lh_find_arg2_7_6 =
  (match _lh_find_arg2_7_6 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_7_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_7_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_1_6 _lh_one_way_unify1_arg3_1_1_6 _lh_one_way_unify1_Var_0_1_1_6 -> 
            (if _lh_one_way_unify1_LH_P2_0_7_8 then
              (`LH_P2(((termEq_d0_d0_d4_d6 _lh_one_way_unify1_arg1_1_1_6) _lh_one_way_unify1_LH_P2_1_7_8), _lh_one_way_unify1_arg3_1_1_6))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_1_6, _lh_one_way_unify1_arg1_1_1_6)), _lh_one_way_unify1_arg3_1_1_6))))))))
    | `LH_C(_lh_find_LH_C_0_7_5, _lh_find_LH_C_1_8_0) -> 
      (match _lh_find_LH_C_0_7_5 with
        | `LH_P2(_lh_find_LH_P2_0_7_5, _lh_find_LH_P2_1_7_5) -> 
          (if (_lh_find_arg1_8_7 = _lh_find_LH_P2_0_7_5) then
            (let rec _lh_one_way_unify1_LH_P2_0_7_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_7_9 = _lh_find_LH_P2_1_7_5 in
                (fun _lh_one_way_unify1_arg1_1_1_7 _lh_one_way_unify1_arg3_1_1_7 _lh_one_way_unify1_Var_0_1_1_7 -> 
                  (if _lh_one_way_unify1_LH_P2_0_7_9 then
                    (`LH_P2(((termEq_d0_d0_d4_d7 _lh_one_way_unify1_arg1_1_1_7) _lh_one_way_unify1_LH_P2_1_7_9), _lh_one_way_unify1_arg3_1_1_7))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_1_7, _lh_one_way_unify1_arg1_1_1_7)), _lh_one_way_unify1_arg3_1_1_7))))))))
          else
            ((find_d2_d0_d2_d3 _lh_find_arg1_8_7) _lh_find_LH_C_1_8_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d4 _lh_find_arg1_1_1_9 _lh_find_arg2_1_0_8 =
  (match _lh_find_arg2_1_0_8 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_0_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_0_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_5_5 _lh_one_way_unify1_arg3_1_5_5 _lh_one_way_unify1_Var_0_1_5_5 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_0_4 then
              (`LH_P2(((termEq_d0_d0_d4_d8 _lh_one_way_unify1_arg1_1_5_5) _lh_one_way_unify1_LH_P2_1_1_0_4), _lh_one_way_unify1_arg3_1_5_5))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_5_5, _lh_one_way_unify1_arg1_1_5_5)), _lh_one_way_unify1_arg3_1_5_5))))))))
    | `LH_C(_lh_find_LH_C_0_1_0_6, _lh_find_LH_C_1_1_1_1) -> 
      (match _lh_find_LH_C_0_1_0_6 with
        | `LH_P2(_lh_find_LH_P2_0_1_0_6, _lh_find_LH_P2_1_1_0_6) -> 
          (if (_lh_find_arg1_1_1_9 = _lh_find_LH_P2_0_1_0_6) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_0_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_0_5 = _lh_find_LH_P2_1_1_0_6 in
                (fun _lh_one_way_unify1_arg1_1_5_6 _lh_one_way_unify1_arg3_1_5_6 _lh_one_way_unify1_Var_0_1_5_6 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_0_5 then
                    (`LH_P2(((termEq_d0_d0_d4_d9 _lh_one_way_unify1_arg1_1_5_6) _lh_one_way_unify1_LH_P2_1_1_0_5), _lh_one_way_unify1_arg3_1_5_6))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_5_6, _lh_one_way_unify1_arg1_1_5_6)), _lh_one_way_unify1_arg3_1_5_6))))))))
          else
            ((find_d2_d0_d2_d4 _lh_find_arg1_1_1_9) _lh_find_LH_C_1_1_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d5 _lh_find_arg1_1_9 _lh_find_arg2_8 =
  (match _lh_find_arg2_8 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_0 _lh_one_way_unify1_arg3_1_0 _lh_one_way_unify1_Var_0_1_0 -> 
            (if _lh_one_way_unify1_LH_P2_0_6 then
              (`LH_P2(((termEq_d0_d0_d5_d0 _lh_one_way_unify1_arg1_1_0) _lh_one_way_unify1_LH_P2_1_6), _lh_one_way_unify1_arg3_1_0))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_0, _lh_one_way_unify1_arg1_1_0)), _lh_one_way_unify1_arg3_1_0))))))))
    | `LH_C(_lh_find_LH_C_0_1_2, _lh_find_LH_C_1_1_7) -> 
      (match _lh_find_LH_C_0_1_2 with
        | `LH_P2(_lh_find_LH_P2_0_1_2, _lh_find_LH_P2_1_1_2) -> 
          (if (_lh_find_arg1_1_9 = _lh_find_LH_P2_0_1_2) then
            (let rec _lh_one_way_unify1_LH_P2_0_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_7 = _lh_find_LH_P2_1_1_2 in
                (fun _lh_one_way_unify1_arg1_1_1 _lh_one_way_unify1_arg3_1_1 _lh_one_way_unify1_Var_0_1_1 -> 
                  (if _lh_one_way_unify1_LH_P2_0_7 then
                    (`LH_P2(((termEq_d0_d0_d5_d1 _lh_one_way_unify1_arg1_1_1) _lh_one_way_unify1_LH_P2_1_7), _lh_one_way_unify1_arg3_1_1))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_1, _lh_one_way_unify1_arg1_1_1)), _lh_one_way_unify1_arg3_1_1))))))))
          else
            ((find_d2_d0_d2_d5 _lh_find_arg1_1_9) _lh_find_LH_C_1_1_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d6 _lh_find_arg1_1_5 _lh_find_arg2_4 =
  (match _lh_find_arg2_4 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_4 _lh_one_way_unify1_arg3_4 _lh_one_way_unify1_Var_0_4 -> 
            (if _lh_one_way_unify1_LH_P2_0_2 then
              (`LH_P2(((termEq_d0_d0_d5_d2 _lh_one_way_unify1_arg1_4) _lh_one_way_unify1_LH_P2_1_2), _lh_one_way_unify1_arg3_4))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_4, _lh_one_way_unify1_arg1_4)), _lh_one_way_unify1_arg3_4))))))))
    | `LH_C(_lh_find_LH_C_0_8, _lh_find_LH_C_1_1_3) -> 
      (match _lh_find_LH_C_0_8 with
        | `LH_P2(_lh_find_LH_P2_0_8, _lh_find_LH_P2_1_8) -> 
          (if (_lh_find_arg1_1_5 = _lh_find_LH_P2_0_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_3 = _lh_find_LH_P2_1_8 in
                (fun _lh_one_way_unify1_arg1_5 _lh_one_way_unify1_arg3_5 _lh_one_way_unify1_Var_0_5 -> 
                  (if _lh_one_way_unify1_LH_P2_0_3 then
                    (`LH_P2(((termEq_d0_d0_d5_d3 _lh_one_way_unify1_arg1_5) _lh_one_way_unify1_LH_P2_1_3), _lh_one_way_unify1_arg3_5))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5, _lh_one_way_unify1_arg1_5)), _lh_one_way_unify1_arg3_5))))))))
          else
            ((find_d2_d0_d2_d6 _lh_find_arg1_1_5) _lh_find_LH_C_1_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d7 _lh_find_arg1_9_7 _lh_find_arg2_8_6 =
  (match _lh_find_arg2_8_6 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_8_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_8_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_2_8 _lh_one_way_unify1_arg3_1_2_8 _lh_one_way_unify1_Var_0_1_2_8 -> 
            (if _lh_one_way_unify1_LH_P2_0_8_6 then
              (`LH_P2(((termEq_d0_d0_d5_d4 _lh_one_way_unify1_arg1_1_2_8) _lh_one_way_unify1_LH_P2_1_8_6), _lh_one_way_unify1_arg3_1_2_8))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_2_8, _lh_one_way_unify1_arg1_1_2_8)), _lh_one_way_unify1_arg3_1_2_8))))))))
    | `LH_C(_lh_find_LH_C_0_8_5, _lh_find_LH_C_1_9_0) -> 
      (match _lh_find_LH_C_0_8_5 with
        | `LH_P2(_lh_find_LH_P2_0_8_5, _lh_find_LH_P2_1_8_5) -> 
          (if (_lh_find_arg1_9_7 = _lh_find_LH_P2_0_8_5) then
            (let rec _lh_one_way_unify1_LH_P2_0_8_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_8_7 = _lh_find_LH_P2_1_8_5 in
                (fun _lh_one_way_unify1_arg1_1_2_9 _lh_one_way_unify1_arg3_1_2_9 _lh_one_way_unify1_Var_0_1_2_9 -> 
                  (if _lh_one_way_unify1_LH_P2_0_8_7 then
                    (`LH_P2(((termEq_d0_d0_d5_d5 _lh_one_way_unify1_arg1_1_2_9) _lh_one_way_unify1_LH_P2_1_8_7), _lh_one_way_unify1_arg3_1_2_9))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_2_9, _lh_one_way_unify1_arg1_1_2_9)), _lh_one_way_unify1_arg3_1_2_9))))))))
          else
            ((find_d2_d0_d2_d7 _lh_find_arg1_9_7) _lh_find_LH_C_1_9_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d8 _lh_find_arg1_3_1 _lh_find_arg2_2_0 =
  (match _lh_find_arg2_2_0 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_2_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_2_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_3_4 _lh_one_way_unify1_arg3_3_4 _lh_one_way_unify1_Var_0_3_4 -> 
            (if _lh_one_way_unify1_LH_P2_0_2_0 then
              (`LH_P2(((termEq_d0_d0_d5_d6 _lh_one_way_unify1_arg1_3_4) _lh_one_way_unify1_LH_P2_1_2_0), _lh_one_way_unify1_arg3_3_4))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_3_4, _lh_one_way_unify1_arg1_3_4)), _lh_one_way_unify1_arg3_3_4))))))))
    | `LH_C(_lh_find_LH_C_0_2_4, _lh_find_LH_C_1_2_9) -> 
      (match _lh_find_LH_C_0_2_4 with
        | `LH_P2(_lh_find_LH_P2_0_2_4, _lh_find_LH_P2_1_2_4) -> 
          (if (_lh_find_arg1_3_1 = _lh_find_LH_P2_0_2_4) then
            (let rec _lh_one_way_unify1_LH_P2_0_2_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_2_1 = _lh_find_LH_P2_1_2_4 in
                (fun _lh_one_way_unify1_arg1_3_5 _lh_one_way_unify1_arg3_3_5 _lh_one_way_unify1_Var_0_3_5 -> 
                  (if _lh_one_way_unify1_LH_P2_0_2_1 then
                    (`LH_P2(((termEq_d0_d0_d5_d7 _lh_one_way_unify1_arg1_3_5) _lh_one_way_unify1_LH_P2_1_2_1), _lh_one_way_unify1_arg3_3_5))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_3_5, _lh_one_way_unify1_arg1_3_5)), _lh_one_way_unify1_arg3_3_5))))))))
          else
            ((find_d2_d0_d2_d8 _lh_find_arg1_3_1) _lh_find_LH_C_1_2_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d2_d9 _lh_find_arg1_9_4 _lh_find_arg2_8_3 =
  (match _lh_find_arg2_8_3 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_8_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_8_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_2_6 _lh_one_way_unify1_arg3_1_2_6 _lh_one_way_unify1_Var_0_1_2_6 -> 
            (if _lh_one_way_unify1_LH_P2_0_8_4 then
              (`LH_P2(((termEq_d0_d0_d5_d8 _lh_one_way_unify1_arg1_1_2_6) _lh_one_way_unify1_LH_P2_1_8_4), _lh_one_way_unify1_arg3_1_2_6))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_2_6, _lh_one_way_unify1_arg1_1_2_6)), _lh_one_way_unify1_arg3_1_2_6))))))))
    | `LH_C(_lh_find_LH_C_0_8_2, _lh_find_LH_C_1_8_7) -> 
      (match _lh_find_LH_C_0_8_2 with
        | `LH_P2(_lh_find_LH_P2_0_8_2, _lh_find_LH_P2_1_8_2) -> 
          (if (_lh_find_arg1_9_4 = _lh_find_LH_P2_0_8_2) then
            (let rec _lh_one_way_unify1_LH_P2_0_8_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_8_5 = _lh_find_LH_P2_1_8_2 in
                (fun _lh_one_way_unify1_arg1_1_2_7 _lh_one_way_unify1_arg3_1_2_7 _lh_one_way_unify1_Var_0_1_2_7 -> 
                  (if _lh_one_way_unify1_LH_P2_0_8_5 then
                    (`LH_P2(((termEq_d0_d0_d5_d9 _lh_one_way_unify1_arg1_1_2_7) _lh_one_way_unify1_LH_P2_1_8_5), _lh_one_way_unify1_arg3_1_2_7))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_2_7, _lh_one_way_unify1_arg1_1_2_7)), _lh_one_way_unify1_arg3_1_2_7))))))))
          else
            ((find_d2_d0_d2_d9 _lh_find_arg1_9_4) _lh_find_LH_C_1_8_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3 _lh_find_arg1_1_4_7 _lh_find_arg2_1_2_5 =
  (match _lh_find_arg2_1_2_5 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_1_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_1_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_7_3 _lh_one_way_unify1_arg3_1_7_3 _lh_one_way_unify1_Var_0_1_7_3 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_1_6 then
              (`LH_P2(((termEq_d0_d0_d6 _lh_one_way_unify1_arg1_1_7_3) _lh_one_way_unify1_LH_P2_1_1_1_6), _lh_one_way_unify1_arg3_1_7_3))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_7_3, _lh_one_way_unify1_arg1_1_7_3)), _lh_one_way_unify1_arg3_1_7_3))))))))
    | `LH_C(_lh_find_LH_C_0_1_2_8, _lh_find_LH_C_1_1_3_8) -> 
      (match _lh_find_LH_C_0_1_2_8 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_8, _lh_find_LH_P2_1_1_2_8) -> 
          (if (_lh_find_arg1_1_4_7 = _lh_find_LH_P2_0_1_2_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_1_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_1_7 = _lh_find_LH_P2_1_1_2_8 in
                (fun _lh_one_way_unify1_arg1_1_7_4 _lh_one_way_unify1_arg3_1_7_4 _lh_one_way_unify1_Var_0_1_7_4 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_1_7 then
                    (`LH_P2(((termEq_d0_d0_d7 _lh_one_way_unify1_arg1_1_7_4) _lh_one_way_unify1_LH_P2_1_1_1_7), _lh_one_way_unify1_arg3_1_7_4))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_7_4, _lh_one_way_unify1_arg1_1_7_4)), _lh_one_way_unify1_arg3_1_7_4))))))))
          else
            ((find_d2_d0_d3 _lh_find_arg1_1_4_7) _lh_find_LH_C_1_1_3_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d0 _lh_find_arg1_3_0 _lh_find_arg2_1_9 =
  (match _lh_find_arg2_1_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_3_2 _lh_one_way_unify1_arg3_3_2 _lh_one_way_unify1_Var_0_3_2 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_8 then
              (`LH_P2(((termEq_d0_d0_d6_d0 _lh_one_way_unify1_arg1_3_2) _lh_one_way_unify1_LH_P2_1_1_8), _lh_one_way_unify1_arg3_3_2))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_3_2, _lh_one_way_unify1_arg1_3_2)), _lh_one_way_unify1_arg3_3_2))))))))
    | `LH_C(_lh_find_LH_C_0_2_3, _lh_find_LH_C_1_2_8) -> 
      (match _lh_find_LH_C_0_2_3 with
        | `LH_P2(_lh_find_LH_P2_0_2_3, _lh_find_LH_P2_1_2_3) -> 
          (if (_lh_find_arg1_3_0 = _lh_find_LH_P2_0_2_3) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_9 = _lh_find_LH_P2_1_2_3 in
                (fun _lh_one_way_unify1_arg1_3_3 _lh_one_way_unify1_arg3_3_3 _lh_one_way_unify1_Var_0_3_3 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_9 then
                    (`LH_P2(((termEq_d0_d0_d6_d1 _lh_one_way_unify1_arg1_3_3) _lh_one_way_unify1_LH_P2_1_1_9), _lh_one_way_unify1_arg3_3_3))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_3_3, _lh_one_way_unify1_arg1_3_3)), _lh_one_way_unify1_arg3_3_3))))))))
          else
            ((find_d2_d0_d3_d0 _lh_find_arg1_3_0) _lh_find_LH_C_1_2_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d1 _lh_find_arg1_2_5 _lh_find_arg2_1_4 =
  (match _lh_find_arg2_1_4 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_2_1 _lh_one_way_unify1_arg3_2_1 _lh_one_way_unify1_Var_0_2_1 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_4 then
              (`LH_P2(((termEq_d0_d0_d6_d2 _lh_one_way_unify1_arg1_2_1) _lh_one_way_unify1_LH_P2_1_1_4), _lh_one_way_unify1_arg3_2_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_2_1, _lh_one_way_unify1_arg1_2_1)), _lh_one_way_unify1_arg3_2_1))))))))
    | `LH_C(_lh_find_LH_C_0_1_8, _lh_find_LH_C_1_2_3) -> 
      (match _lh_find_LH_C_0_1_8 with
        | `LH_P2(_lh_find_LH_P2_0_1_8, _lh_find_LH_P2_1_1_8) -> 
          (if (_lh_find_arg1_2_5 = _lh_find_LH_P2_0_1_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_5 = _lh_find_LH_P2_1_1_8 in
                (fun _lh_one_way_unify1_arg1_2_2 _lh_one_way_unify1_arg3_2_2 _lh_one_way_unify1_Var_0_2_2 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_5 then
                    (`LH_P2(((termEq_d0_d0_d6_d3 _lh_one_way_unify1_arg1_2_2) _lh_one_way_unify1_LH_P2_1_1_5), _lh_one_way_unify1_arg3_2_2))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_2_2, _lh_one_way_unify1_arg1_2_2)), _lh_one_way_unify1_arg3_2_2))))))))
          else
            ((find_d2_d0_d3_d1 _lh_find_arg1_2_5) _lh_find_LH_C_1_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d2 _lh_find_arg1_1_0_0 _lh_find_arg2_8_9 =
  (match _lh_find_arg2_8_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_9_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_9_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_3_3 _lh_one_way_unify1_arg3_1_3_3 _lh_one_way_unify1_Var_0_1_3_3 -> 
            (if _lh_one_way_unify1_LH_P2_0_9_0 then
              (`LH_P2(((termEq_d0_d0_d6_d4 _lh_one_way_unify1_arg1_1_3_3) _lh_one_way_unify1_LH_P2_1_9_0), _lh_one_way_unify1_arg3_1_3_3))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_3_3, _lh_one_way_unify1_arg1_1_3_3)), _lh_one_way_unify1_arg3_1_3_3))))))))
    | `LH_C(_lh_find_LH_C_0_8_8, _lh_find_LH_C_1_9_3) -> 
      (match _lh_find_LH_C_0_8_8 with
        | `LH_P2(_lh_find_LH_P2_0_8_8, _lh_find_LH_P2_1_8_8) -> 
          (if (_lh_find_arg1_1_0_0 = _lh_find_LH_P2_0_8_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_9_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_9_1 = _lh_find_LH_P2_1_8_8 in
                (fun _lh_one_way_unify1_arg1_1_3_4 _lh_one_way_unify1_arg3_1_3_4 _lh_one_way_unify1_Var_0_1_3_4 -> 
                  (if _lh_one_way_unify1_LH_P2_0_9_1 then
                    (`LH_P2(((termEq_d0_d0_d6_d5 _lh_one_way_unify1_arg1_1_3_4) _lh_one_way_unify1_LH_P2_1_9_1), _lh_one_way_unify1_arg3_1_3_4))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_3_4, _lh_one_way_unify1_arg1_1_3_4)), _lh_one_way_unify1_arg3_1_3_4))))))))
          else
            ((find_d2_d0_d3_d2 _lh_find_arg1_1_0_0) _lh_find_LH_C_1_9_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d3 _lh_find_arg1_4_8 _lh_find_arg2_3_7 =
  (match _lh_find_arg2_3_7 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_4_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_4_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_6_5 _lh_one_way_unify1_arg3_6_5 _lh_one_way_unify1_Var_0_6_5 -> 
            (if _lh_one_way_unify1_LH_P2_0_4_6 then
              (`LH_P2(((termEq_d0_d0_d6_d6 _lh_one_way_unify1_arg1_6_5) _lh_one_way_unify1_LH_P2_1_4_6), _lh_one_way_unify1_arg3_6_5))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_6_5, _lh_one_way_unify1_arg1_6_5)), _lh_one_way_unify1_arg3_6_5))))))))
    | `LH_C(_lh_find_LH_C_0_4_0, _lh_find_LH_C_1_4_5) -> 
      (match _lh_find_LH_C_0_4_0 with
        | `LH_P2(_lh_find_LH_P2_0_4_0, _lh_find_LH_P2_1_4_0) -> 
          (if (_lh_find_arg1_4_8 = _lh_find_LH_P2_0_4_0) then
            (let rec _lh_one_way_unify1_LH_P2_0_4_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_4_7 = _lh_find_LH_P2_1_4_0 in
                (fun _lh_one_way_unify1_arg1_6_6 _lh_one_way_unify1_arg3_6_6 _lh_one_way_unify1_Var_0_6_6 -> 
                  (if _lh_one_way_unify1_LH_P2_0_4_7 then
                    (`LH_P2(((termEq_d0_d0_d6_d7 _lh_one_way_unify1_arg1_6_6) _lh_one_way_unify1_LH_P2_1_4_7), _lh_one_way_unify1_arg3_6_6))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_6_6, _lh_one_way_unify1_arg1_6_6)), _lh_one_way_unify1_arg3_6_6))))))))
          else
            ((find_d2_d0_d3_d3 _lh_find_arg1_4_8) _lh_find_LH_C_1_4_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d4 _lh_find_arg1_8_2 _lh_find_arg2_7_1 =
  (match _lh_find_arg2_7_1 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_7_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_7_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_1_2 _lh_one_way_unify1_arg3_1_1_2 _lh_one_way_unify1_Var_0_1_1_2 -> 
            (if _lh_one_way_unify1_LH_P2_0_7_4 then
              (`LH_P2(((termEq_d0_d0_d6_d8 _lh_one_way_unify1_arg1_1_1_2) _lh_one_way_unify1_LH_P2_1_7_4), _lh_one_way_unify1_arg3_1_1_2))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_1_2, _lh_one_way_unify1_arg1_1_1_2)), _lh_one_way_unify1_arg3_1_1_2))))))))
    | `LH_C(_lh_find_LH_C_0_7_1, _lh_find_LH_C_1_7_6) -> 
      (match _lh_find_LH_C_0_7_1 with
        | `LH_P2(_lh_find_LH_P2_0_7_1, _lh_find_LH_P2_1_7_1) -> 
          (if (_lh_find_arg1_8_2 = _lh_find_LH_P2_0_7_1) then
            (let rec _lh_one_way_unify1_LH_P2_0_7_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_7_5 = _lh_find_LH_P2_1_7_1 in
                (fun _lh_one_way_unify1_arg1_1_1_3 _lh_one_way_unify1_arg3_1_1_3 _lh_one_way_unify1_Var_0_1_1_3 -> 
                  (if _lh_one_way_unify1_LH_P2_0_7_5 then
                    (`LH_P2(((termEq_d0_d0_d6_d9 _lh_one_way_unify1_arg1_1_1_3) _lh_one_way_unify1_LH_P2_1_7_5), _lh_one_way_unify1_arg3_1_1_3))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_1_3, _lh_one_way_unify1_arg1_1_1_3)), _lh_one_way_unify1_arg3_1_1_3))))))))
          else
            ((find_d2_d0_d3_d4 _lh_find_arg1_8_2) _lh_find_LH_C_1_7_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d5 _lh_find_arg1_1_8 _lh_find_arg2_7 =
  (match _lh_find_arg2_7 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_8 _lh_one_way_unify1_arg3_8 _lh_one_way_unify1_Var_0_8 -> 
            (if _lh_one_way_unify1_LH_P2_0_4 then
              (`LH_P2(((termEq_d0_d0_d7_d0 _lh_one_way_unify1_arg1_8) _lh_one_way_unify1_LH_P2_1_4), _lh_one_way_unify1_arg3_8))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_8, _lh_one_way_unify1_arg1_8)), _lh_one_way_unify1_arg3_8))))))))
    | `LH_C(_lh_find_LH_C_0_1_1, _lh_find_LH_C_1_1_6) -> 
      (match _lh_find_LH_C_0_1_1 with
        | `LH_P2(_lh_find_LH_P2_0_1_1, _lh_find_LH_P2_1_1_1) -> 
          (if (_lh_find_arg1_1_8 = _lh_find_LH_P2_0_1_1) then
            (let rec _lh_one_way_unify1_LH_P2_0_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_5 = _lh_find_LH_P2_1_1_1 in
                (fun _lh_one_way_unify1_arg1_9 _lh_one_way_unify1_arg3_9 _lh_one_way_unify1_Var_0_9 -> 
                  (if _lh_one_way_unify1_LH_P2_0_5 then
                    (`LH_P2(((termEq_d0_d0_d7_d1 _lh_one_way_unify1_arg1_9) _lh_one_way_unify1_LH_P2_1_5), _lh_one_way_unify1_arg3_9))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_9, _lh_one_way_unify1_arg1_9)), _lh_one_way_unify1_arg3_9))))))))
          else
            ((find_d2_d0_d3_d5 _lh_find_arg1_1_8) _lh_find_LH_C_1_1_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d6 _lh_find_arg1_3_7 _lh_find_arg2_2_6 =
  (match _lh_find_arg2_2_6 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_2_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_2_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_4_4 _lh_one_way_unify1_arg3_4_4 _lh_one_way_unify1_Var_0_4_4 -> 
            (if _lh_one_way_unify1_LH_P2_0_2_8 then
              (`LH_P2(((termEq_d0_d0_d7_d2 _lh_one_way_unify1_arg1_4_4) _lh_one_way_unify1_LH_P2_1_2_8), _lh_one_way_unify1_arg3_4_4))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_4_4, _lh_one_way_unify1_arg1_4_4)), _lh_one_way_unify1_arg3_4_4))))))))
    | `LH_C(_lh_find_LH_C_0_3_0, _lh_find_LH_C_1_3_5) -> 
      (match _lh_find_LH_C_0_3_0 with
        | `LH_P2(_lh_find_LH_P2_0_3_0, _lh_find_LH_P2_1_3_0) -> 
          (if (_lh_find_arg1_3_7 = _lh_find_LH_P2_0_3_0) then
            (let rec _lh_one_way_unify1_LH_P2_0_2_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_2_9 = _lh_find_LH_P2_1_3_0 in
                (fun _lh_one_way_unify1_arg1_4_5 _lh_one_way_unify1_arg3_4_5 _lh_one_way_unify1_Var_0_4_5 -> 
                  (if _lh_one_way_unify1_LH_P2_0_2_9 then
                    (`LH_P2(((termEq_d0_d0_d7_d3 _lh_one_way_unify1_arg1_4_5) _lh_one_way_unify1_LH_P2_1_2_9), _lh_one_way_unify1_arg3_4_5))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_4_5, _lh_one_way_unify1_arg1_4_5)), _lh_one_way_unify1_arg3_4_5))))))))
          else
            ((find_d2_d0_d3_d6 _lh_find_arg1_3_7) _lh_find_LH_C_1_3_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d7 _lh_find_arg1_1_5_2 _lh_find_arg2_1_3_0 =
  (match _lh_find_arg2_1_3_0 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_2_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_2_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_8_1 _lh_one_way_unify1_arg3_1_8_1 _lh_one_way_unify1_Var_0_1_8_1 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_2_2 then
              (`LH_P2(((termEq_d0_d0_d7_d4 _lh_one_way_unify1_arg1_1_8_1) _lh_one_way_unify1_LH_P2_1_1_2_2), _lh_one_way_unify1_arg3_1_8_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_8_1, _lh_one_way_unify1_arg1_1_8_1)), _lh_one_way_unify1_arg3_1_8_1))))))))
    | `LH_C(_lh_find_LH_C_0_1_3_3, _lh_find_LH_C_1_1_4_3) -> 
      (match _lh_find_LH_C_0_1_3_3 with
        | `LH_P2(_lh_find_LH_P2_0_1_3_3, _lh_find_LH_P2_1_1_3_3) -> 
          (if (_lh_find_arg1_1_5_2 = _lh_find_LH_P2_0_1_3_3) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_2_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_2_3 = _lh_find_LH_P2_1_1_3_3 in
                (fun _lh_one_way_unify1_arg1_1_8_2 _lh_one_way_unify1_arg3_1_8_2 _lh_one_way_unify1_Var_0_1_8_2 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_2_3 then
                    (`LH_P2(((termEq_d0_d0_d7_d5 _lh_one_way_unify1_arg1_1_8_2) _lh_one_way_unify1_LH_P2_1_1_2_3), _lh_one_way_unify1_arg3_1_8_2))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_8_2, _lh_one_way_unify1_arg1_1_8_2)), _lh_one_way_unify1_arg3_1_8_2))))))))
          else
            ((find_d2_d0_d3_d7 _lh_find_arg1_1_5_2) _lh_find_LH_C_1_1_4_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d8 _lh_find_arg1_1_1_2 _lh_find_arg2_1_0_1 =
  (match _lh_find_arg2_1_0_1 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_0_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_0_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_4_7 _lh_one_way_unify1_arg3_1_4_7 _lh_one_way_unify1_Var_0_1_4_7 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_0_0 then
              (`LH_P2(((termEq_d0_d0_d7_d6 _lh_one_way_unify1_arg1_1_4_7) _lh_one_way_unify1_LH_P2_1_1_0_0), _lh_one_way_unify1_arg3_1_4_7))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_4_7, _lh_one_way_unify1_arg1_1_4_7)), _lh_one_way_unify1_arg3_1_4_7))))))))
    | `LH_C(_lh_find_LH_C_0_1_0_0, _lh_find_LH_C_1_1_0_5) -> 
      (match _lh_find_LH_C_0_1_0_0 with
        | `LH_P2(_lh_find_LH_P2_0_1_0_0, _lh_find_LH_P2_1_1_0_0) -> 
          (if (_lh_find_arg1_1_1_2 = _lh_find_LH_P2_0_1_0_0) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_0_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_0_1 = _lh_find_LH_P2_1_1_0_0 in
                (fun _lh_one_way_unify1_arg1_1_4_8 _lh_one_way_unify1_arg3_1_4_8 _lh_one_way_unify1_Var_0_1_4_8 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_0_1 then
                    (`LH_P2(((termEq_d0_d0_d7_d7 _lh_one_way_unify1_arg1_1_4_8) _lh_one_way_unify1_LH_P2_1_1_0_1), _lh_one_way_unify1_arg3_1_4_8))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_4_8, _lh_one_way_unify1_arg1_1_4_8)), _lh_one_way_unify1_arg3_1_4_8))))))))
          else
            ((find_d2_d0_d3_d8 _lh_find_arg1_1_1_2) _lh_find_LH_C_1_1_0_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d3_d9 _lh_find_arg1_3_5 _lh_find_arg2_2_4 =
  (match _lh_find_arg2_2_4 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_2_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_2_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_3_8 _lh_one_way_unify1_arg3_3_8 _lh_one_way_unify1_Var_0_3_8 -> 
            (if _lh_one_way_unify1_LH_P2_0_2_4 then
              (`LH_P2(((termEq_d0_d0_d7_d8 _lh_one_way_unify1_arg1_3_8) _lh_one_way_unify1_LH_P2_1_2_4), _lh_one_way_unify1_arg3_3_8))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_3_8, _lh_one_way_unify1_arg1_3_8)), _lh_one_way_unify1_arg3_3_8))))))))
    | `LH_C(_lh_find_LH_C_0_2_8, _lh_find_LH_C_1_3_3) -> 
      (match _lh_find_LH_C_0_2_8 with
        | `LH_P2(_lh_find_LH_P2_0_2_8, _lh_find_LH_P2_1_2_8) -> 
          (if (_lh_find_arg1_3_5 = _lh_find_LH_P2_0_2_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_2_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_2_5 = _lh_find_LH_P2_1_2_8 in
                (fun _lh_one_way_unify1_arg1_3_9 _lh_one_way_unify1_arg3_3_9 _lh_one_way_unify1_Var_0_3_9 -> 
                  (if _lh_one_way_unify1_LH_P2_0_2_5 then
                    (`LH_P2(((termEq_d0_d0_d7_d9 _lh_one_way_unify1_arg1_3_9) _lh_one_way_unify1_LH_P2_1_2_5), _lh_one_way_unify1_arg3_3_9))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_3_9, _lh_one_way_unify1_arg1_3_9)), _lh_one_way_unify1_arg3_3_9))))))))
          else
            ((find_d2_d0_d3_d9 _lh_find_arg1_3_5) _lh_find_LH_C_1_3_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4 _lh_find_arg1_7_3 _lh_find_arg2_6_2 =
  (match _lh_find_arg2_6_2 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_6_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_6_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_9_8 _lh_one_way_unify1_arg3_9_8 _lh_one_way_unify1_Var_0_9_8 -> 
            (if _lh_one_way_unify1_LH_P2_0_6_4 then
              (`LH_P2(((termEq_d0_d0_d8 _lh_one_way_unify1_arg1_9_8) _lh_one_way_unify1_LH_P2_1_6_4), _lh_one_way_unify1_arg3_9_8))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_9_8, _lh_one_way_unify1_arg1_9_8)), _lh_one_way_unify1_arg3_9_8))))))))
    | `LH_C(_lh_find_LH_C_0_6_2, _lh_find_LH_C_1_6_7) -> 
      (match _lh_find_LH_C_0_6_2 with
        | `LH_P2(_lh_find_LH_P2_0_6_2, _lh_find_LH_P2_1_6_2) -> 
          (if (_lh_find_arg1_7_3 = _lh_find_LH_P2_0_6_2) then
            (let rec _lh_one_way_unify1_LH_P2_0_6_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_6_5 = _lh_find_LH_P2_1_6_2 in
                (fun _lh_one_way_unify1_arg1_9_9 _lh_one_way_unify1_arg3_9_9 _lh_one_way_unify1_Var_0_9_9 -> 
                  (if _lh_one_way_unify1_LH_P2_0_6_5 then
                    (`LH_P2(((termEq_d0_d0_d9 _lh_one_way_unify1_arg1_9_9) _lh_one_way_unify1_LH_P2_1_6_5), _lh_one_way_unify1_arg3_9_9))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_9_9, _lh_one_way_unify1_arg1_9_9)), _lh_one_way_unify1_arg3_9_9))))))))
          else
            ((find_d2_d0_d4 _lh_find_arg1_7_3) _lh_find_LH_C_1_6_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d0 _lh_find_arg1_5_5 _lh_find_arg2_4_4 =
  (match _lh_find_arg2_4_4 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_5_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_5_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_7_5 _lh_one_way_unify1_arg3_7_5 _lh_one_way_unify1_Var_0_7_5 -> 
            (if _lh_one_way_unify1_LH_P2_0_5_4 then
              (`LH_P2(((termEq_d0_d0_d8_d0 _lh_one_way_unify1_arg1_7_5) _lh_one_way_unify1_LH_P2_1_5_4), _lh_one_way_unify1_arg3_7_5))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_7_5, _lh_one_way_unify1_arg1_7_5)), _lh_one_way_unify1_arg3_7_5))))))))
    | `LH_C(_lh_find_LH_C_0_4_6, _lh_find_LH_C_1_5_1) -> 
      (match _lh_find_LH_C_0_4_6 with
        | `LH_P2(_lh_find_LH_P2_0_4_6, _lh_find_LH_P2_1_4_6) -> 
          (if (_lh_find_arg1_5_5 = _lh_find_LH_P2_0_4_6) then
            (let rec _lh_one_way_unify1_LH_P2_0_5_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_5_5 = _lh_find_LH_P2_1_4_6 in
                (fun _lh_one_way_unify1_arg1_7_6 _lh_one_way_unify1_arg3_7_6 _lh_one_way_unify1_Var_0_7_6 -> 
                  (if _lh_one_way_unify1_LH_P2_0_5_5 then
                    (`LH_P2(((termEq_d0_d0_d8_d1 _lh_one_way_unify1_arg1_7_6) _lh_one_way_unify1_LH_P2_1_5_5), _lh_one_way_unify1_arg3_7_6))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_7_6, _lh_one_way_unify1_arg1_7_6)), _lh_one_way_unify1_arg3_7_6))))))))
          else
            ((find_d2_d0_d4_d0 _lh_find_arg1_5_5) _lh_find_LH_C_1_5_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d1 _lh_find_arg1_7_5 _lh_find_arg2_6_4 =
  (match _lh_find_arg2_6_4 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_6_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_6_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_0_0 _lh_one_way_unify1_arg3_1_0_0 _lh_one_way_unify1_Var_0_1_0_0 -> 
            (if _lh_one_way_unify1_LH_P2_0_6_6 then
              (`LH_P2(((termEq_d0_d0_d8_d2 _lh_one_way_unify1_arg1_1_0_0) _lh_one_way_unify1_LH_P2_1_6_6), _lh_one_way_unify1_arg3_1_0_0))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_0_0, _lh_one_way_unify1_arg1_1_0_0)), _lh_one_way_unify1_arg3_1_0_0))))))))
    | `LH_C(_lh_find_LH_C_0_6_4, _lh_find_LH_C_1_6_9) -> 
      (match _lh_find_LH_C_0_6_4 with
        | `LH_P2(_lh_find_LH_P2_0_6_4, _lh_find_LH_P2_1_6_4) -> 
          (if (_lh_find_arg1_7_5 = _lh_find_LH_P2_0_6_4) then
            (let rec _lh_one_way_unify1_LH_P2_0_6_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_6_7 = _lh_find_LH_P2_1_6_4 in
                (fun _lh_one_way_unify1_arg1_1_0_1 _lh_one_way_unify1_arg3_1_0_1 _lh_one_way_unify1_Var_0_1_0_1 -> 
                  (if _lh_one_way_unify1_LH_P2_0_6_7 then
                    (`LH_P2(((termEq_d0_d0_d8_d3 _lh_one_way_unify1_arg1_1_0_1) _lh_one_way_unify1_LH_P2_1_6_7), _lh_one_way_unify1_arg3_1_0_1))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_0_1, _lh_one_way_unify1_arg1_1_0_1)), _lh_one_way_unify1_arg3_1_0_1))))))))
          else
            ((find_d2_d0_d4_d1 _lh_find_arg1_7_5) _lh_find_LH_C_1_6_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d2 _lh_find_arg1_6_6 _lh_find_arg2_5_5 =
  (match _lh_find_arg2_5_5 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_6_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_6_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_9_1 _lh_one_way_unify1_arg3_9_1 _lh_one_way_unify1_Var_0_9_1 -> 
            (if _lh_one_way_unify1_LH_P2_0_6_2 then
              (`LH_P2(((termEq_d0_d0_d8_d4 _lh_one_way_unify1_arg1_9_1) _lh_one_way_unify1_LH_P2_1_6_2), _lh_one_way_unify1_arg3_9_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_9_1, _lh_one_way_unify1_arg1_9_1)), _lh_one_way_unify1_arg3_9_1))))))))
    | `LH_C(_lh_find_LH_C_0_5_6, _lh_find_LH_C_1_6_1) -> 
      (match _lh_find_LH_C_0_5_6 with
        | `LH_P2(_lh_find_LH_P2_0_5_6, _lh_find_LH_P2_1_5_6) -> 
          (if (_lh_find_arg1_6_6 = _lh_find_LH_P2_0_5_6) then
            (let rec _lh_one_way_unify1_LH_P2_0_6_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_6_3 = _lh_find_LH_P2_1_5_6 in
                (fun _lh_one_way_unify1_arg1_9_2 _lh_one_way_unify1_arg3_9_2 _lh_one_way_unify1_Var_0_9_2 -> 
                  (if _lh_one_way_unify1_LH_P2_0_6_3 then
                    (`LH_P2(((termEq_d0_d0_d8_d5 _lh_one_way_unify1_arg1_9_2) _lh_one_way_unify1_LH_P2_1_6_3), _lh_one_way_unify1_arg3_9_2))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_9_2, _lh_one_way_unify1_arg1_9_2)), _lh_one_way_unify1_arg3_9_2))))))))
          else
            ((find_d2_d0_d4_d2 _lh_find_arg1_6_6) _lh_find_LH_C_1_6_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d3 _lh_find_arg1_1_3_2 _lh_find_arg2_1_1_0 =
  (match _lh_find_arg2_1_1_0 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_0_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_0_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_6_0 _lh_one_way_unify1_arg3_1_6_0 _lh_one_way_unify1_Var_0_1_6_0 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_0_6 then
              (`LH_P2(((termEq_d0_d0_d8_d6 _lh_one_way_unify1_arg1_1_6_0) _lh_one_way_unify1_LH_P2_1_1_0_6), _lh_one_way_unify1_arg3_1_6_0))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_6_0, _lh_one_way_unify1_arg1_1_6_0)), _lh_one_way_unify1_arg3_1_6_0))))))))
    | `LH_C(_lh_find_LH_C_0_1_1_3, _lh_find_LH_C_1_1_2_3) -> 
      (match _lh_find_LH_C_0_1_1_3 with
        | `LH_P2(_lh_find_LH_P2_0_1_1_3, _lh_find_LH_P2_1_1_1_3) -> 
          (if (_lh_find_arg1_1_3_2 = _lh_find_LH_P2_0_1_1_3) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_0_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_0_7 = _lh_find_LH_P2_1_1_1_3 in
                (fun _lh_one_way_unify1_arg1_1_6_1 _lh_one_way_unify1_arg3_1_6_1 _lh_one_way_unify1_Var_0_1_6_1 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_0_7 then
                    (`LH_P2(((termEq_d0_d0_d8_d7 _lh_one_way_unify1_arg1_1_6_1) _lh_one_way_unify1_LH_P2_1_1_0_7), _lh_one_way_unify1_arg3_1_6_1))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_6_1, _lh_one_way_unify1_arg1_1_6_1)), _lh_one_way_unify1_arg3_1_6_1))))))))
          else
            ((find_d2_d0_d4_d3 _lh_find_arg1_1_3_2) _lh_find_LH_C_1_1_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d4 _lh_find_arg1_1_4_4 _lh_find_arg2_1_2_2 =
  (match _lh_find_arg2_1_2_2 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_1_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_1_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_6_9 _lh_one_way_unify1_arg3_1_6_9 _lh_one_way_unify1_Var_0_1_6_9 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_1_2 then
              (`LH_P2(((termEq_d0_d0_d8_d8 _lh_one_way_unify1_arg1_1_6_9) _lh_one_way_unify1_LH_P2_1_1_1_2), _lh_one_way_unify1_arg3_1_6_9))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_6_9, _lh_one_way_unify1_arg1_1_6_9)), _lh_one_way_unify1_arg3_1_6_9))))))))
    | `LH_C(_lh_find_LH_C_0_1_2_5, _lh_find_LH_C_1_1_3_5) -> 
      (match _lh_find_LH_C_0_1_2_5 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_5, _lh_find_LH_P2_1_1_2_5) -> 
          (if (_lh_find_arg1_1_4_4 = _lh_find_LH_P2_0_1_2_5) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_1_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_1_3 = _lh_find_LH_P2_1_1_2_5 in
                (fun _lh_one_way_unify1_arg1_1_7_0 _lh_one_way_unify1_arg3_1_7_0 _lh_one_way_unify1_Var_0_1_7_0 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_1_3 then
                    (`LH_P2(((termEq_d0_d0_d8_d9 _lh_one_way_unify1_arg1_1_7_0) _lh_one_way_unify1_LH_P2_1_1_1_3), _lh_one_way_unify1_arg3_1_7_0))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_7_0, _lh_one_way_unify1_arg1_1_7_0)), _lh_one_way_unify1_arg3_1_7_0))))))))
          else
            ((find_d2_d0_d4_d4 _lh_find_arg1_1_4_4) _lh_find_LH_C_1_1_3_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d5 _lh_find_arg1_3_3 _lh_find_arg2_2_2 =
  (match _lh_find_arg2_2_2 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_2_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_2_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_3_6 _lh_one_way_unify1_arg3_3_6 _lh_one_way_unify1_Var_0_3_6 -> 
            (if _lh_one_way_unify1_LH_P2_0_2_2 then
              (`LH_P2(((termEq_d0_d0_d9_d0 _lh_one_way_unify1_arg1_3_6) _lh_one_way_unify1_LH_P2_1_2_2), _lh_one_way_unify1_arg3_3_6))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_3_6, _lh_one_way_unify1_arg1_3_6)), _lh_one_way_unify1_arg3_3_6))))))))
    | `LH_C(_lh_find_LH_C_0_2_6, _lh_find_LH_C_1_3_1) -> 
      (match _lh_find_LH_C_0_2_6 with
        | `LH_P2(_lh_find_LH_P2_0_2_6, _lh_find_LH_P2_1_2_6) -> 
          (if (_lh_find_arg1_3_3 = _lh_find_LH_P2_0_2_6) then
            (let rec _lh_one_way_unify1_LH_P2_0_2_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_2_3 = _lh_find_LH_P2_1_2_6 in
                (fun _lh_one_way_unify1_arg1_3_7 _lh_one_way_unify1_arg3_3_7 _lh_one_way_unify1_Var_0_3_7 -> 
                  (if _lh_one_way_unify1_LH_P2_0_2_3 then
                    (`LH_P2(((termEq_d0_d0_d9_d1 _lh_one_way_unify1_arg1_3_7) _lh_one_way_unify1_LH_P2_1_2_3), _lh_one_way_unify1_arg3_3_7))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_3_7, _lh_one_way_unify1_arg1_3_7)), _lh_one_way_unify1_arg3_3_7))))))))
          else
            ((find_d2_d0_d4_d5 _lh_find_arg1_3_3) _lh_find_LH_C_1_3_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d6 _lh_find_arg1_6_0 _lh_find_arg2_4_9 =
  (match _lh_find_arg2_4_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_5_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_5_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_8_5 _lh_one_way_unify1_arg3_8_5 _lh_one_way_unify1_Var_0_8_5 -> 
            (if _lh_one_way_unify1_LH_P2_0_5_8 then
              (`LH_P2(((termEq_d0_d0_d9_d2 _lh_one_way_unify1_arg1_8_5) _lh_one_way_unify1_LH_P2_1_5_8), _lh_one_way_unify1_arg3_8_5))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_8_5, _lh_one_way_unify1_arg1_8_5)), _lh_one_way_unify1_arg3_8_5))))))))
    | `LH_C(_lh_find_LH_C_0_5_1, _lh_find_LH_C_1_5_6) -> 
      (match _lh_find_LH_C_0_5_1 with
        | `LH_P2(_lh_find_LH_P2_0_5_1, _lh_find_LH_P2_1_5_1) -> 
          (if (_lh_find_arg1_6_0 = _lh_find_LH_P2_0_5_1) then
            (let rec _lh_one_way_unify1_LH_P2_0_5_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_5_9 = _lh_find_LH_P2_1_5_1 in
                (fun _lh_one_way_unify1_arg1_8_6 _lh_one_way_unify1_arg3_8_6 _lh_one_way_unify1_Var_0_8_6 -> 
                  (if _lh_one_way_unify1_LH_P2_0_5_9 then
                    (`LH_P2(((termEq_d0_d0_d9_d3 _lh_one_way_unify1_arg1_8_6) _lh_one_way_unify1_LH_P2_1_5_9), _lh_one_way_unify1_arg3_8_6))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_8_6, _lh_one_way_unify1_arg1_8_6)), _lh_one_way_unify1_arg3_8_6))))))))
          else
            ((find_d2_d0_d4_d6 _lh_find_arg1_6_0) _lh_find_LH_C_1_5_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d7 _lh_find_arg1_7_9 _lh_find_arg2_6_8 =
  (match _lh_find_arg2_6_8 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_7_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_7_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_0_6 _lh_one_way_unify1_arg3_1_0_6 _lh_one_way_unify1_Var_0_1_0_6 -> 
            (if _lh_one_way_unify1_LH_P2_0_7_0 then
              (`LH_P2(((termEq_d0_d0_d9_d4 _lh_one_way_unify1_arg1_1_0_6) _lh_one_way_unify1_LH_P2_1_7_0), _lh_one_way_unify1_arg3_1_0_6))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_0_6, _lh_one_way_unify1_arg1_1_0_6)), _lh_one_way_unify1_arg3_1_0_6))))))))
    | `LH_C(_lh_find_LH_C_0_6_8, _lh_find_LH_C_1_7_3) -> 
      (match _lh_find_LH_C_0_6_8 with
        | `LH_P2(_lh_find_LH_P2_0_6_8, _lh_find_LH_P2_1_6_8) -> 
          (if (_lh_find_arg1_7_9 = _lh_find_LH_P2_0_6_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_7_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_7_1 = _lh_find_LH_P2_1_6_8 in
                (fun _lh_one_way_unify1_arg1_1_0_7 _lh_one_way_unify1_arg3_1_0_7 _lh_one_way_unify1_Var_0_1_0_7 -> 
                  (if _lh_one_way_unify1_LH_P2_0_7_1 then
                    (`LH_P2(((termEq_d0_d0_d9_d5 _lh_one_way_unify1_arg1_1_0_7) _lh_one_way_unify1_LH_P2_1_7_1), _lh_one_way_unify1_arg3_1_0_7))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_0_7, _lh_one_way_unify1_arg1_1_0_7)), _lh_one_way_unify1_arg3_1_0_7))))))))
          else
            ((find_d2_d0_d4_d7 _lh_find_arg1_7_9) _lh_find_LH_C_1_7_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d8 _lh_find_arg1_1_0_5 _lh_find_arg2_9_4 =
  (match _lh_find_arg2_9_4 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_9_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_9_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_3_6 _lh_one_way_unify1_arg3_1_3_6 _lh_one_way_unify1_Var_0_1_3_6 -> 
            (if _lh_one_way_unify1_LH_P2_0_9_2 then
              (`LH_P2(((termEq_d0_d0_d9_d6 _lh_one_way_unify1_arg1_1_3_6) _lh_one_way_unify1_LH_P2_1_9_2), _lh_one_way_unify1_arg3_1_3_6))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_3_6, _lh_one_way_unify1_arg1_1_3_6)), _lh_one_way_unify1_arg3_1_3_6))))))))
    | `LH_C(_lh_find_LH_C_0_9_3, _lh_find_LH_C_1_9_8) -> 
      (match _lh_find_LH_C_0_9_3 with
        | `LH_P2(_lh_find_LH_P2_0_9_3, _lh_find_LH_P2_1_9_3) -> 
          (if (_lh_find_arg1_1_0_5 = _lh_find_LH_P2_0_9_3) then
            (let rec _lh_one_way_unify1_LH_P2_0_9_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_9_3 = _lh_find_LH_P2_1_9_3 in
                (fun _lh_one_way_unify1_arg1_1_3_7 _lh_one_way_unify1_arg3_1_3_7 _lh_one_way_unify1_Var_0_1_3_7 -> 
                  (if _lh_one_way_unify1_LH_P2_0_9_3 then
                    (`LH_P2(((termEq_d0_d0_d9_d7 _lh_one_way_unify1_arg1_1_3_7) _lh_one_way_unify1_LH_P2_1_9_3), _lh_one_way_unify1_arg3_1_3_7))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_3_7, _lh_one_way_unify1_arg1_1_3_7)), _lh_one_way_unify1_arg3_1_3_7))))))))
          else
            ((find_d2_d0_d4_d8 _lh_find_arg1_1_0_5) _lh_find_LH_C_1_9_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d4_d9 _lh_find_arg1_7_8 _lh_find_arg2_6_7 =
  (match _lh_find_arg2_6_7 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_6_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_6_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_0_2 _lh_one_way_unify1_arg3_1_0_2 _lh_one_way_unify1_Var_0_1_0_2 -> 
            (if _lh_one_way_unify1_LH_P2_0_6_8 then
              (`LH_P2(((termEq_d0_d0_d9_d8 _lh_one_way_unify1_arg1_1_0_2) _lh_one_way_unify1_LH_P2_1_6_8), _lh_one_way_unify1_arg3_1_0_2))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_0_2, _lh_one_way_unify1_arg1_1_0_2)), _lh_one_way_unify1_arg3_1_0_2))))))))
    | `LH_C(_lh_find_LH_C_0_6_7, _lh_find_LH_C_1_7_2) -> 
      (match _lh_find_LH_C_0_6_7 with
        | `LH_P2(_lh_find_LH_P2_0_6_7, _lh_find_LH_P2_1_6_7) -> 
          (if (_lh_find_arg1_7_8 = _lh_find_LH_P2_0_6_7) then
            (let rec _lh_one_way_unify1_LH_P2_0_6_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_6_9 = _lh_find_LH_P2_1_6_7 in
                (fun _lh_one_way_unify1_arg1_1_0_3 _lh_one_way_unify1_arg3_1_0_3 _lh_one_way_unify1_Var_0_1_0_3 -> 
                  (if _lh_one_way_unify1_LH_P2_0_6_9 then
                    (`LH_P2(((termEq_d0_d0_d9_d9 _lh_one_way_unify1_arg1_1_0_3) _lh_one_way_unify1_LH_P2_1_6_9), _lh_one_way_unify1_arg3_1_0_3))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_0_3, _lh_one_way_unify1_arg1_1_0_3)), _lh_one_way_unify1_arg3_1_0_3))))))))
          else
            ((find_d2_d0_d4_d9 _lh_find_arg1_7_8) _lh_find_LH_C_1_7_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5 _lh_find_arg1_1_4_9 _lh_find_arg2_1_2_7 =
  (match _lh_find_arg2_1_2_7 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_1_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_1_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_7_6 _lh_one_way_unify1_arg3_1_7_6 _lh_one_way_unify1_Var_0_1_7_6 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_1_8 then
              (`LH_P2(((termEq_d0_d0_d1_d0 _lh_one_way_unify1_arg1_1_7_6) _lh_one_way_unify1_LH_P2_1_1_1_8), _lh_one_way_unify1_arg3_1_7_6))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_7_6, _lh_one_way_unify1_arg1_1_7_6)), _lh_one_way_unify1_arg3_1_7_6))))))))
    | `LH_C(_lh_find_LH_C_0_1_3_0, _lh_find_LH_C_1_1_4_0) -> 
      (match _lh_find_LH_C_0_1_3_0 with
        | `LH_P2(_lh_find_LH_P2_0_1_3_0, _lh_find_LH_P2_1_1_3_0) -> 
          (if (_lh_find_arg1_1_4_9 = _lh_find_LH_P2_0_1_3_0) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_1_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_1_9 = _lh_find_LH_P2_1_1_3_0 in
                (fun _lh_one_way_unify1_arg1_1_7_7 _lh_one_way_unify1_arg3_1_7_7 _lh_one_way_unify1_Var_0_1_7_7 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_1_9 then
                    (`LH_P2(((termEq_d0_d0_d1_d1 _lh_one_way_unify1_arg1_1_7_7) _lh_one_way_unify1_LH_P2_1_1_1_9), _lh_one_way_unify1_arg3_1_7_7))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_7_7, _lh_one_way_unify1_arg1_1_7_7)), _lh_one_way_unify1_arg3_1_7_7))))))))
          else
            ((find_d2_d0_d5 _lh_find_arg1_1_4_9) _lh_find_LH_C_1_1_4_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d0 _lh_find_arg1_9_0 _lh_find_arg2_7_9 =
  (match _lh_find_arg2_7_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_8_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_8_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_2_0 _lh_one_way_unify1_arg3_1_2_0 _lh_one_way_unify1_Var_0_1_2_0 -> 
            (if _lh_one_way_unify1_LH_P2_0_8_0 then
              (`LH_P2(((termEq_d0_d0_d1_d0_d0 _lh_one_way_unify1_arg1_1_2_0) _lh_one_way_unify1_LH_P2_1_8_0), _lh_one_way_unify1_arg3_1_2_0))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_2_0, _lh_one_way_unify1_arg1_1_2_0)), _lh_one_way_unify1_arg3_1_2_0))))))))
    | `LH_C(_lh_find_LH_C_0_7_8, _lh_find_LH_C_1_8_3) -> 
      (match _lh_find_LH_C_0_7_8 with
        | `LH_P2(_lh_find_LH_P2_0_7_8, _lh_find_LH_P2_1_7_8) -> 
          (if (_lh_find_arg1_9_0 = _lh_find_LH_P2_0_7_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_8_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_8_1 = _lh_find_LH_P2_1_7_8 in
                (fun _lh_one_way_unify1_arg1_1_2_1 _lh_one_way_unify1_arg3_1_2_1 _lh_one_way_unify1_Var_0_1_2_1 -> 
                  (if _lh_one_way_unify1_LH_P2_0_8_1 then
                    (`LH_P2(((termEq_d0_d0_d1_d0_d1 _lh_one_way_unify1_arg1_1_2_1) _lh_one_way_unify1_LH_P2_1_8_1), _lh_one_way_unify1_arg3_1_2_1))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_2_1, _lh_one_way_unify1_arg1_1_2_1)), _lh_one_way_unify1_arg3_1_2_1))))))))
          else
            ((find_d2_d0_d5_d0 _lh_find_arg1_9_0) _lh_find_LH_C_1_8_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d1 _lh_find_arg1_5_0 _lh_find_arg2_3_9 =
  (match _lh_find_arg2_3_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_5_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_5_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_6_9 _lh_one_way_unify1_arg3_6_9 _lh_one_way_unify1_Var_0_6_9 -> 
            (if _lh_one_way_unify1_LH_P2_0_5_0 then
              (`LH_P2(((termEq_d0_d0_d1_d0_d2 _lh_one_way_unify1_arg1_6_9) _lh_one_way_unify1_LH_P2_1_5_0), _lh_one_way_unify1_arg3_6_9))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_6_9, _lh_one_way_unify1_arg1_6_9)), _lh_one_way_unify1_arg3_6_9))))))))
    | `LH_C(_lh_find_LH_C_0_4_2, _lh_find_LH_C_1_4_7) -> 
      (match _lh_find_LH_C_0_4_2 with
        | `LH_P2(_lh_find_LH_P2_0_4_2, _lh_find_LH_P2_1_4_2) -> 
          (if (_lh_find_arg1_5_0 = _lh_find_LH_P2_0_4_2) then
            (let rec _lh_one_way_unify1_LH_P2_0_5_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_5_1 = _lh_find_LH_P2_1_4_2 in
                (fun _lh_one_way_unify1_arg1_7_0 _lh_one_way_unify1_arg3_7_0 _lh_one_way_unify1_Var_0_7_0 -> 
                  (if _lh_one_way_unify1_LH_P2_0_5_1 then
                    (`LH_P2(((termEq_d0_d0_d1_d0_d3 _lh_one_way_unify1_arg1_7_0) _lh_one_way_unify1_LH_P2_1_5_1), _lh_one_way_unify1_arg3_7_0))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_7_0, _lh_one_way_unify1_arg1_7_0)), _lh_one_way_unify1_arg3_7_0))))))))
          else
            ((find_d2_d0_d5_d1 _lh_find_arg1_5_0) _lh_find_LH_C_1_4_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d2 _lh_find_arg1_2_4 _lh_find_arg2_1_3 =
  (match _lh_find_arg2_1_3 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_9 _lh_one_way_unify1_arg3_1_9 _lh_one_way_unify1_Var_0_1_9 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_2 then
              (`LH_P2(((termEq_d0_d0_d1_d0_d4 _lh_one_way_unify1_arg1_1_9) _lh_one_way_unify1_LH_P2_1_1_2), _lh_one_way_unify1_arg3_1_9))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_9, _lh_one_way_unify1_arg1_1_9)), _lh_one_way_unify1_arg3_1_9))))))))
    | `LH_C(_lh_find_LH_C_0_1_7, _lh_find_LH_C_1_2_2) -> 
      (match _lh_find_LH_C_0_1_7 with
        | `LH_P2(_lh_find_LH_P2_0_1_7, _lh_find_LH_P2_1_1_7) -> 
          (if (_lh_find_arg1_2_4 = _lh_find_LH_P2_0_1_7) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_3 = _lh_find_LH_P2_1_1_7 in
                (fun _lh_one_way_unify1_arg1_2_0 _lh_one_way_unify1_arg3_2_0 _lh_one_way_unify1_Var_0_2_0 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_3 then
                    (`LH_P2(((termEq_d0_d0_d1_d0_d5 _lh_one_way_unify1_arg1_2_0) _lh_one_way_unify1_LH_P2_1_1_3), _lh_one_way_unify1_arg3_2_0))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_2_0, _lh_one_way_unify1_arg1_2_0)), _lh_one_way_unify1_arg3_2_0))))))))
          else
            ((find_d2_d0_d5_d2 _lh_find_arg1_2_4) _lh_find_LH_C_1_2_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d3 _lh_find_arg1_9_8 _lh_find_arg2_8_7 =
  (match _lh_find_arg2_8_7 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_8_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_8_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_3_1 _lh_one_way_unify1_arg3_1_3_1 _lh_one_way_unify1_Var_0_1_3_1 -> 
            (if _lh_one_way_unify1_LH_P2_0_8_8 then
              (`LH_P2(((termEq_d0_d0_d1_d0_d6 _lh_one_way_unify1_arg1_1_3_1) _lh_one_way_unify1_LH_P2_1_8_8), _lh_one_way_unify1_arg3_1_3_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_3_1, _lh_one_way_unify1_arg1_1_3_1)), _lh_one_way_unify1_arg3_1_3_1))))))))
    | `LH_C(_lh_find_LH_C_0_8_6, _lh_find_LH_C_1_9_1) -> 
      (match _lh_find_LH_C_0_8_6 with
        | `LH_P2(_lh_find_LH_P2_0_8_6, _lh_find_LH_P2_1_8_6) -> 
          (if (_lh_find_arg1_9_8 = _lh_find_LH_P2_0_8_6) then
            (let rec _lh_one_way_unify1_LH_P2_0_8_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_8_9 = _lh_find_LH_P2_1_8_6 in
                (fun _lh_one_way_unify1_arg1_1_3_2 _lh_one_way_unify1_arg3_1_3_2 _lh_one_way_unify1_Var_0_1_3_2 -> 
                  (if _lh_one_way_unify1_LH_P2_0_8_9 then
                    (`LH_P2(((termEq_d0_d0_d1_d0_d7 _lh_one_way_unify1_arg1_1_3_2) _lh_one_way_unify1_LH_P2_1_8_9), _lh_one_way_unify1_arg3_1_3_2))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_3_2, _lh_one_way_unify1_arg1_1_3_2)), _lh_one_way_unify1_arg3_1_3_2))))))))
          else
            ((find_d2_d0_d5_d3 _lh_find_arg1_9_8) _lh_find_LH_C_1_9_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d4 _lh_find_arg1_4_3 _lh_find_arg2_3_2 =
  (match _lh_find_arg2_3_2 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_3_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_3_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_5_5 _lh_one_way_unify1_arg3_5_5 _lh_one_way_unify1_Var_0_5_5 -> 
            (if _lh_one_way_unify1_LH_P2_0_3_8 then
              (`LH_P2(((termEq_d0_d0_d1_d0_d8 _lh_one_way_unify1_arg1_5_5) _lh_one_way_unify1_LH_P2_1_3_8), _lh_one_way_unify1_arg3_5_5))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5_5, _lh_one_way_unify1_arg1_5_5)), _lh_one_way_unify1_arg3_5_5))))))))
    | `LH_C(_lh_find_LH_C_0_3_6, _lh_find_LH_C_1_4_1) -> 
      (match _lh_find_LH_C_0_3_6 with
        | `LH_P2(_lh_find_LH_P2_0_3_6, _lh_find_LH_P2_1_3_6) -> 
          (if (_lh_find_arg1_4_3 = _lh_find_LH_P2_0_3_6) then
            (let rec _lh_one_way_unify1_LH_P2_0_3_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_3_9 = _lh_find_LH_P2_1_3_6 in
                (fun _lh_one_way_unify1_arg1_5_6 _lh_one_way_unify1_arg3_5_6 _lh_one_way_unify1_Var_0_5_6 -> 
                  (if _lh_one_way_unify1_LH_P2_0_3_9 then
                    (`LH_P2(((termEq_d0_d0_d1_d0_d9 _lh_one_way_unify1_arg1_5_6) _lh_one_way_unify1_LH_P2_1_3_9), _lh_one_way_unify1_arg3_5_6))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5_6, _lh_one_way_unify1_arg1_5_6)), _lh_one_way_unify1_arg3_5_6))))))))
          else
            ((find_d2_d0_d5_d4 _lh_find_arg1_4_3) _lh_find_LH_C_1_4_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d5 _lh_find_arg1_9_1 _lh_find_arg2_8_0 =
  (match _lh_find_arg2_8_0 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_8_2 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_8_2 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_2_2 _lh_one_way_unify1_arg3_1_2_2 _lh_one_way_unify1_Var_0_1_2_2 -> 
            (if _lh_one_way_unify1_LH_P2_0_8_2 then
              (`LH_P2(((termEq_d0_d0_d1_d1_d0 _lh_one_way_unify1_arg1_1_2_2) _lh_one_way_unify1_LH_P2_1_8_2), _lh_one_way_unify1_arg3_1_2_2))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_2_2, _lh_one_way_unify1_arg1_1_2_2)), _lh_one_way_unify1_arg3_1_2_2))))))))
    | `LH_C(_lh_find_LH_C_0_7_9, _lh_find_LH_C_1_8_4) -> 
      (match _lh_find_LH_C_0_7_9 with
        | `LH_P2(_lh_find_LH_P2_0_7_9, _lh_find_LH_P2_1_7_9) -> 
          (if (_lh_find_arg1_9_1 = _lh_find_LH_P2_0_7_9) then
            (let rec _lh_one_way_unify1_LH_P2_0_8_3 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_8_3 = _lh_find_LH_P2_1_7_9 in
                (fun _lh_one_way_unify1_arg1_1_2_3 _lh_one_way_unify1_arg3_1_2_3 _lh_one_way_unify1_Var_0_1_2_3 -> 
                  (if _lh_one_way_unify1_LH_P2_0_8_3 then
                    (`LH_P2(((termEq_d0_d0_d1_d1_d1 _lh_one_way_unify1_arg1_1_2_3) _lh_one_way_unify1_LH_P2_1_8_3), _lh_one_way_unify1_arg3_1_2_3))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_2_3, _lh_one_way_unify1_arg1_1_2_3)), _lh_one_way_unify1_arg3_1_2_3))))))))
          else
            ((find_d2_d0_d5_d5 _lh_find_arg1_9_1) _lh_find_LH_C_1_8_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d6 _lh_find_arg1_2_1 _lh_find_arg2_1_0 =
  (match _lh_find_arg2_1_0 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_7 _lh_one_way_unify1_arg3_1_7 _lh_one_way_unify1_Var_0_1_7 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_0 then
              (`LH_P2(((termEq_d0_d0_d1_d1_d2 _lh_one_way_unify1_arg1_1_7) _lh_one_way_unify1_LH_P2_1_1_0), _lh_one_way_unify1_arg3_1_7))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_7, _lh_one_way_unify1_arg1_1_7)), _lh_one_way_unify1_arg3_1_7))))))))
    | `LH_C(_lh_find_LH_C_0_1_4, _lh_find_LH_C_1_1_9) -> 
      (match _lh_find_LH_C_0_1_4 with
        | `LH_P2(_lh_find_LH_P2_0_1_4, _lh_find_LH_P2_1_1_4) -> 
          (if (_lh_find_arg1_2_1 = _lh_find_LH_P2_0_1_4) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_1 = _lh_find_LH_P2_1_1_4 in
                (fun _lh_one_way_unify1_arg1_1_8 _lh_one_way_unify1_arg3_1_8 _lh_one_way_unify1_Var_0_1_8 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_1 then
                    (`LH_P2(((termEq_d0_d0_d1_d1_d3 _lh_one_way_unify1_arg1_1_8) _lh_one_way_unify1_LH_P2_1_1_1), _lh_one_way_unify1_arg3_1_8))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_8, _lh_one_way_unify1_arg1_1_8)), _lh_one_way_unify1_arg3_1_8))))))))
          else
            ((find_d2_d0_d5_d6 _lh_find_arg1_2_1) _lh_find_LH_C_1_1_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d7 _lh_find_arg1_4_4 _lh_find_arg2_3_3 =
  (match _lh_find_arg2_3_3 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_4_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_4_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_5_7 _lh_one_way_unify1_arg3_5_7 _lh_one_way_unify1_Var_0_5_7 -> 
            (if _lh_one_way_unify1_LH_P2_0_4_0 then
              (`LH_P2(((termEq_d0_d0_d1_d1_d4 _lh_one_way_unify1_arg1_5_7) _lh_one_way_unify1_LH_P2_1_4_0), _lh_one_way_unify1_arg3_5_7))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5_7, _lh_one_way_unify1_arg1_5_7)), _lh_one_way_unify1_arg3_5_7))))))))
    | `LH_C(_lh_find_LH_C_0_3_7, _lh_find_LH_C_1_4_2) -> 
      (match _lh_find_LH_C_0_3_7 with
        | `LH_P2(_lh_find_LH_P2_0_3_7, _lh_find_LH_P2_1_3_7) -> 
          (if (_lh_find_arg1_4_4 = _lh_find_LH_P2_0_3_7) then
            (let rec _lh_one_way_unify1_LH_P2_0_4_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_4_1 = _lh_find_LH_P2_1_3_7 in
                (fun _lh_one_way_unify1_arg1_5_8 _lh_one_way_unify1_arg3_5_8 _lh_one_way_unify1_Var_0_5_8 -> 
                  (if _lh_one_way_unify1_LH_P2_0_4_1 then
                    (`LH_P2(((termEq_d0_d0_d1_d1_d5 _lh_one_way_unify1_arg1_5_8) _lh_one_way_unify1_LH_P2_1_4_1), _lh_one_way_unify1_arg3_5_8))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5_8, _lh_one_way_unify1_arg1_5_8)), _lh_one_way_unify1_arg3_5_8))))))))
          else
            ((find_d2_d0_d5_d7 _lh_find_arg1_4_4) _lh_find_LH_C_1_4_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d8 _lh_find_arg1_1_3_5 _lh_find_arg2_1_1_3 =
  (match _lh_find_arg2_1_1_3 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_0_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_0_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_6_2 _lh_one_way_unify1_arg3_1_6_2 _lh_one_way_unify1_Var_0_1_6_2 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_0_8 then
              (`LH_P2(((termEq_d0_d0_d1_d1_d6 _lh_one_way_unify1_arg1_1_6_2) _lh_one_way_unify1_LH_P2_1_1_0_8), _lh_one_way_unify1_arg3_1_6_2))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_6_2, _lh_one_way_unify1_arg1_1_6_2)), _lh_one_way_unify1_arg3_1_6_2))))))))
    | `LH_C(_lh_find_LH_C_0_1_1_6, _lh_find_LH_C_1_1_2_6) -> 
      (match _lh_find_LH_C_0_1_1_6 with
        | `LH_P2(_lh_find_LH_P2_0_1_1_6, _lh_find_LH_P2_1_1_1_6) -> 
          (if (_lh_find_arg1_1_3_5 = _lh_find_LH_P2_0_1_1_6) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_0_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_0_9 = _lh_find_LH_P2_1_1_1_6 in
                (fun _lh_one_way_unify1_arg1_1_6_3 _lh_one_way_unify1_arg3_1_6_3 _lh_one_way_unify1_Var_0_1_6_3 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_0_9 then
                    (`LH_P2(((termEq_d0_d0_d1_d1_d7 _lh_one_way_unify1_arg1_1_6_3) _lh_one_way_unify1_LH_P2_1_1_0_9), _lh_one_way_unify1_arg3_1_6_3))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_6_3, _lh_one_way_unify1_arg1_1_6_3)), _lh_one_way_unify1_arg3_1_6_3))))))))
          else
            ((find_d2_d0_d5_d8 _lh_find_arg1_1_3_5) _lh_find_LH_C_1_1_2_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d5_d9 _lh_find_arg1_4_1 _lh_find_arg2_3_0 =
  (match _lh_find_arg2_3_0 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_3_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_3_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_5_1 _lh_one_way_unify1_arg3_5_1 _lh_one_way_unify1_Var_0_5_1 -> 
            (if _lh_one_way_unify1_LH_P2_0_3_4 then
              (`LH_P2(((termEq_d0_d0_d1_d1_d8 _lh_one_way_unify1_arg1_5_1) _lh_one_way_unify1_LH_P2_1_3_4), _lh_one_way_unify1_arg3_5_1))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5_1, _lh_one_way_unify1_arg1_5_1)), _lh_one_way_unify1_arg3_5_1))))))))
    | `LH_C(_lh_find_LH_C_0_3_4, _lh_find_LH_C_1_3_9) -> 
      (match _lh_find_LH_C_0_3_4 with
        | `LH_P2(_lh_find_LH_P2_0_3_4, _lh_find_LH_P2_1_3_4) -> 
          (if (_lh_find_arg1_4_1 = _lh_find_LH_P2_0_3_4) then
            (let rec _lh_one_way_unify1_LH_P2_0_3_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_3_5 = _lh_find_LH_P2_1_3_4 in
                (fun _lh_one_way_unify1_arg1_5_2 _lh_one_way_unify1_arg3_5_2 _lh_one_way_unify1_Var_0_5_2 -> 
                  (if _lh_one_way_unify1_LH_P2_0_3_5 then
                    (`LH_P2(((termEq_d0_d0_d1_d1_d9 _lh_one_way_unify1_arg1_5_2) _lh_one_way_unify1_LH_P2_1_3_5), _lh_one_way_unify1_arg3_5_2))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_5_2, _lh_one_way_unify1_arg1_5_2)), _lh_one_way_unify1_arg3_5_2))))))))
          else
            ((find_d2_d0_d5_d9 _lh_find_arg1_4_1) _lh_find_LH_C_1_3_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d6 _lh_find_arg1_4_7 _lh_find_arg2_3_6 =
  (match _lh_find_arg2_3_6 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_4_4 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_4_4 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_6_3 _lh_one_way_unify1_arg3_6_3 _lh_one_way_unify1_Var_0_6_3 -> 
            (if _lh_one_way_unify1_LH_P2_0_4_4 then
              (`LH_P2(((termEq_d0_d0_d1_d2 _lh_one_way_unify1_arg1_6_3) _lh_one_way_unify1_LH_P2_1_4_4), _lh_one_way_unify1_arg3_6_3))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_6_3, _lh_one_way_unify1_arg1_6_3)), _lh_one_way_unify1_arg3_6_3))))))))
    | `LH_C(_lh_find_LH_C_0_3_9, _lh_find_LH_C_1_4_4) -> 
      (match _lh_find_LH_C_0_3_9 with
        | `LH_P2(_lh_find_LH_P2_0_3_9, _lh_find_LH_P2_1_3_9) -> 
          (if (_lh_find_arg1_4_7 = _lh_find_LH_P2_0_3_9) then
            (let rec _lh_one_way_unify1_LH_P2_0_4_5 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_4_5 = _lh_find_LH_P2_1_3_9 in
                (fun _lh_one_way_unify1_arg1_6_4 _lh_one_way_unify1_arg3_6_4 _lh_one_way_unify1_Var_0_6_4 -> 
                  (if _lh_one_way_unify1_LH_P2_0_4_5 then
                    (`LH_P2(((termEq_d0_d0_d1_d3 _lh_one_way_unify1_arg1_6_4) _lh_one_way_unify1_LH_P2_1_4_5), _lh_one_way_unify1_arg3_6_4))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_6_4, _lh_one_way_unify1_arg1_6_4)), _lh_one_way_unify1_arg3_6_4))))))))
          else
            ((find_d2_d0_d6 _lh_find_arg1_4_7) _lh_find_LH_C_1_4_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d6_d0 _lh_find_arg1_1_4_2 _lh_find_arg2_1_2_0 =
  (match _lh_find_arg2_1_2_0 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_1_1_0 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_1_1_0 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_6_6 _lh_one_way_unify1_arg3_1_6_6 _lh_one_way_unify1_Var_0_1_6_6 -> 
            (if _lh_one_way_unify1_LH_P2_0_1_1_0 then
              (`LH_P2(((termEq_d0_d0_d1_d2_d0 _lh_one_way_unify1_arg1_1_6_6) _lh_one_way_unify1_LH_P2_1_1_1_0), _lh_one_way_unify1_arg3_1_6_6))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_6_6, _lh_one_way_unify1_arg1_1_6_6)), _lh_one_way_unify1_arg3_1_6_6))))))))
    | `LH_C(_lh_find_LH_C_0_1_2_3, _lh_find_LH_C_1_1_3_3) -> 
      (match _lh_find_LH_C_0_1_2_3 with
        | `LH_P2(_lh_find_LH_P2_0_1_2_3, _lh_find_LH_P2_1_1_2_3) -> 
          (if (_lh_find_arg1_1_4_2 = _lh_find_LH_P2_0_1_2_3) then
            (let rec _lh_one_way_unify1_LH_P2_0_1_1_1 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_1_1_1 = _lh_find_LH_P2_1_1_2_3 in
                (fun _lh_one_way_unify1_arg1_1_6_7 _lh_one_way_unify1_arg3_1_6_7 _lh_one_way_unify1_Var_0_1_6_7 -> 
                  (if _lh_one_way_unify1_LH_P2_0_1_1_1 then
                    (`LH_P2(((termEq_d0_d0_d1_d2_d1 _lh_one_way_unify1_arg1_1_6_7) _lh_one_way_unify1_LH_P2_1_1_1_1), _lh_one_way_unify1_arg3_1_6_7))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_6_7, _lh_one_way_unify1_arg1_1_6_7)), _lh_one_way_unify1_arg3_1_6_7))))))))
          else
            ((find_d2_d0_d6_d0 _lh_find_arg1_1_4_2) _lh_find_LH_C_1_1_3_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d7 _lh_find_arg1_5_7 _lh_find_arg2_4_6 =
  (match _lh_find_arg2_4_6 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_5_6 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_5_6 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_8_0 _lh_one_way_unify1_arg3_8_0 _lh_one_way_unify1_Var_0_8_0 -> 
            (if _lh_one_way_unify1_LH_P2_0_5_6 then
              (`LH_P2(((termEq_d0_d0_d1_d4 _lh_one_way_unify1_arg1_8_0) _lh_one_way_unify1_LH_P2_1_5_6), _lh_one_way_unify1_arg3_8_0))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_8_0, _lh_one_way_unify1_arg1_8_0)), _lh_one_way_unify1_arg3_8_0))))))))
    | `LH_C(_lh_find_LH_C_0_4_8, _lh_find_LH_C_1_5_3) -> 
      (match _lh_find_LH_C_0_4_8 with
        | `LH_P2(_lh_find_LH_P2_0_4_8, _lh_find_LH_P2_1_4_8) -> 
          (if (_lh_find_arg1_5_7 = _lh_find_LH_P2_0_4_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_5_7 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_5_7 = _lh_find_LH_P2_1_4_8 in
                (fun _lh_one_way_unify1_arg1_8_1 _lh_one_way_unify1_arg3_8_1 _lh_one_way_unify1_Var_0_8_1 -> 
                  (if _lh_one_way_unify1_LH_P2_0_5_7 then
                    (`LH_P2(((termEq_d0_d0_d1_d5 _lh_one_way_unify1_arg1_8_1) _lh_one_way_unify1_LH_P2_1_5_7), _lh_one_way_unify1_arg3_8_1))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_8_1, _lh_one_way_unify1_arg1_8_1)), _lh_one_way_unify1_arg3_8_1))))))))
          else
            ((find_d2_d0_d7 _lh_find_arg1_5_7) _lh_find_LH_C_1_5_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d8 _lh_find_arg1_1_1_0 _lh_find_arg2_9_9 =
  (match _lh_find_arg2_9_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_9_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_9_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_4_2 _lh_one_way_unify1_arg3_1_4_2 _lh_one_way_unify1_Var_0_1_4_2 -> 
            (if _lh_one_way_unify1_LH_P2_0_9_8 then
              (`LH_P2(((termEq_d0_d0_d1_d6 _lh_one_way_unify1_arg1_1_4_2) _lh_one_way_unify1_LH_P2_1_9_8), _lh_one_way_unify1_arg3_1_4_2))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_4_2, _lh_one_way_unify1_arg1_1_4_2)), _lh_one_way_unify1_arg3_1_4_2))))))))
    | `LH_C(_lh_find_LH_C_0_9_8, _lh_find_LH_C_1_1_0_3) -> 
      (match _lh_find_LH_C_0_9_8 with
        | `LH_P2(_lh_find_LH_P2_0_9_8, _lh_find_LH_P2_1_9_8) -> 
          (if (_lh_find_arg1_1_1_0 = _lh_find_LH_P2_0_9_8) then
            (let rec _lh_one_way_unify1_LH_P2_0_9_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_9_9 = _lh_find_LH_P2_1_9_8 in
                (fun _lh_one_way_unify1_arg1_1_4_3 _lh_one_way_unify1_arg3_1_4_3 _lh_one_way_unify1_Var_0_1_4_3 -> 
                  (if _lh_one_way_unify1_LH_P2_0_9_9 then
                    (`LH_P2(((termEq_d0_d0_d1_d7 _lh_one_way_unify1_arg1_1_4_3) _lh_one_way_unify1_LH_P2_1_9_9), _lh_one_way_unify1_arg3_1_4_3))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_4_3, _lh_one_way_unify1_arg1_1_4_3)), _lh_one_way_unify1_arg3_1_4_3))))))))
          else
            ((find_d2_d0_d8 _lh_find_arg1_1_1_0) _lh_find_LH_C_1_1_0_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and find_d2_d0_d9 _lh_find_arg1_2_0 _lh_find_arg2_9 =
  (match _lh_find_arg2_9 with
    | `LH_N -> 
      (let rec _lh_one_way_unify1_LH_P2_0_8 = false in
        (let rec _lh_one_way_unify1_LH_P2_1_8 = (`ERROR) in
          (fun _lh_one_way_unify1_arg1_1_3 _lh_one_way_unify1_arg3_1_3 _lh_one_way_unify1_Var_0_1_3 -> 
            (if _lh_one_way_unify1_LH_P2_0_8 then
              (`LH_P2(((termEq_d0_d0_d1_d8 _lh_one_way_unify1_arg1_1_3) _lh_one_way_unify1_LH_P2_1_8), _lh_one_way_unify1_arg3_1_3))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_3, _lh_one_way_unify1_arg1_1_3)), _lh_one_way_unify1_arg3_1_3))))))))
    | `LH_C(_lh_find_LH_C_0_1_3, _lh_find_LH_C_1_1_8) -> 
      (match _lh_find_LH_C_0_1_3 with
        | `LH_P2(_lh_find_LH_P2_0_1_3, _lh_find_LH_P2_1_1_3) -> 
          (if (_lh_find_arg1_2_0 = _lh_find_LH_P2_0_1_3) then
            (let rec _lh_one_way_unify1_LH_P2_0_9 = true in
              (let rec _lh_one_way_unify1_LH_P2_1_9 = _lh_find_LH_P2_1_1_3 in
                (fun _lh_one_way_unify1_arg1_1_4 _lh_one_way_unify1_arg3_1_4 _lh_one_way_unify1_Var_0_1_4 -> 
                  (if _lh_one_way_unify1_LH_P2_0_9 then
                    (`LH_P2(((termEq_d0_d0_d1_d9 _lh_one_way_unify1_arg1_1_4) _lh_one_way_unify1_LH_P2_1_9), _lh_one_way_unify1_arg3_1_4))
                  else
                    (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_1_4, _lh_one_way_unify1_arg1_1_4)), _lh_one_way_unify1_arg3_1_4))))))))
          else
            ((find_d2_d0_d9 _lh_find_arg1_2_0) _lh_find_LH_C_1_1_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and one_way_unify1_lst_d0_d0_d0 _lh_one_way_unify1_lst_arg1_5 _lh_one_way_unify1_lst_arg2_5 _lh_one_way_unify1_lst_arg3_5 =
  (match _lh_one_way_unify1_lst_arg1_5 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0, _lh_one_way_unify1_lst_LH_C_1_1_0) -> 
      (match _lh_one_way_unify1_lst_arg2_5 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1, _lh_one_way_unify1_lst_LH_C_1_1_1) -> 
          (let rec _lh_matchIdent_1_0_1 = (((one_way_unify1_d0_d0_d0 _lh_one_way_unify1_lst_LH_C_0_1_0) _lh_one_way_unify1_lst_LH_C_0_1_1) _lh_one_way_unify1_lst_arg3_5) in
            (match _lh_matchIdent_1_0_1 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0, _lh_one_way_unify1_lst_LH_P2_1_1_0) -> 
                (let rec _lh_matchIdent_1_0_2 = (((one_way_unify1_lst_d0_d0_d0 _lh_one_way_unify1_lst_LH_C_1_1_0) _lh_one_way_unify1_lst_LH_C_1_1_1) _lh_one_way_unify1_lst_LH_P2_1_1_0) in
                  (match _lh_matchIdent_1_0_2 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1, _lh_one_way_unify1_lst_LH_P2_1_1_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_0 && _lh_one_way_unify1_lst_LH_P2_0_1_1), _lh_one_way_unify1_lst_LH_P2_1_1_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1 _lh_one_way_unify1_lst_arg1_1_3 _lh_one_way_unify1_lst_arg2_1_3 _lh_one_way_unify1_lst_arg3_1_3 =
  (match _lh_one_way_unify1_lst_arg1_1_3 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_3 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_3))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_6, _lh_one_way_unify1_lst_LH_C_1_2_6) -> 
      (match _lh_one_way_unify1_lst_arg2_1_3 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_7, _lh_one_way_unify1_lst_LH_C_1_2_7) -> 
          (let rec _lh_matchIdent_1_6_8 = (((one_way_unify1_d0_d0_d1 _lh_one_way_unify1_lst_LH_C_0_2_6) _lh_one_way_unify1_lst_LH_C_0_2_7) _lh_one_way_unify1_lst_arg3_1_3) in
            (match _lh_matchIdent_1_6_8 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_6, _lh_one_way_unify1_lst_LH_P2_1_2_6) -> 
                (let rec _lh_matchIdent_1_6_9 = (((one_way_unify1_lst_d0_d0_d1 _lh_one_way_unify1_lst_LH_C_1_2_6) _lh_one_way_unify1_lst_LH_C_1_2_7) _lh_one_way_unify1_lst_LH_P2_1_2_6) in
                  (match _lh_matchIdent_1_6_9 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_7, _lh_one_way_unify1_lst_LH_P2_1_2_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_2_6 && _lh_one_way_unify1_lst_LH_P2_0_2_7), _lh_one_way_unify1_lst_LH_P2_1_2_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d0 _lh_one_way_unify1_lst_arg1_3 _lh_one_way_unify1_lst_arg2_3 _lh_one_way_unify1_lst_arg3_3 =
  (match _lh_one_way_unify1_lst_arg1_3 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6, _lh_one_way_unify1_lst_LH_C_1_6) -> 
      (match _lh_one_way_unify1_lst_arg2_3 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7, _lh_one_way_unify1_lst_LH_C_1_7) -> 
          (let rec _lh_matchIdent_9_2 = (((one_way_unify1_d0_d0_d1_d0 _lh_one_way_unify1_lst_LH_C_0_6) _lh_one_way_unify1_lst_LH_C_0_7) _lh_one_way_unify1_lst_arg3_3) in
            (match _lh_matchIdent_9_2 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6, _lh_one_way_unify1_lst_LH_P2_1_6) -> 
                (let rec _lh_matchIdent_9_3 = (((one_way_unify1_lst_d0_d0_d1_d0 _lh_one_way_unify1_lst_LH_C_1_6) _lh_one_way_unify1_lst_LH_C_1_7) _lh_one_way_unify1_lst_LH_P2_1_6) in
                  (match _lh_matchIdent_9_3 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7, _lh_one_way_unify1_lst_LH_P2_1_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_6 && _lh_one_way_unify1_lst_LH_P2_0_7), _lh_one_way_unify1_lst_LH_P2_1_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d1 _lh_one_way_unify1_lst_arg1_2_9 _lh_one_way_unify1_lst_arg2_2_9 _lh_one_way_unify1_lst_arg3_2_9 =
  (match _lh_one_way_unify1_lst_arg1_2_9 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_9 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_9))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_8, _lh_one_way_unify1_lst_LH_C_1_5_8) -> 
      (match _lh_one_way_unify1_lst_arg2_2_9 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_9, _lh_one_way_unify1_lst_LH_C_1_5_9) -> 
          (let rec _lh_matchIdent_2_5_7 = (((one_way_unify1_d0_d0_d1_d1 _lh_one_way_unify1_lst_LH_C_0_5_8) _lh_one_way_unify1_lst_LH_C_0_5_9) _lh_one_way_unify1_lst_arg3_2_9) in
            (match _lh_matchIdent_2_5_7 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_8, _lh_one_way_unify1_lst_LH_P2_1_5_8) -> 
                (let rec _lh_matchIdent_2_5_8 = (((one_way_unify1_lst_d0_d0_d1_d1 _lh_one_way_unify1_lst_LH_C_1_5_8) _lh_one_way_unify1_lst_LH_C_1_5_9) _lh_one_way_unify1_lst_LH_P2_1_5_8) in
                  (match _lh_matchIdent_2_5_8 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_9, _lh_one_way_unify1_lst_LH_P2_1_5_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_5_8 && _lh_one_way_unify1_lst_LH_P2_0_5_9), _lh_one_way_unify1_lst_LH_P2_1_5_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d2 _lh_one_way_unify1_lst_arg1_2_4 _lh_one_way_unify1_lst_arg2_2_4 _lh_one_way_unify1_lst_arg3_2_4 =
  (match _lh_one_way_unify1_lst_arg1_2_4 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_4 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_4))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_8, _lh_one_way_unify1_lst_LH_C_1_4_8) -> 
      (match _lh_one_way_unify1_lst_arg2_2_4 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_9, _lh_one_way_unify1_lst_LH_C_1_4_9) -> 
          (let rec _lh_matchIdent_2_3_3 = (((one_way_unify1_d0_d0_d1_d2 _lh_one_way_unify1_lst_LH_C_0_4_8) _lh_one_way_unify1_lst_LH_C_0_4_9) _lh_one_way_unify1_lst_arg3_2_4) in
            (match _lh_matchIdent_2_3_3 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_8, _lh_one_way_unify1_lst_LH_P2_1_4_8) -> 
                (let rec _lh_matchIdent_2_3_4 = (((one_way_unify1_lst_d0_d0_d1_d2 _lh_one_way_unify1_lst_LH_C_1_4_8) _lh_one_way_unify1_lst_LH_C_1_4_9) _lh_one_way_unify1_lst_LH_P2_1_4_8) in
                  (match _lh_matchIdent_2_3_4 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_9, _lh_one_way_unify1_lst_LH_P2_1_4_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_4_8 && _lh_one_way_unify1_lst_LH_P2_0_4_9), _lh_one_way_unify1_lst_LH_P2_1_4_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d3 _lh_one_way_unify1_lst_arg1_1_4 _lh_one_way_unify1_lst_arg2_1_4 _lh_one_way_unify1_lst_arg3_1_4 =
  (match _lh_one_way_unify1_lst_arg1_1_4 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_4 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_4))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_8, _lh_one_way_unify1_lst_LH_C_1_2_8) -> 
      (match _lh_one_way_unify1_lst_arg2_1_4 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_9, _lh_one_way_unify1_lst_LH_C_1_2_9) -> 
          (let rec _lh_matchIdent_1_7_1 = (((one_way_unify1_d0_d0_d1_d3 _lh_one_way_unify1_lst_LH_C_0_2_8) _lh_one_way_unify1_lst_LH_C_0_2_9) _lh_one_way_unify1_lst_arg3_1_4) in
            (match _lh_matchIdent_1_7_1 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_8, _lh_one_way_unify1_lst_LH_P2_1_2_8) -> 
                (let rec _lh_matchIdent_1_7_2 = (((one_way_unify1_lst_d0_d0_d1_d3 _lh_one_way_unify1_lst_LH_C_1_2_8) _lh_one_way_unify1_lst_LH_C_1_2_9) _lh_one_way_unify1_lst_LH_P2_1_2_8) in
                  (match _lh_matchIdent_1_7_2 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_9, _lh_one_way_unify1_lst_LH_P2_1_2_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_2_8 && _lh_one_way_unify1_lst_LH_P2_0_2_9), _lh_one_way_unify1_lst_LH_P2_1_2_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d4 _lh_one_way_unify1_lst_arg1_4_4 _lh_one_way_unify1_lst_arg2_4_4 _lh_one_way_unify1_lst_arg3_4_4 =
  (match _lh_one_way_unify1_lst_arg1_4_4 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_4 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_4))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_8, _lh_one_way_unify1_lst_LH_C_1_8_8) -> 
      (match _lh_one_way_unify1_lst_arg2_4_4 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_9, _lh_one_way_unify1_lst_LH_C_1_8_9) -> 
          (let rec _lh_matchIdent_3_3_6 = (((one_way_unify1_d0_d0_d1_d4 _lh_one_way_unify1_lst_LH_C_0_8_8) _lh_one_way_unify1_lst_LH_C_0_8_9) _lh_one_way_unify1_lst_arg3_4_4) in
            (match _lh_matchIdent_3_3_6 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_8, _lh_one_way_unify1_lst_LH_P2_1_8_8) -> 
                (let rec _lh_matchIdent_3_3_7 = (((one_way_unify1_lst_d0_d0_d1_d4 _lh_one_way_unify1_lst_LH_C_1_8_8) _lh_one_way_unify1_lst_LH_C_1_8_9) _lh_one_way_unify1_lst_LH_P2_1_8_8) in
                  (match _lh_matchIdent_3_3_7 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_9, _lh_one_way_unify1_lst_LH_P2_1_8_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_8_8 && _lh_one_way_unify1_lst_LH_P2_0_8_9), _lh_one_way_unify1_lst_LH_P2_1_8_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d5 _lh_one_way_unify1_lst_arg1_1_1 _lh_one_way_unify1_lst_arg2_1_1 _lh_one_way_unify1_lst_arg3_1_1 =
  (match _lh_one_way_unify1_lst_arg1_1_1 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_1 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_1))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_2, _lh_one_way_unify1_lst_LH_C_1_2_2) -> 
      (match _lh_one_way_unify1_lst_arg2_1_1 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_3, _lh_one_way_unify1_lst_LH_C_1_2_3) -> 
          (let rec _lh_matchIdent_1_5_5 = (((one_way_unify1_d0_d0_d1_d5 _lh_one_way_unify1_lst_LH_C_0_2_2) _lh_one_way_unify1_lst_LH_C_0_2_3) _lh_one_way_unify1_lst_arg3_1_1) in
            (match _lh_matchIdent_1_5_5 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_2, _lh_one_way_unify1_lst_LH_P2_1_2_2) -> 
                (let rec _lh_matchIdent_1_5_6 = (((one_way_unify1_lst_d0_d0_d1_d5 _lh_one_way_unify1_lst_LH_C_1_2_2) _lh_one_way_unify1_lst_LH_C_1_2_3) _lh_one_way_unify1_lst_LH_P2_1_2_2) in
                  (match _lh_matchIdent_1_5_6 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_3, _lh_one_way_unify1_lst_LH_P2_1_2_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_2_2 && _lh_one_way_unify1_lst_LH_P2_0_2_3), _lh_one_way_unify1_lst_LH_P2_1_2_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d6 _lh_one_way_unify1_lst_arg1_1_2 _lh_one_way_unify1_lst_arg2_1_2 _lh_one_way_unify1_lst_arg3_1_2 =
  (match _lh_one_way_unify1_lst_arg1_1_2 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_2 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_2))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_4, _lh_one_way_unify1_lst_LH_C_1_2_4) -> 
      (match _lh_one_way_unify1_lst_arg2_1_2 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_5, _lh_one_way_unify1_lst_LH_C_1_2_5) -> 
          (let rec _lh_matchIdent_1_6_0 = (((one_way_unify1_d0_d0_d1_d6 _lh_one_way_unify1_lst_LH_C_0_2_4) _lh_one_way_unify1_lst_LH_C_0_2_5) _lh_one_way_unify1_lst_arg3_1_2) in
            (match _lh_matchIdent_1_6_0 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_4, _lh_one_way_unify1_lst_LH_P2_1_2_4) -> 
                (let rec _lh_matchIdent_1_6_1 = (((one_way_unify1_lst_d0_d0_d1_d6 _lh_one_way_unify1_lst_LH_C_1_2_4) _lh_one_way_unify1_lst_LH_C_1_2_5) _lh_one_way_unify1_lst_LH_P2_1_2_4) in
                  (match _lh_matchIdent_1_6_1 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_5, _lh_one_way_unify1_lst_LH_P2_1_2_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_2_4 && _lh_one_way_unify1_lst_LH_P2_0_2_5), _lh_one_way_unify1_lst_LH_P2_1_2_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d7 _lh_one_way_unify1_lst_arg1_4_8 _lh_one_way_unify1_lst_arg2_4_8 _lh_one_way_unify1_lst_arg3_4_8 =
  (match _lh_one_way_unify1_lst_arg1_4_8 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_8 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_8))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_6, _lh_one_way_unify1_lst_LH_C_1_9_6) -> 
      (match _lh_one_way_unify1_lst_arg2_4_8 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_7, _lh_one_way_unify1_lst_LH_C_1_9_7) -> 
          (let rec _lh_matchIdent_3_6_2 = (((one_way_unify1_d0_d0_d1_d7 _lh_one_way_unify1_lst_LH_C_0_9_6) _lh_one_way_unify1_lst_LH_C_0_9_7) _lh_one_way_unify1_lst_arg3_4_8) in
            (match _lh_matchIdent_3_6_2 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_6, _lh_one_way_unify1_lst_LH_P2_1_9_6) -> 
                (let rec _lh_matchIdent_3_6_3 = (((one_way_unify1_lst_d0_d0_d1_d7 _lh_one_way_unify1_lst_LH_C_1_9_6) _lh_one_way_unify1_lst_LH_C_1_9_7) _lh_one_way_unify1_lst_LH_P2_1_9_6) in
                  (match _lh_matchIdent_3_6_3 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_7, _lh_one_way_unify1_lst_LH_P2_1_9_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_9_6 && _lh_one_way_unify1_lst_LH_P2_0_9_7), _lh_one_way_unify1_lst_LH_P2_1_9_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d8 _lh_one_way_unify1_lst_arg1_4_6 _lh_one_way_unify1_lst_arg2_4_6 _lh_one_way_unify1_lst_arg3_4_6 =
  (match _lh_one_way_unify1_lst_arg1_4_6 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_6 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_6))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_2, _lh_one_way_unify1_lst_LH_C_1_9_2) -> 
      (match _lh_one_way_unify1_lst_arg2_4_6 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_3, _lh_one_way_unify1_lst_LH_C_1_9_3) -> 
          (let rec _lh_matchIdent_3_4_4 = (((one_way_unify1_d0_d0_d1_d8 _lh_one_way_unify1_lst_LH_C_0_9_2) _lh_one_way_unify1_lst_LH_C_0_9_3) _lh_one_way_unify1_lst_arg3_4_6) in
            (match _lh_matchIdent_3_4_4 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_2, _lh_one_way_unify1_lst_LH_P2_1_9_2) -> 
                (let rec _lh_matchIdent_3_4_5 = (((one_way_unify1_lst_d0_d0_d1_d8 _lh_one_way_unify1_lst_LH_C_1_9_2) _lh_one_way_unify1_lst_LH_C_1_9_3) _lh_one_way_unify1_lst_LH_P2_1_9_2) in
                  (match _lh_matchIdent_3_4_5 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_3, _lh_one_way_unify1_lst_LH_P2_1_9_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_9_2 && _lh_one_way_unify1_lst_LH_P2_0_9_3), _lh_one_way_unify1_lst_LH_P2_1_9_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d1_d9 _lh_one_way_unify1_lst_arg1_2_6 _lh_one_way_unify1_lst_arg2_2_6 _lh_one_way_unify1_lst_arg3_2_6 =
  (match _lh_one_way_unify1_lst_arg1_2_6 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_6 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_6))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_2, _lh_one_way_unify1_lst_LH_C_1_5_2) -> 
      (match _lh_one_way_unify1_lst_arg2_2_6 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_3, _lh_one_way_unify1_lst_LH_C_1_5_3) -> 
          (let rec _lh_matchIdent_2_3_8 = (((one_way_unify1_d0_d0_d1_d9 _lh_one_way_unify1_lst_LH_C_0_5_2) _lh_one_way_unify1_lst_LH_C_0_5_3) _lh_one_way_unify1_lst_arg3_2_6) in
            (match _lh_matchIdent_2_3_8 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_2, _lh_one_way_unify1_lst_LH_P2_1_5_2) -> 
                (let rec _lh_matchIdent_2_3_9 = (((one_way_unify1_lst_d0_d0_d1_d9 _lh_one_way_unify1_lst_LH_C_1_5_2) _lh_one_way_unify1_lst_LH_C_1_5_3) _lh_one_way_unify1_lst_LH_P2_1_5_2) in
                  (match _lh_matchIdent_2_3_9 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_3, _lh_one_way_unify1_lst_LH_P2_1_5_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_5_2 && _lh_one_way_unify1_lst_LH_P2_0_5_3), _lh_one_way_unify1_lst_LH_P2_1_5_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2 _lh_one_way_unify1_lst_arg1_8 _lh_one_way_unify1_lst_arg2_8 _lh_one_way_unify1_lst_arg3_8 =
  (match _lh_one_way_unify1_lst_arg1_8 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_8 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_8))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_6, _lh_one_way_unify1_lst_LH_C_1_1_6) -> 
      (match _lh_one_way_unify1_lst_arg2_8 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_7, _lh_one_way_unify1_lst_LH_C_1_1_7) -> 
          (let rec _lh_matchIdent_1_3_6 = (((one_way_unify1_d0_d0_d2 _lh_one_way_unify1_lst_LH_C_0_1_6) _lh_one_way_unify1_lst_LH_C_0_1_7) _lh_one_way_unify1_lst_arg3_8) in
            (match _lh_matchIdent_1_3_6 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_6, _lh_one_way_unify1_lst_LH_P2_1_1_6) -> 
                (let rec _lh_matchIdent_1_3_7 = (((one_way_unify1_lst_d0_d0_d2 _lh_one_way_unify1_lst_LH_C_1_1_6) _lh_one_way_unify1_lst_LH_C_1_1_7) _lh_one_way_unify1_lst_LH_P2_1_1_6) in
                  (match _lh_matchIdent_1_3_7 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_7, _lh_one_way_unify1_lst_LH_P2_1_1_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_6 && _lh_one_way_unify1_lst_LH_P2_0_1_7), _lh_one_way_unify1_lst_LH_P2_1_1_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2_d0 _lh_one_way_unify1_lst_arg1_3_9 _lh_one_way_unify1_lst_arg2_3_9 _lh_one_way_unify1_lst_arg3_3_9 =
  (match _lh_one_way_unify1_lst_arg1_3_9 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_9 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_9))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_8, _lh_one_way_unify1_lst_LH_C_1_7_8) -> 
      (match _lh_one_way_unify1_lst_arg2_3_9 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_9, _lh_one_way_unify1_lst_LH_C_1_7_9) -> 
          (let rec _lh_matchIdent_3_1_3 = (((one_way_unify1_d0_d0_d2_d0 _lh_one_way_unify1_lst_LH_C_0_7_8) _lh_one_way_unify1_lst_LH_C_0_7_9) _lh_one_way_unify1_lst_arg3_3_9) in
            (match _lh_matchIdent_3_1_3 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_8, _lh_one_way_unify1_lst_LH_P2_1_7_8) -> 
                (let rec _lh_matchIdent_3_1_4 = (((one_way_unify1_lst_d0_d0_d2_d0 _lh_one_way_unify1_lst_LH_C_1_7_8) _lh_one_way_unify1_lst_LH_C_1_7_9) _lh_one_way_unify1_lst_LH_P2_1_7_8) in
                  (match _lh_matchIdent_3_1_4 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_9, _lh_one_way_unify1_lst_LH_P2_1_7_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_7_8 && _lh_one_way_unify1_lst_LH_P2_0_7_9), _lh_one_way_unify1_lst_LH_P2_1_7_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2_d1 _lh_one_way_unify1_lst_arg1_2_5 _lh_one_way_unify1_lst_arg2_2_5 _lh_one_way_unify1_lst_arg3_2_5 =
  (match _lh_one_way_unify1_lst_arg1_2_5 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_5 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_5))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_0, _lh_one_way_unify1_lst_LH_C_1_5_0) -> 
      (match _lh_one_way_unify1_lst_arg2_2_5 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_1, _lh_one_way_unify1_lst_LH_C_1_5_1) -> 
          (let rec _lh_matchIdent_2_3_6 = (((one_way_unify1_d0_d0_d2_d1 _lh_one_way_unify1_lst_LH_C_0_5_0) _lh_one_way_unify1_lst_LH_C_0_5_1) _lh_one_way_unify1_lst_arg3_2_5) in
            (match _lh_matchIdent_2_3_6 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_0, _lh_one_way_unify1_lst_LH_P2_1_5_0) -> 
                (let rec _lh_matchIdent_2_3_7 = (((one_way_unify1_lst_d0_d0_d2_d1 _lh_one_way_unify1_lst_LH_C_1_5_0) _lh_one_way_unify1_lst_LH_C_1_5_1) _lh_one_way_unify1_lst_LH_P2_1_5_0) in
                  (match _lh_matchIdent_2_3_7 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_1, _lh_one_way_unify1_lst_LH_P2_1_5_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_5_0 && _lh_one_way_unify1_lst_LH_P2_0_5_1), _lh_one_way_unify1_lst_LH_P2_1_5_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2_d2 _lh_one_way_unify1_lst_arg1_1 _lh_one_way_unify1_lst_arg2_1 _lh_one_way_unify1_lst_arg3_1 =
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
          (let rec _lh_matchIdent_8_3 = (((one_way_unify1_d0_d0_d2_d2 _lh_one_way_unify1_lst_LH_C_0_2) _lh_one_way_unify1_lst_LH_C_0_3) _lh_one_way_unify1_lst_arg3_1) in
            (match _lh_matchIdent_8_3 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2, _lh_one_way_unify1_lst_LH_P2_1_2) -> 
                (let rec _lh_matchIdent_8_4 = (((one_way_unify1_lst_d0_d0_d2_d2 _lh_one_way_unify1_lst_LH_C_1_2) _lh_one_way_unify1_lst_LH_C_1_3) _lh_one_way_unify1_lst_LH_P2_1_2) in
                  (match _lh_matchIdent_8_4 with
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
and one_way_unify1_lst_d0_d0_d2_d3 _lh_one_way_unify1_lst_arg1_5_6 _lh_one_way_unify1_lst_arg2_5_6 _lh_one_way_unify1_lst_arg3_5_6 =
  (match _lh_one_way_unify1_lst_arg1_5_6 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_6 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_6))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_2, _lh_one_way_unify1_lst_LH_C_1_1_1_2) -> 
      (match _lh_one_way_unify1_lst_arg2_5_6 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_3, _lh_one_way_unify1_lst_LH_C_1_1_1_3) -> 
          (let rec _lh_matchIdent_4_6_3 = (((one_way_unify1_d0_d0_d2_d3 _lh_one_way_unify1_lst_LH_C_0_1_1_2) _lh_one_way_unify1_lst_LH_C_0_1_1_3) _lh_one_way_unify1_lst_arg3_5_6) in
            (match _lh_matchIdent_4_6_3 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_2, _lh_one_way_unify1_lst_LH_P2_1_1_1_2) -> 
                (let rec _lh_matchIdent_4_6_4 = (((one_way_unify1_lst_d0_d0_d2_d3 _lh_one_way_unify1_lst_LH_C_1_1_1_2) _lh_one_way_unify1_lst_LH_C_1_1_1_3) _lh_one_way_unify1_lst_LH_P2_1_1_1_2) in
                  (match _lh_matchIdent_4_6_4 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_3, _lh_one_way_unify1_lst_LH_P2_1_1_1_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_1_2 && _lh_one_way_unify1_lst_LH_P2_0_1_1_3), _lh_one_way_unify1_lst_LH_P2_1_1_1_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2_d4 _lh_one_way_unify1_lst_arg1_6_1 _lh_one_way_unify1_lst_arg2_6_1 _lh_one_way_unify1_lst_arg3_6_1 =
  (match _lh_one_way_unify1_lst_arg1_6_1 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_6_1 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_6_1))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_2_2, _lh_one_way_unify1_lst_LH_C_1_1_2_2) -> 
      (match _lh_one_way_unify1_lst_arg2_6_1 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_2_3, _lh_one_way_unify1_lst_LH_C_1_1_2_3) -> 
          (let rec _lh_matchIdent_4_9_0 = (((one_way_unify1_d0_d0_d2_d4 _lh_one_way_unify1_lst_LH_C_0_1_2_2) _lh_one_way_unify1_lst_LH_C_0_1_2_3) _lh_one_way_unify1_lst_arg3_6_1) in
            (match _lh_matchIdent_4_9_0 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_2_2, _lh_one_way_unify1_lst_LH_P2_1_1_2_2) -> 
                (let rec _lh_matchIdent_4_9_1 = (((one_way_unify1_lst_d0_d0_d2_d4 _lh_one_way_unify1_lst_LH_C_1_1_2_2) _lh_one_way_unify1_lst_LH_C_1_1_2_3) _lh_one_way_unify1_lst_LH_P2_1_1_2_2) in
                  (match _lh_matchIdent_4_9_1 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_2_3, _lh_one_way_unify1_lst_LH_P2_1_1_2_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_2_2 && _lh_one_way_unify1_lst_LH_P2_0_1_2_3), _lh_one_way_unify1_lst_LH_P2_1_1_2_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2_d5 _lh_one_way_unify1_lst_arg1_1_5 _lh_one_way_unify1_lst_arg2_1_5 _lh_one_way_unify1_lst_arg3_1_5 =
  (match _lh_one_way_unify1_lst_arg1_1_5 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_5 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_5))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_0, _lh_one_way_unify1_lst_LH_C_1_3_0) -> 
      (match _lh_one_way_unify1_lst_arg2_1_5 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_1, _lh_one_way_unify1_lst_LH_C_1_3_1) -> 
          (let rec _lh_matchIdent_1_7_5 = (((one_way_unify1_d0_d0_d2_d5 _lh_one_way_unify1_lst_LH_C_0_3_0) _lh_one_way_unify1_lst_LH_C_0_3_1) _lh_one_way_unify1_lst_arg3_1_5) in
            (match _lh_matchIdent_1_7_5 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_0, _lh_one_way_unify1_lst_LH_P2_1_3_0) -> 
                (let rec _lh_matchIdent_1_7_6 = (((one_way_unify1_lst_d0_d0_d2_d5 _lh_one_way_unify1_lst_LH_C_1_3_0) _lh_one_way_unify1_lst_LH_C_1_3_1) _lh_one_way_unify1_lst_LH_P2_1_3_0) in
                  (match _lh_matchIdent_1_7_6 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_1, _lh_one_way_unify1_lst_LH_P2_1_3_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_3_0 && _lh_one_way_unify1_lst_LH_P2_0_3_1), _lh_one_way_unify1_lst_LH_P2_1_3_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2_d6 _lh_one_way_unify1_lst_arg1_5_0 _lh_one_way_unify1_lst_arg2_5_0 _lh_one_way_unify1_lst_arg3_5_0 =
  (match _lh_one_way_unify1_lst_arg1_5_0 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_0 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_0))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_0, _lh_one_way_unify1_lst_LH_C_1_1_0_0) -> 
      (match _lh_one_way_unify1_lst_arg2_5_0 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_1, _lh_one_way_unify1_lst_LH_C_1_1_0_1) -> 
          (let rec _lh_matchIdent_3_7_1 = (((one_way_unify1_d0_d0_d2_d6 _lh_one_way_unify1_lst_LH_C_0_1_0_0) _lh_one_way_unify1_lst_LH_C_0_1_0_1) _lh_one_way_unify1_lst_arg3_5_0) in
            (match _lh_matchIdent_3_7_1 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_0, _lh_one_way_unify1_lst_LH_P2_1_1_0_0) -> 
                (let rec _lh_matchIdent_3_7_2 = (((one_way_unify1_lst_d0_d0_d2_d6 _lh_one_way_unify1_lst_LH_C_1_1_0_0) _lh_one_way_unify1_lst_LH_C_1_1_0_1) _lh_one_way_unify1_lst_LH_P2_1_1_0_0) in
                  (match _lh_matchIdent_3_7_2 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_1, _lh_one_way_unify1_lst_LH_P2_1_1_0_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_0_0 && _lh_one_way_unify1_lst_LH_P2_0_1_0_1), _lh_one_way_unify1_lst_LH_P2_1_1_0_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2_d7 _lh_one_way_unify1_lst_arg1_5_5 _lh_one_way_unify1_lst_arg2_5_5 _lh_one_way_unify1_lst_arg3_5_5 =
  (match _lh_one_way_unify1_lst_arg1_5_5 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_5 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_5))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_0, _lh_one_way_unify1_lst_LH_C_1_1_1_0) -> 
      (match _lh_one_way_unify1_lst_arg2_5_5 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_1, _lh_one_way_unify1_lst_LH_C_1_1_1_1) -> 
          (let rec _lh_matchIdent_4_6_1 = (((one_way_unify1_d0_d0_d2_d7 _lh_one_way_unify1_lst_LH_C_0_1_1_0) _lh_one_way_unify1_lst_LH_C_0_1_1_1) _lh_one_way_unify1_lst_arg3_5_5) in
            (match _lh_matchIdent_4_6_1 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_0, _lh_one_way_unify1_lst_LH_P2_1_1_1_0) -> 
                (let rec _lh_matchIdent_4_6_2 = (((one_way_unify1_lst_d0_d0_d2_d7 _lh_one_way_unify1_lst_LH_C_1_1_1_0) _lh_one_way_unify1_lst_LH_C_1_1_1_1) _lh_one_way_unify1_lst_LH_P2_1_1_1_0) in
                  (match _lh_matchIdent_4_6_2 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_1, _lh_one_way_unify1_lst_LH_P2_1_1_1_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_1_0 && _lh_one_way_unify1_lst_LH_P2_0_1_1_1), _lh_one_way_unify1_lst_LH_P2_1_1_1_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2_d8 _lh_one_way_unify1_lst_arg1_5_3 _lh_one_way_unify1_lst_arg2_5_3 _lh_one_way_unify1_lst_arg3_5_3 =
  (match _lh_one_way_unify1_lst_arg1_5_3 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_3 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_3))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_6, _lh_one_way_unify1_lst_LH_C_1_1_0_6) -> 
      (match _lh_one_way_unify1_lst_arg2_5_3 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_7, _lh_one_way_unify1_lst_LH_C_1_1_0_7) -> 
          (let rec _lh_matchIdent_4_5_6 = (((one_way_unify1_d0_d0_d2_d8 _lh_one_way_unify1_lst_LH_C_0_1_0_6) _lh_one_way_unify1_lst_LH_C_0_1_0_7) _lh_one_way_unify1_lst_arg3_5_3) in
            (match _lh_matchIdent_4_5_6 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_6, _lh_one_way_unify1_lst_LH_P2_1_1_0_6) -> 
                (let rec _lh_matchIdent_4_5_7 = (((one_way_unify1_lst_d0_d0_d2_d8 _lh_one_way_unify1_lst_LH_C_1_1_0_6) _lh_one_way_unify1_lst_LH_C_1_1_0_7) _lh_one_way_unify1_lst_LH_P2_1_1_0_6) in
                  (match _lh_matchIdent_4_5_7 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_7, _lh_one_way_unify1_lst_LH_P2_1_1_0_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_0_6 && _lh_one_way_unify1_lst_LH_P2_0_1_0_7), _lh_one_way_unify1_lst_LH_P2_1_1_0_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d2_d9 _lh_one_way_unify1_lst_arg1_1_7 _lh_one_way_unify1_lst_arg2_1_7 _lh_one_way_unify1_lst_arg3_1_7 =
  (match _lh_one_way_unify1_lst_arg1_1_7 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_7 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_7))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_4, _lh_one_way_unify1_lst_LH_C_1_3_4) -> 
      (match _lh_one_way_unify1_lst_arg2_1_7 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_5, _lh_one_way_unify1_lst_LH_C_1_3_5) -> 
          (let rec _lh_matchIdent_1_9_0 = (((one_way_unify1_d0_d0_d2_d9 _lh_one_way_unify1_lst_LH_C_0_3_4) _lh_one_way_unify1_lst_LH_C_0_3_5) _lh_one_way_unify1_lst_arg3_1_7) in
            (match _lh_matchIdent_1_9_0 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_4, _lh_one_way_unify1_lst_LH_P2_1_3_4) -> 
                (let rec _lh_matchIdent_1_9_1 = (((one_way_unify1_lst_d0_d0_d2_d9 _lh_one_way_unify1_lst_LH_C_1_3_4) _lh_one_way_unify1_lst_LH_C_1_3_5) _lh_one_way_unify1_lst_LH_P2_1_3_4) in
                  (match _lh_matchIdent_1_9_1 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_5, _lh_one_way_unify1_lst_LH_P2_1_3_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_3_4 && _lh_one_way_unify1_lst_LH_P2_0_3_5), _lh_one_way_unify1_lst_LH_P2_1_3_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3 _lh_one_way_unify1_lst_arg1_4_5 _lh_one_way_unify1_lst_arg2_4_5 _lh_one_way_unify1_lst_arg3_4_5 =
  (match _lh_one_way_unify1_lst_arg1_4_5 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_5 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_5))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_0, _lh_one_way_unify1_lst_LH_C_1_9_0) -> 
      (match _lh_one_way_unify1_lst_arg2_4_5 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_1, _lh_one_way_unify1_lst_LH_C_1_9_1) -> 
          (let rec _lh_matchIdent_3_3_8 = (((one_way_unify1_d0_d0_d3 _lh_one_way_unify1_lst_LH_C_0_9_0) _lh_one_way_unify1_lst_LH_C_0_9_1) _lh_one_way_unify1_lst_arg3_4_5) in
            (match _lh_matchIdent_3_3_8 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_0, _lh_one_way_unify1_lst_LH_P2_1_9_0) -> 
                (let rec _lh_matchIdent_3_3_9 = (((one_way_unify1_lst_d0_d0_d3 _lh_one_way_unify1_lst_LH_C_1_9_0) _lh_one_way_unify1_lst_LH_C_1_9_1) _lh_one_way_unify1_lst_LH_P2_1_9_0) in
                  (match _lh_matchIdent_3_3_9 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_1, _lh_one_way_unify1_lst_LH_P2_1_9_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_9_0 && _lh_one_way_unify1_lst_LH_P2_0_9_1), _lh_one_way_unify1_lst_LH_P2_1_9_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d0 _lh_one_way_unify1_lst_arg1_1_8 _lh_one_way_unify1_lst_arg2_1_8 _lh_one_way_unify1_lst_arg3_1_8 =
  (match _lh_one_way_unify1_lst_arg1_1_8 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_8 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_8))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_6, _lh_one_way_unify1_lst_LH_C_1_3_6) -> 
      (match _lh_one_way_unify1_lst_arg2_1_8 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_7, _lh_one_way_unify1_lst_LH_C_1_3_7) -> 
          (let rec _lh_matchIdent_1_9_5 = (((one_way_unify1_d0_d0_d3_d0 _lh_one_way_unify1_lst_LH_C_0_3_6) _lh_one_way_unify1_lst_LH_C_0_3_7) _lh_one_way_unify1_lst_arg3_1_8) in
            (match _lh_matchIdent_1_9_5 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_6, _lh_one_way_unify1_lst_LH_P2_1_3_6) -> 
                (let rec _lh_matchIdent_1_9_6 = (((one_way_unify1_lst_d0_d0_d3_d0 _lh_one_way_unify1_lst_LH_C_1_3_6) _lh_one_way_unify1_lst_LH_C_1_3_7) _lh_one_way_unify1_lst_LH_P2_1_3_6) in
                  (match _lh_matchIdent_1_9_6 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_7, _lh_one_way_unify1_lst_LH_P2_1_3_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_3_6 && _lh_one_way_unify1_lst_LH_P2_0_3_7), _lh_one_way_unify1_lst_LH_P2_1_3_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d1 _lh_one_way_unify1_lst_arg1_5_2 _lh_one_way_unify1_lst_arg2_5_2 _lh_one_way_unify1_lst_arg3_5_2 =
  (match _lh_one_way_unify1_lst_arg1_5_2 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_2 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_2))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_4, _lh_one_way_unify1_lst_LH_C_1_1_0_4) -> 
      (match _lh_one_way_unify1_lst_arg2_5_2 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_5, _lh_one_way_unify1_lst_LH_C_1_1_0_5) -> 
          (let rec _lh_matchIdent_4_5_1 = (((one_way_unify1_d0_d0_d3_d1 _lh_one_way_unify1_lst_LH_C_0_1_0_4) _lh_one_way_unify1_lst_LH_C_0_1_0_5) _lh_one_way_unify1_lst_arg3_5_2) in
            (match _lh_matchIdent_4_5_1 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_4, _lh_one_way_unify1_lst_LH_P2_1_1_0_4) -> 
                (let rec _lh_matchIdent_4_5_2 = (((one_way_unify1_lst_d0_d0_d3_d1 _lh_one_way_unify1_lst_LH_C_1_1_0_4) _lh_one_way_unify1_lst_LH_C_1_1_0_5) _lh_one_way_unify1_lst_LH_P2_1_1_0_4) in
                  (match _lh_matchIdent_4_5_2 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_5, _lh_one_way_unify1_lst_LH_P2_1_1_0_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_0_4 && _lh_one_way_unify1_lst_LH_P2_0_1_0_5), _lh_one_way_unify1_lst_LH_P2_1_1_0_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d2 _lh_one_way_unify1_lst_arg1_4_1 _lh_one_way_unify1_lst_arg2_4_1 _lh_one_way_unify1_lst_arg3_4_1 =
  (match _lh_one_way_unify1_lst_arg1_4_1 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_1 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_1))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_2, _lh_one_way_unify1_lst_LH_C_1_8_2) -> 
      (match _lh_one_way_unify1_lst_arg2_4_1 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_3, _lh_one_way_unify1_lst_LH_C_1_8_3) -> 
          (let rec _lh_matchIdent_3_2_2 = (((one_way_unify1_d0_d0_d3_d2 _lh_one_way_unify1_lst_LH_C_0_8_2) _lh_one_way_unify1_lst_LH_C_0_8_3) _lh_one_way_unify1_lst_arg3_4_1) in
            (match _lh_matchIdent_3_2_2 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_2, _lh_one_way_unify1_lst_LH_P2_1_8_2) -> 
                (let rec _lh_matchIdent_3_2_3 = (((one_way_unify1_lst_d0_d0_d3_d2 _lh_one_way_unify1_lst_LH_C_1_8_2) _lh_one_way_unify1_lst_LH_C_1_8_3) _lh_one_way_unify1_lst_LH_P2_1_8_2) in
                  (match _lh_matchIdent_3_2_3 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_3, _lh_one_way_unify1_lst_LH_P2_1_8_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_8_2 && _lh_one_way_unify1_lst_LH_P2_0_8_3), _lh_one_way_unify1_lst_LH_P2_1_8_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d3 _lh_one_way_unify1_lst_arg1_5_7 _lh_one_way_unify1_lst_arg2_5_7 _lh_one_way_unify1_lst_arg3_5_7 =
  (match _lh_one_way_unify1_lst_arg1_5_7 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_7 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_7))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_4, _lh_one_way_unify1_lst_LH_C_1_1_1_4) -> 
      (match _lh_one_way_unify1_lst_arg2_5_7 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_5, _lh_one_way_unify1_lst_LH_C_1_1_1_5) -> 
          (let rec _lh_matchIdent_4_6_5 = (((one_way_unify1_d0_d0_d3_d3 _lh_one_way_unify1_lst_LH_C_0_1_1_4) _lh_one_way_unify1_lst_LH_C_0_1_1_5) _lh_one_way_unify1_lst_arg3_5_7) in
            (match _lh_matchIdent_4_6_5 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_4, _lh_one_way_unify1_lst_LH_P2_1_1_1_4) -> 
                (let rec _lh_matchIdent_4_6_6 = (((one_way_unify1_lst_d0_d0_d3_d3 _lh_one_way_unify1_lst_LH_C_1_1_1_4) _lh_one_way_unify1_lst_LH_C_1_1_1_5) _lh_one_way_unify1_lst_LH_P2_1_1_1_4) in
                  (match _lh_matchIdent_4_6_6 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_5, _lh_one_way_unify1_lst_LH_P2_1_1_1_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_1_4 && _lh_one_way_unify1_lst_LH_P2_0_1_1_5), _lh_one_way_unify1_lst_LH_P2_1_1_1_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d4 _lh_one_way_unify1_lst_arg1_1_0 _lh_one_way_unify1_lst_arg2_1_0 _lh_one_way_unify1_lst_arg3_1_0 =
  (match _lh_one_way_unify1_lst_arg1_1_0 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_0 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_0))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_0, _lh_one_way_unify1_lst_LH_C_1_2_0) -> 
      (match _lh_one_way_unify1_lst_arg2_1_0 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_2_1, _lh_one_way_unify1_lst_LH_C_1_2_1) -> 
          (let rec _lh_matchIdent_1_4_4 = (((one_way_unify1_d0_d0_d3_d4 _lh_one_way_unify1_lst_LH_C_0_2_0) _lh_one_way_unify1_lst_LH_C_0_2_1) _lh_one_way_unify1_lst_arg3_1_0) in
            (match _lh_matchIdent_1_4_4 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_0, _lh_one_way_unify1_lst_LH_P2_1_2_0) -> 
                (let rec _lh_matchIdent_1_4_5 = (((one_way_unify1_lst_d0_d0_d3_d4 _lh_one_way_unify1_lst_LH_C_1_2_0) _lh_one_way_unify1_lst_LH_C_1_2_1) _lh_one_way_unify1_lst_LH_P2_1_2_0) in
                  (match _lh_matchIdent_1_4_5 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2_1, _lh_one_way_unify1_lst_LH_P2_1_2_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_2_0 && _lh_one_way_unify1_lst_LH_P2_0_2_1), _lh_one_way_unify1_lst_LH_P2_1_2_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d5 _lh_one_way_unify1_lst_arg1_4_3 _lh_one_way_unify1_lst_arg2_4_3 _lh_one_way_unify1_lst_arg3_4_3 =
  (match _lh_one_way_unify1_lst_arg1_4_3 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_3 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_3))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_6, _lh_one_way_unify1_lst_LH_C_1_8_6) -> 
      (match _lh_one_way_unify1_lst_arg2_4_3 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_7, _lh_one_way_unify1_lst_LH_C_1_8_7) -> 
          (let rec _lh_matchIdent_3_3_2 = (((one_way_unify1_d0_d0_d3_d5 _lh_one_way_unify1_lst_LH_C_0_8_6) _lh_one_way_unify1_lst_LH_C_0_8_7) _lh_one_way_unify1_lst_arg3_4_3) in
            (match _lh_matchIdent_3_3_2 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_6, _lh_one_way_unify1_lst_LH_P2_1_8_6) -> 
                (let rec _lh_matchIdent_3_3_3 = (((one_way_unify1_lst_d0_d0_d3_d5 _lh_one_way_unify1_lst_LH_C_1_8_6) _lh_one_way_unify1_lst_LH_C_1_8_7) _lh_one_way_unify1_lst_LH_P2_1_8_6) in
                  (match _lh_matchIdent_3_3_3 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_7, _lh_one_way_unify1_lst_LH_P2_1_8_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_8_6 && _lh_one_way_unify1_lst_LH_P2_0_8_7), _lh_one_way_unify1_lst_LH_P2_1_8_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d6 _lh_one_way_unify1_lst_arg1_3_2 _lh_one_way_unify1_lst_arg2_3_2 _lh_one_way_unify1_lst_arg3_3_2 =
  (match _lh_one_way_unify1_lst_arg1_3_2 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_2 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_2))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_4, _lh_one_way_unify1_lst_LH_C_1_6_4) -> 
      (match _lh_one_way_unify1_lst_arg2_3_2 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_5, _lh_one_way_unify1_lst_LH_C_1_6_5) -> 
          (let rec _lh_matchIdent_2_8_3 = (((one_way_unify1_d0_d0_d3_d6 _lh_one_way_unify1_lst_LH_C_0_6_4) _lh_one_way_unify1_lst_LH_C_0_6_5) _lh_one_way_unify1_lst_arg3_3_2) in
            (match _lh_matchIdent_2_8_3 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_4, _lh_one_way_unify1_lst_LH_P2_1_6_4) -> 
                (let rec _lh_matchIdent_2_8_4 = (((one_way_unify1_lst_d0_d0_d3_d6 _lh_one_way_unify1_lst_LH_C_1_6_4) _lh_one_way_unify1_lst_LH_C_1_6_5) _lh_one_way_unify1_lst_LH_P2_1_6_4) in
                  (match _lh_matchIdent_2_8_4 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_5, _lh_one_way_unify1_lst_LH_P2_1_6_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_6_4 && _lh_one_way_unify1_lst_LH_P2_0_6_5), _lh_one_way_unify1_lst_LH_P2_1_6_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d7 _lh_one_way_unify1_lst_arg1_5_9 _lh_one_way_unify1_lst_arg2_5_9 _lh_one_way_unify1_lst_arg3_5_9 =
  (match _lh_one_way_unify1_lst_arg1_5_9 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_9 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_9))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_8, _lh_one_way_unify1_lst_LH_C_1_1_1_8) -> 
      (match _lh_one_way_unify1_lst_arg2_5_9 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_9, _lh_one_way_unify1_lst_LH_C_1_1_1_9) -> 
          (let rec _lh_matchIdent_4_7_4 = (((one_way_unify1_d0_d0_d3_d7 _lh_one_way_unify1_lst_LH_C_0_1_1_8) _lh_one_way_unify1_lst_LH_C_0_1_1_9) _lh_one_way_unify1_lst_arg3_5_9) in
            (match _lh_matchIdent_4_7_4 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_8, _lh_one_way_unify1_lst_LH_P2_1_1_1_8) -> 
                (let rec _lh_matchIdent_4_7_5 = (((one_way_unify1_lst_d0_d0_d3_d7 _lh_one_way_unify1_lst_LH_C_1_1_1_8) _lh_one_way_unify1_lst_LH_C_1_1_1_9) _lh_one_way_unify1_lst_LH_P2_1_1_1_8) in
                  (match _lh_matchIdent_4_7_5 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_9, _lh_one_way_unify1_lst_LH_P2_1_1_1_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_1_8 && _lh_one_way_unify1_lst_LH_P2_0_1_1_9), _lh_one_way_unify1_lst_LH_P2_1_1_1_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d8 _lh_one_way_unify1_lst_arg1_1_6 _lh_one_way_unify1_lst_arg2_1_6 _lh_one_way_unify1_lst_arg3_1_6 =
  (match _lh_one_way_unify1_lst_arg1_1_6 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_6 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_6))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_2, _lh_one_way_unify1_lst_LH_C_1_3_2) -> 
      (match _lh_one_way_unify1_lst_arg2_1_6 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_3, _lh_one_way_unify1_lst_LH_C_1_3_3) -> 
          (let rec _lh_matchIdent_1_8_3 = (((one_way_unify1_d0_d0_d3_d8 _lh_one_way_unify1_lst_LH_C_0_3_2) _lh_one_way_unify1_lst_LH_C_0_3_3) _lh_one_way_unify1_lst_arg3_1_6) in
            (match _lh_matchIdent_1_8_3 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_2, _lh_one_way_unify1_lst_LH_P2_1_3_2) -> 
                (let rec _lh_matchIdent_1_8_4 = (((one_way_unify1_lst_d0_d0_d3_d8 _lh_one_way_unify1_lst_LH_C_1_3_2) _lh_one_way_unify1_lst_LH_C_1_3_3) _lh_one_way_unify1_lst_LH_P2_1_3_2) in
                  (match _lh_matchIdent_1_8_4 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_3, _lh_one_way_unify1_lst_LH_P2_1_3_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_3_2 && _lh_one_way_unify1_lst_LH_P2_0_3_3), _lh_one_way_unify1_lst_LH_P2_1_3_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d3_d9 _lh_one_way_unify1_lst_arg1_3_0 _lh_one_way_unify1_lst_arg2_3_0 _lh_one_way_unify1_lst_arg3_3_0 =
  (match _lh_one_way_unify1_lst_arg1_3_0 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_0 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_0))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_0, _lh_one_way_unify1_lst_LH_C_1_6_0) -> 
      (match _lh_one_way_unify1_lst_arg2_3_0 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_1, _lh_one_way_unify1_lst_LH_C_1_6_1) -> 
          (let rec _lh_matchIdent_2_7_3 = (((one_way_unify1_d0_d0_d3_d9 _lh_one_way_unify1_lst_LH_C_0_6_0) _lh_one_way_unify1_lst_LH_C_0_6_1) _lh_one_way_unify1_lst_arg3_3_0) in
            (match _lh_matchIdent_2_7_3 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_0, _lh_one_way_unify1_lst_LH_P2_1_6_0) -> 
                (let rec _lh_matchIdent_2_7_4 = (((one_way_unify1_lst_d0_d0_d3_d9 _lh_one_way_unify1_lst_LH_C_1_6_0) _lh_one_way_unify1_lst_LH_C_1_6_1) _lh_one_way_unify1_lst_LH_P2_1_6_0) in
                  (match _lh_matchIdent_2_7_4 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_1, _lh_one_way_unify1_lst_LH_P2_1_6_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_6_0 && _lh_one_way_unify1_lst_LH_P2_0_6_1), _lh_one_way_unify1_lst_LH_P2_1_6_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4 _lh_one_way_unify1_lst_arg1_3_1 _lh_one_way_unify1_lst_arg2_3_1 _lh_one_way_unify1_lst_arg3_3_1 =
  (match _lh_one_way_unify1_lst_arg1_3_1 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_1 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_1))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_2, _lh_one_way_unify1_lst_LH_C_1_6_2) -> 
      (match _lh_one_way_unify1_lst_arg2_3_1 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_3, _lh_one_way_unify1_lst_LH_C_1_6_3) -> 
          (let rec _lh_matchIdent_2_7_6 = (((one_way_unify1_d0_d0_d4 _lh_one_way_unify1_lst_LH_C_0_6_2) _lh_one_way_unify1_lst_LH_C_0_6_3) _lh_one_way_unify1_lst_arg3_3_1) in
            (match _lh_matchIdent_2_7_6 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_2, _lh_one_way_unify1_lst_LH_P2_1_6_2) -> 
                (let rec _lh_matchIdent_2_7_7 = (((one_way_unify1_lst_d0_d0_d4 _lh_one_way_unify1_lst_LH_C_1_6_2) _lh_one_way_unify1_lst_LH_C_1_6_3) _lh_one_way_unify1_lst_LH_P2_1_6_2) in
                  (match _lh_matchIdent_2_7_7 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_3, _lh_one_way_unify1_lst_LH_P2_1_6_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_6_2 && _lh_one_way_unify1_lst_LH_P2_0_6_3), _lh_one_way_unify1_lst_LH_P2_1_6_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d0 _lh_one_way_unify1_lst_arg1_5_1 _lh_one_way_unify1_lst_arg2_5_1 _lh_one_way_unify1_lst_arg3_5_1 =
  (match _lh_one_way_unify1_lst_arg1_5_1 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_1 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_1))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_2, _lh_one_way_unify1_lst_LH_C_1_1_0_2) -> 
      (match _lh_one_way_unify1_lst_arg2_5_1 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_3, _lh_one_way_unify1_lst_LH_C_1_1_0_3) -> 
          (let rec _lh_matchIdent_3_7_4 = (((one_way_unify1_d0_d0_d4_d0 _lh_one_way_unify1_lst_LH_C_0_1_0_2) _lh_one_way_unify1_lst_LH_C_0_1_0_3) _lh_one_way_unify1_lst_arg3_5_1) in
            (match _lh_matchIdent_3_7_4 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_2, _lh_one_way_unify1_lst_LH_P2_1_1_0_2) -> 
                (let rec _lh_matchIdent_3_7_5 = (((one_way_unify1_lst_d0_d0_d4_d0 _lh_one_way_unify1_lst_LH_C_1_1_0_2) _lh_one_way_unify1_lst_LH_C_1_1_0_3) _lh_one_way_unify1_lst_LH_P2_1_1_0_2) in
                  (match _lh_matchIdent_3_7_5 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_3, _lh_one_way_unify1_lst_LH_P2_1_1_0_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_0_2 && _lh_one_way_unify1_lst_LH_P2_0_1_0_3), _lh_one_way_unify1_lst_LH_P2_1_1_0_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d1 _lh_one_way_unify1_lst_arg1_2_0 _lh_one_way_unify1_lst_arg2_2_0 _lh_one_way_unify1_lst_arg3_2_0 =
  (match _lh_one_way_unify1_lst_arg1_2_0 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_0 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_0))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_0, _lh_one_way_unify1_lst_LH_C_1_4_0) -> 
      (match _lh_one_way_unify1_lst_arg2_2_0 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_1, _lh_one_way_unify1_lst_LH_C_1_4_1) -> 
          (let rec _lh_matchIdent_2_0_1 = (((one_way_unify1_d0_d0_d4_d1 _lh_one_way_unify1_lst_LH_C_0_4_0) _lh_one_way_unify1_lst_LH_C_0_4_1) _lh_one_way_unify1_lst_arg3_2_0) in
            (match _lh_matchIdent_2_0_1 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_0, _lh_one_way_unify1_lst_LH_P2_1_4_0) -> 
                (let rec _lh_matchIdent_2_0_2 = (((one_way_unify1_lst_d0_d0_d4_d1 _lh_one_way_unify1_lst_LH_C_1_4_0) _lh_one_way_unify1_lst_LH_C_1_4_1) _lh_one_way_unify1_lst_LH_P2_1_4_0) in
                  (match _lh_matchIdent_2_0_2 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_1, _lh_one_way_unify1_lst_LH_P2_1_4_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_4_0 && _lh_one_way_unify1_lst_LH_P2_0_4_1), _lh_one_way_unify1_lst_LH_P2_1_4_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d2 _lh_one_way_unify1_lst_arg1_7 _lh_one_way_unify1_lst_arg2_7 _lh_one_way_unify1_lst_arg3_7 =
  (match _lh_one_way_unify1_lst_arg1_7 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_7 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_7))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_4, _lh_one_way_unify1_lst_LH_C_1_1_4) -> 
      (match _lh_one_way_unify1_lst_arg2_7 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_5, _lh_one_way_unify1_lst_LH_C_1_1_5) -> 
          (let rec _lh_matchIdent_1_2_7 = (((one_way_unify1_d0_d0_d4_d2 _lh_one_way_unify1_lst_LH_C_0_1_4) _lh_one_way_unify1_lst_LH_C_0_1_5) _lh_one_way_unify1_lst_arg3_7) in
            (match _lh_matchIdent_1_2_7 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_4, _lh_one_way_unify1_lst_LH_P2_1_1_4) -> 
                (let rec _lh_matchIdent_1_2_8 = (((one_way_unify1_lst_d0_d0_d4_d2 _lh_one_way_unify1_lst_LH_C_1_1_4) _lh_one_way_unify1_lst_LH_C_1_1_5) _lh_one_way_unify1_lst_LH_P2_1_1_4) in
                  (match _lh_matchIdent_1_2_8 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_5, _lh_one_way_unify1_lst_LH_P2_1_1_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_4 && _lh_one_way_unify1_lst_LH_P2_0_1_5), _lh_one_way_unify1_lst_LH_P2_1_1_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d3 _lh_one_way_unify1_lst_arg1_6 _lh_one_way_unify1_lst_arg2_6 _lh_one_way_unify1_lst_arg3_6 =
  (match _lh_one_way_unify1_lst_arg1_6 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_6 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_6))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_2, _lh_one_way_unify1_lst_LH_C_1_1_2) -> 
      (match _lh_one_way_unify1_lst_arg2_6 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_3, _lh_one_way_unify1_lst_LH_C_1_1_3) -> 
          (let rec _lh_matchIdent_1_2_2 = (((one_way_unify1_d0_d0_d4_d3 _lh_one_way_unify1_lst_LH_C_0_1_2) _lh_one_way_unify1_lst_LH_C_0_1_3) _lh_one_way_unify1_lst_arg3_6) in
            (match _lh_matchIdent_1_2_2 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_2, _lh_one_way_unify1_lst_LH_P2_1_1_2) -> 
                (let rec _lh_matchIdent_1_2_3 = (((one_way_unify1_lst_d0_d0_d4_d3 _lh_one_way_unify1_lst_LH_C_1_1_2) _lh_one_way_unify1_lst_LH_C_1_1_3) _lh_one_way_unify1_lst_LH_P2_1_1_2) in
                  (match _lh_matchIdent_1_2_3 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_3, _lh_one_way_unify1_lst_LH_P2_1_1_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_2 && _lh_one_way_unify1_lst_LH_P2_0_1_3), _lh_one_way_unify1_lst_LH_P2_1_1_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d4 _lh_one_way_unify1_lst_arg1_2_7 _lh_one_way_unify1_lst_arg2_2_7 _lh_one_way_unify1_lst_arg3_2_7 =
  (match _lh_one_way_unify1_lst_arg1_2_7 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_7 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_7))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_4, _lh_one_way_unify1_lst_LH_C_1_5_4) -> 
      (match _lh_one_way_unify1_lst_arg2_2_7 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_5, _lh_one_way_unify1_lst_LH_C_1_5_5) -> 
          (let rec _lh_matchIdent_2_4_2 = (((one_way_unify1_d0_d0_d4_d4 _lh_one_way_unify1_lst_LH_C_0_5_4) _lh_one_way_unify1_lst_LH_C_0_5_5) _lh_one_way_unify1_lst_arg3_2_7) in
            (match _lh_matchIdent_2_4_2 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_4, _lh_one_way_unify1_lst_LH_P2_1_5_4) -> 
                (let rec _lh_matchIdent_2_4_3 = (((one_way_unify1_lst_d0_d0_d4_d4 _lh_one_way_unify1_lst_LH_C_1_5_4) _lh_one_way_unify1_lst_LH_C_1_5_5) _lh_one_way_unify1_lst_LH_P2_1_5_4) in
                  (match _lh_matchIdent_2_4_3 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_5, _lh_one_way_unify1_lst_LH_P2_1_5_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_5_4 && _lh_one_way_unify1_lst_LH_P2_0_5_5), _lh_one_way_unify1_lst_LH_P2_1_5_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d5 _lh_one_way_unify1_lst_arg1_3_7 _lh_one_way_unify1_lst_arg2_3_7 _lh_one_way_unify1_lst_arg3_3_7 =
  (match _lh_one_way_unify1_lst_arg1_3_7 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_7 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_7))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_4, _lh_one_way_unify1_lst_LH_C_1_7_4) -> 
      (match _lh_one_way_unify1_lst_arg2_3_7 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_5, _lh_one_way_unify1_lst_LH_C_1_7_5) -> 
          (let rec _lh_matchIdent_3_0_5 = (((one_way_unify1_d0_d0_d4_d5 _lh_one_way_unify1_lst_LH_C_0_7_4) _lh_one_way_unify1_lst_LH_C_0_7_5) _lh_one_way_unify1_lst_arg3_3_7) in
            (match _lh_matchIdent_3_0_5 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_4, _lh_one_way_unify1_lst_LH_P2_1_7_4) -> 
                (let rec _lh_matchIdent_3_0_6 = (((one_way_unify1_lst_d0_d0_d4_d5 _lh_one_way_unify1_lst_LH_C_1_7_4) _lh_one_way_unify1_lst_LH_C_1_7_5) _lh_one_way_unify1_lst_LH_P2_1_7_4) in
                  (match _lh_matchIdent_3_0_6 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_5, _lh_one_way_unify1_lst_LH_P2_1_7_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_7_4 && _lh_one_way_unify1_lst_LH_P2_0_7_5), _lh_one_way_unify1_lst_LH_P2_1_7_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d6 _lh_one_way_unify1_lst_arg1_4 _lh_one_way_unify1_lst_arg2_4 _lh_one_way_unify1_lst_arg3_4 =
  (match _lh_one_way_unify1_lst_arg1_4 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8, _lh_one_way_unify1_lst_LH_C_1_8) -> 
      (match _lh_one_way_unify1_lst_arg2_4 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9, _lh_one_way_unify1_lst_LH_C_1_9) -> 
          (let rec _lh_matchIdent_9_7 = (((one_way_unify1_d0_d0_d4_d6 _lh_one_way_unify1_lst_LH_C_0_8) _lh_one_way_unify1_lst_LH_C_0_9) _lh_one_way_unify1_lst_arg3_4) in
            (match _lh_matchIdent_9_7 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8, _lh_one_way_unify1_lst_LH_P2_1_8) -> 
                (let rec _lh_matchIdent_9_8 = (((one_way_unify1_lst_d0_d0_d4_d6 _lh_one_way_unify1_lst_LH_C_1_8) _lh_one_way_unify1_lst_LH_C_1_9) _lh_one_way_unify1_lst_LH_P2_1_8) in
                  (match _lh_matchIdent_9_8 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9, _lh_one_way_unify1_lst_LH_P2_1_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_8 && _lh_one_way_unify1_lst_LH_P2_0_9), _lh_one_way_unify1_lst_LH_P2_1_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d7 _lh_one_way_unify1_lst_arg1_3_3 _lh_one_way_unify1_lst_arg2_3_3 _lh_one_way_unify1_lst_arg3_3_3 =
  (match _lh_one_way_unify1_lst_arg1_3_3 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_3 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_3))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_6, _lh_one_way_unify1_lst_LH_C_1_6_6) -> 
      (match _lh_one_way_unify1_lst_arg2_3_3 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_7, _lh_one_way_unify1_lst_LH_C_1_6_7) -> 
          (let rec _lh_matchIdent_2_8_5 = (((one_way_unify1_d0_d0_d4_d7 _lh_one_way_unify1_lst_LH_C_0_6_6) _lh_one_way_unify1_lst_LH_C_0_6_7) _lh_one_way_unify1_lst_arg3_3_3) in
            (match _lh_matchIdent_2_8_5 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_6, _lh_one_way_unify1_lst_LH_P2_1_6_6) -> 
                (let rec _lh_matchIdent_2_8_6 = (((one_way_unify1_lst_d0_d0_d4_d7 _lh_one_way_unify1_lst_LH_C_1_6_6) _lh_one_way_unify1_lst_LH_C_1_6_7) _lh_one_way_unify1_lst_LH_P2_1_6_6) in
                  (match _lh_matchIdent_2_8_6 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_7, _lh_one_way_unify1_lst_LH_P2_1_6_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_6_6 && _lh_one_way_unify1_lst_LH_P2_0_6_7), _lh_one_way_unify1_lst_LH_P2_1_6_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d8 _lh_one_way_unify1_lst_arg1_2_2 _lh_one_way_unify1_lst_arg2_2_2 _lh_one_way_unify1_lst_arg3_2_2 =
  (match _lh_one_way_unify1_lst_arg1_2_2 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_2 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_2))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_4, _lh_one_way_unify1_lst_LH_C_1_4_4) -> 
      (match _lh_one_way_unify1_lst_arg2_2_2 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_5, _lh_one_way_unify1_lst_LH_C_1_4_5) -> 
          (let rec _lh_matchIdent_2_2_6 = (((one_way_unify1_d0_d0_d4_d8 _lh_one_way_unify1_lst_LH_C_0_4_4) _lh_one_way_unify1_lst_LH_C_0_4_5) _lh_one_way_unify1_lst_arg3_2_2) in
            (match _lh_matchIdent_2_2_6 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_4, _lh_one_way_unify1_lst_LH_P2_1_4_4) -> 
                (let rec _lh_matchIdent_2_2_7 = (((one_way_unify1_lst_d0_d0_d4_d8 _lh_one_way_unify1_lst_LH_C_1_4_4) _lh_one_way_unify1_lst_LH_C_1_4_5) _lh_one_way_unify1_lst_LH_P2_1_4_4) in
                  (match _lh_matchIdent_2_2_7 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_5, _lh_one_way_unify1_lst_LH_P2_1_4_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_4_4 && _lh_one_way_unify1_lst_LH_P2_0_4_5), _lh_one_way_unify1_lst_LH_P2_1_4_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d4_d9 _lh_one_way_unify1_lst_arg1_4_0 _lh_one_way_unify1_lst_arg2_4_0 _lh_one_way_unify1_lst_arg3_4_0 =
  (match _lh_one_way_unify1_lst_arg1_4_0 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_0 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_0))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_0, _lh_one_way_unify1_lst_LH_C_1_8_0) -> 
      (match _lh_one_way_unify1_lst_arg2_4_0 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_1, _lh_one_way_unify1_lst_LH_C_1_8_1) -> 
          (let rec _lh_matchIdent_3_1_8 = (((one_way_unify1_d0_d0_d4_d9 _lh_one_way_unify1_lst_LH_C_0_8_0) _lh_one_way_unify1_lst_LH_C_0_8_1) _lh_one_way_unify1_lst_arg3_4_0) in
            (match _lh_matchIdent_3_1_8 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_0, _lh_one_way_unify1_lst_LH_P2_1_8_0) -> 
                (let rec _lh_matchIdent_3_1_9 = (((one_way_unify1_lst_d0_d0_d4_d9 _lh_one_way_unify1_lst_LH_C_1_8_0) _lh_one_way_unify1_lst_LH_C_1_8_1) _lh_one_way_unify1_lst_LH_P2_1_8_0) in
                  (match _lh_matchIdent_3_1_9 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_1, _lh_one_way_unify1_lst_LH_P2_1_8_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_8_0 && _lh_one_way_unify1_lst_LH_P2_0_8_1), _lh_one_way_unify1_lst_LH_P2_1_8_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5 _lh_one_way_unify1_lst_arg1_3_6 _lh_one_way_unify1_lst_arg2_3_6 _lh_one_way_unify1_lst_arg3_3_6 =
  (match _lh_one_way_unify1_lst_arg1_3_6 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_6 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_6))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_2, _lh_one_way_unify1_lst_LH_C_1_7_2) -> 
      (match _lh_one_way_unify1_lst_arg2_3_6 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_3, _lh_one_way_unify1_lst_LH_C_1_7_3) -> 
          (let rec _lh_matchIdent_3_0_3 = (((one_way_unify1_d0_d0_d5 _lh_one_way_unify1_lst_LH_C_0_7_2) _lh_one_way_unify1_lst_LH_C_0_7_3) _lh_one_way_unify1_lst_arg3_3_6) in
            (match _lh_matchIdent_3_0_3 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_2, _lh_one_way_unify1_lst_LH_P2_1_7_2) -> 
                (let rec _lh_matchIdent_3_0_4 = (((one_way_unify1_lst_d0_d0_d5 _lh_one_way_unify1_lst_LH_C_1_7_2) _lh_one_way_unify1_lst_LH_C_1_7_3) _lh_one_way_unify1_lst_LH_P2_1_7_2) in
                  (match _lh_matchIdent_3_0_4 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_3, _lh_one_way_unify1_lst_LH_P2_1_7_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_7_2 && _lh_one_way_unify1_lst_LH_P2_0_7_3), _lh_one_way_unify1_lst_LH_P2_1_7_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d0 _lh_one_way_unify1_lst_arg1_3_5 _lh_one_way_unify1_lst_arg2_3_5 _lh_one_way_unify1_lst_arg3_3_5 =
  (match _lh_one_way_unify1_lst_arg1_3_5 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_5 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_5))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_0, _lh_one_way_unify1_lst_LH_C_1_7_0) -> 
      (match _lh_one_way_unify1_lst_arg2_3_5 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_1, _lh_one_way_unify1_lst_LH_C_1_7_1) -> 
          (let rec _lh_matchIdent_2_9_5 = (((one_way_unify1_d0_d0_d5_d0 _lh_one_way_unify1_lst_LH_C_0_7_0) _lh_one_way_unify1_lst_LH_C_0_7_1) _lh_one_way_unify1_lst_arg3_3_5) in
            (match _lh_matchIdent_2_9_5 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_0, _lh_one_way_unify1_lst_LH_P2_1_7_0) -> 
                (let rec _lh_matchIdent_2_9_6 = (((one_way_unify1_lst_d0_d0_d5_d0 _lh_one_way_unify1_lst_LH_C_1_7_0) _lh_one_way_unify1_lst_LH_C_1_7_1) _lh_one_way_unify1_lst_LH_P2_1_7_0) in
                  (match _lh_matchIdent_2_9_6 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_1, _lh_one_way_unify1_lst_LH_P2_1_7_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_7_0 && _lh_one_way_unify1_lst_LH_P2_0_7_1), _lh_one_way_unify1_lst_LH_P2_1_7_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d1 _lh_one_way_unify1_lst_arg1_2_3 _lh_one_way_unify1_lst_arg2_2_3 _lh_one_way_unify1_lst_arg3_2_3 =
  (match _lh_one_way_unify1_lst_arg1_2_3 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_3 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_3))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_6, _lh_one_way_unify1_lst_LH_C_1_4_6) -> 
      (match _lh_one_way_unify1_lst_arg2_2_3 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_7, _lh_one_way_unify1_lst_LH_C_1_4_7) -> 
          (let rec _lh_matchIdent_2_3_1 = (((one_way_unify1_d0_d0_d5_d1 _lh_one_way_unify1_lst_LH_C_0_4_6) _lh_one_way_unify1_lst_LH_C_0_4_7) _lh_one_way_unify1_lst_arg3_2_3) in
            (match _lh_matchIdent_2_3_1 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_6, _lh_one_way_unify1_lst_LH_P2_1_4_6) -> 
                (let rec _lh_matchIdent_2_3_2 = (((one_way_unify1_lst_d0_d0_d5_d1 _lh_one_way_unify1_lst_LH_C_1_4_6) _lh_one_way_unify1_lst_LH_C_1_4_7) _lh_one_way_unify1_lst_LH_P2_1_4_6) in
                  (match _lh_matchIdent_2_3_2 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_7, _lh_one_way_unify1_lst_LH_P2_1_4_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_4_6 && _lh_one_way_unify1_lst_LH_P2_0_4_7), _lh_one_way_unify1_lst_LH_P2_1_4_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d2 _lh_one_way_unify1_lst_arg1_2 _lh_one_way_unify1_lst_arg2_2 _lh_one_way_unify1_lst_arg3_2 =
  (match _lh_one_way_unify1_lst_arg1_2 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4, _lh_one_way_unify1_lst_LH_C_1_4) -> 
      (match _lh_one_way_unify1_lst_arg2_2 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5, _lh_one_way_unify1_lst_LH_C_1_5) -> 
          (let rec _lh_matchIdent_8_6 = (((one_way_unify1_d0_d0_d5_d2 _lh_one_way_unify1_lst_LH_C_0_4) _lh_one_way_unify1_lst_LH_C_0_5) _lh_one_way_unify1_lst_arg3_2) in
            (match _lh_matchIdent_8_6 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4, _lh_one_way_unify1_lst_LH_P2_1_4) -> 
                (let rec _lh_matchIdent_8_7 = (((one_way_unify1_lst_d0_d0_d5_d2 _lh_one_way_unify1_lst_LH_C_1_4) _lh_one_way_unify1_lst_LH_C_1_5) _lh_one_way_unify1_lst_LH_P2_1_4) in
                  (match _lh_matchIdent_8_7 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5, _lh_one_way_unify1_lst_LH_P2_1_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_4 && _lh_one_way_unify1_lst_LH_P2_0_5), _lh_one_way_unify1_lst_LH_P2_1_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d3 _lh_one_way_unify1_lst_arg1_2_8 _lh_one_way_unify1_lst_arg2_2_8 _lh_one_way_unify1_lst_arg3_2_8 =
  (match _lh_one_way_unify1_lst_arg1_2_8 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_8 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_8))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_6, _lh_one_way_unify1_lst_LH_C_1_5_6) -> 
      (match _lh_one_way_unify1_lst_arg2_2_8 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_5_7, _lh_one_way_unify1_lst_LH_C_1_5_7) -> 
          (let rec _lh_matchIdent_2_5_5 = (((one_way_unify1_d0_d0_d5_d3 _lh_one_way_unify1_lst_LH_C_0_5_6) _lh_one_way_unify1_lst_LH_C_0_5_7) _lh_one_way_unify1_lst_arg3_2_8) in
            (match _lh_matchIdent_2_5_5 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_6, _lh_one_way_unify1_lst_LH_P2_1_5_6) -> 
                (let rec _lh_matchIdent_2_5_6 = (((one_way_unify1_lst_d0_d0_d5_d3 _lh_one_way_unify1_lst_LH_C_1_5_6) _lh_one_way_unify1_lst_LH_C_1_5_7) _lh_one_way_unify1_lst_LH_P2_1_5_6) in
                  (match _lh_matchIdent_2_5_6 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_5_7, _lh_one_way_unify1_lst_LH_P2_1_5_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_5_6 && _lh_one_way_unify1_lst_LH_P2_0_5_7), _lh_one_way_unify1_lst_LH_P2_1_5_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d4 _lh_one_way_unify1_lst_arg1_4_2 _lh_one_way_unify1_lst_arg2_4_2 _lh_one_way_unify1_lst_arg3_4_2 =
  (match _lh_one_way_unify1_lst_arg1_4_2 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_2 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_2))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_4, _lh_one_way_unify1_lst_LH_C_1_8_4) -> 
      (match _lh_one_way_unify1_lst_arg2_4_2 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_8_5, _lh_one_way_unify1_lst_LH_C_1_8_5) -> 
          (let rec _lh_matchIdent_3_3_0 = (((one_way_unify1_d0_d0_d5_d4 _lh_one_way_unify1_lst_LH_C_0_8_4) _lh_one_way_unify1_lst_LH_C_0_8_5) _lh_one_way_unify1_lst_arg3_4_2) in
            (match _lh_matchIdent_3_3_0 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_4, _lh_one_way_unify1_lst_LH_P2_1_8_4) -> 
                (let rec _lh_matchIdent_3_3_1 = (((one_way_unify1_lst_d0_d0_d5_d4 _lh_one_way_unify1_lst_LH_C_1_8_4) _lh_one_way_unify1_lst_LH_C_1_8_5) _lh_one_way_unify1_lst_LH_P2_1_8_4) in
                  (match _lh_matchIdent_3_3_1 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_8_5, _lh_one_way_unify1_lst_LH_P2_1_8_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_8_4 && _lh_one_way_unify1_lst_LH_P2_0_8_5), _lh_one_way_unify1_lst_LH_P2_1_8_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d5 _lh_one_way_unify1_lst_arg1_5_8 _lh_one_way_unify1_lst_arg2_5_8 _lh_one_way_unify1_lst_arg3_5_8 =
  (match _lh_one_way_unify1_lst_arg1_5_8 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_8 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_8))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_6, _lh_one_way_unify1_lst_LH_C_1_1_1_6) -> 
      (match _lh_one_way_unify1_lst_arg2_5_8 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_1_7, _lh_one_way_unify1_lst_LH_C_1_1_1_7) -> 
          (let rec _lh_matchIdent_4_6_8 = (((one_way_unify1_d0_d0_d5_d5 _lh_one_way_unify1_lst_LH_C_0_1_1_6) _lh_one_way_unify1_lst_LH_C_0_1_1_7) _lh_one_way_unify1_lst_arg3_5_8) in
            (match _lh_matchIdent_4_6_8 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_6, _lh_one_way_unify1_lst_LH_P2_1_1_1_6) -> 
                (let rec _lh_matchIdent_4_6_9 = (((one_way_unify1_lst_d0_d0_d5_d5 _lh_one_way_unify1_lst_LH_C_1_1_1_6) _lh_one_way_unify1_lst_LH_C_1_1_1_7) _lh_one_way_unify1_lst_LH_P2_1_1_1_6) in
                  (match _lh_matchIdent_4_6_9 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_1_7, _lh_one_way_unify1_lst_LH_P2_1_1_1_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_1_6 && _lh_one_way_unify1_lst_LH_P2_0_1_1_7), _lh_one_way_unify1_lst_LH_P2_1_1_1_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d6 _lh_one_way_unify1_lst_arg1_1_9 _lh_one_way_unify1_lst_arg2_1_9 _lh_one_way_unify1_lst_arg3_1_9 =
  (match _lh_one_way_unify1_lst_arg1_1_9 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_1_9 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_1_9))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_8, _lh_one_way_unify1_lst_LH_C_1_3_8) -> 
      (match _lh_one_way_unify1_lst_arg2_1_9 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_3_9, _lh_one_way_unify1_lst_LH_C_1_3_9) -> 
          (let rec _lh_matchIdent_1_9_7 = (((one_way_unify1_d0_d0_d5_d6 _lh_one_way_unify1_lst_LH_C_0_3_8) _lh_one_way_unify1_lst_LH_C_0_3_9) _lh_one_way_unify1_lst_arg3_1_9) in
            (match _lh_matchIdent_1_9_7 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_8, _lh_one_way_unify1_lst_LH_P2_1_3_8) -> 
                (let rec _lh_matchIdent_1_9_8 = (((one_way_unify1_lst_d0_d0_d5_d6 _lh_one_way_unify1_lst_LH_C_1_3_8) _lh_one_way_unify1_lst_LH_C_1_3_9) _lh_one_way_unify1_lst_LH_P2_1_3_8) in
                  (match _lh_matchIdent_1_9_8 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_3_9, _lh_one_way_unify1_lst_LH_P2_1_3_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_3_8 && _lh_one_way_unify1_lst_LH_P2_0_3_9), _lh_one_way_unify1_lst_LH_P2_1_3_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d7 _lh_one_way_unify1_lst_arg1_5_4 _lh_one_way_unify1_lst_arg2_5_4 _lh_one_way_unify1_lst_arg3_5_4 =
  (match _lh_one_way_unify1_lst_arg1_5_4 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_5_4 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_5_4))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_8, _lh_one_way_unify1_lst_LH_C_1_1_0_8) -> 
      (match _lh_one_way_unify1_lst_arg2_5_4 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_0_9, _lh_one_way_unify1_lst_LH_C_1_1_0_9) -> 
          (let rec _lh_matchIdent_4_5_9 = (((one_way_unify1_d0_d0_d5_d7 _lh_one_way_unify1_lst_LH_C_0_1_0_8) _lh_one_way_unify1_lst_LH_C_0_1_0_9) _lh_one_way_unify1_lst_arg3_5_4) in
            (match _lh_matchIdent_4_5_9 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_8, _lh_one_way_unify1_lst_LH_P2_1_1_0_8) -> 
                (let rec _lh_matchIdent_4_6_0 = (((one_way_unify1_lst_d0_d0_d5_d7 _lh_one_way_unify1_lst_LH_C_1_1_0_8) _lh_one_way_unify1_lst_LH_C_1_1_0_9) _lh_one_way_unify1_lst_LH_P2_1_1_0_8) in
                  (match _lh_matchIdent_4_6_0 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_0_9, _lh_one_way_unify1_lst_LH_P2_1_1_0_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_0_8 && _lh_one_way_unify1_lst_LH_P2_0_1_0_9), _lh_one_way_unify1_lst_LH_P2_1_1_0_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d8 _lh_one_way_unify1_lst_arg1_4_7 _lh_one_way_unify1_lst_arg2_4_7 _lh_one_way_unify1_lst_arg3_4_7 =
  (match _lh_one_way_unify1_lst_arg1_4_7 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_7 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_7))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_4, _lh_one_way_unify1_lst_LH_C_1_9_4) -> 
      (match _lh_one_way_unify1_lst_arg2_4_7 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_5, _lh_one_way_unify1_lst_LH_C_1_9_5) -> 
          (let rec _lh_matchIdent_3_4_6 = (((one_way_unify1_d0_d0_d5_d8 _lh_one_way_unify1_lst_LH_C_0_9_4) _lh_one_way_unify1_lst_LH_C_0_9_5) _lh_one_way_unify1_lst_arg3_4_7) in
            (match _lh_matchIdent_3_4_6 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_4, _lh_one_way_unify1_lst_LH_P2_1_9_4) -> 
                (let rec _lh_matchIdent_3_4_7 = (((one_way_unify1_lst_d0_d0_d5_d8 _lh_one_way_unify1_lst_LH_C_1_9_4) _lh_one_way_unify1_lst_LH_C_1_9_5) _lh_one_way_unify1_lst_LH_P2_1_9_4) in
                  (match _lh_matchIdent_3_4_7 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_5, _lh_one_way_unify1_lst_LH_P2_1_9_5) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_9_4 && _lh_one_way_unify1_lst_LH_P2_0_9_5), _lh_one_way_unify1_lst_LH_P2_1_9_5))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d5_d9 _lh_one_way_unify1_lst_arg1_3_8 _lh_one_way_unify1_lst_arg2_3_8 _lh_one_way_unify1_lst_arg3_3_8 =
  (match _lh_one_way_unify1_lst_arg1_3_8 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_8 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_8))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_6, _lh_one_way_unify1_lst_LH_C_1_7_6) -> 
      (match _lh_one_way_unify1_lst_arg2_3_8 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_7_7, _lh_one_way_unify1_lst_LH_C_1_7_7) -> 
          (let rec _lh_matchIdent_3_0_9 = (((one_way_unify1_d0_d0_d5_d9 _lh_one_way_unify1_lst_LH_C_0_7_6) _lh_one_way_unify1_lst_LH_C_0_7_7) _lh_one_way_unify1_lst_arg3_3_8) in
            (match _lh_matchIdent_3_0_9 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_6, _lh_one_way_unify1_lst_LH_P2_1_7_6) -> 
                (let rec _lh_matchIdent_3_1_0 = (((one_way_unify1_lst_d0_d0_d5_d9 _lh_one_way_unify1_lst_LH_C_1_7_6) _lh_one_way_unify1_lst_LH_C_1_7_7) _lh_one_way_unify1_lst_LH_P2_1_7_6) in
                  (match _lh_matchIdent_3_1_0 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_7_7, _lh_one_way_unify1_lst_LH_P2_1_7_7) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_7_6 && _lh_one_way_unify1_lst_LH_P2_0_7_7), _lh_one_way_unify1_lst_LH_P2_1_7_7))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d6 _lh_one_way_unify1_lst_arg1_6_0 _lh_one_way_unify1_lst_arg2_6_0 _lh_one_way_unify1_lst_arg3_6_0 =
  (match _lh_one_way_unify1_lst_arg1_6_0 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_6_0 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_6_0))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_2_0, _lh_one_way_unify1_lst_LH_C_1_1_2_0) -> 
      (match _lh_one_way_unify1_lst_arg2_6_0 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_2_1, _lh_one_way_unify1_lst_LH_C_1_1_2_1) -> 
          (let rec _lh_matchIdent_4_8_5 = (((one_way_unify1_d0_d0_d6 _lh_one_way_unify1_lst_LH_C_0_1_2_0) _lh_one_way_unify1_lst_LH_C_0_1_2_1) _lh_one_way_unify1_lst_arg3_6_0) in
            (match _lh_matchIdent_4_8_5 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_2_0, _lh_one_way_unify1_lst_LH_P2_1_1_2_0) -> 
                (let rec _lh_matchIdent_4_8_6 = (((one_way_unify1_lst_d0_d0_d6 _lh_one_way_unify1_lst_LH_C_1_1_2_0) _lh_one_way_unify1_lst_LH_C_1_1_2_1) _lh_one_way_unify1_lst_LH_P2_1_1_2_0) in
                  (match _lh_matchIdent_4_8_6 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_2_1, _lh_one_way_unify1_lst_LH_P2_1_1_2_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_2_0 && _lh_one_way_unify1_lst_LH_P2_0_1_2_1), _lh_one_way_unify1_lst_LH_P2_1_1_2_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d6_d0 _lh_one_way_unify1_lst_arg1_2_1 _lh_one_way_unify1_lst_arg2_2_1 _lh_one_way_unify1_lst_arg3_2_1 =
  (match _lh_one_way_unify1_lst_arg1_2_1 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_2_1 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_2_1))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_2, _lh_one_way_unify1_lst_LH_C_1_4_2) -> 
      (match _lh_one_way_unify1_lst_arg2_2_1 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_4_3, _lh_one_way_unify1_lst_LH_C_1_4_3) -> 
          (let rec _lh_matchIdent_2_2_4 = (((one_way_unify1_d0_d0_d6_d0 _lh_one_way_unify1_lst_LH_C_0_4_2) _lh_one_way_unify1_lst_LH_C_0_4_3) _lh_one_way_unify1_lst_arg3_2_1) in
            (match _lh_matchIdent_2_2_4 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_2, _lh_one_way_unify1_lst_LH_P2_1_4_2) -> 
                (let rec _lh_matchIdent_2_2_5 = (((one_way_unify1_lst_d0_d0_d6_d0 _lh_one_way_unify1_lst_LH_C_1_4_2) _lh_one_way_unify1_lst_LH_C_1_4_3) _lh_one_way_unify1_lst_LH_P2_1_4_2) in
                  (match _lh_matchIdent_2_2_5 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_4_3, _lh_one_way_unify1_lst_LH_P2_1_4_3) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_4_2 && _lh_one_way_unify1_lst_LH_P2_0_4_3), _lh_one_way_unify1_lst_LH_P2_1_4_3))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d7 _lh_one_way_unify1_lst_arg1_9 _lh_one_way_unify1_lst_arg2_9 _lh_one_way_unify1_lst_arg3_9 =
  (match _lh_one_way_unify1_lst_arg1_9 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_9 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_9))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_8, _lh_one_way_unify1_lst_LH_C_1_1_8) -> 
      (match _lh_one_way_unify1_lst_arg2_9 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1_9, _lh_one_way_unify1_lst_LH_C_1_1_9) -> 
          (let rec _lh_matchIdent_1_4_0 = (((one_way_unify1_d0_d0_d7 _lh_one_way_unify1_lst_LH_C_0_1_8) _lh_one_way_unify1_lst_LH_C_0_1_9) _lh_one_way_unify1_lst_arg3_9) in
            (match _lh_matchIdent_1_4_0 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_8, _lh_one_way_unify1_lst_LH_P2_1_1_8) -> 
                (let rec _lh_matchIdent_1_4_1 = (((one_way_unify1_lst_d0_d0_d7 _lh_one_way_unify1_lst_LH_C_1_1_8) _lh_one_way_unify1_lst_LH_C_1_1_9) _lh_one_way_unify1_lst_LH_P2_1_1_8) in
                  (match _lh_matchIdent_1_4_1 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1_9, _lh_one_way_unify1_lst_LH_P2_1_1_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_1_8 && _lh_one_way_unify1_lst_LH_P2_0_1_9), _lh_one_way_unify1_lst_LH_P2_1_1_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d8 _lh_one_way_unify1_lst_arg1_4_9 _lh_one_way_unify1_lst_arg2_4_9 _lh_one_way_unify1_lst_arg3_4_9 =
  (match _lh_one_way_unify1_lst_arg1_4_9 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_4_9 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_4_9))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_8, _lh_one_way_unify1_lst_LH_C_1_9_8) -> 
      (match _lh_one_way_unify1_lst_arg2_4_9 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_9_9, _lh_one_way_unify1_lst_LH_C_1_9_9) -> 
          (let rec _lh_matchIdent_3_6_8 = (((one_way_unify1_d0_d0_d8 _lh_one_way_unify1_lst_LH_C_0_9_8) _lh_one_way_unify1_lst_LH_C_0_9_9) _lh_one_way_unify1_lst_arg3_4_9) in
            (match _lh_matchIdent_3_6_8 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_8, _lh_one_way_unify1_lst_LH_P2_1_9_8) -> 
                (let rec _lh_matchIdent_3_6_9 = (((one_way_unify1_lst_d0_d0_d8 _lh_one_way_unify1_lst_LH_C_1_9_8) _lh_one_way_unify1_lst_LH_C_1_9_9) _lh_one_way_unify1_lst_LH_P2_1_9_8) in
                  (match _lh_matchIdent_3_6_9 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_9_9, _lh_one_way_unify1_lst_LH_P2_1_9_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_9_8 && _lh_one_way_unify1_lst_LH_P2_0_9_9), _lh_one_way_unify1_lst_LH_P2_1_9_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_lst_d0_d0_d9 _lh_one_way_unify1_lst_arg1_3_4 _lh_one_way_unify1_lst_arg2_3_4 _lh_one_way_unify1_lst_arg3_3_4 =
  (match _lh_one_way_unify1_lst_arg1_3_4 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_3_4 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_3_4))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_8, _lh_one_way_unify1_lst_LH_C_1_6_8) -> 
      (match _lh_one_way_unify1_lst_arg2_3_4 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_6_9, _lh_one_way_unify1_lst_LH_C_1_6_9) -> 
          (let rec _lh_matchIdent_2_9_1 = (((one_way_unify1_d0_d0_d9 _lh_one_way_unify1_lst_LH_C_0_6_8) _lh_one_way_unify1_lst_LH_C_0_6_9) _lh_one_way_unify1_lst_arg3_3_4) in
            (match _lh_matchIdent_2_9_1 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_8, _lh_one_way_unify1_lst_LH_P2_1_6_8) -> 
                (let rec _lh_matchIdent_2_9_2 = (((one_way_unify1_lst_d0_d0_d9 _lh_one_way_unify1_lst_LH_C_1_6_8) _lh_one_way_unify1_lst_LH_C_1_6_9) _lh_one_way_unify1_lst_LH_P2_1_6_8) in
                  (match _lh_matchIdent_2_9_2 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_6_9, _lh_one_way_unify1_lst_LH_P2_1_6_9) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_6_8 && _lh_one_way_unify1_lst_LH_P2_0_6_9), _lh_one_way_unify1_lst_LH_P2_1_6_9))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))))
and one_way_unify1_d0_d0_d0 _lh_one_way_unify1_arg1_1_6_8 _lh_one_way_unify1_arg2_5_6 _lh_one_way_unify1_arg3_1_6_8 =
  (match _lh_one_way_unify1_arg2_5_6 with
    | `Var(_lh_one_way_unify1_Var_0_1_6_8) -> 
      (let rec _lh_matchIdent_4_7_6 = ((find_d2_d0_d0 _lh_one_way_unify1_Var_0_1_6_8) _lh_one_way_unify1_arg3_1_6_8) in
        (((_lh_matchIdent_4_7_6 _lh_one_way_unify1_arg1_1_6_8) _lh_one_way_unify1_arg3_1_6_8) _lh_one_way_unify1_Var_0_1_6_8))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_6_8 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_1_2, _lh_one_way_unify1_Fun_1_1_1_2, _lh_one_way_unify1_Fun_2_1_1_2) -> 
          (match _lh_one_way_unify1_arg2_5_6 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_1_3, _lh_one_way_unify1_Fun_1_1_1_3, _lh_one_way_unify1_Fun_2_1_1_3) -> 
              (if (_lh_one_way_unify1_Fun_0_1_1_2 = _lh_one_way_unify1_Fun_0_1_1_3) then
                (((one_way_unify1_lst_d0_d0_d0 _lh_one_way_unify1_Fun_1_1_1_2) _lh_one_way_unify1_Fun_1_1_1_3) _lh_one_way_unify1_arg3_1_6_8)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1 _lh_one_way_unify1_arg1_1_6 _lh_one_way_unify1_arg2_6 _lh_one_way_unify1_arg3_1_6 =
  (match _lh_one_way_unify1_arg2_6 with
    | `Var(_lh_one_way_unify1_Var_0_1_6) -> 
      (let rec _lh_matchIdent_9_1 = ((find_d2_d0_d1 _lh_one_way_unify1_Var_0_1_6) _lh_one_way_unify1_arg3_1_6) in
        (((_lh_matchIdent_9_1 _lh_one_way_unify1_arg1_1_6) _lh_one_way_unify1_arg3_1_6) _lh_one_way_unify1_Var_0_1_6))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_6 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_2, _lh_one_way_unify1_Fun_1_1_2, _lh_one_way_unify1_Fun_2_1_2) -> 
          (match _lh_one_way_unify1_arg2_6 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_3, _lh_one_way_unify1_Fun_1_1_3, _lh_one_way_unify1_Fun_2_1_3) -> 
              (if (_lh_one_way_unify1_Fun_0_1_2 = _lh_one_way_unify1_Fun_0_1_3) then
                (((one_way_unify1_lst_d0_d0_d1 _lh_one_way_unify1_Fun_1_1_2) _lh_one_way_unify1_Fun_1_1_3) _lh_one_way_unify1_arg3_1_6)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d0 _lh_one_way_unify1_arg1_1_4_5 _lh_one_way_unify1_arg2_4_5 _lh_one_way_unify1_arg3_1_4_5 =
  (match _lh_one_way_unify1_arg2_4_5 with
    | `Var(_lh_one_way_unify1_Var_0_1_4_5) -> 
      (let rec _lh_matchIdent_3_5_3 = ((find_d2_d0_d1_d0 _lh_one_way_unify1_Var_0_1_4_5) _lh_one_way_unify1_arg3_1_4_5) in
        (((_lh_matchIdent_3_5_3 _lh_one_way_unify1_arg1_1_4_5) _lh_one_way_unify1_arg3_1_4_5) _lh_one_way_unify1_Var_0_1_4_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_4_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_9_0, _lh_one_way_unify1_Fun_1_9_0, _lh_one_way_unify1_Fun_2_9_0) -> 
          (match _lh_one_way_unify1_arg2_4_5 with
            | `Fun(_lh_one_way_unify1_Fun_0_9_1, _lh_one_way_unify1_Fun_1_9_1, _lh_one_way_unify1_Fun_2_9_1) -> 
              (if (_lh_one_way_unify1_Fun_0_9_0 = _lh_one_way_unify1_Fun_0_9_1) then
                (((one_way_unify1_lst_d0_d0_d1_d0 _lh_one_way_unify1_Fun_1_9_0) _lh_one_way_unify1_Fun_1_9_1) _lh_one_way_unify1_arg3_1_4_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d1 _lh_one_way_unify1_arg1_9_3 _lh_one_way_unify1_arg2_2_9 _lh_one_way_unify1_arg3_9_3 =
  (match _lh_one_way_unify1_arg2_2_9 with
    | `Var(_lh_one_way_unify1_Var_0_9_3) -> 
      (let rec _lh_matchIdent_2_4_5 = ((find_d2_d0_d1_d1 _lh_one_way_unify1_Var_0_9_3) _lh_one_way_unify1_arg3_9_3) in
        (((_lh_matchIdent_2_4_5 _lh_one_way_unify1_arg1_9_3) _lh_one_way_unify1_arg3_9_3) _lh_one_way_unify1_Var_0_9_3))
    | _ -> 
      (match _lh_one_way_unify1_arg1_9_3 with
        | `Fun(_lh_one_way_unify1_Fun_0_5_8, _lh_one_way_unify1_Fun_1_5_8, _lh_one_way_unify1_Fun_2_5_8) -> 
          (match _lh_one_way_unify1_arg2_2_9 with
            | `Fun(_lh_one_way_unify1_Fun_0_5_9, _lh_one_way_unify1_Fun_1_5_9, _lh_one_way_unify1_Fun_2_5_9) -> 
              (if (_lh_one_way_unify1_Fun_0_5_8 = _lh_one_way_unify1_Fun_0_5_9) then
                (((one_way_unify1_lst_d0_d0_d1_d1 _lh_one_way_unify1_Fun_1_5_8) _lh_one_way_unify1_Fun_1_5_9) _lh_one_way_unify1_arg3_9_3)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d2 _lh_one_way_unify1_arg1_1_0_5 _lh_one_way_unify1_arg2_3_5 _lh_one_way_unify1_arg3_1_0_5 =
  (match _lh_one_way_unify1_arg2_3_5 with
    | `Var(_lh_one_way_unify1_Var_0_1_0_5) -> 
      (let rec _lh_matchIdent_2_6_2 = ((find_d2_d0_d1_d2 _lh_one_way_unify1_Var_0_1_0_5) _lh_one_way_unify1_arg3_1_0_5) in
        (((_lh_matchIdent_2_6_2 _lh_one_way_unify1_arg1_1_0_5) _lh_one_way_unify1_arg3_1_0_5) _lh_one_way_unify1_Var_0_1_0_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_0_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_7_0, _lh_one_way_unify1_Fun_1_7_0, _lh_one_way_unify1_Fun_2_7_0) -> 
          (match _lh_one_way_unify1_arg2_3_5 with
            | `Fun(_lh_one_way_unify1_Fun_0_7_1, _lh_one_way_unify1_Fun_1_7_1, _lh_one_way_unify1_Fun_2_7_1) -> 
              (if (_lh_one_way_unify1_Fun_0_7_0 = _lh_one_way_unify1_Fun_0_7_1) then
                (((one_way_unify1_lst_d0_d0_d1_d2 _lh_one_way_unify1_Fun_1_7_0) _lh_one_way_unify1_Fun_1_7_1) _lh_one_way_unify1_arg3_1_0_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d3 _lh_one_way_unify1_arg1_8_4 _lh_one_way_unify1_arg2_2_6 _lh_one_way_unify1_arg3_8_4 =
  (match _lh_one_way_unify1_arg2_2_6 with
    | `Var(_lh_one_way_unify1_Var_0_8_4) -> 
      (let rec _lh_matchIdent_2_1_6 = ((find_d2_d0_d1_d3 _lh_one_way_unify1_Var_0_8_4) _lh_one_way_unify1_arg3_8_4) in
        (((_lh_matchIdent_2_1_6 _lh_one_way_unify1_arg1_8_4) _lh_one_way_unify1_arg3_8_4) _lh_one_way_unify1_Var_0_8_4))
    | _ -> 
      (match _lh_one_way_unify1_arg1_8_4 with
        | `Fun(_lh_one_way_unify1_Fun_0_5_2, _lh_one_way_unify1_Fun_1_5_2, _lh_one_way_unify1_Fun_2_5_2) -> 
          (match _lh_one_way_unify1_arg2_2_6 with
            | `Fun(_lh_one_way_unify1_Fun_0_5_3, _lh_one_way_unify1_Fun_1_5_3, _lh_one_way_unify1_Fun_2_5_3) -> 
              (if (_lh_one_way_unify1_Fun_0_5_2 = _lh_one_way_unify1_Fun_0_5_3) then
                (((one_way_unify1_lst_d0_d0_d1_d3 _lh_one_way_unify1_Fun_1_5_2) _lh_one_way_unify1_Fun_1_5_3) _lh_one_way_unify1_arg3_8_4)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d4 _lh_one_way_unify1_arg1_7_8 _lh_one_way_unify1_arg2_2_2 _lh_one_way_unify1_arg3_7_8 =
  (match _lh_one_way_unify1_arg2_2_2 with
    | `Var(_lh_one_way_unify1_Var_0_7_8) -> 
      (let rec _lh_matchIdent_1_9_4 = ((find_d2_d0_d1_d4 _lh_one_way_unify1_Var_0_7_8) _lh_one_way_unify1_arg3_7_8) in
        (((_lh_matchIdent_1_9_4 _lh_one_way_unify1_arg1_7_8) _lh_one_way_unify1_arg3_7_8) _lh_one_way_unify1_Var_0_7_8))
    | _ -> 
      (match _lh_one_way_unify1_arg1_7_8 with
        | `Fun(_lh_one_way_unify1_Fun_0_4_4, _lh_one_way_unify1_Fun_1_4_4, _lh_one_way_unify1_Fun_2_4_4) -> 
          (match _lh_one_way_unify1_arg2_2_2 with
            | `Fun(_lh_one_way_unify1_Fun_0_4_5, _lh_one_way_unify1_Fun_1_4_5, _lh_one_way_unify1_Fun_2_4_5) -> 
              (if (_lh_one_way_unify1_Fun_0_4_4 = _lh_one_way_unify1_Fun_0_4_5) then
                (((one_way_unify1_lst_d0_d0_d1_d4 _lh_one_way_unify1_Fun_1_4_4) _lh_one_way_unify1_Fun_1_4_5) _lh_one_way_unify1_arg3_7_8)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d5 _lh_one_way_unify1_arg1_7_7 _lh_one_way_unify1_arg2_2_1 _lh_one_way_unify1_arg3_7_7 =
  (match _lh_one_way_unify1_arg2_2_1 with
    | `Var(_lh_one_way_unify1_Var_0_7_7) -> 
      (let rec _lh_matchIdent_1_9_3 = ((find_d2_d0_d1_d5 _lh_one_way_unify1_Var_0_7_7) _lh_one_way_unify1_arg3_7_7) in
        (((_lh_matchIdent_1_9_3 _lh_one_way_unify1_arg1_7_7) _lh_one_way_unify1_arg3_7_7) _lh_one_way_unify1_Var_0_7_7))
    | _ -> 
      (match _lh_one_way_unify1_arg1_7_7 with
        | `Fun(_lh_one_way_unify1_Fun_0_4_2, _lh_one_way_unify1_Fun_1_4_2, _lh_one_way_unify1_Fun_2_4_2) -> 
          (match _lh_one_way_unify1_arg2_2_1 with
            | `Fun(_lh_one_way_unify1_Fun_0_4_3, _lh_one_way_unify1_Fun_1_4_3, _lh_one_way_unify1_Fun_2_4_3) -> 
              (if (_lh_one_way_unify1_Fun_0_4_2 = _lh_one_way_unify1_Fun_0_4_3) then
                (((one_way_unify1_lst_d0_d0_d1_d5 _lh_one_way_unify1_Fun_1_4_2) _lh_one_way_unify1_Fun_1_4_3) _lh_one_way_unify1_arg3_7_7)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d6 _lh_one_way_unify1_arg1_9_4 _lh_one_way_unify1_arg2_3_0 _lh_one_way_unify1_arg3_9_4 =
  (match _lh_one_way_unify1_arg2_3_0 with
    | `Var(_lh_one_way_unify1_Var_0_9_4) -> 
      (let rec _lh_matchIdent_2_4_6 = ((find_d2_d0_d1_d6 _lh_one_way_unify1_Var_0_9_4) _lh_one_way_unify1_arg3_9_4) in
        (((_lh_matchIdent_2_4_6 _lh_one_way_unify1_arg1_9_4) _lh_one_way_unify1_arg3_9_4) _lh_one_way_unify1_Var_0_9_4))
    | _ -> 
      (match _lh_one_way_unify1_arg1_9_4 with
        | `Fun(_lh_one_way_unify1_Fun_0_6_0, _lh_one_way_unify1_Fun_1_6_0, _lh_one_way_unify1_Fun_2_6_0) -> 
          (match _lh_one_way_unify1_arg2_3_0 with
            | `Fun(_lh_one_way_unify1_Fun_0_6_1, _lh_one_way_unify1_Fun_1_6_1, _lh_one_way_unify1_Fun_2_6_1) -> 
              (if (_lh_one_way_unify1_Fun_0_6_0 = _lh_one_way_unify1_Fun_0_6_1) then
                (((one_way_unify1_lst_d0_d0_d1_d6 _lh_one_way_unify1_Fun_1_6_0) _lh_one_way_unify1_Fun_1_6_1) _lh_one_way_unify1_arg3_9_4)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d7 _lh_one_way_unify1_arg1_7_9 _lh_one_way_unify1_arg2_2_3 _lh_one_way_unify1_arg3_7_9 =
  (match _lh_one_way_unify1_arg2_2_3 with
    | `Var(_lh_one_way_unify1_Var_0_7_9) -> 
      (let rec _lh_matchIdent_2_0_3 = ((find_d2_d0_d1_d7 _lh_one_way_unify1_Var_0_7_9) _lh_one_way_unify1_arg3_7_9) in
        (((_lh_matchIdent_2_0_3 _lh_one_way_unify1_arg1_7_9) _lh_one_way_unify1_arg3_7_9) _lh_one_way_unify1_Var_0_7_9))
    | _ -> 
      (match _lh_one_way_unify1_arg1_7_9 with
        | `Fun(_lh_one_way_unify1_Fun_0_4_6, _lh_one_way_unify1_Fun_1_4_6, _lh_one_way_unify1_Fun_2_4_6) -> 
          (match _lh_one_way_unify1_arg2_2_3 with
            | `Fun(_lh_one_way_unify1_Fun_0_4_7, _lh_one_way_unify1_Fun_1_4_7, _lh_one_way_unify1_Fun_2_4_7) -> 
              (if (_lh_one_way_unify1_Fun_0_4_6 = _lh_one_way_unify1_Fun_0_4_7) then
                (((one_way_unify1_lst_d0_d0_d1_d7 _lh_one_way_unify1_Fun_1_4_6) _lh_one_way_unify1_Fun_1_4_7) _lh_one_way_unify1_arg3_7_9)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d8 _lh_one_way_unify1_arg1_1_1_0 _lh_one_way_unify1_arg2_3_6 _lh_one_way_unify1_arg3_1_1_0 =
  (match _lh_one_way_unify1_arg2_3_6 with
    | `Var(_lh_one_way_unify1_Var_0_1_1_0) -> 
      (let rec _lh_matchIdent_2_6_7 = ((find_d2_d0_d1_d8 _lh_one_way_unify1_Var_0_1_1_0) _lh_one_way_unify1_arg3_1_1_0) in
        (((_lh_matchIdent_2_6_7 _lh_one_way_unify1_arg1_1_1_0) _lh_one_way_unify1_arg3_1_1_0) _lh_one_way_unify1_Var_0_1_1_0))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_1_0 with
        | `Fun(_lh_one_way_unify1_Fun_0_7_2, _lh_one_way_unify1_Fun_1_7_2, _lh_one_way_unify1_Fun_2_7_2) -> 
          (match _lh_one_way_unify1_arg2_3_6 with
            | `Fun(_lh_one_way_unify1_Fun_0_7_3, _lh_one_way_unify1_Fun_1_7_3, _lh_one_way_unify1_Fun_2_7_3) -> 
              (if (_lh_one_way_unify1_Fun_0_7_2 = _lh_one_way_unify1_Fun_0_7_3) then
                (((one_way_unify1_lst_d0_d0_d1_d8 _lh_one_way_unify1_Fun_1_7_2) _lh_one_way_unify1_Fun_1_7_3) _lh_one_way_unify1_arg3_1_1_0)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d1_d9 _lh_one_way_unify1_arg1_7 _lh_one_way_unify1_arg2_3 _lh_one_way_unify1_arg3_7 =
  (match _lh_one_way_unify1_arg2_3 with
    | `Var(_lh_one_way_unify1_Var_0_7) -> 
      (let rec _lh_matchIdent_7_4 = ((find_d2_d0_d1_d9 _lh_one_way_unify1_Var_0_7) _lh_one_way_unify1_arg3_7) in
        (((_lh_matchIdent_7_4 _lh_one_way_unify1_arg1_7) _lh_one_way_unify1_arg3_7) _lh_one_way_unify1_Var_0_7))
    | _ -> 
      (match _lh_one_way_unify1_arg1_7 with
        | `Fun(_lh_one_way_unify1_Fun_0_6, _lh_one_way_unify1_Fun_1_6, _lh_one_way_unify1_Fun_2_6) -> 
          (match _lh_one_way_unify1_arg2_3 with
            | `Fun(_lh_one_way_unify1_Fun_0_7, _lh_one_way_unify1_Fun_1_7, _lh_one_way_unify1_Fun_2_7) -> 
              (if (_lh_one_way_unify1_Fun_0_6 = _lh_one_way_unify1_Fun_0_7) then
                (((one_way_unify1_lst_d0_d0_d1_d9 _lh_one_way_unify1_Fun_1_6) _lh_one_way_unify1_Fun_1_7) _lh_one_way_unify1_arg3_7)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2 _lh_one_way_unify1_arg1_8_8 _lh_one_way_unify1_arg2_2_8 _lh_one_way_unify1_arg3_8_8 =
  (match _lh_one_way_unify1_arg2_2_8 with
    | `Var(_lh_one_way_unify1_Var_0_8_8) -> 
      (let rec _lh_matchIdent_2_2_3 = ((find_d2_d0_d2 _lh_one_way_unify1_Var_0_8_8) _lh_one_way_unify1_arg3_8_8) in
        (((_lh_matchIdent_2_2_3 _lh_one_way_unify1_arg1_8_8) _lh_one_way_unify1_arg3_8_8) _lh_one_way_unify1_Var_0_8_8))
    | _ -> 
      (match _lh_one_way_unify1_arg1_8_8 with
        | `Fun(_lh_one_way_unify1_Fun_0_5_6, _lh_one_way_unify1_Fun_1_5_6, _lh_one_way_unify1_Fun_2_5_6) -> 
          (match _lh_one_way_unify1_arg2_2_8 with
            | `Fun(_lh_one_way_unify1_Fun_0_5_7, _lh_one_way_unify1_Fun_1_5_7, _lh_one_way_unify1_Fun_2_5_7) -> 
              (if (_lh_one_way_unify1_Fun_0_5_6 = _lh_one_way_unify1_Fun_0_5_7) then
                (((one_way_unify1_lst_d0_d0_d2 _lh_one_way_unify1_Fun_1_5_6) _lh_one_way_unify1_Fun_1_5_7) _lh_one_way_unify1_arg3_8_8)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d0 _lh_one_way_unify1_arg1_4_8 _lh_one_way_unify1_arg2_1_6 _lh_one_way_unify1_arg3_4_8 =
  (match _lh_one_way_unify1_arg2_1_6 with
    | `Var(_lh_one_way_unify1_Var_0_4_8) -> 
      (let rec _lh_matchIdent_1_3_9 = ((find_d2_d0_d2_d0 _lh_one_way_unify1_Var_0_4_8) _lh_one_way_unify1_arg3_4_8) in
        (((_lh_matchIdent_1_3_9 _lh_one_way_unify1_arg1_4_8) _lh_one_way_unify1_arg3_4_8) _lh_one_way_unify1_Var_0_4_8))
    | _ -> 
      (match _lh_one_way_unify1_arg1_4_8 with
        | `Fun(_lh_one_way_unify1_Fun_0_3_2, _lh_one_way_unify1_Fun_1_3_2, _lh_one_way_unify1_Fun_2_3_2) -> 
          (match _lh_one_way_unify1_arg2_1_6 with
            | `Fun(_lh_one_way_unify1_Fun_0_3_3, _lh_one_way_unify1_Fun_1_3_3, _lh_one_way_unify1_Fun_2_3_3) -> 
              (if (_lh_one_way_unify1_Fun_0_3_2 = _lh_one_way_unify1_Fun_0_3_3) then
                (((one_way_unify1_lst_d0_d0_d2_d0 _lh_one_way_unify1_Fun_1_3_2) _lh_one_way_unify1_Fun_1_3_3) _lh_one_way_unify1_arg3_4_8)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d1 _lh_one_way_unify1_arg1_4_3 _lh_one_way_unify1_arg2_1_5 _lh_one_way_unify1_arg3_4_3 =
  (match _lh_one_way_unify1_arg2_1_5 with
    | `Var(_lh_one_way_unify1_Var_0_4_3) -> 
      (let rec _lh_matchIdent_1_3_5 = ((find_d2_d0_d2_d1 _lh_one_way_unify1_Var_0_4_3) _lh_one_way_unify1_arg3_4_3) in
        (((_lh_matchIdent_1_3_5 _lh_one_way_unify1_arg1_4_3) _lh_one_way_unify1_arg3_4_3) _lh_one_way_unify1_Var_0_4_3))
    | _ -> 
      (match _lh_one_way_unify1_arg1_4_3 with
        | `Fun(_lh_one_way_unify1_Fun_0_3_0, _lh_one_way_unify1_Fun_1_3_0, _lh_one_way_unify1_Fun_2_3_0) -> 
          (match _lh_one_way_unify1_arg2_1_5 with
            | `Fun(_lh_one_way_unify1_Fun_0_3_1, _lh_one_way_unify1_Fun_1_3_1, _lh_one_way_unify1_Fun_2_3_1) -> 
              (if (_lh_one_way_unify1_Fun_0_3_0 = _lh_one_way_unify1_Fun_0_3_1) then
                (((one_way_unify1_lst_d0_d0_d2_d1 _lh_one_way_unify1_Fun_1_3_0) _lh_one_way_unify1_Fun_1_3_1) _lh_one_way_unify1_arg3_4_3)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d2 _lh_one_way_unify1_arg1_2_5 _lh_one_way_unify1_arg2_7 _lh_one_way_unify1_arg3_2_5 =
  (match _lh_one_way_unify1_arg2_7 with
    | `Var(_lh_one_way_unify1_Var_0_2_5) -> 
      (let rec _lh_matchIdent_1_0_8 = ((find_d2_d0_d2_d2 _lh_one_way_unify1_Var_0_2_5) _lh_one_way_unify1_arg3_2_5) in
        (((_lh_matchIdent_1_0_8 _lh_one_way_unify1_arg1_2_5) _lh_one_way_unify1_arg3_2_5) _lh_one_way_unify1_Var_0_2_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_2_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_4, _lh_one_way_unify1_Fun_1_1_4, _lh_one_way_unify1_Fun_2_1_4) -> 
          (match _lh_one_way_unify1_arg2_7 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_5, _lh_one_way_unify1_Fun_1_1_5, _lh_one_way_unify1_Fun_2_1_5) -> 
              (if (_lh_one_way_unify1_Fun_0_1_4 = _lh_one_way_unify1_Fun_0_1_5) then
                (((one_way_unify1_lst_d0_d0_d2_d2 _lh_one_way_unify1_Fun_1_1_4) _lh_one_way_unify1_Fun_1_1_5) _lh_one_way_unify1_arg3_2_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d3 _lh_one_way_unify1_arg1_1_5_9 _lh_one_way_unify1_arg2_5_3 _lh_one_way_unify1_arg3_1_5_9 =
  (match _lh_one_way_unify1_arg2_5_3 with
    | `Var(_lh_one_way_unify1_Var_0_1_5_9) -> 
      (let rec _lh_matchIdent_4_4_3 = ((find_d2_d0_d2_d3 _lh_one_way_unify1_Var_0_1_5_9) _lh_one_way_unify1_arg3_1_5_9) in
        (((_lh_matchIdent_4_4_3 _lh_one_way_unify1_arg1_1_5_9) _lh_one_way_unify1_arg3_1_5_9) _lh_one_way_unify1_Var_0_1_5_9))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_5_9 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_0_6, _lh_one_way_unify1_Fun_1_1_0_6, _lh_one_way_unify1_Fun_2_1_0_6) -> 
          (match _lh_one_way_unify1_arg2_5_3 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_0_7, _lh_one_way_unify1_Fun_1_1_0_7, _lh_one_way_unify1_Fun_2_1_0_7) -> 
              (if (_lh_one_way_unify1_Fun_0_1_0_6 = _lh_one_way_unify1_Fun_0_1_0_7) then
                (((one_way_unify1_lst_d0_d0_d2_d3 _lh_one_way_unify1_Fun_1_1_0_6) _lh_one_way_unify1_Fun_1_1_0_7) _lh_one_way_unify1_arg3_1_5_9)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d4 _lh_one_way_unify1_arg1_9_5 _lh_one_way_unify1_arg2_3_1 _lh_one_way_unify1_arg3_9_5 =
  (match _lh_one_way_unify1_arg2_3_1 with
    | `Var(_lh_one_way_unify1_Var_0_9_5) -> 
      (let rec _lh_matchIdent_2_4_8 = ((find_d2_d0_d2_d4 _lh_one_way_unify1_Var_0_9_5) _lh_one_way_unify1_arg3_9_5) in
        (((_lh_matchIdent_2_4_8 _lh_one_way_unify1_arg1_9_5) _lh_one_way_unify1_arg3_9_5) _lh_one_way_unify1_Var_0_9_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_9_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_6_2, _lh_one_way_unify1_Fun_1_6_2, _lh_one_way_unify1_Fun_2_6_2) -> 
          (match _lh_one_way_unify1_arg2_3_1 with
            | `Fun(_lh_one_way_unify1_Fun_0_6_3, _lh_one_way_unify1_Fun_1_6_3, _lh_one_way_unify1_Fun_2_6_3) -> 
              (if (_lh_one_way_unify1_Fun_0_6_2 = _lh_one_way_unify1_Fun_0_6_3) then
                (((one_way_unify1_lst_d0_d0_d2_d4 _lh_one_way_unify1_Fun_1_6_2) _lh_one_way_unify1_Fun_1_6_3) _lh_one_way_unify1_arg3_9_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d5 _lh_one_way_unify1_arg1_7_1 _lh_one_way_unify1_arg2_1_9 _lh_one_way_unify1_arg3_7_1 =
  (match _lh_one_way_unify1_arg2_1_9 with
    | `Var(_lh_one_way_unify1_Var_0_7_1) -> 
      (let rec _lh_matchIdent_1_7_4 = ((find_d2_d0_d2_d5 _lh_one_way_unify1_Var_0_7_1) _lh_one_way_unify1_arg3_7_1) in
        (((_lh_matchIdent_1_7_4 _lh_one_way_unify1_arg1_7_1) _lh_one_way_unify1_arg3_7_1) _lh_one_way_unify1_Var_0_7_1))
    | _ -> 
      (match _lh_one_way_unify1_arg1_7_1 with
        | `Fun(_lh_one_way_unify1_Fun_0_3_8, _lh_one_way_unify1_Fun_1_3_8, _lh_one_way_unify1_Fun_2_3_8) -> 
          (match _lh_one_way_unify1_arg2_1_9 with
            | `Fun(_lh_one_way_unify1_Fun_0_3_9, _lh_one_way_unify1_Fun_1_3_9, _lh_one_way_unify1_Fun_2_3_9) -> 
              (if (_lh_one_way_unify1_Fun_0_3_8 = _lh_one_way_unify1_Fun_0_3_9) then
                (((one_way_unify1_lst_d0_d0_d2_d5 _lh_one_way_unify1_Fun_1_3_8) _lh_one_way_unify1_Fun_1_3_9) _lh_one_way_unify1_arg3_7_1)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d6 _lh_one_way_unify1_arg1_1_5 _lh_one_way_unify1_arg2_5 _lh_one_way_unify1_arg3_1_5 =
  (match _lh_one_way_unify1_arg2_5 with
    | `Var(_lh_one_way_unify1_Var_0_1_5) -> 
      (let rec _lh_matchIdent_8_9 = ((find_d2_d0_d2_d6 _lh_one_way_unify1_Var_0_1_5) _lh_one_way_unify1_arg3_1_5) in
        (((_lh_matchIdent_8_9 _lh_one_way_unify1_arg1_1_5) _lh_one_way_unify1_arg3_1_5) _lh_one_way_unify1_Var_0_1_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_0, _lh_one_way_unify1_Fun_1_1_0, _lh_one_way_unify1_Fun_2_1_0) -> 
          (match _lh_one_way_unify1_arg2_5 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_1, _lh_one_way_unify1_Fun_1_1_1, _lh_one_way_unify1_Fun_2_1_1) -> 
              (if (_lh_one_way_unify1_Fun_0_1_0 = _lh_one_way_unify1_Fun_0_1_1) then
                (((one_way_unify1_lst_d0_d0_d2_d6 _lh_one_way_unify1_Fun_1_1_0) _lh_one_way_unify1_Fun_1_1_1) _lh_one_way_unify1_arg3_1_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d7 _lh_one_way_unify1_arg1_1_3_0 _lh_one_way_unify1_arg2_4_2 _lh_one_way_unify1_arg3_1_3_0 =
  (match _lh_one_way_unify1_arg2_4_2 with
    | `Var(_lh_one_way_unify1_Var_0_1_3_0) -> 
      (let rec _lh_matchIdent_3_0_8 = ((find_d2_d0_d2_d7 _lh_one_way_unify1_Var_0_1_3_0) _lh_one_way_unify1_arg3_1_3_0) in
        (((_lh_matchIdent_3_0_8 _lh_one_way_unify1_arg1_1_3_0) _lh_one_way_unify1_arg3_1_3_0) _lh_one_way_unify1_Var_0_1_3_0))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_3_0 with
        | `Fun(_lh_one_way_unify1_Fun_0_8_4, _lh_one_way_unify1_Fun_1_8_4, _lh_one_way_unify1_Fun_2_8_4) -> 
          (match _lh_one_way_unify1_arg2_4_2 with
            | `Fun(_lh_one_way_unify1_Fun_0_8_5, _lh_one_way_unify1_Fun_1_8_5, _lh_one_way_unify1_Fun_2_8_5) -> 
              (if (_lh_one_way_unify1_Fun_0_8_4 = _lh_one_way_unify1_Fun_0_8_5) then
                (((one_way_unify1_lst_d0_d0_d2_d7 _lh_one_way_unify1_Fun_1_8_4) _lh_one_way_unify1_Fun_1_8_5) _lh_one_way_unify1_arg3_1_3_0)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d8 _lh_one_way_unify1_arg1_1_6_5 _lh_one_way_unify1_arg2_5_5 _lh_one_way_unify1_arg3_1_6_5 =
  (match _lh_one_way_unify1_arg2_5_5 with
    | `Var(_lh_one_way_unify1_Var_0_1_6_5) -> 
      (let rec _lh_matchIdent_4_7_1 = ((find_d2_d0_d2_d8 _lh_one_way_unify1_Var_0_1_6_5) _lh_one_way_unify1_arg3_1_6_5) in
        (((_lh_matchIdent_4_7_1 _lh_one_way_unify1_arg1_1_6_5) _lh_one_way_unify1_arg3_1_6_5) _lh_one_way_unify1_Var_0_1_6_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_6_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_1_0, _lh_one_way_unify1_Fun_1_1_1_0, _lh_one_way_unify1_Fun_2_1_1_0) -> 
          (match _lh_one_way_unify1_arg2_5_5 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_1_1, _lh_one_way_unify1_Fun_1_1_1_1, _lh_one_way_unify1_Fun_2_1_1_1) -> 
              (if (_lh_one_way_unify1_Fun_0_1_1_0 = _lh_one_way_unify1_Fun_0_1_1_1) then
                (((one_way_unify1_lst_d0_d0_d2_d8 _lh_one_way_unify1_Fun_1_1_1_0) _lh_one_way_unify1_Fun_1_1_1_1) _lh_one_way_unify1_arg3_1_6_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d2_d9 _lh_one_way_unify1_arg1_2_9 _lh_one_way_unify1_arg2_1_1 _lh_one_way_unify1_arg3_2_9 =
  (match _lh_one_way_unify1_arg2_1_1 with
    | `Var(_lh_one_way_unify1_Var_0_2_9) -> 
      (let rec _lh_matchIdent_1_1_9 = ((find_d2_d0_d2_d9 _lh_one_way_unify1_Var_0_2_9) _lh_one_way_unify1_arg3_2_9) in
        (((_lh_matchIdent_1_1_9 _lh_one_way_unify1_arg1_2_9) _lh_one_way_unify1_arg3_2_9) _lh_one_way_unify1_Var_0_2_9))
    | _ -> 
      (match _lh_one_way_unify1_arg1_2_9 with
        | `Fun(_lh_one_way_unify1_Fun_0_2_2, _lh_one_way_unify1_Fun_1_2_2, _lh_one_way_unify1_Fun_2_2_2) -> 
          (match _lh_one_way_unify1_arg2_1_1 with
            | `Fun(_lh_one_way_unify1_Fun_0_2_3, _lh_one_way_unify1_Fun_1_2_3, _lh_one_way_unify1_Fun_2_2_3) -> 
              (if (_lh_one_way_unify1_Fun_0_2_2 = _lh_one_way_unify1_Fun_0_2_3) then
                (((one_way_unify1_lst_d0_d0_d2_d9 _lh_one_way_unify1_Fun_1_2_2) _lh_one_way_unify1_Fun_1_2_3) _lh_one_way_unify1_arg3_2_9)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3 _lh_one_way_unify1_arg1_3 _lh_one_way_unify1_arg2_1 _lh_one_way_unify1_arg3_3 =
  (match _lh_one_way_unify1_arg2_1 with
    | `Var(_lh_one_way_unify1_Var_0_3) -> 
      (let rec _lh_matchIdent_6_9 = ((find_d2_d0_d3 _lh_one_way_unify1_Var_0_3) _lh_one_way_unify1_arg3_3) in
        (((_lh_matchIdent_6_9 _lh_one_way_unify1_arg1_3) _lh_one_way_unify1_arg3_3) _lh_one_way_unify1_Var_0_3))
    | _ -> 
      (match _lh_one_way_unify1_arg1_3 with
        | `Fun(_lh_one_way_unify1_Fun_0_2, _lh_one_way_unify1_Fun_1_2, _lh_one_way_unify1_Fun_2_2) -> 
          (match _lh_one_way_unify1_arg2_1 with
            | `Fun(_lh_one_way_unify1_Fun_0_3, _lh_one_way_unify1_Fun_1_3, _lh_one_way_unify1_Fun_2_3) -> 
              (if (_lh_one_way_unify1_Fun_0_2 = _lh_one_way_unify1_Fun_0_3) then
                (((one_way_unify1_lst_d0_d0_d3 _lh_one_way_unify1_Fun_1_2) _lh_one_way_unify1_Fun_1_3) _lh_one_way_unify1_arg3_3)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d0 _lh_one_way_unify1_arg1_3_1 _lh_one_way_unify1_arg2_1_3 _lh_one_way_unify1_arg3_3_1 =
  (match _lh_one_way_unify1_arg2_1_3 with
    | `Var(_lh_one_way_unify1_Var_0_3_1) -> 
      (let rec _lh_matchIdent_1_2_1 = ((find_d2_d0_d3_d0 _lh_one_way_unify1_Var_0_3_1) _lh_one_way_unify1_arg3_3_1) in
        (((_lh_matchIdent_1_2_1 _lh_one_way_unify1_arg1_3_1) _lh_one_way_unify1_arg3_3_1) _lh_one_way_unify1_Var_0_3_1))
    | _ -> 
      (match _lh_one_way_unify1_arg1_3_1 with
        | `Fun(_lh_one_way_unify1_Fun_0_2_6, _lh_one_way_unify1_Fun_1_2_6, _lh_one_way_unify1_Fun_2_2_6) -> 
          (match _lh_one_way_unify1_arg2_1_3 with
            | `Fun(_lh_one_way_unify1_Fun_0_2_7, _lh_one_way_unify1_Fun_1_2_7, _lh_one_way_unify1_Fun_2_2_7) -> 
              (if (_lh_one_way_unify1_Fun_0_2_6 = _lh_one_way_unify1_Fun_0_2_7) then
                (((one_way_unify1_lst_d0_d0_d3_d0 _lh_one_way_unify1_Fun_1_2_6) _lh_one_way_unify1_Fun_1_2_7) _lh_one_way_unify1_arg3_3_1)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d1 _lh_one_way_unify1_arg1_1_8_3 _lh_one_way_unify1_arg2_5_9 _lh_one_way_unify1_arg3_1_8_3 =
  (match _lh_one_way_unify1_arg2_5_9 with
    | `Var(_lh_one_way_unify1_Var_0_1_8_3) -> 
      (let rec _lh_matchIdent_4_9_4 = ((find_d2_d0_d3_d1 _lh_one_way_unify1_Var_0_1_8_3) _lh_one_way_unify1_arg3_1_8_3) in
        (((_lh_matchIdent_4_9_4 _lh_one_way_unify1_arg1_1_8_3) _lh_one_way_unify1_arg3_1_8_3) _lh_one_way_unify1_Var_0_1_8_3))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_8_3 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_1_8, _lh_one_way_unify1_Fun_1_1_1_8, _lh_one_way_unify1_Fun_2_1_1_8) -> 
          (match _lh_one_way_unify1_arg2_5_9 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_1_9, _lh_one_way_unify1_Fun_1_1_1_9, _lh_one_way_unify1_Fun_2_1_1_9) -> 
              (if (_lh_one_way_unify1_Fun_0_1_1_8 = _lh_one_way_unify1_Fun_0_1_1_9) then
                (((one_way_unify1_lst_d0_d0_d3_d1 _lh_one_way_unify1_Fun_1_1_1_8) _lh_one_way_unify1_Fun_1_1_1_9) _lh_one_way_unify1_arg3_1_8_3)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d2 _lh_one_way_unify1_arg1_9_7 _lh_one_way_unify1_arg2_3_3 _lh_one_way_unify1_arg3_9_7 =
  (match _lh_one_way_unify1_arg2_3_3 with
    | `Var(_lh_one_way_unify1_Var_0_9_7) -> 
      (let rec _lh_matchIdent_2_5_1 = ((find_d2_d0_d3_d2 _lh_one_way_unify1_Var_0_9_7) _lh_one_way_unify1_arg3_9_7) in
        (((_lh_matchIdent_2_5_1 _lh_one_way_unify1_arg1_9_7) _lh_one_way_unify1_arg3_9_7) _lh_one_way_unify1_Var_0_9_7))
    | _ -> 
      (match _lh_one_way_unify1_arg1_9_7 with
        | `Fun(_lh_one_way_unify1_Fun_0_6_6, _lh_one_way_unify1_Fun_1_6_6, _lh_one_way_unify1_Fun_2_6_6) -> 
          (match _lh_one_way_unify1_arg2_3_3 with
            | `Fun(_lh_one_way_unify1_Fun_0_6_7, _lh_one_way_unify1_Fun_1_6_7, _lh_one_way_unify1_Fun_2_6_7) -> 
              (if (_lh_one_way_unify1_Fun_0_6_6 = _lh_one_way_unify1_Fun_0_6_7) then
                (((one_way_unify1_lst_d0_d0_d3_d2 _lh_one_way_unify1_Fun_1_6_6) _lh_one_way_unify1_Fun_1_6_7) _lh_one_way_unify1_arg3_9_7)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d3 _lh_one_way_unify1_arg1_1_5_7 _lh_one_way_unify1_arg2_5_1 _lh_one_way_unify1_arg3_1_5_7 =
  (match _lh_one_way_unify1_arg2_5_1 with
    | `Var(_lh_one_way_unify1_Var_0_1_5_7) -> 
      (let rec _lh_matchIdent_3_7_6 = ((find_d2_d0_d3_d3 _lh_one_way_unify1_Var_0_1_5_7) _lh_one_way_unify1_arg3_1_5_7) in
        (((_lh_matchIdent_3_7_6 _lh_one_way_unify1_arg1_1_5_7) _lh_one_way_unify1_arg3_1_5_7) _lh_one_way_unify1_Var_0_1_5_7))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_5_7 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_0_2, _lh_one_way_unify1_Fun_1_1_0_2, _lh_one_way_unify1_Fun_2_1_0_2) -> 
          (match _lh_one_way_unify1_arg2_5_1 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_0_3, _lh_one_way_unify1_Fun_1_1_0_3, _lh_one_way_unify1_Fun_2_1_0_3) -> 
              (if (_lh_one_way_unify1_Fun_0_1_0_2 = _lh_one_way_unify1_Fun_0_1_0_3) then
                (((one_way_unify1_lst_d0_d0_d3_d3 _lh_one_way_unify1_Fun_1_1_0_2) _lh_one_way_unify1_Fun_1_1_0_3) _lh_one_way_unify1_arg3_1_5_7)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d4 _lh_one_way_unify1_arg1_6 _lh_one_way_unify1_arg2_2 _lh_one_way_unify1_arg3_6 =
  (match _lh_one_way_unify1_arg2_2 with
    | `Var(_lh_one_way_unify1_Var_0_6) -> 
      (let rec _lh_matchIdent_7_2 = ((find_d2_d0_d3_d4 _lh_one_way_unify1_Var_0_6) _lh_one_way_unify1_arg3_6) in
        (((_lh_matchIdent_7_2 _lh_one_way_unify1_arg1_6) _lh_one_way_unify1_arg3_6) _lh_one_way_unify1_Var_0_6))
    | _ -> 
      (match _lh_one_way_unify1_arg1_6 with
        | `Fun(_lh_one_way_unify1_Fun_0_4, _lh_one_way_unify1_Fun_1_4, _lh_one_way_unify1_Fun_2_4) -> 
          (match _lh_one_way_unify1_arg2_2 with
            | `Fun(_lh_one_way_unify1_Fun_0_5, _lh_one_way_unify1_Fun_1_5, _lh_one_way_unify1_Fun_2_5) -> 
              (if (_lh_one_way_unify1_Fun_0_4 = _lh_one_way_unify1_Fun_0_5) then
                (((one_way_unify1_lst_d0_d0_d3_d4 _lh_one_way_unify1_Fun_1_4) _lh_one_way_unify1_Fun_1_5) _lh_one_way_unify1_arg3_6)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d5 _lh_one_way_unify1_arg1_5_9 _lh_one_way_unify1_arg2_1_7 _lh_one_way_unify1_arg3_5_9 =
  (match _lh_one_way_unify1_arg2_1_7 with
    | `Var(_lh_one_way_unify1_Var_0_5_9) -> 
      (let rec _lh_matchIdent_1_4_8 = ((find_d2_d0_d3_d5 _lh_one_way_unify1_Var_0_5_9) _lh_one_way_unify1_arg3_5_9) in
        (((_lh_matchIdent_1_4_8 _lh_one_way_unify1_arg1_5_9) _lh_one_way_unify1_arg3_5_9) _lh_one_way_unify1_Var_0_5_9))
    | _ -> 
      (match _lh_one_way_unify1_arg1_5_9 with
        | `Fun(_lh_one_way_unify1_Fun_0_3_4, _lh_one_way_unify1_Fun_1_3_4, _lh_one_way_unify1_Fun_2_3_4) -> 
          (match _lh_one_way_unify1_arg2_1_7 with
            | `Fun(_lh_one_way_unify1_Fun_0_3_5, _lh_one_way_unify1_Fun_1_3_5, _lh_one_way_unify1_Fun_2_3_5) -> 
              (if (_lh_one_way_unify1_Fun_0_3_4 = _lh_one_way_unify1_Fun_0_3_5) then
                (((one_way_unify1_lst_d0_d0_d3_d5 _lh_one_way_unify1_Fun_1_3_4) _lh_one_way_unify1_Fun_1_3_5) _lh_one_way_unify1_arg3_5_9)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d6 _lh_one_way_unify1_arg1_8_7 _lh_one_way_unify1_arg2_2_7 _lh_one_way_unify1_arg3_8_7 =
  (match _lh_one_way_unify1_arg2_2_7 with
    | `Var(_lh_one_way_unify1_Var_0_8_7) -> 
      (let rec _lh_matchIdent_2_1_7 = ((find_d2_d0_d3_d6 _lh_one_way_unify1_Var_0_8_7) _lh_one_way_unify1_arg3_8_7) in
        (((_lh_matchIdent_2_1_7 _lh_one_way_unify1_arg1_8_7) _lh_one_way_unify1_arg3_8_7) _lh_one_way_unify1_Var_0_8_7))
    | _ -> 
      (match _lh_one_way_unify1_arg1_8_7 with
        | `Fun(_lh_one_way_unify1_Fun_0_5_4, _lh_one_way_unify1_Fun_1_5_4, _lh_one_way_unify1_Fun_2_5_4) -> 
          (match _lh_one_way_unify1_arg2_2_7 with
            | `Fun(_lh_one_way_unify1_Fun_0_5_5, _lh_one_way_unify1_Fun_1_5_5, _lh_one_way_unify1_Fun_2_5_5) -> 
              (if (_lh_one_way_unify1_Fun_0_5_4 = _lh_one_way_unify1_Fun_0_5_5) then
                (((one_way_unify1_lst_d0_d0_d3_d6 _lh_one_way_unify1_Fun_1_5_4) _lh_one_way_unify1_Fun_1_5_5) _lh_one_way_unify1_arg3_8_7)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d7 _lh_one_way_unify1_arg1_1_5_2 _lh_one_way_unify1_arg2_5_0 _lh_one_way_unify1_arg3_1_5_2 =
  (match _lh_one_way_unify1_arg2_5_0 with
    | `Var(_lh_one_way_unify1_Var_0_1_5_2) -> 
      (let rec _lh_matchIdent_3_7_0 = ((find_d2_d0_d3_d7 _lh_one_way_unify1_Var_0_1_5_2) _lh_one_way_unify1_arg3_1_5_2) in
        (((_lh_matchIdent_3_7_0 _lh_one_way_unify1_arg1_1_5_2) _lh_one_way_unify1_arg3_1_5_2) _lh_one_way_unify1_Var_0_1_5_2))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_5_2 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_0_0, _lh_one_way_unify1_Fun_1_1_0_0, _lh_one_way_unify1_Fun_2_1_0_0) -> 
          (match _lh_one_way_unify1_arg2_5_0 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_0_1, _lh_one_way_unify1_Fun_1_1_0_1, _lh_one_way_unify1_Fun_2_1_0_1) -> 
              (if (_lh_one_way_unify1_Fun_0_1_0_0 = _lh_one_way_unify1_Fun_0_1_0_1) then
                (((one_way_unify1_lst_d0_d0_d3_d7 _lh_one_way_unify1_Fun_1_1_0_0) _lh_one_way_unify1_Fun_1_1_0_1) _lh_one_way_unify1_arg3_1_5_2)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d8 _lh_one_way_unify1_arg1_1_7_5 _lh_one_way_unify1_arg2_5_7 _lh_one_way_unify1_arg3_1_7_5 =
  (match _lh_one_way_unify1_arg2_5_7 with
    | `Var(_lh_one_way_unify1_Var_0_1_7_5) -> 
      (let rec _lh_matchIdent_4_8_7 = ((find_d2_d0_d3_d8 _lh_one_way_unify1_Var_0_1_7_5) _lh_one_way_unify1_arg3_1_7_5) in
        (((_lh_matchIdent_4_8_7 _lh_one_way_unify1_arg1_1_7_5) _lh_one_way_unify1_arg3_1_7_5) _lh_one_way_unify1_Var_0_1_7_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_7_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_1_4, _lh_one_way_unify1_Fun_1_1_1_4, _lh_one_way_unify1_Fun_2_1_1_4) -> 
          (match _lh_one_way_unify1_arg2_5_7 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_1_5, _lh_one_way_unify1_Fun_1_1_1_5, _lh_one_way_unify1_Fun_2_1_1_5) -> 
              (if (_lh_one_way_unify1_Fun_0_1_1_4 = _lh_one_way_unify1_Fun_0_1_1_5) then
                (((one_way_unify1_lst_d0_d0_d3_d8 _lh_one_way_unify1_Fun_1_1_1_4) _lh_one_way_unify1_Fun_1_1_1_5) _lh_one_way_unify1_arg3_1_7_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d3_d9 _lh_one_way_unify1_arg1_2_6 _lh_one_way_unify1_arg2_8 _lh_one_way_unify1_arg3_2_6 =
  (match _lh_one_way_unify1_arg2_8 with
    | `Var(_lh_one_way_unify1_Var_0_2_6) -> 
      (let rec _lh_matchIdent_1_1_0 = ((find_d2_d0_d3_d9 _lh_one_way_unify1_Var_0_2_6) _lh_one_way_unify1_arg3_2_6) in
        (((_lh_matchIdent_1_1_0 _lh_one_way_unify1_arg1_2_6) _lh_one_way_unify1_arg3_2_6) _lh_one_way_unify1_Var_0_2_6))
    | _ -> 
      (match _lh_one_way_unify1_arg1_2_6 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_6, _lh_one_way_unify1_Fun_1_1_6, _lh_one_way_unify1_Fun_2_1_6) -> 
          (match _lh_one_way_unify1_arg2_8 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_7, _lh_one_way_unify1_Fun_1_1_7, _lh_one_way_unify1_Fun_2_1_7) -> 
              (if (_lh_one_way_unify1_Fun_0_1_6 = _lh_one_way_unify1_Fun_0_1_7) then
                (((one_way_unify1_lst_d0_d0_d3_d9 _lh_one_way_unify1_Fun_1_1_6) _lh_one_way_unify1_Fun_1_1_7) _lh_one_way_unify1_arg3_2_6)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4 _lh_one_way_unify1_arg1_1_4_9 _lh_one_way_unify1_arg2_4_7 _lh_one_way_unify1_arg3_1_4_9 =
  (match _lh_one_way_unify1_arg2_4_7 with
    | `Var(_lh_one_way_unify1_Var_0_1_4_9) -> 
      (let rec _lh_matchIdent_3_6_1 = ((find_d2_d0_d4 _lh_one_way_unify1_Var_0_1_4_9) _lh_one_way_unify1_arg3_1_4_9) in
        (((_lh_matchIdent_3_6_1 _lh_one_way_unify1_arg1_1_4_9) _lh_one_way_unify1_arg3_1_4_9) _lh_one_way_unify1_Var_0_1_4_9))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_4_9 with
        | `Fun(_lh_one_way_unify1_Fun_0_9_4, _lh_one_way_unify1_Fun_1_9_4, _lh_one_way_unify1_Fun_2_9_4) -> 
          (match _lh_one_way_unify1_arg2_4_7 with
            | `Fun(_lh_one_way_unify1_Fun_0_9_5, _lh_one_way_unify1_Fun_1_9_5, _lh_one_way_unify1_Fun_2_9_5) -> 
              (if (_lh_one_way_unify1_Fun_0_9_4 = _lh_one_way_unify1_Fun_0_9_5) then
                (((one_way_unify1_lst_d0_d0_d4 _lh_one_way_unify1_Fun_1_9_4) _lh_one_way_unify1_Fun_1_9_5) _lh_one_way_unify1_arg3_1_4_9)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d0 _lh_one_way_unify1_arg1_1_8_5 _lh_one_way_unify1_arg2_6_1 _lh_one_way_unify1_arg3_1_8_5 =
  (match _lh_one_way_unify1_arg2_6_1 with
    | `Var(_lh_one_way_unify1_Var_0_1_8_5) -> 
      (let rec _lh_matchIdent_4_9_7 = ((find_d2_d0_d4_d0 _lh_one_way_unify1_Var_0_1_8_5) _lh_one_way_unify1_arg3_1_8_5) in
        (((_lh_matchIdent_4_9_7 _lh_one_way_unify1_arg1_1_8_5) _lh_one_way_unify1_arg3_1_8_5) _lh_one_way_unify1_Var_0_1_8_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_8_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_2_2, _lh_one_way_unify1_Fun_1_1_2_2, _lh_one_way_unify1_Fun_2_1_2_2) -> 
          (match _lh_one_way_unify1_arg2_6_1 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_2_3, _lh_one_way_unify1_Fun_1_1_2_3, _lh_one_way_unify1_Fun_2_1_2_3) -> 
              (if (_lh_one_way_unify1_Fun_0_1_2_2 = _lh_one_way_unify1_Fun_0_1_2_3) then
                (((one_way_unify1_lst_d0_d0_d4_d0 _lh_one_way_unify1_Fun_1_1_2_2) _lh_one_way_unify1_Fun_1_1_2_3) _lh_one_way_unify1_arg3_1_8_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d1 _lh_one_way_unify1_arg1_1_2_4 _lh_one_way_unify1_arg2_4_0 _lh_one_way_unify1_arg3_1_2_4 =
  (match _lh_one_way_unify1_arg2_4_0 with
    | `Var(_lh_one_way_unify1_Var_0_1_2_4) -> 
      (let rec _lh_matchIdent_2_8_9 = ((find_d2_d0_d4_d1 _lh_one_way_unify1_Var_0_1_2_4) _lh_one_way_unify1_arg3_1_2_4) in
        (((_lh_matchIdent_2_8_9 _lh_one_way_unify1_arg1_1_2_4) _lh_one_way_unify1_arg3_1_2_4) _lh_one_way_unify1_Var_0_1_2_4))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_2_4 with
        | `Fun(_lh_one_way_unify1_Fun_0_8_0, _lh_one_way_unify1_Fun_1_8_0, _lh_one_way_unify1_Fun_2_8_0) -> 
          (match _lh_one_way_unify1_arg2_4_0 with
            | `Fun(_lh_one_way_unify1_Fun_0_8_1, _lh_one_way_unify1_Fun_1_8_1, _lh_one_way_unify1_Fun_2_8_1) -> 
              (if (_lh_one_way_unify1_Fun_0_8_0 = _lh_one_way_unify1_Fun_0_8_1) then
                (((one_way_unify1_lst_d0_d0_d4_d1 _lh_one_way_unify1_Fun_1_8_0) _lh_one_way_unify1_Fun_1_8_1) _lh_one_way_unify1_arg3_1_2_4)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d2 _lh_one_way_unify1_arg1_2_7 _lh_one_way_unify1_arg2_9 _lh_one_way_unify1_arg3_2_7 =
  (match _lh_one_way_unify1_arg2_9 with
    | `Var(_lh_one_way_unify1_Var_0_2_7) -> 
      (let rec _lh_matchIdent_1_1_5 = ((find_d2_d0_d4_d2 _lh_one_way_unify1_Var_0_2_7) _lh_one_way_unify1_arg3_2_7) in
        (((_lh_matchIdent_1_1_5 _lh_one_way_unify1_arg1_2_7) _lh_one_way_unify1_arg3_2_7) _lh_one_way_unify1_Var_0_2_7))
    | _ -> 
      (match _lh_one_way_unify1_arg1_2_7 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_8, _lh_one_way_unify1_Fun_1_1_8, _lh_one_way_unify1_Fun_2_1_8) -> 
          (match _lh_one_way_unify1_arg2_9 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_9, _lh_one_way_unify1_Fun_1_1_9, _lh_one_way_unify1_Fun_2_1_9) -> 
              (if (_lh_one_way_unify1_Fun_0_1_8 = _lh_one_way_unify1_Fun_0_1_9) then
                (((one_way_unify1_lst_d0_d0_d4_d2 _lh_one_way_unify1_Fun_1_1_8) _lh_one_way_unify1_Fun_1_1_9) _lh_one_way_unify1_arg3_2_7)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d3 _lh_one_way_unify1_arg1_1_4_4 _lh_one_way_unify1_arg2_4_4 _lh_one_way_unify1_arg3_1_4_4 =
  (match _lh_one_way_unify1_arg2_4_4 with
    | `Var(_lh_one_way_unify1_Var_0_1_4_4) -> 
      (let rec _lh_matchIdent_3_5_2 = ((find_d2_d0_d4_d3 _lh_one_way_unify1_Var_0_1_4_4) _lh_one_way_unify1_arg3_1_4_4) in
        (((_lh_matchIdent_3_5_2 _lh_one_way_unify1_arg1_1_4_4) _lh_one_way_unify1_arg3_1_4_4) _lh_one_way_unify1_Var_0_1_4_4))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_4_4 with
        | `Fun(_lh_one_way_unify1_Fun_0_8_8, _lh_one_way_unify1_Fun_1_8_8, _lh_one_way_unify1_Fun_2_8_8) -> 
          (match _lh_one_way_unify1_arg2_4_4 with
            | `Fun(_lh_one_way_unify1_Fun_0_8_9, _lh_one_way_unify1_Fun_1_8_9, _lh_one_way_unify1_Fun_2_8_9) -> 
              (if (_lh_one_way_unify1_Fun_0_8_8 = _lh_one_way_unify1_Fun_0_8_9) then
                (((one_way_unify1_lst_d0_d0_d4_d3 _lh_one_way_unify1_Fun_1_8_8) _lh_one_way_unify1_Fun_1_8_9) _lh_one_way_unify1_arg3_1_4_4)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d4 _lh_one_way_unify1_arg1_1_7_8 _lh_one_way_unify1_arg2_5_8 _lh_one_way_unify1_arg3_1_7_8 =
  (match _lh_one_way_unify1_arg2_5_8 with
    | `Var(_lh_one_way_unify1_Var_0_1_7_8) -> 
      (let rec _lh_matchIdent_4_8_9 = ((find_d2_d0_d4_d4 _lh_one_way_unify1_Var_0_1_7_8) _lh_one_way_unify1_arg3_1_7_8) in
        (((_lh_matchIdent_4_8_9 _lh_one_way_unify1_arg1_1_7_8) _lh_one_way_unify1_arg3_1_7_8) _lh_one_way_unify1_Var_0_1_7_8))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_7_8 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_1_6, _lh_one_way_unify1_Fun_1_1_1_6, _lh_one_way_unify1_Fun_2_1_1_6) -> 
          (match _lh_one_way_unify1_arg2_5_8 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_1_7, _lh_one_way_unify1_Fun_1_1_1_7, _lh_one_way_unify1_Fun_2_1_1_7) -> 
              (if (_lh_one_way_unify1_Fun_0_1_1_6 = _lh_one_way_unify1_Fun_0_1_1_7) then
                (((one_way_unify1_lst_d0_d0_d4_d4 _lh_one_way_unify1_Fun_1_1_1_6) _lh_one_way_unify1_Fun_1_1_1_7) _lh_one_way_unify1_arg3_1_7_8)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d5 _lh_one_way_unify1_arg1_1_6_4 _lh_one_way_unify1_arg2_5_4 _lh_one_way_unify1_arg3_1_6_4 =
  (match _lh_one_way_unify1_arg2_5_4 with
    | `Var(_lh_one_way_unify1_Var_0_1_6_4) -> 
      (let rec _lh_matchIdent_4_7_0 = ((find_d2_d0_d4_d5 _lh_one_way_unify1_Var_0_1_6_4) _lh_one_way_unify1_arg3_1_6_4) in
        (((_lh_matchIdent_4_7_0 _lh_one_way_unify1_arg1_1_6_4) _lh_one_way_unify1_arg3_1_6_4) _lh_one_way_unify1_Var_0_1_6_4))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_6_4 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_0_8, _lh_one_way_unify1_Fun_1_1_0_8, _lh_one_way_unify1_Fun_2_1_0_8) -> 
          (match _lh_one_way_unify1_arg2_5_4 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_0_9, _lh_one_way_unify1_Fun_1_1_0_9, _lh_one_way_unify1_Fun_2_1_0_9) -> 
              (if (_lh_one_way_unify1_Fun_0_1_0_8 = _lh_one_way_unify1_Fun_0_1_0_9) then
                (((one_way_unify1_lst_d0_d0_d4_d5 _lh_one_way_unify1_Fun_1_1_0_8) _lh_one_way_unify1_Fun_1_1_0_9) _lh_one_way_unify1_arg3_1_6_4)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d6 _lh_one_way_unify1_arg1_1_3_5 _lh_one_way_unify1_arg2_4_3 _lh_one_way_unify1_arg3_1_3_5 =
  (match _lh_one_way_unify1_arg2_4_3 with
    | `Var(_lh_one_way_unify1_Var_0_1_3_5) -> 
      (let rec _lh_matchIdent_3_2_1 = ((find_d2_d0_d4_d6 _lh_one_way_unify1_Var_0_1_3_5) _lh_one_way_unify1_arg3_1_3_5) in
        (((_lh_matchIdent_3_2_1 _lh_one_way_unify1_arg1_1_3_5) _lh_one_way_unify1_arg3_1_3_5) _lh_one_way_unify1_Var_0_1_3_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_3_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_8_6, _lh_one_way_unify1_Fun_1_8_6, _lh_one_way_unify1_Fun_2_8_6) -> 
          (match _lh_one_way_unify1_arg2_4_3 with
            | `Fun(_lh_one_way_unify1_Fun_0_8_7, _lh_one_way_unify1_Fun_1_8_7, _lh_one_way_unify1_Fun_2_8_7) -> 
              (if (_lh_one_way_unify1_Fun_0_8_6 = _lh_one_way_unify1_Fun_0_8_7) then
                (((one_way_unify1_lst_d0_d0_d4_d6 _lh_one_way_unify1_Fun_1_8_6) _lh_one_way_unify1_Fun_1_8_7) _lh_one_way_unify1_arg3_1_3_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d7 _lh_one_way_unify1_arg1_1_1_1 _lh_one_way_unify1_arg2_3_7 _lh_one_way_unify1_arg3_1_1_1 =
  (match _lh_one_way_unify1_arg2_3_7 with
    | `Var(_lh_one_way_unify1_Var_0_1_1_1) -> 
      (let rec _lh_matchIdent_2_7_1 = ((find_d2_d0_d4_d7 _lh_one_way_unify1_Var_0_1_1_1) _lh_one_way_unify1_arg3_1_1_1) in
        (((_lh_matchIdent_2_7_1 _lh_one_way_unify1_arg1_1_1_1) _lh_one_way_unify1_arg3_1_1_1) _lh_one_way_unify1_Var_0_1_1_1))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_1_1 with
        | `Fun(_lh_one_way_unify1_Fun_0_7_4, _lh_one_way_unify1_Fun_1_7_4, _lh_one_way_unify1_Fun_2_7_4) -> 
          (match _lh_one_way_unify1_arg2_3_7 with
            | `Fun(_lh_one_way_unify1_Fun_0_7_5, _lh_one_way_unify1_Fun_1_7_5, _lh_one_way_unify1_Fun_2_7_5) -> 
              (if (_lh_one_way_unify1_Fun_0_7_4 = _lh_one_way_unify1_Fun_0_7_5) then
                (((one_way_unify1_lst_d0_d0_d4_d7 _lh_one_way_unify1_Fun_1_7_4) _lh_one_way_unify1_Fun_1_7_5) _lh_one_way_unify1_arg3_1_1_1)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d8 _lh_one_way_unify1_arg1_1_2_5 _lh_one_way_unify1_arg2_4_1 _lh_one_way_unify1_arg3_1_2_5 =
  (match _lh_one_way_unify1_arg2_4_1 with
    | `Var(_lh_one_way_unify1_Var_0_1_2_5) -> 
      (let rec _lh_matchIdent_2_9_0 = ((find_d2_d0_d4_d8 _lh_one_way_unify1_Var_0_1_2_5) _lh_one_way_unify1_arg3_1_2_5) in
        (((_lh_matchIdent_2_9_0 _lh_one_way_unify1_arg1_1_2_5) _lh_one_way_unify1_arg3_1_2_5) _lh_one_way_unify1_Var_0_1_2_5))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_2_5 with
        | `Fun(_lh_one_way_unify1_Fun_0_8_2, _lh_one_way_unify1_Fun_1_8_2, _lh_one_way_unify1_Fun_2_8_2) -> 
          (match _lh_one_way_unify1_arg2_4_1 with
            | `Fun(_lh_one_way_unify1_Fun_0_8_3, _lh_one_way_unify1_Fun_1_8_3, _lh_one_way_unify1_Fun_2_8_3) -> 
              (if (_lh_one_way_unify1_Fun_0_8_2 = _lh_one_way_unify1_Fun_0_8_3) then
                (((one_way_unify1_lst_d0_d0_d4_d8 _lh_one_way_unify1_Fun_1_8_2) _lh_one_way_unify1_Fun_1_8_3) _lh_one_way_unify1_arg3_1_2_5)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d4_d9 _lh_one_way_unify1_arg1_1_8_4 _lh_one_way_unify1_arg2_6_0 _lh_one_way_unify1_arg3_1_8_4 =
  (match _lh_one_way_unify1_arg2_6_0 with
    | `Var(_lh_one_way_unify1_Var_0_1_8_4) -> 
      (let rec _lh_matchIdent_4_9_5 = ((find_d2_d0_d4_d9 _lh_one_way_unify1_Var_0_1_8_4) _lh_one_way_unify1_arg3_1_8_4) in
        (((_lh_matchIdent_4_9_5 _lh_one_way_unify1_arg1_1_8_4) _lh_one_way_unify1_arg3_1_8_4) _lh_one_way_unify1_Var_0_1_8_4))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_8_4 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_2_0, _lh_one_way_unify1_Fun_1_1_2_0, _lh_one_way_unify1_Fun_2_1_2_0) -> 
          (match _lh_one_way_unify1_arg2_6_0 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_2_1, _lh_one_way_unify1_Fun_1_1_2_1, _lh_one_way_unify1_Fun_2_1_2_1) -> 
              (if (_lh_one_way_unify1_Fun_0_1_2_0 = _lh_one_way_unify1_Fun_0_1_2_1) then
                (((one_way_unify1_lst_d0_d0_d4_d9 _lh_one_way_unify1_Fun_1_1_2_0) _lh_one_way_unify1_Fun_1_1_2_1) _lh_one_way_unify1_arg3_1_8_4)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5 _lh_one_way_unify1_arg1_1_5_8 _lh_one_way_unify1_arg2_5_2 _lh_one_way_unify1_arg3_1_5_8 =
  (match _lh_one_way_unify1_arg2_5_2 with
    | `Var(_lh_one_way_unify1_Var_0_1_5_8) -> 
      (let rec _lh_matchIdent_3_7_7 = ((find_d2_d0_d5 _lh_one_way_unify1_Var_0_1_5_8) _lh_one_way_unify1_arg3_1_5_8) in
        (((_lh_matchIdent_3_7_7 _lh_one_way_unify1_arg1_1_5_8) _lh_one_way_unify1_arg3_1_5_8) _lh_one_way_unify1_Var_0_1_5_8))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_5_8 with
        | `Fun(_lh_one_way_unify1_Fun_0_1_0_4, _lh_one_way_unify1_Fun_1_1_0_4, _lh_one_way_unify1_Fun_2_1_0_4) -> 
          (match _lh_one_way_unify1_arg2_5_2 with
            | `Fun(_lh_one_way_unify1_Fun_0_1_0_5, _lh_one_way_unify1_Fun_1_1_0_5, _lh_one_way_unify1_Fun_2_1_0_5) -> 
              (if (_lh_one_way_unify1_Fun_0_1_0_4 = _lh_one_way_unify1_Fun_0_1_0_5) then
                (((one_way_unify1_lst_d0_d0_d5 _lh_one_way_unify1_Fun_1_1_0_4) _lh_one_way_unify1_Fun_1_1_0_5) _lh_one_way_unify1_arg3_1_5_8)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d0 _lh_one_way_unify1_arg1_1_0_4 _lh_one_way_unify1_arg2_3_4 _lh_one_way_unify1_arg3_1_0_4 =
  (match _lh_one_way_unify1_arg2_3_4 with
    | `Var(_lh_one_way_unify1_Var_0_1_0_4) -> 
      (let rec _lh_matchIdent_2_6_1 = ((find_d2_d0_d5_d0 _lh_one_way_unify1_Var_0_1_0_4) _lh_one_way_unify1_arg3_1_0_4) in
        (((_lh_matchIdent_2_6_1 _lh_one_way_unify1_arg1_1_0_4) _lh_one_way_unify1_arg3_1_0_4) _lh_one_way_unify1_Var_0_1_0_4))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_0_4 with
        | `Fun(_lh_one_way_unify1_Fun_0_6_8, _lh_one_way_unify1_Fun_1_6_8, _lh_one_way_unify1_Fun_2_6_8) -> 
          (match _lh_one_way_unify1_arg2_3_4 with
            | `Fun(_lh_one_way_unify1_Fun_0_6_9, _lh_one_way_unify1_Fun_1_6_9, _lh_one_way_unify1_Fun_2_6_9) -> 
              (if (_lh_one_way_unify1_Fun_0_6_8 = _lh_one_way_unify1_Fun_0_6_9) then
                (((one_way_unify1_lst_d0_d0_d5_d0 _lh_one_way_unify1_Fun_1_6_8) _lh_one_way_unify1_Fun_1_6_9) _lh_one_way_unify1_arg3_1_0_4)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d1 _lh_one_way_unify1_arg1_1_2 _lh_one_way_unify1_arg2_4 _lh_one_way_unify1_arg3_1_2 =
  (match _lh_one_way_unify1_arg2_4 with
    | `Var(_lh_one_way_unify1_Var_0_1_2) -> 
      (let rec _lh_matchIdent_8_1 = ((find_d2_d0_d5_d1 _lh_one_way_unify1_Var_0_1_2) _lh_one_way_unify1_arg3_1_2) in
        (((_lh_matchIdent_8_1 _lh_one_way_unify1_arg1_1_2) _lh_one_way_unify1_arg3_1_2) _lh_one_way_unify1_Var_0_1_2))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_2 with
        | `Fun(_lh_one_way_unify1_Fun_0_8, _lh_one_way_unify1_Fun_1_8, _lh_one_way_unify1_Fun_2_8) -> 
          (match _lh_one_way_unify1_arg2_4 with
            | `Fun(_lh_one_way_unify1_Fun_0_9, _lh_one_way_unify1_Fun_1_9, _lh_one_way_unify1_Fun_2_9) -> 
              (if (_lh_one_way_unify1_Fun_0_8 = _lh_one_way_unify1_Fun_0_9) then
                (((one_way_unify1_lst_d0_d0_d5_d1 _lh_one_way_unify1_Fun_1_8) _lh_one_way_unify1_Fun_1_9) _lh_one_way_unify1_arg3_1_2)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d2 _lh_one_way_unify1_arg1_1_1_8 _lh_one_way_unify1_arg2_3_8 _lh_one_way_unify1_arg3_1_1_8 =
  (match _lh_one_way_unify1_arg2_3_8 with
    | `Var(_lh_one_way_unify1_Var_0_1_1_8) -> 
      (let rec _lh_matchIdent_2_8_0 = ((find_d2_d0_d5_d2 _lh_one_way_unify1_Var_0_1_1_8) _lh_one_way_unify1_arg3_1_1_8) in
        (((_lh_matchIdent_2_8_0 _lh_one_way_unify1_arg1_1_1_8) _lh_one_way_unify1_arg3_1_1_8) _lh_one_way_unify1_Var_0_1_1_8))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_1_8 with
        | `Fun(_lh_one_way_unify1_Fun_0_7_6, _lh_one_way_unify1_Fun_1_7_6, _lh_one_way_unify1_Fun_2_7_6) -> 
          (match _lh_one_way_unify1_arg2_3_8 with
            | `Fun(_lh_one_way_unify1_Fun_0_7_7, _lh_one_way_unify1_Fun_1_7_7, _lh_one_way_unify1_Fun_2_7_7) -> 
              (if (_lh_one_way_unify1_Fun_0_7_6 = _lh_one_way_unify1_Fun_0_7_7) then
                (((one_way_unify1_lst_d0_d0_d5_d2 _lh_one_way_unify1_Fun_1_7_6) _lh_one_way_unify1_Fun_1_7_7) _lh_one_way_unify1_arg3_1_1_8)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d3 _lh_one_way_unify1_arg1_7_4 _lh_one_way_unify1_arg2_2_0 _lh_one_way_unify1_arg3_7_4 =
  (match _lh_one_way_unify1_arg2_2_0 with
    | `Var(_lh_one_way_unify1_Var_0_7_4) -> 
      (let rec _lh_matchIdent_1_8_1 = ((find_d2_d0_d5_d3 _lh_one_way_unify1_Var_0_7_4) _lh_one_way_unify1_arg3_7_4) in
        (((_lh_matchIdent_1_8_1 _lh_one_way_unify1_arg1_7_4) _lh_one_way_unify1_arg3_7_4) _lh_one_way_unify1_Var_0_7_4))
    | _ -> 
      (match _lh_one_way_unify1_arg1_7_4 with
        | `Fun(_lh_one_way_unify1_Fun_0_4_0, _lh_one_way_unify1_Fun_1_4_0, _lh_one_way_unify1_Fun_2_4_0) -> 
          (match _lh_one_way_unify1_arg2_2_0 with
            | `Fun(_lh_one_way_unify1_Fun_0_4_1, _lh_one_way_unify1_Fun_1_4_1, _lh_one_way_unify1_Fun_2_4_1) -> 
              (if (_lh_one_way_unify1_Fun_0_4_0 = _lh_one_way_unify1_Fun_0_4_1) then
                (((one_way_unify1_lst_d0_d0_d5_d3 _lh_one_way_unify1_Fun_1_4_0) _lh_one_way_unify1_Fun_1_4_1) _lh_one_way_unify1_arg3_7_4)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d4 _lh_one_way_unify1_arg1_2_8 _lh_one_way_unify1_arg2_1_0 _lh_one_way_unify1_arg3_2_8 =
  (match _lh_one_way_unify1_arg2_1_0 with
    | `Var(_lh_one_way_unify1_Var_0_2_8) -> 
      (let rec _lh_matchIdent_1_1_7 = ((find_d2_d0_d5_d4 _lh_one_way_unify1_Var_0_2_8) _lh_one_way_unify1_arg3_2_8) in
        (((_lh_matchIdent_1_1_7 _lh_one_way_unify1_arg1_2_8) _lh_one_way_unify1_arg3_2_8) _lh_one_way_unify1_Var_0_2_8))
    | _ -> 
      (match _lh_one_way_unify1_arg1_2_8 with
        | `Fun(_lh_one_way_unify1_Fun_0_2_0, _lh_one_way_unify1_Fun_1_2_0, _lh_one_way_unify1_Fun_2_2_0) -> 
          (match _lh_one_way_unify1_arg2_1_0 with
            | `Fun(_lh_one_way_unify1_Fun_0_2_1, _lh_one_way_unify1_Fun_1_2_1, _lh_one_way_unify1_Fun_2_2_1) -> 
              (if (_lh_one_way_unify1_Fun_0_2_0 = _lh_one_way_unify1_Fun_0_2_1) then
                (((one_way_unify1_lst_d0_d0_d5_d4 _lh_one_way_unify1_Fun_1_2_0) _lh_one_way_unify1_Fun_1_2_1) _lh_one_way_unify1_arg3_2_8)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d5 _lh_one_way_unify1_arg1_4_0 _lh_one_way_unify1_arg2_1_4 _lh_one_way_unify1_arg3_4_0 =
  (match _lh_one_way_unify1_arg2_1_4 with
    | `Var(_lh_one_way_unify1_Var_0_4_0) -> 
      (let rec _lh_matchIdent_1_3_4 = ((find_d2_d0_d5_d5 _lh_one_way_unify1_Var_0_4_0) _lh_one_way_unify1_arg3_4_0) in
        (((_lh_matchIdent_1_3_4 _lh_one_way_unify1_arg1_4_0) _lh_one_way_unify1_arg3_4_0) _lh_one_way_unify1_Var_0_4_0))
    | _ -> 
      (match _lh_one_way_unify1_arg1_4_0 with
        | `Fun(_lh_one_way_unify1_Fun_0_2_8, _lh_one_way_unify1_Fun_1_2_8, _lh_one_way_unify1_Fun_2_2_8) -> 
          (match _lh_one_way_unify1_arg2_1_4 with
            | `Fun(_lh_one_way_unify1_Fun_0_2_9, _lh_one_way_unify1_Fun_1_2_9, _lh_one_way_unify1_Fun_2_2_9) -> 
              (if (_lh_one_way_unify1_Fun_0_2_8 = _lh_one_way_unify1_Fun_0_2_9) then
                (((one_way_unify1_lst_d0_d0_d5_d5 _lh_one_way_unify1_Fun_1_2_8) _lh_one_way_unify1_Fun_1_2_9) _lh_one_way_unify1_arg3_4_0)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d6 _lh_one_way_unify1_arg1_6_2 _lh_one_way_unify1_arg2_1_8 _lh_one_way_unify1_arg3_6_2 =
  (match _lh_one_way_unify1_arg2_1_8 with
    | `Var(_lh_one_way_unify1_Var_0_6_2) -> 
      (let rec _lh_matchIdent_1_5_3 = ((find_d2_d0_d5_d6 _lh_one_way_unify1_Var_0_6_2) _lh_one_way_unify1_arg3_6_2) in
        (((_lh_matchIdent_1_5_3 _lh_one_way_unify1_arg1_6_2) _lh_one_way_unify1_arg3_6_2) _lh_one_way_unify1_Var_0_6_2))
    | _ -> 
      (match _lh_one_way_unify1_arg1_6_2 with
        | `Fun(_lh_one_way_unify1_Fun_0_3_6, _lh_one_way_unify1_Fun_1_3_6, _lh_one_way_unify1_Fun_2_3_6) -> 
          (match _lh_one_way_unify1_arg2_1_8 with
            | `Fun(_lh_one_way_unify1_Fun_0_3_7, _lh_one_way_unify1_Fun_1_3_7, _lh_one_way_unify1_Fun_2_3_7) -> 
              (if (_lh_one_way_unify1_Fun_0_3_6 = _lh_one_way_unify1_Fun_0_3_7) then
                (((one_way_unify1_lst_d0_d0_d5_d6 _lh_one_way_unify1_Fun_1_3_6) _lh_one_way_unify1_Fun_1_3_7) _lh_one_way_unify1_arg3_6_2)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d7 _lh_one_way_unify1_arg1_3_0 _lh_one_way_unify1_arg2_1_2 _lh_one_way_unify1_arg3_3_0 =
  (match _lh_one_way_unify1_arg2_1_2 with
    | `Var(_lh_one_way_unify1_Var_0_3_0) -> 
      (let rec _lh_matchIdent_1_2_0 = ((find_d2_d0_d5_d7 _lh_one_way_unify1_Var_0_3_0) _lh_one_way_unify1_arg3_3_0) in
        (((_lh_matchIdent_1_2_0 _lh_one_way_unify1_arg1_3_0) _lh_one_way_unify1_arg3_3_0) _lh_one_way_unify1_Var_0_3_0))
    | _ -> 
      (match _lh_one_way_unify1_arg1_3_0 with
        | `Fun(_lh_one_way_unify1_Fun_0_2_4, _lh_one_way_unify1_Fun_1_2_4, _lh_one_way_unify1_Fun_2_2_4) -> 
          (match _lh_one_way_unify1_arg2_1_2 with
            | `Fun(_lh_one_way_unify1_Fun_0_2_5, _lh_one_way_unify1_Fun_1_2_5, _lh_one_way_unify1_Fun_2_2_5) -> 
              (if (_lh_one_way_unify1_Fun_0_2_4 = _lh_one_way_unify1_Fun_0_2_5) then
                (((one_way_unify1_lst_d0_d0_d5_d7 _lh_one_way_unify1_Fun_1_2_4) _lh_one_way_unify1_Fun_1_2_5) _lh_one_way_unify1_arg3_3_0)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d8 _lh_one_way_unify1_arg1_1_5_1 _lh_one_way_unify1_arg2_4_9 _lh_one_way_unify1_arg3_1_5_1 =
  (match _lh_one_way_unify1_arg2_4_9 with
    | `Var(_lh_one_way_unify1_Var_0_1_5_1) -> 
      (let rec _lh_matchIdent_3_6_7 = ((find_d2_d0_d5_d8 _lh_one_way_unify1_Var_0_1_5_1) _lh_one_way_unify1_arg3_1_5_1) in
        (((_lh_matchIdent_3_6_7 _lh_one_way_unify1_arg1_1_5_1) _lh_one_way_unify1_arg3_1_5_1) _lh_one_way_unify1_Var_0_1_5_1))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_5_1 with
        | `Fun(_lh_one_way_unify1_Fun_0_9_8, _lh_one_way_unify1_Fun_1_9_8, _lh_one_way_unify1_Fun_2_9_8) -> 
          (match _lh_one_way_unify1_arg2_4_9 with
            | `Fun(_lh_one_way_unify1_Fun_0_9_9, _lh_one_way_unify1_Fun_1_9_9, _lh_one_way_unify1_Fun_2_9_9) -> 
              (if (_lh_one_way_unify1_Fun_0_9_8 = _lh_one_way_unify1_Fun_0_9_9) then
                (((one_way_unify1_lst_d0_d0_d5_d8 _lh_one_way_unify1_Fun_1_9_8) _lh_one_way_unify1_Fun_1_9_9) _lh_one_way_unify1_arg3_1_5_1)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d5_d9 _lh_one_way_unify1_arg1_1_5_0 _lh_one_way_unify1_arg2_4_8 _lh_one_way_unify1_arg3_1_5_0 =
  (match _lh_one_way_unify1_arg2_4_8 with
    | `Var(_lh_one_way_unify1_Var_0_1_5_0) -> 
      (let rec _lh_matchIdent_3_6_6 = ((find_d2_d0_d5_d9 _lh_one_way_unify1_Var_0_1_5_0) _lh_one_way_unify1_arg3_1_5_0) in
        (((_lh_matchIdent_3_6_6 _lh_one_way_unify1_arg1_1_5_0) _lh_one_way_unify1_arg3_1_5_0) _lh_one_way_unify1_Var_0_1_5_0))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_5_0 with
        | `Fun(_lh_one_way_unify1_Fun_0_9_6, _lh_one_way_unify1_Fun_1_9_6, _lh_one_way_unify1_Fun_2_9_6) -> 
          (match _lh_one_way_unify1_arg2_4_8 with
            | `Fun(_lh_one_way_unify1_Fun_0_9_7, _lh_one_way_unify1_Fun_1_9_7, _lh_one_way_unify1_Fun_2_9_7) -> 
              (if (_lh_one_way_unify1_Fun_0_9_6 = _lh_one_way_unify1_Fun_0_9_7) then
                (((one_way_unify1_lst_d0_d0_d5_d9 _lh_one_way_unify1_Fun_1_9_6) _lh_one_way_unify1_Fun_1_9_7) _lh_one_way_unify1_arg3_1_5_0)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d6 _lh_one_way_unify1_arg1_8_3 _lh_one_way_unify1_arg2_2_5 _lh_one_way_unify1_arg3_8_3 =
  (match _lh_one_way_unify1_arg2_2_5 with
    | `Var(_lh_one_way_unify1_Var_0_8_3) -> 
      (let rec _lh_matchIdent_2_1_4 = ((find_d2_d0_d6 _lh_one_way_unify1_Var_0_8_3) _lh_one_way_unify1_arg3_8_3) in
        (((_lh_matchIdent_2_1_4 _lh_one_way_unify1_arg1_8_3) _lh_one_way_unify1_arg3_8_3) _lh_one_way_unify1_Var_0_8_3))
    | _ -> 
      (match _lh_one_way_unify1_arg1_8_3 with
        | `Fun(_lh_one_way_unify1_Fun_0_5_0, _lh_one_way_unify1_Fun_1_5_0, _lh_one_way_unify1_Fun_2_5_0) -> 
          (match _lh_one_way_unify1_arg2_2_5 with
            | `Fun(_lh_one_way_unify1_Fun_0_5_1, _lh_one_way_unify1_Fun_1_5_1, _lh_one_way_unify1_Fun_2_5_1) -> 
              (if (_lh_one_way_unify1_Fun_0_5_0 = _lh_one_way_unify1_Fun_0_5_1) then
                (((one_way_unify1_lst_d0_d0_d6 _lh_one_way_unify1_Fun_1_5_0) _lh_one_way_unify1_Fun_1_5_1) _lh_one_way_unify1_arg3_8_3)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d6_d0 _lh_one_way_unify1_arg1_1_1_9 _lh_one_way_unify1_arg2_3_9 _lh_one_way_unify1_arg3_1_1_9 =
  (match _lh_one_way_unify1_arg2_3_9 with
    | `Var(_lh_one_way_unify1_Var_0_1_1_9) -> 
      (let rec _lh_matchIdent_2_8_2 = ((find_d2_d0_d6_d0 _lh_one_way_unify1_Var_0_1_1_9) _lh_one_way_unify1_arg3_1_1_9) in
        (((_lh_matchIdent_2_8_2 _lh_one_way_unify1_arg1_1_1_9) _lh_one_way_unify1_arg3_1_1_9) _lh_one_way_unify1_Var_0_1_1_9))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_1_9 with
        | `Fun(_lh_one_way_unify1_Fun_0_7_8, _lh_one_way_unify1_Fun_1_7_8, _lh_one_way_unify1_Fun_2_7_8) -> 
          (match _lh_one_way_unify1_arg2_3_9 with
            | `Fun(_lh_one_way_unify1_Fun_0_7_9, _lh_one_way_unify1_Fun_1_7_9, _lh_one_way_unify1_Fun_2_7_9) -> 
              (if (_lh_one_way_unify1_Fun_0_7_8 = _lh_one_way_unify1_Fun_0_7_9) then
                (((one_way_unify1_lst_d0_d0_d6_d0 _lh_one_way_unify1_Fun_1_7_8) _lh_one_way_unify1_Fun_1_7_9) _lh_one_way_unify1_arg3_1_1_9)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d7 _lh_one_way_unify1_arg1_1_4_6 _lh_one_way_unify1_arg2_4_6 _lh_one_way_unify1_arg3_1_4_6 =
  (match _lh_one_way_unify1_arg2_4_6 with
    | `Var(_lh_one_way_unify1_Var_0_1_4_6) -> 
      (let rec _lh_matchIdent_3_5_7 = ((find_d2_d0_d7 _lh_one_way_unify1_Var_0_1_4_6) _lh_one_way_unify1_arg3_1_4_6) in
        (((_lh_matchIdent_3_5_7 _lh_one_way_unify1_arg1_1_4_6) _lh_one_way_unify1_arg3_1_4_6) _lh_one_way_unify1_Var_0_1_4_6))
    | _ -> 
      (match _lh_one_way_unify1_arg1_1_4_6 with
        | `Fun(_lh_one_way_unify1_Fun_0_9_2, _lh_one_way_unify1_Fun_1_9_2, _lh_one_way_unify1_Fun_2_9_2) -> 
          (match _lh_one_way_unify1_arg2_4_6 with
            | `Fun(_lh_one_way_unify1_Fun_0_9_3, _lh_one_way_unify1_Fun_1_9_3, _lh_one_way_unify1_Fun_2_9_3) -> 
              (if (_lh_one_way_unify1_Fun_0_9_2 = _lh_one_way_unify1_Fun_0_9_3) then
                (((one_way_unify1_lst_d0_d0_d7 _lh_one_way_unify1_Fun_1_9_2) _lh_one_way_unify1_Fun_1_9_3) _lh_one_way_unify1_arg3_1_4_6)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d8 _lh_one_way_unify1_arg1_9_6 _lh_one_way_unify1_arg2_3_2 _lh_one_way_unify1_arg3_9_6 =
  (match _lh_one_way_unify1_arg2_3_2 with
    | `Var(_lh_one_way_unify1_Var_0_9_6) -> 
      (let rec _lh_matchIdent_2_4_9 = ((find_d2_d0_d8 _lh_one_way_unify1_Var_0_9_6) _lh_one_way_unify1_arg3_9_6) in
        (((_lh_matchIdent_2_4_9 _lh_one_way_unify1_arg1_9_6) _lh_one_way_unify1_arg3_9_6) _lh_one_way_unify1_Var_0_9_6))
    | _ -> 
      (match _lh_one_way_unify1_arg1_9_6 with
        | `Fun(_lh_one_way_unify1_Fun_0_6_4, _lh_one_way_unify1_Fun_1_6_4, _lh_one_way_unify1_Fun_2_6_4) -> 
          (match _lh_one_way_unify1_arg2_3_2 with
            | `Fun(_lh_one_way_unify1_Fun_0_6_5, _lh_one_way_unify1_Fun_1_6_5, _lh_one_way_unify1_Fun_2_6_5) -> 
              (if (_lh_one_way_unify1_Fun_0_6_4 = _lh_one_way_unify1_Fun_0_6_5) then
                (((one_way_unify1_lst_d0_d0_d8 _lh_one_way_unify1_Fun_1_6_4) _lh_one_way_unify1_Fun_1_6_5) _lh_one_way_unify1_arg3_9_6)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify1_d0_d0_d9 _lh_one_way_unify1_arg1_8_2 _lh_one_way_unify1_arg2_2_4 _lh_one_way_unify1_arg3_8_2 =
  (match _lh_one_way_unify1_arg2_2_4 with
    | `Var(_lh_one_way_unify1_Var_0_8_2) -> 
      (let rec _lh_matchIdent_2_0_9 = ((find_d2_d0_d9 _lh_one_way_unify1_Var_0_8_2) _lh_one_way_unify1_arg3_8_2) in
        (((_lh_matchIdent_2_0_9 _lh_one_way_unify1_arg1_8_2) _lh_one_way_unify1_arg3_8_2) _lh_one_way_unify1_Var_0_8_2))
    | _ -> 
      (match _lh_one_way_unify1_arg1_8_2 with
        | `Fun(_lh_one_way_unify1_Fun_0_4_8, _lh_one_way_unify1_Fun_1_4_8, _lh_one_way_unify1_Fun_2_4_8) -> 
          (match _lh_one_way_unify1_arg2_2_4 with
            | `Fun(_lh_one_way_unify1_Fun_0_4_9, _lh_one_way_unify1_Fun_1_4_9, _lh_one_way_unify1_Fun_2_4_9) -> 
              (if (_lh_one_way_unify1_Fun_0_4_8 = _lh_one_way_unify1_Fun_0_4_9) then
                (((one_way_unify1_lst_d0_d0_d9 _lh_one_way_unify1_Fun_1_4_8) _lh_one_way_unify1_Fun_1_4_9) _lh_one_way_unify1_arg3_8_2)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify_d0_d0_d0 _lh_one_way_unify_arg1_4_5 _lh_one_way_unify_arg2_4_5 =
  (((one_way_unify1_d0_d0_d0 _lh_one_way_unify_arg1_4_5) _lh_one_way_unify_arg2_4_5) (`LH_N))
and one_way_unify_d0_d0_d1 _lh_one_way_unify_arg1_1_6 _lh_one_way_unify_arg2_1_6 =
  (((one_way_unify1_d0_d0_d1 _lh_one_way_unify_arg1_1_6) _lh_one_way_unify_arg2_1_6) (`LH_N))
and one_way_unify_d0_d0_d1_d0 _lh_one_way_unify_arg1_4_0 _lh_one_way_unify_arg2_4_0 =
  (((one_way_unify1_d0_d0_d1_d0 _lh_one_way_unify_arg1_4_0) _lh_one_way_unify_arg2_4_0) (`LH_N))
and one_way_unify_d0_d0_d1_d1 _lh_one_way_unify_arg1_5_0 _lh_one_way_unify_arg2_5_0 =
  (((one_way_unify1_d0_d0_d1_d1 _lh_one_way_unify_arg1_5_0) _lh_one_way_unify_arg2_5_0) (`LH_N))
and one_way_unify_d0_d0_d1_d2 _lh_one_way_unify_arg1_1_7 _lh_one_way_unify_arg2_1_7 =
  (((one_way_unify1_d0_d0_d1_d2 _lh_one_way_unify_arg1_1_7) _lh_one_way_unify_arg2_1_7) (`LH_N))
and one_way_unify_d0_d0_d1_d3 _lh_one_way_unify_arg1_6 _lh_one_way_unify_arg2_6 =
  (((one_way_unify1_d0_d0_d1_d3 _lh_one_way_unify_arg1_6) _lh_one_way_unify_arg2_6) (`LH_N))
and one_way_unify_d0_d0_d1_d4 _lh_one_way_unify_arg1_2_6 _lh_one_way_unify_arg2_2_6 =
  (((one_way_unify1_d0_d0_d1_d4 _lh_one_way_unify_arg1_2_6) _lh_one_way_unify_arg2_2_6) (`LH_N))
and one_way_unify_d0_d0_d1_d5 _lh_one_way_unify_arg1_1_4 _lh_one_way_unify_arg2_1_4 =
  (((one_way_unify1_d0_d0_d1_d5 _lh_one_way_unify_arg1_1_4) _lh_one_way_unify_arg2_1_4) (`LH_N))
and one_way_unify_d0_d0_d1_d6 _lh_one_way_unify_arg1_1 _lh_one_way_unify_arg2_1 =
  (((one_way_unify1_d0_d0_d1_d6 _lh_one_way_unify_arg1_1) _lh_one_way_unify_arg2_1) (`LH_N))
and one_way_unify_d0_d0_d1_d7 _lh_one_way_unify_arg1_4_2 _lh_one_way_unify_arg2_4_2 =
  (((one_way_unify1_d0_d0_d1_d7 _lh_one_way_unify_arg1_4_2) _lh_one_way_unify_arg2_4_2) (`LH_N))
and one_way_unify_d0_d0_d1_d8 _lh_one_way_unify_arg1_2_8 _lh_one_way_unify_arg2_2_8 =
  (((one_way_unify1_d0_d0_d1_d8 _lh_one_way_unify_arg1_2_8) _lh_one_way_unify_arg2_2_8) (`LH_N))
and one_way_unify_d0_d0_d1_d9 _lh_one_way_unify_arg1_4_6 _lh_one_way_unify_arg2_4_6 =
  (((one_way_unify1_d0_d0_d1_d9 _lh_one_way_unify_arg1_4_6) _lh_one_way_unify_arg2_4_6) (`LH_N))
and one_way_unify_d0_d0_d2 _lh_one_way_unify_arg1_2_1 _lh_one_way_unify_arg2_2_1 =
  (((one_way_unify1_d0_d0_d2 _lh_one_way_unify_arg1_2_1) _lh_one_way_unify_arg2_2_1) (`LH_N))
and one_way_unify_d0_d0_d2_d0 _lh_one_way_unify_arg1_5_8 _lh_one_way_unify_arg2_5_8 =
  (((one_way_unify1_d0_d0_d2_d0 _lh_one_way_unify_arg1_5_8) _lh_one_way_unify_arg2_5_8) (`LH_N))
and one_way_unify_d0_d0_d2_d1 _lh_one_way_unify_arg1_2_5 _lh_one_way_unify_arg2_2_5 =
  (((one_way_unify1_d0_d0_d2_d1 _lh_one_way_unify_arg1_2_5) _lh_one_way_unify_arg2_2_5) (`LH_N))
and one_way_unify_d0_d0_d2_d2 _lh_one_way_unify_arg1_1_2 _lh_one_way_unify_arg2_1_2 =
  (((one_way_unify1_d0_d0_d2_d2 _lh_one_way_unify_arg1_1_2) _lh_one_way_unify_arg2_1_2) (`LH_N))
and one_way_unify_d0_d0_d2_d3 _lh_one_way_unify_arg1_4_9 _lh_one_way_unify_arg2_4_9 =
  (((one_way_unify1_d0_d0_d2_d3 _lh_one_way_unify_arg1_4_9) _lh_one_way_unify_arg2_4_9) (`LH_N))
and one_way_unify_d0_d0_d2_d4 _lh_one_way_unify_arg1_4_3 _lh_one_way_unify_arg2_4_3 =
  (((one_way_unify1_d0_d0_d2_d4 _lh_one_way_unify_arg1_4_3) _lh_one_way_unify_arg2_4_3) (`LH_N))
and one_way_unify_d0_d0_d2_d5 _lh_one_way_unify_arg1_2_2 _lh_one_way_unify_arg2_2_2 =
  (((one_way_unify1_d0_d0_d2_d5 _lh_one_way_unify_arg1_2_2) _lh_one_way_unify_arg2_2_2) (`LH_N))
and one_way_unify_d0_d0_d2_d6 _lh_one_way_unify_arg1_3_9 _lh_one_way_unify_arg2_3_9 =
  (((one_way_unify1_d0_d0_d2_d6 _lh_one_way_unify_arg1_3_9) _lh_one_way_unify_arg2_3_9) (`LH_N))
and one_way_unify_d0_d0_d2_d7 _lh_one_way_unify_arg1_6_1 _lh_one_way_unify_arg2_6_1 =
  (((one_way_unify1_d0_d0_d2_d7 _lh_one_way_unify_arg1_6_1) _lh_one_way_unify_arg2_6_1) (`LH_N))
and one_way_unify_d0_d0_d2_d8 _lh_one_way_unify_arg1_3_3 _lh_one_way_unify_arg2_3_3 =
  (((one_way_unify1_d0_d0_d2_d8 _lh_one_way_unify_arg1_3_3) _lh_one_way_unify_arg2_3_3) (`LH_N))
and one_way_unify_d0_d0_d2_d9 _lh_one_way_unify_arg1_3_6 _lh_one_way_unify_arg2_3_6 =
  (((one_way_unify1_d0_d0_d2_d9 _lh_one_way_unify_arg1_3_6) _lh_one_way_unify_arg2_3_6) (`LH_N))
and one_way_unify_d0_d0_d3 _lh_one_way_unify_arg1_3_4 _lh_one_way_unify_arg2_3_4 =
  (((one_way_unify1_d0_d0_d3 _lh_one_way_unify_arg1_3_4) _lh_one_way_unify_arg2_3_4) (`LH_N))
and one_way_unify_d0_d0_d3_d0 _lh_one_way_unify_arg1_5_5 _lh_one_way_unify_arg2_5_5 =
  (((one_way_unify1_d0_d0_d3_d0 _lh_one_way_unify_arg1_5_5) _lh_one_way_unify_arg2_5_5) (`LH_N))
and one_way_unify_d0_d0_d3_d1 _lh_one_way_unify_arg1_5_3 _lh_one_way_unify_arg2_5_3 =
  (((one_way_unify1_d0_d0_d3_d1 _lh_one_way_unify_arg1_5_3) _lh_one_way_unify_arg2_5_3) (`LH_N))
and one_way_unify_d0_d0_d3_d2 _lh_one_way_unify_arg1_3_2 _lh_one_way_unify_arg2_3_2 =
  (((one_way_unify1_d0_d0_d3_d2 _lh_one_way_unify_arg1_3_2) _lh_one_way_unify_arg2_3_2) (`LH_N))
and one_way_unify_d0_d0_d3_d3 _lh_one_way_unify_arg1_6_0 _lh_one_way_unify_arg2_6_0 =
  (((one_way_unify1_d0_d0_d3_d3 _lh_one_way_unify_arg1_6_0) _lh_one_way_unify_arg2_6_0) (`LH_N))
and one_way_unify_d0_d0_d3_d4 _lh_one_way_unify_arg1_3_8 _lh_one_way_unify_arg2_3_8 =
  (((one_way_unify1_d0_d0_d3_d4 _lh_one_way_unify_arg1_3_8) _lh_one_way_unify_arg2_3_8) (`LH_N))
and one_way_unify_d0_d0_d3_d5 _lh_one_way_unify_arg1_2 _lh_one_way_unify_arg2_2 =
  (((one_way_unify1_d0_d0_d3_d5 _lh_one_way_unify_arg1_2) _lh_one_way_unify_arg2_2) (`LH_N))
and one_way_unify_d0_d0_d3_d6 _lh_one_way_unify_arg1_3_0 _lh_one_way_unify_arg2_3_0 =
  (((one_way_unify1_d0_d0_d3_d6 _lh_one_way_unify_arg1_3_0) _lh_one_way_unify_arg2_3_0) (`LH_N))
and one_way_unify_d0_d0_d3_d7 _lh_one_way_unify_arg1_3 _lh_one_way_unify_arg2_3 =
  (((one_way_unify1_d0_d0_d3_d7 _lh_one_way_unify_arg1_3) _lh_one_way_unify_arg2_3) (`LH_N))
and one_way_unify_d0_d0_d3_d8 _lh_one_way_unify_arg1_5_1 _lh_one_way_unify_arg2_5_1 =
  (((one_way_unify1_d0_d0_d3_d8 _lh_one_way_unify_arg1_5_1) _lh_one_way_unify_arg2_5_1) (`LH_N))
and one_way_unify_d0_d0_d3_d9 _lh_one_way_unify_arg1_2_3 _lh_one_way_unify_arg2_2_3 =
  (((one_way_unify1_d0_d0_d3_d9 _lh_one_way_unify_arg1_2_3) _lh_one_way_unify_arg2_2_3) (`LH_N))
and one_way_unify_d0_d0_d4 _lh_one_way_unify_arg1_3_1 _lh_one_way_unify_arg2_3_1 =
  (((one_way_unify1_d0_d0_d4 _lh_one_way_unify_arg1_3_1) _lh_one_way_unify_arg2_3_1) (`LH_N))
and one_way_unify_d0_d0_d4_d0 _lh_one_way_unify_arg1_1_1 _lh_one_way_unify_arg2_1_1 =
  (((one_way_unify1_d0_d0_d4_d0 _lh_one_way_unify_arg1_1_1) _lh_one_way_unify_arg2_1_1) (`LH_N))
and one_way_unify_d0_d0_d4_d1 _lh_one_way_unify_arg1_5_4 _lh_one_way_unify_arg2_5_4 =
  (((one_way_unify1_d0_d0_d4_d1 _lh_one_way_unify_arg1_5_4) _lh_one_way_unify_arg2_5_4) (`LH_N))
and one_way_unify_d0_d0_d4_d2 _lh_one_way_unify_arg1_2_0 _lh_one_way_unify_arg2_2_0 =
  (((one_way_unify1_d0_d0_d4_d2 _lh_one_way_unify_arg1_2_0) _lh_one_way_unify_arg2_2_0) (`LH_N))
and one_way_unify_d0_d0_d4_d3 _lh_one_way_unify_arg1_4_8 _lh_one_way_unify_arg2_4_8 =
  (((one_way_unify1_d0_d0_d4_d3 _lh_one_way_unify_arg1_4_8) _lh_one_way_unify_arg2_4_8) (`LH_N))
and one_way_unify_d0_d0_d4_d4 _lh_one_way_unify_arg1_4_4 _lh_one_way_unify_arg2_4_4 =
  (((one_way_unify1_d0_d0_d4_d4 _lh_one_way_unify_arg1_4_4) _lh_one_way_unify_arg2_4_4) (`LH_N))
and one_way_unify_d0_d0_d4_d5 _lh_one_way_unify_arg1_5_9 _lh_one_way_unify_arg2_5_9 =
  (((one_way_unify1_d0_d0_d4_d5 _lh_one_way_unify_arg1_5_9) _lh_one_way_unify_arg2_5_9) (`LH_N))
and one_way_unify_d0_d0_d4_d6 _lh_one_way_unify_arg1_1_8 _lh_one_way_unify_arg2_1_8 =
  (((one_way_unify1_d0_d0_d4_d6 _lh_one_way_unify_arg1_1_8) _lh_one_way_unify_arg2_1_8) (`LH_N))
and one_way_unify_d0_d0_d4_d7 _lh_one_way_unify_arg1_8 _lh_one_way_unify_arg2_8 =
  (((one_way_unify1_d0_d0_d4_d7 _lh_one_way_unify_arg1_8) _lh_one_way_unify_arg2_8) (`LH_N))
and one_way_unify_d0_d0_d4_d8 _lh_one_way_unify_arg1_1_9 _lh_one_way_unify_arg2_1_9 =
  (((one_way_unify1_d0_d0_d4_d8 _lh_one_way_unify_arg1_1_9) _lh_one_way_unify_arg2_1_9) (`LH_N))
and one_way_unify_d0_d0_d4_d9 _lh_one_way_unify_arg1_3_5 _lh_one_way_unify_arg2_3_5 =
  (((one_way_unify1_d0_d0_d4_d9 _lh_one_way_unify_arg1_3_5) _lh_one_way_unify_arg2_3_5) (`LH_N))
and one_way_unify_d0_d0_d5 _lh_one_way_unify_arg1_4 _lh_one_way_unify_arg2_4 =
  (((one_way_unify1_d0_d0_d5 _lh_one_way_unify_arg1_4) _lh_one_way_unify_arg2_4) (`LH_N))
and one_way_unify_d0_d0_d5_d0 _lh_one_way_unify_arg1_4_1 _lh_one_way_unify_arg2_4_1 =
  (((one_way_unify1_d0_d0_d5_d0 _lh_one_way_unify_arg1_4_1) _lh_one_way_unify_arg2_4_1) (`LH_N))
and one_way_unify_d0_d0_d5_d1 _lh_one_way_unify_arg1_2_7 _lh_one_way_unify_arg2_2_7 =
  (((one_way_unify1_d0_d0_d5_d1 _lh_one_way_unify_arg1_2_7) _lh_one_way_unify_arg2_2_7) (`LH_N))
and one_way_unify_d0_d0_d5_d2 _lh_one_way_unify_arg1_5_7 _lh_one_way_unify_arg2_5_7 =
  (((one_way_unify1_d0_d0_d5_d2 _lh_one_way_unify_arg1_5_7) _lh_one_way_unify_arg2_5_7) (`LH_N))
and one_way_unify_d0_d0_d5_d3 _lh_one_way_unify_arg1_1_3 _lh_one_way_unify_arg2_1_3 =
  (((one_way_unify1_d0_d0_d5_d3 _lh_one_way_unify_arg1_1_3) _lh_one_way_unify_arg2_1_3) (`LH_N))
and one_way_unify_d0_d0_d5_d4 _lh_one_way_unify_arg1_5_6 _lh_one_way_unify_arg2_5_6 =
  (((one_way_unify1_d0_d0_d5_d4 _lh_one_way_unify_arg1_5_6) _lh_one_way_unify_arg2_5_6) (`LH_N))
and one_way_unify_d0_d0_d5_d5 _lh_one_way_unify_arg1_9 _lh_one_way_unify_arg2_9 =
  (((one_way_unify1_d0_d0_d5_d5 _lh_one_way_unify_arg1_9) _lh_one_way_unify_arg2_9) (`LH_N))
and one_way_unify_d0_d0_d5_d6 _lh_one_way_unify_arg1_3_7 _lh_one_way_unify_arg2_3_7 =
  (((one_way_unify1_d0_d0_d5_d6 _lh_one_way_unify_arg1_3_7) _lh_one_way_unify_arg2_3_7) (`LH_N))
and one_way_unify_d0_d0_d5_d7 _lh_one_way_unify_arg1_5 _lh_one_way_unify_arg2_5 =
  (((one_way_unify1_d0_d0_d5_d7 _lh_one_way_unify_arg1_5) _lh_one_way_unify_arg2_5) (`LH_N))
and one_way_unify_d0_d0_d5_d8 _lh_one_way_unify_arg1_1_5 _lh_one_way_unify_arg2_1_5 =
  (((one_way_unify1_d0_d0_d5_d8 _lh_one_way_unify_arg1_1_5) _lh_one_way_unify_arg2_1_5) (`LH_N))
and one_way_unify_d0_d0_d5_d9 _lh_one_way_unify_arg1_2_9 _lh_one_way_unify_arg2_2_9 =
  (((one_way_unify1_d0_d0_d5_d9 _lh_one_way_unify_arg1_2_9) _lh_one_way_unify_arg2_2_9) (`LH_N))
and one_way_unify_d0_d0_d6 _lh_one_way_unify_arg1_7 _lh_one_way_unify_arg2_7 =
  (((one_way_unify1_d0_d0_d6 _lh_one_way_unify_arg1_7) _lh_one_way_unify_arg2_7) (`LH_N))
and one_way_unify_d0_d0_d6_d0 _lh_one_way_unify_arg1_2_4 _lh_one_way_unify_arg2_2_4 =
  (((one_way_unify1_d0_d0_d6_d0 _lh_one_way_unify_arg1_2_4) _lh_one_way_unify_arg2_2_4) (`LH_N))
and one_way_unify_d0_d0_d7 _lh_one_way_unify_arg1_5_2 _lh_one_way_unify_arg2_5_2 =
  (((one_way_unify1_d0_d0_d7 _lh_one_way_unify_arg1_5_2) _lh_one_way_unify_arg2_5_2) (`LH_N))
and one_way_unify_d0_d0_d8 _lh_one_way_unify_arg1_4_7 _lh_one_way_unify_arg2_4_7 =
  (((one_way_unify1_d0_d0_d8 _lh_one_way_unify_arg1_4_7) _lh_one_way_unify_arg2_4_7) (`LH_N))
and one_way_unify_d0_d0_d9 _lh_one_way_unify_arg1_1_0 _lh_one_way_unify_arg2_1_0 =
  (((one_way_unify1_d0_d0_d9 _lh_one_way_unify_arg1_1_0) _lh_one_way_unify_arg2_1_0) (`LH_N))
and replicate_d0_d0_d0 _lh_replicate_arg1_1 _lh_replicate_arg2_1 _lh_popOutId_0_0 =
  (if (_lh_replicate_arg1_1 = 0) then
    true
  else
    (let rec _lh_all_LH_C_0_1 = _lh_replicate_arg2_1 in
      (let rec _lh_all_LH_C_1_1 = ((replicate_d0_d0_d0 (_lh_replicate_arg1_1 - 1)) _lh_replicate_arg2_1) in
        (if (_lh_popOutId_0_0 _lh_all_LH_C_0_1) then
          ((all_d0_d0_d1 _lh_popOutId_0_0) _lh_all_LH_C_1_1)
        else
          false))))
and rewrite_with_lemmas_d0_d0_d0 _lh_rewrite_with_lemmas_arg1_3_8 _lh_rewrite_with_lemmas_arg2_3_8 =
  ((rewrite_with_lemmas_helper_d0_d0_d6_d1 _lh_rewrite_with_lemmas_arg1_3_8) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_8))
and rewrite_with_lemmas_d0_d0_d1 _lh_rewrite_with_lemmas_arg1_1_2 _lh_rewrite_with_lemmas_arg2_1_2 =
  ((rewrite_with_lemmas_helper_d0_d0_d6_d2 _lh_rewrite_with_lemmas_arg1_1_2) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_2))
and rewrite_with_lemmas_d0_d0_d1_d0 _lh_rewrite_with_lemmas_arg1_5_7 _lh_rewrite_with_lemmas_arg2_5_7 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d1 _lh_rewrite_with_lemmas_arg1_5_7) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_7))
and rewrite_with_lemmas_d0_d0_d1_d1 _lh_rewrite_with_lemmas_arg1_6_1 _lh_rewrite_with_lemmas_arg2_6_1 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d2 _lh_rewrite_with_lemmas_arg1_6_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_6_1))
and rewrite_with_lemmas_d0_d0_d1_d2 _lh_rewrite_with_lemmas_arg1_3_2 _lh_rewrite_with_lemmas_arg2_3_2 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d3 _lh_rewrite_with_lemmas_arg1_3_2) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_2))
and rewrite_with_lemmas_d0_d0_d1_d3 _lh_rewrite_with_lemmas_arg1_5_6 _lh_rewrite_with_lemmas_arg2_5_6 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d4 _lh_rewrite_with_lemmas_arg1_5_6) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_6))
and rewrite_with_lemmas_d0_d0_d1_d4 _lh_rewrite_with_lemmas_arg1_1_0 _lh_rewrite_with_lemmas_arg2_1_0 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d5 _lh_rewrite_with_lemmas_arg1_1_0) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_0))
and rewrite_with_lemmas_d0_d0_d1_d5 _lh_rewrite_with_lemmas_arg1_2_2 _lh_rewrite_with_lemmas_arg2_2_2 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d6 _lh_rewrite_with_lemmas_arg1_2_2) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_2))
and rewrite_with_lemmas_d0_d0_d1_d6 _lh_rewrite_with_lemmas_arg1_9 _lh_rewrite_with_lemmas_arg2_9 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d7 _lh_rewrite_with_lemmas_arg1_9) (Lazy.force _lh_rewrite_with_lemmas_arg2_9))
and rewrite_with_lemmas_d0_d0_d1_d7 _lh_rewrite_with_lemmas_arg1_4_5 _lh_rewrite_with_lemmas_arg2_4_5 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d8 _lh_rewrite_with_lemmas_arg1_4_5) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_5))
and rewrite_with_lemmas_d0_d0_d1_d8 _lh_rewrite_with_lemmas_arg1_8 _lh_rewrite_with_lemmas_arg2_8 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d9 _lh_rewrite_with_lemmas_arg1_8) (Lazy.force _lh_rewrite_with_lemmas_arg2_8))
and rewrite_with_lemmas_d0_d0_d1_d9 _lh_rewrite_with_lemmas_arg1_5_0 _lh_rewrite_with_lemmas_arg2_5_0 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d0 _lh_rewrite_with_lemmas_arg1_5_0) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_0))
and rewrite_with_lemmas_d0_d0_d2 _lh_rewrite_with_lemmas_arg1_1_5 _lh_rewrite_with_lemmas_arg2_1_5 =
  ((rewrite_with_lemmas_helper_d0_d0_d6_d3 _lh_rewrite_with_lemmas_arg1_1_5) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_5))
and rewrite_with_lemmas_d0_d0_d2_d0 _lh_rewrite_with_lemmas_arg1_2 _lh_rewrite_with_lemmas_arg2_2 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d1 _lh_rewrite_with_lemmas_arg1_2) (Lazy.force _lh_rewrite_with_lemmas_arg2_2))
and rewrite_with_lemmas_d0_d0_d2_d1 _lh_rewrite_with_lemmas_arg1_4_9 _lh_rewrite_with_lemmas_arg2_4_9 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d2 _lh_rewrite_with_lemmas_arg1_4_9) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_9))
and rewrite_with_lemmas_d0_d0_d2_d2 _lh_rewrite_with_lemmas_arg1_4_1 _lh_rewrite_with_lemmas_arg2_4_1 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d3 _lh_rewrite_with_lemmas_arg1_4_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_1))
and rewrite_with_lemmas_d0_d0_d2_d3 _lh_rewrite_with_lemmas_arg1_3 _lh_rewrite_with_lemmas_arg2_3 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d4 _lh_rewrite_with_lemmas_arg1_3) (Lazy.force _lh_rewrite_with_lemmas_arg2_3))
and rewrite_with_lemmas_d0_d0_d2_d4 _lh_rewrite_with_lemmas_arg1_3_3 _lh_rewrite_with_lemmas_arg2_3_3 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d5 _lh_rewrite_with_lemmas_arg1_3_3) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_3))
and rewrite_with_lemmas_d0_d0_d2_d5 _lh_rewrite_with_lemmas_arg1_6 _lh_rewrite_with_lemmas_arg2_6 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d6 _lh_rewrite_with_lemmas_arg1_6) (Lazy.force _lh_rewrite_with_lemmas_arg2_6))
and rewrite_with_lemmas_d0_d0_d2_d6 _lh_rewrite_with_lemmas_arg1_1_8 _lh_rewrite_with_lemmas_arg2_1_8 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d7 _lh_rewrite_with_lemmas_arg1_1_8) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_8))
and rewrite_with_lemmas_d0_d0_d2_d7 _lh_rewrite_with_lemmas_arg1_1_3 _lh_rewrite_with_lemmas_arg2_1_3 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d8 _lh_rewrite_with_lemmas_arg1_1_3) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_3))
and rewrite_with_lemmas_d0_d0_d2_d8 _lh_rewrite_with_lemmas_arg1_3_7 _lh_rewrite_with_lemmas_arg2_3_7 =
  ((rewrite_with_lemmas_helper_d0_d0_d8_d9 _lh_rewrite_with_lemmas_arg1_3_7) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_7))
and rewrite_with_lemmas_d0_d0_d2_d9 _lh_rewrite_with_lemmas_arg1_6_2 _lh_rewrite_with_lemmas_arg2_6_2 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d0 _lh_rewrite_with_lemmas_arg1_6_2) (Lazy.force _lh_rewrite_with_lemmas_arg2_6_2))
and rewrite_with_lemmas_d0_d0_d3 _lh_rewrite_with_lemmas_arg1_6_0 _lh_rewrite_with_lemmas_arg2_6_0 =
  ((rewrite_with_lemmas_helper_d0_d0_d6_d4 _lh_rewrite_with_lemmas_arg1_6_0) (Lazy.force _lh_rewrite_with_lemmas_arg2_6_0))
and rewrite_with_lemmas_d0_d0_d3_d0 _lh_rewrite_with_lemmas_arg1_4 _lh_rewrite_with_lemmas_arg2_4 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d1 _lh_rewrite_with_lemmas_arg1_4) (Lazy.force _lh_rewrite_with_lemmas_arg2_4))
and rewrite_with_lemmas_d0_d0_d3_d1 _lh_rewrite_with_lemmas_arg1_2_4 _lh_rewrite_with_lemmas_arg2_2_4 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d2 _lh_rewrite_with_lemmas_arg1_2_4) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_4))
and rewrite_with_lemmas_d0_d0_d3_d2 _lh_rewrite_with_lemmas_arg1_2_1 _lh_rewrite_with_lemmas_arg2_2_1 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d3 _lh_rewrite_with_lemmas_arg1_2_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_1))
and rewrite_with_lemmas_d0_d0_d3_d3 _lh_rewrite_with_lemmas_arg1_7 _lh_rewrite_with_lemmas_arg2_7 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d4 _lh_rewrite_with_lemmas_arg1_7) (Lazy.force _lh_rewrite_with_lemmas_arg2_7))
and rewrite_with_lemmas_d0_d0_d3_d4 _lh_rewrite_with_lemmas_arg1_2_5 _lh_rewrite_with_lemmas_arg2_2_5 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d5 _lh_rewrite_with_lemmas_arg1_2_5) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_5))
and rewrite_with_lemmas_d0_d0_d3_d5 _lh_rewrite_with_lemmas_arg1_1_1 _lh_rewrite_with_lemmas_arg2_1_1 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d6 _lh_rewrite_with_lemmas_arg1_1_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_1))
and rewrite_with_lemmas_d0_d0_d3_d6 _lh_rewrite_with_lemmas_arg1_1_6 _lh_rewrite_with_lemmas_arg2_1_6 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d7 _lh_rewrite_with_lemmas_arg1_1_6) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_6))
and rewrite_with_lemmas_d0_d0_d3_d7 _lh_rewrite_with_lemmas_arg1_4_0 _lh_rewrite_with_lemmas_arg2_4_0 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d8 _lh_rewrite_with_lemmas_arg1_4_0) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_0))
and rewrite_with_lemmas_d0_d0_d3_d8 _lh_rewrite_with_lemmas_arg1_3_5 _lh_rewrite_with_lemmas_arg2_3_5 =
  ((rewrite_with_lemmas_helper_d0_d0_d9_d9 _lh_rewrite_with_lemmas_arg1_3_5) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_5))
and rewrite_with_lemmas_d0_d0_d3_d9 _lh_rewrite_with_lemmas_arg1_5_5 _lh_rewrite_with_lemmas_arg2_5_5 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d0 _lh_rewrite_with_lemmas_arg1_5_5) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_5))
and rewrite_with_lemmas_d0_d0_d4 _lh_rewrite_with_lemmas_arg1_2_8 _lh_rewrite_with_lemmas_arg2_2_8 =
  ((rewrite_with_lemmas_helper_d0_d0_d6_d5 _lh_rewrite_with_lemmas_arg1_2_8) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_8))
and rewrite_with_lemmas_d0_d0_d4_d0 _lh_rewrite_with_lemmas_arg1_5_4 _lh_rewrite_with_lemmas_arg2_5_4 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d1 _lh_rewrite_with_lemmas_arg1_5_4) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_4))
and rewrite_with_lemmas_d0_d0_d4_d1 _lh_rewrite_with_lemmas_arg1_1_9 _lh_rewrite_with_lemmas_arg2_1_9 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d2 _lh_rewrite_with_lemmas_arg1_1_9) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_9))
and rewrite_with_lemmas_d0_d0_d4_d2 _lh_rewrite_with_lemmas_arg1_2_6 _lh_rewrite_with_lemmas_arg2_2_6 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d3 _lh_rewrite_with_lemmas_arg1_2_6) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_6))
and rewrite_with_lemmas_d0_d0_d4_d3 _lh_rewrite_with_lemmas_arg1_2_3 _lh_rewrite_with_lemmas_arg2_2_3 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d4 _lh_rewrite_with_lemmas_arg1_2_3) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_3))
and rewrite_with_lemmas_d0_d0_d4_d4 _lh_rewrite_with_lemmas_arg1_5 _lh_rewrite_with_lemmas_arg2_5 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d5 _lh_rewrite_with_lemmas_arg1_5) (Lazy.force _lh_rewrite_with_lemmas_arg2_5))
and rewrite_with_lemmas_d0_d0_d4_d5 _lh_rewrite_with_lemmas_arg1_3_4 _lh_rewrite_with_lemmas_arg2_3_4 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d6 _lh_rewrite_with_lemmas_arg1_3_4) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_4))
and rewrite_with_lemmas_d0_d0_d4_d6 _lh_rewrite_with_lemmas_arg1_4_7 _lh_rewrite_with_lemmas_arg2_4_7 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d7 _lh_rewrite_with_lemmas_arg1_4_7) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_7))
and rewrite_with_lemmas_d0_d0_d4_d7 _lh_rewrite_with_lemmas_arg1_5_3 _lh_rewrite_with_lemmas_arg2_5_3 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d8 _lh_rewrite_with_lemmas_arg1_5_3) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_3))
and rewrite_with_lemmas_d0_d0_d4_d8 _lh_rewrite_with_lemmas_arg1_2_0 _lh_rewrite_with_lemmas_arg2_2_0 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d0_d9 _lh_rewrite_with_lemmas_arg1_2_0) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_0))
and rewrite_with_lemmas_d0_d0_d4_d9 _lh_rewrite_with_lemmas_arg1_4_6 _lh_rewrite_with_lemmas_arg2_4_6 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d0 _lh_rewrite_with_lemmas_arg1_4_6) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_6))
and rewrite_with_lemmas_d0_d0_d5 _lh_rewrite_with_lemmas_arg1_5_2 _lh_rewrite_with_lemmas_arg2_5_2 =
  ((rewrite_with_lemmas_helper_d0_d0_d6_d6 _lh_rewrite_with_lemmas_arg1_5_2) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_2))
and rewrite_with_lemmas_d0_d0_d5_d0 _lh_rewrite_with_lemmas_arg1_4_4 _lh_rewrite_with_lemmas_arg2_4_4 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d1 _lh_rewrite_with_lemmas_arg1_4_4) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_4))
and rewrite_with_lemmas_d0_d0_d5_d1 _lh_rewrite_with_lemmas_arg1_3_0 _lh_rewrite_with_lemmas_arg2_3_0 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d2 _lh_rewrite_with_lemmas_arg1_3_0) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_0))
and rewrite_with_lemmas_d0_d0_d5_d2 _lh_rewrite_with_lemmas_arg1_4_2 _lh_rewrite_with_lemmas_arg2_4_2 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d3 _lh_rewrite_with_lemmas_arg1_4_2) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_2))
and rewrite_with_lemmas_d0_d0_d5_d3 _lh_rewrite_with_lemmas_arg1_1 _lh_rewrite_with_lemmas_arg2_1 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d4 _lh_rewrite_with_lemmas_arg1_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_1))
and rewrite_with_lemmas_d0_d0_d5_d4 _lh_rewrite_with_lemmas_arg1_3_1 _lh_rewrite_with_lemmas_arg2_3_1 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d5 _lh_rewrite_with_lemmas_arg1_3_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_1))
and rewrite_with_lemmas_d0_d0_d5_d5 _lh_rewrite_with_lemmas_arg1_2_7 _lh_rewrite_with_lemmas_arg2_2_7 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d6 _lh_rewrite_with_lemmas_arg1_2_7) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_7))
and rewrite_with_lemmas_d0_d0_d5_d6 _lh_rewrite_with_lemmas_arg1_2_9 _lh_rewrite_with_lemmas_arg2_2_9 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d7 _lh_rewrite_with_lemmas_arg1_2_9) (Lazy.force _lh_rewrite_with_lemmas_arg2_2_9))
and rewrite_with_lemmas_d0_d0_d5_d7 _lh_rewrite_with_lemmas_arg1_1_4 _lh_rewrite_with_lemmas_arg2_1_4 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d8 _lh_rewrite_with_lemmas_arg1_1_4) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_4))
and rewrite_with_lemmas_d0_d0_d5_d8 _lh_rewrite_with_lemmas_arg1_4_3 _lh_rewrite_with_lemmas_arg2_4_3 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d1_d9 _lh_rewrite_with_lemmas_arg1_4_3) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_3))
and rewrite_with_lemmas_d0_d0_d5_d9 _lh_rewrite_with_lemmas_arg1_4_8 _lh_rewrite_with_lemmas_arg2_4_8 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d2_d0 _lh_rewrite_with_lemmas_arg1_4_8) (Lazy.force _lh_rewrite_with_lemmas_arg2_4_8))
and rewrite_with_lemmas_d0_d0_d6 _lh_rewrite_with_lemmas_arg1_1_7 _lh_rewrite_with_lemmas_arg2_1_7 =
  ((rewrite_with_lemmas_helper_d0_d0_d6_d7 _lh_rewrite_with_lemmas_arg1_1_7) (Lazy.force _lh_rewrite_with_lemmas_arg2_1_7))
and rewrite_with_lemmas_d0_d0_d6_d0 _lh_rewrite_with_lemmas_arg1_3_6 _lh_rewrite_with_lemmas_arg2_3_6 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d2_d1 _lh_rewrite_with_lemmas_arg1_3_6) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_6))
and rewrite_with_lemmas_d0_d0_d6_d1 _lh_rewrite_with_lemmas_arg1_3_9 _lh_rewrite_with_lemmas_arg2_3_9 =
  ((rewrite_with_lemmas_helper_d0_d0_d1_d2_d2 _lh_rewrite_with_lemmas_arg1_3_9) (Lazy.force _lh_rewrite_with_lemmas_arg2_3_9))
and rewrite_with_lemmas_d0_d0_d7 _lh_rewrite_with_lemmas_arg1_5_1 _lh_rewrite_with_lemmas_arg2_5_1 =
  ((rewrite_with_lemmas_helper_d0_d0_d6_d8 _lh_rewrite_with_lemmas_arg1_5_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_1))
and rewrite_with_lemmas_d0_d0_d8 _lh_rewrite_with_lemmas_arg1_5_9 _lh_rewrite_with_lemmas_arg2_5_9 =
  ((rewrite_with_lemmas_helper_d0_d0_d6_d9 _lh_rewrite_with_lemmas_arg1_5_9) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_9))
and rewrite_with_lemmas_d0_d0_d9 _lh_rewrite_with_lemmas_arg1_5_8 _lh_rewrite_with_lemmas_arg2_5_8 =
  ((rewrite_with_lemmas_helper_d0_d0_d7_d0 _lh_rewrite_with_lemmas_arg1_5_8) (Lazy.force _lh_rewrite_with_lemmas_arg2_5_8))
and rewrite_d0_d0_d0 _lh_rewrite_arg1_5 =
  (match _lh_rewrite_arg1_5 with
    | `Var(_lh_rewrite_Var_0_5) -> 
      (`Var(_lh_rewrite_Var_0_5))
    | `Fun(_lh_rewrite_Fun_0_5, _lh_rewrite_Fun_1_5, _lh_rewrite_Fun_2_5) -> 
      ((rewrite_with_lemmas_d0_d0_d0 (`Fun(_lh_rewrite_Fun_0_5, ((map_d1_d0_d0 rewrite_d0_d0_d0) _lh_rewrite_Fun_1_5), _lh_rewrite_Fun_2_5))) _lh_rewrite_Fun_2_5)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1 _lh_rewrite_arg1_5_1 =
  (match _lh_rewrite_arg1_5_1 with
    | `Var(_lh_rewrite_Var_0_5_1) -> 
      (`Var(_lh_rewrite_Var_0_5_1))
    | `Fun(_lh_rewrite_Fun_0_5_1, _lh_rewrite_Fun_1_5_1, _lh_rewrite_Fun_2_5_1) -> 
      ((rewrite_with_lemmas_d0_d0_d1 (`Fun(_lh_rewrite_Fun_0_5_1, ((map_d1_d0_d1 rewrite_d0_d0_d1) _lh_rewrite_Fun_1_5_1), _lh_rewrite_Fun_2_5_1))) _lh_rewrite_Fun_2_5_1)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d0 _lh_rewrite_arg1_3_2 =
  (match _lh_rewrite_arg1_3_2 with
    | `Var(_lh_rewrite_Var_0_3_2) -> 
      (`Var(_lh_rewrite_Var_0_3_2))
    | `Fun(_lh_rewrite_Fun_0_3_2, _lh_rewrite_Fun_1_3_2, _lh_rewrite_Fun_2_3_2) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d0 (`Fun(_lh_rewrite_Fun_0_3_2, ((map_d1_d0_d1_d0 rewrite_d0_d0_d1_d0) _lh_rewrite_Fun_1_3_2), _lh_rewrite_Fun_2_3_2))) _lh_rewrite_Fun_2_3_2)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d1 _lh_rewrite_arg1_3_5 =
  (match _lh_rewrite_arg1_3_5 with
    | `Var(_lh_rewrite_Var_0_3_5) -> 
      (`Var(_lh_rewrite_Var_0_3_5))
    | `Fun(_lh_rewrite_Fun_0_3_5, _lh_rewrite_Fun_1_3_5, _lh_rewrite_Fun_2_3_5) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d1 (`Fun(_lh_rewrite_Fun_0_3_5, ((map_d1_d0_d1_d1 rewrite_d0_d0_d1_d1) _lh_rewrite_Fun_1_3_5), _lh_rewrite_Fun_2_3_5))) _lh_rewrite_Fun_2_3_5)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d2 _lh_rewrite_arg1_4_1 =
  (match _lh_rewrite_arg1_4_1 with
    | `Var(_lh_rewrite_Var_0_4_1) -> 
      (`Var(_lh_rewrite_Var_0_4_1))
    | `Fun(_lh_rewrite_Fun_0_4_1, _lh_rewrite_Fun_1_4_1, _lh_rewrite_Fun_2_4_1) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d2 (`Fun(_lh_rewrite_Fun_0_4_1, ((map_d1_d0_d1_d2 rewrite_d0_d0_d1_d2) _lh_rewrite_Fun_1_4_1), _lh_rewrite_Fun_2_4_1))) _lh_rewrite_Fun_2_4_1)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d3 _lh_rewrite_arg1_4_7 =
  (match _lh_rewrite_arg1_4_7 with
    | `Var(_lh_rewrite_Var_0_4_7) -> 
      (`Var(_lh_rewrite_Var_0_4_7))
    | `Fun(_lh_rewrite_Fun_0_4_7, _lh_rewrite_Fun_1_4_7, _lh_rewrite_Fun_2_4_7) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d3 (`Fun(_lh_rewrite_Fun_0_4_7, ((map_d1_d0_d1_d3 rewrite_d0_d0_d1_d3) _lh_rewrite_Fun_1_4_7), _lh_rewrite_Fun_2_4_7))) _lh_rewrite_Fun_2_4_7)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d4 _lh_rewrite_arg1_2_0 =
  (match _lh_rewrite_arg1_2_0 with
    | `Var(_lh_rewrite_Var_0_2_0) -> 
      (`Var(_lh_rewrite_Var_0_2_0))
    | `Fun(_lh_rewrite_Fun_0_2_0, _lh_rewrite_Fun_1_2_0, _lh_rewrite_Fun_2_2_0) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d4 (`Fun(_lh_rewrite_Fun_0_2_0, ((map_d1_d0_d1_d4 rewrite_d0_d0_d1_d4) _lh_rewrite_Fun_1_2_0), _lh_rewrite_Fun_2_2_0))) _lh_rewrite_Fun_2_2_0)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d5 _lh_rewrite_arg1_4_8 =
  (match _lh_rewrite_arg1_4_8 with
    | `Var(_lh_rewrite_Var_0_4_8) -> 
      (`Var(_lh_rewrite_Var_0_4_8))
    | `Fun(_lh_rewrite_Fun_0_4_8, _lh_rewrite_Fun_1_4_8, _lh_rewrite_Fun_2_4_8) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d5 (`Fun(_lh_rewrite_Fun_0_4_8, ((map_d1_d0_d1_d5 rewrite_d0_d0_d1_d5) _lh_rewrite_Fun_1_4_8), _lh_rewrite_Fun_2_4_8))) _lh_rewrite_Fun_2_4_8)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d6 _lh_rewrite_arg1_5_7 =
  (match _lh_rewrite_arg1_5_7 with
    | `Var(_lh_rewrite_Var_0_5_7) -> 
      (`Var(_lh_rewrite_Var_0_5_7))
    | `Fun(_lh_rewrite_Fun_0_5_7, _lh_rewrite_Fun_1_5_7, _lh_rewrite_Fun_2_5_7) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d6 (`Fun(_lh_rewrite_Fun_0_5_7, ((map_d1_d0_d1_d6 rewrite_d0_d0_d1_d6) _lh_rewrite_Fun_1_5_7), _lh_rewrite_Fun_2_5_7))) _lh_rewrite_Fun_2_5_7)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d7 _lh_rewrite_arg1_6_1 =
  (match _lh_rewrite_arg1_6_1 with
    | `Var(_lh_rewrite_Var_0_6_1) -> 
      (`Var(_lh_rewrite_Var_0_6_1))
    | `Fun(_lh_rewrite_Fun_0_6_1, _lh_rewrite_Fun_1_6_1, _lh_rewrite_Fun_2_6_1) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d7 (`Fun(_lh_rewrite_Fun_0_6_1, ((map_d1_d0_d1_d7 rewrite_d0_d0_d1_d7) _lh_rewrite_Fun_1_6_1), _lh_rewrite_Fun_2_6_1))) _lh_rewrite_Fun_2_6_1)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d8 _lh_rewrite_arg1_4_9 =
  (match _lh_rewrite_arg1_4_9 with
    | `Var(_lh_rewrite_Var_0_4_9) -> 
      (`Var(_lh_rewrite_Var_0_4_9))
    | `Fun(_lh_rewrite_Fun_0_4_9, _lh_rewrite_Fun_1_4_9, _lh_rewrite_Fun_2_4_9) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d8 (`Fun(_lh_rewrite_Fun_0_4_9, ((map_d1_d0_d1_d8 rewrite_d0_d0_d1_d8) _lh_rewrite_Fun_1_4_9), _lh_rewrite_Fun_2_4_9))) _lh_rewrite_Fun_2_4_9)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d1_d9 _lh_rewrite_arg1_6_0 =
  (match _lh_rewrite_arg1_6_0 with
    | `Var(_lh_rewrite_Var_0_6_0) -> 
      (`Var(_lh_rewrite_Var_0_6_0))
    | `Fun(_lh_rewrite_Fun_0_6_0, _lh_rewrite_Fun_1_6_0, _lh_rewrite_Fun_2_6_0) -> 
      ((rewrite_with_lemmas_d0_d0_d1_d9 (`Fun(_lh_rewrite_Fun_0_6_0, ((map_d1_d0_d1_d9 rewrite_d0_d0_d1_d9) _lh_rewrite_Fun_1_6_0), _lh_rewrite_Fun_2_6_0))) _lh_rewrite_Fun_2_6_0)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2 _lh_rewrite_arg1_1_7 =
  (match _lh_rewrite_arg1_1_7 with
    | `Var(_lh_rewrite_Var_0_1_7) -> 
      (`Var(_lh_rewrite_Var_0_1_7))
    | `Fun(_lh_rewrite_Fun_0_1_7, _lh_rewrite_Fun_1_1_7, _lh_rewrite_Fun_2_1_7) -> 
      ((rewrite_with_lemmas_d0_d0_d2 (`Fun(_lh_rewrite_Fun_0_1_7, ((map_d1_d0_d2 rewrite_d0_d0_d2) _lh_rewrite_Fun_1_1_7), _lh_rewrite_Fun_2_1_7))) _lh_rewrite_Fun_2_1_7)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d0 _lh_rewrite_arg1_8 =
  (match _lh_rewrite_arg1_8 with
    | `Var(_lh_rewrite_Var_0_8) -> 
      (`Var(_lh_rewrite_Var_0_8))
    | `Fun(_lh_rewrite_Fun_0_8, _lh_rewrite_Fun_1_8, _lh_rewrite_Fun_2_8) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d0 (`Fun(_lh_rewrite_Fun_0_8, ((map_d1_d0_d2_d0 rewrite_d0_d0_d2_d0) _lh_rewrite_Fun_1_8), _lh_rewrite_Fun_2_8))) _lh_rewrite_Fun_2_8)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d1 _lh_rewrite_arg1_3_4 =
  (match _lh_rewrite_arg1_3_4 with
    | `Var(_lh_rewrite_Var_0_3_4) -> 
      (`Var(_lh_rewrite_Var_0_3_4))
    | `Fun(_lh_rewrite_Fun_0_3_4, _lh_rewrite_Fun_1_3_4, _lh_rewrite_Fun_2_3_4) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d1 (`Fun(_lh_rewrite_Fun_0_3_4, ((map_d1_d0_d2_d1 rewrite_d0_d0_d2_d1) _lh_rewrite_Fun_1_3_4), _lh_rewrite_Fun_2_3_4))) _lh_rewrite_Fun_2_3_4)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d2 _lh_rewrite_arg1_1_6 =
  (match _lh_rewrite_arg1_1_6 with
    | `Var(_lh_rewrite_Var_0_1_6) -> 
      (`Var(_lh_rewrite_Var_0_1_6))
    | `Fun(_lh_rewrite_Fun_0_1_6, _lh_rewrite_Fun_1_1_6, _lh_rewrite_Fun_2_1_6) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d2 (`Fun(_lh_rewrite_Fun_0_1_6, ((map_d1_d0_d2_d2 rewrite_d0_d0_d2_d2) _lh_rewrite_Fun_1_1_6), _lh_rewrite_Fun_2_1_6))) _lh_rewrite_Fun_2_1_6)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d3 _lh_rewrite_arg1_1_4 =
  (match _lh_rewrite_arg1_1_4 with
    | `Var(_lh_rewrite_Var_0_1_4) -> 
      (`Var(_lh_rewrite_Var_0_1_4))
    | `Fun(_lh_rewrite_Fun_0_1_4, _lh_rewrite_Fun_1_1_4, _lh_rewrite_Fun_2_1_4) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d3 (`Fun(_lh_rewrite_Fun_0_1_4, ((map_d1_d0_d2_d3 rewrite_d0_d0_d2_d3) _lh_rewrite_Fun_1_1_4), _lh_rewrite_Fun_2_1_4))) _lh_rewrite_Fun_2_1_4)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d4 _lh_rewrite_arg1_5_0 =
  (match _lh_rewrite_arg1_5_0 with
    | `Var(_lh_rewrite_Var_0_5_0) -> 
      (`Var(_lh_rewrite_Var_0_5_0))
    | `Fun(_lh_rewrite_Fun_0_5_0, _lh_rewrite_Fun_1_5_0, _lh_rewrite_Fun_2_5_0) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d4 (`Fun(_lh_rewrite_Fun_0_5_0, ((map_d1_d0_d2_d4 rewrite_d0_d0_d2_d4) _lh_rewrite_Fun_1_5_0), _lh_rewrite_Fun_2_5_0))) _lh_rewrite_Fun_2_5_0)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d5 _lh_rewrite_arg1_9 =
  (match _lh_rewrite_arg1_9 with
    | `Var(_lh_rewrite_Var_0_9) -> 
      (`Var(_lh_rewrite_Var_0_9))
    | `Fun(_lh_rewrite_Fun_0_9, _lh_rewrite_Fun_1_9, _lh_rewrite_Fun_2_9) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d5 (`Fun(_lh_rewrite_Fun_0_9, ((map_d1_d0_d2_d5 rewrite_d0_d0_d2_d5) _lh_rewrite_Fun_1_9), _lh_rewrite_Fun_2_9))) _lh_rewrite_Fun_2_9)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d6 _lh_rewrite_arg1_3_3 =
  (match _lh_rewrite_arg1_3_3 with
    | `Var(_lh_rewrite_Var_0_3_3) -> 
      (`Var(_lh_rewrite_Var_0_3_3))
    | `Fun(_lh_rewrite_Fun_0_3_3, _lh_rewrite_Fun_1_3_3, _lh_rewrite_Fun_2_3_3) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d6 (`Fun(_lh_rewrite_Fun_0_3_3, ((map_d1_d0_d2_d6 rewrite_d0_d0_d2_d6) _lh_rewrite_Fun_1_3_3), _lh_rewrite_Fun_2_3_3))) _lh_rewrite_Fun_2_3_3)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d7 _lh_rewrite_arg1_3_0 =
  (match _lh_rewrite_arg1_3_0 with
    | `Var(_lh_rewrite_Var_0_3_0) -> 
      (`Var(_lh_rewrite_Var_0_3_0))
    | `Fun(_lh_rewrite_Fun_0_3_0, _lh_rewrite_Fun_1_3_0, _lh_rewrite_Fun_2_3_0) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d7 (`Fun(_lh_rewrite_Fun_0_3_0, ((map_d1_d0_d2_d7 rewrite_d0_d0_d2_d7) _lh_rewrite_Fun_1_3_0), _lh_rewrite_Fun_2_3_0))) _lh_rewrite_Fun_2_3_0)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d8 _lh_rewrite_arg1_1_9 =
  (match _lh_rewrite_arg1_1_9 with
    | `Var(_lh_rewrite_Var_0_1_9) -> 
      (`Var(_lh_rewrite_Var_0_1_9))
    | `Fun(_lh_rewrite_Fun_0_1_9, _lh_rewrite_Fun_1_1_9, _lh_rewrite_Fun_2_1_9) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d8 (`Fun(_lh_rewrite_Fun_0_1_9, ((map_d1_d0_d2_d8 rewrite_d0_d0_d2_d8) _lh_rewrite_Fun_1_1_9), _lh_rewrite_Fun_2_1_9))) _lh_rewrite_Fun_2_1_9)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d2_d9 _lh_rewrite_arg1_3_8 =
  (match _lh_rewrite_arg1_3_8 with
    | `Var(_lh_rewrite_Var_0_3_8) -> 
      (`Var(_lh_rewrite_Var_0_3_8))
    | `Fun(_lh_rewrite_Fun_0_3_8, _lh_rewrite_Fun_1_3_8, _lh_rewrite_Fun_2_3_8) -> 
      ((rewrite_with_lemmas_d0_d0_d2_d9 (`Fun(_lh_rewrite_Fun_0_3_8, ((map_d1_d0_d2_d9 rewrite_d0_d0_d2_d9) _lh_rewrite_Fun_1_3_8), _lh_rewrite_Fun_2_3_8))) _lh_rewrite_Fun_2_3_8)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3 _lh_rewrite_arg1_2_5 =
  (match _lh_rewrite_arg1_2_5 with
    | `Var(_lh_rewrite_Var_0_2_5) -> 
      (`Var(_lh_rewrite_Var_0_2_5))
    | `Fun(_lh_rewrite_Fun_0_2_5, _lh_rewrite_Fun_1_2_5, _lh_rewrite_Fun_2_2_5) -> 
      ((rewrite_with_lemmas_d0_d0_d3 (`Fun(_lh_rewrite_Fun_0_2_5, ((map_d1_d0_d3 rewrite_d0_d0_d3) _lh_rewrite_Fun_1_2_5), _lh_rewrite_Fun_2_2_5))) _lh_rewrite_Fun_2_2_5)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d0 _lh_rewrite_arg1_2_7 =
  (match _lh_rewrite_arg1_2_7 with
    | `Var(_lh_rewrite_Var_0_2_7) -> 
      (`Var(_lh_rewrite_Var_0_2_7))
    | `Fun(_lh_rewrite_Fun_0_2_7, _lh_rewrite_Fun_1_2_7, _lh_rewrite_Fun_2_2_7) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d0 (`Fun(_lh_rewrite_Fun_0_2_7, ((map_d1_d0_d3_d0 rewrite_d0_d0_d3_d0) _lh_rewrite_Fun_1_2_7), _lh_rewrite_Fun_2_2_7))) _lh_rewrite_Fun_2_2_7)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d1 _lh_rewrite_arg1_6 =
  (match _lh_rewrite_arg1_6 with
    | `Var(_lh_rewrite_Var_0_6) -> 
      (`Var(_lh_rewrite_Var_0_6))
    | `Fun(_lh_rewrite_Fun_0_6, _lh_rewrite_Fun_1_6, _lh_rewrite_Fun_2_6) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d1 (`Fun(_lh_rewrite_Fun_0_6, ((map_d1_d0_d3_d1 rewrite_d0_d0_d3_d1) _lh_rewrite_Fun_1_6), _lh_rewrite_Fun_2_6))) _lh_rewrite_Fun_2_6)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d2 _lh_rewrite_arg1_1 =
  (match _lh_rewrite_arg1_1 with
    | `Var(_lh_rewrite_Var_0_1) -> 
      (`Var(_lh_rewrite_Var_0_1))
    | `Fun(_lh_rewrite_Fun_0_1, _lh_rewrite_Fun_1_1, _lh_rewrite_Fun_2_1) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d2 (`Fun(_lh_rewrite_Fun_0_1, ((map_d1_d0_d3_d2 rewrite_d0_d0_d3_d2) _lh_rewrite_Fun_1_1), _lh_rewrite_Fun_2_1))) _lh_rewrite_Fun_2_1)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d3 _lh_rewrite_arg1_2_1 =
  (match _lh_rewrite_arg1_2_1 with
    | `Var(_lh_rewrite_Var_0_2_1) -> 
      (`Var(_lh_rewrite_Var_0_2_1))
    | `Fun(_lh_rewrite_Fun_0_2_1, _lh_rewrite_Fun_1_2_1, _lh_rewrite_Fun_2_2_1) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d3 (`Fun(_lh_rewrite_Fun_0_2_1, ((map_d1_d0_d3_d3 rewrite_d0_d0_d3_d3) _lh_rewrite_Fun_1_2_1), _lh_rewrite_Fun_2_2_1))) _lh_rewrite_Fun_2_2_1)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d4 _lh_rewrite_arg1_4_4 =
  (match _lh_rewrite_arg1_4_4 with
    | `Var(_lh_rewrite_Var_0_4_4) -> 
      (`Var(_lh_rewrite_Var_0_4_4))
    | `Fun(_lh_rewrite_Fun_0_4_4, _lh_rewrite_Fun_1_4_4, _lh_rewrite_Fun_2_4_4) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d4 (`Fun(_lh_rewrite_Fun_0_4_4, ((map_d1_d0_d3_d4 rewrite_d0_d0_d3_d4) _lh_rewrite_Fun_1_4_4), _lh_rewrite_Fun_2_4_4))) _lh_rewrite_Fun_2_4_4)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d5 _lh_rewrite_arg1_3_7 =
  (match _lh_rewrite_arg1_3_7 with
    | `Var(_lh_rewrite_Var_0_3_7) -> 
      (`Var(_lh_rewrite_Var_0_3_7))
    | `Fun(_lh_rewrite_Fun_0_3_7, _lh_rewrite_Fun_1_3_7, _lh_rewrite_Fun_2_3_7) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d5 (`Fun(_lh_rewrite_Fun_0_3_7, ((map_d1_d0_d3_d5 rewrite_d0_d0_d3_d5) _lh_rewrite_Fun_1_3_7), _lh_rewrite_Fun_2_3_7))) _lh_rewrite_Fun_2_3_7)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d6 _lh_rewrite_arg1_2_2 =
  (match _lh_rewrite_arg1_2_2 with
    | `Var(_lh_rewrite_Var_0_2_2) -> 
      (`Var(_lh_rewrite_Var_0_2_2))
    | `Fun(_lh_rewrite_Fun_0_2_2, _lh_rewrite_Fun_1_2_2, _lh_rewrite_Fun_2_2_2) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d6 (`Fun(_lh_rewrite_Fun_0_2_2, ((map_d1_d0_d3_d6 rewrite_d0_d0_d3_d6) _lh_rewrite_Fun_1_2_2), _lh_rewrite_Fun_2_2_2))) _lh_rewrite_Fun_2_2_2)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d7 _lh_rewrite_arg1_2_4 =
  (match _lh_rewrite_arg1_2_4 with
    | `Var(_lh_rewrite_Var_0_2_4) -> 
      (`Var(_lh_rewrite_Var_0_2_4))
    | `Fun(_lh_rewrite_Fun_0_2_4, _lh_rewrite_Fun_1_2_4, _lh_rewrite_Fun_2_2_4) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d7 (`Fun(_lh_rewrite_Fun_0_2_4, ((map_d1_d0_d3_d7 rewrite_d0_d0_d3_d7) _lh_rewrite_Fun_1_2_4), _lh_rewrite_Fun_2_2_4))) _lh_rewrite_Fun_2_2_4)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d8 _lh_rewrite_arg1_2_8 =
  (match _lh_rewrite_arg1_2_8 with
    | `Var(_lh_rewrite_Var_0_2_8) -> 
      (`Var(_lh_rewrite_Var_0_2_8))
    | `Fun(_lh_rewrite_Fun_0_2_8, _lh_rewrite_Fun_1_2_8, _lh_rewrite_Fun_2_2_8) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d8 (`Fun(_lh_rewrite_Fun_0_2_8, ((map_d1_d0_d3_d8 rewrite_d0_d0_d3_d8) _lh_rewrite_Fun_1_2_8), _lh_rewrite_Fun_2_2_8))) _lh_rewrite_Fun_2_2_8)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d3_d9 _lh_rewrite_arg1_1_0 =
  (match _lh_rewrite_arg1_1_0 with
    | `Var(_lh_rewrite_Var_0_1_0) -> 
      (`Var(_lh_rewrite_Var_0_1_0))
    | `Fun(_lh_rewrite_Fun_0_1_0, _lh_rewrite_Fun_1_1_0, _lh_rewrite_Fun_2_1_0) -> 
      ((rewrite_with_lemmas_d0_d0_d3_d9 (`Fun(_lh_rewrite_Fun_0_1_0, ((map_d1_d0_d3_d9 rewrite_d0_d0_d3_d9) _lh_rewrite_Fun_1_1_0), _lh_rewrite_Fun_2_1_0))) _lh_rewrite_Fun_2_1_0)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4 _lh_rewrite_arg1_4_2 =
  (match _lh_rewrite_arg1_4_2 with
    | `Var(_lh_rewrite_Var_0_4_2) -> 
      (`Var(_lh_rewrite_Var_0_4_2))
    | `Fun(_lh_rewrite_Fun_0_4_2, _lh_rewrite_Fun_1_4_2, _lh_rewrite_Fun_2_4_2) -> 
      ((rewrite_with_lemmas_d0_d0_d4 (`Fun(_lh_rewrite_Fun_0_4_2, ((map_d1_d0_d4 rewrite_d0_d0_d4) _lh_rewrite_Fun_1_4_2), _lh_rewrite_Fun_2_4_2))) _lh_rewrite_Fun_2_4_2)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d0 _lh_rewrite_arg1_2_9 =
  (match _lh_rewrite_arg1_2_9 with
    | `Var(_lh_rewrite_Var_0_2_9) -> 
      (`Var(_lh_rewrite_Var_0_2_9))
    | `Fun(_lh_rewrite_Fun_0_2_9, _lh_rewrite_Fun_1_2_9, _lh_rewrite_Fun_2_2_9) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d0 (`Fun(_lh_rewrite_Fun_0_2_9, ((map_d1_d0_d4_d0 rewrite_d0_d0_d4_d0) _lh_rewrite_Fun_1_2_9), _lh_rewrite_Fun_2_2_9))) _lh_rewrite_Fun_2_2_9)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d1 _lh_rewrite_arg1_5_3 =
  (match _lh_rewrite_arg1_5_3 with
    | `Var(_lh_rewrite_Var_0_5_3) -> 
      (`Var(_lh_rewrite_Var_0_5_3))
    | `Fun(_lh_rewrite_Fun_0_5_3, _lh_rewrite_Fun_1_5_3, _lh_rewrite_Fun_2_5_3) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d1 (`Fun(_lh_rewrite_Fun_0_5_3, ((map_d1_d0_d4_d1 rewrite_d0_d0_d4_d1) _lh_rewrite_Fun_1_5_3), _lh_rewrite_Fun_2_5_3))) _lh_rewrite_Fun_2_5_3)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d2 _lh_rewrite_arg1_2_3 =
  (match _lh_rewrite_arg1_2_3 with
    | `Var(_lh_rewrite_Var_0_2_3) -> 
      (`Var(_lh_rewrite_Var_0_2_3))
    | `Fun(_lh_rewrite_Fun_0_2_3, _lh_rewrite_Fun_1_2_3, _lh_rewrite_Fun_2_2_3) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d2 (`Fun(_lh_rewrite_Fun_0_2_3, ((map_d1_d0_d4_d2 rewrite_d0_d0_d4_d2) _lh_rewrite_Fun_1_2_3), _lh_rewrite_Fun_2_2_3))) _lh_rewrite_Fun_2_2_3)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d3 _lh_rewrite_arg1_5_8 =
  (match _lh_rewrite_arg1_5_8 with
    | `Var(_lh_rewrite_Var_0_5_8) -> 
      (`Var(_lh_rewrite_Var_0_5_8))
    | `Fun(_lh_rewrite_Fun_0_5_8, _lh_rewrite_Fun_1_5_8, _lh_rewrite_Fun_2_5_8) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d3 (`Fun(_lh_rewrite_Fun_0_5_8, ((map_d1_d0_d4_d3 rewrite_d0_d0_d4_d3) _lh_rewrite_Fun_1_5_8), _lh_rewrite_Fun_2_5_8))) _lh_rewrite_Fun_2_5_8)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d4 _lh_rewrite_arg1_6_2 =
  (match _lh_rewrite_arg1_6_2 with
    | `Var(_lh_rewrite_Var_0_6_2) -> 
      (`Var(_lh_rewrite_Var_0_6_2))
    | `Fun(_lh_rewrite_Fun_0_6_2, _lh_rewrite_Fun_1_6_2, _lh_rewrite_Fun_2_6_2) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d4 (`Fun(_lh_rewrite_Fun_0_6_2, ((map_d1_d0_d4_d4 rewrite_d0_d0_d4_d4) _lh_rewrite_Fun_1_6_2), _lh_rewrite_Fun_2_6_2))) _lh_rewrite_Fun_2_6_2)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d5 _lh_rewrite_arg1_1_5 =
  (match _lh_rewrite_arg1_1_5 with
    | `Var(_lh_rewrite_Var_0_1_5) -> 
      (`Var(_lh_rewrite_Var_0_1_5))
    | `Fun(_lh_rewrite_Fun_0_1_5, _lh_rewrite_Fun_1_1_5, _lh_rewrite_Fun_2_1_5) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d5 (`Fun(_lh_rewrite_Fun_0_1_5, ((map_d1_d0_d4_d5 rewrite_d0_d0_d4_d5) _lh_rewrite_Fun_1_1_5), _lh_rewrite_Fun_2_1_5))) _lh_rewrite_Fun_2_1_5)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d6 _lh_rewrite_arg1_5_5 =
  (match _lh_rewrite_arg1_5_5 with
    | `Var(_lh_rewrite_Var_0_5_5) -> 
      (`Var(_lh_rewrite_Var_0_5_5))
    | `Fun(_lh_rewrite_Fun_0_5_5, _lh_rewrite_Fun_1_5_5, _lh_rewrite_Fun_2_5_5) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d6 (`Fun(_lh_rewrite_Fun_0_5_5, ((map_d1_d0_d4_d6 rewrite_d0_d0_d4_d6) _lh_rewrite_Fun_1_5_5), _lh_rewrite_Fun_2_5_5))) _lh_rewrite_Fun_2_5_5)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d7 _lh_rewrite_arg1_1_8 =
  (match _lh_rewrite_arg1_1_8 with
    | `Var(_lh_rewrite_Var_0_1_8) -> 
      (`Var(_lh_rewrite_Var_0_1_8))
    | `Fun(_lh_rewrite_Fun_0_1_8, _lh_rewrite_Fun_1_1_8, _lh_rewrite_Fun_2_1_8) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d7 (`Fun(_lh_rewrite_Fun_0_1_8, ((map_d1_d0_d4_d7 rewrite_d0_d0_d4_d7) _lh_rewrite_Fun_1_1_8), _lh_rewrite_Fun_2_1_8))) _lh_rewrite_Fun_2_1_8)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d8 _lh_rewrite_arg1_2 =
  (match _lh_rewrite_arg1_2 with
    | `Var(_lh_rewrite_Var_0_2) -> 
      (`Var(_lh_rewrite_Var_0_2))
    | `Fun(_lh_rewrite_Fun_0_2, _lh_rewrite_Fun_1_2, _lh_rewrite_Fun_2_2) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d8 (`Fun(_lh_rewrite_Fun_0_2, ((map_d1_d0_d4_d8 rewrite_d0_d0_d4_d8) _lh_rewrite_Fun_1_2), _lh_rewrite_Fun_2_2))) _lh_rewrite_Fun_2_2)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d4_d9 _lh_rewrite_arg1_3_1 =
  (match _lh_rewrite_arg1_3_1 with
    | `Var(_lh_rewrite_Var_0_3_1) -> 
      (`Var(_lh_rewrite_Var_0_3_1))
    | `Fun(_lh_rewrite_Fun_0_3_1, _lh_rewrite_Fun_1_3_1, _lh_rewrite_Fun_2_3_1) -> 
      ((rewrite_with_lemmas_d0_d0_d4_d9 (`Fun(_lh_rewrite_Fun_0_3_1, ((map_d1_d0_d4_d9 rewrite_d0_d0_d4_d9) _lh_rewrite_Fun_1_3_1), _lh_rewrite_Fun_2_3_1))) _lh_rewrite_Fun_2_3_1)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5 _lh_rewrite_arg1_2_6 =
  (match _lh_rewrite_arg1_2_6 with
    | `Var(_lh_rewrite_Var_0_2_6) -> 
      (`Var(_lh_rewrite_Var_0_2_6))
    | `Fun(_lh_rewrite_Fun_0_2_6, _lh_rewrite_Fun_1_2_6, _lh_rewrite_Fun_2_2_6) -> 
      ((rewrite_with_lemmas_d0_d0_d5 (`Fun(_lh_rewrite_Fun_0_2_6, ((map_d1_d0_d5 rewrite_d0_d0_d5) _lh_rewrite_Fun_1_2_6), _lh_rewrite_Fun_2_2_6))) _lh_rewrite_Fun_2_2_6)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d0 _lh_rewrite_arg1_3_6 =
  (match _lh_rewrite_arg1_3_6 with
    | `Var(_lh_rewrite_Var_0_3_6) -> 
      (`Var(_lh_rewrite_Var_0_3_6))
    | `Fun(_lh_rewrite_Fun_0_3_6, _lh_rewrite_Fun_1_3_6, _lh_rewrite_Fun_2_3_6) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d0 (`Fun(_lh_rewrite_Fun_0_3_6, ((map_d1_d0_d5_d0 rewrite_d0_d0_d5_d0) _lh_rewrite_Fun_1_3_6), _lh_rewrite_Fun_2_3_6))) _lh_rewrite_Fun_2_3_6)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d1 _lh_rewrite_arg1_3_9 =
  (match _lh_rewrite_arg1_3_9 with
    | `Var(_lh_rewrite_Var_0_3_9) -> 
      (`Var(_lh_rewrite_Var_0_3_9))
    | `Fun(_lh_rewrite_Fun_0_3_9, _lh_rewrite_Fun_1_3_9, _lh_rewrite_Fun_2_3_9) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d1 (`Fun(_lh_rewrite_Fun_0_3_9, ((map_d1_d0_d5_d1 rewrite_d0_d0_d5_d1) _lh_rewrite_Fun_1_3_9), _lh_rewrite_Fun_2_3_9))) _lh_rewrite_Fun_2_3_9)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d2 _lh_rewrite_arg1_4_0 =
  (match _lh_rewrite_arg1_4_0 with
    | `Var(_lh_rewrite_Var_0_4_0) -> 
      (`Var(_lh_rewrite_Var_0_4_0))
    | `Fun(_lh_rewrite_Fun_0_4_0, _lh_rewrite_Fun_1_4_0, _lh_rewrite_Fun_2_4_0) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d2 (`Fun(_lh_rewrite_Fun_0_4_0, ((map_d1_d0_d5_d2 rewrite_d0_d0_d5_d2) _lh_rewrite_Fun_1_4_0), _lh_rewrite_Fun_2_4_0))) _lh_rewrite_Fun_2_4_0)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d3 _lh_rewrite_arg1_1_2 =
  (match _lh_rewrite_arg1_1_2 with
    | `Var(_lh_rewrite_Var_0_1_2) -> 
      (`Var(_lh_rewrite_Var_0_1_2))
    | `Fun(_lh_rewrite_Fun_0_1_2, _lh_rewrite_Fun_1_1_2, _lh_rewrite_Fun_2_1_2) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d3 (`Fun(_lh_rewrite_Fun_0_1_2, ((map_d1_d0_d5_d3 rewrite_d0_d0_d5_d3) _lh_rewrite_Fun_1_1_2), _lh_rewrite_Fun_2_1_2))) _lh_rewrite_Fun_2_1_2)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d4 _lh_rewrite_arg1_4 =
  (match _lh_rewrite_arg1_4 with
    | `Var(_lh_rewrite_Var_0_4) -> 
      (`Var(_lh_rewrite_Var_0_4))
    | `Fun(_lh_rewrite_Fun_0_4, _lh_rewrite_Fun_1_4, _lh_rewrite_Fun_2_4) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d4 (`Fun(_lh_rewrite_Fun_0_4, ((map_d1_d0_d5_d4 rewrite_d0_d0_d5_d4) _lh_rewrite_Fun_1_4), _lh_rewrite_Fun_2_4))) _lh_rewrite_Fun_2_4)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d5 _lh_rewrite_arg1_5_9 =
  (match _lh_rewrite_arg1_5_9 with
    | `Var(_lh_rewrite_Var_0_5_9) -> 
      (`Var(_lh_rewrite_Var_0_5_9))
    | `Fun(_lh_rewrite_Fun_0_5_9, _lh_rewrite_Fun_1_5_9, _lh_rewrite_Fun_2_5_9) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d5 (`Fun(_lh_rewrite_Fun_0_5_9, ((map_d1_d0_d5_d5 rewrite_d0_d0_d5_d5) _lh_rewrite_Fun_1_5_9), _lh_rewrite_Fun_2_5_9))) _lh_rewrite_Fun_2_5_9)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d6 _lh_rewrite_arg1_1_1 =
  (match _lh_rewrite_arg1_1_1 with
    | `Var(_lh_rewrite_Var_0_1_1) -> 
      (`Var(_lh_rewrite_Var_0_1_1))
    | `Fun(_lh_rewrite_Fun_0_1_1, _lh_rewrite_Fun_1_1_1, _lh_rewrite_Fun_2_1_1) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d6 (`Fun(_lh_rewrite_Fun_0_1_1, ((map_d1_d0_d5_d6 rewrite_d0_d0_d5_d6) _lh_rewrite_Fun_1_1_1), _lh_rewrite_Fun_2_1_1))) _lh_rewrite_Fun_2_1_1)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d7 _lh_rewrite_arg1_4_6 =
  (match _lh_rewrite_arg1_4_6 with
    | `Var(_lh_rewrite_Var_0_4_6) -> 
      (`Var(_lh_rewrite_Var_0_4_6))
    | `Fun(_lh_rewrite_Fun_0_4_6, _lh_rewrite_Fun_1_4_6, _lh_rewrite_Fun_2_4_6) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d7 (`Fun(_lh_rewrite_Fun_0_4_6, ((map_d1_d0_d5_d7 rewrite_d0_d0_d5_d7) _lh_rewrite_Fun_1_4_6), _lh_rewrite_Fun_2_4_6))) _lh_rewrite_Fun_2_4_6)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d8 _lh_rewrite_arg1_5_6 =
  (match _lh_rewrite_arg1_5_6 with
    | `Var(_lh_rewrite_Var_0_5_6) -> 
      (`Var(_lh_rewrite_Var_0_5_6))
    | `Fun(_lh_rewrite_Fun_0_5_6, _lh_rewrite_Fun_1_5_6, _lh_rewrite_Fun_2_5_6) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d8 (`Fun(_lh_rewrite_Fun_0_5_6, ((map_d1_d0_d5_d8 rewrite_d0_d0_d5_d8) _lh_rewrite_Fun_1_5_6), _lh_rewrite_Fun_2_5_6))) _lh_rewrite_Fun_2_5_6)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d5_d9 _lh_rewrite_arg1_5_4 =
  (match _lh_rewrite_arg1_5_4 with
    | `Var(_lh_rewrite_Var_0_5_4) -> 
      (`Var(_lh_rewrite_Var_0_5_4))
    | `Fun(_lh_rewrite_Fun_0_5_4, _lh_rewrite_Fun_1_5_4, _lh_rewrite_Fun_2_5_4) -> 
      ((rewrite_with_lemmas_d0_d0_d5_d9 (`Fun(_lh_rewrite_Fun_0_5_4, ((map_d1_d0_d5_d9 rewrite_d0_d0_d5_d9) _lh_rewrite_Fun_1_5_4), _lh_rewrite_Fun_2_5_4))) _lh_rewrite_Fun_2_5_4)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d6 _lh_rewrite_arg1_5_2 =
  (match _lh_rewrite_arg1_5_2 with
    | `Var(_lh_rewrite_Var_0_5_2) -> 
      (`Var(_lh_rewrite_Var_0_5_2))
    | `Fun(_lh_rewrite_Fun_0_5_2, _lh_rewrite_Fun_1_5_2, _lh_rewrite_Fun_2_5_2) -> 
      ((rewrite_with_lemmas_d0_d0_d6 (`Fun(_lh_rewrite_Fun_0_5_2, ((map_d1_d0_d6 rewrite_d0_d0_d6) _lh_rewrite_Fun_1_5_2), _lh_rewrite_Fun_2_5_2))) _lh_rewrite_Fun_2_5_2)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d6_d0 _lh_rewrite_arg1_3 =
  (match _lh_rewrite_arg1_3 with
    | `Var(_lh_rewrite_Var_0_3) -> 
      (`Var(_lh_rewrite_Var_0_3))
    | `Fun(_lh_rewrite_Fun_0_3, _lh_rewrite_Fun_1_3, _lh_rewrite_Fun_2_3) -> 
      ((rewrite_with_lemmas_d0_d0_d6_d0 (`Fun(_lh_rewrite_Fun_0_3, ((map_d1_d0_d6_d0 rewrite_d0_d0_d6_d0) _lh_rewrite_Fun_1_3), _lh_rewrite_Fun_2_3))) _lh_rewrite_Fun_2_3)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d6_d1 _lh_rewrite_arg1_4_5 =
  (match _lh_rewrite_arg1_4_5 with
    | `Var(_lh_rewrite_Var_0_4_5) -> 
      (`Var(_lh_rewrite_Var_0_4_5))
    | `Fun(_lh_rewrite_Fun_0_4_5, _lh_rewrite_Fun_1_4_5, _lh_rewrite_Fun_2_4_5) -> 
      ((rewrite_with_lemmas_d0_d0_d6_d1 (`Fun(_lh_rewrite_Fun_0_4_5, ((map_d1_d0_d6_d1 rewrite_d0_d0_d6_d1) _lh_rewrite_Fun_1_4_5), _lh_rewrite_Fun_2_4_5))) _lh_rewrite_Fun_2_4_5)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d7 _lh_rewrite_arg1_7 =
  (match _lh_rewrite_arg1_7 with
    | `Var(_lh_rewrite_Var_0_7) -> 
      (`Var(_lh_rewrite_Var_0_7))
    | `Fun(_lh_rewrite_Fun_0_7, _lh_rewrite_Fun_1_7, _lh_rewrite_Fun_2_7) -> 
      ((rewrite_with_lemmas_d0_d0_d7 (`Fun(_lh_rewrite_Fun_0_7, ((map_d1_d0_d7 rewrite_d0_d0_d7) _lh_rewrite_Fun_1_7), _lh_rewrite_Fun_2_7))) _lh_rewrite_Fun_2_7)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d8 _lh_rewrite_arg1_1_3 =
  (match _lh_rewrite_arg1_1_3 with
    | `Var(_lh_rewrite_Var_0_1_3) -> 
      (`Var(_lh_rewrite_Var_0_1_3))
    | `Fun(_lh_rewrite_Fun_0_1_3, _lh_rewrite_Fun_1_1_3, _lh_rewrite_Fun_2_1_3) -> 
      ((rewrite_with_lemmas_d0_d0_d8 (`Fun(_lh_rewrite_Fun_0_1_3, ((map_d1_d0_d8 rewrite_d0_d0_d8) _lh_rewrite_Fun_1_1_3), _lh_rewrite_Fun_2_1_3))) _lh_rewrite_Fun_2_1_3)
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d9 _lh_rewrite_arg1_4_3 =
  (match _lh_rewrite_arg1_4_3 with
    | `Var(_lh_rewrite_Var_0_4_3) -> 
      (`Var(_lh_rewrite_Var_0_4_3))
    | `Fun(_lh_rewrite_Fun_0_4_3, _lh_rewrite_Fun_1_4_3, _lh_rewrite_Fun_2_4_3) -> 
      ((rewrite_with_lemmas_d0_d0_d9 (`Fun(_lh_rewrite_Fun_0_4_3, ((map_d1_d0_d9 rewrite_d0_d0_d9) _lh_rewrite_Fun_1_4_3), _lh_rewrite_Fun_2_4_3))) _lh_rewrite_Fun_2_4_3)
    | _ -> 
      (failwith "error"))
and tautologyp_d0_d0_d0 _lh_tautologyp_arg1_1 _lh_tautologyp_arg2_1 _lh_tautologyp_arg3_1 =
  (if ((truep_d0_d0_d0 _lh_tautologyp_arg1_1) _lh_tautologyp_arg2_1) then
    true
  else
    (if ((falsep_d0_d0_d0 _lh_tautologyp_arg1_1) _lh_tautologyp_arg3_1) then
      false
    else
      (let rec _lh_matchIdent_2_7_9 = _lh_tautologyp_arg1_1 in
        (match _lh_matchIdent_2_7_9 with
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
  (((tautologyp_d0_d0_d0 (rewrite_d0_d0_d6_d1 _lh_tautp_arg1_1)) (`LH_N)) (`LH_N))
and termEq_d0_d0_d0 _lh_termEq_arg1_2_0 _lh_termEq_arg2_2_0 =
  (match _lh_termEq_arg1_2_0 with
    | `Var(_lh_termEq_Var_0_4_0) -> 
      (match _lh_termEq_arg2_2_0 with
        | `Var(_lh_termEq_Var_0_4_1) -> 
          (_lh_termEq_Var_0_4_0 = _lh_termEq_Var_0_4_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_4_0, _lh_termEq_Fun_1_4_0, _lh_termEq_Fun_2_4_0) -> 
      (match _lh_termEq_arg2_2_0 with
        | `Fun(_lh_termEq_Fun_0_4_1, _lh_termEq_Fun_1_4_1, _lh_termEq_Fun_2_4_1) -> 
          ((_lh_termEq_Fun_0_4_0 = _lh_termEq_Fun_0_4_1) && ((termLsEq_d0_d0_d0 _lh_termEq_Fun_1_4_0) _lh_termEq_Fun_1_4_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1 _lh_termEq_arg1_9_8 _lh_termEq_arg2_9_8 =
  (match _lh_termEq_arg1_9_8 with
    | `Var(_lh_termEq_Var_0_1_9_6) -> 
      (match _lh_termEq_arg2_9_8 with
        | `Var(_lh_termEq_Var_0_1_9_7) -> 
          (_lh_termEq_Var_0_1_9_6 = _lh_termEq_Var_0_1_9_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_9_6, _lh_termEq_Fun_1_1_9_6, _lh_termEq_Fun_2_1_9_6) -> 
      (match _lh_termEq_arg2_9_8 with
        | `Fun(_lh_termEq_Fun_0_1_9_7, _lh_termEq_Fun_1_1_9_7, _lh_termEq_Fun_2_1_9_7) -> 
          ((_lh_termEq_Fun_0_1_9_6 = _lh_termEq_Fun_0_1_9_7) && ((termLsEq_d0_d0_d1 _lh_termEq_Fun_1_1_9_6) _lh_termEq_Fun_1_1_9_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0 _lh_termEq_arg1_1_2_7 _lh_termEq_arg2_1_2_7 =
  (match _lh_termEq_arg1_1_2_7 with
    | `Var(_lh_termEq_Var_0_2_5_4) -> 
      (match _lh_termEq_arg2_1_2_7 with
        | `Var(_lh_termEq_Var_0_2_5_5) -> 
          (_lh_termEq_Var_0_2_5_4 = _lh_termEq_Var_0_2_5_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_5_4, _lh_termEq_Fun_1_2_5_4, _lh_termEq_Fun_2_2_5_4) -> 
      (match _lh_termEq_arg2_1_2_7 with
        | `Fun(_lh_termEq_Fun_0_2_5_5, _lh_termEq_Fun_1_2_5_5, _lh_termEq_Fun_2_2_5_5) -> 
          ((_lh_termEq_Fun_0_2_5_4 = _lh_termEq_Fun_0_2_5_5) && ((termLsEq_d0_d0_d1_d0 _lh_termEq_Fun_1_2_5_4) _lh_termEq_Fun_1_2_5_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d0 _lh_termEq_arg1_1_1_0 _lh_termEq_arg2_1_1_0 =
  (match _lh_termEq_arg1_1_1_0 with
    | `Var(_lh_termEq_Var_0_2_2_0) -> 
      (match _lh_termEq_arg2_1_1_0 with
        | `Var(_lh_termEq_Var_0_2_2_1) -> 
          (_lh_termEq_Var_0_2_2_0 = _lh_termEq_Var_0_2_2_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_2_0, _lh_termEq_Fun_1_2_2_0, _lh_termEq_Fun_2_2_2_0) -> 
      (match _lh_termEq_arg2_1_1_0 with
        | `Fun(_lh_termEq_Fun_0_2_2_1, _lh_termEq_Fun_1_2_2_1, _lh_termEq_Fun_2_2_2_1) -> 
          ((_lh_termEq_Fun_0_2_2_0 = _lh_termEq_Fun_0_2_2_1) && ((termLsEq_d0_d0_d1_d0_d0 _lh_termEq_Fun_1_2_2_0) _lh_termEq_Fun_1_2_2_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d1 _lh_termEq_arg1_1_1_1 _lh_termEq_arg2_1_1_1 =
  (match _lh_termEq_arg1_1_1_1 with
    | `Var(_lh_termEq_Var_0_2_2_2) -> 
      (match _lh_termEq_arg2_1_1_1 with
        | `Var(_lh_termEq_Var_0_2_2_3) -> 
          (_lh_termEq_Var_0_2_2_2 = _lh_termEq_Var_0_2_2_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_2_2, _lh_termEq_Fun_1_2_2_2, _lh_termEq_Fun_2_2_2_2) -> 
      (match _lh_termEq_arg2_1_1_1 with
        | `Fun(_lh_termEq_Fun_0_2_2_3, _lh_termEq_Fun_1_2_2_3, _lh_termEq_Fun_2_2_2_3) -> 
          ((_lh_termEq_Fun_0_2_2_2 = _lh_termEq_Fun_0_2_2_3) && ((termLsEq_d0_d0_d1_d0_d1 _lh_termEq_Fun_1_2_2_2) _lh_termEq_Fun_1_2_2_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d2 _lh_termEq_arg1_7_0 _lh_termEq_arg2_7_0 =
  (match _lh_termEq_arg1_7_0 with
    | `Var(_lh_termEq_Var_0_1_4_0) -> 
      (match _lh_termEq_arg2_7_0 with
        | `Var(_lh_termEq_Var_0_1_4_1) -> 
          (_lh_termEq_Var_0_1_4_0 = _lh_termEq_Var_0_1_4_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_4_0, _lh_termEq_Fun_1_1_4_0, _lh_termEq_Fun_2_1_4_0) -> 
      (match _lh_termEq_arg2_7_0 with
        | `Fun(_lh_termEq_Fun_0_1_4_1, _lh_termEq_Fun_1_1_4_1, _lh_termEq_Fun_2_1_4_1) -> 
          ((_lh_termEq_Fun_0_1_4_0 = _lh_termEq_Fun_0_1_4_1) && ((termLsEq_d0_d0_d1_d0_d2 _lh_termEq_Fun_1_1_4_0) _lh_termEq_Fun_1_1_4_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d3 _lh_termEq_arg1_6_0 _lh_termEq_arg2_6_0 =
  (match _lh_termEq_arg1_6_0 with
    | `Var(_lh_termEq_Var_0_1_2_0) -> 
      (match _lh_termEq_arg2_6_0 with
        | `Var(_lh_termEq_Var_0_1_2_1) -> 
          (_lh_termEq_Var_0_1_2_0 = _lh_termEq_Var_0_1_2_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_2_0, _lh_termEq_Fun_1_1_2_0, _lh_termEq_Fun_2_1_2_0) -> 
      (match _lh_termEq_arg2_6_0 with
        | `Fun(_lh_termEq_Fun_0_1_2_1, _lh_termEq_Fun_1_1_2_1, _lh_termEq_Fun_2_1_2_1) -> 
          ((_lh_termEq_Fun_0_1_2_0 = _lh_termEq_Fun_0_1_2_1) && ((termLsEq_d0_d0_d1_d0_d3 _lh_termEq_Fun_1_1_2_0) _lh_termEq_Fun_1_1_2_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d4 _lh_termEq_arg1_6_7 _lh_termEq_arg2_6_7 =
  (match _lh_termEq_arg1_6_7 with
    | `Var(_lh_termEq_Var_0_1_3_4) -> 
      (match _lh_termEq_arg2_6_7 with
        | `Var(_lh_termEq_Var_0_1_3_5) -> 
          (_lh_termEq_Var_0_1_3_4 = _lh_termEq_Var_0_1_3_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_3_4, _lh_termEq_Fun_1_1_3_4, _lh_termEq_Fun_2_1_3_4) -> 
      (match _lh_termEq_arg2_6_7 with
        | `Fun(_lh_termEq_Fun_0_1_3_5, _lh_termEq_Fun_1_1_3_5, _lh_termEq_Fun_2_1_3_5) -> 
          ((_lh_termEq_Fun_0_1_3_4 = _lh_termEq_Fun_0_1_3_5) && ((termLsEq_d0_d0_d1_d0_d4 _lh_termEq_Fun_1_1_3_4) _lh_termEq_Fun_1_1_3_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d5 _lh_termEq_arg1_2_3 _lh_termEq_arg2_2_3 =
  (match _lh_termEq_arg1_2_3 with
    | `Var(_lh_termEq_Var_0_4_6) -> 
      (match _lh_termEq_arg2_2_3 with
        | `Var(_lh_termEq_Var_0_4_7) -> 
          (_lh_termEq_Var_0_4_6 = _lh_termEq_Var_0_4_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_4_6, _lh_termEq_Fun_1_4_6, _lh_termEq_Fun_2_4_6) -> 
      (match _lh_termEq_arg2_2_3 with
        | `Fun(_lh_termEq_Fun_0_4_7, _lh_termEq_Fun_1_4_7, _lh_termEq_Fun_2_4_7) -> 
          ((_lh_termEq_Fun_0_4_6 = _lh_termEq_Fun_0_4_7) && ((termLsEq_d0_d0_d1_d0_d5 _lh_termEq_Fun_1_4_6) _lh_termEq_Fun_1_4_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d6 _lh_termEq_arg1_1_2_0 _lh_termEq_arg2_1_2_0 =
  (match _lh_termEq_arg1_1_2_0 with
    | `Var(_lh_termEq_Var_0_2_4_0) -> 
      (match _lh_termEq_arg2_1_2_0 with
        | `Var(_lh_termEq_Var_0_2_4_1) -> 
          (_lh_termEq_Var_0_2_4_0 = _lh_termEq_Var_0_2_4_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_4_0, _lh_termEq_Fun_1_2_4_0, _lh_termEq_Fun_2_2_4_0) -> 
      (match _lh_termEq_arg2_1_2_0 with
        | `Fun(_lh_termEq_Fun_0_2_4_1, _lh_termEq_Fun_1_2_4_1, _lh_termEq_Fun_2_2_4_1) -> 
          ((_lh_termEq_Fun_0_2_4_0 = _lh_termEq_Fun_0_2_4_1) && ((termLsEq_d0_d0_d1_d0_d6 _lh_termEq_Fun_1_2_4_0) _lh_termEq_Fun_1_2_4_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d7 _lh_termEq_arg1_4_0 _lh_termEq_arg2_4_0 =
  (match _lh_termEq_arg1_4_0 with
    | `Var(_lh_termEq_Var_0_8_0) -> 
      (match _lh_termEq_arg2_4_0 with
        | `Var(_lh_termEq_Var_0_8_1) -> 
          (_lh_termEq_Var_0_8_0 = _lh_termEq_Var_0_8_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_8_0, _lh_termEq_Fun_1_8_0, _lh_termEq_Fun_2_8_0) -> 
      (match _lh_termEq_arg2_4_0 with
        | `Fun(_lh_termEq_Fun_0_8_1, _lh_termEq_Fun_1_8_1, _lh_termEq_Fun_2_8_1) -> 
          ((_lh_termEq_Fun_0_8_0 = _lh_termEq_Fun_0_8_1) && ((termLsEq_d0_d0_d1_d0_d7 _lh_termEq_Fun_1_8_0) _lh_termEq_Fun_1_8_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d8 _lh_termEq_arg1_1_3_2 _lh_termEq_arg2_1_3_2 =
  (match _lh_termEq_arg1_1_3_2 with
    | `Var(_lh_termEq_Var_0_2_6_4) -> 
      (match _lh_termEq_arg2_1_3_2 with
        | `Var(_lh_termEq_Var_0_2_6_5) -> 
          (_lh_termEq_Var_0_2_6_4 = _lh_termEq_Var_0_2_6_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_6_4, _lh_termEq_Fun_1_2_6_4, _lh_termEq_Fun_2_2_6_4) -> 
      (match _lh_termEq_arg2_1_3_2 with
        | `Fun(_lh_termEq_Fun_0_2_6_5, _lh_termEq_Fun_1_2_6_5, _lh_termEq_Fun_2_2_6_5) -> 
          ((_lh_termEq_Fun_0_2_6_4 = _lh_termEq_Fun_0_2_6_5) && ((termLsEq_d0_d0_d1_d0_d8 _lh_termEq_Fun_1_2_6_4) _lh_termEq_Fun_1_2_6_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d0_d9 _lh_termEq_arg1_8_0 _lh_termEq_arg2_8_0 =
  (match _lh_termEq_arg1_8_0 with
    | `Var(_lh_termEq_Var_0_1_6_0) -> 
      (match _lh_termEq_arg2_8_0 with
        | `Var(_lh_termEq_Var_0_1_6_1) -> 
          (_lh_termEq_Var_0_1_6_0 = _lh_termEq_Var_0_1_6_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_6_0, _lh_termEq_Fun_1_1_6_0, _lh_termEq_Fun_2_1_6_0) -> 
      (match _lh_termEq_arg2_8_0 with
        | `Fun(_lh_termEq_Fun_0_1_6_1, _lh_termEq_Fun_1_1_6_1, _lh_termEq_Fun_2_1_6_1) -> 
          ((_lh_termEq_Fun_0_1_6_0 = _lh_termEq_Fun_0_1_6_1) && ((termLsEq_d0_d0_d1_d0_d9 _lh_termEq_Fun_1_1_6_0) _lh_termEq_Fun_1_1_6_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1 _lh_termEq_arg1_4_8 _lh_termEq_arg2_4_8 =
  (match _lh_termEq_arg1_4_8 with
    | `Var(_lh_termEq_Var_0_9_6) -> 
      (match _lh_termEq_arg2_4_8 with
        | `Var(_lh_termEq_Var_0_9_7) -> 
          (_lh_termEq_Var_0_9_6 = _lh_termEq_Var_0_9_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_9_6, _lh_termEq_Fun_1_9_6, _lh_termEq_Fun_2_9_6) -> 
      (match _lh_termEq_arg2_4_8 with
        | `Fun(_lh_termEq_Fun_0_9_7, _lh_termEq_Fun_1_9_7, _lh_termEq_Fun_2_9_7) -> 
          ((_lh_termEq_Fun_0_9_6 = _lh_termEq_Fun_0_9_7) && ((termLsEq_d0_d0_d1_d1 _lh_termEq_Fun_1_9_6) _lh_termEq_Fun_1_9_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d0 _lh_termEq_arg1_1_1_6 _lh_termEq_arg2_1_1_6 =
  (match _lh_termEq_arg1_1_1_6 with
    | `Var(_lh_termEq_Var_0_2_3_2) -> 
      (match _lh_termEq_arg2_1_1_6 with
        | `Var(_lh_termEq_Var_0_2_3_3) -> 
          (_lh_termEq_Var_0_2_3_2 = _lh_termEq_Var_0_2_3_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_3_2, _lh_termEq_Fun_1_2_3_2, _lh_termEq_Fun_2_2_3_2) -> 
      (match _lh_termEq_arg2_1_1_6 with
        | `Fun(_lh_termEq_Fun_0_2_3_3, _lh_termEq_Fun_1_2_3_3, _lh_termEq_Fun_2_2_3_3) -> 
          ((_lh_termEq_Fun_0_2_3_2 = _lh_termEq_Fun_0_2_3_3) && ((termLsEq_d0_d0_d1_d1_d0 _lh_termEq_Fun_1_2_3_2) _lh_termEq_Fun_1_2_3_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d1 _lh_termEq_arg1_3_0 _lh_termEq_arg2_3_0 =
  (match _lh_termEq_arg1_3_0 with
    | `Var(_lh_termEq_Var_0_6_0) -> 
      (match _lh_termEq_arg2_3_0 with
        | `Var(_lh_termEq_Var_0_6_1) -> 
          (_lh_termEq_Var_0_6_0 = _lh_termEq_Var_0_6_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_6_0, _lh_termEq_Fun_1_6_0, _lh_termEq_Fun_2_6_0) -> 
      (match _lh_termEq_arg2_3_0 with
        | `Fun(_lh_termEq_Fun_0_6_1, _lh_termEq_Fun_1_6_1, _lh_termEq_Fun_2_6_1) -> 
          ((_lh_termEq_Fun_0_6_0 = _lh_termEq_Fun_0_6_1) && ((termLsEq_d0_d0_d1_d1_d1 _lh_termEq_Fun_1_6_0) _lh_termEq_Fun_1_6_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d2 _lh_termEq_arg1_1_1_3 _lh_termEq_arg2_1_1_3 =
  (match _lh_termEq_arg1_1_1_3 with
    | `Var(_lh_termEq_Var_0_2_2_6) -> 
      (match _lh_termEq_arg2_1_1_3 with
        | `Var(_lh_termEq_Var_0_2_2_7) -> 
          (_lh_termEq_Var_0_2_2_6 = _lh_termEq_Var_0_2_2_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_2_6, _lh_termEq_Fun_1_2_2_6, _lh_termEq_Fun_2_2_2_6) -> 
      (match _lh_termEq_arg2_1_1_3 with
        | `Fun(_lh_termEq_Fun_0_2_2_7, _lh_termEq_Fun_1_2_2_7, _lh_termEq_Fun_2_2_2_7) -> 
          ((_lh_termEq_Fun_0_2_2_6 = _lh_termEq_Fun_0_2_2_7) && ((termLsEq_d0_d0_d1_d1_d2 _lh_termEq_Fun_1_2_2_6) _lh_termEq_Fun_1_2_2_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d3 _lh_termEq_arg1_6_4 _lh_termEq_arg2_6_4 =
  (match _lh_termEq_arg1_6_4 with
    | `Var(_lh_termEq_Var_0_1_2_8) -> 
      (match _lh_termEq_arg2_6_4 with
        | `Var(_lh_termEq_Var_0_1_2_9) -> 
          (_lh_termEq_Var_0_1_2_8 = _lh_termEq_Var_0_1_2_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_2_8, _lh_termEq_Fun_1_1_2_8, _lh_termEq_Fun_2_1_2_8) -> 
      (match _lh_termEq_arg2_6_4 with
        | `Fun(_lh_termEq_Fun_0_1_2_9, _lh_termEq_Fun_1_1_2_9, _lh_termEq_Fun_2_1_2_9) -> 
          ((_lh_termEq_Fun_0_1_2_8 = _lh_termEq_Fun_0_1_2_9) && ((termLsEq_d0_d0_d1_d1_d3 _lh_termEq_Fun_1_1_2_8) _lh_termEq_Fun_1_1_2_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d4 _lh_termEq_arg1_8_9 _lh_termEq_arg2_8_9 =
  (match _lh_termEq_arg1_8_9 with
    | `Var(_lh_termEq_Var_0_1_7_8) -> 
      (match _lh_termEq_arg2_8_9 with
        | `Var(_lh_termEq_Var_0_1_7_9) -> 
          (_lh_termEq_Var_0_1_7_8 = _lh_termEq_Var_0_1_7_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_7_8, _lh_termEq_Fun_1_1_7_8, _lh_termEq_Fun_2_1_7_8) -> 
      (match _lh_termEq_arg2_8_9 with
        | `Fun(_lh_termEq_Fun_0_1_7_9, _lh_termEq_Fun_1_1_7_9, _lh_termEq_Fun_2_1_7_9) -> 
          ((_lh_termEq_Fun_0_1_7_8 = _lh_termEq_Fun_0_1_7_9) && ((termLsEq_d0_d0_d1_d1_d4 _lh_termEq_Fun_1_1_7_8) _lh_termEq_Fun_1_1_7_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d5 _lh_termEq_arg1_1_9 _lh_termEq_arg2_1_9 =
  (match _lh_termEq_arg1_1_9 with
    | `Var(_lh_termEq_Var_0_3_8) -> 
      (match _lh_termEq_arg2_1_9 with
        | `Var(_lh_termEq_Var_0_3_9) -> 
          (_lh_termEq_Var_0_3_8 = _lh_termEq_Var_0_3_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_3_8, _lh_termEq_Fun_1_3_8, _lh_termEq_Fun_2_3_8) -> 
      (match _lh_termEq_arg2_1_9 with
        | `Fun(_lh_termEq_Fun_0_3_9, _lh_termEq_Fun_1_3_9, _lh_termEq_Fun_2_3_9) -> 
          ((_lh_termEq_Fun_0_3_8 = _lh_termEq_Fun_0_3_9) && ((termLsEq_d0_d0_d1_d1_d5 _lh_termEq_Fun_1_3_8) _lh_termEq_Fun_1_3_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d6 _lh_termEq_arg1_1_1_4 _lh_termEq_arg2_1_1_4 =
  (match _lh_termEq_arg1_1_1_4 with
    | `Var(_lh_termEq_Var_0_2_2_8) -> 
      (match _lh_termEq_arg2_1_1_4 with
        | `Var(_lh_termEq_Var_0_2_2_9) -> 
          (_lh_termEq_Var_0_2_2_8 = _lh_termEq_Var_0_2_2_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_2_8, _lh_termEq_Fun_1_2_2_8, _lh_termEq_Fun_2_2_2_8) -> 
      (match _lh_termEq_arg2_1_1_4 with
        | `Fun(_lh_termEq_Fun_0_2_2_9, _lh_termEq_Fun_1_2_2_9, _lh_termEq_Fun_2_2_2_9) -> 
          ((_lh_termEq_Fun_0_2_2_8 = _lh_termEq_Fun_0_2_2_9) && ((termLsEq_d0_d0_d1_d1_d6 _lh_termEq_Fun_1_2_2_8) _lh_termEq_Fun_1_2_2_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d7 _lh_termEq_arg1_2_1 _lh_termEq_arg2_2_1 =
  (match _lh_termEq_arg1_2_1 with
    | `Var(_lh_termEq_Var_0_4_2) -> 
      (match _lh_termEq_arg2_2_1 with
        | `Var(_lh_termEq_Var_0_4_3) -> 
          (_lh_termEq_Var_0_4_2 = _lh_termEq_Var_0_4_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_4_2, _lh_termEq_Fun_1_4_2, _lh_termEq_Fun_2_4_2) -> 
      (match _lh_termEq_arg2_2_1 with
        | `Fun(_lh_termEq_Fun_0_4_3, _lh_termEq_Fun_1_4_3, _lh_termEq_Fun_2_4_3) -> 
          ((_lh_termEq_Fun_0_4_2 = _lh_termEq_Fun_0_4_3) && ((termLsEq_d0_d0_d1_d1_d7 _lh_termEq_Fun_1_4_2) _lh_termEq_Fun_1_4_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d8 _lh_termEq_arg1_6_5 _lh_termEq_arg2_6_5 =
  (match _lh_termEq_arg1_6_5 with
    | `Var(_lh_termEq_Var_0_1_3_0) -> 
      (match _lh_termEq_arg2_6_5 with
        | `Var(_lh_termEq_Var_0_1_3_1) -> 
          (_lh_termEq_Var_0_1_3_0 = _lh_termEq_Var_0_1_3_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_3_0, _lh_termEq_Fun_1_1_3_0, _lh_termEq_Fun_2_1_3_0) -> 
      (match _lh_termEq_arg2_6_5 with
        | `Fun(_lh_termEq_Fun_0_1_3_1, _lh_termEq_Fun_1_1_3_1, _lh_termEq_Fun_2_1_3_1) -> 
          ((_lh_termEq_Fun_0_1_3_0 = _lh_termEq_Fun_0_1_3_1) && ((termLsEq_d0_d0_d1_d1_d8 _lh_termEq_Fun_1_1_3_0) _lh_termEq_Fun_1_1_3_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d1_d9 _lh_termEq_arg1_7_9 _lh_termEq_arg2_7_9 =
  (match _lh_termEq_arg1_7_9 with
    | `Var(_lh_termEq_Var_0_1_5_8) -> 
      (match _lh_termEq_arg2_7_9 with
        | `Var(_lh_termEq_Var_0_1_5_9) -> 
          (_lh_termEq_Var_0_1_5_8 = _lh_termEq_Var_0_1_5_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_5_8, _lh_termEq_Fun_1_1_5_8, _lh_termEq_Fun_2_1_5_8) -> 
      (match _lh_termEq_arg2_7_9 with
        | `Fun(_lh_termEq_Fun_0_1_5_9, _lh_termEq_Fun_1_1_5_9, _lh_termEq_Fun_2_1_5_9) -> 
          ((_lh_termEq_Fun_0_1_5_8 = _lh_termEq_Fun_0_1_5_9) && ((termLsEq_d0_d0_d1_d1_d9 _lh_termEq_Fun_1_1_5_8) _lh_termEq_Fun_1_1_5_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d2 _lh_termEq_arg1_1_3_5 _lh_termEq_arg2_1_3_5 =
  (match _lh_termEq_arg1_1_3_5 with
    | `Var(_lh_termEq_Var_0_2_7_0) -> 
      (match _lh_termEq_arg2_1_3_5 with
        | `Var(_lh_termEq_Var_0_2_7_1) -> 
          (_lh_termEq_Var_0_2_7_0 = _lh_termEq_Var_0_2_7_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_7_0, _lh_termEq_Fun_1_2_7_0, _lh_termEq_Fun_2_2_7_0) -> 
      (match _lh_termEq_arg2_1_3_5 with
        | `Fun(_lh_termEq_Fun_0_2_7_1, _lh_termEq_Fun_1_2_7_1, _lh_termEq_Fun_2_2_7_1) -> 
          ((_lh_termEq_Fun_0_2_7_0 = _lh_termEq_Fun_0_2_7_1) && ((termLsEq_d0_d0_d1_d2 _lh_termEq_Fun_1_2_7_0) _lh_termEq_Fun_1_2_7_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d2_d0 _lh_termEq_arg1_1_3 _lh_termEq_arg2_1_3 =
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
          ((_lh_termEq_Fun_0_2_6 = _lh_termEq_Fun_0_2_7) && ((termLsEq_d0_d0_d1_d2_d0 _lh_termEq_Fun_1_2_6) _lh_termEq_Fun_1_2_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d2_d1 _lh_termEq_arg1_3_8 _lh_termEq_arg2_3_8 =
  (match _lh_termEq_arg1_3_8 with
    | `Var(_lh_termEq_Var_0_7_6) -> 
      (match _lh_termEq_arg2_3_8 with
        | `Var(_lh_termEq_Var_0_7_7) -> 
          (_lh_termEq_Var_0_7_6 = _lh_termEq_Var_0_7_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_7_6, _lh_termEq_Fun_1_7_6, _lh_termEq_Fun_2_7_6) -> 
      (match _lh_termEq_arg2_3_8 with
        | `Fun(_lh_termEq_Fun_0_7_7, _lh_termEq_Fun_1_7_7, _lh_termEq_Fun_2_7_7) -> 
          ((_lh_termEq_Fun_0_7_6 = _lh_termEq_Fun_0_7_7) && ((termLsEq_d0_d0_d1_d2_d1 _lh_termEq_Fun_1_7_6) _lh_termEq_Fun_1_7_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d3 _lh_termEq_arg1_1_2_1 _lh_termEq_arg2_1_2_1 =
  (match _lh_termEq_arg1_1_2_1 with
    | `Var(_lh_termEq_Var_0_2_4_2) -> 
      (match _lh_termEq_arg2_1_2_1 with
        | `Var(_lh_termEq_Var_0_2_4_3) -> 
          (_lh_termEq_Var_0_2_4_2 = _lh_termEq_Var_0_2_4_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_4_2, _lh_termEq_Fun_1_2_4_2, _lh_termEq_Fun_2_2_4_2) -> 
      (match _lh_termEq_arg2_1_2_1 with
        | `Fun(_lh_termEq_Fun_0_2_4_3, _lh_termEq_Fun_1_2_4_3, _lh_termEq_Fun_2_2_4_3) -> 
          ((_lh_termEq_Fun_0_2_4_2 = _lh_termEq_Fun_0_2_4_3) && ((termLsEq_d0_d0_d1_d3 _lh_termEq_Fun_1_2_4_2) _lh_termEq_Fun_1_2_4_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d4 _lh_termEq_arg1_1_2_8 _lh_termEq_arg2_1_2_8 =
  (match _lh_termEq_arg1_1_2_8 with
    | `Var(_lh_termEq_Var_0_2_5_6) -> 
      (match _lh_termEq_arg2_1_2_8 with
        | `Var(_lh_termEq_Var_0_2_5_7) -> 
          (_lh_termEq_Var_0_2_5_6 = _lh_termEq_Var_0_2_5_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_5_6, _lh_termEq_Fun_1_2_5_6, _lh_termEq_Fun_2_2_5_6) -> 
      (match _lh_termEq_arg2_1_2_8 with
        | `Fun(_lh_termEq_Fun_0_2_5_7, _lh_termEq_Fun_1_2_5_7, _lh_termEq_Fun_2_2_5_7) -> 
          ((_lh_termEq_Fun_0_2_5_6 = _lh_termEq_Fun_0_2_5_7) && ((termLsEq_d0_d0_d1_d4 _lh_termEq_Fun_1_2_5_6) _lh_termEq_Fun_1_2_5_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d5 _lh_termEq_arg1_8_8 _lh_termEq_arg2_8_8 =
  (match _lh_termEq_arg1_8_8 with
    | `Var(_lh_termEq_Var_0_1_7_6) -> 
      (match _lh_termEq_arg2_8_8 with
        | `Var(_lh_termEq_Var_0_1_7_7) -> 
          (_lh_termEq_Var_0_1_7_6 = _lh_termEq_Var_0_1_7_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_7_6, _lh_termEq_Fun_1_1_7_6, _lh_termEq_Fun_2_1_7_6) -> 
      (match _lh_termEq_arg2_8_8 with
        | `Fun(_lh_termEq_Fun_0_1_7_7, _lh_termEq_Fun_1_1_7_7, _lh_termEq_Fun_2_1_7_7) -> 
          ((_lh_termEq_Fun_0_1_7_6 = _lh_termEq_Fun_0_1_7_7) && ((termLsEq_d0_d0_d1_d5 _lh_termEq_Fun_1_1_7_6) _lh_termEq_Fun_1_1_7_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d6 _lh_termEq_arg1_6_1 _lh_termEq_arg2_6_1 =
  (match _lh_termEq_arg1_6_1 with
    | `Var(_lh_termEq_Var_0_1_2_2) -> 
      (match _lh_termEq_arg2_6_1 with
        | `Var(_lh_termEq_Var_0_1_2_3) -> 
          (_lh_termEq_Var_0_1_2_2 = _lh_termEq_Var_0_1_2_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_2_2, _lh_termEq_Fun_1_1_2_2, _lh_termEq_Fun_2_1_2_2) -> 
      (match _lh_termEq_arg2_6_1 with
        | `Fun(_lh_termEq_Fun_0_1_2_3, _lh_termEq_Fun_1_1_2_3, _lh_termEq_Fun_2_1_2_3) -> 
          ((_lh_termEq_Fun_0_1_2_2 = _lh_termEq_Fun_0_1_2_3) && ((termLsEq_d0_d0_d1_d6 _lh_termEq_Fun_1_1_2_2) _lh_termEq_Fun_1_1_2_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d7 _lh_termEq_arg1_4_1 _lh_termEq_arg2_4_1 =
  (match _lh_termEq_arg1_4_1 with
    | `Var(_lh_termEq_Var_0_8_2) -> 
      (match _lh_termEq_arg2_4_1 with
        | `Var(_lh_termEq_Var_0_8_3) -> 
          (_lh_termEq_Var_0_8_2 = _lh_termEq_Var_0_8_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_8_2, _lh_termEq_Fun_1_8_2, _lh_termEq_Fun_2_8_2) -> 
      (match _lh_termEq_arg2_4_1 with
        | `Fun(_lh_termEq_Fun_0_8_3, _lh_termEq_Fun_1_8_3, _lh_termEq_Fun_2_8_3) -> 
          ((_lh_termEq_Fun_0_8_2 = _lh_termEq_Fun_0_8_3) && ((termLsEq_d0_d0_d1_d7 _lh_termEq_Fun_1_8_2) _lh_termEq_Fun_1_8_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d8 _lh_termEq_arg1_6_3 _lh_termEq_arg2_6_3 =
  (match _lh_termEq_arg1_6_3 with
    | `Var(_lh_termEq_Var_0_1_2_6) -> 
      (match _lh_termEq_arg2_6_3 with
        | `Var(_lh_termEq_Var_0_1_2_7) -> 
          (_lh_termEq_Var_0_1_2_6 = _lh_termEq_Var_0_1_2_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_2_6, _lh_termEq_Fun_1_1_2_6, _lh_termEq_Fun_2_1_2_6) -> 
      (match _lh_termEq_arg2_6_3 with
        | `Fun(_lh_termEq_Fun_0_1_2_7, _lh_termEq_Fun_1_1_2_7, _lh_termEq_Fun_2_1_2_7) -> 
          ((_lh_termEq_Fun_0_1_2_6 = _lh_termEq_Fun_0_1_2_7) && ((termLsEq_d0_d0_d1_d8 _lh_termEq_Fun_1_1_2_6) _lh_termEq_Fun_1_1_2_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d1_d9 _lh_termEq_arg1_3_9 _lh_termEq_arg2_3_9 =
  (match _lh_termEq_arg1_3_9 with
    | `Var(_lh_termEq_Var_0_7_8) -> 
      (match _lh_termEq_arg2_3_9 with
        | `Var(_lh_termEq_Var_0_7_9) -> 
          (_lh_termEq_Var_0_7_8 = _lh_termEq_Var_0_7_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_7_8, _lh_termEq_Fun_1_7_8, _lh_termEq_Fun_2_7_8) -> 
      (match _lh_termEq_arg2_3_9 with
        | `Fun(_lh_termEq_Fun_0_7_9, _lh_termEq_Fun_1_7_9, _lh_termEq_Fun_2_7_9) -> 
          ((_lh_termEq_Fun_0_7_8 = _lh_termEq_Fun_0_7_9) && ((termLsEq_d0_d0_d1_d9 _lh_termEq_Fun_1_7_8) _lh_termEq_Fun_1_7_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2 _lh_termEq_arg1_4_5 _lh_termEq_arg2_4_5 =
  (match _lh_termEq_arg1_4_5 with
    | `Var(_lh_termEq_Var_0_9_0) -> 
      (match _lh_termEq_arg2_4_5 with
        | `Var(_lh_termEq_Var_0_9_1) -> 
          (_lh_termEq_Var_0_9_0 = _lh_termEq_Var_0_9_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_9_0, _lh_termEq_Fun_1_9_0, _lh_termEq_Fun_2_9_0) -> 
      (match _lh_termEq_arg2_4_5 with
        | `Fun(_lh_termEq_Fun_0_9_1, _lh_termEq_Fun_1_9_1, _lh_termEq_Fun_2_9_1) -> 
          ((_lh_termEq_Fun_0_9_0 = _lh_termEq_Fun_0_9_1) && ((termLsEq_d0_d0_d2 _lh_termEq_Fun_1_9_0) _lh_termEq_Fun_1_9_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d0 _lh_termEq_arg1_1_2_6 _lh_termEq_arg2_1_2_6 =
  (match _lh_termEq_arg1_1_2_6 with
    | `Var(_lh_termEq_Var_0_2_5_2) -> 
      (match _lh_termEq_arg2_1_2_6 with
        | `Var(_lh_termEq_Var_0_2_5_3) -> 
          (_lh_termEq_Var_0_2_5_2 = _lh_termEq_Var_0_2_5_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_5_2, _lh_termEq_Fun_1_2_5_2, _lh_termEq_Fun_2_2_5_2) -> 
      (match _lh_termEq_arg2_1_2_6 with
        | `Fun(_lh_termEq_Fun_0_2_5_3, _lh_termEq_Fun_1_2_5_3, _lh_termEq_Fun_2_2_5_3) -> 
          ((_lh_termEq_Fun_0_2_5_2 = _lh_termEq_Fun_0_2_5_3) && ((termLsEq_d0_d0_d2_d0 _lh_termEq_Fun_1_2_5_2) _lh_termEq_Fun_1_2_5_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d1 _lh_termEq_arg1_8_7 _lh_termEq_arg2_8_7 =
  (match _lh_termEq_arg1_8_7 with
    | `Var(_lh_termEq_Var_0_1_7_4) -> 
      (match _lh_termEq_arg2_8_7 with
        | `Var(_lh_termEq_Var_0_1_7_5) -> 
          (_lh_termEq_Var_0_1_7_4 = _lh_termEq_Var_0_1_7_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_7_4, _lh_termEq_Fun_1_1_7_4, _lh_termEq_Fun_2_1_7_4) -> 
      (match _lh_termEq_arg2_8_7 with
        | `Fun(_lh_termEq_Fun_0_1_7_5, _lh_termEq_Fun_1_1_7_5, _lh_termEq_Fun_2_1_7_5) -> 
          ((_lh_termEq_Fun_0_1_7_4 = _lh_termEq_Fun_0_1_7_5) && ((termLsEq_d0_d0_d2_d1 _lh_termEq_Fun_1_1_7_4) _lh_termEq_Fun_1_1_7_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d2 _lh_termEq_arg1_7_1 _lh_termEq_arg2_7_1 =
  (match _lh_termEq_arg1_7_1 with
    | `Var(_lh_termEq_Var_0_1_4_2) -> 
      (match _lh_termEq_arg2_7_1 with
        | `Var(_lh_termEq_Var_0_1_4_3) -> 
          (_lh_termEq_Var_0_1_4_2 = _lh_termEq_Var_0_1_4_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_4_2, _lh_termEq_Fun_1_1_4_2, _lh_termEq_Fun_2_1_4_2) -> 
      (match _lh_termEq_arg2_7_1 with
        | `Fun(_lh_termEq_Fun_0_1_4_3, _lh_termEq_Fun_1_1_4_3, _lh_termEq_Fun_2_1_4_3) -> 
          ((_lh_termEq_Fun_0_1_4_2 = _lh_termEq_Fun_0_1_4_3) && ((termLsEq_d0_d0_d2_d2 _lh_termEq_Fun_1_1_4_2) _lh_termEq_Fun_1_1_4_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d3 _lh_termEq_arg1_2_6 _lh_termEq_arg2_2_6 =
  (match _lh_termEq_arg1_2_6 with
    | `Var(_lh_termEq_Var_0_5_2) -> 
      (match _lh_termEq_arg2_2_6 with
        | `Var(_lh_termEq_Var_0_5_3) -> 
          (_lh_termEq_Var_0_5_2 = _lh_termEq_Var_0_5_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_5_2, _lh_termEq_Fun_1_5_2, _lh_termEq_Fun_2_5_2) -> 
      (match _lh_termEq_arg2_2_6 with
        | `Fun(_lh_termEq_Fun_0_5_3, _lh_termEq_Fun_1_5_3, _lh_termEq_Fun_2_5_3) -> 
          ((_lh_termEq_Fun_0_5_2 = _lh_termEq_Fun_0_5_3) && ((termLsEq_d0_d0_d2_d3 _lh_termEq_Fun_1_5_2) _lh_termEq_Fun_1_5_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d4 _lh_termEq_arg1_7_7 _lh_termEq_arg2_7_7 =
  (match _lh_termEq_arg1_7_7 with
    | `Var(_lh_termEq_Var_0_1_5_4) -> 
      (match _lh_termEq_arg2_7_7 with
        | `Var(_lh_termEq_Var_0_1_5_5) -> 
          (_lh_termEq_Var_0_1_5_4 = _lh_termEq_Var_0_1_5_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_5_4, _lh_termEq_Fun_1_1_5_4, _lh_termEq_Fun_2_1_5_4) -> 
      (match _lh_termEq_arg2_7_7 with
        | `Fun(_lh_termEq_Fun_0_1_5_5, _lh_termEq_Fun_1_1_5_5, _lh_termEq_Fun_2_1_5_5) -> 
          ((_lh_termEq_Fun_0_1_5_4 = _lh_termEq_Fun_0_1_5_5) && ((termLsEq_d0_d0_d2_d4 _lh_termEq_Fun_1_1_5_4) _lh_termEq_Fun_1_1_5_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d5 _lh_termEq_arg1_6_8 _lh_termEq_arg2_6_8 =
  (match _lh_termEq_arg1_6_8 with
    | `Var(_lh_termEq_Var_0_1_3_6) -> 
      (match _lh_termEq_arg2_6_8 with
        | `Var(_lh_termEq_Var_0_1_3_7) -> 
          (_lh_termEq_Var_0_1_3_6 = _lh_termEq_Var_0_1_3_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_3_6, _lh_termEq_Fun_1_1_3_6, _lh_termEq_Fun_2_1_3_6) -> 
      (match _lh_termEq_arg2_6_8 with
        | `Fun(_lh_termEq_Fun_0_1_3_7, _lh_termEq_Fun_1_1_3_7, _lh_termEq_Fun_2_1_3_7) -> 
          ((_lh_termEq_Fun_0_1_3_6 = _lh_termEq_Fun_0_1_3_7) && ((termLsEq_d0_d0_d2_d5 _lh_termEq_Fun_1_1_3_6) _lh_termEq_Fun_1_1_3_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d6 _lh_termEq_arg1_1_2_2 _lh_termEq_arg2_1_2_2 =
  (match _lh_termEq_arg1_1_2_2 with
    | `Var(_lh_termEq_Var_0_2_4_4) -> 
      (match _lh_termEq_arg2_1_2_2 with
        | `Var(_lh_termEq_Var_0_2_4_5) -> 
          (_lh_termEq_Var_0_2_4_4 = _lh_termEq_Var_0_2_4_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_4_4, _lh_termEq_Fun_1_2_4_4, _lh_termEq_Fun_2_2_4_4) -> 
      (match _lh_termEq_arg2_1_2_2 with
        | `Fun(_lh_termEq_Fun_0_2_4_5, _lh_termEq_Fun_1_2_4_5, _lh_termEq_Fun_2_2_4_5) -> 
          ((_lh_termEq_Fun_0_2_4_4 = _lh_termEq_Fun_0_2_4_5) && ((termLsEq_d0_d0_d2_d6 _lh_termEq_Fun_1_2_4_4) _lh_termEq_Fun_1_2_4_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d7 _lh_termEq_arg1_1_5 _lh_termEq_arg2_1_5 =
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
          ((_lh_termEq_Fun_0_3_0 = _lh_termEq_Fun_0_3_1) && ((termLsEq_d0_d0_d2_d7 _lh_termEq_Fun_1_3_0) _lh_termEq_Fun_1_3_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d8 _lh_termEq_arg1_1_4 _lh_termEq_arg2_1_4 =
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
          ((_lh_termEq_Fun_0_2_8 = _lh_termEq_Fun_0_2_9) && ((termLsEq_d0_d0_d2_d8 _lh_termEq_Fun_1_2_8) _lh_termEq_Fun_1_2_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d2_d9 _lh_termEq_arg1_3_7 _lh_termEq_arg2_3_7 =
  (match _lh_termEq_arg1_3_7 with
    | `Var(_lh_termEq_Var_0_7_4) -> 
      (match _lh_termEq_arg2_3_7 with
        | `Var(_lh_termEq_Var_0_7_5) -> 
          (_lh_termEq_Var_0_7_4 = _lh_termEq_Var_0_7_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_7_4, _lh_termEq_Fun_1_7_4, _lh_termEq_Fun_2_7_4) -> 
      (match _lh_termEq_arg2_3_7 with
        | `Fun(_lh_termEq_Fun_0_7_5, _lh_termEq_Fun_1_7_5, _lh_termEq_Fun_2_7_5) -> 
          ((_lh_termEq_Fun_0_7_4 = _lh_termEq_Fun_0_7_5) && ((termLsEq_d0_d0_d2_d9 _lh_termEq_Fun_1_7_4) _lh_termEq_Fun_1_7_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3 _lh_termEq_arg1_9_0 _lh_termEq_arg2_9_0 =
  (match _lh_termEq_arg1_9_0 with
    | `Var(_lh_termEq_Var_0_1_8_0) -> 
      (match _lh_termEq_arg2_9_0 with
        | `Var(_lh_termEq_Var_0_1_8_1) -> 
          (_lh_termEq_Var_0_1_8_0 = _lh_termEq_Var_0_1_8_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_8_0, _lh_termEq_Fun_1_1_8_0, _lh_termEq_Fun_2_1_8_0) -> 
      (match _lh_termEq_arg2_9_0 with
        | `Fun(_lh_termEq_Fun_0_1_8_1, _lh_termEq_Fun_1_1_8_1, _lh_termEq_Fun_2_1_8_1) -> 
          ((_lh_termEq_Fun_0_1_8_0 = _lh_termEq_Fun_0_1_8_1) && ((termLsEq_d0_d0_d3 _lh_termEq_Fun_1_1_8_0) _lh_termEq_Fun_1_1_8_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d0 _lh_termEq_arg1_5_7 _lh_termEq_arg2_5_7 =
  (match _lh_termEq_arg1_5_7 with
    | `Var(_lh_termEq_Var_0_1_1_4) -> 
      (match _lh_termEq_arg2_5_7 with
        | `Var(_lh_termEq_Var_0_1_1_5) -> 
          (_lh_termEq_Var_0_1_1_4 = _lh_termEq_Var_0_1_1_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_1_4, _lh_termEq_Fun_1_1_1_4, _lh_termEq_Fun_2_1_1_4) -> 
      (match _lh_termEq_arg2_5_7 with
        | `Fun(_lh_termEq_Fun_0_1_1_5, _lh_termEq_Fun_1_1_1_5, _lh_termEq_Fun_2_1_1_5) -> 
          ((_lh_termEq_Fun_0_1_1_4 = _lh_termEq_Fun_0_1_1_5) && ((termLsEq_d0_d0_d3_d0 _lh_termEq_Fun_1_1_1_4) _lh_termEq_Fun_1_1_1_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d1 _lh_termEq_arg1_5_8 _lh_termEq_arg2_5_8 =
  (match _lh_termEq_arg1_5_8 with
    | `Var(_lh_termEq_Var_0_1_1_6) -> 
      (match _lh_termEq_arg2_5_8 with
        | `Var(_lh_termEq_Var_0_1_1_7) -> 
          (_lh_termEq_Var_0_1_1_6 = _lh_termEq_Var_0_1_1_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_1_6, _lh_termEq_Fun_1_1_1_6, _lh_termEq_Fun_2_1_1_6) -> 
      (match _lh_termEq_arg2_5_8 with
        | `Fun(_lh_termEq_Fun_0_1_1_7, _lh_termEq_Fun_1_1_1_7, _lh_termEq_Fun_2_1_1_7) -> 
          ((_lh_termEq_Fun_0_1_1_6 = _lh_termEq_Fun_0_1_1_7) && ((termLsEq_d0_d0_d3_d1 _lh_termEq_Fun_1_1_1_6) _lh_termEq_Fun_1_1_1_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d2 _lh_termEq_arg1_5_4 _lh_termEq_arg2_5_4 =
  (match _lh_termEq_arg1_5_4 with
    | `Var(_lh_termEq_Var_0_1_0_8) -> 
      (match _lh_termEq_arg2_5_4 with
        | `Var(_lh_termEq_Var_0_1_0_9) -> 
          (_lh_termEq_Var_0_1_0_8 = _lh_termEq_Var_0_1_0_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_0_8, _lh_termEq_Fun_1_1_0_8, _lh_termEq_Fun_2_1_0_8) -> 
      (match _lh_termEq_arg2_5_4 with
        | `Fun(_lh_termEq_Fun_0_1_0_9, _lh_termEq_Fun_1_1_0_9, _lh_termEq_Fun_2_1_0_9) -> 
          ((_lh_termEq_Fun_0_1_0_8 = _lh_termEq_Fun_0_1_0_9) && ((termLsEq_d0_d0_d3_d2 _lh_termEq_Fun_1_1_0_8) _lh_termEq_Fun_1_1_0_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d3 _lh_termEq_arg1_1_0 _lh_termEq_arg2_1_0 =
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
          ((_lh_termEq_Fun_0_2_0 = _lh_termEq_Fun_0_2_1) && ((termLsEq_d0_d0_d3_d3 _lh_termEq_Fun_1_2_0) _lh_termEq_Fun_1_2_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d4 _lh_termEq_arg1_3_2 _lh_termEq_arg2_3_2 =
  (match _lh_termEq_arg1_3_2 with
    | `Var(_lh_termEq_Var_0_6_4) -> 
      (match _lh_termEq_arg2_3_2 with
        | `Var(_lh_termEq_Var_0_6_5) -> 
          (_lh_termEq_Var_0_6_4 = _lh_termEq_Var_0_6_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_6_4, _lh_termEq_Fun_1_6_4, _lh_termEq_Fun_2_6_4) -> 
      (match _lh_termEq_arg2_3_2 with
        | `Fun(_lh_termEq_Fun_0_6_5, _lh_termEq_Fun_1_6_5, _lh_termEq_Fun_2_6_5) -> 
          ((_lh_termEq_Fun_0_6_4 = _lh_termEq_Fun_0_6_5) && ((termLsEq_d0_d0_d3_d4 _lh_termEq_Fun_1_6_4) _lh_termEq_Fun_1_6_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d5 _lh_termEq_arg1_4_2 _lh_termEq_arg2_4_2 =
  (match _lh_termEq_arg1_4_2 with
    | `Var(_lh_termEq_Var_0_8_4) -> 
      (match _lh_termEq_arg2_4_2 with
        | `Var(_lh_termEq_Var_0_8_5) -> 
          (_lh_termEq_Var_0_8_4 = _lh_termEq_Var_0_8_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_8_4, _lh_termEq_Fun_1_8_4, _lh_termEq_Fun_2_8_4) -> 
      (match _lh_termEq_arg2_4_2 with
        | `Fun(_lh_termEq_Fun_0_8_5, _lh_termEq_Fun_1_8_5, _lh_termEq_Fun_2_8_5) -> 
          ((_lh_termEq_Fun_0_8_4 = _lh_termEq_Fun_0_8_5) && ((termLsEq_d0_d0_d3_d5 _lh_termEq_Fun_1_8_4) _lh_termEq_Fun_1_8_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d6 _lh_termEq_arg1_2_2 _lh_termEq_arg2_2_2 =
  (match _lh_termEq_arg1_2_2 with
    | `Var(_lh_termEq_Var_0_4_4) -> 
      (match _lh_termEq_arg2_2_2 with
        | `Var(_lh_termEq_Var_0_4_5) -> 
          (_lh_termEq_Var_0_4_4 = _lh_termEq_Var_0_4_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_4_4, _lh_termEq_Fun_1_4_4, _lh_termEq_Fun_2_4_4) -> 
      (match _lh_termEq_arg2_2_2 with
        | `Fun(_lh_termEq_Fun_0_4_5, _lh_termEq_Fun_1_4_5, _lh_termEq_Fun_2_4_5) -> 
          ((_lh_termEq_Fun_0_4_4 = _lh_termEq_Fun_0_4_5) && ((termLsEq_d0_d0_d3_d6 _lh_termEq_Fun_1_4_4) _lh_termEq_Fun_1_4_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d7 _lh_termEq_arg1_3_3 _lh_termEq_arg2_3_3 =
  (match _lh_termEq_arg1_3_3 with
    | `Var(_lh_termEq_Var_0_6_6) -> 
      (match _lh_termEq_arg2_3_3 with
        | `Var(_lh_termEq_Var_0_6_7) -> 
          (_lh_termEq_Var_0_6_6 = _lh_termEq_Var_0_6_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_6_6, _lh_termEq_Fun_1_6_6, _lh_termEq_Fun_2_6_6) -> 
      (match _lh_termEq_arg2_3_3 with
        | `Fun(_lh_termEq_Fun_0_6_7, _lh_termEq_Fun_1_6_7, _lh_termEq_Fun_2_6_7) -> 
          ((_lh_termEq_Fun_0_6_6 = _lh_termEq_Fun_0_6_7) && ((termLsEq_d0_d0_d3_d7 _lh_termEq_Fun_1_6_6) _lh_termEq_Fun_1_6_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d8 _lh_termEq_arg1_6_9 _lh_termEq_arg2_6_9 =
  (match _lh_termEq_arg1_6_9 with
    | `Var(_lh_termEq_Var_0_1_3_8) -> 
      (match _lh_termEq_arg2_6_9 with
        | `Var(_lh_termEq_Var_0_1_3_9) -> 
          (_lh_termEq_Var_0_1_3_8 = _lh_termEq_Var_0_1_3_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_3_8, _lh_termEq_Fun_1_1_3_8, _lh_termEq_Fun_2_1_3_8) -> 
      (match _lh_termEq_arg2_6_9 with
        | `Fun(_lh_termEq_Fun_0_1_3_9, _lh_termEq_Fun_1_1_3_9, _lh_termEq_Fun_2_1_3_9) -> 
          ((_lh_termEq_Fun_0_1_3_8 = _lh_termEq_Fun_0_1_3_9) && ((termLsEq_d0_d0_d3_d8 _lh_termEq_Fun_1_1_3_8) _lh_termEq_Fun_1_1_3_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d3_d9 _lh_termEq_arg1_1_2_3 _lh_termEq_arg2_1_2_3 =
  (match _lh_termEq_arg1_1_2_3 with
    | `Var(_lh_termEq_Var_0_2_4_6) -> 
      (match _lh_termEq_arg2_1_2_3 with
        | `Var(_lh_termEq_Var_0_2_4_7) -> 
          (_lh_termEq_Var_0_2_4_6 = _lh_termEq_Var_0_2_4_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_4_6, _lh_termEq_Fun_1_2_4_6, _lh_termEq_Fun_2_2_4_6) -> 
      (match _lh_termEq_arg2_1_2_3 with
        | `Fun(_lh_termEq_Fun_0_2_4_7, _lh_termEq_Fun_1_2_4_7, _lh_termEq_Fun_2_2_4_7) -> 
          ((_lh_termEq_Fun_0_2_4_6 = _lh_termEq_Fun_0_2_4_7) && ((termLsEq_d0_d0_d3_d9 _lh_termEq_Fun_1_2_4_6) _lh_termEq_Fun_1_2_4_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4 _lh_termEq_arg1_6_6 _lh_termEq_arg2_6_6 =
  (match _lh_termEq_arg1_6_6 with
    | `Var(_lh_termEq_Var_0_1_3_2) -> 
      (match _lh_termEq_arg2_6_6 with
        | `Var(_lh_termEq_Var_0_1_3_3) -> 
          (_lh_termEq_Var_0_1_3_2 = _lh_termEq_Var_0_1_3_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_3_2, _lh_termEq_Fun_1_1_3_2, _lh_termEq_Fun_2_1_3_2) -> 
      (match _lh_termEq_arg2_6_6 with
        | `Fun(_lh_termEq_Fun_0_1_3_3, _lh_termEq_Fun_1_1_3_3, _lh_termEq_Fun_2_1_3_3) -> 
          ((_lh_termEq_Fun_0_1_3_2 = _lh_termEq_Fun_0_1_3_3) && ((termLsEq_d0_d0_d4 _lh_termEq_Fun_1_1_3_2) _lh_termEq_Fun_1_1_3_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d0 _lh_termEq_arg1_4_9 _lh_termEq_arg2_4_9 =
  (match _lh_termEq_arg1_4_9 with
    | `Var(_lh_termEq_Var_0_9_8) -> 
      (match _lh_termEq_arg2_4_9 with
        | `Var(_lh_termEq_Var_0_9_9) -> 
          (_lh_termEq_Var_0_9_8 = _lh_termEq_Var_0_9_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_9_8, _lh_termEq_Fun_1_9_8, _lh_termEq_Fun_2_9_8) -> 
      (match _lh_termEq_arg2_4_9 with
        | `Fun(_lh_termEq_Fun_0_9_9, _lh_termEq_Fun_1_9_9, _lh_termEq_Fun_2_9_9) -> 
          ((_lh_termEq_Fun_0_9_8 = _lh_termEq_Fun_0_9_9) && ((termLsEq_d0_d0_d4_d0 _lh_termEq_Fun_1_9_8) _lh_termEq_Fun_1_9_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d1 _lh_termEq_arg1_7_5 _lh_termEq_arg2_7_5 =
  (match _lh_termEq_arg1_7_5 with
    | `Var(_lh_termEq_Var_0_1_5_0) -> 
      (match _lh_termEq_arg2_7_5 with
        | `Var(_lh_termEq_Var_0_1_5_1) -> 
          (_lh_termEq_Var_0_1_5_0 = _lh_termEq_Var_0_1_5_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_5_0, _lh_termEq_Fun_1_1_5_0, _lh_termEq_Fun_2_1_5_0) -> 
      (match _lh_termEq_arg2_7_5 with
        | `Fun(_lh_termEq_Fun_0_1_5_1, _lh_termEq_Fun_1_1_5_1, _lh_termEq_Fun_2_1_5_1) -> 
          ((_lh_termEq_Fun_0_1_5_0 = _lh_termEq_Fun_0_1_5_1) && ((termLsEq_d0_d0_d4_d1 _lh_termEq_Fun_1_1_5_0) _lh_termEq_Fun_1_1_5_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d2 _lh_termEq_arg1_9_6 _lh_termEq_arg2_9_6 =
  (match _lh_termEq_arg1_9_6 with
    | `Var(_lh_termEq_Var_0_1_9_2) -> 
      (match _lh_termEq_arg2_9_6 with
        | `Var(_lh_termEq_Var_0_1_9_3) -> 
          (_lh_termEq_Var_0_1_9_2 = _lh_termEq_Var_0_1_9_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_9_2, _lh_termEq_Fun_1_1_9_2, _lh_termEq_Fun_2_1_9_2) -> 
      (match _lh_termEq_arg2_9_6 with
        | `Fun(_lh_termEq_Fun_0_1_9_3, _lh_termEq_Fun_1_1_9_3, _lh_termEq_Fun_2_1_9_3) -> 
          ((_lh_termEq_Fun_0_1_9_2 = _lh_termEq_Fun_0_1_9_3) && ((termLsEq_d0_d0_d4_d2 _lh_termEq_Fun_1_1_9_2) _lh_termEq_Fun_1_1_9_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d3 _lh_termEq_arg1_2_9 _lh_termEq_arg2_2_9 =
  (match _lh_termEq_arg1_2_9 with
    | `Var(_lh_termEq_Var_0_5_8) -> 
      (match _lh_termEq_arg2_2_9 with
        | `Var(_lh_termEq_Var_0_5_9) -> 
          (_lh_termEq_Var_0_5_8 = _lh_termEq_Var_0_5_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_5_8, _lh_termEq_Fun_1_5_8, _lh_termEq_Fun_2_5_8) -> 
      (match _lh_termEq_arg2_2_9 with
        | `Fun(_lh_termEq_Fun_0_5_9, _lh_termEq_Fun_1_5_9, _lh_termEq_Fun_2_5_9) -> 
          ((_lh_termEq_Fun_0_5_8 = _lh_termEq_Fun_0_5_9) && ((termLsEq_d0_d0_d4_d3 _lh_termEq_Fun_1_5_8) _lh_termEq_Fun_1_5_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d4 _lh_termEq_arg1_9_3 _lh_termEq_arg2_9_3 =
  (match _lh_termEq_arg1_9_3 with
    | `Var(_lh_termEq_Var_0_1_8_6) -> 
      (match _lh_termEq_arg2_9_3 with
        | `Var(_lh_termEq_Var_0_1_8_7) -> 
          (_lh_termEq_Var_0_1_8_6 = _lh_termEq_Var_0_1_8_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_8_6, _lh_termEq_Fun_1_1_8_6, _lh_termEq_Fun_2_1_8_6) -> 
      (match _lh_termEq_arg2_9_3 with
        | `Fun(_lh_termEq_Fun_0_1_8_7, _lh_termEq_Fun_1_1_8_7, _lh_termEq_Fun_2_1_8_7) -> 
          ((_lh_termEq_Fun_0_1_8_6 = _lh_termEq_Fun_0_1_8_7) && ((termLsEq_d0_d0_d4_d4 _lh_termEq_Fun_1_1_8_6) _lh_termEq_Fun_1_1_8_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d5 _lh_termEq_arg1_7_8 _lh_termEq_arg2_7_8 =
  (match _lh_termEq_arg1_7_8 with
    | `Var(_lh_termEq_Var_0_1_5_6) -> 
      (match _lh_termEq_arg2_7_8 with
        | `Var(_lh_termEq_Var_0_1_5_7) -> 
          (_lh_termEq_Var_0_1_5_6 = _lh_termEq_Var_0_1_5_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_5_6, _lh_termEq_Fun_1_1_5_6, _lh_termEq_Fun_2_1_5_6) -> 
      (match _lh_termEq_arg2_7_8 with
        | `Fun(_lh_termEq_Fun_0_1_5_7, _lh_termEq_Fun_1_1_5_7, _lh_termEq_Fun_2_1_5_7) -> 
          ((_lh_termEq_Fun_0_1_5_6 = _lh_termEq_Fun_0_1_5_7) && ((termLsEq_d0_d0_d4_d5 _lh_termEq_Fun_1_1_5_6) _lh_termEq_Fun_1_1_5_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d6 _lh_termEq_arg1_1_3_8 _lh_termEq_arg2_1_3_8 =
  (match _lh_termEq_arg1_1_3_8 with
    | `Var(_lh_termEq_Var_0_2_7_6) -> 
      (match _lh_termEq_arg2_1_3_8 with
        | `Var(_lh_termEq_Var_0_2_7_7) -> 
          (_lh_termEq_Var_0_2_7_6 = _lh_termEq_Var_0_2_7_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_7_6, _lh_termEq_Fun_1_2_7_6, _lh_termEq_Fun_2_2_7_6) -> 
      (match _lh_termEq_arg2_1_3_8 with
        | `Fun(_lh_termEq_Fun_0_2_7_7, _lh_termEq_Fun_1_2_7_7, _lh_termEq_Fun_2_2_7_7) -> 
          ((_lh_termEq_Fun_0_2_7_6 = _lh_termEq_Fun_0_2_7_7) && ((termLsEq_d0_d0_d4_d6 _lh_termEq_Fun_1_2_7_6) _lh_termEq_Fun_1_2_7_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d7 _lh_termEq_arg1_1_2_9 _lh_termEq_arg2_1_2_9 =
  (match _lh_termEq_arg1_1_2_9 with
    | `Var(_lh_termEq_Var_0_2_5_8) -> 
      (match _lh_termEq_arg2_1_2_9 with
        | `Var(_lh_termEq_Var_0_2_5_9) -> 
          (_lh_termEq_Var_0_2_5_8 = _lh_termEq_Var_0_2_5_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_5_8, _lh_termEq_Fun_1_2_5_8, _lh_termEq_Fun_2_2_5_8) -> 
      (match _lh_termEq_arg2_1_2_9 with
        | `Fun(_lh_termEq_Fun_0_2_5_9, _lh_termEq_Fun_1_2_5_9, _lh_termEq_Fun_2_2_5_9) -> 
          ((_lh_termEq_Fun_0_2_5_8 = _lh_termEq_Fun_0_2_5_9) && ((termLsEq_d0_d0_d4_d7 _lh_termEq_Fun_1_2_5_8) _lh_termEq_Fun_1_2_5_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d8 _lh_termEq_arg1_1_0_5 _lh_termEq_arg2_1_0_5 =
  (match _lh_termEq_arg1_1_0_5 with
    | `Var(_lh_termEq_Var_0_2_1_0) -> 
      (match _lh_termEq_arg2_1_0_5 with
        | `Var(_lh_termEq_Var_0_2_1_1) -> 
          (_lh_termEq_Var_0_2_1_0 = _lh_termEq_Var_0_2_1_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_1_0, _lh_termEq_Fun_1_2_1_0, _lh_termEq_Fun_2_2_1_0) -> 
      (match _lh_termEq_arg2_1_0_5 with
        | `Fun(_lh_termEq_Fun_0_2_1_1, _lh_termEq_Fun_1_2_1_1, _lh_termEq_Fun_2_2_1_1) -> 
          ((_lh_termEq_Fun_0_2_1_0 = _lh_termEq_Fun_0_2_1_1) && ((termLsEq_d0_d0_d4_d8 _lh_termEq_Fun_1_2_1_0) _lh_termEq_Fun_1_2_1_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d4_d9 _lh_termEq_arg1_7_6 _lh_termEq_arg2_7_6 =
  (match _lh_termEq_arg1_7_6 with
    | `Var(_lh_termEq_Var_0_1_5_2) -> 
      (match _lh_termEq_arg2_7_6 with
        | `Var(_lh_termEq_Var_0_1_5_3) -> 
          (_lh_termEq_Var_0_1_5_2 = _lh_termEq_Var_0_1_5_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_5_2, _lh_termEq_Fun_1_1_5_2, _lh_termEq_Fun_2_1_5_2) -> 
      (match _lh_termEq_arg2_7_6 with
        | `Fun(_lh_termEq_Fun_0_1_5_3, _lh_termEq_Fun_1_1_5_3, _lh_termEq_Fun_2_1_5_3) -> 
          ((_lh_termEq_Fun_0_1_5_2 = _lh_termEq_Fun_0_1_5_3) && ((termLsEq_d0_d0_d4_d9 _lh_termEq_Fun_1_1_5_2) _lh_termEq_Fun_1_1_5_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5 _lh_termEq_arg1_4_4 _lh_termEq_arg2_4_4 =
  (match _lh_termEq_arg1_4_4 with
    | `Var(_lh_termEq_Var_0_8_8) -> 
      (match _lh_termEq_arg2_4_4 with
        | `Var(_lh_termEq_Var_0_8_9) -> 
          (_lh_termEq_Var_0_8_8 = _lh_termEq_Var_0_8_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_8_8, _lh_termEq_Fun_1_8_8, _lh_termEq_Fun_2_8_8) -> 
      (match _lh_termEq_arg2_4_4 with
        | `Fun(_lh_termEq_Fun_0_8_9, _lh_termEq_Fun_1_8_9, _lh_termEq_Fun_2_8_9) -> 
          ((_lh_termEq_Fun_0_8_8 = _lh_termEq_Fun_0_8_9) && ((termLsEq_d0_d0_d5 _lh_termEq_Fun_1_8_8) _lh_termEq_Fun_1_8_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d0 _lh_termEq_arg1_1_1_8 _lh_termEq_arg2_1_1_8 =
  (match _lh_termEq_arg1_1_1_8 with
    | `Var(_lh_termEq_Var_0_2_3_6) -> 
      (match _lh_termEq_arg2_1_1_8 with
        | `Var(_lh_termEq_Var_0_2_3_7) -> 
          (_lh_termEq_Var_0_2_3_6 = _lh_termEq_Var_0_2_3_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_3_6, _lh_termEq_Fun_1_2_3_6, _lh_termEq_Fun_2_2_3_6) -> 
      (match _lh_termEq_arg2_1_1_8 with
        | `Fun(_lh_termEq_Fun_0_2_3_7, _lh_termEq_Fun_1_2_3_7, _lh_termEq_Fun_2_2_3_7) -> 
          ((_lh_termEq_Fun_0_2_3_6 = _lh_termEq_Fun_0_2_3_7) && ((termLsEq_d0_d0_d5_d0 _lh_termEq_Fun_1_2_3_6) _lh_termEq_Fun_1_2_3_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d1 _lh_termEq_arg1_1_0_0 _lh_termEq_arg2_1_0_0 =
  (match _lh_termEq_arg1_1_0_0 with
    | `Var(_lh_termEq_Var_0_2_0_0) -> 
      (match _lh_termEq_arg2_1_0_0 with
        | `Var(_lh_termEq_Var_0_2_0_1) -> 
          (_lh_termEq_Var_0_2_0_0 = _lh_termEq_Var_0_2_0_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_0_0, _lh_termEq_Fun_1_2_0_0, _lh_termEq_Fun_2_2_0_0) -> 
      (match _lh_termEq_arg2_1_0_0 with
        | `Fun(_lh_termEq_Fun_0_2_0_1, _lh_termEq_Fun_1_2_0_1, _lh_termEq_Fun_2_2_0_1) -> 
          ((_lh_termEq_Fun_0_2_0_0 = _lh_termEq_Fun_0_2_0_1) && ((termLsEq_d0_d0_d5_d1 _lh_termEq_Fun_1_2_0_0) _lh_termEq_Fun_1_2_0_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d2 _lh_termEq_arg1_2_7 _lh_termEq_arg2_2_7 =
  (match _lh_termEq_arg1_2_7 with
    | `Var(_lh_termEq_Var_0_5_4) -> 
      (match _lh_termEq_arg2_2_7 with
        | `Var(_lh_termEq_Var_0_5_5) -> 
          (_lh_termEq_Var_0_5_4 = _lh_termEq_Var_0_5_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_5_4, _lh_termEq_Fun_1_5_4, _lh_termEq_Fun_2_5_4) -> 
      (match _lh_termEq_arg2_2_7 with
        | `Fun(_lh_termEq_Fun_0_5_5, _lh_termEq_Fun_1_5_5, _lh_termEq_Fun_2_5_5) -> 
          ((_lh_termEq_Fun_0_5_4 = _lh_termEq_Fun_0_5_5) && ((termLsEq_d0_d0_d5_d2 _lh_termEq_Fun_1_5_4) _lh_termEq_Fun_1_5_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d3 _lh_termEq_arg1_9_2 _lh_termEq_arg2_9_2 =
  (match _lh_termEq_arg1_9_2 with
    | `Var(_lh_termEq_Var_0_1_8_4) -> 
      (match _lh_termEq_arg2_9_2 with
        | `Var(_lh_termEq_Var_0_1_8_5) -> 
          (_lh_termEq_Var_0_1_8_4 = _lh_termEq_Var_0_1_8_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_8_4, _lh_termEq_Fun_1_1_8_4, _lh_termEq_Fun_2_1_8_4) -> 
      (match _lh_termEq_arg2_9_2 with
        | `Fun(_lh_termEq_Fun_0_1_8_5, _lh_termEq_Fun_1_1_8_5, _lh_termEq_Fun_2_1_8_5) -> 
          ((_lh_termEq_Fun_0_1_8_4 = _lh_termEq_Fun_0_1_8_5) && ((termLsEq_d0_d0_d5_d3 _lh_termEq_Fun_1_1_8_4) _lh_termEq_Fun_1_1_8_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d4 _lh_termEq_arg1_1_2_5 _lh_termEq_arg2_1_2_5 =
  (match _lh_termEq_arg1_1_2_5 with
    | `Var(_lh_termEq_Var_0_2_5_0) -> 
      (match _lh_termEq_arg2_1_2_5 with
        | `Var(_lh_termEq_Var_0_2_5_1) -> 
          (_lh_termEq_Var_0_2_5_0 = _lh_termEq_Var_0_2_5_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_5_0, _lh_termEq_Fun_1_2_5_0, _lh_termEq_Fun_2_2_5_0) -> 
      (match _lh_termEq_arg2_1_2_5 with
        | `Fun(_lh_termEq_Fun_0_2_5_1, _lh_termEq_Fun_1_2_5_1, _lh_termEq_Fun_2_2_5_1) -> 
          ((_lh_termEq_Fun_0_2_5_0 = _lh_termEq_Fun_0_2_5_1) && ((termLsEq_d0_d0_d5_d4 _lh_termEq_Fun_1_2_5_0) _lh_termEq_Fun_1_2_5_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d5 _lh_termEq_arg1_1_3_0 _lh_termEq_arg2_1_3_0 =
  (match _lh_termEq_arg1_1_3_0 with
    | `Var(_lh_termEq_Var_0_2_6_0) -> 
      (match _lh_termEq_arg2_1_3_0 with
        | `Var(_lh_termEq_Var_0_2_6_1) -> 
          (_lh_termEq_Var_0_2_6_0 = _lh_termEq_Var_0_2_6_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_6_0, _lh_termEq_Fun_1_2_6_0, _lh_termEq_Fun_2_2_6_0) -> 
      (match _lh_termEq_arg2_1_3_0 with
        | `Fun(_lh_termEq_Fun_0_2_6_1, _lh_termEq_Fun_1_2_6_1, _lh_termEq_Fun_2_2_6_1) -> 
          ((_lh_termEq_Fun_0_2_6_0 = _lh_termEq_Fun_0_2_6_1) && ((termLsEq_d0_d0_d5_d5 _lh_termEq_Fun_1_2_6_0) _lh_termEq_Fun_1_2_6_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d6 _lh_termEq_arg1_5_3 _lh_termEq_arg2_5_3 =
  (match _lh_termEq_arg1_5_3 with
    | `Var(_lh_termEq_Var_0_1_0_6) -> 
      (match _lh_termEq_arg2_5_3 with
        | `Var(_lh_termEq_Var_0_1_0_7) -> 
          (_lh_termEq_Var_0_1_0_6 = _lh_termEq_Var_0_1_0_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_0_6, _lh_termEq_Fun_1_1_0_6, _lh_termEq_Fun_2_1_0_6) -> 
      (match _lh_termEq_arg2_5_3 with
        | `Fun(_lh_termEq_Fun_0_1_0_7, _lh_termEq_Fun_1_1_0_7, _lh_termEq_Fun_2_1_0_7) -> 
          ((_lh_termEq_Fun_0_1_0_6 = _lh_termEq_Fun_0_1_0_7) && ((termLsEq_d0_d0_d5_d6 _lh_termEq_Fun_1_1_0_6) _lh_termEq_Fun_1_1_0_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d7 _lh_termEq_arg1_1_8 _lh_termEq_arg2_1_8 =
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
          ((_lh_termEq_Fun_0_3_6 = _lh_termEq_Fun_0_3_7) && ((termLsEq_d0_d0_d5_d7 _lh_termEq_Fun_1_3_6) _lh_termEq_Fun_1_3_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d8 _lh_termEq_arg1_9_7 _lh_termEq_arg2_9_7 =
  (match _lh_termEq_arg1_9_7 with
    | `Var(_lh_termEq_Var_0_1_9_4) -> 
      (match _lh_termEq_arg2_9_7 with
        | `Var(_lh_termEq_Var_0_1_9_5) -> 
          (_lh_termEq_Var_0_1_9_4 = _lh_termEq_Var_0_1_9_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_9_4, _lh_termEq_Fun_1_1_9_4, _lh_termEq_Fun_2_1_9_4) -> 
      (match _lh_termEq_arg2_9_7 with
        | `Fun(_lh_termEq_Fun_0_1_9_5, _lh_termEq_Fun_1_1_9_5, _lh_termEq_Fun_2_1_9_5) -> 
          ((_lh_termEq_Fun_0_1_9_4 = _lh_termEq_Fun_0_1_9_5) && ((termLsEq_d0_d0_d5_d8 _lh_termEq_Fun_1_1_9_4) _lh_termEq_Fun_1_1_9_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d5_d9 _lh_termEq_arg1_5_5 _lh_termEq_arg2_5_5 =
  (match _lh_termEq_arg1_5_5 with
    | `Var(_lh_termEq_Var_0_1_1_0) -> 
      (match _lh_termEq_arg2_5_5 with
        | `Var(_lh_termEq_Var_0_1_1_1) -> 
          (_lh_termEq_Var_0_1_1_0 = _lh_termEq_Var_0_1_1_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_1_0, _lh_termEq_Fun_1_1_1_0, _lh_termEq_Fun_2_1_1_0) -> 
      (match _lh_termEq_arg2_5_5 with
        | `Fun(_lh_termEq_Fun_0_1_1_1, _lh_termEq_Fun_1_1_1_1, _lh_termEq_Fun_2_1_1_1) -> 
          ((_lh_termEq_Fun_0_1_1_0 = _lh_termEq_Fun_0_1_1_1) && ((termLsEq_d0_d0_d5_d9 _lh_termEq_Fun_1_1_1_0) _lh_termEq_Fun_1_1_1_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6 _lh_termEq_arg1_1_0_3 _lh_termEq_arg2_1_0_3 =
  (match _lh_termEq_arg1_1_0_3 with
    | `Var(_lh_termEq_Var_0_2_0_6) -> 
      (match _lh_termEq_arg2_1_0_3 with
        | `Var(_lh_termEq_Var_0_2_0_7) -> 
          (_lh_termEq_Var_0_2_0_6 = _lh_termEq_Var_0_2_0_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_0_6, _lh_termEq_Fun_1_2_0_6, _lh_termEq_Fun_2_2_0_6) -> 
      (match _lh_termEq_arg2_1_0_3 with
        | `Fun(_lh_termEq_Fun_0_2_0_7, _lh_termEq_Fun_1_2_0_7, _lh_termEq_Fun_2_2_0_7) -> 
          ((_lh_termEq_Fun_0_2_0_6 = _lh_termEq_Fun_0_2_0_7) && ((termLsEq_d0_d0_d6 _lh_termEq_Fun_1_2_0_6) _lh_termEq_Fun_1_2_0_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d0 _lh_termEq_arg1_9_4 _lh_termEq_arg2_9_4 =
  (match _lh_termEq_arg1_9_4 with
    | `Var(_lh_termEq_Var_0_1_8_8) -> 
      (match _lh_termEq_arg2_9_4 with
        | `Var(_lh_termEq_Var_0_1_8_9) -> 
          (_lh_termEq_Var_0_1_8_8 = _lh_termEq_Var_0_1_8_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_8_8, _lh_termEq_Fun_1_1_8_8, _lh_termEq_Fun_2_1_8_8) -> 
      (match _lh_termEq_arg2_9_4 with
        | `Fun(_lh_termEq_Fun_0_1_8_9, _lh_termEq_Fun_1_1_8_9, _lh_termEq_Fun_2_1_8_9) -> 
          ((_lh_termEq_Fun_0_1_8_8 = _lh_termEq_Fun_0_1_8_9) && ((termLsEq_d0_d0_d6_d0 _lh_termEq_Fun_1_1_8_8) _lh_termEq_Fun_1_1_8_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d1 _lh_termEq_arg1_1_2 _lh_termEq_arg2_1_2 =
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
          ((_lh_termEq_Fun_0_2_4 = _lh_termEq_Fun_0_2_5) && ((termLsEq_d0_d0_d6_d1 _lh_termEq_Fun_1_2_4) _lh_termEq_Fun_1_2_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d2 _lh_termEq_arg1_1_0_9 _lh_termEq_arg2_1_0_9 =
  (match _lh_termEq_arg1_1_0_9 with
    | `Var(_lh_termEq_Var_0_2_1_8) -> 
      (match _lh_termEq_arg2_1_0_9 with
        | `Var(_lh_termEq_Var_0_2_1_9) -> 
          (_lh_termEq_Var_0_2_1_8 = _lh_termEq_Var_0_2_1_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_1_8, _lh_termEq_Fun_1_2_1_8, _lh_termEq_Fun_2_2_1_8) -> 
      (match _lh_termEq_arg2_1_0_9 with
        | `Fun(_lh_termEq_Fun_0_2_1_9, _lh_termEq_Fun_1_2_1_9, _lh_termEq_Fun_2_2_1_9) -> 
          ((_lh_termEq_Fun_0_2_1_8 = _lh_termEq_Fun_0_2_1_9) && ((termLsEq_d0_d0_d6_d2 _lh_termEq_Fun_1_2_1_8) _lh_termEq_Fun_1_2_1_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d3 _lh_termEq_arg1_8_2 _lh_termEq_arg2_8_2 =
  (match _lh_termEq_arg1_8_2 with
    | `Var(_lh_termEq_Var_0_1_6_4) -> 
      (match _lh_termEq_arg2_8_2 with
        | `Var(_lh_termEq_Var_0_1_6_5) -> 
          (_lh_termEq_Var_0_1_6_4 = _lh_termEq_Var_0_1_6_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_6_4, _lh_termEq_Fun_1_1_6_4, _lh_termEq_Fun_2_1_6_4) -> 
      (match _lh_termEq_arg2_8_2 with
        | `Fun(_lh_termEq_Fun_0_1_6_5, _lh_termEq_Fun_1_1_6_5, _lh_termEq_Fun_2_1_6_5) -> 
          ((_lh_termEq_Fun_0_1_6_4 = _lh_termEq_Fun_0_1_6_5) && ((termLsEq_d0_d0_d6_d3 _lh_termEq_Fun_1_1_6_4) _lh_termEq_Fun_1_1_6_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d4 _lh_termEq_arg1_1_2_4 _lh_termEq_arg2_1_2_4 =
  (match _lh_termEq_arg1_1_2_4 with
    | `Var(_lh_termEq_Var_0_2_4_8) -> 
      (match _lh_termEq_arg2_1_2_4 with
        | `Var(_lh_termEq_Var_0_2_4_9) -> 
          (_lh_termEq_Var_0_2_4_8 = _lh_termEq_Var_0_2_4_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_4_8, _lh_termEq_Fun_1_2_4_8, _lh_termEq_Fun_2_2_4_8) -> 
      (match _lh_termEq_arg2_1_2_4 with
        | `Fun(_lh_termEq_Fun_0_2_4_9, _lh_termEq_Fun_1_2_4_9, _lh_termEq_Fun_2_2_4_9) -> 
          ((_lh_termEq_Fun_0_2_4_8 = _lh_termEq_Fun_0_2_4_9) && ((termLsEq_d0_d0_d6_d4 _lh_termEq_Fun_1_2_4_8) _lh_termEq_Fun_1_2_4_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d5 _lh_termEq_arg1_1_0_8 _lh_termEq_arg2_1_0_8 =
  (match _lh_termEq_arg1_1_0_8 with
    | `Var(_lh_termEq_Var_0_2_1_6) -> 
      (match _lh_termEq_arg2_1_0_8 with
        | `Var(_lh_termEq_Var_0_2_1_7) -> 
          (_lh_termEq_Var_0_2_1_6 = _lh_termEq_Var_0_2_1_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_1_6, _lh_termEq_Fun_1_2_1_6, _lh_termEq_Fun_2_2_1_6) -> 
      (match _lh_termEq_arg2_1_0_8 with
        | `Fun(_lh_termEq_Fun_0_2_1_7, _lh_termEq_Fun_1_2_1_7, _lh_termEq_Fun_2_2_1_7) -> 
          ((_lh_termEq_Fun_0_2_1_6 = _lh_termEq_Fun_0_2_1_7) && ((termLsEq_d0_d0_d6_d5 _lh_termEq_Fun_1_2_1_6) _lh_termEq_Fun_1_2_1_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d6 _lh_termEq_arg1_1_3_1 _lh_termEq_arg2_1_3_1 =
  (match _lh_termEq_arg1_1_3_1 with
    | `Var(_lh_termEq_Var_0_2_6_2) -> 
      (match _lh_termEq_arg2_1_3_1 with
        | `Var(_lh_termEq_Var_0_2_6_3) -> 
          (_lh_termEq_Var_0_2_6_2 = _lh_termEq_Var_0_2_6_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_6_2, _lh_termEq_Fun_1_2_6_2, _lh_termEq_Fun_2_2_6_2) -> 
      (match _lh_termEq_arg2_1_3_1 with
        | `Fun(_lh_termEq_Fun_0_2_6_3, _lh_termEq_Fun_1_2_6_3, _lh_termEq_Fun_2_2_6_3) -> 
          ((_lh_termEq_Fun_0_2_6_2 = _lh_termEq_Fun_0_2_6_3) && ((termLsEq_d0_d0_d6_d6 _lh_termEq_Fun_1_2_6_2) _lh_termEq_Fun_1_2_6_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d7 _lh_termEq_arg1_1_1_9 _lh_termEq_arg2_1_1_9 =
  (match _lh_termEq_arg1_1_1_9 with
    | `Var(_lh_termEq_Var_0_2_3_8) -> 
      (match _lh_termEq_arg2_1_1_9 with
        | `Var(_lh_termEq_Var_0_2_3_9) -> 
          (_lh_termEq_Var_0_2_3_8 = _lh_termEq_Var_0_2_3_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_3_8, _lh_termEq_Fun_1_2_3_8, _lh_termEq_Fun_2_2_3_8) -> 
      (match _lh_termEq_arg2_1_1_9 with
        | `Fun(_lh_termEq_Fun_0_2_3_9, _lh_termEq_Fun_1_2_3_9, _lh_termEq_Fun_2_2_3_9) -> 
          ((_lh_termEq_Fun_0_2_3_8 = _lh_termEq_Fun_0_2_3_9) && ((termLsEq_d0_d0_d6_d7 _lh_termEq_Fun_1_2_3_8) _lh_termEq_Fun_1_2_3_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d8 _lh_termEq_arg1_5_2 _lh_termEq_arg2_5_2 =
  (match _lh_termEq_arg1_5_2 with
    | `Var(_lh_termEq_Var_0_1_0_4) -> 
      (match _lh_termEq_arg2_5_2 with
        | `Var(_lh_termEq_Var_0_1_0_5) -> 
          (_lh_termEq_Var_0_1_0_4 = _lh_termEq_Var_0_1_0_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_0_4, _lh_termEq_Fun_1_1_0_4, _lh_termEq_Fun_2_1_0_4) -> 
      (match _lh_termEq_arg2_5_2 with
        | `Fun(_lh_termEq_Fun_0_1_0_5, _lh_termEq_Fun_1_1_0_5, _lh_termEq_Fun_2_1_0_5) -> 
          ((_lh_termEq_Fun_0_1_0_4 = _lh_termEq_Fun_0_1_0_5) && ((termLsEq_d0_d0_d6_d8 _lh_termEq_Fun_1_1_0_4) _lh_termEq_Fun_1_1_0_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d6_d9 _lh_termEq_arg1_1_7 _lh_termEq_arg2_1_7 =
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
          ((_lh_termEq_Fun_0_3_4 = _lh_termEq_Fun_0_3_5) && ((termLsEq_d0_d0_d6_d9 _lh_termEq_Fun_1_3_4) _lh_termEq_Fun_1_3_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7 _lh_termEq_arg1_1_6 _lh_termEq_arg2_1_6 =
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
          ((_lh_termEq_Fun_0_3_2 = _lh_termEq_Fun_0_3_3) && ((termLsEq_d0_d0_d7 _lh_termEq_Fun_1_3_2) _lh_termEq_Fun_1_3_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d0 _lh_termEq_arg1_9_9 _lh_termEq_arg2_9_9 =
  (match _lh_termEq_arg1_9_9 with
    | `Var(_lh_termEq_Var_0_1_9_8) -> 
      (match _lh_termEq_arg2_9_9 with
        | `Var(_lh_termEq_Var_0_1_9_9) -> 
          (_lh_termEq_Var_0_1_9_8 = _lh_termEq_Var_0_1_9_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_9_8, _lh_termEq_Fun_1_1_9_8, _lh_termEq_Fun_2_1_9_8) -> 
      (match _lh_termEq_arg2_9_9 with
        | `Fun(_lh_termEq_Fun_0_1_9_9, _lh_termEq_Fun_1_1_9_9, _lh_termEq_Fun_2_1_9_9) -> 
          ((_lh_termEq_Fun_0_1_9_8 = _lh_termEq_Fun_0_1_9_9) && ((termLsEq_d0_d0_d7_d0 _lh_termEq_Fun_1_1_9_8) _lh_termEq_Fun_1_1_9_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d1 _lh_termEq_arg1_9_5 _lh_termEq_arg2_9_5 =
  (match _lh_termEq_arg1_9_5 with
    | `Var(_lh_termEq_Var_0_1_9_0) -> 
      (match _lh_termEq_arg2_9_5 with
        | `Var(_lh_termEq_Var_0_1_9_1) -> 
          (_lh_termEq_Var_0_1_9_0 = _lh_termEq_Var_0_1_9_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_9_0, _lh_termEq_Fun_1_1_9_0, _lh_termEq_Fun_2_1_9_0) -> 
      (match _lh_termEq_arg2_9_5 with
        | `Fun(_lh_termEq_Fun_0_1_9_1, _lh_termEq_Fun_1_1_9_1, _lh_termEq_Fun_2_1_9_1) -> 
          ((_lh_termEq_Fun_0_1_9_0 = _lh_termEq_Fun_0_1_9_1) && ((termLsEq_d0_d0_d7_d1 _lh_termEq_Fun_1_1_9_0) _lh_termEq_Fun_1_1_9_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d2 _lh_termEq_arg1_9_1 _lh_termEq_arg2_9_1 =
  (match _lh_termEq_arg1_9_1 with
    | `Var(_lh_termEq_Var_0_1_8_2) -> 
      (match _lh_termEq_arg2_9_1 with
        | `Var(_lh_termEq_Var_0_1_8_3) -> 
          (_lh_termEq_Var_0_1_8_2 = _lh_termEq_Var_0_1_8_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_8_2, _lh_termEq_Fun_1_1_8_2, _lh_termEq_Fun_2_1_8_2) -> 
      (match _lh_termEq_arg2_9_1 with
        | `Fun(_lh_termEq_Fun_0_1_8_3, _lh_termEq_Fun_1_1_8_3, _lh_termEq_Fun_2_1_8_3) -> 
          ((_lh_termEq_Fun_0_1_8_2 = _lh_termEq_Fun_0_1_8_3) && ((termLsEq_d0_d0_d7_d2 _lh_termEq_Fun_1_1_8_2) _lh_termEq_Fun_1_1_8_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d3 _lh_termEq_arg1_5_1 _lh_termEq_arg2_5_1 =
  (match _lh_termEq_arg1_5_1 with
    | `Var(_lh_termEq_Var_0_1_0_2) -> 
      (match _lh_termEq_arg2_5_1 with
        | `Var(_lh_termEq_Var_0_1_0_3) -> 
          (_lh_termEq_Var_0_1_0_2 = _lh_termEq_Var_0_1_0_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_0_2, _lh_termEq_Fun_1_1_0_2, _lh_termEq_Fun_2_1_0_2) -> 
      (match _lh_termEq_arg2_5_1 with
        | `Fun(_lh_termEq_Fun_0_1_0_3, _lh_termEq_Fun_1_1_0_3, _lh_termEq_Fun_2_1_0_3) -> 
          ((_lh_termEq_Fun_0_1_0_2 = _lh_termEq_Fun_0_1_0_3) && ((termLsEq_d0_d0_d7_d3 _lh_termEq_Fun_1_1_0_2) _lh_termEq_Fun_1_1_0_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d4 _lh_termEq_arg1_1_1 _lh_termEq_arg2_1_1 =
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
          ((_lh_termEq_Fun_0_2_2 = _lh_termEq_Fun_0_2_3) && ((termLsEq_d0_d0_d7_d4 _lh_termEq_Fun_1_2_2) _lh_termEq_Fun_1_2_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d5 _lh_termEq_arg1_1_3_4 _lh_termEq_arg2_1_3_4 =
  (match _lh_termEq_arg1_1_3_4 with
    | `Var(_lh_termEq_Var_0_2_6_8) -> 
      (match _lh_termEq_arg2_1_3_4 with
        | `Var(_lh_termEq_Var_0_2_6_9) -> 
          (_lh_termEq_Var_0_2_6_8 = _lh_termEq_Var_0_2_6_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_6_8, _lh_termEq_Fun_1_2_6_8, _lh_termEq_Fun_2_2_6_8) -> 
      (match _lh_termEq_arg2_1_3_4 with
        | `Fun(_lh_termEq_Fun_0_2_6_9, _lh_termEq_Fun_1_2_6_9, _lh_termEq_Fun_2_2_6_9) -> 
          ((_lh_termEq_Fun_0_2_6_8 = _lh_termEq_Fun_0_2_6_9) && ((termLsEq_d0_d0_d7_d5 _lh_termEq_Fun_1_2_6_8) _lh_termEq_Fun_1_2_6_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d6 _lh_termEq_arg1_1_0_4 _lh_termEq_arg2_1_0_4 =
  (match _lh_termEq_arg1_1_0_4 with
    | `Var(_lh_termEq_Var_0_2_0_8) -> 
      (match _lh_termEq_arg2_1_0_4 with
        | `Var(_lh_termEq_Var_0_2_0_9) -> 
          (_lh_termEq_Var_0_2_0_8 = _lh_termEq_Var_0_2_0_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_0_8, _lh_termEq_Fun_1_2_0_8, _lh_termEq_Fun_2_2_0_8) -> 
      (match _lh_termEq_arg2_1_0_4 with
        | `Fun(_lh_termEq_Fun_0_2_0_9, _lh_termEq_Fun_1_2_0_9, _lh_termEq_Fun_2_2_0_9) -> 
          ((_lh_termEq_Fun_0_2_0_8 = _lh_termEq_Fun_0_2_0_9) && ((termLsEq_d0_d0_d7_d6 _lh_termEq_Fun_1_2_0_8) _lh_termEq_Fun_1_2_0_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d7 _lh_termEq_arg1_8_3 _lh_termEq_arg2_8_3 =
  (match _lh_termEq_arg1_8_3 with
    | `Var(_lh_termEq_Var_0_1_6_6) -> 
      (match _lh_termEq_arg2_8_3 with
        | `Var(_lh_termEq_Var_0_1_6_7) -> 
          (_lh_termEq_Var_0_1_6_6 = _lh_termEq_Var_0_1_6_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_6_6, _lh_termEq_Fun_1_1_6_6, _lh_termEq_Fun_2_1_6_6) -> 
      (match _lh_termEq_arg2_8_3 with
        | `Fun(_lh_termEq_Fun_0_1_6_7, _lh_termEq_Fun_1_1_6_7, _lh_termEq_Fun_2_1_6_7) -> 
          ((_lh_termEq_Fun_0_1_6_6 = _lh_termEq_Fun_0_1_6_7) && ((termLsEq_d0_d0_d7_d7 _lh_termEq_Fun_1_1_6_6) _lh_termEq_Fun_1_1_6_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d8 _lh_termEq_arg1_2_4 _lh_termEq_arg2_2_4 =
  (match _lh_termEq_arg1_2_4 with
    | `Var(_lh_termEq_Var_0_4_8) -> 
      (match _lh_termEq_arg2_2_4 with
        | `Var(_lh_termEq_Var_0_4_9) -> 
          (_lh_termEq_Var_0_4_8 = _lh_termEq_Var_0_4_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_4_8, _lh_termEq_Fun_1_4_8, _lh_termEq_Fun_2_4_8) -> 
      (match _lh_termEq_arg2_2_4 with
        | `Fun(_lh_termEq_Fun_0_4_9, _lh_termEq_Fun_1_4_9, _lh_termEq_Fun_2_4_9) -> 
          ((_lh_termEq_Fun_0_4_8 = _lh_termEq_Fun_0_4_9) && ((termLsEq_d0_d0_d7_d8 _lh_termEq_Fun_1_4_8) _lh_termEq_Fun_1_4_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d7_d9 _lh_termEq_arg1_7_2 _lh_termEq_arg2_7_2 =
  (match _lh_termEq_arg1_7_2 with
    | `Var(_lh_termEq_Var_0_1_4_4) -> 
      (match _lh_termEq_arg2_7_2 with
        | `Var(_lh_termEq_Var_0_1_4_5) -> 
          (_lh_termEq_Var_0_1_4_4 = _lh_termEq_Var_0_1_4_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_4_4, _lh_termEq_Fun_1_1_4_4, _lh_termEq_Fun_2_1_4_4) -> 
      (match _lh_termEq_arg2_7_2 with
        | `Fun(_lh_termEq_Fun_0_1_4_5, _lh_termEq_Fun_1_1_4_5, _lh_termEq_Fun_2_1_4_5) -> 
          ((_lh_termEq_Fun_0_1_4_4 = _lh_termEq_Fun_0_1_4_5) && ((termLsEq_d0_d0_d7_d9 _lh_termEq_Fun_1_1_4_4) _lh_termEq_Fun_1_1_4_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8 _lh_termEq_arg1_1_0_7 _lh_termEq_arg2_1_0_7 =
  (match _lh_termEq_arg1_1_0_7 with
    | `Var(_lh_termEq_Var_0_2_1_4) -> 
      (match _lh_termEq_arg2_1_0_7 with
        | `Var(_lh_termEq_Var_0_2_1_5) -> 
          (_lh_termEq_Var_0_2_1_4 = _lh_termEq_Var_0_2_1_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_1_4, _lh_termEq_Fun_1_2_1_4, _lh_termEq_Fun_2_2_1_4) -> 
      (match _lh_termEq_arg2_1_0_7 with
        | `Fun(_lh_termEq_Fun_0_2_1_5, _lh_termEq_Fun_1_2_1_5, _lh_termEq_Fun_2_2_1_5) -> 
          ((_lh_termEq_Fun_0_2_1_4 = _lh_termEq_Fun_0_2_1_5) && ((termLsEq_d0_d0_d8 _lh_termEq_Fun_1_2_1_4) _lh_termEq_Fun_1_2_1_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d0 _lh_termEq_arg1_4_6 _lh_termEq_arg2_4_6 =
  (match _lh_termEq_arg1_4_6 with
    | `Var(_lh_termEq_Var_0_9_2) -> 
      (match _lh_termEq_arg2_4_6 with
        | `Var(_lh_termEq_Var_0_9_3) -> 
          (_lh_termEq_Var_0_9_2 = _lh_termEq_Var_0_9_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_9_2, _lh_termEq_Fun_1_9_2, _lh_termEq_Fun_2_9_2) -> 
      (match _lh_termEq_arg2_4_6 with
        | `Fun(_lh_termEq_Fun_0_9_3, _lh_termEq_Fun_1_9_3, _lh_termEq_Fun_2_9_3) -> 
          ((_lh_termEq_Fun_0_9_2 = _lh_termEq_Fun_0_9_3) && ((termLsEq_d0_d0_d8_d0 _lh_termEq_Fun_1_9_2) _lh_termEq_Fun_1_9_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d1 _lh_termEq_arg1_1_3_3 _lh_termEq_arg2_1_3_3 =
  (match _lh_termEq_arg1_1_3_3 with
    | `Var(_lh_termEq_Var_0_2_6_6) -> 
      (match _lh_termEq_arg2_1_3_3 with
        | `Var(_lh_termEq_Var_0_2_6_7) -> 
          (_lh_termEq_Var_0_2_6_6 = _lh_termEq_Var_0_2_6_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_6_6, _lh_termEq_Fun_1_2_6_6, _lh_termEq_Fun_2_2_6_6) -> 
      (match _lh_termEq_arg2_1_3_3 with
        | `Fun(_lh_termEq_Fun_0_2_6_7, _lh_termEq_Fun_1_2_6_7, _lh_termEq_Fun_2_2_6_7) -> 
          ((_lh_termEq_Fun_0_2_6_6 = _lh_termEq_Fun_0_2_6_7) && ((termLsEq_d0_d0_d8_d1 _lh_termEq_Fun_1_2_6_6) _lh_termEq_Fun_1_2_6_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d2 _lh_termEq_arg1_8_4 _lh_termEq_arg2_8_4 =
  (match _lh_termEq_arg1_8_4 with
    | `Var(_lh_termEq_Var_0_1_6_8) -> 
      (match _lh_termEq_arg2_8_4 with
        | `Var(_lh_termEq_Var_0_1_6_9) -> 
          (_lh_termEq_Var_0_1_6_8 = _lh_termEq_Var_0_1_6_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_6_8, _lh_termEq_Fun_1_1_6_8, _lh_termEq_Fun_2_1_6_8) -> 
      (match _lh_termEq_arg2_8_4 with
        | `Fun(_lh_termEq_Fun_0_1_6_9, _lh_termEq_Fun_1_1_6_9, _lh_termEq_Fun_2_1_6_9) -> 
          ((_lh_termEq_Fun_0_1_6_8 = _lh_termEq_Fun_0_1_6_9) && ((termLsEq_d0_d0_d8_d2 _lh_termEq_Fun_1_1_6_8) _lh_termEq_Fun_1_1_6_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d3 _lh_termEq_arg1_7_3 _lh_termEq_arg2_7_3 =
  (match _lh_termEq_arg1_7_3 with
    | `Var(_lh_termEq_Var_0_1_4_6) -> 
      (match _lh_termEq_arg2_7_3 with
        | `Var(_lh_termEq_Var_0_1_4_7) -> 
          (_lh_termEq_Var_0_1_4_6 = _lh_termEq_Var_0_1_4_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_4_6, _lh_termEq_Fun_1_1_4_6, _lh_termEq_Fun_2_1_4_6) -> 
      (match _lh_termEq_arg2_7_3 with
        | `Fun(_lh_termEq_Fun_0_1_4_7, _lh_termEq_Fun_1_1_4_7, _lh_termEq_Fun_2_1_4_7) -> 
          ((_lh_termEq_Fun_0_1_4_6 = _lh_termEq_Fun_0_1_4_7) && ((termLsEq_d0_d0_d8_d3 _lh_termEq_Fun_1_1_4_6) _lh_termEq_Fun_1_1_4_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d4 _lh_termEq_arg1_1_1_2 _lh_termEq_arg2_1_1_2 =
  (match _lh_termEq_arg1_1_1_2 with
    | `Var(_lh_termEq_Var_0_2_2_4) -> 
      (match _lh_termEq_arg2_1_1_2 with
        | `Var(_lh_termEq_Var_0_2_2_5) -> 
          (_lh_termEq_Var_0_2_2_4 = _lh_termEq_Var_0_2_2_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_2_4, _lh_termEq_Fun_1_2_2_4, _lh_termEq_Fun_2_2_2_4) -> 
      (match _lh_termEq_arg2_1_1_2 with
        | `Fun(_lh_termEq_Fun_0_2_2_5, _lh_termEq_Fun_1_2_2_5, _lh_termEq_Fun_2_2_2_5) -> 
          ((_lh_termEq_Fun_0_2_2_4 = _lh_termEq_Fun_0_2_2_5) && ((termLsEq_d0_d0_d8_d4 _lh_termEq_Fun_1_2_2_4) _lh_termEq_Fun_1_2_2_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d5 _lh_termEq_arg1_8_1 _lh_termEq_arg2_8_1 =
  (match _lh_termEq_arg1_8_1 with
    | `Var(_lh_termEq_Var_0_1_6_2) -> 
      (match _lh_termEq_arg2_8_1 with
        | `Var(_lh_termEq_Var_0_1_6_3) -> 
          (_lh_termEq_Var_0_1_6_2 = _lh_termEq_Var_0_1_6_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_6_2, _lh_termEq_Fun_1_1_6_2, _lh_termEq_Fun_2_1_6_2) -> 
      (match _lh_termEq_arg2_8_1 with
        | `Fun(_lh_termEq_Fun_0_1_6_3, _lh_termEq_Fun_1_1_6_3, _lh_termEq_Fun_2_1_6_3) -> 
          ((_lh_termEq_Fun_0_1_6_2 = _lh_termEq_Fun_0_1_6_3) && ((termLsEq_d0_d0_d8_d5 _lh_termEq_Fun_1_1_6_2) _lh_termEq_Fun_1_1_6_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d6 _lh_termEq_arg1_4_7 _lh_termEq_arg2_4_7 =
  (match _lh_termEq_arg1_4_7 with
    | `Var(_lh_termEq_Var_0_9_4) -> 
      (match _lh_termEq_arg2_4_7 with
        | `Var(_lh_termEq_Var_0_9_5) -> 
          (_lh_termEq_Var_0_9_4 = _lh_termEq_Var_0_9_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_9_4, _lh_termEq_Fun_1_9_4, _lh_termEq_Fun_2_9_4) -> 
      (match _lh_termEq_arg2_4_7 with
        | `Fun(_lh_termEq_Fun_0_9_5, _lh_termEq_Fun_1_9_5, _lh_termEq_Fun_2_9_5) -> 
          ((_lh_termEq_Fun_0_9_4 = _lh_termEq_Fun_0_9_5) && ((termLsEq_d0_d0_d8_d6 _lh_termEq_Fun_1_9_4) _lh_termEq_Fun_1_9_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d7 _lh_termEq_arg1_2_8 _lh_termEq_arg2_2_8 =
  (match _lh_termEq_arg1_2_8 with
    | `Var(_lh_termEq_Var_0_5_6) -> 
      (match _lh_termEq_arg2_2_8 with
        | `Var(_lh_termEq_Var_0_5_7) -> 
          (_lh_termEq_Var_0_5_6 = _lh_termEq_Var_0_5_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_5_6, _lh_termEq_Fun_1_5_6, _lh_termEq_Fun_2_5_6) -> 
      (match _lh_termEq_arg2_2_8 with
        | `Fun(_lh_termEq_Fun_0_5_7, _lh_termEq_Fun_1_5_7, _lh_termEq_Fun_2_5_7) -> 
          ((_lh_termEq_Fun_0_5_6 = _lh_termEq_Fun_0_5_7) && ((termLsEq_d0_d0_d8_d7 _lh_termEq_Fun_1_5_6) _lh_termEq_Fun_1_5_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d8 _lh_termEq_arg1_5_6 _lh_termEq_arg2_5_6 =
  (match _lh_termEq_arg1_5_6 with
    | `Var(_lh_termEq_Var_0_1_1_2) -> 
      (match _lh_termEq_arg2_5_6 with
        | `Var(_lh_termEq_Var_0_1_1_3) -> 
          (_lh_termEq_Var_0_1_1_2 = _lh_termEq_Var_0_1_1_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_1_2, _lh_termEq_Fun_1_1_1_2, _lh_termEq_Fun_2_1_1_2) -> 
      (match _lh_termEq_arg2_5_6 with
        | `Fun(_lh_termEq_Fun_0_1_1_3, _lh_termEq_Fun_1_1_1_3, _lh_termEq_Fun_2_1_1_3) -> 
          ((_lh_termEq_Fun_0_1_1_2 = _lh_termEq_Fun_0_1_1_3) && ((termLsEq_d0_d0_d8_d8 _lh_termEq_Fun_1_1_1_2) _lh_termEq_Fun_1_1_1_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d8_d9 _lh_termEq_arg1_1_1_5 _lh_termEq_arg2_1_1_5 =
  (match _lh_termEq_arg1_1_1_5 with
    | `Var(_lh_termEq_Var_0_2_3_0) -> 
      (match _lh_termEq_arg2_1_1_5 with
        | `Var(_lh_termEq_Var_0_2_3_1) -> 
          (_lh_termEq_Var_0_2_3_0 = _lh_termEq_Var_0_2_3_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_3_0, _lh_termEq_Fun_1_2_3_0, _lh_termEq_Fun_2_2_3_0) -> 
      (match _lh_termEq_arg2_1_1_5 with
        | `Fun(_lh_termEq_Fun_0_2_3_1, _lh_termEq_Fun_1_2_3_1, _lh_termEq_Fun_2_2_3_1) -> 
          ((_lh_termEq_Fun_0_2_3_0 = _lh_termEq_Fun_0_2_3_1) && ((termLsEq_d0_d0_d8_d9 _lh_termEq_Fun_1_2_3_0) _lh_termEq_Fun_1_2_3_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9 _lh_termEq_arg1_1_3_6 _lh_termEq_arg2_1_3_6 =
  (match _lh_termEq_arg1_1_3_6 with
    | `Var(_lh_termEq_Var_0_2_7_2) -> 
      (match _lh_termEq_arg2_1_3_6 with
        | `Var(_lh_termEq_Var_0_2_7_3) -> 
          (_lh_termEq_Var_0_2_7_2 = _lh_termEq_Var_0_2_7_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_7_2, _lh_termEq_Fun_1_2_7_2, _lh_termEq_Fun_2_2_7_2) -> 
      (match _lh_termEq_arg2_1_3_6 with
        | `Fun(_lh_termEq_Fun_0_2_7_3, _lh_termEq_Fun_1_2_7_3, _lh_termEq_Fun_2_2_7_3) -> 
          ((_lh_termEq_Fun_0_2_7_2 = _lh_termEq_Fun_0_2_7_3) && ((termLsEq_d0_d0_d9 _lh_termEq_Fun_1_2_7_2) _lh_termEq_Fun_1_2_7_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d0 _lh_termEq_arg1_8_6 _lh_termEq_arg2_8_6 =
  (match _lh_termEq_arg1_8_6 with
    | `Var(_lh_termEq_Var_0_1_7_2) -> 
      (match _lh_termEq_arg2_8_6 with
        | `Var(_lh_termEq_Var_0_1_7_3) -> 
          (_lh_termEq_Var_0_1_7_2 = _lh_termEq_Var_0_1_7_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_7_2, _lh_termEq_Fun_1_1_7_2, _lh_termEq_Fun_2_1_7_2) -> 
      (match _lh_termEq_arg2_8_6 with
        | `Fun(_lh_termEq_Fun_0_1_7_3, _lh_termEq_Fun_1_1_7_3, _lh_termEq_Fun_2_1_7_3) -> 
          ((_lh_termEq_Fun_0_1_7_2 = _lh_termEq_Fun_0_1_7_3) && ((termLsEq_d0_d0_d9_d0 _lh_termEq_Fun_1_1_7_2) _lh_termEq_Fun_1_1_7_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d1 _lh_termEq_arg1_3_1 _lh_termEq_arg2_3_1 =
  (match _lh_termEq_arg1_3_1 with
    | `Var(_lh_termEq_Var_0_6_2) -> 
      (match _lh_termEq_arg2_3_1 with
        | `Var(_lh_termEq_Var_0_6_3) -> 
          (_lh_termEq_Var_0_6_2 = _lh_termEq_Var_0_6_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_6_2, _lh_termEq_Fun_1_6_2, _lh_termEq_Fun_2_6_2) -> 
      (match _lh_termEq_arg2_3_1 with
        | `Fun(_lh_termEq_Fun_0_6_3, _lh_termEq_Fun_1_6_3, _lh_termEq_Fun_2_6_3) -> 
          ((_lh_termEq_Fun_0_6_2 = _lh_termEq_Fun_0_6_3) && ((termLsEq_d0_d0_d9_d1 _lh_termEq_Fun_1_6_2) _lh_termEq_Fun_1_6_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d2 _lh_termEq_arg1_1_3_7 _lh_termEq_arg2_1_3_7 =
  (match _lh_termEq_arg1_1_3_7 with
    | `Var(_lh_termEq_Var_0_2_7_4) -> 
      (match _lh_termEq_arg2_1_3_7 with
        | `Var(_lh_termEq_Var_0_2_7_5) -> 
          (_lh_termEq_Var_0_2_7_4 = _lh_termEq_Var_0_2_7_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_7_4, _lh_termEq_Fun_1_2_7_4, _lh_termEq_Fun_2_2_7_4) -> 
      (match _lh_termEq_arg2_1_3_7 with
        | `Fun(_lh_termEq_Fun_0_2_7_5, _lh_termEq_Fun_1_2_7_5, _lh_termEq_Fun_2_2_7_5) -> 
          ((_lh_termEq_Fun_0_2_7_4 = _lh_termEq_Fun_0_2_7_5) && ((termLsEq_d0_d0_d9_d2 _lh_termEq_Fun_1_2_7_4) _lh_termEq_Fun_1_2_7_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d3 _lh_termEq_arg1_7_4 _lh_termEq_arg2_7_4 =
  (match _lh_termEq_arg1_7_4 with
    | `Var(_lh_termEq_Var_0_1_4_8) -> 
      (match _lh_termEq_arg2_7_4 with
        | `Var(_lh_termEq_Var_0_1_4_9) -> 
          (_lh_termEq_Var_0_1_4_8 = _lh_termEq_Var_0_1_4_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_4_8, _lh_termEq_Fun_1_1_4_8, _lh_termEq_Fun_2_1_4_8) -> 
      (match _lh_termEq_arg2_7_4 with
        | `Fun(_lh_termEq_Fun_0_1_4_9, _lh_termEq_Fun_1_1_4_9, _lh_termEq_Fun_2_1_4_9) -> 
          ((_lh_termEq_Fun_0_1_4_8 = _lh_termEq_Fun_0_1_4_9) && ((termLsEq_d0_d0_d9_d3 _lh_termEq_Fun_1_1_4_8) _lh_termEq_Fun_1_1_4_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d4 _lh_termEq_arg1_3_4 _lh_termEq_arg2_3_4 =
  (match _lh_termEq_arg1_3_4 with
    | `Var(_lh_termEq_Var_0_6_8) -> 
      (match _lh_termEq_arg2_3_4 with
        | `Var(_lh_termEq_Var_0_6_9) -> 
          (_lh_termEq_Var_0_6_8 = _lh_termEq_Var_0_6_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_6_8, _lh_termEq_Fun_1_6_8, _lh_termEq_Fun_2_6_8) -> 
      (match _lh_termEq_arg2_3_4 with
        | `Fun(_lh_termEq_Fun_0_6_9, _lh_termEq_Fun_1_6_9, _lh_termEq_Fun_2_6_9) -> 
          ((_lh_termEq_Fun_0_6_8 = _lh_termEq_Fun_0_6_9) && ((termLsEq_d0_d0_d9_d4 _lh_termEq_Fun_1_6_8) _lh_termEq_Fun_1_6_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d5 _lh_termEq_arg1_5_0 _lh_termEq_arg2_5_0 =
  (match _lh_termEq_arg1_5_0 with
    | `Var(_lh_termEq_Var_0_1_0_0) -> 
      (match _lh_termEq_arg2_5_0 with
        | `Var(_lh_termEq_Var_0_1_0_1) -> 
          (_lh_termEq_Var_0_1_0_0 = _lh_termEq_Var_0_1_0_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_0_0, _lh_termEq_Fun_1_1_0_0, _lh_termEq_Fun_2_1_0_0) -> 
      (match _lh_termEq_arg2_5_0 with
        | `Fun(_lh_termEq_Fun_0_1_0_1, _lh_termEq_Fun_1_1_0_1, _lh_termEq_Fun_2_1_0_1) -> 
          ((_lh_termEq_Fun_0_1_0_0 = _lh_termEq_Fun_0_1_0_1) && ((termLsEq_d0_d0_d9_d5 _lh_termEq_Fun_1_1_0_0) _lh_termEq_Fun_1_1_0_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d6 _lh_termEq_arg1_2_5 _lh_termEq_arg2_2_5 =
  (match _lh_termEq_arg1_2_5 with
    | `Var(_lh_termEq_Var_0_5_0) -> 
      (match _lh_termEq_arg2_2_5 with
        | `Var(_lh_termEq_Var_0_5_1) -> 
          (_lh_termEq_Var_0_5_0 = _lh_termEq_Var_0_5_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_5_0, _lh_termEq_Fun_1_5_0, _lh_termEq_Fun_2_5_0) -> 
      (match _lh_termEq_arg2_2_5 with
        | `Fun(_lh_termEq_Fun_0_5_1, _lh_termEq_Fun_1_5_1, _lh_termEq_Fun_2_5_1) -> 
          ((_lh_termEq_Fun_0_5_0 = _lh_termEq_Fun_0_5_1) && ((termLsEq_d0_d0_d9_d6 _lh_termEq_Fun_1_5_0) _lh_termEq_Fun_1_5_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d7 _lh_termEq_arg1_1_0_2 _lh_termEq_arg2_1_0_2 =
  (match _lh_termEq_arg1_1_0_2 with
    | `Var(_lh_termEq_Var_0_2_0_4) -> 
      (match _lh_termEq_arg2_1_0_2 with
        | `Var(_lh_termEq_Var_0_2_0_5) -> 
          (_lh_termEq_Var_0_2_0_4 = _lh_termEq_Var_0_2_0_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_0_4, _lh_termEq_Fun_1_2_0_4, _lh_termEq_Fun_2_2_0_4) -> 
      (match _lh_termEq_arg2_1_0_2 with
        | `Fun(_lh_termEq_Fun_0_2_0_5, _lh_termEq_Fun_1_2_0_5, _lh_termEq_Fun_2_2_0_5) -> 
          ((_lh_termEq_Fun_0_2_0_4 = _lh_termEq_Fun_0_2_0_5) && ((termLsEq_d0_d0_d9_d7 _lh_termEq_Fun_1_2_0_4) _lh_termEq_Fun_1_2_0_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d8 _lh_termEq_arg1_8_5 _lh_termEq_arg2_8_5 =
  (match _lh_termEq_arg1_8_5 with
    | `Var(_lh_termEq_Var_0_1_7_0) -> 
      (match _lh_termEq_arg2_8_5 with
        | `Var(_lh_termEq_Var_0_1_7_1) -> 
          (_lh_termEq_Var_0_1_7_0 = _lh_termEq_Var_0_1_7_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_7_0, _lh_termEq_Fun_1_1_7_0, _lh_termEq_Fun_2_1_7_0) -> 
      (match _lh_termEq_arg2_8_5 with
        | `Fun(_lh_termEq_Fun_0_1_7_1, _lh_termEq_Fun_1_1_7_1, _lh_termEq_Fun_2_1_7_1) -> 
          ((_lh_termEq_Fun_0_1_7_0 = _lh_termEq_Fun_0_1_7_1) && ((termLsEq_d0_d0_d9_d8 _lh_termEq_Fun_1_1_7_0) _lh_termEq_Fun_1_1_7_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d0_d0_d9_d9 _lh_termEq_arg1_5_9 _lh_termEq_arg2_5_9 =
  (match _lh_termEq_arg1_5_9 with
    | `Var(_lh_termEq_Var_0_1_1_8) -> 
      (match _lh_termEq_arg2_5_9 with
        | `Var(_lh_termEq_Var_0_1_1_9) -> 
          (_lh_termEq_Var_0_1_1_8 = _lh_termEq_Var_0_1_1_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_1_8, _lh_termEq_Fun_1_1_1_8, _lh_termEq_Fun_2_1_1_8) -> 
      (match _lh_termEq_arg2_5_9 with
        | `Fun(_lh_termEq_Fun_0_1_1_9, _lh_termEq_Fun_1_1_1_9, _lh_termEq_Fun_2_1_1_9) -> 
          ((_lh_termEq_Fun_0_1_1_8 = _lh_termEq_Fun_0_1_1_9) && ((termLsEq_d0_d0_d9_d9 _lh_termEq_Fun_1_1_1_8) _lh_termEq_Fun_1_1_1_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d1_d0_d0 _lh_termEq_arg1_1_0_1 _lh_termEq_arg2_1_0_1 =
  (match _lh_termEq_arg1_1_0_1 with
    | `Var(_lh_termEq_Var_0_2_0_2) -> 
      (match _lh_termEq_arg2_1_0_1 with
        | `Var(_lh_termEq_Var_0_2_0_3) -> 
          (_lh_termEq_Var_0_2_0_2 = _lh_termEq_Var_0_2_0_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_0_2, _lh_termEq_Fun_1_2_0_2, _lh_termEq_Fun_2_2_0_2) -> 
      (match _lh_termEq_arg2_1_0_1 with
        | `Fun(_lh_termEq_Fun_0_2_0_3, _lh_termEq_Fun_1_2_0_3, _lh_termEq_Fun_2_2_0_3) -> 
          ((_lh_termEq_Fun_0_2_0_2 = _lh_termEq_Fun_0_2_0_3) && ((termLsEq_d1_d0_d0 _lh_termEq_Fun_1_2_0_2) _lh_termEq_Fun_1_2_0_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d1_d1_d0 _lh_termEq_arg1_6_2 _lh_termEq_arg2_6_2 =
  (match _lh_termEq_arg1_6_2 with
    | `Var(_lh_termEq_Var_0_1_2_4) -> 
      (match _lh_termEq_arg2_6_2 with
        | `Var(_lh_termEq_Var_0_1_2_5) -> 
          (_lh_termEq_Var_0_1_2_4 = _lh_termEq_Var_0_1_2_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_2_4, _lh_termEq_Fun_1_1_2_4, _lh_termEq_Fun_2_1_2_4) -> 
      (match _lh_termEq_arg2_6_2 with
        | `Fun(_lh_termEq_Fun_0_1_2_5, _lh_termEq_Fun_1_1_2_5, _lh_termEq_Fun_2_1_2_5) -> 
          ((_lh_termEq_Fun_0_1_2_4 = _lh_termEq_Fun_0_1_2_5) && ((termLsEq_d1_d1_d0 _lh_termEq_Fun_1_1_2_4) _lh_termEq_Fun_1_1_2_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d2_d0_d0 _lh_termEq_arg1_3_5 _lh_termEq_arg2_3_5 =
  (match _lh_termEq_arg1_3_5 with
    | `Var(_lh_termEq_Var_0_7_0) -> 
      (match _lh_termEq_arg2_3_5 with
        | `Var(_lh_termEq_Var_0_7_1) -> 
          (_lh_termEq_Var_0_7_0 = _lh_termEq_Var_0_7_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_7_0, _lh_termEq_Fun_1_7_0, _lh_termEq_Fun_2_7_0) -> 
      (match _lh_termEq_arg2_3_5 with
        | `Fun(_lh_termEq_Fun_0_7_1, _lh_termEq_Fun_1_7_1, _lh_termEq_Fun_2_7_1) -> 
          ((_lh_termEq_Fun_0_7_0 = _lh_termEq_Fun_0_7_1) && ((termLsEq_d2_d0_d0 _lh_termEq_Fun_1_7_0) _lh_termEq_Fun_1_7_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d2_d1_d0 _lh_termEq_arg1_1_0_6 _lh_termEq_arg2_1_0_6 =
  (match _lh_termEq_arg1_1_0_6 with
    | `Var(_lh_termEq_Var_0_2_1_2) -> 
      (match _lh_termEq_arg2_1_0_6 with
        | `Var(_lh_termEq_Var_0_2_1_3) -> 
          (_lh_termEq_Var_0_2_1_2 = _lh_termEq_Var_0_2_1_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_1_2, _lh_termEq_Fun_1_2_1_2, _lh_termEq_Fun_2_2_1_2) -> 
      (match _lh_termEq_arg2_1_0_6 with
        | `Fun(_lh_termEq_Fun_0_2_1_3, _lh_termEq_Fun_1_2_1_3, _lh_termEq_Fun_2_2_1_3) -> 
          ((_lh_termEq_Fun_0_2_1_2 = _lh_termEq_Fun_0_2_1_3) && ((termLsEq_d2_d1_d0 _lh_termEq_Fun_1_2_1_2) _lh_termEq_Fun_1_2_1_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d3_d0_d0 _lh_termEq_arg1_3_6 _lh_termEq_arg2_3_6 =
  (match _lh_termEq_arg1_3_6 with
    | `Var(_lh_termEq_Var_0_7_2) -> 
      (match _lh_termEq_arg2_3_6 with
        | `Var(_lh_termEq_Var_0_7_3) -> 
          (_lh_termEq_Var_0_7_2 = _lh_termEq_Var_0_7_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_7_2, _lh_termEq_Fun_1_7_2, _lh_termEq_Fun_2_7_2) -> 
      (match _lh_termEq_arg2_3_6 with
        | `Fun(_lh_termEq_Fun_0_7_3, _lh_termEq_Fun_1_7_3, _lh_termEq_Fun_2_7_3) -> 
          ((_lh_termEq_Fun_0_7_2 = _lh_termEq_Fun_0_7_3) && ((termLsEq_d3_d0_d0 _lh_termEq_Fun_1_7_2) _lh_termEq_Fun_1_7_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d3_d1_d0 _lh_termEq_arg1_9 _lh_termEq_arg2_9 =
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
          ((_lh_termEq_Fun_0_1_8 = _lh_termEq_Fun_0_1_9) && ((termLsEq_d3_d1_d0 _lh_termEq_Fun_1_1_8) _lh_termEq_Fun_1_1_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d4_d0_d0 _lh_termEq_arg1_1_1_7 _lh_termEq_arg2_1_1_7 =
  (match _lh_termEq_arg1_1_1_7 with
    | `Var(_lh_termEq_Var_0_2_3_4) -> 
      (match _lh_termEq_arg2_1_1_7 with
        | `Var(_lh_termEq_Var_0_2_3_5) -> 
          (_lh_termEq_Var_0_2_3_4 = _lh_termEq_Var_0_2_3_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2_3_4, _lh_termEq_Fun_1_2_3_4, _lh_termEq_Fun_2_2_3_4) -> 
      (match _lh_termEq_arg2_1_1_7 with
        | `Fun(_lh_termEq_Fun_0_2_3_5, _lh_termEq_Fun_1_2_3_5, _lh_termEq_Fun_2_2_3_5) -> 
          ((_lh_termEq_Fun_0_2_3_4 = _lh_termEq_Fun_0_2_3_5) && ((termLsEq_d4_d0_d0 _lh_termEq_Fun_1_2_3_4) _lh_termEq_Fun_1_2_3_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq_d4_d1_d0 _lh_termEq_arg1_4_3 _lh_termEq_arg2_4_3 =
  (match _lh_termEq_arg1_4_3 with
    | `Var(_lh_termEq_Var_0_8_6) -> 
      (match _lh_termEq_arg2_4_3 with
        | `Var(_lh_termEq_Var_0_8_7) -> 
          (_lh_termEq_Var_0_8_6 = _lh_termEq_Var_0_8_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_8_6, _lh_termEq_Fun_1_8_6, _lh_termEq_Fun_2_8_6) -> 
      (match _lh_termEq_arg2_4_3 with
        | `Fun(_lh_termEq_Fun_0_8_7, _lh_termEq_Fun_1_8_7, _lh_termEq_Fun_2_8_7) -> 
          ((_lh_termEq_Fun_0_8_6 = _lh_termEq_Fun_0_8_7) && ((termLsEq_d4_d1_d0 _lh_termEq_Fun_1_8_6) _lh_termEq_Fun_1_8_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termInList_d0_d0_d0 _lh_termInList_arg1_1_5 _lh_termInList_arg2_1_5 =
  (match _lh_termInList_arg2_1_5 with
    | `LH_C(_lh_termInList_LH_C_0_1_5, _lh_termInList_LH_C_1_1_5) -> 
      (if ((termEq_d1_d0_d0 _lh_termInList_arg1_1_5) _lh_termInList_LH_C_0_1_5) then
        true
      else
        ((termInList_d0_d0_d0 _lh_termInList_arg1_1_5) _lh_termInList_LH_C_1_1_5))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d0_d1_d0 _lh_termInList_arg1_1_2 _lh_termInList_arg2_1_2 =
  (match _lh_termInList_arg2_1_2 with
    | `LH_C(_lh_termInList_LH_C_0_1_2, _lh_termInList_LH_C_1_1_2) -> 
      (if ((termEq_d1_d1_d0 _lh_termInList_arg1_1_2) _lh_termInList_LH_C_0_1_2) then
        true
      else
        ((termInList_d0_d1_d0 _lh_termInList_arg1_1_2) _lh_termInList_LH_C_1_1_2))
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
and termInList_d1_d1_d0 _lh_termInList_arg1_1_1 _lh_termInList_arg2_1_1 =
  (match _lh_termInList_arg2_1_1 with
    | `LH_C(_lh_termInList_LH_C_0_1_1, _lh_termInList_LH_C_1_1_1) -> 
      (if ((termEq_d2_d1_d0 _lh_termInList_arg1_1_1) _lh_termInList_LH_C_0_1_1) then
        true
      else
        ((termInList_d1_d1_d0 _lh_termInList_arg1_1_1) _lh_termInList_LH_C_1_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d2_d0_d0 _lh_termInList_arg1_8 _lh_termInList_arg2_8 =
  (match _lh_termInList_arg2_8 with
    | `LH_C(_lh_termInList_LH_C_0_8, _lh_termInList_LH_C_1_8) -> 
      (if ((termEq_d3_d0_d0 _lh_termInList_arg1_8) _lh_termInList_LH_C_0_8) then
        true
      else
        ((termInList_d2_d0_d0 _lh_termInList_arg1_8) _lh_termInList_LH_C_1_8))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d2_d1_d0 _lh_termInList_arg1_9 _lh_termInList_arg2_9 =
  (match _lh_termInList_arg2_9 with
    | `LH_C(_lh_termInList_LH_C_0_9, _lh_termInList_LH_C_1_9) -> 
      (if ((termEq_d3_d1_d0 _lh_termInList_arg1_9) _lh_termInList_LH_C_0_9) then
        true
      else
        ((termInList_d2_d1_d0 _lh_termInList_arg1_9) _lh_termInList_LH_C_1_9))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d3_d0_d0 _lh_termInList_arg1_1_3 _lh_termInList_arg2_1_3 =
  (match _lh_termInList_arg2_1_3 with
    | `LH_C(_lh_termInList_LH_C_0_1_3, _lh_termInList_LH_C_1_1_3) -> 
      (if ((termEq_d4_d0_d0 _lh_termInList_arg1_1_3) _lh_termInList_LH_C_0_1_3) then
        true
      else
        ((termInList_d3_d0_d0 _lh_termInList_arg1_1_3) _lh_termInList_LH_C_1_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList_d3_d1_d0 _lh_termInList_arg1_1_4 _lh_termInList_arg2_1_4 =
  (match _lh_termInList_arg2_1_4 with
    | `LH_C(_lh_termInList_LH_C_0_1_4, _lh_termInList_LH_C_1_1_4) -> 
      (if ((termEq_d4_d1_d0 _lh_termInList_arg1_1_4) _lh_termInList_LH_C_0_1_4) then
        true
      else
        ((termInList_d3_d1_d0 _lh_termInList_arg1_1_4) _lh_termInList_LH_C_1_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d0 _lh_termLsEq_arg1_4_5 _lh_termLsEq_arg2_4_5 =
  (match _lh_termLsEq_arg1_4_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_9_0, _lh_termLsEq_LH_C_1_9_0) -> 
      (match _lh_termLsEq_arg2_4_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_9_1, _lh_termLsEq_LH_C_1_9_1) -> 
          (if ((termEq_d0_d0_d0 _lh_termLsEq_LH_C_0_9_0) _lh_termLsEq_LH_C_0_9_1) then
            ((termLsEq_d0_d0_d0 _lh_termLsEq_LH_C_1_9_0) _lh_termLsEq_LH_C_1_9_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1 _lh_termLsEq_arg1_9_8 _lh_termLsEq_arg2_9_8 =
  (match _lh_termLsEq_arg1_9_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_9_6, _lh_termLsEq_LH_C_1_1_9_6) -> 
      (match _lh_termLsEq_arg2_9_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_9_7, _lh_termLsEq_LH_C_1_1_9_7) -> 
          (if ((termEq_d0_d0_d1 _lh_termLsEq_LH_C_0_1_9_6) _lh_termLsEq_LH_C_0_1_9_7) then
            ((termLsEq_d0_d0_d1 _lh_termLsEq_LH_C_1_1_9_6) _lh_termLsEq_LH_C_1_1_9_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d0 _lh_termLsEq_arg1_8_5 _lh_termLsEq_arg2_8_5 =
  (match _lh_termLsEq_arg1_8_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_7_0, _lh_termLsEq_LH_C_1_1_7_0) -> 
      (match _lh_termLsEq_arg2_8_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_7_1, _lh_termLsEq_LH_C_1_1_7_1) -> 
          (if ((termEq_d0_d0_d1_d0 _lh_termLsEq_LH_C_0_1_7_0) _lh_termLsEq_LH_C_0_1_7_1) then
            ((termLsEq_d0_d0_d1_d0 _lh_termLsEq_LH_C_1_1_7_0) _lh_termLsEq_LH_C_1_1_7_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d0_d0 _lh_termLsEq_arg1_1_4 _lh_termLsEq_arg2_1_4 =
  (match _lh_termLsEq_arg1_1_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_8, _lh_termLsEq_LH_C_1_2_8) -> 
      (match _lh_termLsEq_arg2_1_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_9, _lh_termLsEq_LH_C_1_2_9) -> 
          (if ((termEq_d0_d0_d1_d0_d0 _lh_termLsEq_LH_C_0_2_8) _lh_termLsEq_LH_C_0_2_9) then
            ((termLsEq_d0_d0_d1_d0_d0 _lh_termLsEq_LH_C_1_2_8) _lh_termLsEq_LH_C_1_2_9)
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
and termLsEq_d0_d0_d1_d0_d1 _lh_termLsEq_arg1_1_0_5 _lh_termLsEq_arg2_1_0_5 =
  (match _lh_termLsEq_arg1_1_0_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_1_0, _lh_termLsEq_LH_C_1_2_1_0) -> 
      (match _lh_termLsEq_arg2_1_0_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_1_1, _lh_termLsEq_LH_C_1_2_1_1) -> 
          (if ((termEq_d0_d0_d1_d0_d1 _lh_termLsEq_LH_C_0_2_1_0) _lh_termLsEq_LH_C_0_2_1_1) then
            ((termLsEq_d0_d0_d1_d0_d1 _lh_termLsEq_LH_C_1_2_1_0) _lh_termLsEq_LH_C_1_2_1_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d0_d2 _lh_termLsEq_arg1_1_3_3 _lh_termLsEq_arg2_1_3_3 =
  (match _lh_termLsEq_arg1_1_3_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_6_6, _lh_termLsEq_LH_C_1_2_6_6) -> 
      (match _lh_termLsEq_arg2_1_3_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_6_7, _lh_termLsEq_LH_C_1_2_6_7) -> 
          (if ((termEq_d0_d0_d1_d0_d2 _lh_termLsEq_LH_C_0_2_6_6) _lh_termLsEq_LH_C_0_2_6_7) then
            ((termLsEq_d0_d0_d1_d0_d2 _lh_termLsEq_LH_C_1_2_6_6) _lh_termLsEq_LH_C_1_2_6_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d0_d3 _lh_termLsEq_arg1_1_1 _lh_termLsEq_arg2_1_1 =
  (match _lh_termLsEq_arg1_1_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_2, _lh_termLsEq_LH_C_1_2_2) -> 
      (match _lh_termLsEq_arg2_1_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_3, _lh_termLsEq_LH_C_1_2_3) -> 
          (if ((termEq_d0_d0_d1_d0_d3 _lh_termLsEq_LH_C_0_2_2) _lh_termLsEq_LH_C_0_2_3) then
            ((termLsEq_d0_d0_d1_d0_d3 _lh_termLsEq_LH_C_1_2_2) _lh_termLsEq_LH_C_1_2_3)
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
and termLsEq_d0_d0_d1_d0_d4 _lh_termLsEq_arg1_9_0 _lh_termLsEq_arg2_9_0 =
  (match _lh_termLsEq_arg1_9_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_8_0, _lh_termLsEq_LH_C_1_1_8_0) -> 
      (match _lh_termLsEq_arg2_9_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_8_1, _lh_termLsEq_LH_C_1_1_8_1) -> 
          (if ((termEq_d0_d0_d1_d0_d4 _lh_termLsEq_LH_C_0_1_8_0) _lh_termLsEq_LH_C_0_1_8_1) then
            ((termLsEq_d0_d0_d1_d0_d4 _lh_termLsEq_LH_C_1_1_8_0) _lh_termLsEq_LH_C_1_1_8_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d0_d5 _lh_termLsEq_arg1_2_8 _lh_termLsEq_arg2_2_8 =
  (match _lh_termLsEq_arg1_2_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_5_6, _lh_termLsEq_LH_C_1_5_6) -> 
      (match _lh_termLsEq_arg2_2_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_5_7, _lh_termLsEq_LH_C_1_5_7) -> 
          (if ((termEq_d0_d0_d1_d0_d5 _lh_termLsEq_LH_C_0_5_6) _lh_termLsEq_LH_C_0_5_7) then
            ((termLsEq_d0_d0_d1_d0_d5 _lh_termLsEq_LH_C_1_5_6) _lh_termLsEq_LH_C_1_5_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d0_d6 _lh_termLsEq_arg1_1_0_0 _lh_termLsEq_arg2_1_0_0 =
  (match _lh_termLsEq_arg1_1_0_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_0_0, _lh_termLsEq_LH_C_1_2_0_0) -> 
      (match _lh_termLsEq_arg2_1_0_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_0_1, _lh_termLsEq_LH_C_1_2_0_1) -> 
          (if ((termEq_d0_d0_d1_d0_d6 _lh_termLsEq_LH_C_0_2_0_0) _lh_termLsEq_LH_C_0_2_0_1) then
            ((termLsEq_d0_d0_d1_d0_d6 _lh_termLsEq_LH_C_1_2_0_0) _lh_termLsEq_LH_C_1_2_0_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d0_d7 _lh_termLsEq_arg1_4_7 _lh_termLsEq_arg2_4_7 =
  (match _lh_termLsEq_arg1_4_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_9_4, _lh_termLsEq_LH_C_1_9_4) -> 
      (match _lh_termLsEq_arg2_4_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_9_5, _lh_termLsEq_LH_C_1_9_5) -> 
          (if ((termEq_d0_d0_d1_d0_d7 _lh_termLsEq_LH_C_0_9_4) _lh_termLsEq_LH_C_0_9_5) then
            ((termLsEq_d0_d0_d1_d0_d7 _lh_termLsEq_LH_C_1_9_4) _lh_termLsEq_LH_C_1_9_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d0_d8 _lh_termLsEq_arg1_8_7 _lh_termLsEq_arg2_8_7 =
  (match _lh_termLsEq_arg1_8_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_7_4, _lh_termLsEq_LH_C_1_1_7_4) -> 
      (match _lh_termLsEq_arg2_8_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_7_5, _lh_termLsEq_LH_C_1_1_7_5) -> 
          (if ((termEq_d0_d0_d1_d0_d8 _lh_termLsEq_LH_C_0_1_7_4) _lh_termLsEq_LH_C_0_1_7_5) then
            ((termLsEq_d0_d0_d1_d0_d8 _lh_termLsEq_LH_C_1_1_7_4) _lh_termLsEq_LH_C_1_1_7_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d0_d9 _lh_termLsEq_arg1_1_1_7 _lh_termLsEq_arg2_1_1_7 =
  (match _lh_termLsEq_arg1_1_1_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_3_4, _lh_termLsEq_LH_C_1_2_3_4) -> 
      (match _lh_termLsEq_arg2_1_1_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_3_5, _lh_termLsEq_LH_C_1_2_3_5) -> 
          (if ((termEq_d0_d0_d1_d0_d9 _lh_termLsEq_LH_C_0_2_3_4) _lh_termLsEq_LH_C_0_2_3_5) then
            ((termLsEq_d0_d0_d1_d0_d9 _lh_termLsEq_LH_C_1_2_3_4) _lh_termLsEq_LH_C_1_2_3_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1 _lh_termLsEq_arg1_1_3_2 _lh_termLsEq_arg2_1_3_2 =
  (match _lh_termLsEq_arg1_1_3_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_6_4, _lh_termLsEq_LH_C_1_2_6_4) -> 
      (match _lh_termLsEq_arg2_1_3_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_6_5, _lh_termLsEq_LH_C_1_2_6_5) -> 
          (if ((termEq_d0_d0_d1_d1 _lh_termLsEq_LH_C_0_2_6_4) _lh_termLsEq_LH_C_0_2_6_5) then
            ((termLsEq_d0_d0_d1_d1 _lh_termLsEq_LH_C_1_2_6_4) _lh_termLsEq_LH_C_1_2_6_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1_d0 _lh_termLsEq_arg1_1_0_2 _lh_termLsEq_arg2_1_0_2 =
  (match _lh_termLsEq_arg1_1_0_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_0_4, _lh_termLsEq_LH_C_1_2_0_4) -> 
      (match _lh_termLsEq_arg2_1_0_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_0_5, _lh_termLsEq_LH_C_1_2_0_5) -> 
          (if ((termEq_d0_d0_d1_d1_d0 _lh_termLsEq_LH_C_0_2_0_4) _lh_termLsEq_LH_C_0_2_0_5) then
            ((termLsEq_d0_d0_d1_d1_d0 _lh_termLsEq_LH_C_1_2_0_4) _lh_termLsEq_LH_C_1_2_0_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1_d1 _lh_termLsEq_arg1_1_0_4 _lh_termLsEq_arg2_1_0_4 =
  (match _lh_termLsEq_arg1_1_0_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_0_8, _lh_termLsEq_LH_C_1_2_0_8) -> 
      (match _lh_termLsEq_arg2_1_0_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_0_9, _lh_termLsEq_LH_C_1_2_0_9) -> 
          (if ((termEq_d0_d0_d1_d1_d1 _lh_termLsEq_LH_C_0_2_0_8) _lh_termLsEq_LH_C_0_2_0_9) then
            ((termLsEq_d0_d0_d1_d1_d1 _lh_termLsEq_LH_C_1_2_0_8) _lh_termLsEq_LH_C_1_2_0_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1_d2 _lh_termLsEq_arg1_1_2_4 _lh_termLsEq_arg2_1_2_4 =
  (match _lh_termLsEq_arg1_1_2_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_4_8, _lh_termLsEq_LH_C_1_2_4_8) -> 
      (match _lh_termLsEq_arg2_1_2_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_4_9, _lh_termLsEq_LH_C_1_2_4_9) -> 
          (if ((termEq_d0_d0_d1_d1_d2 _lh_termLsEq_LH_C_0_2_4_8) _lh_termLsEq_LH_C_0_2_4_9) then
            ((termLsEq_d0_d0_d1_d1_d2 _lh_termLsEq_LH_C_1_2_4_8) _lh_termLsEq_LH_C_1_2_4_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1_d3 _lh_termLsEq_arg1_1_5 _lh_termLsEq_arg2_1_5 =
  (match _lh_termLsEq_arg1_1_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_3_0, _lh_termLsEq_LH_C_1_3_0) -> 
      (match _lh_termLsEq_arg2_1_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_3_1, _lh_termLsEq_LH_C_1_3_1) -> 
          (if ((termEq_d0_d0_d1_d1_d3 _lh_termLsEq_LH_C_0_3_0) _lh_termLsEq_LH_C_0_3_1) then
            ((termLsEq_d0_d0_d1_d1_d3 _lh_termLsEq_LH_C_1_3_0) _lh_termLsEq_LH_C_1_3_1)
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
and termLsEq_d0_d0_d1_d1_d4 _lh_termLsEq_arg1_1_9 _lh_termLsEq_arg2_1_9 =
  (match _lh_termLsEq_arg1_1_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_3_8, _lh_termLsEq_LH_C_1_3_8) -> 
      (match _lh_termLsEq_arg2_1_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_3_9, _lh_termLsEq_LH_C_1_3_9) -> 
          (if ((termEq_d0_d0_d1_d1_d4 _lh_termLsEq_LH_C_0_3_8) _lh_termLsEq_LH_C_0_3_9) then
            ((termLsEq_d0_d0_d1_d1_d4 _lh_termLsEq_LH_C_1_3_8) _lh_termLsEq_LH_C_1_3_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1_d5 _lh_termLsEq_arg1_8_0 _lh_termLsEq_arg2_8_0 =
  (match _lh_termLsEq_arg1_8_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_6_0, _lh_termLsEq_LH_C_1_1_6_0) -> 
      (match _lh_termLsEq_arg2_8_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_6_1, _lh_termLsEq_LH_C_1_1_6_1) -> 
          (if ((termEq_d0_d0_d1_d1_d5 _lh_termLsEq_LH_C_0_1_6_0) _lh_termLsEq_LH_C_0_1_6_1) then
            ((termLsEq_d0_d0_d1_d1_d5 _lh_termLsEq_LH_C_1_1_6_0) _lh_termLsEq_LH_C_1_1_6_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1_d6 _lh_termLsEq_arg1_2_9 _lh_termLsEq_arg2_2_9 =
  (match _lh_termLsEq_arg1_2_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_5_8, _lh_termLsEq_LH_C_1_5_8) -> 
      (match _lh_termLsEq_arg2_2_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_5_9, _lh_termLsEq_LH_C_1_5_9) -> 
          (if ((termEq_d0_d0_d1_d1_d6 _lh_termLsEq_LH_C_0_5_8) _lh_termLsEq_LH_C_0_5_9) then
            ((termLsEq_d0_d0_d1_d1_d6 _lh_termLsEq_LH_C_1_5_8) _lh_termLsEq_LH_C_1_5_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1_d7 _lh_termLsEq_arg1_1_0_8 _lh_termLsEq_arg2_1_0_8 =
  (match _lh_termLsEq_arg1_1_0_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_1_6, _lh_termLsEq_LH_C_1_2_1_6) -> 
      (match _lh_termLsEq_arg2_1_0_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_1_7, _lh_termLsEq_LH_C_1_2_1_7) -> 
          (if ((termEq_d0_d0_d1_d1_d7 _lh_termLsEq_LH_C_0_2_1_6) _lh_termLsEq_LH_C_0_2_1_7) then
            ((termLsEq_d0_d0_d1_d1_d7 _lh_termLsEq_LH_C_1_2_1_6) _lh_termLsEq_LH_C_1_2_1_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1_d8 _lh_termLsEq_arg1_6_1 _lh_termLsEq_arg2_6_1 =
  (match _lh_termLsEq_arg1_6_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_2_2, _lh_termLsEq_LH_C_1_1_2_2) -> 
      (match _lh_termLsEq_arg2_6_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_2_3, _lh_termLsEq_LH_C_1_1_2_3) -> 
          (if ((termEq_d0_d0_d1_d1_d8 _lh_termLsEq_LH_C_0_1_2_2) _lh_termLsEq_LH_C_0_1_2_3) then
            ((termLsEq_d0_d0_d1_d1_d8 _lh_termLsEq_LH_C_1_1_2_2) _lh_termLsEq_LH_C_1_1_2_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d1_d9 _lh_termLsEq_arg1_3_0 _lh_termLsEq_arg2_3_0 =
  (match _lh_termLsEq_arg1_3_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_6_0, _lh_termLsEq_LH_C_1_6_0) -> 
      (match _lh_termLsEq_arg2_3_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_6_1, _lh_termLsEq_LH_C_1_6_1) -> 
          (if ((termEq_d0_d0_d1_d1_d9 _lh_termLsEq_LH_C_0_6_0) _lh_termLsEq_LH_C_0_6_1) then
            ((termLsEq_d0_d0_d1_d1_d9 _lh_termLsEq_LH_C_1_6_0) _lh_termLsEq_LH_C_1_6_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d2 _lh_termLsEq_arg1_1_1_4 _lh_termLsEq_arg2_1_1_4 =
  (match _lh_termLsEq_arg1_1_1_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_2_8, _lh_termLsEq_LH_C_1_2_2_8) -> 
      (match _lh_termLsEq_arg2_1_1_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_2_9, _lh_termLsEq_LH_C_1_2_2_9) -> 
          (if ((termEq_d0_d0_d1_d2 _lh_termLsEq_LH_C_0_2_2_8) _lh_termLsEq_LH_C_0_2_2_9) then
            ((termLsEq_d0_d0_d1_d2 _lh_termLsEq_LH_C_1_2_2_8) _lh_termLsEq_LH_C_1_2_2_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d2_d0 _lh_termLsEq_arg1_9 _lh_termLsEq_arg2_9 =
  (match _lh_termLsEq_arg1_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_8, _lh_termLsEq_LH_C_1_1_8) -> 
      (match _lh_termLsEq_arg2_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_9, _lh_termLsEq_LH_C_1_1_9) -> 
          (if ((termEq_d0_d0_d1_d2_d0 _lh_termLsEq_LH_C_0_1_8) _lh_termLsEq_LH_C_0_1_9) then
            ((termLsEq_d0_d0_d1_d2_d0 _lh_termLsEq_LH_C_1_1_8) _lh_termLsEq_LH_C_1_1_9)
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
and termLsEq_d0_d0_d1_d2_d1 _lh_termLsEq_arg1_5_5 _lh_termLsEq_arg2_5_5 =
  (match _lh_termLsEq_arg1_5_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_1_0, _lh_termLsEq_LH_C_1_1_1_0) -> 
      (match _lh_termLsEq_arg2_5_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_1_1, _lh_termLsEq_LH_C_1_1_1_1) -> 
          (if ((termEq_d0_d0_d1_d2_d1 _lh_termLsEq_LH_C_0_1_1_0) _lh_termLsEq_LH_C_0_1_1_1) then
            ((termLsEq_d0_d0_d1_d2_d1 _lh_termLsEq_LH_C_1_1_1_0) _lh_termLsEq_LH_C_1_1_1_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d3 _lh_termLsEq_arg1_1_7 _lh_termLsEq_arg2_1_7 =
  (match _lh_termLsEq_arg1_1_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_3_4, _lh_termLsEq_LH_C_1_3_4) -> 
      (match _lh_termLsEq_arg2_1_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_3_5, _lh_termLsEq_LH_C_1_3_5) -> 
          (if ((termEq_d0_d0_d1_d3 _lh_termLsEq_LH_C_0_3_4) _lh_termLsEq_LH_C_0_3_5) then
            ((termLsEq_d0_d0_d1_d3 _lh_termLsEq_LH_C_1_3_4) _lh_termLsEq_LH_C_1_3_5)
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
and termLsEq_d0_d0_d1_d4 _lh_termLsEq_arg1_1_0 _lh_termLsEq_arg2_1_0 =
  (match _lh_termLsEq_arg1_1_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_0, _lh_termLsEq_LH_C_1_2_0) -> 
      (match _lh_termLsEq_arg2_1_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_1, _lh_termLsEq_LH_C_1_2_1) -> 
          (if ((termEq_d0_d0_d1_d4 _lh_termLsEq_LH_C_0_2_0) _lh_termLsEq_LH_C_0_2_1) then
            ((termLsEq_d0_d0_d1_d4 _lh_termLsEq_LH_C_1_2_0) _lh_termLsEq_LH_C_1_2_1)
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
and termLsEq_d0_d0_d1_d5 _lh_termLsEq_arg1_7_3 _lh_termLsEq_arg2_7_3 =
  (match _lh_termLsEq_arg1_7_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_4_6, _lh_termLsEq_LH_C_1_1_4_6) -> 
      (match _lh_termLsEq_arg2_7_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_4_7, _lh_termLsEq_LH_C_1_1_4_7) -> 
          (if ((termEq_d0_d0_d1_d5 _lh_termLsEq_LH_C_0_1_4_6) _lh_termLsEq_LH_C_0_1_4_7) then
            ((termLsEq_d0_d0_d1_d5 _lh_termLsEq_LH_C_1_1_4_6) _lh_termLsEq_LH_C_1_1_4_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d6 _lh_termLsEq_arg1_4_8 _lh_termLsEq_arg2_4_8 =
  (match _lh_termLsEq_arg1_4_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_9_6, _lh_termLsEq_LH_C_1_9_6) -> 
      (match _lh_termLsEq_arg2_4_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_9_7, _lh_termLsEq_LH_C_1_9_7) -> 
          (if ((termEq_d0_d0_d1_d6 _lh_termLsEq_LH_C_0_9_6) _lh_termLsEq_LH_C_0_9_7) then
            ((termLsEq_d0_d0_d1_d6 _lh_termLsEq_LH_C_1_9_6) _lh_termLsEq_LH_C_1_9_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d7 _lh_termLsEq_arg1_8_4 _lh_termLsEq_arg2_8_4 =
  (match _lh_termLsEq_arg1_8_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_6_8, _lh_termLsEq_LH_C_1_1_6_8) -> 
      (match _lh_termLsEq_arg2_8_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_6_9, _lh_termLsEq_LH_C_1_1_6_9) -> 
          (if ((termEq_d0_d0_d1_d7 _lh_termLsEq_LH_C_0_1_6_8) _lh_termLsEq_LH_C_0_1_6_9) then
            ((termLsEq_d0_d0_d1_d7 _lh_termLsEq_LH_C_1_1_6_8) _lh_termLsEq_LH_C_1_1_6_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d8 _lh_termLsEq_arg1_6_3 _lh_termLsEq_arg2_6_3 =
  (match _lh_termLsEq_arg1_6_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_2_6, _lh_termLsEq_LH_C_1_1_2_6) -> 
      (match _lh_termLsEq_arg2_6_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_2_7, _lh_termLsEq_LH_C_1_1_2_7) -> 
          (if ((termEq_d0_d0_d1_d8 _lh_termLsEq_LH_C_0_1_2_6) _lh_termLsEq_LH_C_0_1_2_7) then
            ((termLsEq_d0_d0_d1_d8 _lh_termLsEq_LH_C_1_1_2_6) _lh_termLsEq_LH_C_1_1_2_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d1_d9 _lh_termLsEq_arg1_1_3_5 _lh_termLsEq_arg2_1_3_5 =
  (match _lh_termLsEq_arg1_1_3_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_7_0, _lh_termLsEq_LH_C_1_2_7_0) -> 
      (match _lh_termLsEq_arg2_1_3_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_7_1, _lh_termLsEq_LH_C_1_2_7_1) -> 
          (if ((termEq_d0_d0_d1_d9 _lh_termLsEq_LH_C_0_2_7_0) _lh_termLsEq_LH_C_0_2_7_1) then
            ((termLsEq_d0_d0_d1_d9 _lh_termLsEq_LH_C_1_2_7_0) _lh_termLsEq_LH_C_1_2_7_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2 _lh_termLsEq_arg1_1_1_5 _lh_termLsEq_arg2_1_1_5 =
  (match _lh_termLsEq_arg1_1_1_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_3_0, _lh_termLsEq_LH_C_1_2_3_0) -> 
      (match _lh_termLsEq_arg2_1_1_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_3_1, _lh_termLsEq_LH_C_1_2_3_1) -> 
          (if ((termEq_d0_d0_d2 _lh_termLsEq_LH_C_0_2_3_0) _lh_termLsEq_LH_C_0_2_3_1) then
            ((termLsEq_d0_d0_d2 _lh_termLsEq_LH_C_1_2_3_0) _lh_termLsEq_LH_C_1_2_3_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d0 _lh_termLsEq_arg1_7_1 _lh_termLsEq_arg2_7_1 =
  (match _lh_termLsEq_arg1_7_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_4_2, _lh_termLsEq_LH_C_1_1_4_2) -> 
      (match _lh_termLsEq_arg2_7_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_4_3, _lh_termLsEq_LH_C_1_1_4_3) -> 
          (if ((termEq_d0_d0_d2_d0 _lh_termLsEq_LH_C_0_1_4_2) _lh_termLsEq_LH_C_0_1_4_3) then
            ((termLsEq_d0_d0_d2_d0 _lh_termLsEq_LH_C_1_1_4_2) _lh_termLsEq_LH_C_1_1_4_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d1 _lh_termLsEq_arg1_5_1 _lh_termLsEq_arg2_5_1 =
  (match _lh_termLsEq_arg1_5_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_0_2, _lh_termLsEq_LH_C_1_1_0_2) -> 
      (match _lh_termLsEq_arg2_5_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_0_3, _lh_termLsEq_LH_C_1_1_0_3) -> 
          (if ((termEq_d0_d0_d2_d1 _lh_termLsEq_LH_C_0_1_0_2) _lh_termLsEq_LH_C_0_1_0_3) then
            ((termLsEq_d0_d0_d2_d1 _lh_termLsEq_LH_C_1_1_0_2) _lh_termLsEq_LH_C_1_1_0_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d2 _lh_termLsEq_arg1_5_9 _lh_termLsEq_arg2_5_9 =
  (match _lh_termLsEq_arg1_5_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_1_8, _lh_termLsEq_LH_C_1_1_1_8) -> 
      (match _lh_termLsEq_arg2_5_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_1_9, _lh_termLsEq_LH_C_1_1_1_9) -> 
          (if ((termEq_d0_d0_d2_d2 _lh_termLsEq_LH_C_0_1_1_8) _lh_termLsEq_LH_C_0_1_1_9) then
            ((termLsEq_d0_d0_d2_d2 _lh_termLsEq_LH_C_1_1_1_8) _lh_termLsEq_LH_C_1_1_1_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d3 _lh_termLsEq_arg1_1_1_8 _lh_termLsEq_arg2_1_1_8 =
  (match _lh_termLsEq_arg1_1_1_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_3_6, _lh_termLsEq_LH_C_1_2_3_6) -> 
      (match _lh_termLsEq_arg2_1_1_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_3_7, _lh_termLsEq_LH_C_1_2_3_7) -> 
          (if ((termEq_d0_d0_d2_d3 _lh_termLsEq_LH_C_0_2_3_6) _lh_termLsEq_LH_C_0_2_3_7) then
            ((termLsEq_d0_d0_d2_d3 _lh_termLsEq_LH_C_1_2_3_6) _lh_termLsEq_LH_C_1_2_3_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d4 _lh_termLsEq_arg1_7_9 _lh_termLsEq_arg2_7_9 =
  (match _lh_termLsEq_arg1_7_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_5_8, _lh_termLsEq_LH_C_1_1_5_8) -> 
      (match _lh_termLsEq_arg2_7_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_5_9, _lh_termLsEq_LH_C_1_1_5_9) -> 
          (if ((termEq_d0_d0_d2_d4 _lh_termLsEq_LH_C_0_1_5_8) _lh_termLsEq_LH_C_0_1_5_9) then
            ((termLsEq_d0_d0_d2_d4 _lh_termLsEq_LH_C_1_1_5_8) _lh_termLsEq_LH_C_1_1_5_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d5 _lh_termLsEq_arg1_5_7 _lh_termLsEq_arg2_5_7 =
  (match _lh_termLsEq_arg1_5_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_1_4, _lh_termLsEq_LH_C_1_1_1_4) -> 
      (match _lh_termLsEq_arg2_5_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_1_5, _lh_termLsEq_LH_C_1_1_1_5) -> 
          (if ((termEq_d0_d0_d2_d5 _lh_termLsEq_LH_C_0_1_1_4) _lh_termLsEq_LH_C_0_1_1_5) then
            ((termLsEq_d0_d0_d2_d5 _lh_termLsEq_LH_C_1_1_1_4) _lh_termLsEq_LH_C_1_1_1_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d6 _lh_termLsEq_arg1_1_2_7 _lh_termLsEq_arg2_1_2_7 =
  (match _lh_termLsEq_arg1_1_2_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_5_4, _lh_termLsEq_LH_C_1_2_5_4) -> 
      (match _lh_termLsEq_arg2_1_2_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_5_5, _lh_termLsEq_LH_C_1_2_5_5) -> 
          (if ((termEq_d0_d0_d2_d6 _lh_termLsEq_LH_C_0_2_5_4) _lh_termLsEq_LH_C_0_2_5_5) then
            ((termLsEq_d0_d0_d2_d6 _lh_termLsEq_LH_C_1_2_5_4) _lh_termLsEq_LH_C_1_2_5_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d7 _lh_termLsEq_arg1_1_2_1 _lh_termLsEq_arg2_1_2_1 =
  (match _lh_termLsEq_arg1_1_2_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_4_2, _lh_termLsEq_LH_C_1_2_4_2) -> 
      (match _lh_termLsEq_arg2_1_2_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_4_3, _lh_termLsEq_LH_C_1_2_4_3) -> 
          (if ((termEq_d0_d0_d2_d7 _lh_termLsEq_LH_C_0_2_4_2) _lh_termLsEq_LH_C_0_2_4_3) then
            ((termLsEq_d0_d0_d2_d7 _lh_termLsEq_LH_C_1_2_4_2) _lh_termLsEq_LH_C_1_2_4_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d8 _lh_termLsEq_arg1_8_3 _lh_termLsEq_arg2_8_3 =
  (match _lh_termLsEq_arg1_8_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_6_6, _lh_termLsEq_LH_C_1_1_6_6) -> 
      (match _lh_termLsEq_arg2_8_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_6_7, _lh_termLsEq_LH_C_1_1_6_7) -> 
          (if ((termEq_d0_d0_d2_d8 _lh_termLsEq_LH_C_0_1_6_6) _lh_termLsEq_LH_C_0_1_6_7) then
            ((termLsEq_d0_d0_d2_d8 _lh_termLsEq_LH_C_1_1_6_6) _lh_termLsEq_LH_C_1_1_6_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d2_d9 _lh_termLsEq_arg1_2_3 _lh_termLsEq_arg2_2_3 =
  (match _lh_termLsEq_arg1_2_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_4_6, _lh_termLsEq_LH_C_1_4_6) -> 
      (match _lh_termLsEq_arg2_2_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_4_7, _lh_termLsEq_LH_C_1_4_7) -> 
          (if ((termEq_d0_d0_d2_d9 _lh_termLsEq_LH_C_0_4_6) _lh_termLsEq_LH_C_0_4_7) then
            ((termLsEq_d0_d0_d2_d9 _lh_termLsEq_LH_C_1_4_6) _lh_termLsEq_LH_C_1_4_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3 _lh_termLsEq_arg1_6_8 _lh_termLsEq_arg2_6_8 =
  (match _lh_termLsEq_arg1_6_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_3_6, _lh_termLsEq_LH_C_1_1_3_6) -> 
      (match _lh_termLsEq_arg2_6_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_3_7, _lh_termLsEq_LH_C_1_1_3_7) -> 
          (if ((termEq_d0_d0_d3 _lh_termLsEq_LH_C_0_1_3_6) _lh_termLsEq_LH_C_0_1_3_7) then
            ((termLsEq_d0_d0_d3 _lh_termLsEq_LH_C_1_1_3_6) _lh_termLsEq_LH_C_1_1_3_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3_d0 _lh_termLsEq_arg1_9_3 _lh_termLsEq_arg2_9_3 =
  (match _lh_termLsEq_arg1_9_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_8_6, _lh_termLsEq_LH_C_1_1_8_6) -> 
      (match _lh_termLsEq_arg2_9_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_8_7, _lh_termLsEq_LH_C_1_1_8_7) -> 
          (if ((termEq_d0_d0_d3_d0 _lh_termLsEq_LH_C_0_1_8_6) _lh_termLsEq_LH_C_0_1_8_7) then
            ((termLsEq_d0_d0_d3_d0 _lh_termLsEq_LH_C_1_1_8_6) _lh_termLsEq_LH_C_1_1_8_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3_d1 _lh_termLsEq_arg1_6_2 _lh_termLsEq_arg2_6_2 =
  (match _lh_termLsEq_arg1_6_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_2_4, _lh_termLsEq_LH_C_1_1_2_4) -> 
      (match _lh_termLsEq_arg2_6_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_2_5, _lh_termLsEq_LH_C_1_1_2_5) -> 
          (if ((termEq_d0_d0_d3_d1 _lh_termLsEq_LH_C_0_1_2_4) _lh_termLsEq_LH_C_0_1_2_5) then
            ((termLsEq_d0_d0_d3_d1 _lh_termLsEq_LH_C_1_1_2_4) _lh_termLsEq_LH_C_1_1_2_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3_d2 _lh_termLsEq_arg1_5_2 _lh_termLsEq_arg2_5_2 =
  (match _lh_termLsEq_arg1_5_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_0_4, _lh_termLsEq_LH_C_1_1_0_4) -> 
      (match _lh_termLsEq_arg2_5_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_0_5, _lh_termLsEq_LH_C_1_1_0_5) -> 
          (if ((termEq_d0_d0_d3_d2 _lh_termLsEq_LH_C_0_1_0_4) _lh_termLsEq_LH_C_0_1_0_5) then
            ((termLsEq_d0_d0_d3_d2 _lh_termLsEq_LH_C_1_1_0_4) _lh_termLsEq_LH_C_1_1_0_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3_d3 _lh_termLsEq_arg1_5_4 _lh_termLsEq_arg2_5_4 =
  (match _lh_termLsEq_arg1_5_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_0_8, _lh_termLsEq_LH_C_1_1_0_8) -> 
      (match _lh_termLsEq_arg2_5_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_0_9, _lh_termLsEq_LH_C_1_1_0_9) -> 
          (if ((termEq_d0_d0_d3_d3 _lh_termLsEq_LH_C_0_1_0_8) _lh_termLsEq_LH_C_0_1_0_9) then
            ((termLsEq_d0_d0_d3_d3 _lh_termLsEq_LH_C_1_1_0_8) _lh_termLsEq_LH_C_1_1_0_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3_d4 _lh_termLsEq_arg1_1_2 _lh_termLsEq_arg2_1_2 =
  (match _lh_termLsEq_arg1_1_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_4, _lh_termLsEq_LH_C_1_2_4) -> 
      (match _lh_termLsEq_arg2_1_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_5, _lh_termLsEq_LH_C_1_2_5) -> 
          (if ((termEq_d0_d0_d3_d4 _lh_termLsEq_LH_C_0_2_4) _lh_termLsEq_LH_C_0_2_5) then
            ((termLsEq_d0_d0_d3_d4 _lh_termLsEq_LH_C_1_2_4) _lh_termLsEq_LH_C_1_2_5)
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
and termLsEq_d0_d0_d3_d5 _lh_termLsEq_arg1_2_2 _lh_termLsEq_arg2_2_2 =
  (match _lh_termLsEq_arg1_2_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_4_4, _lh_termLsEq_LH_C_1_4_4) -> 
      (match _lh_termLsEq_arg2_2_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_4_5, _lh_termLsEq_LH_C_1_4_5) -> 
          (if ((termEq_d0_d0_d3_d5 _lh_termLsEq_LH_C_0_4_4) _lh_termLsEq_LH_C_0_4_5) then
            ((termLsEq_d0_d0_d3_d5 _lh_termLsEq_LH_C_1_4_4) _lh_termLsEq_LH_C_1_4_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3_d6 _lh_termLsEq_arg1_1_3_7 _lh_termLsEq_arg2_1_3_7 =
  (match _lh_termLsEq_arg1_1_3_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_7_4, _lh_termLsEq_LH_C_1_2_7_4) -> 
      (match _lh_termLsEq_arg2_1_3_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_7_5, _lh_termLsEq_LH_C_1_2_7_5) -> 
          (if ((termEq_d0_d0_d3_d6 _lh_termLsEq_LH_C_0_2_7_4) _lh_termLsEq_LH_C_0_2_7_5) then
            ((termLsEq_d0_d0_d3_d6 _lh_termLsEq_LH_C_1_2_7_4) _lh_termLsEq_LH_C_1_2_7_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3_d7 _lh_termLsEq_arg1_1_2_0 _lh_termLsEq_arg2_1_2_0 =
  (match _lh_termLsEq_arg1_1_2_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_4_0, _lh_termLsEq_LH_C_1_2_4_0) -> 
      (match _lh_termLsEq_arg2_1_2_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_4_1, _lh_termLsEq_LH_C_1_2_4_1) -> 
          (if ((termEq_d0_d0_d3_d7 _lh_termLsEq_LH_C_0_2_4_0) _lh_termLsEq_LH_C_0_2_4_1) then
            ((termLsEq_d0_d0_d3_d7 _lh_termLsEq_LH_C_1_2_4_0) _lh_termLsEq_LH_C_1_2_4_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3_d8 _lh_termLsEq_arg1_8_6 _lh_termLsEq_arg2_8_6 =
  (match _lh_termLsEq_arg1_8_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_7_2, _lh_termLsEq_LH_C_1_1_7_2) -> 
      (match _lh_termLsEq_arg2_8_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_7_3, _lh_termLsEq_LH_C_1_1_7_3) -> 
          (if ((termEq_d0_d0_d3_d8 _lh_termLsEq_LH_C_0_1_7_2) _lh_termLsEq_LH_C_0_1_7_3) then
            ((termLsEq_d0_d0_d3_d8 _lh_termLsEq_LH_C_1_1_7_2) _lh_termLsEq_LH_C_1_1_7_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d3_d9 _lh_termLsEq_arg1_9_5 _lh_termLsEq_arg2_9_5 =
  (match _lh_termLsEq_arg1_9_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_9_0, _lh_termLsEq_LH_C_1_1_9_0) -> 
      (match _lh_termLsEq_arg2_9_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_9_1, _lh_termLsEq_LH_C_1_1_9_1) -> 
          (if ((termEq_d0_d0_d3_d9 _lh_termLsEq_LH_C_0_1_9_0) _lh_termLsEq_LH_C_0_1_9_1) then
            ((termLsEq_d0_d0_d3_d9 _lh_termLsEq_LH_C_1_1_9_0) _lh_termLsEq_LH_C_1_1_9_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4 _lh_termLsEq_arg1_1_3_1 _lh_termLsEq_arg2_1_3_1 =
  (match _lh_termLsEq_arg1_1_3_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_6_2, _lh_termLsEq_LH_C_1_2_6_2) -> 
      (match _lh_termLsEq_arg2_1_3_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_6_3, _lh_termLsEq_LH_C_1_2_6_3) -> 
          (if ((termEq_d0_d0_d4 _lh_termLsEq_LH_C_0_2_6_2) _lh_termLsEq_LH_C_0_2_6_3) then
            ((termLsEq_d0_d0_d4 _lh_termLsEq_LH_C_1_2_6_2) _lh_termLsEq_LH_C_1_2_6_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4_d0 _lh_termLsEq_arg1_6_0 _lh_termLsEq_arg2_6_0 =
  (match _lh_termLsEq_arg1_6_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_2_0, _lh_termLsEq_LH_C_1_1_2_0) -> 
      (match _lh_termLsEq_arg2_6_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_2_1, _lh_termLsEq_LH_C_1_1_2_1) -> 
          (if ((termEq_d0_d0_d4_d0 _lh_termLsEq_LH_C_0_1_2_0) _lh_termLsEq_LH_C_0_1_2_1) then
            ((termLsEq_d0_d0_d4_d0 _lh_termLsEq_LH_C_1_1_2_0) _lh_termLsEq_LH_C_1_1_2_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4_d1 _lh_termLsEq_arg1_1_1_2 _lh_termLsEq_arg2_1_1_2 =
  (match _lh_termLsEq_arg1_1_1_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_2_4, _lh_termLsEq_LH_C_1_2_2_4) -> 
      (match _lh_termLsEq_arg2_1_1_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_2_5, _lh_termLsEq_LH_C_1_2_2_5) -> 
          (if ((termEq_d0_d0_d4_d1 _lh_termLsEq_LH_C_0_2_2_4) _lh_termLsEq_LH_C_0_2_2_5) then
            ((termLsEq_d0_d0_d4_d1 _lh_termLsEq_LH_C_1_2_2_4) _lh_termLsEq_LH_C_1_2_2_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4_d2 _lh_termLsEq_arg1_3_8 _lh_termLsEq_arg2_3_8 =
  (match _lh_termLsEq_arg1_3_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_7_6, _lh_termLsEq_LH_C_1_7_6) -> 
      (match _lh_termLsEq_arg2_3_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_7_7, _lh_termLsEq_LH_C_1_7_7) -> 
          (if ((termEq_d0_d0_d4_d2 _lh_termLsEq_LH_C_0_7_6) _lh_termLsEq_LH_C_0_7_7) then
            ((termLsEq_d0_d0_d4_d2 _lh_termLsEq_LH_C_1_7_6) _lh_termLsEq_LH_C_1_7_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4_d3 _lh_termLsEq_arg1_1_6 _lh_termLsEq_arg2_1_6 =
  (match _lh_termLsEq_arg1_1_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_3_2, _lh_termLsEq_LH_C_1_3_2) -> 
      (match _lh_termLsEq_arg2_1_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_3_3, _lh_termLsEq_LH_C_1_3_3) -> 
          (if ((termEq_d0_d0_d4_d3 _lh_termLsEq_LH_C_0_3_2) _lh_termLsEq_LH_C_0_3_3) then
            ((termLsEq_d0_d0_d4_d3 _lh_termLsEq_LH_C_1_3_2) _lh_termLsEq_LH_C_1_3_3)
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
and termLsEq_d0_d0_d4_d4 _lh_termLsEq_arg1_5_8 _lh_termLsEq_arg2_5_8 =
  (match _lh_termLsEq_arg1_5_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_1_6, _lh_termLsEq_LH_C_1_1_1_6) -> 
      (match _lh_termLsEq_arg2_5_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_1_7, _lh_termLsEq_LH_C_1_1_1_7) -> 
          (if ((termEq_d0_d0_d4_d4 _lh_termLsEq_LH_C_0_1_1_6) _lh_termLsEq_LH_C_0_1_1_7) then
            ((termLsEq_d0_d0_d4_d4 _lh_termLsEq_LH_C_1_1_1_6) _lh_termLsEq_LH_C_1_1_1_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4_d5 _lh_termLsEq_arg1_1_1_3 _lh_termLsEq_arg2_1_1_3 =
  (match _lh_termLsEq_arg1_1_1_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_2_6, _lh_termLsEq_LH_C_1_2_2_6) -> 
      (match _lh_termLsEq_arg2_1_1_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_2_7, _lh_termLsEq_LH_C_1_2_2_7) -> 
          (if ((termEq_d0_d0_d4_d5 _lh_termLsEq_LH_C_0_2_2_6) _lh_termLsEq_LH_C_0_2_2_7) then
            ((termLsEq_d0_d0_d4_d5 _lh_termLsEq_LH_C_1_2_2_6) _lh_termLsEq_LH_C_1_2_2_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4_d6 _lh_termLsEq_arg1_9_7 _lh_termLsEq_arg2_9_7 =
  (match _lh_termLsEq_arg1_9_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_9_4, _lh_termLsEq_LH_C_1_1_9_4) -> 
      (match _lh_termLsEq_arg2_9_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_9_5, _lh_termLsEq_LH_C_1_1_9_5) -> 
          (if ((termEq_d0_d0_d4_d6 _lh_termLsEq_LH_C_0_1_9_4) _lh_termLsEq_LH_C_0_1_9_5) then
            ((termLsEq_d0_d0_d4_d6 _lh_termLsEq_LH_C_1_1_9_4) _lh_termLsEq_LH_C_1_1_9_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4_d7 _lh_termLsEq_arg1_9_9 _lh_termLsEq_arg2_9_9 =
  (match _lh_termLsEq_arg1_9_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_9_8, _lh_termLsEq_LH_C_1_1_9_8) -> 
      (match _lh_termLsEq_arg2_9_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_9_9, _lh_termLsEq_LH_C_1_1_9_9) -> 
          (if ((termEq_d0_d0_d4_d7 _lh_termLsEq_LH_C_0_1_9_8) _lh_termLsEq_LH_C_0_1_9_9) then
            ((termLsEq_d0_d0_d4_d7 _lh_termLsEq_LH_C_1_1_9_8) _lh_termLsEq_LH_C_1_1_9_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4_d8 _lh_termLsEq_arg1_9_1 _lh_termLsEq_arg2_9_1 =
  (match _lh_termLsEq_arg1_9_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_8_2, _lh_termLsEq_LH_C_1_1_8_2) -> 
      (match _lh_termLsEq_arg2_9_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_8_3, _lh_termLsEq_LH_C_1_1_8_3) -> 
          (if ((termEq_d0_d0_d4_d8 _lh_termLsEq_LH_C_0_1_8_2) _lh_termLsEq_LH_C_0_1_8_3) then
            ((termLsEq_d0_d0_d4_d8 _lh_termLsEq_LH_C_1_1_8_2) _lh_termLsEq_LH_C_1_1_8_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d4_d9 _lh_termLsEq_arg1_1_3_8 _lh_termLsEq_arg2_1_3_8 =
  (match _lh_termLsEq_arg1_1_3_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_7_6, _lh_termLsEq_LH_C_1_2_7_6) -> 
      (match _lh_termLsEq_arg2_1_3_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_7_7, _lh_termLsEq_LH_C_1_2_7_7) -> 
          (if ((termEq_d0_d0_d4_d9 _lh_termLsEq_LH_C_0_2_7_6) _lh_termLsEq_LH_C_0_2_7_7) then
            ((termLsEq_d0_d0_d4_d9 _lh_termLsEq_LH_C_1_2_7_6) _lh_termLsEq_LH_C_1_2_7_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5 _lh_termLsEq_arg1_6_9 _lh_termLsEq_arg2_6_9 =
  (match _lh_termLsEq_arg1_6_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_3_8, _lh_termLsEq_LH_C_1_1_3_8) -> 
      (match _lh_termLsEq_arg2_6_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_3_9, _lh_termLsEq_LH_C_1_1_3_9) -> 
          (if ((termEq_d0_d0_d5 _lh_termLsEq_LH_C_0_1_3_8) _lh_termLsEq_LH_C_0_1_3_9) then
            ((termLsEq_d0_d0_d5 _lh_termLsEq_LH_C_1_1_3_8) _lh_termLsEq_LH_C_1_1_3_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d0 _lh_termLsEq_arg1_1_1_1 _lh_termLsEq_arg2_1_1_1 =
  (match _lh_termLsEq_arg1_1_1_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_2_2, _lh_termLsEq_LH_C_1_2_2_2) -> 
      (match _lh_termLsEq_arg2_1_1_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_2_3, _lh_termLsEq_LH_C_1_2_2_3) -> 
          (if ((termEq_d0_d0_d5_d0 _lh_termLsEq_LH_C_0_2_2_2) _lh_termLsEq_LH_C_0_2_2_3) then
            ((termLsEq_d0_d0_d5_d0 _lh_termLsEq_LH_C_1_2_2_2) _lh_termLsEq_LH_C_1_2_2_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d1 _lh_termLsEq_arg1_2_7 _lh_termLsEq_arg2_2_7 =
  (match _lh_termLsEq_arg1_2_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_5_4, _lh_termLsEq_LH_C_1_5_4) -> 
      (match _lh_termLsEq_arg2_2_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_5_5, _lh_termLsEq_LH_C_1_5_5) -> 
          (if ((termEq_d0_d0_d5_d1 _lh_termLsEq_LH_C_0_5_4) _lh_termLsEq_LH_C_0_5_5) then
            ((termLsEq_d0_d0_d5_d1 _lh_termLsEq_LH_C_1_5_4) _lh_termLsEq_LH_C_1_5_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d2 _lh_termLsEq_arg1_3_6 _lh_termLsEq_arg2_3_6 =
  (match _lh_termLsEq_arg1_3_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_7_2, _lh_termLsEq_LH_C_1_7_2) -> 
      (match _lh_termLsEq_arg2_3_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_7_3, _lh_termLsEq_LH_C_1_7_3) -> 
          (if ((termEq_d0_d0_d5_d2 _lh_termLsEq_LH_C_0_7_2) _lh_termLsEq_LH_C_0_7_3) then
            ((termLsEq_d0_d0_d5_d2 _lh_termLsEq_LH_C_1_7_2) _lh_termLsEq_LH_C_1_7_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d3 _lh_termLsEq_arg1_7_8 _lh_termLsEq_arg2_7_8 =
  (match _lh_termLsEq_arg1_7_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_5_6, _lh_termLsEq_LH_C_1_1_5_6) -> 
      (match _lh_termLsEq_arg2_7_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_5_7, _lh_termLsEq_LH_C_1_1_5_7) -> 
          (if ((termEq_d0_d0_d5_d3 _lh_termLsEq_LH_C_0_1_5_6) _lh_termLsEq_LH_C_0_1_5_7) then
            ((termLsEq_d0_d0_d5_d3 _lh_termLsEq_LH_C_1_1_5_6) _lh_termLsEq_LH_C_1_1_5_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d4 _lh_termLsEq_arg1_3_4 _lh_termLsEq_arg2_3_4 =
  (match _lh_termLsEq_arg1_3_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_6_8, _lh_termLsEq_LH_C_1_6_8) -> 
      (match _lh_termLsEq_arg2_3_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_6_9, _lh_termLsEq_LH_C_1_6_9) -> 
          (if ((termEq_d0_d0_d5_d4 _lh_termLsEq_LH_C_0_6_8) _lh_termLsEq_LH_C_0_6_9) then
            ((termLsEq_d0_d0_d5_d4 _lh_termLsEq_LH_C_1_6_8) _lh_termLsEq_LH_C_1_6_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d5 _lh_termLsEq_arg1_2_6 _lh_termLsEq_arg2_2_6 =
  (match _lh_termLsEq_arg1_2_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_5_2, _lh_termLsEq_LH_C_1_5_2) -> 
      (match _lh_termLsEq_arg2_2_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_5_3, _lh_termLsEq_LH_C_1_5_3) -> 
          (if ((termEq_d0_d0_d5_d5 _lh_termLsEq_LH_C_0_5_2) _lh_termLsEq_LH_C_0_5_3) then
            ((termLsEq_d0_d0_d5_d5 _lh_termLsEq_LH_C_1_5_2) _lh_termLsEq_LH_C_1_5_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d6 _lh_termLsEq_arg1_3_7 _lh_termLsEq_arg2_3_7 =
  (match _lh_termLsEq_arg1_3_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_7_4, _lh_termLsEq_LH_C_1_7_4) -> 
      (match _lh_termLsEq_arg2_3_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_7_5, _lh_termLsEq_LH_C_1_7_5) -> 
          (if ((termEq_d0_d0_d5_d6 _lh_termLsEq_LH_C_0_7_4) _lh_termLsEq_LH_C_0_7_5) then
            ((termLsEq_d0_d0_d5_d6 _lh_termLsEq_LH_C_1_7_4) _lh_termLsEq_LH_C_1_7_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d7 _lh_termLsEq_arg1_8_9 _lh_termLsEq_arg2_8_9 =
  (match _lh_termLsEq_arg1_8_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_7_8, _lh_termLsEq_LH_C_1_1_7_8) -> 
      (match _lh_termLsEq_arg2_8_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_7_9, _lh_termLsEq_LH_C_1_1_7_9) -> 
          (if ((termEq_d0_d0_d5_d7 _lh_termLsEq_LH_C_0_1_7_8) _lh_termLsEq_LH_C_0_1_7_9) then
            ((termLsEq_d0_d0_d5_d7 _lh_termLsEq_LH_C_1_1_7_8) _lh_termLsEq_LH_C_1_1_7_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d8 _lh_termLsEq_arg1_8_2 _lh_termLsEq_arg2_8_2 =
  (match _lh_termLsEq_arg1_8_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_6_4, _lh_termLsEq_LH_C_1_1_6_4) -> 
      (match _lh_termLsEq_arg2_8_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_6_5, _lh_termLsEq_LH_C_1_1_6_5) -> 
          (if ((termEq_d0_d0_d5_d8 _lh_termLsEq_LH_C_0_1_6_4) _lh_termLsEq_LH_C_0_1_6_5) then
            ((termLsEq_d0_d0_d5_d8 _lh_termLsEq_LH_C_1_1_6_4) _lh_termLsEq_LH_C_1_1_6_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d5_d9 _lh_termLsEq_arg1_1_8 _lh_termLsEq_arg2_1_8 =
  (match _lh_termLsEq_arg1_1_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_3_6, _lh_termLsEq_LH_C_1_3_6) -> 
      (match _lh_termLsEq_arg2_1_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_3_7, _lh_termLsEq_LH_C_1_3_7) -> 
          (if ((termEq_d0_d0_d5_d9 _lh_termLsEq_LH_C_0_3_6) _lh_termLsEq_LH_C_0_3_7) then
            ((termLsEq_d0_d0_d5_d9 _lh_termLsEq_LH_C_1_3_6) _lh_termLsEq_LH_C_1_3_7)
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
and termLsEq_d0_d0_d6 _lh_termLsEq_arg1_7_6 _lh_termLsEq_arg2_7_6 =
  (match _lh_termLsEq_arg1_7_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_5_2, _lh_termLsEq_LH_C_1_1_5_2) -> 
      (match _lh_termLsEq_arg2_7_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_5_3, _lh_termLsEq_LH_C_1_1_5_3) -> 
          (if ((termEq_d0_d0_d6 _lh_termLsEq_LH_C_0_1_5_2) _lh_termLsEq_LH_C_0_1_5_3) then
            ((termLsEq_d0_d0_d6 _lh_termLsEq_LH_C_1_1_5_2) _lh_termLsEq_LH_C_1_1_5_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d0 _lh_termLsEq_arg1_6_5 _lh_termLsEq_arg2_6_5 =
  (match _lh_termLsEq_arg1_6_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_3_0, _lh_termLsEq_LH_C_1_1_3_0) -> 
      (match _lh_termLsEq_arg2_6_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_3_1, _lh_termLsEq_LH_C_1_1_3_1) -> 
          (if ((termEq_d0_d0_d6_d0 _lh_termLsEq_LH_C_0_1_3_0) _lh_termLsEq_LH_C_0_1_3_1) then
            ((termLsEq_d0_d0_d6_d0 _lh_termLsEq_LH_C_1_1_3_0) _lh_termLsEq_LH_C_1_1_3_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d1 _lh_termLsEq_arg1_3_2 _lh_termLsEq_arg2_3_2 =
  (match _lh_termLsEq_arg1_3_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_6_4, _lh_termLsEq_LH_C_1_6_4) -> 
      (match _lh_termLsEq_arg2_3_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_6_5, _lh_termLsEq_LH_C_1_6_5) -> 
          (if ((termEq_d0_d0_d6_d1 _lh_termLsEq_LH_C_0_6_4) _lh_termLsEq_LH_C_0_6_5) then
            ((termLsEq_d0_d0_d6_d1 _lh_termLsEq_LH_C_1_6_4) _lh_termLsEq_LH_C_1_6_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d2 _lh_termLsEq_arg1_9_2 _lh_termLsEq_arg2_9_2 =
  (match _lh_termLsEq_arg1_9_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_8_4, _lh_termLsEq_LH_C_1_1_8_4) -> 
      (match _lh_termLsEq_arg2_9_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_8_5, _lh_termLsEq_LH_C_1_1_8_5) -> 
          (if ((termEq_d0_d0_d6_d2 _lh_termLsEq_LH_C_0_1_8_4) _lh_termLsEq_LH_C_0_1_8_5) then
            ((termLsEq_d0_d0_d6_d2 _lh_termLsEq_LH_C_1_1_8_4) _lh_termLsEq_LH_C_1_1_8_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d3 _lh_termLsEq_arg1_2_1 _lh_termLsEq_arg2_2_1 =
  (match _lh_termLsEq_arg1_2_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_4_2, _lh_termLsEq_LH_C_1_4_2) -> 
      (match _lh_termLsEq_arg2_2_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_4_3, _lh_termLsEq_LH_C_1_4_3) -> 
          (if ((termEq_d0_d0_d6_d3 _lh_termLsEq_LH_C_0_4_2) _lh_termLsEq_LH_C_0_4_3) then
            ((termLsEq_d0_d0_d6_d3 _lh_termLsEq_LH_C_1_4_2) _lh_termLsEq_LH_C_1_4_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d4 _lh_termLsEq_arg1_6_6 _lh_termLsEq_arg2_6_6 =
  (match _lh_termLsEq_arg1_6_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_3_2, _lh_termLsEq_LH_C_1_1_3_2) -> 
      (match _lh_termLsEq_arg2_6_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_3_3, _lh_termLsEq_LH_C_1_1_3_3) -> 
          (if ((termEq_d0_d0_d6_d4 _lh_termLsEq_LH_C_0_1_3_2) _lh_termLsEq_LH_C_0_1_3_3) then
            ((termLsEq_d0_d0_d6_d4 _lh_termLsEq_LH_C_1_1_3_2) _lh_termLsEq_LH_C_1_1_3_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d5 _lh_termLsEq_arg1_1_1_6 _lh_termLsEq_arg2_1_1_6 =
  (match _lh_termLsEq_arg1_1_1_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_3_2, _lh_termLsEq_LH_C_1_2_3_2) -> 
      (match _lh_termLsEq_arg2_1_1_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_3_3, _lh_termLsEq_LH_C_1_2_3_3) -> 
          (if ((termEq_d0_d0_d6_d5 _lh_termLsEq_LH_C_0_2_3_2) _lh_termLsEq_LH_C_0_2_3_3) then
            ((termLsEq_d0_d0_d6_d5 _lh_termLsEq_LH_C_1_2_3_2) _lh_termLsEq_LH_C_1_2_3_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d6 _lh_termLsEq_arg1_1_3_0 _lh_termLsEq_arg2_1_3_0 =
  (match _lh_termLsEq_arg1_1_3_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_6_0, _lh_termLsEq_LH_C_1_2_6_0) -> 
      (match _lh_termLsEq_arg2_1_3_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_6_1, _lh_termLsEq_LH_C_1_2_6_1) -> 
          (if ((termEq_d0_d0_d6_d6 _lh_termLsEq_LH_C_0_2_6_0) _lh_termLsEq_LH_C_0_2_6_1) then
            ((termLsEq_d0_d0_d6_d6 _lh_termLsEq_LH_C_1_2_6_0) _lh_termLsEq_LH_C_1_2_6_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d7 _lh_termLsEq_arg1_3_5 _lh_termLsEq_arg2_3_5 =
  (match _lh_termLsEq_arg1_3_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_7_0, _lh_termLsEq_LH_C_1_7_0) -> 
      (match _lh_termLsEq_arg2_3_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_7_1, _lh_termLsEq_LH_C_1_7_1) -> 
          (if ((termEq_d0_d0_d6_d7 _lh_termLsEq_LH_C_0_7_0) _lh_termLsEq_LH_C_0_7_1) then
            ((termLsEq_d0_d0_d6_d7 _lh_termLsEq_LH_C_1_7_0) _lh_termLsEq_LH_C_1_7_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d8 _lh_termLsEq_arg1_1_0_7 _lh_termLsEq_arg2_1_0_7 =
  (match _lh_termLsEq_arg1_1_0_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_1_4, _lh_termLsEq_LH_C_1_2_1_4) -> 
      (match _lh_termLsEq_arg2_1_0_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_1_5, _lh_termLsEq_LH_C_1_2_1_5) -> 
          (if ((termEq_d0_d0_d6_d8 _lh_termLsEq_LH_C_0_2_1_4) _lh_termLsEq_LH_C_0_2_1_5) then
            ((termLsEq_d0_d0_d6_d8 _lh_termLsEq_LH_C_1_2_1_4) _lh_termLsEq_LH_C_1_2_1_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d6_d9 _lh_termLsEq_arg1_2_5 _lh_termLsEq_arg2_2_5 =
  (match _lh_termLsEq_arg1_2_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_5_0, _lh_termLsEq_LH_C_1_5_0) -> 
      (match _lh_termLsEq_arg2_2_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_5_1, _lh_termLsEq_LH_C_1_5_1) -> 
          (if ((termEq_d0_d0_d6_d9 _lh_termLsEq_LH_C_0_5_0) _lh_termLsEq_LH_C_0_5_1) then
            ((termLsEq_d0_d0_d6_d9 _lh_termLsEq_LH_C_1_5_0) _lh_termLsEq_LH_C_1_5_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7 _lh_termLsEq_arg1_4_6 _lh_termLsEq_arg2_4_6 =
  (match _lh_termLsEq_arg1_4_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_9_2, _lh_termLsEq_LH_C_1_9_2) -> 
      (match _lh_termLsEq_arg2_4_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_9_3, _lh_termLsEq_LH_C_1_9_3) -> 
          (if ((termEq_d0_d0_d7 _lh_termLsEq_LH_C_0_9_2) _lh_termLsEq_LH_C_0_9_3) then
            ((termLsEq_d0_d0_d7 _lh_termLsEq_LH_C_1_9_2) _lh_termLsEq_LH_C_1_9_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7_d0 _lh_termLsEq_arg1_1_2_5 _lh_termLsEq_arg2_1_2_5 =
  (match _lh_termLsEq_arg1_1_2_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_5_0, _lh_termLsEq_LH_C_1_2_5_0) -> 
      (match _lh_termLsEq_arg2_1_2_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_5_1, _lh_termLsEq_LH_C_1_2_5_1) -> 
          (if ((termEq_d0_d0_d7_d0 _lh_termLsEq_LH_C_0_2_5_0) _lh_termLsEq_LH_C_0_2_5_1) then
            ((termLsEq_d0_d0_d7_d0 _lh_termLsEq_LH_C_1_2_5_0) _lh_termLsEq_LH_C_1_2_5_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7_d1 _lh_termLsEq_arg1_2_0 _lh_termLsEq_arg2_2_0 =
  (match _lh_termLsEq_arg1_2_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_4_0, _lh_termLsEq_LH_C_1_4_0) -> 
      (match _lh_termLsEq_arg2_2_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_4_1, _lh_termLsEq_LH_C_1_4_1) -> 
          (if ((termEq_d0_d0_d7_d1 _lh_termLsEq_LH_C_0_4_0) _lh_termLsEq_LH_C_0_4_1) then
            ((termLsEq_d0_d0_d7_d1 _lh_termLsEq_LH_C_1_4_0) _lh_termLsEq_LH_C_1_4_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7_d2 _lh_termLsEq_arg1_1_2_2 _lh_termLsEq_arg2_1_2_2 =
  (match _lh_termLsEq_arg1_1_2_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_4_4, _lh_termLsEq_LH_C_1_2_4_4) -> 
      (match _lh_termLsEq_arg2_1_2_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_4_5, _lh_termLsEq_LH_C_1_2_4_5) -> 
          (if ((termEq_d0_d0_d7_d2 _lh_termLsEq_LH_C_0_2_4_4) _lh_termLsEq_LH_C_0_2_4_5) then
            ((termLsEq_d0_d0_d7_d2 _lh_termLsEq_LH_C_1_2_4_4) _lh_termLsEq_LH_C_1_2_4_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7_d3 _lh_termLsEq_arg1_5_3 _lh_termLsEq_arg2_5_3 =
  (match _lh_termLsEq_arg1_5_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_0_6, _lh_termLsEq_LH_C_1_1_0_6) -> 
      (match _lh_termLsEq_arg2_5_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_0_7, _lh_termLsEq_LH_C_1_1_0_7) -> 
          (if ((termEq_d0_d0_d7_d3 _lh_termLsEq_LH_C_0_1_0_6) _lh_termLsEq_LH_C_0_1_0_7) then
            ((termLsEq_d0_d0_d7_d3 _lh_termLsEq_LH_C_1_1_0_6) _lh_termLsEq_LH_C_1_1_0_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7_d4 _lh_termLsEq_arg1_1_3 _lh_termLsEq_arg2_1_3 =
  (match _lh_termLsEq_arg1_1_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_6, _lh_termLsEq_LH_C_1_2_6) -> 
      (match _lh_termLsEq_arg2_1_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_7, _lh_termLsEq_LH_C_1_2_7) -> 
          (if ((termEq_d0_d0_d7_d4 _lh_termLsEq_LH_C_0_2_6) _lh_termLsEq_LH_C_0_2_7) then
            ((termLsEq_d0_d0_d7_d4 _lh_termLsEq_LH_C_1_2_6) _lh_termLsEq_LH_C_1_2_7)
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
and termLsEq_d0_d0_d7_d5 _lh_termLsEq_arg1_4_1 _lh_termLsEq_arg2_4_1 =
  (match _lh_termLsEq_arg1_4_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_8_2, _lh_termLsEq_LH_C_1_8_2) -> 
      (match _lh_termLsEq_arg2_4_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_8_3, _lh_termLsEq_LH_C_1_8_3) -> 
          (if ((termEq_d0_d0_d7_d5 _lh_termLsEq_LH_C_0_8_2) _lh_termLsEq_LH_C_0_8_3) then
            ((termLsEq_d0_d0_d7_d5 _lh_termLsEq_LH_C_1_8_2) _lh_termLsEq_LH_C_1_8_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7_d6 _lh_termLsEq_arg1_5_0 _lh_termLsEq_arg2_5_0 =
  (match _lh_termLsEq_arg1_5_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_0_0, _lh_termLsEq_LH_C_1_1_0_0) -> 
      (match _lh_termLsEq_arg2_5_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_0_1, _lh_termLsEq_LH_C_1_1_0_1) -> 
          (if ((termEq_d0_d0_d7_d6 _lh_termLsEq_LH_C_0_1_0_0) _lh_termLsEq_LH_C_0_1_0_1) then
            ((termLsEq_d0_d0_d7_d6 _lh_termLsEq_LH_C_1_1_0_0) _lh_termLsEq_LH_C_1_1_0_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7_d7 _lh_termLsEq_arg1_4_9 _lh_termLsEq_arg2_4_9 =
  (match _lh_termLsEq_arg1_4_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_9_8, _lh_termLsEq_LH_C_1_9_8) -> 
      (match _lh_termLsEq_arg2_4_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_9_9, _lh_termLsEq_LH_C_1_9_9) -> 
          (if ((termEq_d0_d0_d7_d7 _lh_termLsEq_LH_C_0_9_8) _lh_termLsEq_LH_C_0_9_9) then
            ((termLsEq_d0_d0_d7_d7 _lh_termLsEq_LH_C_1_9_8) _lh_termLsEq_LH_C_1_9_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7_d8 _lh_termLsEq_arg1_7_0 _lh_termLsEq_arg2_7_0 =
  (match _lh_termLsEq_arg1_7_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_4_0, _lh_termLsEq_LH_C_1_1_4_0) -> 
      (match _lh_termLsEq_arg2_7_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_4_1, _lh_termLsEq_LH_C_1_1_4_1) -> 
          (if ((termEq_d0_d0_d7_d8 _lh_termLsEq_LH_C_0_1_4_0) _lh_termLsEq_LH_C_0_1_4_1) then
            ((termLsEq_d0_d0_d7_d8 _lh_termLsEq_LH_C_1_1_4_0) _lh_termLsEq_LH_C_1_1_4_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d7_d9 _lh_termLsEq_arg1_4_4 _lh_termLsEq_arg2_4_4 =
  (match _lh_termLsEq_arg1_4_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_8_8, _lh_termLsEq_LH_C_1_8_8) -> 
      (match _lh_termLsEq_arg2_4_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_8_9, _lh_termLsEq_LH_C_1_8_9) -> 
          (if ((termEq_d0_d0_d7_d9 _lh_termLsEq_LH_C_0_8_8) _lh_termLsEq_LH_C_0_8_9) then
            ((termLsEq_d0_d0_d7_d9 _lh_termLsEq_LH_C_1_8_8) _lh_termLsEq_LH_C_1_8_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8 _lh_termLsEq_arg1_2_4 _lh_termLsEq_arg2_2_4 =
  (match _lh_termLsEq_arg1_2_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_4_8, _lh_termLsEq_LH_C_1_4_8) -> 
      (match _lh_termLsEq_arg2_2_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_4_9, _lh_termLsEq_LH_C_1_4_9) -> 
          (if ((termEq_d0_d0_d8 _lh_termLsEq_LH_C_0_4_8) _lh_termLsEq_LH_C_0_4_9) then
            ((termLsEq_d0_d0_d8 _lh_termLsEq_LH_C_1_4_8) _lh_termLsEq_LH_C_1_4_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d0 _lh_termLsEq_arg1_4_2 _lh_termLsEq_arg2_4_2 =
  (match _lh_termLsEq_arg1_4_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_8_4, _lh_termLsEq_LH_C_1_8_4) -> 
      (match _lh_termLsEq_arg2_4_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_8_5, _lh_termLsEq_LH_C_1_8_5) -> 
          (if ((termEq_d0_d0_d8_d0 _lh_termLsEq_LH_C_0_8_4) _lh_termLsEq_LH_C_0_8_5) then
            ((termLsEq_d0_d0_d8_d0 _lh_termLsEq_LH_C_1_8_4) _lh_termLsEq_LH_C_1_8_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d1 _lh_termLsEq_arg1_7_2 _lh_termLsEq_arg2_7_2 =
  (match _lh_termLsEq_arg1_7_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_4_4, _lh_termLsEq_LH_C_1_1_4_4) -> 
      (match _lh_termLsEq_arg2_7_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_4_5, _lh_termLsEq_LH_C_1_1_4_5) -> 
          (if ((termEq_d0_d0_d8_d1 _lh_termLsEq_LH_C_0_1_4_4) _lh_termLsEq_LH_C_0_1_4_5) then
            ((termLsEq_d0_d0_d8_d1 _lh_termLsEq_LH_C_1_1_4_4) _lh_termLsEq_LH_C_1_1_4_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d2 _lh_termLsEq_arg1_1_0_9 _lh_termLsEq_arg2_1_0_9 =
  (match _lh_termLsEq_arg1_1_0_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_1_8, _lh_termLsEq_LH_C_1_2_1_8) -> 
      (match _lh_termLsEq_arg2_1_0_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_1_9, _lh_termLsEq_LH_C_1_2_1_9) -> 
          (if ((termEq_d0_d0_d8_d2 _lh_termLsEq_LH_C_0_2_1_8) _lh_termLsEq_LH_C_0_2_1_9) then
            ((termLsEq_d0_d0_d8_d2 _lh_termLsEq_LH_C_1_2_1_8) _lh_termLsEq_LH_C_1_2_1_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d3 _lh_termLsEq_arg1_8_1 _lh_termLsEq_arg2_8_1 =
  (match _lh_termLsEq_arg1_8_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_6_2, _lh_termLsEq_LH_C_1_1_6_2) -> 
      (match _lh_termLsEq_arg2_8_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_6_3, _lh_termLsEq_LH_C_1_1_6_3) -> 
          (if ((termEq_d0_d0_d8_d3 _lh_termLsEq_LH_C_0_1_6_2) _lh_termLsEq_LH_C_0_1_6_3) then
            ((termLsEq_d0_d0_d8_d3 _lh_termLsEq_LH_C_1_1_6_2) _lh_termLsEq_LH_C_1_1_6_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d4 _lh_termLsEq_arg1_7_7 _lh_termLsEq_arg2_7_7 =
  (match _lh_termLsEq_arg1_7_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_5_4, _lh_termLsEq_LH_C_1_1_5_4) -> 
      (match _lh_termLsEq_arg2_7_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_5_5, _lh_termLsEq_LH_C_1_1_5_5) -> 
          (if ((termEq_d0_d0_d8_d4 _lh_termLsEq_LH_C_0_1_5_4) _lh_termLsEq_LH_C_0_1_5_5) then
            ((termLsEq_d0_d0_d8_d4 _lh_termLsEq_LH_C_1_1_5_4) _lh_termLsEq_LH_C_1_1_5_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d5 _lh_termLsEq_arg1_8_8 _lh_termLsEq_arg2_8_8 =
  (match _lh_termLsEq_arg1_8_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_7_6, _lh_termLsEq_LH_C_1_1_7_6) -> 
      (match _lh_termLsEq_arg2_8_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_7_7, _lh_termLsEq_LH_C_1_1_7_7) -> 
          (if ((termEq_d0_d0_d8_d5 _lh_termLsEq_LH_C_0_1_7_6) _lh_termLsEq_LH_C_0_1_7_7) then
            ((termLsEq_d0_d0_d8_d5 _lh_termLsEq_LH_C_1_1_7_6) _lh_termLsEq_LH_C_1_1_7_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_8_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d6 _lh_termLsEq_arg1_3_3 _lh_termLsEq_arg2_3_3 =
  (match _lh_termLsEq_arg1_3_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_6_6, _lh_termLsEq_LH_C_1_6_6) -> 
      (match _lh_termLsEq_arg2_3_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_6_7, _lh_termLsEq_LH_C_1_6_7) -> 
          (if ((termEq_d0_d0_d8_d6 _lh_termLsEq_LH_C_0_6_6) _lh_termLsEq_LH_C_0_6_7) then
            ((termLsEq_d0_d0_d8_d6 _lh_termLsEq_LH_C_1_6_6) _lh_termLsEq_LH_C_1_6_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d7 _lh_termLsEq_arg1_1_0_3 _lh_termLsEq_arg2_1_0_3 =
  (match _lh_termLsEq_arg1_1_0_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_0_6, _lh_termLsEq_LH_C_1_2_0_6) -> 
      (match _lh_termLsEq_arg2_1_0_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_0_7, _lh_termLsEq_LH_C_1_2_0_7) -> 
          (if ((termEq_d0_d0_d8_d7 _lh_termLsEq_LH_C_0_2_0_6) _lh_termLsEq_LH_C_0_2_0_7) then
            ((termLsEq_d0_d0_d8_d7 _lh_termLsEq_LH_C_1_2_0_6) _lh_termLsEq_LH_C_1_2_0_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d8 _lh_termLsEq_arg1_5_6 _lh_termLsEq_arg2_5_6 =
  (match _lh_termLsEq_arg1_5_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_1_2, _lh_termLsEq_LH_C_1_1_1_2) -> 
      (match _lh_termLsEq_arg2_5_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_1_3, _lh_termLsEq_LH_C_1_1_1_3) -> 
          (if ((termEq_d0_d0_d8_d8 _lh_termLsEq_LH_C_0_1_1_2) _lh_termLsEq_LH_C_0_1_1_3) then
            ((termLsEq_d0_d0_d8_d8 _lh_termLsEq_LH_C_1_1_1_2) _lh_termLsEq_LH_C_1_1_1_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d8_d9 _lh_termLsEq_arg1_9_4 _lh_termLsEq_arg2_9_4 =
  (match _lh_termLsEq_arg1_9_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_8_8, _lh_termLsEq_LH_C_1_1_8_8) -> 
      (match _lh_termLsEq_arg2_9_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_8_9, _lh_termLsEq_LH_C_1_1_8_9) -> 
          (if ((termEq_d0_d0_d8_d9 _lh_termLsEq_LH_C_0_1_8_8) _lh_termLsEq_LH_C_0_1_8_9) then
            ((termLsEq_d0_d0_d8_d9 _lh_termLsEq_LH_C_1_1_8_8) _lh_termLsEq_LH_C_1_1_8_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9 _lh_termLsEq_arg1_1_2_9 _lh_termLsEq_arg2_1_2_9 =
  (match _lh_termLsEq_arg1_1_2_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_5_8, _lh_termLsEq_LH_C_1_2_5_8) -> 
      (match _lh_termLsEq_arg2_1_2_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_5_9, _lh_termLsEq_LH_C_1_2_5_9) -> 
          (if ((termEq_d0_d0_d9 _lh_termLsEq_LH_C_0_2_5_8) _lh_termLsEq_LH_C_0_2_5_9) then
            ((termLsEq_d0_d0_d9 _lh_termLsEq_LH_C_1_2_5_8) _lh_termLsEq_LH_C_1_2_5_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d0 _lh_termLsEq_arg1_1_2_8 _lh_termLsEq_arg2_1_2_8 =
  (match _lh_termLsEq_arg1_1_2_8 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_5_6, _lh_termLsEq_LH_C_1_2_5_6) -> 
      (match _lh_termLsEq_arg2_1_2_8 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_5_7, _lh_termLsEq_LH_C_1_2_5_7) -> 
          (if ((termEq_d0_d0_d9_d0 _lh_termLsEq_LH_C_0_2_5_6) _lh_termLsEq_LH_C_0_2_5_7) then
            ((termLsEq_d0_d0_d9_d0 _lh_termLsEq_LH_C_1_2_5_6) _lh_termLsEq_LH_C_1_2_5_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_8 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d1 _lh_termLsEq_arg1_7_4 _lh_termLsEq_arg2_7_4 =
  (match _lh_termLsEq_arg1_7_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_4_8, _lh_termLsEq_LH_C_1_1_4_8) -> 
      (match _lh_termLsEq_arg2_7_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_4_9, _lh_termLsEq_LH_C_1_1_4_9) -> 
          (if ((termEq_d0_d0_d9_d1 _lh_termLsEq_LH_C_0_1_4_8) _lh_termLsEq_LH_C_0_1_4_9) then
            ((termLsEq_d0_d0_d9_d1 _lh_termLsEq_LH_C_1_1_4_8) _lh_termLsEq_LH_C_1_1_4_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d2 _lh_termLsEq_arg1_3_1 _lh_termLsEq_arg2_3_1 =
  (match _lh_termLsEq_arg1_3_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_6_2, _lh_termLsEq_LH_C_1_6_2) -> 
      (match _lh_termLsEq_arg2_3_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_6_3, _lh_termLsEq_LH_C_1_6_3) -> 
          (if ((termEq_d0_d0_d9_d2 _lh_termLsEq_LH_C_0_6_2) _lh_termLsEq_LH_C_0_6_3) then
            ((termLsEq_d0_d0_d9_d2 _lh_termLsEq_LH_C_1_6_2) _lh_termLsEq_LH_C_1_6_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d3 _lh_termLsEq_arg1_1_0_6 _lh_termLsEq_arg2_1_0_6 =
  (match _lh_termLsEq_arg1_1_0_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_1_2, _lh_termLsEq_LH_C_1_2_1_2) -> 
      (match _lh_termLsEq_arg2_1_0_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_1_3, _lh_termLsEq_LH_C_1_2_1_3) -> 
          (if ((termEq_d0_d0_d9_d3 _lh_termLsEq_LH_C_0_2_1_2) _lh_termLsEq_LH_C_0_2_1_3) then
            ((termLsEq_d0_d0_d9_d3 _lh_termLsEq_LH_C_1_2_1_2) _lh_termLsEq_LH_C_1_2_1_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d4 _lh_termLsEq_arg1_1_3_6 _lh_termLsEq_arg2_1_3_6 =
  (match _lh_termLsEq_arg1_1_3_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_7_2, _lh_termLsEq_LH_C_1_2_7_2) -> 
      (match _lh_termLsEq_arg2_1_3_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_7_3, _lh_termLsEq_LH_C_1_2_7_3) -> 
          (if ((termEq_d0_d0_d9_d4 _lh_termLsEq_LH_C_0_2_7_2) _lh_termLsEq_LH_C_0_2_7_3) then
            ((termLsEq_d0_d0_d9_d4 _lh_termLsEq_LH_C_1_2_7_2) _lh_termLsEq_LH_C_1_2_7_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d5 _lh_termLsEq_arg1_6_7 _lh_termLsEq_arg2_6_7 =
  (match _lh_termLsEq_arg1_6_7 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_3_4, _lh_termLsEq_LH_C_1_1_3_4) -> 
      (match _lh_termLsEq_arg2_6_7 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_3_5, _lh_termLsEq_LH_C_1_1_3_5) -> 
          (if ((termEq_d0_d0_d9_d5 _lh_termLsEq_LH_C_0_1_3_4) _lh_termLsEq_LH_C_0_1_3_5) then
            ((termLsEq_d0_d0_d9_d5 _lh_termLsEq_LH_C_1_1_3_4) _lh_termLsEq_LH_C_1_1_3_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_7 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d6 _lh_termLsEq_arg1_1_0_1 _lh_termLsEq_arg2_1_0_1 =
  (match _lh_termLsEq_arg1_1_0_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_0_2, _lh_termLsEq_LH_C_1_2_0_2) -> 
      (match _lh_termLsEq_arg2_1_0_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_0_3, _lh_termLsEq_LH_C_1_2_0_3) -> 
          (if ((termEq_d0_d0_d9_d6 _lh_termLsEq_LH_C_0_2_0_2) _lh_termLsEq_LH_C_0_2_0_3) then
            ((termLsEq_d0_d0_d9_d6 _lh_termLsEq_LH_C_1_2_0_2) _lh_termLsEq_LH_C_1_2_0_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_0_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d7 _lh_termLsEq_arg1_7_5 _lh_termLsEq_arg2_7_5 =
  (match _lh_termLsEq_arg1_7_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_5_0, _lh_termLsEq_LH_C_1_1_5_0) -> 
      (match _lh_termLsEq_arg2_7_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_5_1, _lh_termLsEq_LH_C_1_1_5_1) -> 
          (if ((termEq_d0_d0_d9_d7 _lh_termLsEq_LH_C_0_1_5_0) _lh_termLsEq_LH_C_0_1_5_1) then
            ((termLsEq_d0_d0_d9_d7 _lh_termLsEq_LH_C_1_1_5_0) _lh_termLsEq_LH_C_1_1_5_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_7_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d8 _lh_termLsEq_arg1_3_9 _lh_termLsEq_arg2_3_9 =
  (match _lh_termLsEq_arg1_3_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_7_8, _lh_termLsEq_LH_C_1_7_8) -> 
      (match _lh_termLsEq_arg2_3_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_7_9, _lh_termLsEq_LH_C_1_7_9) -> 
          (if ((termEq_d0_d0_d9_d8 _lh_termLsEq_LH_C_0_7_8) _lh_termLsEq_LH_C_0_7_9) then
            ((termLsEq_d0_d0_d9_d8 _lh_termLsEq_LH_C_1_7_8) _lh_termLsEq_LH_C_1_7_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d0_d0_d9_d9 _lh_termLsEq_arg1_1_3_4 _lh_termLsEq_arg2_1_3_4 =
  (match _lh_termLsEq_arg1_1_3_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_6_8, _lh_termLsEq_LH_C_1_2_6_8) -> 
      (match _lh_termLsEq_arg2_1_3_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_6_9, _lh_termLsEq_LH_C_1_2_6_9) -> 
          (if ((termEq_d0_d0_d9_d9 _lh_termLsEq_LH_C_0_2_6_8) _lh_termLsEq_LH_C_0_2_6_9) then
            ((termLsEq_d0_d0_d9_d9 _lh_termLsEq_LH_C_1_2_6_8) _lh_termLsEq_LH_C_1_2_6_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_3_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d1_d0_d0 _lh_termLsEq_arg1_1_1_9 _lh_termLsEq_arg2_1_1_9 =
  (match _lh_termLsEq_arg1_1_1_9 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_3_8, _lh_termLsEq_LH_C_1_2_3_8) -> 
      (match _lh_termLsEq_arg2_1_1_9 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_3_9, _lh_termLsEq_LH_C_1_2_3_9) -> 
          (if ((termEq_d1_d0_d0 _lh_termLsEq_LH_C_0_2_3_8) _lh_termLsEq_LH_C_0_2_3_9) then
            ((termLsEq_d1_d0_d0 _lh_termLsEq_LH_C_1_2_3_8) _lh_termLsEq_LH_C_1_2_3_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_9 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d1_d1_d0 _lh_termLsEq_arg1_9_6 _lh_termLsEq_arg2_9_6 =
  (match _lh_termLsEq_arg1_9_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_9_2, _lh_termLsEq_LH_C_1_1_9_2) -> 
      (match _lh_termLsEq_arg2_9_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_9_3, _lh_termLsEq_LH_C_1_1_9_3) -> 
          (if ((termEq_d1_d1_d0 _lh_termLsEq_LH_C_0_1_9_2) _lh_termLsEq_LH_C_0_1_9_3) then
            ((termLsEq_d1_d1_d0 _lh_termLsEq_LH_C_1_1_9_2) _lh_termLsEq_LH_C_1_1_9_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_9_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d2_d0_d0 _lh_termLsEq_arg1_4_3 _lh_termLsEq_arg2_4_3 =
  (match _lh_termLsEq_arg1_4_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_8_6, _lh_termLsEq_LH_C_1_8_6) -> 
      (match _lh_termLsEq_arg2_4_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_8_7, _lh_termLsEq_LH_C_1_8_7) -> 
          (if ((termEq_d2_d0_d0 _lh_termLsEq_LH_C_0_8_6) _lh_termLsEq_LH_C_0_8_7) then
            ((termLsEq_d2_d0_d0 _lh_termLsEq_LH_C_1_8_6) _lh_termLsEq_LH_C_1_8_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d2_d1_d0 _lh_termLsEq_arg1_1_2_3 _lh_termLsEq_arg2_1_2_3 =
  (match _lh_termLsEq_arg1_1_2_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_4_6, _lh_termLsEq_LH_C_1_2_4_6) -> 
      (match _lh_termLsEq_arg2_1_2_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_4_7, _lh_termLsEq_LH_C_1_2_4_7) -> 
          (if ((termEq_d2_d1_d0 _lh_termLsEq_LH_C_0_2_4_6) _lh_termLsEq_LH_C_0_2_4_7) then
            ((termLsEq_d2_d1_d0 _lh_termLsEq_LH_C_1_2_4_6) _lh_termLsEq_LH_C_1_2_4_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d3_d0_d0 _lh_termLsEq_arg1_1_2_6 _lh_termLsEq_arg2_1_2_6 =
  (match _lh_termLsEq_arg1_1_2_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_5_2, _lh_termLsEq_LH_C_1_2_5_2) -> 
      (match _lh_termLsEq_arg2_1_2_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_5_3, _lh_termLsEq_LH_C_1_2_5_3) -> 
          (if ((termEq_d3_d0_d0 _lh_termLsEq_LH_C_0_2_5_2) _lh_termLsEq_LH_C_0_2_5_3) then
            ((termLsEq_d3_d0_d0 _lh_termLsEq_LH_C_1_2_5_2) _lh_termLsEq_LH_C_1_2_5_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_2_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d3_d1_d0 _lh_termLsEq_arg1_4_0 _lh_termLsEq_arg2_4_0 =
  (match _lh_termLsEq_arg1_4_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_8_0, _lh_termLsEq_LH_C_1_8_0) -> 
      (match _lh_termLsEq_arg2_4_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_8_1, _lh_termLsEq_LH_C_1_8_1) -> 
          (if ((termEq_d3_d1_d0 _lh_termLsEq_LH_C_0_8_0) _lh_termLsEq_LH_C_0_8_1) then
            ((termLsEq_d3_d1_d0 _lh_termLsEq_LH_C_1_8_0) _lh_termLsEq_LH_C_1_8_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d4_d0_d0 _lh_termLsEq_arg1_6_4 _lh_termLsEq_arg2_6_4 =
  (match _lh_termLsEq_arg1_6_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_2_8, _lh_termLsEq_LH_C_1_1_2_8) -> 
      (match _lh_termLsEq_arg2_6_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_2_9, _lh_termLsEq_LH_C_1_1_2_9) -> 
          (if ((termEq_d4_d0_d0 _lh_termLsEq_LH_C_0_1_2_8) _lh_termLsEq_LH_C_0_1_2_9) then
            ((termLsEq_d4_d0_d0 _lh_termLsEq_LH_C_1_1_2_8) _lh_termLsEq_LH_C_1_1_2_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and termLsEq_d4_d1_d0 _lh_termLsEq_arg1_1_1_0 _lh_termLsEq_arg2_1_1_0 =
  (match _lh_termLsEq_arg1_1_1_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_2_2_0, _lh_termLsEq_LH_C_1_2_2_0) -> 
      (match _lh_termLsEq_arg2_1_1_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_2_2_1, _lh_termLsEq_LH_C_1_2_2_1) -> 
          (if ((termEq_d4_d1_d0 _lh_termLsEq_LH_C_0_2_2_0) _lh_termLsEq_LH_C_0_2_2_1) then
            ((termLsEq_d4_d1_d0 _lh_termLsEq_LH_C_1_2_2_0) _lh_termLsEq_LH_C_1_2_2_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1_1_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and test0_d0_d0_d0 _lh_test0_arg1_1 =
  let rec difference_1 = (fun _lh_difference_arg1_1 _lh_difference_arg2_1 -> 
    (`Fun((`DIFFERENCE), (`LH_C(_lh_difference_arg1_1, (`LH_C(_lh_difference_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_4 = ((difference_1 x_1) x_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_4 = zero_1 in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_6_8 _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_4 -> 
          (let rec _lh_matchIdent_3_8_2 = ((one_way_unify_d0_d0_d5_d2 _lh_rewrite_with_lemmas_helper_arg1_2_6_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_4) in
            (match _lh_matchIdent_3_8_2 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_5 then
                  (rewrite_d0_d0_d5_d2 ((apply_subst_d1_d0_d5_d2 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d5_d2 _lh_rewrite_with_lemmas_helper_arg1_2_6_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_6 = ((difference_1 ((plus_1 x_1) y_1)) x_1) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_6 = y_1 in
          (fun _lh_rewrite_with_lemmas_helper_arg1_2_6_9 _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_6 -> 
            (let rec _lh_matchIdent_3_8_3 = ((one_way_unify_d0_d0_d5_d3 _lh_rewrite_with_lemmas_helper_arg1_2_6_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_6) in
              (match _lh_matchIdent_3_8_3 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_7) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_7 then
                    (rewrite_d0_d0_d5_d3 ((apply_subst_d1_d0_d5_d3 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_6))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d5_d3 _lh_rewrite_with_lemmas_helper_arg1_2_6_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_6))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_8 = ((difference_1 ((plus_1 y_1) x_1)) x_1) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_8 = y_1 in
            (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_0 _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_8 -> 
              (let rec _lh_matchIdent_3_8_4 = ((one_way_unify_d0_d0_d5_d4 _lh_rewrite_with_lemmas_helper_arg1_2_7_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_8) in
                (match _lh_matchIdent_3_8_4 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_9) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_9 then
                      (rewrite_d0_d0_d5_d4 ((apply_subst_d1_d0_d5_d4 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_8))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0_d5_d4 _lh_rewrite_with_lemmas_helper_arg1_2_7_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_8))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_0 = ((difference_1 ((plus_1 x_1) y_1)) ((plus_1 x_1) z_1)) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_0 = ((difference_1 y_1) z_1) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_1 _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_0 -> 
                (let rec _lh_matchIdent_3_8_5 = ((one_way_unify_d0_d0_d5_d5 _lh_rewrite_with_lemmas_helper_arg1_2_7_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_0) in
                  (match _lh_matchIdent_3_8_5 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_1) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_1 then
                        (rewrite_d0_d0_d5_d5 ((apply_subst_d1_d0_d5_d5 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_0))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0_d5_d5 _lh_rewrite_with_lemmas_helper_arg1_2_7_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_0))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_2 = ((difference_1 ((plus_1 y_1) ((plus_1 x_1) z_1))) x_1) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_2 = ((plus_1 y_1) z_1) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_2 _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_2 -> 
                  (let rec _lh_matchIdent_3_8_6 = ((one_way_unify_d0_d0_d5_d6 _lh_rewrite_with_lemmas_helper_arg1_2_7_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_2) in
                    (match _lh_matchIdent_3_8_6 with
                      | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_3) -> 
                        (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_3 then
                          (rewrite_d0_d0_d5_d6 ((apply_subst_d1_d0_d5_d6 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_2))
                        else
                          ((rewrite_with_lemmas_helper_d0_d0_d5_d6 _lh_rewrite_with_lemmas_helper_arg1_2_7_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_2))
                      | _ -> 
                        (failwith "error")))))) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_4 = ((difference_1 (add1_1 ((plus_1 y_1) z_1))) z_1) in
                (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_4 = (add1_1 y_1) in
                  (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_3 _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_4 -> 
                    (let rec _lh_matchIdent_3_8_7 = ((one_way_unify_d0_d0_d5_d7 _lh_rewrite_with_lemmas_helper_arg1_2_7_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_4) in
                      (match _lh_matchIdent_3_8_7 with
                        | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_5) -> 
                          (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_5 then
                            (rewrite_d0_d0_d5_d7 ((apply_subst_d1_d0_d5_d7 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_4))
                          else
                            ((rewrite_with_lemmas_helper_d0_d0_d5_d7 _lh_rewrite_with_lemmas_helper_arg1_2_7_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_4))
                        | _ -> 
                          (failwith "error")))))) in
                (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_6 = ((difference_1 (add1_1 (add1_1 x_1))) two_1) in
                  (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_6 = x_1 in
                    (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_4 _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_6 -> 
                      (let rec _lh_matchIdent_3_8_8 = ((one_way_unify_d0_d0_d5_d8 _lh_rewrite_with_lemmas_helper_arg1_2_7_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_6) in
                        (match _lh_matchIdent_3_8_8 with
                          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_7) -> 
                            (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_7 then
                              (rewrite_d0_d0_d5_d8 ((apply_subst_d1_d0_d5_d8 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_6))
                            else
                              ((rewrite_with_lemmas_helper_d0_d0_d5_d8 _lh_rewrite_with_lemmas_helper_arg1_2_7_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_6))
                          | _ -> 
                            (failwith "error")))))) in
                  (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_5 -> 
                    _lh_rewrite_with_lemmas_helper_arg1_2_7_5) in
                    (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_6 -> 
                      ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_8 _lh_rewrite_with_lemmas_helper_arg1_2_7_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_7)))) in
                  (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_7 -> 
                    ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_7 _lh_rewrite_with_lemmas_helper_arg1_2_7_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_5)))) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_8 -> 
                  ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_6 _lh_rewrite_with_lemmas_helper_arg1_2_7_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_3)))) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_2_7_9 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_5 _lh_rewrite_with_lemmas_helper_arg1_2_7_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_1)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_0 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_4 _lh_rewrite_with_lemmas_helper_arg1_2_8_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_9)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_1 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_3 _lh_rewrite_with_lemmas_helper_arg1_2_8_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_7)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_2 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_2 _lh_rewrite_with_lemmas_helper_arg1_2_8_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_5))))))))
  and times_1 = (fun _lh_times_arg1_1 _lh_times_arg2_1 -> 
    (`Fun((`TIMES), (`LH_C(_lh_times_arg1_1, (`LH_C(_lh_times_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_2 = ((times_1 x_1) ((plus_1 y_1) z_1)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_2 = ((plus_1 ((times_1 x_1) y_1)) ((times_1 x_1) z_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_8 _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_2 -> 
          (let rec _lh_matchIdent_4_1_6 = ((one_way_unify_d0_d0_d2_d5 _lh_rewrite_with_lemmas_helper_arg1_3_4_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_2) in
            (match _lh_matchIdent_4_1_6 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_3 then
                  (rewrite_d0_d0_d2_d5 ((apply_subst_d1_d0_d2_d5 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d2_d5 _lh_rewrite_with_lemmas_helper_arg1_3_4_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_4 = ((times_1 ((times_1 x_1) y_1)) z_1) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_4 = ((times_1 x_1) ((times_1 y_1) z_1)) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_9 _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_4 -> 
            (let rec _lh_matchIdent_4_1_7 = ((one_way_unify_d0_d0_d2_d6 _lh_rewrite_with_lemmas_helper_arg1_3_4_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_4) in
              (match _lh_matchIdent_4_1_7 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_5) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_5 then
                    (rewrite_d0_d0_d2_d6 ((apply_subst_d1_d0_d2_d6 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_4))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d2_d6 _lh_rewrite_with_lemmas_helper_arg1_3_4_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_4))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_6 = ((times_1 x_1) ((difference_1 y_1) z_1)) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_6 = ((difference_1 ((times_1 y_1) x_1)) ((times_1 z_1) x_1)) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_0 _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_6 -> 
              (let rec _lh_matchIdent_4_1_8 = ((one_way_unify_d0_d0_d2_d7 _lh_rewrite_with_lemmas_helper_arg1_3_5_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_6) in
                (match _lh_matchIdent_4_1_8 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_7) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_7 then
                      (rewrite_d0_d0_d2_d7 ((apply_subst_d1_d0_d2_d7 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_6))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0_d2_d7 _lh_rewrite_with_lemmas_helper_arg1_3_5_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_6))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_8 = ((times_1 x_1) (add1_1 y_1)) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_8 = ((plus_1 x_1) ((times_1 x_1) y_1)) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_1 _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_8 -> 
                (let rec _lh_matchIdent_4_1_9 = ((one_way_unify_d0_d0_d2_d8 _lh_rewrite_with_lemmas_helper_arg1_3_5_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_8) in
                  (match _lh_matchIdent_4_1_9 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_9) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_9 then
                        (rewrite_d0_d0_d2_d8 ((apply_subst_d1_d0_d2_d8 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_8))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0_d2_d8 _lh_rewrite_with_lemmas_helper_arg1_3_5_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_8))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_2 -> 
              _lh_rewrite_with_lemmas_helper_arg1_3_5_2) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_3 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_9 _lh_rewrite_with_lemmas_helper_arg1_3_5_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_9)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_4 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_8 _lh_rewrite_with_lemmas_helper_arg1_3_5_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_7)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_5 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_7 _lh_rewrite_with_lemmas_helper_arg1_3_5_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_5)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_6 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_6 _lh_rewrite_with_lemmas_helper_arg1_3_5_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_3))))))))
  and sub1_1 = (fun _lh_sub1_arg1_1 -> 
    (`Fun((`SUB1), (`LH_C(_lh_sub1_arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_4 = (sub1_1 (add1_1 x_1)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_4 = x_1 in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_1 _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_4 -> 
          (let rec _lh_matchIdent_4_3_2 = ((one_way_unify_d0_d0_d4_d1 _lh_rewrite_with_lemmas_helper_arg1_3_9_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_4) in
            (match _lh_matchIdent_4_3_2 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_5 then
                  (rewrite_d0_d0_d4_d1 ((apply_subst_d1_d0_d4_d1 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d4_d1 _lh_rewrite_with_lemmas_helper_arg1_3_9_1) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_5 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_2 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_9_2) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_3 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_2 _lh_rewrite_with_lemmas_helper_arg1_3_9_3) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_5))))))))
  and cons_1 = (fun _lh_cons_arg1_1 _lh_cons_arg2_1 -> 
    (`Fun((`CONS), (`LH_C(_lh_cons_arg1_1, (`LH_C(_lh_cons_arg2_1, (`LH_N))))), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_7 -> 
      _lh_rewrite_with_lemmas_helper_arg1_4_0_7)))))
  and remainder_1 = (fun _lh_remainder_arg1_1 _lh_remainder_arg2_1 -> 
    (`Fun((`REMAINDER), (`LH_C(_lh_remainder_arg1_1, (`LH_C(_lh_remainder_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_8 = ((remainder_1 x_1) one_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_8 = zero_1 in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_3 _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_8 -> 
          (let rec _lh_matchIdent_3_8_9 = ((one_way_unify_d0_d0_d5_d9 _lh_rewrite_with_lemmas_helper_arg1_2_8_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_8) in
            (match _lh_matchIdent_3_8_9 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_3_9 then
                  (rewrite_d0_d0_d5_d9 ((apply_subst_d1_d0_d5_d9 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_3_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d5_d9 _lh_rewrite_with_lemmas_helper_arg1_2_8_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_0 = ((remainder_1 x_1) x_1) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_0 = zero_1 in
          (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_4 _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_0 -> 
            (let rec _lh_matchIdent_3_9_0 = ((one_way_unify_d0_d0_d6_d0 _lh_rewrite_with_lemmas_helper_arg1_2_8_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_0) in
              (match _lh_matchIdent_3_9_0 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_1) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_1 then
                    (rewrite_d0_d0_d6_d0 ((apply_subst_d1_d0_d6_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_0))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d6_d0 _lh_rewrite_with_lemmas_helper_arg1_2_8_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_0))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_2 = ((remainder_1 ((times_1 x_1) y_1)) x_1) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_2 = zero_1 in
            (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_5 _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_2 -> 
              (let rec _lh_matchIdent_3_9_1 = ((one_way_unify_d0_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_8_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_2) in
                (match _lh_matchIdent_3_9_1 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_3) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_3 then
                      (rewrite_d0_d0_d0 ((apply_subst_d1_d0_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_2))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0_d0 _lh_rewrite_with_lemmas_helper_arg1_2_8_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_2))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_4 = ((remainder_1 ((times_1 x_1) y_1)) y_1) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_4 = zero_1 in
              (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_6 _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_4 -> 
                (let rec _lh_matchIdent_3_9_2 = ((one_way_unify_d0_d0_d1 _lh_rewrite_with_lemmas_helper_arg1_2_8_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_4) in
                  (match _lh_matchIdent_3_9_2 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_5) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_5 then
                        (rewrite_d0_d0_d1 ((apply_subst_d1_d0_d1 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_4))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0_d1 _lh_rewrite_with_lemmas_helper_arg1_2_8_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_4))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_5 = (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_7 -> 
              _lh_rewrite_with_lemmas_helper_arg1_2_8_7) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_8 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_2 _lh_rewrite_with_lemmas_helper_arg1_2_8_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_5)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_2_8_9 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_1 _lh_rewrite_with_lemmas_helper_arg1_2_8_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_3)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_0 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_0 _lh_rewrite_with_lemmas_helper_arg1_2_9_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_1)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_1 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_9 _lh_rewrite_with_lemmas_helper_arg1_2_9_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1_3_9))))))))
  and a_1 = (`Var((`A)))
  and odd__1 = (fun _lh_odd__arg1_1 -> 
    (`Fun((`ODD), (`LH_C(_lh_odd__arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_0 = (odd__1 x_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_0 = (even__1 (sub1_1 x_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_1 _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_0 -> 
          (let rec _lh_matchIdent_4_2_5 = ((one_way_unify_d0_d0_d3_d4 _lh_rewrite_with_lemmas_helper_arg1_3_7_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_0) in
            (match _lh_matchIdent_4_2_5 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_1) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_1 then
                  (rewrite_d0_d0_d3_d4 ((apply_subst_d1_d0_d3_d4 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_0))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d3_d4 _lh_rewrite_with_lemmas_helper_arg1_3_7_1) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_0))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_2 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_7_2) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_3 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_5 _lh_rewrite_with_lemmas_helper_arg1_3_7_3) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_1))))))))
  and z_1 = (`Var((`Z)))
  and zerop_1 = (fun _lh_zerop_arg1_1 -> 
    (`Fun((`ZEROP), (`LH_C(_lh_zerop_arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_8 = (zerop_1 x_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_8 = ((equal_1 x_1) zero_1) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_0 _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_8 -> 
          (let rec _lh_matchIdent_4_1_4 = ((one_way_unify_d0_d0_d2_d3 _lh_rewrite_with_lemmas_helper_arg1_3_4_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_8) in
            (match _lh_matchIdent_4_1_4 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_9 then
                  (rewrite_d0_d0_d2_d3 ((apply_subst_d1_d0_d2_d3 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d2_d3 _lh_rewrite_with_lemmas_helper_arg1_3_4_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_1 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_4_1) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_2 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_4 _lh_rewrite_with_lemmas_helper_arg1_3_4_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_9))))))))
  and x_1 = (`Var((`X)))
  and nilp_1 = (fun _lh_nilp_arg1_1 -> 
    (`Fun((`NILP), (`LH_C(_lh_nilp_arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_0 = (nilp_1 x_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_0 = ((equal_1 x_1) nil_1) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_5 _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_0 -> 
          (let rec _lh_matchIdent_4_3_0 = ((one_way_unify_d0_d0_d3_d9 _lh_rewrite_with_lemmas_helper_arg1_3_8_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_0) in
            (match _lh_matchIdent_4_3_0 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_1) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_1 then
                  (rewrite_d0_d0_d3_d9 ((apply_subst_d1_d0_d3_d9 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_0))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d3_d9 _lh_rewrite_with_lemmas_helper_arg1_3_8_5) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_0))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_6 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_8_6) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_7 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_0 _lh_rewrite_with_lemmas_helper_arg1_3_8_7) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_1))))))))
  and greatereqp_1 = (fun _lh_greatereqp_arg1_1 _lh_greatereqp_arg2_1 -> 
    (`Fun((`GREATEREQP), (`LH_C(_lh_greatereqp_arg1_1, (`LH_C(_lh_greatereqp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greatereqp_1 x_1) y_1), (not__1 ((lessp_1 x_1) y_1)))), (`LH_N)))))))
  and not__1 = (fun _lh_not__arg1_1 -> 
    (`Fun((`NOT), (`LH_C(_lh_not__arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_2 = (not__1 x_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_2 = (((if__1 x_1) boyerFalse_1) boyerTrue_1) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_4 _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_2 -> 
          (let rec _lh_matchIdent_4_2_6 = ((one_way_unify_d0_d0_d3_d5 _lh_rewrite_with_lemmas_helper_arg1_3_7_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_2) in
            (match _lh_matchIdent_4_2_6 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_3 then
                  (rewrite_d0_d0_d3_d5 ((apply_subst_d1_d0_d3_d5 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d3_d5 _lh_rewrite_with_lemmas_helper_arg1_3_7_4) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_5 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_7_5) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_6 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_6 _lh_rewrite_with_lemmas_helper_arg1_3_7_6) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_3))))))))
  and or__1 = (fun _lh_or__arg1_1 _lh_or__arg2_1 -> 
    (`Fun((`OR), (`LH_C(_lh_or__arg1_1, (`LH_C(_lh_or__arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_6 = ((or__1 x_1) y_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_6 = (((if__1 x_1) boyerTrue_1) (((if__1 y_1) boyerTrue_1) boyerFalse_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_5 _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_6 -> 
          (let rec _lh_matchIdent_4_3_3 = ((one_way_unify_d0_d0_d4_d2 _lh_rewrite_with_lemmas_helper_arg1_3_9_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_6) in
            (match _lh_matchIdent_4_3_3 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_7) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_7 then
                  (rewrite_d0_d0_d4_d2 ((apply_subst_d1_d0_d4_d2 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_6))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d4_d2 _lh_rewrite_with_lemmas_helper_arg1_3_9_5) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_6))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_6 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_9_6) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_7 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_3 _lh_rewrite_with_lemmas_helper_arg1_3_9_7) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_7))))))))
  and append_1 = (fun _lh_append_arg1_1 _lh_append_arg2_1 -> 
    (`Fun((`APPEND), (`LH_C(_lh_append_arg1_1, (`LH_C(_lh_append_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_6_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_2 = ((append_1 ((append_1 x_1) y_1)) z_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_2 = ((append_1 x_1) ((append_1 y_1) z_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_6_5 _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_2 -> 
          (let rec _lh_matchIdent_3_8_1 = ((one_way_unify_d0_d0_d5_d1 _lh_rewrite_with_lemmas_helper_arg1_2_6_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_2) in
            (match _lh_matchIdent_3_8_1 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_2_3 then
                  (rewrite_d0_d0_d5_d1 ((apply_subst_d1_d0_d5_d1 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_2_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d5_d1 _lh_rewrite_with_lemmas_helper_arg1_2_6_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_2_6_6 -> 
        _lh_rewrite_with_lemmas_helper_arg1_2_6_6) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_6_7 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_6_1 _lh_rewrite_with_lemmas_helper_arg1_2_6_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_2_3))))))))
  and u_1 = (`Var((`U)))
  and f_1_1_0 = (fun _lh_f_arg1_1 -> 
    (`Fun((`F), (`LH_C(_lh_f_arg1_1, (`LH_N))), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_4 -> 
      _lh_rewrite_with_lemmas_helper_arg1_3_4_4)))))
  and greaterp_1 = (fun _lh_greaterp_arg1_1 _lh_greaterp_arg2_1 -> 
    (`Fun((`GREATERP), (`LH_C(_lh_greaterp_arg1_1, (`LH_C(_lh_greaterp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greaterp_1 x_1) y_1), ((lessp_1 y_1) x_1))), (`LH_N)))))))
  and b_1 = (`Var((`B)))
  and member_1 = (fun _lh_member_arg1_1 _lh_member_arg2_1 -> 
    (`Fun((`MEMBER), (`LH_C(_lh_member_arg1_1, (`LH_C(_lh_member_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_4 = ((member_1 x_1) ((append_1 y_1) z_1)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_4 = ((or__1 ((member_1 x_1) y_1)) ((member_1 x_1) z_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_7 _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_4 -> 
          (let rec _lh_matchIdent_4_2_7 = ((one_way_unify_d0_d0_d3_d6 _lh_rewrite_with_lemmas_helper_arg1_3_7_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_4) in
            (match _lh_matchIdent_4_2_7 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_5 then
                  (rewrite_d0_d0_d3_d6 ((apply_subst_d1_d0_d3_d6 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d3_d6 _lh_rewrite_with_lemmas_helper_arg1_3_7_7) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_6 = ((member_1 x_1) (reverse__1 y_1)) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_6 = ((member_1 x_1) y_1) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_8 _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_6 -> 
            (let rec _lh_matchIdent_4_2_8 = ((one_way_unify_d0_d0_d3_d7 _lh_rewrite_with_lemmas_helper_arg1_3_7_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_6) in
              (match _lh_matchIdent_4_2_8 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_7) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_7 then
                    (rewrite_d0_d0_d3_d7 ((apply_subst_d1_d0_d3_d7 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_6))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d3_d7 _lh_rewrite_with_lemmas_helper_arg1_3_7_8) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_6))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_9 -> 
          _lh_rewrite_with_lemmas_helper_arg1_3_7_9) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_0 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_8 _lh_rewrite_with_lemmas_helper_arg1_3_8_0) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_7)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_1 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_7 _lh_rewrite_with_lemmas_helper_arg1_3_8_1) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_5))))))))
  and w_1 = (`Var((`W)))
  and lesseqp_1 = (fun _lh_lesseqp_arg1_1 _lh_lesseqp_arg2_1 -> 
    (`Fun((`LESSEQP), (`LH_C(_lh_lesseqp_arg1_1, (`LH_C(_lh_lesseqp_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lesseqp_1 x_1) y_1), (not__1 ((lessp_1 y_1) x_1)))), (`LH_N)))))))
  and nil_1 = (`Fun((`NIL), (`LH_N), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_3_7_0 -> 
    _lh_rewrite_with_lemmas_helper_arg1_3_7_0))))
  and length__1 = (fun _lh_length__arg1_1 -> 
    (`Fun((`LENGTH), (`LH_C(_lh_length__arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_8 = (length__1 (reverse__1 x_1)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_8 = (length__1 x_1) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_8 _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_8 -> 
          (let rec _lh_matchIdent_4_3_4 = ((one_way_unify_d0_d0_d4_d3 _lh_rewrite_with_lemmas_helper_arg1_3_9_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_8) in
            (match _lh_matchIdent_4_3_4 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_9 then
                  (rewrite_d0_d0_d4_d3 ((apply_subst_d1_d0_d4_d3 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d4_d3 _lh_rewrite_with_lemmas_helper_arg1_3_9_8) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_0 = (length__1 ((cons_1 x_1) ((cons_1 y_1) ((cons_1 z_1) ((cons_1 u_1) w_1))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_0 = ((plus_1 four_1) (length__1 w_1)) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_9 _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_0 -> 
            (let rec _lh_matchIdent_4_3_5 = ((one_way_unify_d0_d0_d4_d4 _lh_rewrite_with_lemmas_helper_arg1_3_9_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_0) in
              (match _lh_matchIdent_4_3_5 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_1) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_1 then
                    (rewrite_d0_d0_d4_d4 ((apply_subst_d1_d0_d4_d4 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_0))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d4_d4 _lh_rewrite_with_lemmas_helper_arg1_3_9_9) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_0))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_0 -> 
          _lh_rewrite_with_lemmas_helper_arg1_4_0_0) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_1 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_5 _lh_rewrite_with_lemmas_helper_arg1_4_0_1) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_1)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_2 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_4 _lh_rewrite_with_lemmas_helper_arg1_4_0_2) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_9))))))))
  and add1_1 = (fun _lh_add1_arg1_1 -> 
    (`Fun((`ADD1), (`LH_C(_lh_add1_arg1_1, (`LH_N))), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_4 -> 
      _lh_rewrite_with_lemmas_helper_arg1_3_9_4)))))
  and reverse__1 = (fun _lh_reverse__arg1_1 -> 
    (`Fun((`REVERSE), (`LH_C(_lh_reverse__arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_6 = (reverse__1 ((append_1 x_1) y_1)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_6 = ((append_1 (reverse__1 y_1)) (reverse__1 x_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_7 _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_6 -> 
          (let rec _lh_matchIdent_4_1_3 = ((one_way_unify_d0_d0_d2_d2 _lh_rewrite_with_lemmas_helper_arg1_3_3_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_6) in
            (match _lh_matchIdent_4_1_3 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_7) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_7 then
                  (rewrite_d0_d0_d2_d2 ((apply_subst_d1_d0_d2_d2 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_6))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d2_d2 _lh_rewrite_with_lemmas_helper_arg1_3_3_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_6))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_8 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_3_8) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_9 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_3 _lh_rewrite_with_lemmas_helper_arg1_3_3_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_7))))))))
  and equal_1 = (fun _lh_equal_arg1_1 _lh_equal_arg2_1 -> 
    (`Fun((`EQUAL), (`LH_C(_lh_equal_arg1_1, (`LH_C(_lh_equal_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_0 = ((equal_1 ((plus_1 x_1) y_1)) zero_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_0 = ((and__1 (zerop_1 x_1)) (zerop_1 y_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_8 _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_0 -> 
          (let rec _lh_matchIdent_3_9_5 = ((one_way_unify_d0_d0_d4 _lh_rewrite_with_lemmas_helper_arg1_2_9_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_0) in
            (match _lh_matchIdent_3_9_5 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_1) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_1 then
                  (rewrite_d0_d0_d4 ((apply_subst_d1_d0_d4 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_0))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d4 _lh_rewrite_with_lemmas_helper_arg1_2_9_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_0))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_2 = ((equal_1 ((plus_1 x_1) y_1)) ((plus_1 x_1) z_1)) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_2 = ((equal_1 y_1) z_1) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_9 _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_2 -> 
            (let rec _lh_matchIdent_3_9_6 = ((one_way_unify_d0_d0_d5 _lh_rewrite_with_lemmas_helper_arg1_2_9_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_2) in
              (match _lh_matchIdent_3_9_6 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_3) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_3 then
                    (rewrite_d0_d0_d5 ((apply_subst_d1_d0_d5 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_2))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d5 _lh_rewrite_with_lemmas_helper_arg1_2_9_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_2))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_4 = ((equal_1 zero_1) ((difference_1 x_1) y_1)) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_4 = (not__1 ((lessp_1 y_1) x_1)) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_0 _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_4 -> 
              (let rec _lh_matchIdent_3_9_7 = ((one_way_unify_d0_d0_d6 _lh_rewrite_with_lemmas_helper_arg1_3_0_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_4) in
                (match _lh_matchIdent_3_9_7 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_5) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_5 then
                      (rewrite_d0_d0_d6 ((apply_subst_d1_d0_d6 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_4))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0_d6 _lh_rewrite_with_lemmas_helper_arg1_3_0_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_4))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_6 = ((equal_1 x_1) ((difference_1 x_1) y_1)) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_6 = ((or__1 ((equal_1 x_1) zero_1)) (zerop_1 y_1)) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_1 _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_6 -> 
                (let rec _lh_matchIdent_3_9_8 = ((one_way_unify_d0_d0_d7 _lh_rewrite_with_lemmas_helper_arg1_3_0_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_6) in
                  (match _lh_matchIdent_3_9_8 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_7) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_7 then
                        (rewrite_d0_d0_d7 ((apply_subst_d1_d0_d7 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_6))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0_d7 _lh_rewrite_with_lemmas_helper_arg1_3_0_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_6))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_8 = ((equal_1 ((times_1 x_1) y_1)) zero_1) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_8 = ((or__1 (zerop_1 x_1)) (zerop_1 y_1)) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_2 _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_8 -> 
                  (let rec _lh_matchIdent_3_9_9 = ((one_way_unify_d0_d0_d8 _lh_rewrite_with_lemmas_helper_arg1_3_0_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_8) in
                    (match _lh_matchIdent_3_9_9 with
                      | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_9) -> 
                        (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_5_9 then
                          (rewrite_d0_d0_d8 ((apply_subst_d1_d0_d8 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_5_8))
                        else
                          ((rewrite_with_lemmas_helper_d0_d0_d8 _lh_rewrite_with_lemmas_helper_arg1_3_0_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_8))
                      | _ -> 
                        (failwith "error")))))) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_0 = ((equal_1 ((append_1 x_1) y_1)) ((append_1 x_1) z_1)) in
                (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_0 = ((equal_1 y_1) z_1) in
                  (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_3 _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_0 -> 
                    (let rec _lh_matchIdent_4_0_0 = ((one_way_unify_d0_d0_d9 _lh_rewrite_with_lemmas_helper_arg1_3_0_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_0) in
                      (match _lh_matchIdent_4_0_0 with
                        | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_1) -> 
                          (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_1 then
                            (rewrite_d0_d0_d9 ((apply_subst_d1_d0_d9 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_0))
                          else
                            ((rewrite_with_lemmas_helper_d0_d0_d9 _lh_rewrite_with_lemmas_helper_arg1_3_0_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_0))
                        | _ -> 
                          (failwith "error")))))) in
                (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_2 = ((equal_1 y_1) ((times_1 x_1) y_1)) in
                  (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_2 = ((or__1 ((equal_1 y_1) zero_1)) ((equal_1 x_1) one_1)) in
                    (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_4 _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_2 -> 
                      (let rec _lh_matchIdent_4_0_1 = ((one_way_unify_d0_d0_d1_d0 _lh_rewrite_with_lemmas_helper_arg1_3_0_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_2) in
                        (match _lh_matchIdent_4_0_1 with
                          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_3) -> 
                            (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_3 then
                              (rewrite_d0_d0_d1_d0 ((apply_subst_d1_d0_d1_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_2))
                            else
                              ((rewrite_with_lemmas_helper_d0_d0_d1_d0 _lh_rewrite_with_lemmas_helper_arg1_3_0_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_2))
                          | _ -> 
                            (failwith "error")))))) in
                  (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_4 = ((equal_1 x_1) ((times_1 x_1) y_1)) in
                    (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_4 = ((or__1 ((equal_1 x_1) zero_1)) ((equal_1 y_1) one_1)) in
                      (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_5 _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_4 -> 
                        (let rec _lh_matchIdent_4_0_2 = ((one_way_unify_d0_d0_d1_d1 _lh_rewrite_with_lemmas_helper_arg1_3_0_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_4) in
                          (match _lh_matchIdent_4_0_2 with
                            | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_5) -> 
                              (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_5 then
                                (rewrite_d0_d0_d1_d1 ((apply_subst_d1_d0_d1_d1 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_4))
                              else
                                ((rewrite_with_lemmas_helper_d0_d0_d1_d1 _lh_rewrite_with_lemmas_helper_arg1_3_0_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_4))
                            | _ -> 
                              (failwith "error")))))) in
                    (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_6 = ((equal_1 ((times_1 x_1) y_1)) one_1) in
                      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_6 = ((and__1 ((equal_1 x_1) one_1)) ((equal_1 y_1) one_1)) in
                        (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_6 _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_6 -> 
                          (let rec _lh_matchIdent_4_0_3 = ((one_way_unify_d0_d0_d1_d2 _lh_rewrite_with_lemmas_helper_arg1_3_0_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_6) in
                            (match _lh_matchIdent_4_0_3 with
                              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_7) -> 
                                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_7 then
                                  (rewrite_d0_d0_d1_d2 ((apply_subst_d1_d0_d1_d2 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_6))
                                else
                                  ((rewrite_with_lemmas_helper_d0_d0_d1_d2 _lh_rewrite_with_lemmas_helper_arg1_3_0_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_6))
                              | _ -> 
                                (failwith "error")))))) in
                      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_8 = ((equal_1 ((difference_1 x_1) y_1)) ((difference_1 z_1) y_1)) in
                        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_8 = (((if__1 ((lessp_1 x_1) y_1)) (not__1 ((lessp_1 y_1) z_1))) (((if__1 ((lessp_1 z_1) y_1)) (not__1 ((lessp_1 y_1) x_1))) ((equal_1 x_1) z_1))) in
                          (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_7 _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_8 -> 
                            (let rec _lh_matchIdent_4_0_4 = ((one_way_unify_d0_d0_d1_d3 _lh_rewrite_with_lemmas_helper_arg1_3_0_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_8) in
                              (match _lh_matchIdent_4_0_4 with
                                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_9) -> 
                                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_6_9 then
                                    (rewrite_d0_d0_d1_d3 ((apply_subst_d1_d0_d1_d3 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_6_8))
                                  else
                                    ((rewrite_with_lemmas_helper_d0_d0_d1_d3 _lh_rewrite_with_lemmas_helper_arg1_3_0_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_8))
                                | _ -> 
                                  (failwith "error")))))) in
                        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_0 = ((equal_1 ((lessp_1 x_1) y_1)) z_1) in
                          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_0 = (((if__1 ((lessp_1 x_1) y_1)) ((equal_1 boyerTrue_1) z_1)) ((equal_1 boyerFalse_1) z_1)) in
                            (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_8 _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_0 -> 
                              (let rec _lh_matchIdent_4_0_5 = ((one_way_unify_d0_d0_d1_d4 _lh_rewrite_with_lemmas_helper_arg1_3_0_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_0) in
                                (match _lh_matchIdent_4_0_5 with
                                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_1) -> 
                                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_1 then
                                      (rewrite_d0_d0_d1_d4 ((apply_subst_d1_d0_d1_d4 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_0))
                                    else
                                      ((rewrite_with_lemmas_helper_d0_d0_d1_d4 _lh_rewrite_with_lemmas_helper_arg1_3_0_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_0))
                                  | _ -> 
                                    (failwith "error")))))) in
                          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_0_9 -> 
                            _lh_rewrite_with_lemmas_helper_arg1_3_0_9) in
                            (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_0 -> 
                              ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_5 _lh_rewrite_with_lemmas_helper_arg1_3_1_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_1)))) in
                          (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_1 -> 
                            ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_4 _lh_rewrite_with_lemmas_helper_arg1_3_1_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_9)))) in
                        (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_2 -> 
                          ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_3 _lh_rewrite_with_lemmas_helper_arg1_3_1_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_7)))) in
                      (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_3 -> 
                        ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_2 _lh_rewrite_with_lemmas_helper_arg1_3_1_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_5)))) in
                    (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_4 -> 
                      ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_1 _lh_rewrite_with_lemmas_helper_arg1_3_1_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_3)))) in
                  (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_5 -> 
                    ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_0 _lh_rewrite_with_lemmas_helper_arg1_3_1_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_6_1)))) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_6 -> 
                  ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_9 _lh_rewrite_with_lemmas_helper_arg1_3_1_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_9)))) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_7 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_8 _lh_rewrite_with_lemmas_helper_arg1_3_1_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_7)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_8 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_7 _lh_rewrite_with_lemmas_helper_arg1_3_1_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_5)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_1_9 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_6 _lh_rewrite_with_lemmas_helper_arg1_3_1_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_3)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_0 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_5 _lh_rewrite_with_lemmas_helper_arg1_3_2_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_5_1))))))))
  and zero_1 = (`Fun((`ZERO), (`LH_N), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_3 -> 
    _lh_rewrite_with_lemmas_helper_arg1_3_4_3))))
  and two_1 = (`Fun((`TWO), (`LH_N), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_2 = two_1 in
    (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_2 = (add1_1 one_1) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_8 _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_2 -> 
        (let rec _lh_matchIdent_4_3_1 = ((one_way_unify_d0_d0_d4_d0 _lh_rewrite_with_lemmas_helper_arg1_3_8_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_2) in
          (match _lh_matchIdent_4_3_1 with
            | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_3) -> 
              (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_2_3 then
                (rewrite_d0_d0_d4_d0 ((apply_subst_d1_d0_d4_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_2_2))
              else
                ((rewrite_with_lemmas_helper_d0_d0_d4_d0 _lh_rewrite_with_lemmas_helper_arg1_3_8_8) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_2))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_9 -> 
      _lh_rewrite_with_lemmas_helper_arg1_3_8_9) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_3_9_0 -> 
        ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_1 _lh_rewrite_with_lemmas_helper_arg1_3_9_0) _lh_rewrite_with_lemmas_helper_LH_C_1_2_2_3)))))))
  and if__1 = (fun _lh_if__arg1_1 _lh_if__arg2_1 _lh_if__arg3_1 -> 
    (`Fun((`IF), (`LH_C(_lh_if__arg1_1, (`LH_C(_lh_if__arg2_1, (`LH_C(_lh_if__arg3_1, (`LH_N))))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_8 = (((if__1 (((if__1 x_1) y_1) z_1)) u_1) w_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_8 = (((if__1 x_1) (((if__1 y_1) u_1) w_1)) (((if__1 z_1) u_1) w_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_7 _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_8 -> 
          (let rec _lh_matchIdent_4_2_4 = ((one_way_unify_d0_d0_d3_d3 _lh_rewrite_with_lemmas_helper_arg1_3_6_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_8) in
            (match _lh_matchIdent_4_2_4 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_9 then
                  (rewrite_d0_d0_d3_d3 ((apply_subst_d1_d0_d3_d3 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d3_d3 _lh_rewrite_with_lemmas_helper_arg1_3_6_7) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_8 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_6_8) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_9 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_4 _lh_rewrite_with_lemmas_helper_arg1_3_6_9) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_9))))))))
  and boyerFalse_1 = (`Fun((`FALSE), (`LH_N), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_3 -> 
    _lh_rewrite_with_lemmas_helper_arg1_4_0_3))))
  and plus_1 = (fun _lh_plus_arg1_1 _lh_plus_arg2_1 -> 
    (`Fun((`PLUS), (`LH_C(_lh_plus_arg1_1, (`LH_C(_lh_plus_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_2 = ((plus_1 ((plus_1 x_1) y_1)) z_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_2 = ((plus_1 x_1) ((plus_1 y_1) z_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_0 _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_2 -> 
          (let rec _lh_matchIdent_4_2_1 = ((one_way_unify_d0_d0_d3_d0 _lh_rewrite_with_lemmas_helper_arg1_3_6_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_2) in
            (match _lh_matchIdent_4_2_1 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_3 then
                  (rewrite_d0_d0_d3_d0 ((apply_subst_d1_d0_d3_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d3_d0 _lh_rewrite_with_lemmas_helper_arg1_3_6_0) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_4 = ((plus_1 ((remainder_1 x_1) y_1)) ((times_1 y_1) ((quotient_1 x_1) y_1))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_4 = x_1 in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_1 _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_4 -> 
            (let rec _lh_matchIdent_4_2_2 = ((one_way_unify_d0_d0_d3_d1 _lh_rewrite_with_lemmas_helper_arg1_3_6_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_4) in
              (match _lh_matchIdent_4_2_2 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_5) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_5 then
                    (rewrite_d0_d0_d3_d1 ((apply_subst_d1_d0_d3_d1 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_4))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d3_d1 _lh_rewrite_with_lemmas_helper_arg1_3_6_1) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_4))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_6 = ((plus_1 x_1) (add1_1 y_1)) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_6 = (add1_1 ((plus_1 x_1) y_1)) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_2 _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_6 -> 
              (let rec _lh_matchIdent_4_2_3 = ((one_way_unify_d0_d0_d3_d2 _lh_rewrite_with_lemmas_helper_arg1_3_6_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_6) in
                (match _lh_matchIdent_4_2_3 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_7) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_7 then
                      (rewrite_d0_d0_d3_d2 ((apply_subst_d1_d0_d3_d2 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_6))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0_d3_d2 _lh_rewrite_with_lemmas_helper_arg1_3_6_2) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_6))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_3 -> 
            _lh_rewrite_with_lemmas_helper_arg1_3_6_3) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_4 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_3 _lh_rewrite_with_lemmas_helper_arg1_3_6_4) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_7)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_5 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_2 _lh_rewrite_with_lemmas_helper_arg1_3_6_5) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_5)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_6_6 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_1 _lh_rewrite_with_lemmas_helper_arg1_3_6_6) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_3))))))))
  and iff_1 = (fun _lh_iff_arg1_1 _lh_iff_arg2_1 -> 
    (`Fun((`IFF), (`LH_C(_lh_iff_arg1_1, (`LH_C(_lh_iff_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((iff_1 x_1) y_1), ((and__1 ((implies_1 x_1) y_1)) ((implies_1 y_1) x_1)))), (`LH_N)))))))
  and nlistp_1 = (fun _lh_nlistp_arg1_1 -> 
    (`Fun((`NLISTP), (`LH_C(_lh_nlistp_arg1_1, (`LH_N))), (lazy (`LH_C((`LH_P2((nlistp_1 x_1), (not__1 (listp_1 x_1)))), (`LH_N)))))))
  and divides_1 = (fun _lh_divides_arg1_1 _lh_divides_arg2_1 -> 
    (`Fun((`DIVIDES), (`LH_C(_lh_divides_arg1_1, (`LH_C(_lh_divides_arg2_1, (`LH_N))))), (lazy (`LH_C((`LH_P2(((divides_1 x_1) y_1), (zerop_1 ((remainder_1 y_1) x_1)))), (`LH_N)))))))
  and even__1 = (fun _lh_even__arg1_1 -> 
    (`Fun((`EVEN), (`LH_C(_lh_even__arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_2_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_4_2 = (even__1 x_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4_2 = (((if__1 (zerop_1 x_1)) boyerTrue_1) (odd__1 (sub1_1 x_1))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_8 _lh_rewrite_with_lemmas_helper_LH_C_1_2_4_2 -> 
          (let rec _lh_matchIdent_4_4_1 = ((one_way_unify_d0_d0_d5_d0 _lh_rewrite_with_lemmas_helper_arg1_4_1_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_4_2) in
            (match _lh_matchIdent_4_4_1 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_4_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_4_3 then
                  (rewrite_d0_d0_d5_d0 ((apply_subst_d1_d0_d5_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d5_d0 _lh_rewrite_with_lemmas_helper_arg1_4_1_8) _lh_rewrite_with_lemmas_helper_LH_C_1_2_4_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_4_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_9 -> 
        _lh_rewrite_with_lemmas_helper_arg1_4_1_9) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_2_0 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_2_1 _lh_rewrite_with_lemmas_helper_arg1_4_2_0) _lh_rewrite_with_lemmas_helper_LH_C_1_2_4_3))))))))
  and exp__1 = (fun _lh_exp__arg1_1 _lh_exp__arg2_1 -> 
    (`Fun((`EXP), (`LH_C(_lh_exp__arg1_1, (`LH_C(_lh_exp__arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_2 = ((exp__1 x_1) ((plus_1 y_1) z_1)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_2 = ((times_1 ((exp__1 x_1) y_1)) ((exp__1 x_1) z_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_1 _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_2 -> 
          (let rec _lh_matchIdent_4_0_6 = ((one_way_unify_d0_d0_d1_d5 _lh_rewrite_with_lemmas_helper_arg1_3_2_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_2) in
            (match _lh_matchIdent_4_0_6 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_3) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_3 then
                  (rewrite_d0_d0_d1_d5 ((apply_subst_d1_d0_d1_d5 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_2))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d1_d5 _lh_rewrite_with_lemmas_helper_arg1_3_2_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_2))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_4 = ((exp__1 x_1) ((times_1 y_1) z_1)) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_4 = ((exp__1 ((exp__1 x_1) y_1)) z_1) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_2 _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_4 -> 
            (let rec _lh_matchIdent_4_0_7 = ((one_way_unify_d0_d0_d1_d6 _lh_rewrite_with_lemmas_helper_arg1_3_2_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_4) in
              (match _lh_matchIdent_4_0_7 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_5) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_5 then
                    (rewrite_d0_d0_d1_d6 ((apply_subst_d1_d0_d1_d6 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_4))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d1_d6 _lh_rewrite_with_lemmas_helper_arg1_3_2_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_4))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_5 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_3 -> 
          _lh_rewrite_with_lemmas_helper_arg1_3_2_3) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_4 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_7 _lh_rewrite_with_lemmas_helper_arg1_3_2_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_5)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_5 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_6 _lh_rewrite_with_lemmas_helper_arg1_3_2_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_3))))))))
  and y_1 = (`Var((`Y)))
  and consp_1 = (fun _lh_consp_arg1_1 -> 
    (`Fun((`CONSP), (`LH_C(_lh_consp_arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_8 = (consp_1 ((cons_1 x_1) y_1)) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_8 = boyerTrue_1 in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_2 _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_8 -> 
          (let rec _lh_matchIdent_4_2_9 = ((one_way_unify_d0_d0_d3_d8 _lh_rewrite_with_lemmas_helper_arg1_3_8_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_8) in
            (match _lh_matchIdent_4_2_9 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_1_9 then
                  (rewrite_d0_d0_d3_d8 ((apply_subst_d1_d0_d3_d8 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_1_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d3_d8 _lh_rewrite_with_lemmas_helper_arg1_3_8_2) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_3 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_8_3) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_8_4 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_9 _lh_rewrite_with_lemmas_helper_arg1_3_8_4) _lh_rewrite_with_lemmas_helper_LH_C_1_2_1_9))))))))
  and four_1 = (`Fun((`FOUR), (`LH_N), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_6 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_2 = four_1 in
    (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_2 = (add1_1 (add1_1 two_1)) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_4 _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_2 -> 
        (let rec _lh_matchIdent_4_3_6 = ((one_way_unify_d0_d0_d4_d5 _lh_rewrite_with_lemmas_helper_arg1_4_0_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_2) in
          (match _lh_matchIdent_4_3_6 with
            | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_3) -> 
              (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_3 then
                (rewrite_d0_d0_d4_d5 ((apply_subst_d1_d0_d4_d5 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_2))
              else
                ((rewrite_with_lemmas_helper_d0_d0_d4_d5 _lh_rewrite_with_lemmas_helper_arg1_4_0_4) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_2))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_3 = (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_5 -> 
      _lh_rewrite_with_lemmas_helper_arg1_4_0_5) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_6 -> 
        ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_6 _lh_rewrite_with_lemmas_helper_arg1_4_0_6) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_3)))))))
  and implies_1 = (fun _lh_implies_arg1_1 _lh_implies_arg2_1 -> 
    (`Fun((`IMPLIES), (`LH_C(_lh_implies_arg1_1, (`LH_C(_lh_implies_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_4 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_8 = ((implies_1 x_1) y_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_8 = (((if__1 x_1) (((if__1 y_1) boyerTrue_1) boyerFalse_1)) boyerTrue_1) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_5 _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_8 -> 
          (let rec _lh_matchIdent_3_9_4 = ((one_way_unify_d0_d0_d3 _lh_rewrite_with_lemmas_helper_arg1_2_9_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_8) in
            (match _lh_matchIdent_3_9_4 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_9 then
                  (rewrite_d0_d0_d3 ((apply_subst_d1_d0_d3 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d3 _lh_rewrite_with_lemmas_helper_arg1_2_9_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_9 = (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_6 -> 
        _lh_rewrite_with_lemmas_helper_arg1_2_9_6) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_7 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_4 _lh_rewrite_with_lemmas_helper_arg1_2_9_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_9))))))))
  and d_1 = (`Var((`D)))
  and lessp_1 = (fun _lh_lessp_arg1_1 _lh_lessp_arg2_1 -> 
    (`Fun((`LESSP), (`LH_C(_lh_lessp_arg1_1, (`LH_C(_lh_lessp_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_6 = ((lessp_1 ((remainder_1 x_1) y_1)) y_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_6 = (not__1 (zerop_1 y_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_6 _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_6 -> 
          (let rec _lh_matchIdent_4_0_8 = ((one_way_unify_d0_d0_d1_d7 _lh_rewrite_with_lemmas_helper_arg1_3_2_6) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_6) in
            (match _lh_matchIdent_4_0_8 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_7) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_7 then
                  (rewrite_d0_d0_d1_d7 ((apply_subst_d1_d0_d1_d7 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_6))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d1_d7 _lh_rewrite_with_lemmas_helper_arg1_3_2_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_6))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_8_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_8 = ((lessp_1 ((quotient_1 x_1) y_1)) x_1) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_8 = ((and__1 (not__1 (zerop_1 x_1))) ((lessp_1 one_1) y_1)) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_7 _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_8 -> 
            (let rec _lh_matchIdent_4_0_9 = ((one_way_unify_d0_d0_d1_d8 _lh_rewrite_with_lemmas_helper_arg1_3_2_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_8) in
              (match _lh_matchIdent_4_0_9 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_9) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_7_9 then
                    (rewrite_d0_d0_d1_d8 ((apply_subst_d1_d0_d1_d8 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_7_8))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d1_d8 _lh_rewrite_with_lemmas_helper_arg1_3_2_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_8))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_0 = ((lessp_1 ((plus_1 x_1) y_1)) ((plus_1 x_1) z_1)) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_0 = ((lessp_1 y_1) z_1) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_8 _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_0 -> 
              (let rec _lh_matchIdent_4_1_0 = ((one_way_unify_d0_d0_d1_d9 _lh_rewrite_with_lemmas_helper_arg1_3_2_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_0) in
                (match _lh_matchIdent_4_1_0 with
                  | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_1) -> 
                    (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_1 then
                      (rewrite_d0_d0_d1_d9 ((apply_subst_d1_d0_d1_d9 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_0))
                    else
                      ((rewrite_with_lemmas_helper_d0_d0_d1_d9 _lh_rewrite_with_lemmas_helper_arg1_3_2_8) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_0))
                  | _ -> 
                    (failwith "error")))))) in
          (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_1 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_2 = ((lessp_1 ((times_1 x_1) z_1)) ((times_1 y_1) z_1)) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_2 = ((and__1 (not__1 (zerop_1 z_1))) ((lessp_1 x_1) y_1)) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_3_2_9 _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_2 -> 
                (let rec _lh_matchIdent_4_1_1 = ((one_way_unify_d0_d0_d2_d0 _lh_rewrite_with_lemmas_helper_arg1_3_2_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_2) in
                  (match _lh_matchIdent_4_1_1 with
                    | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_3) -> 
                      (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_3 then
                        (rewrite_d0_d0_d2_d0 ((apply_subst_d1_d0_d2_d0 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_2))
                      else
                        ((rewrite_with_lemmas_helper_d0_d0_d2_d0 _lh_rewrite_with_lemmas_helper_arg1_3_2_9) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_2))
                    | _ -> 
                      (failwith "error")))))) in
            (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_2 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_4 = ((lessp_1 y_1) ((plus_1 x_1) y_1)) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_4 = (not__1 (zerop_1 x_1)) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_0 _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_4 -> 
                  (let rec _lh_matchIdent_4_1_2 = ((one_way_unify_d0_d0_d2_d1 _lh_rewrite_with_lemmas_helper_arg1_3_3_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_4) in
                    (match _lh_matchIdent_4_1_2 with
                      | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_5) -> 
                        (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_8_5 then
                          (rewrite_d0_d0_d2_d1 ((apply_subst_d1_d0_d2_d1 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_8_4))
                        else
                          ((rewrite_with_lemmas_helper_d0_d0_d2_d1 _lh_rewrite_with_lemmas_helper_arg1_3_3_0) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_4))
                      | _ -> 
                        (failwith "error")))))) in
              (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_5 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_1 -> 
                _lh_rewrite_with_lemmas_helper_arg1_3_3_1) in
                (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_2 -> 
                  ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_2 _lh_rewrite_with_lemmas_helper_arg1_3_3_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_5)))) in
              (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_3 -> 
                ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_1 _lh_rewrite_with_lemmas_helper_arg1_3_3_3) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_3)))) in
            (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_4 -> 
              ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_0 _lh_rewrite_with_lemmas_helper_arg1_3_3_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_8_1)))) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_5 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_9 _lh_rewrite_with_lemmas_helper_arg1_3_3_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_9)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_3_6 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_8_8 _lh_rewrite_with_lemmas_helper_arg1_3_3_6) _lh_rewrite_with_lemmas_helper_LH_C_1_1_7_7))))))))
  and boyerTrue_1 = (`Fun((`TRUE), (`LH_N), (lazy (fun _lh_rewrite_with_lemmas_helper_arg1_2_6_4 -> 
    _lh_rewrite_with_lemmas_helper_arg1_2_6_4))))
  and listp_1 = (fun _lh_listp_arg1_1 -> 
    (`Fun((`LISTP), (`LH_C(_lh_listp_arg1_1, (`LH_N))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_9_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_0 = (listp_1 x_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_0 = ((or__1 (nilp_1 x_1)) (consp_1 x_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_5 _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_0 -> 
          (let rec _lh_matchIdent_4_1_5 = ((one_way_unify_d0_d0_d2_d4 _lh_rewrite_with_lemmas_helper_arg1_3_4_5) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_0) in
            (match _lh_matchIdent_4_1_5 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_1) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_9_1 then
                  (rewrite_d0_d0_d2_d4 ((apply_subst_d1_d0_d2_d4 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_9_0))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d2_d4 _lh_rewrite_with_lemmas_helper_arg1_3_4_5) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_0))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_6 -> 
        _lh_rewrite_with_lemmas_helper_arg1_3_4_6) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_3_4_7 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_9_5 _lh_rewrite_with_lemmas_helper_arg1_3_4_7) _lh_rewrite_with_lemmas_helper_LH_C_1_1_9_1))))))))
  and one_1 = (`Fun((`ONE), (`LH_N), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_0_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_0 = one_1 in
    (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_0 = (add1_1 zero_1) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_7 _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_0 -> 
        (let rec _lh_matchIdent_4_2_0 = ((one_way_unify_d0_d0_d2_d9 _lh_rewrite_with_lemmas_helper_arg1_3_5_7) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_0) in
          (match _lh_matchIdent_4_2_0 with
            | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_1) -> 
              (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_0_1 then
                (rewrite_d0_d0_d2_d9 ((apply_subst_d1_d0_d2_d9 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_0_0))
              else
                ((rewrite_with_lemmas_helper_d0_d0_d2_d9 _lh_rewrite_with_lemmas_helper_arg1_3_5_7) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_0))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_8 -> 
      _lh_rewrite_with_lemmas_helper_arg1_3_5_8) in
      (fun _lh_rewrite_with_lemmas_helper_arg1_3_5_9 -> 
        ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_0_0 _lh_rewrite_with_lemmas_helper_arg1_3_5_9) _lh_rewrite_with_lemmas_helper_LH_C_1_2_0_1)))))))
  and gcd__1 = (fun _lh_gcd__arg1_1 _lh_gcd__arg2_1 -> 
    (`Fun((`GCD), (`LH_C(_lh_gcd__arg1_1, (`LH_C(_lh_gcd__arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_8 = ((gcd__1 x_1) y_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_8 = ((gcd__1 y_1) x_1) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_3 _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_8 -> 
          (let rec _lh_matchIdent_4_3_9 = ((one_way_unify_d0_d0_d4_d8 _lh_rewrite_with_lemmas_helper_arg1_4_1_3) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_8) in
            (match _lh_matchIdent_4_3_9 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_9, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_9) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_9 then
                  (rewrite_d0_d0_d4_d8 ((apply_subst_d1_d0_d4_d8 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_9) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_8))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d4_d8 _lh_rewrite_with_lemmas_helper_arg1_4_1_3) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_8))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_9 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_2_0 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_4_0 = ((gcd__1 ((times_1 x_1) z_1)) ((times_1 y_1) z_1)) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4_0 = ((times_1 z_1) ((gcd__1 x_1) y_1)) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_4 _lh_rewrite_with_lemmas_helper_LH_C_1_2_4_0 -> 
            (let rec _lh_matchIdent_4_4_0 = ((one_way_unify_d0_d0_d4_d9 _lh_rewrite_with_lemmas_helper_arg1_4_1_4) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_4_0) in
              (match _lh_matchIdent_4_4_0 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_4_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4_1) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_4_1 then
                    (rewrite_d0_d0_d4_d9 ((apply_subst_d1_d0_d4_d9 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_4_0))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d4_d9 _lh_rewrite_with_lemmas_helper_arg1_4_1_4) _lh_rewrite_with_lemmas_helper_LH_C_1_2_4_0))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_4_1 = (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_5 -> 
          _lh_rewrite_with_lemmas_helper_arg1_4_1_5) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_6 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_2_0 _lh_rewrite_with_lemmas_helper_arg1_4_1_6) _lh_rewrite_with_lemmas_helper_LH_C_1_2_4_1)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_7 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_9 _lh_rewrite_with_lemmas_helper_arg1_4_1_7) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_9))))))))
  and and__1 = (fun _lh_and__arg1_1 _lh_and__arg2_1 -> 
    (`Fun((`AND), (`LH_C(_lh_and__arg1_1, (`LH_C(_lh_and__arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_7_3 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_6 = ((and__1 x_1) y_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_6 = (((if__1 x_1) (((if__1 y_1) boyerTrue_1) boyerFalse_1)) boyerFalse_1) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_2 _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_6 -> 
          (let rec _lh_matchIdent_3_9_3 = ((one_way_unify_d0_d0_d2 _lh_rewrite_with_lemmas_helper_arg1_2_9_2) _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_6) in
            (match _lh_matchIdent_3_9_3 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_7) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1_4_7 then
                  (rewrite_d0_d0_d2 ((apply_subst_d1_d0_d2 _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_1_4_6))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d2 _lh_rewrite_with_lemmas_helper_arg1_2_9_2) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_6))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_3 -> 
        _lh_rewrite_with_lemmas_helper_arg1_2_9_3) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_2_9_4 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_7_3 _lh_rewrite_with_lemmas_helper_arg1_2_9_4) _lh_rewrite_with_lemmas_helper_LH_C_1_1_4_7))))))))
  and quotient_1 = (fun _lh_quotient_arg1_1 _lh_quotient_arg2_1 -> 
    (`Fun((`QUOTIENT), (`LH_C(_lh_quotient_arg1_1, (`LH_C(_lh_quotient_arg2_1, (`LH_N))))), (lazy (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_7 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_4 = ((quotient_1 ((plus_1 x_1) ((plus_1 x_1) y_1))) two_1) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_4 = ((plus_1 x_1) ((quotient_1 y_1) two_1)) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_8 _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_4 -> 
          (let rec _lh_matchIdent_4_3_7 = ((one_way_unify_d0_d0_d4_d6 _lh_rewrite_with_lemmas_helper_arg1_4_0_8) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_4) in
            (match _lh_matchIdent_4_3_7 with
              | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_5, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_5) -> 
                (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_5 then
                  (rewrite_d0_d0_d4_d6 ((apply_subst_d1_d0_d4_d6 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_5) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_4))
                else
                  ((rewrite_with_lemmas_helper_d0_d0_d4_d6 _lh_rewrite_with_lemmas_helper_arg1_4_0_8) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_4))
              | _ -> 
                (failwith "error")))))) in
      (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_5 = (let rec _lh_rewrite_with_lemmas_helper_LH_C_0_1_1_8 = (let rec _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_6 = ((quotient_1 ((times_1 y_1) x_1)) y_1) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_6 = (((if__1 (zerop_1 y_1)) zero_1) x_1) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_4_0_9 _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_6 -> 
            (let rec _lh_matchIdent_4_3_8 = ((one_way_unify_d0_d0_d4_d7 _lh_rewrite_with_lemmas_helper_arg1_4_0_9) _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_6) in
              (match _lh_matchIdent_4_3_8 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_7, _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_7) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_2_3_7 then
                    (rewrite_d0_d0_d4_d7 ((apply_subst_d1_d0_d4_d7 _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_7) _lh_rewrite_with_lemmas_helper_LH_P2_1_2_3_6))
                  else
                    ((rewrite_with_lemmas_helper_d0_d0_d4_d7 _lh_rewrite_with_lemmas_helper_arg1_4_0_9) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_6))
                | _ -> 
                  (failwith "error")))))) in
        (let rec _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_7 = (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_0 -> 
          _lh_rewrite_with_lemmas_helper_arg1_4_1_0) in
          (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_1 -> 
            ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_8 _lh_rewrite_with_lemmas_helper_arg1_4_1_1) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_7)))) in
        (fun _lh_rewrite_with_lemmas_helper_arg1_4_1_2 -> 
          ((_lh_rewrite_with_lemmas_helper_LH_C_0_1_1_7 _lh_rewrite_with_lemmas_helper_arg1_4_1_2) _lh_rewrite_with_lemmas_helper_LH_C_1_2_3_5))))))))
  and c_1 = (`Var((`C)))
  in (let rec subst0_1 = (let rec _lh_find_LH_C_0_1_0_7 = (let rec _lh_find_LH_P2_0_1_0_7 = (`X) in
    (let rec _lh_find_LH_P2_1_1_0_7 = (f_1_1_0 ((plus_1 ((plus_1 a_1) b_1)) ((plus_1 c_1) zero_1))) in
      (fun _lh_find_arg1_1_2_0 _lh_find_LH_C_1_1_1_2 -> 
        (if (_lh_find_arg1_1_2_0 = _lh_find_LH_P2_0_1_0_7) then
          (let rec _lh_apply_subst_LH_P2_0_1_0_4 = true in
            (let rec _lh_apply_subst_LH_P2_1_1_0_4 = _lh_find_LH_P2_1_1_0_7 in
              (fun _lh_apply_subst_Var_0_1_5_8 -> 
                (if _lh_apply_subst_LH_P2_0_1_0_4 then
                  _lh_apply_subst_LH_P2_1_1_0_4
                else
                  (`Var(_lh_apply_subst_Var_0_1_5_8))))))
        else
          ((find_d0_d0_d1 _lh_find_arg1_1_2_0) _lh_find_LH_C_1_1_1_2))))) in
    (let rec _lh_find_LH_C_1_1_1_3 = (let rec _lh_find_LH_C_0_1_0_8 = (let rec _lh_find_LH_P2_0_1_0_8 = (`Y) in
      (let rec _lh_find_LH_P2_1_1_0_8 = (f_1_1_0 ((times_1 ((times_1 a_1) b_1)) ((plus_1 c_1) d_1))) in
        (fun _lh_find_arg1_1_2_1 _lh_find_LH_C_1_1_1_4 -> 
          (if (_lh_find_arg1_1_2_1 = _lh_find_LH_P2_0_1_0_8) then
            (let rec _lh_apply_subst_LH_P2_0_1_0_5 = true in
              (let rec _lh_apply_subst_LH_P2_1_1_0_5 = _lh_find_LH_P2_1_1_0_8 in
                (fun _lh_apply_subst_Var_0_1_5_9 -> 
                  (if _lh_apply_subst_LH_P2_0_1_0_5 then
                    _lh_apply_subst_LH_P2_1_1_0_5
                  else
                    (`Var(_lh_apply_subst_Var_0_1_5_9))))))
          else
            ((find_d0_d0_d2 _lh_find_arg1_1_2_1) _lh_find_LH_C_1_1_1_4))))) in
      (let rec _lh_find_LH_C_1_1_1_5 = (let rec _lh_find_LH_C_0_1_0_9 = (let rec _lh_find_LH_P2_0_1_0_9 = (`Z) in
        (let rec _lh_find_LH_P2_1_1_0_9 = (f_1_1_0 (reverse__1 ((append_1 ((append_1 a_1) b_1)) nil_1))) in
          (fun _lh_find_arg1_1_2_2 _lh_find_LH_C_1_1_1_6 -> 
            (if (_lh_find_arg1_1_2_2 = _lh_find_LH_P2_0_1_0_9) then
              (let rec _lh_apply_subst_LH_P2_0_1_0_6 = true in
                (let rec _lh_apply_subst_LH_P2_1_1_0_6 = _lh_find_LH_P2_1_1_0_9 in
                  (fun _lh_apply_subst_Var_0_1_6_0 -> 
                    (if _lh_apply_subst_LH_P2_0_1_0_6 then
                      _lh_apply_subst_LH_P2_1_1_0_6
                    else
                      (`Var(_lh_apply_subst_Var_0_1_6_0))))))
            else
              ((find_d0_d0_d3 _lh_find_arg1_1_2_2) _lh_find_LH_C_1_1_1_6))))) in
        (let rec _lh_find_LH_C_1_1_1_7 = (let rec _lh_find_LH_C_0_1_1_0 = (let rec _lh_find_LH_P2_0_1_1_0 = (`U) in
          (let rec _lh_find_LH_P2_1_1_1_0 = ((equal_1 ((plus_1 a_1) b_1)) ((difference_1 x_1) y_1)) in
            (fun _lh_find_arg1_1_2_3 _lh_find_LH_C_1_1_1_8 -> 
              (if (_lh_find_arg1_1_2_3 = _lh_find_LH_P2_0_1_1_0) then
                (let rec _lh_apply_subst_LH_P2_0_1_0_7 = true in
                  (let rec _lh_apply_subst_LH_P2_1_1_0_7 = _lh_find_LH_P2_1_1_1_0 in
                    (fun _lh_apply_subst_Var_0_1_6_1 -> 
                      (if _lh_apply_subst_LH_P2_0_1_0_7 then
                        _lh_apply_subst_LH_P2_1_1_0_7
                      else
                        (`Var(_lh_apply_subst_Var_0_1_6_1))))))
              else
                ((find_d0_d0_d4 _lh_find_arg1_1_2_3) _lh_find_LH_C_1_1_1_8))))) in
          (let rec _lh_find_LH_C_1_1_1_9 = (let rec _lh_find_LH_C_0_1_1_1 = (let rec _lh_find_LH_P2_0_1_1_1 = (`W) in
            (let rec _lh_find_LH_P2_1_1_1_1 = ((lessp_1 ((remainder_1 a_1) b_1)) ((member_1 a_1) (length__1 b_1))) in
              (fun _lh_find_arg1_1_2_4 _lh_find_LH_C_1_1_2_0 -> 
                (if (_lh_find_arg1_1_2_4 = _lh_find_LH_P2_0_1_1_1) then
                  (let rec _lh_apply_subst_LH_P2_0_1_0_8 = true in
                    (let rec _lh_apply_subst_LH_P2_1_1_0_8 = _lh_find_LH_P2_1_1_1_1 in
                      (fun _lh_apply_subst_Var_0_1_6_2 -> 
                        (if _lh_apply_subst_LH_P2_0_1_0_8 then
                          _lh_apply_subst_LH_P2_1_1_0_8
                        else
                          (`Var(_lh_apply_subst_Var_0_1_6_2))))))
                else
                  ((find_d0_d0_d5 _lh_find_arg1_1_2_4) _lh_find_LH_C_1_1_2_0))))) in
            (let rec _lh_find_LH_C_1_1_2_1 = (fun _lh_find_arg1_1_2_5 -> 
              (let rec _lh_apply_subst_LH_P2_0_1_0_9 = false in
                (let rec _lh_apply_subst_LH_P2_1_1_0_9 = (`ERROR) in
                  (fun _lh_apply_subst_Var_0_1_6_3 -> 
                    (if _lh_apply_subst_LH_P2_0_1_0_9 then
                      _lh_apply_subst_LH_P2_1_1_0_9
                    else
                      (`Var(_lh_apply_subst_Var_0_1_6_3))))))) in
              (fun _lh_find_arg1_1_2_6 -> 
                ((_lh_find_LH_C_0_1_1_1 _lh_find_arg1_1_2_6) _lh_find_LH_C_1_1_2_1)))) in
            (fun _lh_find_arg1_1_2_7 -> 
              ((_lh_find_LH_C_0_1_1_0 _lh_find_arg1_1_2_7) _lh_find_LH_C_1_1_1_9)))) in
          (fun _lh_find_arg1_1_2_8 -> 
            ((_lh_find_LH_C_0_1_0_9 _lh_find_arg1_1_2_8) _lh_find_LH_C_1_1_1_7)))) in
        (fun _lh_find_arg1_1_2_9 -> 
          ((_lh_find_LH_C_0_1_0_8 _lh_find_arg1_1_2_9) _lh_find_LH_C_1_1_1_5)))) in
      (fun _lh_find_arg1_1_3_0 -> 
        ((_lh_find_LH_C_0_1_0_7 _lh_find_arg1_1_3_0) _lh_find_LH_C_1_1_1_3)))) in
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
