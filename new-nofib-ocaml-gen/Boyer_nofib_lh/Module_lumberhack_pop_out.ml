

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec all_lh _lh_all_arg1_0 _lh_all_arg2_0 =
  (_lh_all_arg2_0 _lh_all_arg1_0);;
let rec replicate_lh _lh_replicate_arg1_0 _lh_replicate_arg2_0 _lh_popOutId_0_0 =
  (if (_lh_replicate_arg1_0 = 0) then
    true
  else
    (let rec _lh_all_LH_C_1_0 = ((replicate_lh (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec _lh_all_LH_C_0_0 = _lh_replicate_arg2_0 in
        (if (_lh_popOutId_0_0 _lh_all_LH_C_0_0) then
          ((all_lh _lh_popOutId_0_0) _lh_all_LH_C_1_0)
        else
          false))));;
let rec find_lh _lh_find_arg1_2_0 _lh_find_arg2_0 =
  (_lh_find_arg2_0 _lh_find_arg1_2_0);;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec apply_subst_lh _lh_apply_subst_arg1_0 _lh_apply_subst_arg2_0 =
  (match _lh_apply_subst_arg2_0 with
    | `Var(_lh_apply_subst_Var_0_0) -> 
      (let rec _lh_matchIdent_2 = ((find_lh _lh_apply_subst_Var_0_0) _lh_apply_subst_arg1_0) in
        (match _lh_matchIdent_2 with
          | `LH_P2(_lh_apply_subst_LH_P2_0_0, _lh_apply_subst_LH_P2_1_0) -> 
            (if _lh_apply_subst_LH_P2_0_0 then
              _lh_apply_subst_LH_P2_1_0
            else
              (`Var(_lh_apply_subst_Var_0_0)))
          | _ -> 
            (failwith "error")))
    | `Fun(_lh_apply_subst_Fun_0_0, _lh_apply_subst_Fun_1_0, _lh_apply_subst_Fun_2_0) -> 
      (`Fun(_lh_apply_subst_Fun_0_0, ((map_lh (apply_subst_lh _lh_apply_subst_arg1_0)) _lh_apply_subst_Fun_1_0), _lh_apply_subst_Fun_2_0))
    | _ -> 
      (failwith "error"));;
let rec termEq_lh _lh_termEq_arg1_0 _lh_termEq_arg2_0 =
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
          ((_lh_termEq_Fun_0_0 = _lh_termEq_Fun_0_1) && ((termLsEq_lh _lh_termEq_Fun_1_0) _lh_termEq_Fun_1_1))
        | _ -> 
          false)
    | _ -> 
      false)
and
termLsEq_lh _lh_termLsEq_arg1_0 _lh_termLsEq_arg2_0 =
  (match _lh_termLsEq_arg1_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_0, _lh_termLsEq_LH_C_1_0) -> 
      (match _lh_termLsEq_arg2_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_1, _lh_termLsEq_LH_C_1_1) -> 
          (if ((termEq_lh _lh_termLsEq_LH_C_0_0) _lh_termLsEq_LH_C_0_1) then
            ((termLsEq_lh _lh_termLsEq_LH_C_1_0) _lh_termLsEq_LH_C_1_1)
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
      (failwith "error"));;
let rec termInList_lh _lh_termInList_arg1_2 _lh_termInList_arg2_0 =
  (_lh_termInList_arg2_0 _lh_termInList_arg1_2);;
let rec truep_lh _lh_truep_arg1_0 _lh_truep_arg2_0 =
  (match _lh_truep_arg1_0 with
    | `Fun(_lh_truep_Fun_0_0, _lh_truep_Fun_1_0, _lh_truep_Fun_2_0) -> 
      (match _lh_truep_Fun_0_0 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList_lh _lh_truep_arg1_0) _lh_truep_arg2_0))
    | _ -> 
      ((termInList_lh _lh_truep_arg1_0) _lh_truep_arg2_0));;
let rec falsep_lh _lh_falsep_arg1_0 _lh_falsep_arg2_0 =
  (match _lh_falsep_arg1_0 with
    | `Fun(_lh_falsep_Fun_0_0, _lh_falsep_Fun_1_0, _lh_falsep_Fun_2_0) -> 
      (match _lh_falsep_Fun_0_0 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList_lh _lh_falsep_arg1_0) _lh_falsep_arg2_0))
    | _ -> 
      ((termInList_lh _lh_falsep_arg1_0) _lh_falsep_arg2_0));;
let rec tautologyp_lh _lh_tautologyp_arg1_0 _lh_tautologyp_arg2_0 _lh_tautologyp_arg3_0 =
  (if ((truep_lh _lh_tautologyp_arg1_0) _lh_tautologyp_arg2_0) then
    true
  else
    (if ((falsep_lh _lh_tautologyp_arg1_0) _lh_tautologyp_arg3_0) then
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
                                (if ((truep_lh _lh_tautologyp_LH_C_0_0) _lh_tautologyp_arg2_0) then
                                  (((tautologyp_lh _lh_tautologyp_LH_C_0_1) _lh_tautologyp_arg2_0) _lh_tautologyp_arg3_0)
                                else
                                  (if ((falsep_lh _lh_tautologyp_LH_C_0_0) _lh_tautologyp_arg3_0) then
                                    (((tautologyp_lh _lh_tautologyp_LH_C_0_2) _lh_tautologyp_arg2_0) _lh_tautologyp_arg3_0)
                                  else
                                    ((((tautologyp_lh _lh_tautologyp_LH_C_0_1) (let rec _lh_termInList_LH_C_1_0 = _lh_tautologyp_arg2_0 in
                                      (let rec _lh_termInList_LH_C_0_0 = _lh_tautologyp_LH_C_0_0 in
                                        (fun _lh_termInList_arg1_0 -> 
                                          (if ((termEq_lh _lh_termInList_arg1_0) _lh_termInList_LH_C_0_0) then
                                            true
                                          else
                                            ((termInList_lh _lh_termInList_arg1_0) _lh_termInList_LH_C_1_0)))))) _lh_tautologyp_arg3_0) && (((tautologyp_lh _lh_tautologyp_LH_C_0_2) _lh_tautologyp_arg2_0) (let rec _lh_termInList_LH_C_1_1 = _lh_tautologyp_arg3_0 in
                                      (let rec _lh_termInList_LH_C_0_1 = _lh_tautologyp_LH_C_0_0 in
                                        (fun _lh_termInList_arg1_1 -> 
                                          (if ((termEq_lh _lh_termInList_arg1_1) _lh_termInList_LH_C_0_1) then
                                            true
                                          else
                                            ((termInList_lh _lh_termInList_arg1_1) _lh_termInList_LH_C_1_1)))))))))
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
            false))));;
let rec one_way_unify1_lh _lh_one_way_unify1_arg1_0 _lh_one_way_unify1_arg2_0 _lh_one_way_unify1_arg3_0 =
  (match _lh_one_way_unify1_arg2_0 with
    | `Var(_lh_one_way_unify1_Var_0_0) -> 
      (let rec _lh_matchIdent_6 = ((find_lh _lh_one_way_unify1_Var_0_0) _lh_one_way_unify1_arg3_0) in
        (match _lh_matchIdent_6 with
          | `LH_P2(_lh_one_way_unify1_LH_P2_0_0, _lh_one_way_unify1_LH_P2_1_0) -> 
            (if _lh_one_way_unify1_LH_P2_0_0 then
              (`LH_P2(((termEq_lh _lh_one_way_unify1_arg1_0) _lh_one_way_unify1_LH_P2_1_0), _lh_one_way_unify1_arg3_0))
            else
              (`LH_P2(true, (let rec _lh_find_LH_C_1_1_0 = _lh_one_way_unify1_arg3_0 in
                (let rec _lh_find_LH_C_0_5 = (let rec _lh_find_LH_P2_1_5 = _lh_one_way_unify1_arg1_0 in
                  (let rec _lh_find_LH_P2_0_5 = _lh_one_way_unify1_Var_0_0 in
                    (fun _lh_find_LH_C_1_1_1 _lh_find_arg1_1_5 -> 
                      (if (_lh_find_arg1_1_5 = _lh_find_LH_P2_0_5) then
                        (`LH_P2(true, _lh_find_LH_P2_1_5))
                      else
                        ((find_lh _lh_find_arg1_1_5) _lh_find_LH_C_1_1_1))))) in
                  (fun _lh_find_arg1_1_6 -> 
                    ((_lh_find_LH_C_0_5 _lh_find_LH_C_1_1_0) _lh_find_arg1_1_6)))))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (match _lh_one_way_unify1_arg1_0 with
        | `Fun(_lh_one_way_unify1_Fun_0_0, _lh_one_way_unify1_Fun_1_0, _lh_one_way_unify1_Fun_2_0) -> 
          (match _lh_one_way_unify1_arg2_0 with
            | `Fun(_lh_one_way_unify1_Fun_0_1, _lh_one_way_unify1_Fun_1_1, _lh_one_way_unify1_Fun_2_1) -> 
              (if (_lh_one_way_unify1_Fun_0_0 = _lh_one_way_unify1_Fun_0_1) then
                (((one_way_unify1_lst_lh _lh_one_way_unify1_Fun_1_0) _lh_one_way_unify1_Fun_1_1) _lh_one_way_unify1_arg3_0)
              else
                (`LH_P2(false, (fun _lh_find_arg1_1_7 -> 
                  (`LH_P2(false, (`ERROR)))))))
            | _ -> 
              (`LH_P2(false, (fun _lh_find_arg1_1_8 -> 
                (`LH_P2(false, (`ERROR)))))))
        | _ -> 
          (`LH_P2(false, (fun _lh_find_arg1_1_9 -> 
            (`LH_P2(false, (`ERROR))))))))
and
one_way_unify1_lst_lh _lh_one_way_unify1_lst_arg1_0 _lh_one_way_unify1_lst_arg2_0 _lh_one_way_unify1_lst_arg3_0 =
  (match _lh_one_way_unify1_lst_arg1_0 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_0 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_0))
        | _ -> 
          (`LH_P2(false, (fun _lh_find_arg1_1 -> 
            (`LH_P2(false, (`ERROR)))))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_0, _lh_one_way_unify1_lst_LH_C_1_0) -> 
      (match _lh_one_way_unify1_lst_arg2_0 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1, _lh_one_way_unify1_lst_LH_C_1_1) -> 
          (let rec _lh_matchIdent_0 = (((one_way_unify1_lh _lh_one_way_unify1_lst_LH_C_0_0) _lh_one_way_unify1_lst_LH_C_0_1) _lh_one_way_unify1_lst_arg3_0) in
            (match _lh_matchIdent_0 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_0, _lh_one_way_unify1_lst_LH_P2_1_0) -> 
                (let rec _lh_matchIdent_1 = (((one_way_unify1_lst_lh _lh_one_way_unify1_lst_LH_C_1_0) _lh_one_way_unify1_lst_LH_C_1_1) _lh_one_way_unify1_lst_LH_P2_1_0) in
                  (match _lh_matchIdent_1 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1, _lh_one_way_unify1_lst_LH_P2_1_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_0 && _lh_one_way_unify1_lst_LH_P2_0_1), _lh_one_way_unify1_lst_LH_P2_1_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (fun _lh_find_arg1_2 -> 
            (`LH_P2(false, (`ERROR)))))))
    | _ -> 
      (`LH_P2(false, (fun _lh_find_arg1_3 -> 
        (`LH_P2(false, (`ERROR)))))));;
let rec one_way_unify_lh _lh_one_way_unify_arg1_0 _lh_one_way_unify_arg2_0 =
  (((one_way_unify1_lh _lh_one_way_unify_arg1_0) _lh_one_way_unify_arg2_0) (fun _lh_find_arg1_0 -> 
    (`LH_P2(false, (`ERROR)))));;
let rec rewrite_lh _lh_rewrite_arg1_0 =
  (match _lh_rewrite_arg1_0 with
    | `Var(_lh_rewrite_Var_0_0) -> 
      (`Var(_lh_rewrite_Var_0_0))
    | `Fun(_lh_rewrite_Fun_0_0, _lh_rewrite_Fun_1_0, _lh_rewrite_Fun_2_0) -> 
      ((rewrite_with_lemmas_lh (`Fun(_lh_rewrite_Fun_0_0, ((map_lh rewrite_lh) _lh_rewrite_Fun_1_0), _lh_rewrite_Fun_2_0))) _lh_rewrite_Fun_2_0)
    | _ -> 
      (failwith "error"))
and
rewrite_with_lemmas_helper_lh _lh_rewrite_with_lemmas_helper_arg1_0 _lh_rewrite_with_lemmas_helper_arg2_0 =
  (let rec _lh_matchIdent_3 = _lh_rewrite_with_lemmas_helper_arg2_0 in
    (match _lh_matchIdent_3 with
      | `LH_N -> 
        _lh_rewrite_with_lemmas_helper_arg1_0
      | `LH_C(_lh_rewrite_with_lemmas_helper_LH_C_0_0, _lh_rewrite_with_lemmas_helper_LH_C_1_0) -> 
        (match _lh_rewrite_with_lemmas_helper_LH_C_0_0 with
          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_0, _lh_rewrite_with_lemmas_helper_LH_P2_1_0) -> 
            (let rec _lh_matchIdent_4 = ((one_way_unify_lh _lh_rewrite_with_lemmas_helper_arg1_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_0) in
              (match _lh_matchIdent_4 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1 then
                    (rewrite_lh ((apply_subst_lh _lh_rewrite_with_lemmas_helper_LH_P2_1_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_0))
                  else
                    ((rewrite_with_lemmas_helper_lh _lh_rewrite_with_lemmas_helper_arg1_0) _lh_rewrite_with_lemmas_helper_LH_C_1_0))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and
rewrite_with_lemmas_lh _lh_rewrite_with_lemmas_arg1_0 _lh_rewrite_with_lemmas_arg2_0 =
  ((rewrite_with_lemmas_helper_lh _lh_rewrite_with_lemmas_arg1_0) (Lazy.force _lh_rewrite_with_lemmas_arg2_0));;
let rec tautp_lh _lh_tautp_arg1_0 =
  (((tautologyp_lh (rewrite_lh _lh_tautp_arg1_0)) (fun _lh_termInList_arg1_3 -> 
    false)) (fun _lh_termInList_arg1_4 -> 
    false));;
let rec test0_lh _lh_test0_arg1_0 =
  let rec boyerTrue_0 = (`Fun((`TRUE), (`LH_N), (lazy (`LH_N))))
  and append_0 = (fun _lh_append_arg1_0 _lh_append_arg2_0 -> 
    (`Fun((`APPEND), (`LH_C(_lh_append_arg1_0, (`LH_C(_lh_append_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((append_0 ((append_0 x_0) y_0)) z_0), ((append_0 x_0) ((append_0 y_0) z_0)))), (`LH_N)))))))
  and difference_0 = (fun _lh_difference_arg1_0 _lh_difference_arg2_0 -> 
    (`Fun((`DIFFERENCE), (`LH_C(_lh_difference_arg1_0, (`LH_C(_lh_difference_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((difference_0 x_0) x_0), zero_0)), (`LH_C((`LH_P2(((difference_0 ((plus_0 x_0) y_0)) x_0), y_0)), (`LH_C((`LH_P2(((difference_0 ((plus_0 y_0) x_0)) x_0), y_0)), (`LH_C((`LH_P2(((difference_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)), ((difference_0 y_0) z_0))), (`LH_C((`LH_P2(((difference_0 ((plus_0 y_0) ((plus_0 x_0) z_0))) x_0), ((plus_0 y_0) z_0))), (`LH_C((`LH_P2(((difference_0 (add1_0 ((plus_0 y_0) z_0))) z_0), (add1_0 y_0))), (`LH_C((`LH_P2(((difference_0 (add1_0 (add1_0 x_0))) two_0), x_0)), (`LH_N)))))))))))))))))))
  and listp_0 = (fun _lh_listp_arg1_0 -> 
    (`Fun((`LISTP), (`LH_C(_lh_listp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((listp_0 x_0), ((or__0 (nilp_0 x_0)) (consp_0 x_0)))), (`LH_N)))))))
  and f_1 = (fun _lh_f_arg1_0 -> 
    (`Fun((`F), (`LH_C(_lh_f_arg1_0, (`LH_N))), (lazy (`LH_N)))))
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
  in (let rec subst0_0 = (let rec _lh_find_LH_C_1_0 = (let rec _lh_find_LH_C_1_1 = (let rec _lh_find_LH_C_1_2 = (let rec _lh_find_LH_C_1_3 = (let rec _lh_find_LH_C_1_4 = (fun _lh_find_arg1_4 -> 
    (`LH_P2(false, (`ERROR)))) in
    (let rec _lh_find_LH_C_0_0 = (let rec _lh_find_LH_P2_1_0 = ((lessp_0 ((remainder_0 a_0) b_0)) ((member_0 a_0) (length__0 b_0))) in
      (let rec _lh_find_LH_P2_0_0 = (`W) in
        (fun _lh_find_LH_C_1_5 _lh_find_arg1_5 -> 
          (if (_lh_find_arg1_5 = _lh_find_LH_P2_0_0) then
            (`LH_P2(true, _lh_find_LH_P2_1_0))
          else
            ((find_lh _lh_find_arg1_5) _lh_find_LH_C_1_5))))) in
      (fun _lh_find_arg1_6 -> 
        ((_lh_find_LH_C_0_0 _lh_find_LH_C_1_4) _lh_find_arg1_6)))) in
    (let rec _lh_find_LH_C_0_1 = (let rec _lh_find_LH_P2_1_1 = ((equal_0 ((plus_0 a_0) b_0)) ((difference_0 x_0) y_0)) in
      (let rec _lh_find_LH_P2_0_1 = (`U) in
        (fun _lh_find_LH_C_1_6 _lh_find_arg1_7 -> 
          (if (_lh_find_arg1_7 = _lh_find_LH_P2_0_1) then
            (`LH_P2(true, _lh_find_LH_P2_1_1))
          else
            ((find_lh _lh_find_arg1_7) _lh_find_LH_C_1_6))))) in
      (fun _lh_find_arg1_8 -> 
        ((_lh_find_LH_C_0_1 _lh_find_LH_C_1_3) _lh_find_arg1_8)))) in
    (let rec _lh_find_LH_C_0_2 = (let rec _lh_find_LH_P2_1_2 = (f_1 (reverse__0 ((append_0 ((append_0 a_0) b_0)) nil_0))) in
      (let rec _lh_find_LH_P2_0_2 = (`Z) in
        (fun _lh_find_LH_C_1_7 _lh_find_arg1_9 -> 
          (if (_lh_find_arg1_9 = _lh_find_LH_P2_0_2) then
            (`LH_P2(true, _lh_find_LH_P2_1_2))
          else
            ((find_lh _lh_find_arg1_9) _lh_find_LH_C_1_7))))) in
      (fun _lh_find_arg1_1_0 -> 
        ((_lh_find_LH_C_0_2 _lh_find_LH_C_1_2) _lh_find_arg1_1_0)))) in
    (let rec _lh_find_LH_C_0_3 = (let rec _lh_find_LH_P2_1_3 = (f_1 ((times_0 ((times_0 a_0) b_0)) ((plus_0 c_0) d_0))) in
      (let rec _lh_find_LH_P2_0_3 = (`Y) in
        (fun _lh_find_LH_C_1_8 _lh_find_arg1_1_1 -> 
          (if (_lh_find_arg1_1_1 = _lh_find_LH_P2_0_3) then
            (`LH_P2(true, _lh_find_LH_P2_1_3))
          else
            ((find_lh _lh_find_arg1_1_1) _lh_find_LH_C_1_8))))) in
      (fun _lh_find_arg1_1_2 -> 
        ((_lh_find_LH_C_0_3 _lh_find_LH_C_1_1) _lh_find_arg1_1_2)))) in
    (let rec _lh_find_LH_C_0_4 = (let rec _lh_find_LH_P2_1_4 = (f_1 ((plus_0 ((plus_0 a_0) b_0)) ((plus_0 c_0) zero_0))) in
      (let rec _lh_find_LH_P2_0_4 = (`X) in
        (fun _lh_find_LH_C_1_9 _lh_find_arg1_1_3 -> 
          (if (_lh_find_arg1_1_3 = _lh_find_LH_P2_0_4) then
            (`LH_P2(true, _lh_find_LH_P2_1_4))
          else
            ((find_lh _lh_find_arg1_1_3) _lh_find_LH_C_1_9))))) in
      (fun _lh_find_arg1_1_4 -> 
        ((_lh_find_LH_C_0_4 _lh_find_LH_C_1_0) _lh_find_arg1_1_4)))) in
    (let rec theorem_0 = ((implies_0 ((and__0 ((implies_0 _lh_test0_arg1_0) y_0)) ((and__0 ((implies_0 y_0) z_0)) ((and__0 ((implies_0 z_0) u_0)) ((implies_0 u_0) w_0))))) ((implies_0 x_0) w_0)) in
      (tautp_lh ((apply_subst_lh subst0_0) theorem_0))));;
let rec testBoyer_nofib_lh _lh_testBoyer_nofib_arg1_0 =
  ((all_lh test0_lh) ((replicate_lh _lh_testBoyer_nofib_arg1_0) (`Var((`X)))));;
end;;

