
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec all__d0 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
        ((all__d0 _lh_all_arg1_1) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec find__d0 _lh_find_arg1_2 _lh_find_arg2_2 =
  (match _lh_find_arg2_2 with
    | `LH_N -> 
      (`LH_P2(false, (`ERROR)))
    | `LH_C(_lh_find_LH_C_0_2, _lh_find_LH_C_1_2) -> 
      (match _lh_find_LH_C_0_2 with
        | `LH_P2(_lh_find_LH_P2_0_2, _lh_find_LH_P2_1_2) -> 
          (if (_lh_find_arg1_2 = _lh_find_LH_P2_0_2) then
            (`LH_P2(true, _lh_find_LH_P2_1_2))
          else
            ((find__d0 _lh_find_arg1_2) _lh_find_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find__d1 _lh_find_arg1_1 _lh_find_arg2_1 =
  (match _lh_find_arg2_1 with
    | `LH_N -> 
      (`LH_P2(false, (`ERROR)))
    | `LH_C(_lh_find_LH_C_0_1, _lh_find_LH_C_1_1) -> 
      (match _lh_find_LH_C_0_1 with
        | `LH_P2(_lh_find_LH_P2_0_1, _lh_find_LH_P2_1_1) -> 
          (if (_lh_find_arg1_1 = _lh_find_LH_P2_0_1) then
            (`LH_P2(true, _lh_find_LH_P2_1_1))
          else
            ((find__d1 _lh_find_arg1_1) _lh_find_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec find__d2 _lh_find_arg1_3 _lh_find_arg2_3 =
  (match _lh_find_arg2_3 with
    | `LH_N -> 
      (`LH_P2(false, (`ERROR)))
    | `LH_C(_lh_find_LH_C_0_3, _lh_find_LH_C_1_3) -> 
      (match _lh_find_LH_C_0_3 with
        | `LH_P2(_lh_find_LH_P2_0_3, _lh_find_LH_P2_1_3) -> 
          (if (_lh_find_arg1_3 = _lh_find_LH_P2_0_3) then
            (`LH_P2(true, _lh_find_LH_P2_1_3))
          else
            ((find__d2 _lh_find_arg1_3) _lh_find_LH_C_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map__d0 f_1_5 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_5 h_2_2), ((map__d0 f_1_5) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_4 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_4 h_2_1), ((map__d1 f_1_4) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_3 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_3 h_2_0), ((map__d2 f_1_3) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec replicate__d0 _lh_replicate_arg1_1 _lh_replicate_arg2_1 =
  (if (_lh_replicate_arg1_1 = 0) then
    (`LH_N)
  else
    (`LH_C(_lh_replicate_arg2_1, ((replicate__d0 (_lh_replicate_arg1_1 - 1)) _lh_replicate_arg2_1))));;
let rec apply_subst__d0 _lh_apply_subst_arg1_2 _lh_apply_subst_arg2_2 =
  (match _lh_apply_subst_arg2_2 with
    | `Var(_lh_apply_subst_Var_0_2) -> 
      (let rec _lh_matchIdent_1_3 = ((find__d0 _lh_apply_subst_Var_0_2) _lh_apply_subst_arg1_2) in
        (match _lh_matchIdent_1_3 with
          | `LH_P2(_lh_apply_subst_LH_P2_0_2, _lh_apply_subst_LH_P2_1_2) -> 
            (if _lh_apply_subst_LH_P2_0_2 then
              _lh_apply_subst_LH_P2_1_2
            else
              (`Var(_lh_apply_subst_Var_0_2)))
          | _ -> 
            (failwith "error")))
    | `Fun(_lh_apply_subst_Fun_0_2, _lh_apply_subst_Fun_1_2, _lh_apply_subst_Fun_2_2) -> 
      (`Fun(_lh_apply_subst_Fun_0_2, ((map__d0 (apply_subst__d0 _lh_apply_subst_arg1_2)) _lh_apply_subst_Fun_1_2), _lh_apply_subst_Fun_2_2))
    | _ -> 
      (failwith "error"))
and apply_subst__d1 _lh_apply_subst_arg1_1 _lh_apply_subst_arg2_1 =
  (match _lh_apply_subst_arg2_1 with
    | `Var(_lh_apply_subst_Var_0_1) -> 
      (let rec _lh_matchIdent_1_1 = ((find__d1 _lh_apply_subst_Var_0_1) _lh_apply_subst_arg1_1) in
        (match _lh_matchIdent_1_1 with
          | `LH_P2(_lh_apply_subst_LH_P2_0_1, _lh_apply_subst_LH_P2_1_1) -> 
            (if _lh_apply_subst_LH_P2_0_1 then
              _lh_apply_subst_LH_P2_1_1
            else
              (`Var(_lh_apply_subst_Var_0_1)))
          | _ -> 
            (failwith "error")))
    | `Fun(_lh_apply_subst_Fun_0_1, _lh_apply_subst_Fun_1_1, _lh_apply_subst_Fun_2_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_1, ((map__d2 (apply_subst__d1 _lh_apply_subst_arg1_1)) _lh_apply_subst_Fun_1_1), _lh_apply_subst_Fun_2_1))
    | _ -> 
      (failwith "error"))
and falsep__d0 _lh_falsep_arg1_1 _lh_falsep_arg2_1 =
  (match _lh_falsep_arg1_1 with
    | `Fun(_lh_falsep_Fun_0_1, _lh_falsep_Fun_1_1, _lh_falsep_Fun_2_1) -> 
      (match _lh_falsep_Fun_0_1 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList__d0 _lh_falsep_arg1_1) _lh_falsep_arg2_1))
    | _ -> 
      ((termInList__d0 _lh_falsep_arg1_1) _lh_falsep_arg2_1))
and falsep__d1 _lh_falsep_arg1_2 _lh_falsep_arg2_2 =
  (match _lh_falsep_arg1_2 with
    | `Fun(_lh_falsep_Fun_0_2, _lh_falsep_Fun_1_2, _lh_falsep_Fun_2_2) -> 
      (match _lh_falsep_Fun_0_2 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList__d1 _lh_falsep_arg1_2) _lh_falsep_arg2_2))
    | _ -> 
      ((termInList__d1 _lh_falsep_arg1_2) _lh_falsep_arg2_2))
and one_way_unify1_lst__d0 _lh_one_way_unify1_lst_arg1_1 _lh_one_way_unify1_lst_arg2_1 _lh_one_way_unify1_lst_arg3_1 =
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
          (let rec _lh_matchIdent_7 = (((one_way_unify1__d0 _lh_one_way_unify1_lst_LH_C_0_2) _lh_one_way_unify1_lst_LH_C_0_3) _lh_one_way_unify1_lst_arg3_1) in
            (match _lh_matchIdent_7 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_2, _lh_one_way_unify1_lst_LH_P2_1_2) -> 
                (let rec _lh_matchIdent_8 = (((one_way_unify1_lst__d0 _lh_one_way_unify1_lst_LH_C_1_2) _lh_one_way_unify1_lst_LH_C_1_3) _lh_one_way_unify1_lst_LH_P2_1_2) in
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
and one_way_unify1__d0 _lh_one_way_unify1_arg1_1 _lh_one_way_unify1_arg2_1 _lh_one_way_unify1_arg3_1 =
  (match _lh_one_way_unify1_arg2_1 with
    | `Var(_lh_one_way_unify1_Var_0_1) -> 
      (let rec _lh_matchIdent_1_4 = ((find__d2 _lh_one_way_unify1_Var_0_1) _lh_one_way_unify1_arg3_1) in
        (match _lh_matchIdent_1_4 with
          | `LH_P2(_lh_one_way_unify1_LH_P2_0_1, _lh_one_way_unify1_LH_P2_1_1) -> 
            (if _lh_one_way_unify1_LH_P2_0_1 then
              (`LH_P2(((termEq__d0 _lh_one_way_unify1_arg1_1) _lh_one_way_unify1_LH_P2_1_1), _lh_one_way_unify1_arg3_1))
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
                (((one_way_unify1_lst__d0 _lh_one_way_unify1_Fun_1_2) _lh_one_way_unify1_Fun_1_3) _lh_one_way_unify1_arg3_1)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and one_way_unify__d0 _lh_one_way_unify_arg1_1 _lh_one_way_unify_arg2_1 =
  (((one_way_unify1__d0 _lh_one_way_unify_arg1_1) _lh_one_way_unify_arg2_1) (`LH_N))
and rewrite_with_lemmas_helper__d0 _lh_rewrite_with_lemmas_helper_arg1_1 _lh_rewrite_with_lemmas_helper_arg2_1 =
  (let rec _lh_matchIdent_9 = _lh_rewrite_with_lemmas_helper_arg2_1 in
    (match _lh_matchIdent_9 with
      | `LH_N -> 
        _lh_rewrite_with_lemmas_helper_arg1_1
      | `LH_C(_lh_rewrite_with_lemmas_helper_LH_C_0_1, _lh_rewrite_with_lemmas_helper_LH_C_1_1) -> 
        (match _lh_rewrite_with_lemmas_helper_LH_C_0_1 with
          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_2, _lh_rewrite_with_lemmas_helper_LH_P2_1_2) -> 
            (let rec _lh_matchIdent_1_0 = ((one_way_unify__d0 _lh_rewrite_with_lemmas_helper_arg1_1) _lh_rewrite_with_lemmas_helper_LH_P2_0_2) in
              (match _lh_matchIdent_1_0 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_3, _lh_rewrite_with_lemmas_helper_LH_P2_1_3) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_3 then
                    (rewrite__d0 ((apply_subst__d1 _lh_rewrite_with_lemmas_helper_LH_P2_1_3) _lh_rewrite_with_lemmas_helper_LH_P2_1_2))
                  else
                    ((rewrite_with_lemmas_helper__d0 _lh_rewrite_with_lemmas_helper_arg1_1) _lh_rewrite_with_lemmas_helper_LH_C_1_1))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and rewrite_with_lemmas__d0 _lh_rewrite_with_lemmas_arg1_1 _lh_rewrite_with_lemmas_arg2_1 =
  ((rewrite_with_lemmas_helper__d0 _lh_rewrite_with_lemmas_arg1_1) (Lazy.force _lh_rewrite_with_lemmas_arg2_1))
and rewrite__d0 _lh_rewrite_arg1_1 =
  (match _lh_rewrite_arg1_1 with
    | `Var(_lh_rewrite_Var_0_1) -> 
      (`Var(_lh_rewrite_Var_0_1))
    | `Fun(_lh_rewrite_Fun_0_1, _lh_rewrite_Fun_1_1, _lh_rewrite_Fun_2_1) -> 
      ((rewrite_with_lemmas__d0 (`Fun(_lh_rewrite_Fun_0_1, ((map__d1 rewrite__d0) _lh_rewrite_Fun_1_1), _lh_rewrite_Fun_2_1))) _lh_rewrite_Fun_2_1)
    | _ -> 
      (failwith "error"))
and tautologyp__d0 _lh_tautologyp_arg1_1 _lh_tautologyp_arg2_1 _lh_tautologyp_arg3_1 =
  (if ((truep__d0 _lh_tautologyp_arg1_1) _lh_tautologyp_arg2_1) then
    true
  else
    (if ((falsep__d0 _lh_tautologyp_arg1_1) _lh_tautologyp_arg3_1) then
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
                                (if ((truep__d1 _lh_tautologyp_LH_C_0_3) _lh_tautologyp_arg2_1) then
                                  (((tautologyp__d0 _lh_tautologyp_LH_C_0_4) _lh_tautologyp_arg2_1) _lh_tautologyp_arg3_1)
                                else
                                  (if ((falsep__d1 _lh_tautologyp_LH_C_0_3) _lh_tautologyp_arg3_1) then
                                    (((tautologyp__d0 _lh_tautologyp_LH_C_0_5) _lh_tautologyp_arg2_1) _lh_tautologyp_arg3_1)
                                  else
                                    ((((tautologyp__d0 _lh_tautologyp_LH_C_0_4) (`LH_C(_lh_tautologyp_LH_C_0_3, _lh_tautologyp_arg2_1))) _lh_tautologyp_arg3_1) && (((tautologyp__d0 _lh_tautologyp_LH_C_0_5) _lh_tautologyp_arg2_1) (`LH_C(_lh_tautologyp_LH_C_0_3, _lh_tautologyp_arg3_1))))))
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
and tautp__d0 _lh_tautp_arg1_1 =
  (((tautologyp__d0 (rewrite__d0 _lh_tautp_arg1_1)) (`LH_N)) (`LH_N))
and termEq__d0 _lh_termEq_arg1_5 _lh_termEq_arg2_5 =
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
          ((_lh_termEq_Fun_0_1_0 = _lh_termEq_Fun_0_1_1) && ((termLsEq__d0 _lh_termEq_Fun_1_1_0) _lh_termEq_Fun_1_1_1))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq__d1 _lh_termEq_arg1_3 _lh_termEq_arg2_3 =
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
          ((_lh_termEq_Fun_0_6 = _lh_termEq_Fun_0_7) && ((termLsEq__d1 _lh_termEq_Fun_1_6) _lh_termEq_Fun_1_7))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq__d2 _lh_termEq_arg1_1 _lh_termEq_arg2_1 =
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
          ((_lh_termEq_Fun_0_2 = _lh_termEq_Fun_0_3) && ((termLsEq__d2 _lh_termEq_Fun_1_2) _lh_termEq_Fun_1_3))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq__d3 _lh_termEq_arg1_2 _lh_termEq_arg2_2 =
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
          ((_lh_termEq_Fun_0_4 = _lh_termEq_Fun_0_5) && ((termLsEq__d3 _lh_termEq_Fun_1_4) _lh_termEq_Fun_1_5))
        | _ -> 
          false)
    | _ -> 
      false)
and termEq__d4 _lh_termEq_arg1_4 _lh_termEq_arg2_4 =
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
          ((_lh_termEq_Fun_0_8 = _lh_termEq_Fun_0_9) && ((termLsEq__d4 _lh_termEq_Fun_1_8) _lh_termEq_Fun_1_9))
        | _ -> 
          false)
    | _ -> 
      false)
and termInList__d0 _lh_termInList_arg1_4 _lh_termInList_arg2_4 =
  (match _lh_termInList_arg2_4 with
    | `LH_C(_lh_termInList_LH_C_0_4, _lh_termInList_LH_C_1_4) -> 
      (if ((termEq__d1 _lh_termInList_arg1_4) _lh_termInList_LH_C_0_4) then
        true
      else
        ((termInList__d0 _lh_termInList_arg1_4) _lh_termInList_LH_C_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList__d1 _lh_termInList_arg1_3 _lh_termInList_arg2_3 =
  (match _lh_termInList_arg2_3 with
    | `LH_C(_lh_termInList_LH_C_0_3, _lh_termInList_LH_C_1_3) -> 
      (if ((termEq__d2 _lh_termInList_arg1_3) _lh_termInList_LH_C_0_3) then
        true
      else
        ((termInList__d1 _lh_termInList_arg1_3) _lh_termInList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList__d2 _lh_termInList_arg1_1 _lh_termInList_arg2_1 =
  (match _lh_termInList_arg2_1 with
    | `LH_C(_lh_termInList_LH_C_0_1, _lh_termInList_LH_C_1_1) -> 
      (if ((termEq__d3 _lh_termInList_arg1_1) _lh_termInList_LH_C_0_1) then
        true
      else
        ((termInList__d2 _lh_termInList_arg1_1) _lh_termInList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termInList__d3 _lh_termInList_arg1_2 _lh_termInList_arg2_2 =
  (match _lh_termInList_arg2_2 with
    | `LH_C(_lh_termInList_LH_C_0_2, _lh_termInList_LH_C_1_2) -> 
      (if ((termEq__d4 _lh_termInList_arg1_2) _lh_termInList_LH_C_0_2) then
        true
      else
        ((termInList__d3 _lh_termInList_arg1_2) _lh_termInList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"))
and termLsEq__d0 _lh_termLsEq_arg1_1 _lh_termLsEq_arg2_1 =
  (match _lh_termLsEq_arg1_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2, _lh_termLsEq_LH_C_1_2) -> 
      (match _lh_termLsEq_arg2_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_3, _lh_termLsEq_LH_C_1_3) -> 
          (if ((termEq__d0 _lh_termLsEq_LH_C_0_2) _lh_termLsEq_LH_C_0_3) then
            ((termLsEq__d0 _lh_termLsEq_LH_C_1_2) _lh_termLsEq_LH_C_1_3)
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
and termLsEq__d1 _lh_termLsEq_arg1_2 _lh_termLsEq_arg2_2 =
  (match _lh_termLsEq_arg1_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_4, _lh_termLsEq_LH_C_1_4) -> 
      (match _lh_termLsEq_arg2_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_5, _lh_termLsEq_LH_C_1_5) -> 
          (if ((termEq__d1 _lh_termLsEq_LH_C_0_4) _lh_termLsEq_LH_C_0_5) then
            ((termLsEq__d1 _lh_termLsEq_LH_C_1_4) _lh_termLsEq_LH_C_1_5)
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
and termLsEq__d2 _lh_termLsEq_arg1_4 _lh_termLsEq_arg2_4 =
  (match _lh_termLsEq_arg1_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_8, _lh_termLsEq_LH_C_1_8) -> 
      (match _lh_termLsEq_arg2_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_9, _lh_termLsEq_LH_C_1_9) -> 
          (if ((termEq__d2 _lh_termLsEq_LH_C_0_8) _lh_termLsEq_LH_C_0_9) then
            ((termLsEq__d2 _lh_termLsEq_LH_C_1_8) _lh_termLsEq_LH_C_1_9)
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
and termLsEq__d3 _lh_termLsEq_arg1_3 _lh_termLsEq_arg2_3 =
  (match _lh_termLsEq_arg1_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_6, _lh_termLsEq_LH_C_1_6) -> 
      (match _lh_termLsEq_arg2_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_7, _lh_termLsEq_LH_C_1_7) -> 
          (if ((termEq__d3 _lh_termLsEq_LH_C_0_6) _lh_termLsEq_LH_C_0_7) then
            ((termLsEq__d3 _lh_termLsEq_LH_C_1_6) _lh_termLsEq_LH_C_1_7)
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
and termLsEq__d4 _lh_termLsEq_arg1_5 _lh_termLsEq_arg2_5 =
  (match _lh_termLsEq_arg1_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_0, _lh_termLsEq_LH_C_1_1_0) -> 
      (match _lh_termLsEq_arg2_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_1, _lh_termLsEq_LH_C_1_1_1) -> 
          (if ((termEq__d4 _lh_termLsEq_LH_C_0_1_0) _lh_termLsEq_LH_C_0_1_1) then
            ((termLsEq__d4 _lh_termLsEq_LH_C_1_1_0) _lh_termLsEq_LH_C_1_1_1)
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
and test0__d0 _lh_test0_arg1_1 =
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
      (tautp__d0 ((apply_subst__d0 subst0_1) theorem_1))))
and testBoyer_nofib__d0 _lh_testBoyer_nofib_arg1_1 =
  ((all__d0 test0__d0) ((replicate__d0 _lh_testBoyer_nofib_arg1_1) (`Var((`X)))))
and truep__d0 _lh_truep_arg1_1 _lh_truep_arg2_1 =
  (match _lh_truep_arg1_1 with
    | `Fun(_lh_truep_Fun_0_1, _lh_truep_Fun_1_1, _lh_truep_Fun_2_1) -> 
      (match _lh_truep_Fun_0_1 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList__d2 _lh_truep_arg1_1) _lh_truep_arg2_1))
    | _ -> 
      ((termInList__d2 _lh_truep_arg1_1) _lh_truep_arg2_1))
and truep__d1 _lh_truep_arg1_2 _lh_truep_arg2_2 =
  (match _lh_truep_arg1_2 with
    | `Fun(_lh_truep_Fun_0_2, _lh_truep_Fun_1_2, _lh_truep_Fun_2_2) -> 
      (match _lh_truep_Fun_0_2 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList__d3 _lh_truep_arg1_2) _lh_truep_arg2_2))
    | _ -> 
      ((termInList__d3 _lh_truep_arg1_2) _lh_truep_arg2_2));;
end;;

