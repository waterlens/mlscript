

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________ = struct
let rec take_lh__d1 n_2 ls_4 =
  (if (n_2 > 0) then
    (match ls_4 with
      | `LH_C(h_6_4, t_6_4) -> 
        (`LH_C(h_6_4, ((take_lh__d1 (n_2 - 1)) t_6_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec length_lh__d1 ls_8 =
  (match ls_8 with
    | `LH_C(h_7_3, t_7_3) -> 
      (1 + (length_lh__d1 t_7_3))
    | `LH_N -> 
      0);;
let rec mappend_lh__d2 xs_5 ys_5_0 =
  (xs_5 ys_5_0);;
let rec mappend_lh__d1 xs_2 ys_3_3 =
  (match xs_2 with
    | `LH_C(h_3_1, t_3_1) -> 
      (let rec t_3_2 = ((mappend_lh__d1 t_3_1) ys_3_3) in
        (let rec h_3_2 = h_3_1 in
          (fun ys_3_4 -> 
            (`LH_C(h_3_2, ((mappend_lh__d2 t_3_2) ys_3_4))))))
    | `LH_N -> 
      ys_3_3);;
let rec newTable_lh__d2 =
  (`Empty);;
let rec break_lh__d2 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_1_0_2 = ((break_lh__d2 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_1_0_2 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec lines_lh__d1 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_1_0_5 = ((break_lh__d2 (fun x_3 -> 
    (x_3 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_1_0_5 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_1_0_6 = _lh_lines_LH_P2_1_0 in
          (match _lh_matchIdent_1_0_6 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_0, _lh_lines_LH_C_1_0) -> 
              (lines_lh__d1 _lh_lines_LH_C_1_0)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")));;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_4_1 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_4_1 = a_0 in
        (fun _lh_listcomp_fun_6_3 -> 
          (`LH_C((`LH_C('X', (string_of_int _lh_listcomp_fun_ls_h_4_1))), (_lh_listcomp_fun_6_3 _lh_listcomp_fun_ls_t_4_1))))))
  else
    (fun _lh_listcomp_fun_6_4 -> 
      (`LH_N)));;
let rec dropWhile_lh__d1 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_lh__d1 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec isSpace_lh__d1 _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec isSpace_lh__d2 _lh_isSpace_arg1_1 =
  (_lh_isSpace_arg1_1 = ' ');;
let rec break_lh__d1 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_1_1_4 = ((break_lh__d1 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_1_1_4 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec words_lh__d1 _lh_words_arg1_0 =
  (let rec _lh_matchIdent_1 = ((dropWhile_lh__d1 isSpace_lh__d1) _lh_words_arg1_0) in
    (match _lh_matchIdent_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0) -> 
        (let rec _lh_matchIdent_2 = ((break_lh__d1 isSpace_lh__d2) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
          (match _lh_matchIdent_2 with
            | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
              (`LH_C(_lh_words_LH_P2_0_0, (words_lh__d1 _lh_words_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec lines_lh__d3 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_1_1_2 = ((break_lh__d2 (fun x_4 -> 
    (x_4 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_1_1_2 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (let rec _lh_listcomp_fun_ls_t_4_2 = (let rec _lh_matchIdent_1_1_3 = _lh_lines_LH_P2_1_1 in
          (match _lh_matchIdent_1_1_3 with
            | `LH_N -> 
              (fun _lh_listcomp_fun_6_5 -> 
                (`LH_N))
            | `LH_C(_lh_lines_LH_C_0_1, _lh_lines_LH_C_1_1) -> 
              (lines_lh__d3 _lh_lines_LH_C_1_1)
            | _ -> 
              (failwith "error"))) in
          (let rec _lh_listcomp_fun_ls_h_4_2 = _lh_lines_LH_P2_0_1 in
            (fun _lh_listcomp_fun_6_6 -> 
              (`LH_C(((words_lh__d1 _lh_listcomp_fun_ls_h_4_2) <> (`LH_C((`LH_C('n', (`LH_C('o', (`LH_N))))), (`LH_N)))), (_lh_listcomp_fun_6_6 _lh_listcomp_fun_ls_t_4_2))))))
      | _ -> 
        (failwith "error")));;
let rec mappend_lh__d9 xs_1_0 ys_5_4 =
  (match xs_1_0 with
    | `LH_C(h_6_7, t_6_7) -> 
      (`LH_C(h_6_7, ((mappend_lh__d9 t_6_7) ys_5_4)))
    | `LH_N -> 
      ys_5_4);;
let rec concat_lh__d1 lss_0 =
  (lss_0 99);;
let rec filter_lh__d1 f_2 ls_9 =
  (match ls_9 with
    | `LH_C(h_7_5, t_7_5) -> 
      (if (f_2 h_7_5) then
        (`LH_C(h_7_5, ((filter_lh__d1 f_2) t_7_5)))
      else
        ((filter_lh__d1 f_2) t_7_5))
    | `LH_N -> 
      (`LH_N));;
let rec nub_lh__d1 _lh_nub_arg1_0 =
  (match _lh_nub_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nub_LH_C_0_0, _lh_nub_LH_C_1_0) -> 
      (`LH_C(_lh_nub_LH_C_0_0, (nub_lh__d1 ((filter_lh__d1 (fun y_0 -> 
        (not (_lh_nub_LH_C_0_0 = y_0)))) _lh_nub_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec vars_lh__d1 _lh_vars_arg1_0 =
  (let rec names_0 = (fun _lh_names_arg1_0 -> 
    (match _lh_names_arg1_0 with
      | `Var(_lh_names_Var_0_0) -> 
        (`LH_C(_lh_names_Var_0_0, (`LH_N)))
      | `Term(_lh_names_Term_0_0, _lh_names_Term_1_0) -> 
        (concat_lh__d1 (let rec _lh_listcomp_fun_9_3 = (fun _lh_listcomp_fun_para_5_7 -> 
          (match _lh_listcomp_fun_para_5_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_7, _lh_listcomp_fun_ls_t_5_7) -> 
              (let rec t_8_0 = (_lh_listcomp_fun_9_3 _lh_listcomp_fun_ls_t_5_7) in
                (let rec h_8_0 = (names_0 _lh_listcomp_fun_ls_h_5_7) in
                  (fun _lh_dummy_5_2 -> 
                    ((mappend_lh__d9 h_8_0) (concat_lh__d1 t_8_0)))))
            | `LH_N -> 
              (fun _lh_dummy_5_3 -> 
                (`LH_N)))) in
          (_lh_listcomp_fun_9_3 _lh_names_Term_1_0)))
      | _ -> 
        (failwith "error"))) in
    (nub_lh__d1 (names_0 _lh_vars_arg1_0)));;
let rec newTable_lh__d1 =
  (`Empty);;
let rec showPhrase_lh__d1 _lh_showPhrase_arg1_0 =
  (match _lh_showPhrase_arg1_0 with
    | `Var(_lh_showPhrase_Var_0_0) -> 
      _lh_showPhrase_Var_0_0
    | `Term(_lh_showPhrase_Term_0_0, _lh_showPhrase_Term_1_0) -> 
      (match _lh_showPhrase_Term_1_0 with
        | `LH_N -> 
          _lh_showPhrase_Term_0_0
        | `LH_C(_lh_showPhrase_LH_C_0_0, _lh_showPhrase_LH_C_1_0) -> 
          (match _lh_showPhrase_LH_C_1_0 with
            | `LH_C(_lh_showPhrase_LH_C_0_1, _lh_showPhrase_LH_C_1_1) -> 
              (match _lh_showPhrase_LH_C_1_1 with
                | `LH_N -> 
                  ((mappend_lh__d9 ((mappend_lh__d9 ((mappend_lh__d9 ((mappend_lh__d9 (showPhrase_lh__d1 _lh_showPhrase_LH_C_0_0)) (`LH_C(' ', (`LH_N))))) _lh_showPhrase_Term_0_0)) (`LH_C(' ', (`LH_N))))) (showPhrase_lh__d1 _lh_showPhrase_LH_C_0_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec head_lh__d2 ls_1 =
  (match ls_1 with
    | `LH_C(h_3_3, t_3_3) -> 
      h_3_3
    | `LH_N -> 
      (failwith "error"));;
let rec mappend_lh__d8 xs_3 ys_4_7 =
  (xs_3 ys_4_7);;
let rec mappend_lh__d4 xs_9 ys_5_3 =
  (xs_9 ys_5_3);;
let rec mappend_lh__d7 xs_4 ys_4_8 =
  (match xs_4 with
    | `LH_C(h_5_6, t_5_6) -> 
      (let rec t_5_7 = ((mappend_lh__d7 t_5_6) ys_4_8) in
        (let rec h_5_7 = h_5_6 in
          (fun ys_4_9 -> 
            (`LH_C(h_5_7, ((mappend_lh__d4 t_5_7) ys_4_9))))))
    | `LH_N -> 
      ys_4_8);;
let rec mappend_lh__d5 xs_6 ys_5_1 =
  (match xs_6 with
    | `LH_C(h_5_9, t_5_9) -> 
      (`LH_C(h_5_9, ((mappend_lh__d5 t_5_9) ys_5_1)))
    | `LH_N -> 
      ys_5_1);;
let rec mappend_lh__d6 xs_8 ys_5_2 =
  (xs_8 ys_5_2);;
let rec tail_lh__d2 ls_3 =
  (match ls_3 with
    | `LH_C(h_6_3, t_6_3) -> 
      t_6_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lh__d3 ls_7 =
  (match ls_7 with
    | `LH_C(h_7_1, t_7_1) -> 
      t_7_1
    | `LH_N -> 
      (failwith "error"));;
let rec foldr1_lh__d1 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1_lh__d1 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec answer_lh__d1 _lh_answer_arg1_0 =
  (match _lh_answer_arg1_0 with
    | `Answer(_lh_answer_Answer_0_0) -> 
      _lh_answer_Answer_0_0
    | _ -> 
      (failwith "error"));;
let rec succeeds_lh__d1 _lh_succeeds_arg1_0 =
  (match _lh_succeeds_arg1_0 with
    | `Answer(_lh_succeeds_Answer_0_0) -> 
      true
    | _ -> 
      false);;
let rec fails_lh__d1 _lh_fails_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    (not (succeeds_lh__d1 _lh_funcomp_x_2))) _lh_fails_arg1_0);;
let rec failure_lh__d1 _lh_failure_arg1_0 =
  (`Reason(_lh_failure_arg1_0));;
let rec success_lh__d1 _lh_success_arg1_0 =
  (`Answer(_lh_success_arg1_0));;
let rec find_lh__d1 _lh_find_arg1_0 _lh_find_arg2_0 =
  (let rec _lh_matchIdent_1_0_7 = _lh_find_arg1_0 in
    (match _lh_matchIdent_1_0_7 with
      | `Empty -> 
        (failure_lh__d1 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_0, _lh_find_Fork_1_0, _lh_find_Fork_2_0) -> 
        (match _lh_find_Fork_1_0 with
          | `LH_P2(_lh_find_LH_P2_0_0, _lh_find_LH_P2_1_0) -> 
            (if (_lh_find_arg2_0 < _lh_find_LH_P2_0_0) then
              ((find_lh__d1 _lh_find_Fork_0_0) _lh_find_arg2_0)
            else
              (if (_lh_find_arg2_0 = _lh_find_LH_P2_0_0) then
                (success_lh__d1 _lh_find_LH_P2_1_0)
              else
                (if (_lh_find_arg2_0 > _lh_find_LH_P2_0_0) then
                  ((find_lh__d1 _lh_find_Fork_2_0) _lh_find_arg2_0)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")));;
let rec subst_lh__d1 _lh_subst_arg1_0 _lh_subst_arg2_0 =
  (match _lh_subst_arg2_0 with
    | `Term(_lh_subst_Term_0_0, _lh_subst_Term_1_0) -> 
      (`Term(_lh_subst_Term_0_0, (let rec _lh_listcomp_fun_7_6 = (fun _lh_listcomp_fun_para_4_8 -> 
        (match _lh_listcomp_fun_para_4_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_8, _lh_listcomp_fun_ls_t_4_8) -> 
            (`LH_C(((subst_lh__d1 _lh_subst_arg1_0) _lh_listcomp_fun_ls_h_4_8), (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_4_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_7_6 _lh_subst_Term_1_0))))
    | `Var(_lh_subst_Var_0_0) -> 
      (let rec lookup_1_6 = ((find_lh__d1 _lh_subst_arg1_0) _lh_subst_Var_0_0) in
        (if (fails_lh__d1 lookup_1_6) then
          (`Var(_lh_subst_Var_0_0))
        else
          ((subst_lh__d1 _lh_subst_arg1_0) (answer_lh__d1 lookup_1_6))))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1 f_1 ls_6 =
  (match ls_6 with
    | `LH_C(h_6_6, t_6_6) -> 
      (`LH_C((f_1 h_6_6), ((map_lh__d1 f_1) t_6_6)))
    | `LH_N -> 
      (`LH_N));;
let rec showVars_lh__d1 _lh_showVars_arg1_0 _lh_showVars_arg2_0 =
  (let rec join_0 = (fun x_8 y_1 -> 
    ((mappend_lh__d9 ((mappend_lh__d9 x_8) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) y_1)) in
    (let rec showVar_0 = (fun v_1 -> 
      ((mappend_lh__d9 ((mappend_lh__d9 v_1) (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_N))))))))) (showPhrase_lh__d1 ((subst_lh__d1 _lh_showVars_arg1_0) (`Var(v_1)))))) in
      ((foldr1_lh__d1 join_0) ((map_lh__d1 showVar_0) _lh_showVars_arg2_0))));;
let rec display_lh__d1 _lh_display_arg1_0 _lh_display_arg2_0 _lh_display_arg3_0 =
  (match _lh_display_arg1_0 with
    | `LH_N -> 
      (`LH_C('N', (`LH_C('o', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_display_LH_C_0_0, _lh_display_LH_C_1_0) -> 
      (match _lh_display_LH_C_0_0 with
        | `Question(_lh_display_Question_0_0) -> 
          ((mappend_lh__d4 ((mappend_lh__d7 ((mappend_lh__d8 (let rec t_1 = (let rec t_2 = (let rec t_3 = (let rec t_4 = (let rec t_5 = (let rec t_6 = (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (fun ys_0 -> 
            ys_0) in
            (let rec h_1 = ' ' in
              (fun ys_1 -> 
                (`LH_C(h_1, ((mappend_lh__d8 t_1_6) ys_1)))))) in
            (let rec h_2 = 't' in
              (fun ys_2 -> 
                (`LH_C(h_2, ((mappend_lh__d8 t_1_5) ys_2)))))) in
            (let rec h_3 = 'a' in
              (fun ys_3 -> 
                (`LH_C(h_3, ((mappend_lh__d8 t_1_4) ys_3)))))) in
            (let rec h_4 = 'h' in
              (fun ys_4 -> 
                (`LH_C(h_4, ((mappend_lh__d8 t_1_3) ys_4)))))) in
            (let rec h_5 = 't' in
              (fun ys_5 -> 
                (`LH_C(h_5, ((mappend_lh__d8 t_1_2) ys_5)))))) in
            (let rec h_6 = ' ' in
              (fun ys_6 -> 
                (`LH_C(h_6, ((mappend_lh__d8 t_1_1) ys_6)))))) in
            (let rec h_7 = 'e' in
              (fun ys_7 -> 
                (`LH_C(h_7, ((mappend_lh__d8 t_1_0) ys_7)))))) in
            (let rec h_8 = 'u' in
              (fun ys_8 -> 
                (`LH_C(h_8, ((mappend_lh__d8 t_9) ys_8)))))) in
            (let rec h_9 = 'r' in
              (fun ys_9 -> 
                (`LH_C(h_9, ((mappend_lh__d8 t_8) ys_9)))))) in
            (let rec h_1_0 = 't' in
              (fun ys_1_0 -> 
                (`LH_C(h_1_0, ((mappend_lh__d8 t_7) ys_1_0)))))) in
            (let rec h_1_1 = ' ' in
              (fun ys_1_1 -> 
                (`LH_C(h_1_1, ((mappend_lh__d8 t_6) ys_1_1)))))) in
            (let rec h_1_2 = 't' in
              (fun ys_1_2 -> 
                (`LH_C(h_1_2, ((mappend_lh__d8 t_5) ys_1_2)))))) in
            (let rec h_1_3 = 'i' in
              (fun ys_1_3 -> 
                (`LH_C(h_1_3, ((mappend_lh__d8 t_4) ys_1_3)))))) in
            (let rec h_1_4 = ' ' in
              (fun ys_1_4 -> 
                (`LH_C(h_1_4, ((mappend_lh__d8 t_3) ys_1_4)))))) in
            (let rec h_1_5 = 's' in
              (fun ys_1_5 -> 
                (`LH_C(h_1_5, ((mappend_lh__d8 t_2) ys_1_5)))))) in
            (let rec h_1_6 = 'I' in
              (fun ys_1_6 -> 
                (`LH_C(h_1_6, ((mappend_lh__d8 t_1) ys_1_6))))))) _lh_display_Question_0_0)) (let rec t_1_7 = (let rec t_1_8 = (fun ys_1_7 -> 
            ys_1_7) in
            (let rec h_1_7 = '|' in
              (fun ys_1_8 -> 
                (`LH_C(h_1_7, ((mappend_lh__d4 t_1_8) ys_1_8)))))) in
            (let rec h_1_8 = '?' in
              (fun ys_1_9 -> 
                (`LH_C(h_1_8, ((mappend_lh__d4 t_1_7) ys_1_9)))))))) (((display_lh__d1 _lh_display_LH_C_1_0) _lh_display_arg2_0) (tail_lh__d3 _lh_display_arg3_0)))
        | `Soln(_lh_display_Soln_0_0, _lh_display_Soln_1_0) -> 
          (let rec sol_0 = ((showVars_lh__d1 _lh_display_Soln_0_0) _lh_display_arg2_0) in
            (let rec etc_0 = (if ((_lh_display_arg3_0 = (`LH_N)) || ((head_lh__d2 _lh_display_arg3_0) = false)) then
              (`LH_N)
            else
              (((display_lh__d1 _lh_display_LH_C_1_0) _lh_display_arg2_0) (tail_lh__d2 _lh_display_arg3_0))) in
              ((mappend_lh__d9 ((mappend_lh__d5 ((mappend_lh__d6 (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (let rec t_2_8 = (fun ys_2_0 -> 
                ys_2_0) in
                (let rec h_1_9 = ' ' in
                  (fun ys_2_1 -> 
                    (`LH_C(h_1_9, ((mappend_lh__d6 t_2_8) ys_2_1)))))) in
                (let rec h_2_0 = ':' in
                  (fun ys_2_2 -> 
                    (`LH_C(h_2_0, ((mappend_lh__d6 t_2_7) ys_2_2)))))) in
                (let rec h_2_1 = 'n' in
                  (fun ys_2_3 -> 
                    (`LH_C(h_2_1, ((mappend_lh__d6 t_2_6) ys_2_3)))))) in
                (let rec h_2_2 = 'o' in
                  (fun ys_2_4 -> 
                    (`LH_C(h_2_2, ((mappend_lh__d6 t_2_5) ys_2_4)))))) in
                (let rec h_2_3 = 'i' in
                  (fun ys_2_5 -> 
                    (`LH_C(h_2_3, ((mappend_lh__d6 t_2_4) ys_2_5)))))) in
                (let rec h_2_4 = 't' in
                  (fun ys_2_6 -> 
                    (`LH_C(h_2_4, ((mappend_lh__d6 t_2_3) ys_2_6)))))) in
                (let rec h_2_5 = 'u' in
                  (fun ys_2_7 -> 
                    (`LH_C(h_2_5, ((mappend_lh__d6 t_2_2) ys_2_7)))))) in
                (let rec h_2_6 = 'l' in
                  (fun ys_2_8 -> 
                    (`LH_C(h_2_6, ((mappend_lh__d6 t_2_1) ys_2_8)))))) in
                (let rec h_2_7 = 'o' in
                  (fun ys_2_9 -> 
                    (`LH_C(h_2_7, ((mappend_lh__d6 t_2_0) ys_2_9)))))) in
                (let rec h_2_8 = 'S' in
                  (fun ys_3_0 -> 
                    (`LH_C(h_2_8, ((mappend_lh__d6 t_1_9) ys_3_0))))))) sol_0)) (`LH_C('.', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C('?', (`LH_C('|', (`LH_N))))))))))))))))))) etc_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec fst_lh__d1 _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec enterList_lh__d1 _lh_enterList_arg1_0 _lh_enterList_arg2_0 =
  (match _lh_enterList_arg2_0 with
    | `LH_N -> 
      _lh_enterList_arg1_0
    | _ -> 
      (match _lh_enterList_arg1_0 with
        | `Empty -> 
          (match _lh_enterList_arg2_0 with
            | `LH_C(_lh_enterList_LH_C_0_0, _lh_enterList_LH_C_1_0) -> 
              (let rec k_0 = (fst_lh__d1 _lh_enterList_LH_C_0_0) in
                (let rec left_0 = ((enterList_lh__d1 (`Empty)) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
                  (match _lh_listcomp_fun_para_2 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                      (if ((fst_lh__d1 _lh_listcomp_fun_ls_h_2) < k_0) then
                        (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_2)))
                      else
                        (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_2))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_4 _lh_enterList_LH_C_1_0))) in
                  (let rec right_0 = ((enterList_lh__d1 (`Empty)) (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_3 -> 
                    (match _lh_listcomp_fun_para_3 with
                      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                        (if ((fst_lh__d1 _lh_listcomp_fun_ls_h_3) > k_0) then
                          (`LH_C(_lh_listcomp_fun_ls_h_3, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3)))
                        else
                          (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_5 _lh_enterList_LH_C_1_0))) in
                    (`Fork(left_0, _lh_enterList_LH_C_0_0, right_0)))))
            | _ -> 
              (match _lh_enterList_arg1_0 with
                | `Fork(_lh_enterList_Fork_0_0, _lh_enterList_Fork_1_0, _lh_enterList_Fork_2_0) -> 
                  (let rec k_1 = (fst_lh__d1 _lh_enterList_Fork_1_0) in
                    (let rec left'_0 = ((enterList_lh__d1 _lh_enterList_Fork_0_0) (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_4 -> 
                      (match _lh_listcomp_fun_para_4 with
                        | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                          (if ((fst_lh__d1 _lh_listcomp_fun_ls_h_4) < k_1) then
                            (`LH_C(_lh_listcomp_fun_ls_h_4, (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_4)))
                          else
                            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_4))
                        | `LH_N -> 
                          (`LH_N))) in
                      (_lh_listcomp_fun_6 _lh_enterList_arg2_0))) in
                      (let rec right'_0 = ((enterList_lh__d1 _lh_enterList_Fork_2_0) (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_5 -> 
                        (match _lh_listcomp_fun_para_5 with
                          | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                            (if ((fst_lh__d1 _lh_listcomp_fun_ls_h_5) > k_1) then
                              (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_5)))
                            else
                              (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_5))
                          | `LH_N -> 
                            (`LH_N))) in
                        (_lh_listcomp_fun_7 _lh_enterList_arg2_0))) in
                        (`Fork(left'_0, _lh_enterList_Fork_1_0, right'_0)))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_enterList_arg1_0 with
            | `Fork(_lh_enterList_Fork_0_1, _lh_enterList_Fork_1_1, _lh_enterList_Fork_2_1) -> 
              (let rec k_2 = (fst_lh__d1 _lh_enterList_Fork_1_1) in
                (let rec left'_1 = ((enterList_lh__d1 _lh_enterList_Fork_0_1) (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_6 -> 
                  (match _lh_listcomp_fun_para_6 with
                    | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
                      (if ((fst_lh__d1 _lh_listcomp_fun_ls_h_6) < k_2) then
                        (`LH_C(_lh_listcomp_fun_ls_h_6, (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_6)))
                      else
                        (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_6))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_8 _lh_enterList_arg2_0))) in
                  (let rec right'_1 = ((enterList_lh__d1 _lh_enterList_Fork_2_1) (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_7 -> 
                    (match _lh_listcomp_fun_para_7 with
                      | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
                        (if ((fst_lh__d1 _lh_listcomp_fun_ls_h_7) > k_2) then
                          (`LH_C(_lh_listcomp_fun_ls_h_7, (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_7)))
                        else
                          (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_7))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_9 _lh_enterList_arg2_0))) in
                    (`Fork(left'_1, _lh_enterList_Fork_1_1, right'_1)))))
            | _ -> 
              (failwith "error"))));;
let rec strEq_lh__d1 _lh_strEq_arg1_0 _lh_strEq_arg2_0 =
  (match _lh_strEq_arg1_0 with
    | `LH_C(_lh_strEq_LH_C_0_0, _lh_strEq_LH_C_1_0) -> 
      (let rec _lh_matchIdent_1_0_8 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_1_0_8 with
          | `LH_C(_lh_strEq_LH_C_0_1, _lh_strEq_LH_C_1_1) -> 
            (if (_lh_strEq_LH_C_0_0 = _lh_strEq_LH_C_0_1) then
              ((strEq_lh__d1 _lh_strEq_LH_C_1_0) _lh_strEq_LH_C_1_1)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_0_9 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_1_0_9 with
          | `LH_C(_lh_strEq_LH_C_0_2, _lh_strEq_LH_C_1_2) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec takeWhile_lh__d1 _lh_takeWhile_arg1_0 _lh_takeWhile_arg2_0 =
  (match _lh_takeWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_0, _lh_takeWhile_LH_C_1_0) -> 
      (if (_lh_takeWhile_arg1_0 _lh_takeWhile_LH_C_0_0) then
        (`LH_C(_lh_takeWhile_LH_C_0_0, ((takeWhile_lh__d1 _lh_takeWhile_arg1_0) _lh_takeWhile_LH_C_1_0)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec split_lh__d2 _lh_split_arg1_0 _lh_split_arg2_0 _lh_split_arg3_0 _lh_split_arg4_0 =
  (`Term(_lh_split_arg3_0, (`LH_C((_lh_split_arg2_0 ((takeWhile_lh__d1 (fun x_0 -> 
    (not ((strEq_lh__d1 x_0) _lh_split_arg3_0)))) _lh_split_arg1_0)), (`LH_C((_lh_split_arg4_0 (tail_lh__d3 ((dropWhile_lh__d1 (fun x_1 -> 
    (not ((strEq_lh__d1 x_1) _lh_split_arg3_0)))) _lh_split_arg1_0))), (`LH_N)))))));;
let rec inList_lh__d1 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh__d1 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec split_lh__d1 _lh_split_arg1_1 _lh_split_arg2_1 _lh_split_arg3_1 _lh_split_arg4_1 =
  (`Term(_lh_split_arg3_1, (`LH_C((_lh_split_arg2_1 ((takeWhile_lh__d1 (fun x_5 -> 
    (not ((strEq_lh__d1 x_5) _lh_split_arg3_1)))) _lh_split_arg1_1)), (`LH_C((_lh_split_arg4_1 (tail_lh__d3 ((dropWhile_lh__d1 (fun x_6 -> 
    (not ((strEq_lh__d1 x_6) _lh_split_arg3_1)))) _lh_split_arg1_1))), (`LH_N)))))));;
let rec inList_lh__d2 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList_lh__d2 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec noun_lh__d1 _lh_noun_arg1_0 =
  (match _lh_noun_arg1_0 with
    | `LH_C(_lh_noun_LH_C_0_0, _lh_noun_LH_C_1_0) -> 
      (match _lh_noun_LH_C_1_0 with
        | `LH_C(_lh_noun_LH_C_0_1, _lh_noun_LH_C_1_1) -> 
          (match _lh_noun_LH_C_1_1 with
            | `LH_N -> 
              (if ((inList_lh__d2 _lh_noun_LH_C_0_0) (`LH_C((`LH_C('a', (`LH_N))), (`LH_C((`LH_C('a', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))), (`LH_N)))))))) then
                (noun_lh__d1 (`LH_C(((mappend_lh__d9 ((mappend_lh__d9 _lh_noun_LH_C_0_0) (`LH_C(' ', (`LH_N))))) _lh_noun_LH_C_0_1), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head_lh__d2 _lh_noun_LH_C_0_0)) && ((head_lh__d2 _lh_noun_LH_C_0_0) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_0))
          else
            (`Term(_lh_noun_LH_C_0_0, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec relation_lh__d1 _lh_relation_arg1_0 =
  (let rec verbs_1 = (`LH_C((`LH_C('i', (`LH_C('s', (`LH_N))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))), (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))), (`LH_C((`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))), (`LH_N))))))))))) in
    (let rec verb_1 = (head_lh__d2 (let rec _lh_listcomp_fun_9_8 = (fun _lh_listcomp_fun_para_6_0 -> 
      (match _lh_listcomp_fun_para_6_0 with
        | `LH_C(_lh_listcomp_fun_ls_h_6_0, _lh_listcomp_fun_ls_t_6_0) -> 
          (if ((inList_lh__d2 _lh_listcomp_fun_ls_h_6_0) verbs_1) then
            (`LH_C(_lh_listcomp_fun_ls_h_6_0, (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_6_0)))
          else
            (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_6_0))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_9_8 _lh_relation_arg1_0))) in
      ((((split_lh__d2 _lh_relation_arg1_0) noun_lh__d1) verb_1) noun_lh__d1)));;
let rec goal_lh__d1 _lh_goal_arg1_0 =
  (if ((inList_lh__d2 (`LH_C('o', (`LH_C('r', (`LH_N)))))) _lh_goal_arg1_0) then
    ((((split_lh__d2 _lh_goal_arg1_0) goal_lh__d1) (`LH_C('o', (`LH_C('r', (`LH_N)))))) goal_lh__d1)
  else
    (if ((inList_lh__d1 (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) _lh_goal_arg1_0) then
      ((((split_lh__d1 _lh_goal_arg1_0) goal_lh__d1) (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) goal_lh__d1)
    else
      (relation_lh__d1 _lh_goal_arg1_0)));;
let rec mappend_lh__d3 xs_0 ys_3_1 =
  (xs_0 ys_3_1);;
let rec zip_lh__d1 xs_1 ys_3_2 =
  (match xs_1 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_3_2 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lh__d1 tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec words_lh__d3 _lh_words_arg1_2 =
  (let rec _lh_matchIdent_1_1_0 = ((dropWhile_lh__d1 isSpace_lh__d2) _lh_words_arg1_2) in
    (match _lh_matchIdent_1_1_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_2, _lh_words_LH_C_1_2) -> 
        (let rec _lh_matchIdent_1_1_1 = ((break_lh__d2 isSpace_lh__d2) (`LH_C(_lh_words_LH_C_0_2, _lh_words_LH_C_1_2))) in
          (match _lh_matchIdent_1_1_1 with
            | `LH_P2(_lh_words_LH_P2_0_2, _lh_words_LH_P2_1_2) -> 
              (`LH_C(_lh_words_LH_P2_0_2, (words_lh__d3 _lh_words_LH_P2_1_2)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec newTable_lh__d3 =
  (`Empty);;
let rec entries_lh__d1 _lh_entries_arg1_0 =
  (match _lh_entries_arg1_0 with
    | `Empty -> 
      (`LH_N)
    | `Fork(_lh_entries_Fork_0_0, _lh_entries_Fork_1_0, _lh_entries_Fork_2_0) -> 
      ((mappend_lh__d9 ((mappend_lh__d9 (entries_lh__d1 _lh_entries_Fork_0_0)) (`LH_C(_lh_entries_Fork_1_0, (`LH_N))))) (entries_lh__d1 _lh_entries_Fork_2_0))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d1 f_0 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_5_5, t_5_5) -> 
      ((f_0 h_5_5) (((foldr_lh__d1 f_0) i_0) t_5_5))
    | `LH_N -> 
      i_0);;
let rec sortKey_lh__d1 _lh_sortKey_arg1_0 =
  (let rec insertKey_0 = (fun _lh_insertKey_arg1_0 _lh_insertKey_arg2_0 -> 
    (match _lh_insertKey_arg2_0 with
      | `LH_N -> 
        (`LH_C(_lh_insertKey_arg1_0, (`LH_N)))
      | _ -> 
        (match _lh_insertKey_arg1_0 with
          | `LH_P2(_lh_insertKey_LH_P2_0_0, _lh_insertKey_LH_P2_1_0) -> 
            (match _lh_insertKey_arg2_0 with
              | `LH_C(_lh_insertKey_LH_C_0_0, _lh_insertKey_LH_C_1_0) -> 
                (match _lh_insertKey_LH_C_0_0 with
                  | `LH_P2(_lh_insertKey_LH_P2_0_1, _lh_insertKey_LH_P2_1_1) -> 
                    (if (_lh_insertKey_LH_P2_0_0 <= _lh_insertKey_LH_P2_0_1) then
                      (`LH_C((`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_0, _lh_insertKey_LH_P2_1_0)), (`LH_P2(_lh_insertKey_LH_P2_0_1, _lh_insertKey_LH_P2_1_1)))), _lh_insertKey_LH_C_1_0))
                    else
                      (`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_1, _lh_insertKey_LH_P2_1_1)), ((insertKey_0 (`LH_P2(_lh_insertKey_LH_P2_0_0, _lh_insertKey_LH_P2_1_0))) _lh_insertKey_LH_C_1_0))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))) in
    (((foldr_lh__d1 insertKey_0) (`LH_N)) _lh_sortKey_arg1_0));;
let rec mergeKey_lh__d1 _lh_mergeKey_arg1_0 _lh_mergeKey_arg2_0 =
  (match _lh_mergeKey_arg1_0 with
    | `LH_N -> 
      _lh_mergeKey_arg2_0
    | _ -> 
      (match _lh_mergeKey_arg2_0 with
        | `LH_N -> 
          _lh_mergeKey_arg1_0
        | _ -> 
          (match _lh_mergeKey_arg1_0 with
            | `LH_C(_lh_mergeKey_LH_C_0_0, _lh_mergeKey_LH_C_1_0) -> 
              (match _lh_mergeKey_LH_C_0_0 with
                | `LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0) -> 
                  (match _lh_mergeKey_arg2_0 with
                    | `LH_C(_lh_mergeKey_LH_C_0_1, _lh_mergeKey_LH_C_1_1) -> 
                      (match _lh_mergeKey_LH_C_0_1 with
                        | `LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1) -> 
                          (if (_lh_mergeKey_LH_P2_0_0 <= _lh_mergeKey_LH_P2_0_1) then
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0)), ((mergeKey_lh__d1 _lh_mergeKey_LH_C_1_0) (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1)), _lh_mergeKey_LH_C_1_1)))))
                          else
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1)), ((mergeKey_lh__d1 (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0)), _lh_mergeKey_LH_C_1_0))) _lh_mergeKey_LH_C_1_1))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec drop_lh__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_lh__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lh__d1 n_0 ls_0 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match ls_0 with
      | `LH_C(h_0, t_0) -> 
        (if (n_0 = 0) then
          h_0
        else
          ((atIndex_lh__d1 (n_0 - 1)) t_0))
      | `LH_N -> 
        (failwith "error")));;
let rec updateList_lh__d1 _lh_updateList_arg1_0 _lh_updateList_arg2_0 =
  let rec unique_0 = (fun _lh_unique_arg1_0 -> 
    (match _lh_unique_arg1_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_unique_LH_C_0_0, _lh_unique_LH_C_1_0) -> 
        (match _lh_unique_LH_C_1_0 with
          | `LH_N -> 
            (`LH_C(_lh_unique_LH_C_0_0, (`LH_N)))
          | _ -> 
            (match _lh_unique_LH_C_0_0 with
              | `LH_P2(_lh_unique_LH_P2_0_0, _lh_unique_LH_P2_1_0) -> 
                (match _lh_unique_LH_C_1_0 with
                  | `LH_C(_lh_unique_LH_C_0_1, _lh_unique_LH_C_1_1) -> 
                    (match _lh_unique_LH_C_0_1 with
                      | `LH_P2(_lh_unique_LH_P2_0_1, _lh_unique_LH_P2_1_1) -> 
                        (if (_lh_unique_LH_P2_0_0 = _lh_unique_LH_P2_0_1) then
                          (unique_0 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_1, _lh_unique_LH_P2_1_1)), _lh_unique_LH_C_1_1)))
                        else
                          (`LH_C((`LH_P2(_lh_unique_LH_P2_0_0, _lh_unique_LH_P2_1_0)), (unique_0 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_1, _lh_unique_LH_P2_1_1)), _lh_unique_LH_C_1_1))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
      | _ -> 
        (failwith "error")))
  and balance_0 = (fun _lh_balance_arg1_0 -> 
    (match _lh_balance_arg1_0 with
      | `LH_N -> 
        (`Empty)
      | _ -> 
        (let rec m_1 = ((length_lh__d1 _lh_balance_arg1_0) / 2) in
          (let rec left_1 = (balance_0 ((take_lh__d1 m_1) _lh_balance_arg1_0)) in
            (let rec right_1 = (balance_0 ((drop_lh__d1 (m_1 + 1)) _lh_balance_arg1_0)) in
              (`Fork(left_1, ((atIndex_lh__d1 m_1) _lh_balance_arg1_0), right_1)))))))
  in (balance_0 ((mergeKey_lh__d1 (entries_lh__d1 _lh_updateList_arg1_0)) (unique_0 (sortKey_lh__d1 _lh_updateList_arg2_0))));;
let rec rule_lh__d1 _lh_rule_arg1_0 =
  ((((split_lh__d2 _lh_rule_arg1_0) relation_lh__d1) (`LH_C('i', (`LH_C('f', (`LH_N)))))) goal_lh__d1);;
let rec definitions_lh__d1 _lh_definitions_arg1_0 =
  (let rec verb_0 = (fun x_2 -> 
    (let rec _lh_matchIdent_0 = x_2 in
      (match _lh_matchIdent_0 with
        | `Term(_lh_definitions_Term_0_0, _lh_definitions_Term_1_0) -> 
          (match _lh_definitions_Term_0_0 with
            | `LH_C(_lh_definitions_LH_C_0_0, _lh_definitions_LH_C_1_0) -> 
              (match _lh_definitions_LH_C_0_0 with
                | 'i' -> 
                  (match _lh_definitions_LH_C_1_0 with
                    | `LH_C(_lh_definitions_LH_C_0_1, _lh_definitions_LH_C_1_1) -> 
                      (match _lh_definitions_LH_C_0_1 with
                        | 'f' -> 
                          (match _lh_definitions_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_definitions_Term_1_0 with
                                | `LH_C(_lh_definitions_LH_C_0_2, _lh_definitions_LH_C_1_2) -> 
                                  (match _lh_definitions_LH_C_0_2 with
                                    | `Term(_lh_definitions_Term_0_1, _lh_definitions_Term_1_1) -> 
                                      (match _lh_definitions_LH_C_1_2 with
                                        | `LH_C(_lh_definitions_LH_C_0_3, _lh_definitions_LH_C_1_3) -> 
                                          (match _lh_definitions_LH_C_1_3 with
                                            | `LH_N -> 
                                              _lh_definitions_Term_0_1
                                            | _ -> 
                                              (failwith "error"))
                                        | _ -> 
                                          (failwith "error"))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    (let rec rs_0 = (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_1_5 -> 
      (match _lh_listcomp_fun_para_1_5 with
        | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
          (`LH_C((rule_lh__d1 (words_lh__d3 _lh_listcomp_fun_ls_h_1_3)), (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_3)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_2_1 _lh_definitions_arg1_0)) in
      (let rec verbs_0 = (nub_lh__d1 (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_1_6 -> 
        (match _lh_listcomp_fun_para_1_6 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
            (`LH_C((verb_0 _lh_listcomp_fun_ls_h_1_4), (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_2 rs_0))) in
        (let rec def_0 = (fun v_0 -> 
          (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_1_7 -> 
            (match _lh_listcomp_fun_para_1_7 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
                (if ((verb_0 _lh_listcomp_fun_ls_h_1_5) = v_0) then
                  (`LH_C(_lh_listcomp_fun_ls_h_1_5, (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_5)))
                else
                  (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_5))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_2_3 rs_0))) in
          ((updateList_lh__d1 newTable_lh__d3) (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_1_8 -> 
            (match _lh_listcomp_fun_para_1_8 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_6) -> 
                (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1_6, (def_0 _lh_listcomp_fun_ls_h_1_6))), (_lh_listcomp_fun_2_4 _lh_listcomp_fun_ls_t_1_6)))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_2_4 verbs_0)))))));;
let rec relevant_lh__d1_d2 _lh_relevant_arg1_1 _lh_relevant_arg2_1 =
  (match _lh_relevant_arg2_1 with
    | `Term(_lh_relevant_Term_0_1, _lh_relevant_Term_1_1) -> 
      (let rec lookup_1 = ((find_lh__d1 _lh_relevant_arg1_1) _lh_relevant_Term_0_1) in
        (if (fails_lh__d1 lookup_1) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1)))
    | _ -> 
      (failwith "error"));;
let rec update_lh__d1 _lh_update_arg1_0 _lh_update_arg2_0 _lh_update_arg3_0 =
  (match _lh_update_arg1_0 with
    | `Empty -> 
      (`Fork((`Empty), (`LH_P2(_lh_update_arg2_0, _lh_update_arg3_0)), (`Empty)))
    | `Fork(_lh_update_Fork_0_0, _lh_update_Fork_1_0, _lh_update_Fork_2_0) -> 
      (match _lh_update_Fork_1_0 with
        | `LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0) -> 
          (if (_lh_update_arg2_0 < _lh_update_LH_P2_0_0) then
            (`Fork((((update_lh__d1 _lh_update_Fork_0_0) _lh_update_arg2_0) _lh_update_arg3_0), (`LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0)), _lh_update_Fork_2_0))
          else
            (if (_lh_update_arg2_0 = _lh_update_LH_P2_0_0) then
              (`Fork(_lh_update_Fork_0_0, (`LH_P2(_lh_update_arg2_0, _lh_update_arg3_0)), _lh_update_Fork_2_0))
            else
              (if (_lh_update_arg2_0 > _lh_update_LH_P2_0_0) then
                (`Fork(_lh_update_Fork_0_0, (`LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0)), (((update_lh__d1 _lh_update_Fork_2_0) _lh_update_arg2_0) _lh_update_arg3_0)))
              else
                ((failwith "error") (`LH_C('u', (`LH_C('p', (`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec or_lh__d1 _lh_or_arg1_0 =
  (_lh_or_arg1_0 99);;
let rec occurs_lh__d1 _lh_occurs_arg1_0 _lh_occurs_arg2_0 =
  (match _lh_occurs_arg2_0 with
    | `Term(_lh_occurs_Term_0_0, _lh_occurs_Term_1_0) -> 
      (or_lh__d1 (let rec _lh_listcomp_fun_7_1 = (fun _lh_listcomp_fun_para_4_5 -> 
        (match _lh_listcomp_fun_para_4_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_5, _lh_listcomp_fun_ls_t_4_5) -> 
            (let rec _lh_or_LH_C_1_0 = (_lh_listcomp_fun_7_1 _lh_listcomp_fun_ls_t_4_5) in
              (let rec _lh_or_LH_C_0_0 = ((occurs_lh__d1 _lh_occurs_arg1_0) _lh_listcomp_fun_ls_h_4_5) in
                (fun _lh_dummy_4_0 -> 
                  (if _lh_or_LH_C_0_0 then
                    true
                  else
                    (or_lh__d1 _lh_or_LH_C_1_0)))))
          | `LH_N -> 
            (fun _lh_dummy_4_1 -> 
              false))) in
        (_lh_listcomp_fun_7_1 _lh_occurs_Term_1_0)))
    | _ -> 
      (_lh_occurs_arg1_0 _lh_occurs_arg2_0));;
let rec compear_lh__d1 _lh_compear_arg1_0 _lh_compear_arg2_0 _lh_compear_arg3_0 =
  (match _lh_compear_arg2_0 with
    | `Term(_lh_compear_Term_0_0, _lh_compear_Term_1_0) -> 
      (match _lh_compear_arg3_0 with
        | `Term(_lh_compear_Term_0_1, _lh_compear_Term_1_1) -> 
          (if (_lh_compear_Term_0_0 = _lh_compear_Term_0_1) then
            ((matchList_lh__d1 _lh_compear_arg1_0) ((zip_lh__d1 _lh_compear_Term_1_0) _lh_compear_Term_1_1))
          else
            (failure_lh__d1 (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))
        | _ -> 
          (match _lh_compear_arg3_0 with
            | `Var(_lh_compear_Var_0_0) -> 
              (((compear_lh__d1 _lh_compear_arg1_0) (`Var(_lh_compear_Var_0_0))) _lh_compear_arg2_0)
            | _ -> 
              (failwith "error")))
    | `Var(_lh_compear_Var_0_1) -> 
      (match _lh_compear_arg3_0 with
        | `Var(_lh_compear_Var_0_2) -> 
          (if (_lh_compear_Var_0_1 <> _lh_compear_Var_0_2) then
            (success_lh__d1 (((update_lh__d1 _lh_compear_arg1_0) _lh_compear_Var_0_1) (`Var(_lh_compear_Var_0_2))))
          else
            (success_lh__d1 _lh_compear_arg1_0))
        | _ -> 
          (if (not ((occurs_lh__d1 (let rec _lh_occurs_Var_0_0 = _lh_compear_Var_0_1 in
            (fun _lh_occurs_arg2_1 -> 
              (match _lh_occurs_arg2_1 with
                | `Var(_lh_occurs_Var_0_1) -> 
                  (_lh_occurs_Var_0_0 = _lh_occurs_Var_0_1)
                | _ -> 
                  (match _lh_occurs_arg2_1 with
                    | `Var(_lh_occurs_Var_0_2) -> 
                      false
                    | _ -> 
                      (failwith "error")))))) _lh_compear_arg3_0)) then
            (success_lh__d1 (((update_lh__d1 _lh_compear_arg1_0) _lh_compear_Var_0_1) _lh_compear_arg3_0))
          else
            (failure_lh__d1 (`LH_C('o', (`LH_C('c', (`LH_C('c', (`LH_C('u', (`LH_C('r', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C(' ', (`LH_C('f', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C('d', (`LH_N))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (match _lh_compear_arg3_0 with
        | `Var(_lh_compear_Var_0_3) -> 
          (((compear_lh__d1 _lh_compear_arg1_0) (`Var(_lh_compear_Var_0_3))) _lh_compear_arg2_0)
        | _ -> 
          (failwith "error")))
and
matchList_lh__d1 _lh_matchList_arg1_0 _lh_matchList_arg2_0 =
  (match _lh_matchList_arg2_0 with
    | `LH_N -> 
      (success_lh__d1 _lh_matchList_arg1_0)
    | `LH_C(_lh_matchList_LH_C_0_0, _lh_matchList_LH_C_1_0) -> 
      (match _lh_matchList_LH_C_0_0 with
        | `LH_P2(_lh_matchList_LH_P2_0_0, _lh_matchList_LH_P2_1_0) -> 
          (let rec res_0 = (((match_lh__d1 _lh_matchList_arg1_0) _lh_matchList_LH_P2_0_0) _lh_matchList_LH_P2_1_0) in
            (if (fails_lh__d1 res_0) then
              res_0
            else
              ((matchList_lh__d1 (answer_lh__d1 res_0)) _lh_matchList_LH_C_1_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
match_lh__d1 _lh_match_arg1_0 _lh_match_arg2_0 _lh_match_arg3_0 =
  (((compear_lh__d1 _lh_match_arg1_0) ((subst_lh__d1 _lh_match_arg1_0) _lh_match_arg2_0)) ((subst_lh__d1 _lh_match_arg1_0) _lh_match_arg3_0));;
let rec try_lh__d1 _lh_try_arg1_1 _lh_try_arg2_0 _lh_try_arg3_1 _lh_try_arg4_1 =
  (((_lh_try_arg2_0 _lh_try_arg1_1) _lh_try_arg3_1) _lh_try_arg4_1);;
let rec relevant_lh__d1_d4 _lh_relevant_arg1_1_2 _lh_relevant_arg2_1_2 =
  (match _lh_relevant_arg2_1_2 with
    | `Term(_lh_relevant_Term_0_1_2, _lh_relevant_Term_1_1_2) -> 
      (let rec lookup_1_2 = ((find_lh__d1 _lh_relevant_arg1_1_2) _lh_relevant_Term_0_1_2) in
        (if (fails_lh__d1 lookup_1_2) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1_2)))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d5 _lh_ask_arg1_1_8 _lh_ask_arg2_1_8 _lh_ask_arg3_1_8 =
  (match _lh_ask_arg2_1_8 with
    | `Soln(_lh_ask_Soln_0_1_8, _lh_ask_Soln_1_1_8) -> 
      (let rec sp_1_8 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1_8) _lh_ask_arg3_1_8)) in
        (let rec ans_1_8 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1_8) sp_1_8)) in
          (`LH_C((`Question(sp_1_8)), (if ans_1_8 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1_8, _lh_ask_Soln_1_1_8)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d1_d7 _lh_relevant_arg1_0 _lh_relevant_arg2_0 =
  (match _lh_relevant_arg2_0 with
    | `Term(_lh_relevant_Term_0_0, _lh_relevant_Term_1_0) -> 
      (let rec lookup_0 = ((find_lh__d1 _lh_relevant_arg1_0) _lh_relevant_Term_0_0) in
        (if (fails_lh__d1 lookup_0) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_0)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d7 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d1_d1 _lh_relevant_arg1_2 _lh_relevant_arg2_2 =
  (match _lh_relevant_arg2_2 with
    | `Term(_lh_relevant_Term_0_2, _lh_relevant_Term_1_2) -> 
      (let rec lookup_2 = ((find_lh__d1 _lh_relevant_arg1_2) _lh_relevant_Term_0_2) in
        (if (fails_lh__d1 lookup_2) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_2)))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d7 _lh_ask_arg1_0 _lh_ask_arg2_0 _lh_ask_arg3_0 =
  (match _lh_ask_arg2_0 with
    | `Soln(_lh_ask_Soln_0_0, _lh_ask_Soln_1_0) -> 
      (let rec sp_0 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_0) _lh_ask_arg3_0)) in
        (let rec ans_0 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_0) sp_0)) in
          (`LH_C((`Question(sp_0)), (if ans_0 then
            (`LH_C((`Soln(_lh_ask_Soln_0_0, _lh_ask_Soln_1_0)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d4 _lh_relevant_arg1_3 _lh_relevant_arg2_3 =
  (match _lh_relevant_arg2_3 with
    | `Term(_lh_relevant_Term_0_3, _lh_relevant_Term_1_3) -> 
      (let rec lookup_3 = ((find_lh__d1 _lh_relevant_arg1_3) _lh_relevant_Term_0_3) in
        (if (fails_lh__d1 lookup_3) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_3)))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d8 _lh_ask_arg1_1 _lh_ask_arg2_1 _lh_ask_arg3_1 =
  (match _lh_ask_arg2_1 with
    | `Soln(_lh_ask_Soln_0_1, _lh_ask_Soln_1_1) -> 
      (let rec sp_1 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1) _lh_ask_arg3_1)) in
        (let rec ans_1 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1) sp_1)) in
          (`LH_C((`Question(sp_1)), (if ans_1 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1, _lh_ask_Soln_1_1)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d6 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d1 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d9 _lh_ask_arg1_2 _lh_ask_arg2_2 _lh_ask_arg3_2 =
  (match _lh_ask_arg2_2 with
    | `Soln(_lh_ask_Soln_0_2, _lh_ask_Soln_1_2) -> 
      (let rec sp_2 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_2) _lh_ask_arg3_2)) in
        (let rec ans_2 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_2) sp_2)) in
          (`LH_C((`Question(sp_2)), (if ans_2 then
            (`LH_C((`Soln(_lh_ask_Soln_0_2, _lh_ask_Soln_1_2)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d4 _lh_ask_arg1_3 _lh_ask_arg2_3 _lh_ask_arg3_3 =
  (match _lh_ask_arg2_3 with
    | `Soln(_lh_ask_Soln_0_3, _lh_ask_Soln_1_3) -> 
      (let rec sp_3 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_3) _lh_ask_arg3_3)) in
        (let rec ans_3 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_3) sp_3)) in
          (`LH_C((`Question(sp_3)), (if ans_3 then
            (`LH_C((`Soln(_lh_ask_Soln_0_3, _lh_ask_Soln_1_3)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d6 _lh_null_arg1_3 =
  (match _lh_null_arg1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_3, _lh_null_LH_C_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d1_d9 _lh_relevant_arg1_4 _lh_relevant_arg2_4 =
  (match _lh_relevant_arg2_4 with
    | `Term(_lh_relevant_Term_0_4, _lh_relevant_Term_1_4) -> 
      (let rec lookup_4 = ((find_lh__d1 _lh_relevant_arg1_4) _lh_relevant_Term_0_4) in
        (if (fails_lh__d1 lookup_4) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_4)))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d3 _lh_relevant_arg1_5 _lh_relevant_arg2_5 =
  (match _lh_relevant_arg2_5 with
    | `Term(_lh_relevant_Term_0_5, _lh_relevant_Term_1_5) -> 
      (let rec lookup_5 = ((find_lh__d1 _lh_relevant_arg1_5) _lh_relevant_Term_0_5) in
        (if (fails_lh__d1 lookup_5) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_5)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d4 _lh_null_arg1_4 =
  (match _lh_null_arg1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_4, _lh_null_LH_C_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d6 _lh_ask_arg1_4 _lh_ask_arg2_4 _lh_ask_arg3_4 =
  (match _lh_ask_arg2_4 with
    | `Soln(_lh_ask_Soln_0_4, _lh_ask_Soln_1_4) -> 
      (let rec sp_4 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_4) _lh_ask_arg3_4)) in
        (let rec ans_4 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_4) sp_4)) in
          (`LH_C((`Question(sp_4)), (if ans_4 then
            (`LH_C((`Soln(_lh_ask_Soln_0_4, _lh_ask_Soln_1_4)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1 _lh_ask_arg1_5 _lh_ask_arg2_5 _lh_ask_arg3_5 =
  (match _lh_ask_arg2_5 with
    | `Soln(_lh_ask_Soln_0_5, _lh_ask_Soln_1_5) -> 
      (let rec sp_5 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_5) _lh_ask_arg3_5)) in
        (let rec ans_5 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_5) sp_5)) in
          (`LH_C((`Question(sp_5)), (if ans_5 then
            (`LH_C((`Soln(_lh_ask_Soln_0_5, _lh_ask_Soln_1_5)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d1_d6 _lh_relevant_arg1_6 _lh_relevant_arg2_6 =
  (match _lh_relevant_arg2_6 with
    | `Term(_lh_relevant_Term_0_6, _lh_relevant_Term_1_6) -> 
      (let rec lookup_6 = ((find_lh__d1 _lh_relevant_arg1_6) _lh_relevant_Term_0_6) in
        (if (fails_lh__d1 lookup_6) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_6)))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d2 _lh_ask_arg1_6 _lh_ask_arg2_6 _lh_ask_arg3_6 =
  (match _lh_ask_arg2_6 with
    | `Soln(_lh_ask_Soln_0_6, _lh_ask_Soln_1_6) -> 
      (let rec sp_6 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_6) _lh_ask_arg3_6)) in
        (let rec ans_6 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_6) sp_6)) in
          (`LH_C((`Question(sp_6)), (if ans_6 then
            (`LH_C((`Soln(_lh_ask_Soln_0_6, _lh_ask_Soln_1_6)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d2 _lh_null_arg1_5 =
  (match _lh_null_arg1_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_5, _lh_null_LH_C_1_5) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d7 _lh_relevant_arg1_7 _lh_relevant_arg2_7 =
  (match _lh_relevant_arg2_7 with
    | `Term(_lh_relevant_Term_0_7, _lh_relevant_Term_1_7) -> 
      (let rec lookup_7 = ((find_lh__d1 _lh_relevant_arg1_7) _lh_relevant_Term_0_7) in
        (if (fails_lh__d1 lookup_7) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_7)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d3 _lh_null_arg1_6 =
  (match _lh_null_arg1_6 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_6, _lh_null_LH_C_1_6) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d0 _lh_ask_arg1_7 _lh_ask_arg2_7 _lh_ask_arg3_7 =
  (match _lh_ask_arg2_7 with
    | `Soln(_lh_ask_Soln_0_7, _lh_ask_Soln_1_7) -> 
      (let rec sp_7 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_7) _lh_ask_arg3_7)) in
        (let rec ans_7 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_7) sp_7)) in
          (`LH_C((`Question(sp_7)), (if ans_7 then
            (`LH_C((`Soln(_lh_ask_Soln_0_7, _lh_ask_Soln_1_7)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d7 _lh_null_arg1_7 =
  (match _lh_null_arg1_7 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_7, _lh_null_LH_C_1_7) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d3 _lh_ask_arg1_8 _lh_ask_arg2_8 _lh_ask_arg3_8 =
  (match _lh_ask_arg2_8 with
    | `Soln(_lh_ask_Soln_0_8, _lh_ask_Soln_1_8) -> 
      (let rec sp_8 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_8) _lh_ask_arg3_8)) in
        (let rec ans_8 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_8) sp_8)) in
          (`LH_C((`Question(sp_8)), (if ans_8 then
            (`LH_C((`Soln(_lh_ask_Soln_0_8, _lh_ask_Soln_1_8)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d8 _lh_null_arg1_8 =
  (match _lh_null_arg1_8 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_8, _lh_null_LH_C_1_8) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d8 _lh_ask_arg1_9 _lh_ask_arg2_9 _lh_ask_arg3_9 =
  (match _lh_ask_arg2_9 with
    | `Soln(_lh_ask_Soln_0_9, _lh_ask_Soln_1_9) -> 
      (let rec sp_9 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_9) _lh_ask_arg3_9)) in
        (let rec ans_9 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_9) sp_9)) in
          (`LH_C((`Question(sp_9)), (if ans_9 then
            (`LH_C((`Soln(_lh_ask_Soln_0_9, _lh_ask_Soln_1_9)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d2 _lh_null_arg1_9 =
  (match _lh_null_arg1_9 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_9, _lh_null_LH_C_1_9) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d5 _lh_null_arg1_1_0 =
  (match _lh_null_arg1_1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_0, _lh_null_LH_C_1_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d1_d8 _lh_relevant_arg1_8 _lh_relevant_arg2_8 =
  (match _lh_relevant_arg2_8 with
    | `Term(_lh_relevant_Term_0_8, _lh_relevant_Term_1_8) -> 
      (let rec lookup_8 = ((find_lh__d1 _lh_relevant_arg1_8) _lh_relevant_Term_0_8) in
        (if (fails_lh__d1 lookup_8) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_8)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d2_d0 _lh_null_arg1_1_2 =
  (match _lh_null_arg1_1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_2, _lh_null_LH_C_1_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d9 _lh_null_arg1_1_1 =
  (match _lh_null_arg1_1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_1, _lh_null_LH_C_1_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d4 _lh_null_arg1_1_3 =
  (match _lh_null_arg1_1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_3, _lh_null_LH_C_1_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d8 _lh_relevant_arg1_9 _lh_relevant_arg2_9 =
  (match _lh_relevant_arg2_9 with
    | `Term(_lh_relevant_Term_0_9, _lh_relevant_Term_1_9) -> 
      (let rec lookup_9 = ((find_lh__d1 _lh_relevant_arg1_9) _lh_relevant_Term_0_9) in
        (if (fails_lh__d1 lookup_9) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_9)))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d1_d3 _lh_relevant_arg1_1_0 _lh_relevant_arg2_1_0 =
  (match _lh_relevant_arg2_1_0 with
    | `Term(_lh_relevant_Term_0_1_0, _lh_relevant_Term_1_1_0) -> 
      (let rec lookup_1_0 = ((find_lh__d1 _lh_relevant_arg1_1_0) _lh_relevant_Term_0_1_0) in
        (if (fails_lh__d1 lookup_1_0) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1_0)))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d1_d0 _lh_relevant_arg1_1_1 _lh_relevant_arg2_1_1 =
  (match _lh_relevant_arg2_1_1 with
    | `Term(_lh_relevant_Term_0_1_1, _lh_relevant_Term_1_1_1) -> 
      (let rec lookup_1_1 = ((find_lh__d1 _lh_relevant_arg1_1_1) _lh_relevant_Term_0_1_1) in
        (if (fails_lh__d1 lookup_1_1) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1_1)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d3 _lh_null_arg1_1_4 =
  (match _lh_null_arg1_1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_4, _lh_null_LH_C_1_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d2 _lh_ask_arg1_1_0 _lh_ask_arg2_1_0 _lh_ask_arg3_1_0 =
  (match _lh_ask_arg2_1_0 with
    | `Soln(_lh_ask_Soln_0_1_0, _lh_ask_Soln_1_1_0) -> 
      (let rec sp_1_0 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1_0) _lh_ask_arg3_1_0)) in
        (let rec ans_1_0 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1_0) sp_1_0)) in
          (`LH_C((`Question(sp_1_0)), (if ans_1_0 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1_0, _lh_ask_Soln_1_1_0)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d6 _lh_ask_arg1_1_1 _lh_ask_arg2_1_1 _lh_ask_arg3_1_1 =
  (match _lh_ask_arg2_1_1 with
    | `Soln(_lh_ask_Soln_0_1_1, _lh_ask_Soln_1_1_1) -> 
      (let rec sp_1_1 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1_1) _lh_ask_arg3_1_1)) in
        (let rec ans_1_1 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1_1) sp_1_1)) in
          (`LH_C((`Question(sp_1_1)), (if ans_1_1 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1_1, _lh_ask_Soln_1_1_1)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d9 _lh_ask_arg1_1_3 _lh_ask_arg2_1_3 _lh_ask_arg3_1_3 =
  (match _lh_ask_arg2_1_3 with
    | `Soln(_lh_ask_Soln_0_1_3, _lh_ask_Soln_1_1_3) -> 
      (let rec sp_1_3 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1_3) _lh_ask_arg3_1_3)) in
        (let rec ans_1_3 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1_3) sp_1_3)) in
          (`LH_C((`Question(sp_1_3)), (if ans_1_3 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1_3, _lh_ask_Soln_1_1_3)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d5 _lh_null_arg1_1_5 =
  (match _lh_null_arg1_1_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_5, _lh_null_LH_C_1_1_5) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d5 _lh_ask_arg1_1_2 _lh_ask_arg2_1_2 _lh_ask_arg3_1_2 =
  (match _lh_ask_arg2_1_2 with
    | `Soln(_lh_ask_Soln_0_1_2, _lh_ask_Soln_1_1_2) -> 
      (let rec sp_1_2 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1_2) _lh_ask_arg3_1_2)) in
        (let rec ans_1_2 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1_2) sp_1_2)) in
          (`LH_C((`Question(sp_1_2)), (if ans_1_2 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1_2, _lh_ask_Soln_1_1_2)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d2 _lh_relevant_arg1_1_3 _lh_relevant_arg2_1_3 =
  (match _lh_relevant_arg2_1_3 with
    | `Term(_lh_relevant_Term_0_1_3, _lh_relevant_Term_1_1_3) -> 
      (let rec lookup_1_3 = ((find_lh__d1 _lh_relevant_arg1_1_3) _lh_relevant_Term_0_1_3) in
        (if (fails_lh__d1 lookup_1_3) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1_3)))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d3 _lh_ask_arg1_1_4 _lh_ask_arg2_1_4 _lh_ask_arg3_1_4 =
  (match _lh_ask_arg2_1_4 with
    | `Soln(_lh_ask_Soln_0_1_4, _lh_ask_Soln_1_1_4) -> 
      (let rec sp_1_4 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1_4) _lh_ask_arg3_1_4)) in
        (let rec ans_1_4 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1_4) sp_1_4)) in
          (`LH_C((`Question(sp_1_4)), (if ans_1_4 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1_4, _lh_ask_Soln_1_1_4)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d1 _lh_relevant_arg1_1_4 _lh_relevant_arg2_1_4 =
  (match _lh_relevant_arg2_1_4 with
    | `Term(_lh_relevant_Term_0_1_4, _lh_relevant_Term_1_1_4) -> 
      (let rec lookup_1_4 = ((find_lh__d1 _lh_relevant_arg1_1_4) _lh_relevant_Term_0_1_4) in
        (if (fails_lh__d1 lookup_1_4) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1_4)))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d1_d5 _lh_relevant_arg1_1_5 _lh_relevant_arg2_1_5 =
  (match _lh_relevant_arg2_1_5 with
    | `Term(_lh_relevant_Term_0_1_5, _lh_relevant_Term_1_1_5) -> 
      (let rec lookup_1_5 = ((find_lh__d1 _lh_relevant_arg1_1_5) _lh_relevant_Term_0_1_5) in
        (if (fails_lh__d1 lookup_1_5) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1_5)))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d2_d0 _lh_relevant_arg1_1_7 _lh_relevant_arg2_1_7 =
  (match _lh_relevant_arg2_1_7 with
    | `Term(_lh_relevant_Term_0_1_7, _lh_relevant_Term_1_1_7) -> 
      (let rec lookup_1_8 = ((find_lh__d1 _lh_relevant_arg1_1_7) _lh_relevant_Term_0_1_7) in
        (if (fails_lh__d1 lookup_1_8) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1_8)))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d4 _lh_ask_arg1_1_5 _lh_ask_arg2_1_5 _lh_ask_arg3_1_5 =
  (match _lh_ask_arg2_1_5 with
    | `Soln(_lh_ask_Soln_0_1_5, _lh_ask_Soln_1_1_5) -> 
      (let rec sp_1_5 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1_5) _lh_ask_arg3_1_5)) in
        (let rec ans_1_5 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1_5) sp_1_5)) in
          (`LH_C((`Question(sp_1_5)), (if ans_1_5 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1_5, _lh_ask_Soln_1_1_5)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d6 _lh_relevant_arg1_1_6 _lh_relevant_arg2_1_6 =
  (match _lh_relevant_arg2_1_6 with
    | `Term(_lh_relevant_Term_0_1_6, _lh_relevant_Term_1_1_6) -> 
      (let rec lookup_1_7 = ((find_lh__d1 _lh_relevant_arg1_1_6) _lh_relevant_Term_0_1_6) in
        (if (fails_lh__d1 lookup_1_7) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1_7)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1 _lh_null_arg1_1_6 =
  (match _lh_null_arg1_1_6 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_6, _lh_null_LH_C_1_1_6) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d8 _lh_null_arg1_1_7 =
  (match _lh_null_arg1_1_7 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_7, _lh_null_LH_C_1_1_7) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d1_d1 _lh_ask_arg1_1_6 _lh_ask_arg2_1_6 _lh_ask_arg3_1_6 =
  (match _lh_ask_arg2_1_6 with
    | `Soln(_lh_ask_Soln_0_1_6, _lh_ask_Soln_1_1_6) -> 
      (let rec sp_1_6 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1_6) _lh_ask_arg3_1_6)) in
        (let rec ans_1_6 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1_6) sp_1_6)) in
          (`LH_C((`Question(sp_1_6)), (if ans_1_6 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1_6, _lh_ask_Soln_1_1_6)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec ask_lh__d7 _lh_ask_arg1_1_7 _lh_ask_arg2_1_7 _lh_ask_arg3_1_7 =
  (match _lh_ask_arg2_1_7 with
    | `Soln(_lh_ask_Soln_0_1_7, _lh_ask_Soln_1_1_7) -> 
      (let rec sp_1_7 = (showPhrase_lh__d1 ((subst_lh__d1 _lh_ask_Soln_0_1_7) _lh_ask_arg3_1_7)) in
        (let rec ans_1_7 = (answer_lh__d1 ((find_lh__d1 _lh_ask_arg1_1_7) sp_1_7)) in
          (`LH_C((`Question(sp_1_7)), (if ans_1_7 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1_7, _lh_ask_Soln_1_1_7)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d5 _lh_relevant_arg1_1_8 _lh_relevant_arg2_1_8 =
  (match _lh_relevant_arg2_1_8 with
    | `Term(_lh_relevant_Term_0_1_8, _lh_relevant_Term_1_1_8) -> 
      (let rec lookup_1_9 = ((find_lh__d1 _lh_relevant_arg1_1_8) _lh_relevant_Term_0_1_8) in
        (if (fails_lh__d1 lookup_1_9) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_1_9)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1_d0 _lh_null_arg1_1_8 =
  (match _lh_null_arg1_1_8 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_8, _lh_null_LH_C_1_1_8) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec relevant_lh__d9 _lh_relevant_arg1_1_9 _lh_relevant_arg2_1_9 =
  (match _lh_relevant_arg2_1_9 with
    | `Term(_lh_relevant_Term_0_1_9, _lh_relevant_Term_1_1_9) -> 
      (let rec lookup_2_0 = ((find_lh__d1 _lh_relevant_arg1_1_9) _lh_relevant_Term_0_1_9) in
        (if (fails_lh__d1 lookup_2_0) then
          (`LH_N)
        else
          (answer_lh__d1 lookup_2_0)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d9 _lh_null_arg1_1_9 =
  (match _lh_null_arg1_1_9 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_9, _lh_null_LH_C_1_1_9) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec freshCopy_lh__d1 _lh_freshCopy_arg1_0 _lh_freshCopy_arg2_0 =
  (match _lh_freshCopy_arg1_0 with
    | `Soln(_lh_freshCopy_Soln_0_0, _lh_freshCopy_Soln_1_0) -> 
      (let rec xs_7 = (vars_lh__d1 _lh_freshCopy_arg2_0) in
        (let rec n_1 = (length_lh__d1 xs_7) in
          (let rec tab_0 = ((updateList_lh__d1 newTable_lh__d3) ((zip_lh__d1 xs_7) (let rec _lh_listcomp_fun_4_2 = (fun _lh_listcomp_fun_para_3_2 -> 
            (match _lh_listcomp_fun_para_3_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_3_0) -> 
                (`LH_C((`Var(_lh_listcomp_fun_ls_h_3_0)), (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_0)))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_4_2 ((take_lh__d1 n_1) _lh_freshCopy_Soln_1_0))))) in
            (`LH_P2((let rec _lh_try_Soln_1_0 = ((drop_lh__d1 n_1) _lh_freshCopy_Soln_1_0) in
              (let rec _lh_try_Soln_0_0 = _lh_freshCopy_Soln_0_0 in
                (fun _lh_try_arg1_0 _lh_try_arg3_0 _lh_try_arg4_0 -> 
                  (match _lh_try_arg4_0 with
                    | `Term(_lh_try_Term_0_0, _lh_try_Term_1_0) -> 
                      (match _lh_try_Term_0_0 with
                        | `LH_C(_lh_try_LH_C_0_0, _lh_try_LH_C_1_0) -> 
                          (match _lh_try_LH_C_0_0 with
                            | 'i' -> 
                              (match _lh_try_LH_C_1_0 with
                                | `LH_C(_lh_try_LH_C_0_1, _lh_try_LH_C_1_1) -> 
                                  (match _lh_try_LH_C_0_1 with
                                    | 'f' -> 
                                      (match _lh_try_LH_C_1_1 with
                                        | `LH_N -> 
                                          (match _lh_try_Term_1_0 with
                                            | `LH_C(_lh_try_LH_C_0_2, _lh_try_LH_C_1_2) -> 
                                              (match _lh_try_LH_C_1_2 with
                                                | `LH_C(_lh_try_LH_C_0_3, _lh_try_LH_C_1_3) -> 
                                                  (match _lh_try_LH_C_1_3 with
                                                    | `LH_N -> 
                                                      (let rec m_0 = (((match_lh__d1 _lh_try_Soln_0_0) _lh_try_arg3_0) _lh_try_LH_C_0_2) in
                                                        (if (fails_lh__d1 m_0) then
                                                          (`LH_N)
                                                        else
                                                          (((solve_lh__d1 _lh_try_arg1_0) (`Soln((answer_lh__d1 m_0), _lh_try_Soln_1_0))) _lh_try_LH_C_0_3)))
                                                    | _ -> 
                                                      (failwith "error"))
                                                | _ -> 
                                                  (failwith "error"))
                                            | _ -> 
                                              (failwith "error"))
                                        | _ -> 
                                          (failwith "error"))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))), ((subst_lh__d1 tab_0) _lh_freshCopy_arg2_0))))))
    | _ -> 
      (failwith "error"))
and
lookUp_lh__d1 _lh_lookUp_arg1_2_4 _lh_lookUp_arg2_8 _lh_lookUp_arg3_2_4 _lh_lookUp_arg4_8 =
  (let rec copies_8 = (let rec _lh_listcomp_fun_5_5 = (fun _lh_listcomp_fun_para_3_9 -> 
    (match _lh_listcomp_fun_para_3_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_3_7, _lh_listcomp_fun_ls_t_3_7) -> 
        (let rec _lh_listcomp_fun_ls_t_3_8 = (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_3_7) in
          (let rec _lh_listcomp_fun_ls_h_3_8 = ((freshCopy_lh__d1 _lh_lookUp_arg2_8) _lh_listcomp_fun_ls_h_3_7) in
            (fun _lh_listcomp_fun_5_6 _lh_lookUp_arg1_2_5 _lh_lookUp_arg3_2_5 -> 
              (match _lh_listcomp_fun_ls_h_3_8 with
                | `LH_P2(_lh_lookUp_LH_P2_0_8, _lh_lookUp_LH_P2_1_8) -> 
                  (let rec t_6_8 = (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_3_8) in
                    (let rec h_6_8 = ((((try_lh__d1 _lh_lookUp_arg1_2_5) _lh_lookUp_LH_P2_0_8) _lh_lookUp_arg3_2_5) _lh_lookUp_LH_P2_1_8) in
                      (fun _lh_dummy_3_4 -> 
                        ((mappend_lh__d9 h_6_8) (concat_lh__d1 t_6_8)))))
                | _ -> 
                  (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_3_8)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_5_7 _lh_lookUp_arg1_2_6 _lh_lookUp_arg3_2_6 _lh_dummy_3_5 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_5_5 _lh_lookUp_arg4_8)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_5_8 = (fun _lh_listcomp_fun_para_4_0 -> 
      (((_lh_listcomp_fun_para_4_0 _lh_listcomp_fun_5_8) _lh_lookUp_arg1_2_4) _lh_lookUp_arg3_2_4)) in
      (_lh_listcomp_fun_5_8 copies_8))))
and
lookUp_lh__d1_d0 _lh_lookUp_arg1_2_7 _lh_lookUp_arg2_9 _lh_lookUp_arg3_2_7 _lh_lookUp_arg4_9 =
  (let rec copies_9 = (let rec _lh_listcomp_fun_5_9 = (fun _lh_listcomp_fun_para_4_1 -> 
    (match _lh_listcomp_fun_para_4_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_3_9, _lh_listcomp_fun_ls_t_3_9) -> 
        (let rec _lh_listcomp_fun_ls_t_4_0 = (_lh_listcomp_fun_5_9 _lh_listcomp_fun_ls_t_3_9) in
          (let rec _lh_listcomp_fun_ls_h_4_0 = ((freshCopy_lh__d1 _lh_lookUp_arg2_9) _lh_listcomp_fun_ls_h_3_9) in
            (fun _lh_listcomp_fun_6_0 _lh_lookUp_arg1_2_8 _lh_lookUp_arg3_2_8 -> 
              (match _lh_listcomp_fun_ls_h_4_0 with
                | `LH_P2(_lh_lookUp_LH_P2_0_9, _lh_lookUp_LH_P2_1_9) -> 
                  (let rec t_6_9 = (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_4_0) in
                    (let rec h_6_9 = ((((try_lh__d1 _lh_lookUp_arg1_2_8) _lh_lookUp_LH_P2_0_9) _lh_lookUp_arg3_2_8) _lh_lookUp_LH_P2_1_9) in
                      (fun _lh_dummy_3_6 -> 
                        ((mappend_lh__d9 h_6_9) (concat_lh__d1 t_6_9)))))
                | _ -> 
                  (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_4_0)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_6_1 _lh_lookUp_arg1_2_9 _lh_lookUp_arg3_2_9 _lh_dummy_3_7 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_5_9 _lh_lookUp_arg4_9)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_6_2 = (fun _lh_listcomp_fun_para_4_2 -> 
      (((_lh_listcomp_fun_para_4_2 _lh_listcomp_fun_6_2) _lh_lookUp_arg1_2_7) _lh_lookUp_arg3_2_7)) in
      (_lh_listcomp_fun_6_2 copies_9))))
and
lookUp_lh__d1_d1 _lh_lookUp_arg1_4_5 _lh_lookUp_arg2_1_5 _lh_lookUp_arg3_4_5 _lh_lookUp_arg4_1_5 =
  (let rec copies_1_5 = (let rec _lh_listcomp_fun_8_9 = (fun _lh_listcomp_fun_para_5_5 -> 
    (match _lh_listcomp_fun_para_5_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_5_5, _lh_listcomp_fun_ls_t_5_5) -> 
        (let rec _lh_listcomp_fun_ls_t_5_6 = (_lh_listcomp_fun_8_9 _lh_listcomp_fun_ls_t_5_5) in
          (let rec _lh_listcomp_fun_ls_h_5_6 = ((freshCopy_lh__d1 _lh_lookUp_arg2_1_5) _lh_listcomp_fun_ls_h_5_5) in
            (fun _lh_listcomp_fun_9_0 _lh_lookUp_arg1_4_6 _lh_lookUp_arg3_4_6 -> 
              (match _lh_listcomp_fun_ls_h_5_6 with
                | `LH_P2(_lh_lookUp_LH_P2_0_1_5, _lh_lookUp_LH_P2_1_1_5) -> 
                  (let rec t_7_9 = (_lh_listcomp_fun_9_0 _lh_listcomp_fun_ls_t_5_6) in
                    (let rec h_7_9 = ((((try_lh__d1 _lh_lookUp_arg1_4_6) _lh_lookUp_LH_P2_0_1_5) _lh_lookUp_arg3_4_6) _lh_lookUp_LH_P2_1_1_5) in
                      (fun _lh_dummy_5_0 -> 
                        ((mappend_lh__d9 h_7_9) (concat_lh__d1 t_7_9)))))
                | _ -> 
                  (_lh_listcomp_fun_9_0 _lh_listcomp_fun_ls_t_5_6)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_9_1 _lh_lookUp_arg1_4_7 _lh_lookUp_arg3_4_7 _lh_dummy_5_1 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_8_9 _lh_lookUp_arg4_1_5)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_9_2 = (fun _lh_listcomp_fun_para_5_6 -> 
      (((_lh_listcomp_fun_para_5_6 _lh_listcomp_fun_9_2) _lh_lookUp_arg1_4_5) _lh_lookUp_arg3_4_5)) in
      (_lh_listcomp_fun_9_2 copies_1_5))))
and
lookUp_lh__d1_d2 _lh_lookUp_arg1_3_9 _lh_lookUp_arg2_1_3 _lh_lookUp_arg3_3_9 _lh_lookUp_arg4_1_3 =
  (let rec copies_1_3 = (let rec _lh_listcomp_fun_8_1 = (fun _lh_listcomp_fun_para_5_1 -> 
    (match _lh_listcomp_fun_para_5_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_5_1, _lh_listcomp_fun_ls_t_5_1) -> 
        (let rec _lh_listcomp_fun_ls_t_5_2 = (_lh_listcomp_fun_8_1 _lh_listcomp_fun_ls_t_5_1) in
          (let rec _lh_listcomp_fun_ls_h_5_2 = ((freshCopy_lh__d1 _lh_lookUp_arg2_1_3) _lh_listcomp_fun_ls_h_5_1) in
            (fun _lh_listcomp_fun_8_2 _lh_lookUp_arg1_4_0 _lh_lookUp_arg3_4_0 -> 
              (match _lh_listcomp_fun_ls_h_5_2 with
                | `LH_P2(_lh_lookUp_LH_P2_0_1_3, _lh_lookUp_LH_P2_1_1_3) -> 
                  (let rec t_7_6 = (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_5_2) in
                    (let rec h_7_6 = ((((try_lh__d1 _lh_lookUp_arg1_4_0) _lh_lookUp_LH_P2_0_1_3) _lh_lookUp_arg3_4_0) _lh_lookUp_LH_P2_1_1_3) in
                      (fun _lh_dummy_4_6 -> 
                        ((mappend_lh__d9 h_7_6) (concat_lh__d1 t_7_6)))))
                | _ -> 
                  (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_5_2)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_8_3 _lh_lookUp_arg1_4_1 _lh_lookUp_arg3_4_1 _lh_dummy_4_7 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_8_1 _lh_lookUp_arg4_1_3)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_8_4 = (fun _lh_listcomp_fun_para_5_2 -> 
      (((_lh_listcomp_fun_para_5_2 _lh_listcomp_fun_8_4) _lh_lookUp_arg1_3_9) _lh_lookUp_arg3_3_9)) in
      (_lh_listcomp_fun_8_4 copies_1_3))))
and
lookUp_lh__d1_d3 _lh_lookUp_arg1_1_8 _lh_lookUp_arg2_6 _lh_lookUp_arg3_1_8 _lh_lookUp_arg4_6 =
  (let rec copies_6 = (let rec _lh_listcomp_fun_4_7 = (fun _lh_listcomp_fun_para_3_5 -> 
    (match _lh_listcomp_fun_para_3_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_3_3, _lh_listcomp_fun_ls_t_3_3) -> 
        (let rec _lh_listcomp_fun_ls_t_3_4 = (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_3_3) in
          (let rec _lh_listcomp_fun_ls_h_3_4 = ((freshCopy_lh__d1 _lh_lookUp_arg2_6) _lh_listcomp_fun_ls_h_3_3) in
            (fun _lh_listcomp_fun_4_8 _lh_lookUp_arg1_1_9 _lh_lookUp_arg3_1_9 -> 
              (match _lh_listcomp_fun_ls_h_3_4 with
                | `LH_P2(_lh_lookUp_LH_P2_0_6, _lh_lookUp_LH_P2_1_6) -> 
                  (let rec t_6_1 = (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_3_4) in
                    (let rec h_6_1 = ((((try_lh__d1 _lh_lookUp_arg1_1_9) _lh_lookUp_LH_P2_0_6) _lh_lookUp_arg3_1_9) _lh_lookUp_LH_P2_1_6) in
                      (fun _lh_dummy_3_0 -> 
                        ((mappend_lh__d9 h_6_1) (concat_lh__d1 t_6_1)))))
                | _ -> 
                  (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_3_4)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_4_9 _lh_lookUp_arg1_2_0 _lh_lookUp_arg3_2_0 _lh_dummy_3_1 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_4_7 _lh_lookUp_arg4_6)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_5_0 = (fun _lh_listcomp_fun_para_3_6 -> 
      (((_lh_listcomp_fun_para_3_6 _lh_listcomp_fun_5_0) _lh_lookUp_arg1_1_8) _lh_lookUp_arg3_1_8)) in
      (_lh_listcomp_fun_5_0 copies_6))))
and
lookUp_lh__d1_d4 _lh_lookUp_arg1_6 _lh_lookUp_arg2_2 _lh_lookUp_arg3_6 _lh_lookUp_arg4_2 =
  (let rec copies_2 = (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_3 -> 
    (match _lh_listcomp_fun_para_1_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
        (let rec _lh_listcomp_fun_ls_t_1_2 = (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_1) in
          (let rec _lh_listcomp_fun_ls_h_1_2 = ((freshCopy_lh__d1 _lh_lookUp_arg2_2) _lh_listcomp_fun_ls_h_1_1) in
            (fun _lh_listcomp_fun_1_8 _lh_lookUp_arg1_7 _lh_lookUp_arg3_7 -> 
              (match _lh_listcomp_fun_ls_h_1_2 with
                | `LH_P2(_lh_lookUp_LH_P2_0_2, _lh_lookUp_LH_P2_1_2) -> 
                  (let rec t_4_4 = (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_2) in
                    (let rec h_4_4 = ((((try_lh__d1 _lh_lookUp_arg1_7) _lh_lookUp_LH_P2_0_2) _lh_lookUp_arg3_7) _lh_lookUp_LH_P2_1_2) in
                      (fun _lh_dummy_4 -> 
                        ((mappend_lh__d9 h_4_4) (concat_lh__d1 t_4_4)))))
                | _ -> 
                  (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_2)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_1_9 _lh_lookUp_arg1_8 _lh_lookUp_arg3_8 _lh_dummy_5 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_1_7 _lh_lookUp_arg4_2)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_1_4 -> 
      (((_lh_listcomp_fun_para_1_4 _lh_listcomp_fun_2_0) _lh_lookUp_arg1_6) _lh_lookUp_arg3_6)) in
      (_lh_listcomp_fun_2_0 copies_2))))
and
lookUp_lh__d1_d5 _lh_lookUp_arg1_4_8 _lh_lookUp_arg2_1_6 _lh_lookUp_arg3_4_8 _lh_lookUp_arg4_1_6 =
  (let rec copies_1_6 = (let rec _lh_listcomp_fun_9_4 = (fun _lh_listcomp_fun_para_5_8 -> 
    (match _lh_listcomp_fun_para_5_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_5_8, _lh_listcomp_fun_ls_t_5_8) -> 
        (let rec _lh_listcomp_fun_ls_t_5_9 = (_lh_listcomp_fun_9_4 _lh_listcomp_fun_ls_t_5_8) in
          (let rec _lh_listcomp_fun_ls_h_5_9 = ((freshCopy_lh__d1 _lh_lookUp_arg2_1_6) _lh_listcomp_fun_ls_h_5_8) in
            (fun _lh_listcomp_fun_9_5 _lh_lookUp_arg1_4_9 _lh_lookUp_arg3_4_9 -> 
              (match _lh_listcomp_fun_ls_h_5_9 with
                | `LH_P2(_lh_lookUp_LH_P2_0_1_6, _lh_lookUp_LH_P2_1_1_6) -> 
                  (let rec t_8_1 = (_lh_listcomp_fun_9_5 _lh_listcomp_fun_ls_t_5_9) in
                    (let rec h_8_1 = ((((try_lh__d1 _lh_lookUp_arg1_4_9) _lh_lookUp_LH_P2_0_1_6) _lh_lookUp_arg3_4_9) _lh_lookUp_LH_P2_1_1_6) in
                      (fun _lh_dummy_5_4 -> 
                        ((mappend_lh__d9 h_8_1) (concat_lh__d1 t_8_1)))))
                | _ -> 
                  (_lh_listcomp_fun_9_5 _lh_listcomp_fun_ls_t_5_9)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_9_6 _lh_lookUp_arg1_5_0 _lh_lookUp_arg3_5_0 _lh_dummy_5_5 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_9_4 _lh_lookUp_arg4_1_6)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_9_7 = (fun _lh_listcomp_fun_para_5_9 -> 
      (((_lh_listcomp_fun_para_5_9 _lh_listcomp_fun_9_7) _lh_lookUp_arg1_4_8) _lh_lookUp_arg3_4_8)) in
      (_lh_listcomp_fun_9_7 copies_1_6))))
and
lookUp_lh__d1_d6 _lh_lookUp_arg1_2_1 _lh_lookUp_arg2_7 _lh_lookUp_arg3_2_1 _lh_lookUp_arg4_7 =
  (let rec copies_7 = (let rec _lh_listcomp_fun_5_1 = (fun _lh_listcomp_fun_para_3_7 -> 
    (match _lh_listcomp_fun_para_3_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_3_5, _lh_listcomp_fun_ls_t_3_5) -> 
        (let rec _lh_listcomp_fun_ls_t_3_6 = (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_3_5) in
          (let rec _lh_listcomp_fun_ls_h_3_6 = ((freshCopy_lh__d1 _lh_lookUp_arg2_7) _lh_listcomp_fun_ls_h_3_5) in
            (fun _lh_listcomp_fun_5_2 _lh_lookUp_arg1_2_2 _lh_lookUp_arg3_2_2 -> 
              (match _lh_listcomp_fun_ls_h_3_6 with
                | `LH_P2(_lh_lookUp_LH_P2_0_7, _lh_lookUp_LH_P2_1_7) -> 
                  (let rec t_6_2 = (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_3_6) in
                    (let rec h_6_2 = ((((try_lh__d1 _lh_lookUp_arg1_2_2) _lh_lookUp_LH_P2_0_7) _lh_lookUp_arg3_2_2) _lh_lookUp_LH_P2_1_7) in
                      (fun _lh_dummy_3_2 -> 
                        ((mappend_lh__d9 h_6_2) (concat_lh__d1 t_6_2)))))
                | _ -> 
                  (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_3_6)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_5_3 _lh_lookUp_arg1_2_3 _lh_lookUp_arg3_2_3 _lh_dummy_3_3 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_5_1 _lh_lookUp_arg4_7)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_5_4 = (fun _lh_listcomp_fun_para_3_8 -> 
      (((_lh_listcomp_fun_para_3_8 _lh_listcomp_fun_5_4) _lh_lookUp_arg1_2_1) _lh_lookUp_arg3_2_1)) in
      (_lh_listcomp_fun_5_4 copies_7))))
and
lookUp_lh__d1_d7 _lh_lookUp_arg1_3 _lh_lookUp_arg2_1 _lh_lookUp_arg3_3 _lh_lookUp_arg4_1 =
  (let rec copies_1 = (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
        (let rec _lh_listcomp_fun_ls_t_9 = (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_8) in
          (let rec _lh_listcomp_fun_ls_h_9 = ((freshCopy_lh__d1 _lh_lookUp_arg2_1) _lh_listcomp_fun_ls_h_8) in
            (fun _lh_listcomp_fun_1_1 _lh_lookUp_arg1_4 _lh_lookUp_arg3_4 -> 
              (match _lh_listcomp_fun_ls_h_9 with
                | `LH_P2(_lh_lookUp_LH_P2_0_1, _lh_lookUp_LH_P2_1_1) -> 
                  (let rec t_3_0 = (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_9) in
                    (let rec h_3_0 = ((((try_lh__d1 _lh_lookUp_arg1_4) _lh_lookUp_LH_P2_0_1) _lh_lookUp_arg3_4) _lh_lookUp_LH_P2_1_1) in
                      (fun _lh_dummy_2 -> 
                        ((mappend_lh__d9 h_3_0) (concat_lh__d1 t_3_0)))))
                | _ -> 
                  (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_9)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_1_2 _lh_lookUp_arg1_5 _lh_lookUp_arg3_5 _lh_dummy_3 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_1_0 _lh_lookUp_arg4_1)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_9 -> 
      (((_lh_listcomp_fun_para_9 _lh_listcomp_fun_1_3) _lh_lookUp_arg1_3) _lh_lookUp_arg3_3)) in
      (_lh_listcomp_fun_1_3 copies_1))))
and
lookUp_lh__d2 _lh_lookUp_arg1_3_3 _lh_lookUp_arg2_1_1 _lh_lookUp_arg3_3_3 _lh_lookUp_arg4_1_1 =
  (let rec copies_1_1 = (let rec _lh_listcomp_fun_7_2 = (fun _lh_listcomp_fun_para_4_6 -> 
    (match _lh_listcomp_fun_para_4_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_6, _lh_listcomp_fun_ls_t_4_6) -> 
        (let rec _lh_listcomp_fun_ls_t_4_7 = (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_4_6) in
          (let rec _lh_listcomp_fun_ls_h_4_7 = ((freshCopy_lh__d1 _lh_lookUp_arg2_1_1) _lh_listcomp_fun_ls_h_4_6) in
            (fun _lh_listcomp_fun_7_3 _lh_lookUp_arg1_3_4 _lh_lookUp_arg3_3_4 -> 
              (match _lh_listcomp_fun_ls_h_4_7 with
                | `LH_P2(_lh_lookUp_LH_P2_0_1_1, _lh_lookUp_LH_P2_1_1_1) -> 
                  (let rec t_7_2 = (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_4_7) in
                    (let rec h_7_2 = ((((try_lh__d1 _lh_lookUp_arg1_3_4) _lh_lookUp_LH_P2_0_1_1) _lh_lookUp_arg3_3_4) _lh_lookUp_LH_P2_1_1_1) in
                      (fun _lh_dummy_4_2 -> 
                        ((mappend_lh__d9 h_7_2) (concat_lh__d1 t_7_2)))))
                | _ -> 
                  (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_4_7)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_7_4 _lh_lookUp_arg1_3_5 _lh_lookUp_arg3_3_5 _lh_dummy_4_3 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_7_2 _lh_lookUp_arg4_1_1)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_7_5 = (fun _lh_listcomp_fun_para_4_7 -> 
      (((_lh_listcomp_fun_para_4_7 _lh_listcomp_fun_7_5) _lh_lookUp_arg1_3_3) _lh_lookUp_arg3_3_3)) in
      (_lh_listcomp_fun_7_5 copies_1_1))))
and
lookUp_lh__d3 _lh_lookUp_arg1_1_5 _lh_lookUp_arg2_5 _lh_lookUp_arg3_1_5 _lh_lookUp_arg4_5 =
  (let rec copies_5 = (let rec _lh_listcomp_fun_4_3 = (fun _lh_listcomp_fun_para_3_3 -> 
    (match _lh_listcomp_fun_para_3_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3_1, _lh_listcomp_fun_ls_t_3_1) -> 
        (let rec _lh_listcomp_fun_ls_t_3_2 = (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_3_1) in
          (let rec _lh_listcomp_fun_ls_h_3_2 = ((freshCopy_lh__d1 _lh_lookUp_arg2_5) _lh_listcomp_fun_ls_h_3_1) in
            (fun _lh_listcomp_fun_4_4 _lh_lookUp_arg1_1_6 _lh_lookUp_arg3_1_6 -> 
              (match _lh_listcomp_fun_ls_h_3_2 with
                | `LH_P2(_lh_lookUp_LH_P2_0_5, _lh_lookUp_LH_P2_1_5) -> 
                  (let rec t_6_0 = (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_3_2) in
                    (let rec h_6_0 = ((((try_lh__d1 _lh_lookUp_arg1_1_6) _lh_lookUp_LH_P2_0_5) _lh_lookUp_arg3_1_6) _lh_lookUp_LH_P2_1_5) in
                      (fun _lh_dummy_2_8 -> 
                        ((mappend_lh__d9 h_6_0) (concat_lh__d1 t_6_0)))))
                | _ -> 
                  (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_3_2)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_4_5 _lh_lookUp_arg1_1_7 _lh_lookUp_arg3_1_7 _lh_dummy_2_9 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_4_3 _lh_lookUp_arg4_5)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_4_6 = (fun _lh_listcomp_fun_para_3_4 -> 
      (((_lh_listcomp_fun_para_3_4 _lh_listcomp_fun_4_6) _lh_lookUp_arg1_1_5) _lh_lookUp_arg3_1_5)) in
      (_lh_listcomp_fun_4_6 copies_5))))
and
lookUp_lh__d4 _lh_lookUp_arg1_3_0 _lh_lookUp_arg2_1_0 _lh_lookUp_arg3_3_0 _lh_lookUp_arg4_1_0 =
  (let rec copies_1_0 = (let rec _lh_listcomp_fun_6_7 = (fun _lh_listcomp_fun_para_4_3 -> 
    (match _lh_listcomp_fun_para_4_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_3, _lh_listcomp_fun_ls_t_4_3) -> 
        (let rec _lh_listcomp_fun_ls_t_4_4 = (_lh_listcomp_fun_6_7 _lh_listcomp_fun_ls_t_4_3) in
          (let rec _lh_listcomp_fun_ls_h_4_4 = ((freshCopy_lh__d1 _lh_lookUp_arg2_1_0) _lh_listcomp_fun_ls_h_4_3) in
            (fun _lh_listcomp_fun_6_8 _lh_lookUp_arg1_3_1 _lh_lookUp_arg3_3_1 -> 
              (match _lh_listcomp_fun_ls_h_4_4 with
                | `LH_P2(_lh_lookUp_LH_P2_0_1_0, _lh_lookUp_LH_P2_1_1_0) -> 
                  (let rec t_7_0 = (_lh_listcomp_fun_6_8 _lh_listcomp_fun_ls_t_4_4) in
                    (let rec h_7_0 = ((((try_lh__d1 _lh_lookUp_arg1_3_1) _lh_lookUp_LH_P2_0_1_0) _lh_lookUp_arg3_3_1) _lh_lookUp_LH_P2_1_1_0) in
                      (fun _lh_dummy_3_8 -> 
                        ((mappend_lh__d9 h_7_0) (concat_lh__d1 t_7_0)))))
                | _ -> 
                  (_lh_listcomp_fun_6_8 _lh_listcomp_fun_ls_t_4_4)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_6_9 _lh_lookUp_arg1_3_2 _lh_lookUp_arg3_3_2 _lh_dummy_3_9 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_6_7 _lh_lookUp_arg4_1_0)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_7_0 = (fun _lh_listcomp_fun_para_4_4 -> 
      (((_lh_listcomp_fun_para_4_4 _lh_listcomp_fun_7_0) _lh_lookUp_arg1_3_0) _lh_lookUp_arg3_3_0)) in
      (_lh_listcomp_fun_7_0 copies_1_0))))
and
lookUp_lh__d5 _lh_lookUp_arg1_1_2 _lh_lookUp_arg2_4 _lh_lookUp_arg3_1_2 _lh_lookUp_arg4_4 =
  (let rec copies_4 = (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_3_0 -> 
    (match _lh_listcomp_fun_para_3_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_8, _lh_listcomp_fun_ls_t_2_8) -> 
        (let rec _lh_listcomp_fun_ls_t_2_9 = (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_8) in
          (let rec _lh_listcomp_fun_ls_h_2_9 = ((freshCopy_lh__d1 _lh_lookUp_arg2_4) _lh_listcomp_fun_ls_h_2_8) in
            (fun _lh_listcomp_fun_3_9 _lh_lookUp_arg1_1_3 _lh_lookUp_arg3_1_3 -> 
              (match _lh_listcomp_fun_ls_h_2_9 with
                | `LH_P2(_lh_lookUp_LH_P2_0_4, _lh_lookUp_LH_P2_1_4) -> 
                  (let rec t_5_8 = (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_9) in
                    (let rec h_5_8 = ((((try_lh__d1 _lh_lookUp_arg1_1_3) _lh_lookUp_LH_P2_0_4) _lh_lookUp_arg3_1_3) _lh_lookUp_LH_P2_1_4) in
                      (fun _lh_dummy_2_6 -> 
                        ((mappend_lh__d9 h_5_8) (concat_lh__d1 t_5_8)))))
                | _ -> 
                  (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_9)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_4_0 _lh_lookUp_arg1_1_4 _lh_lookUp_arg3_1_4 _lh_dummy_2_7 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_3_8 _lh_lookUp_arg4_4)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_3_1 -> 
      (((_lh_listcomp_fun_para_3_1 _lh_listcomp_fun_4_1) _lh_lookUp_arg1_1_2) _lh_lookUp_arg3_1_2)) in
      (_lh_listcomp_fun_4_1 copies_4))))
and
lookUp_lh__d6 _lh_lookUp_arg1_4_2 _lh_lookUp_arg2_1_4 _lh_lookUp_arg3_4_2 _lh_lookUp_arg4_1_4 =
  (let rec copies_1_4 = (let rec _lh_listcomp_fun_8_5 = (fun _lh_listcomp_fun_para_5_3 -> 
    (match _lh_listcomp_fun_para_5_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_5_3, _lh_listcomp_fun_ls_t_5_3) -> 
        (let rec _lh_listcomp_fun_ls_t_5_4 = (_lh_listcomp_fun_8_5 _lh_listcomp_fun_ls_t_5_3) in
          (let rec _lh_listcomp_fun_ls_h_5_4 = ((freshCopy_lh__d1 _lh_lookUp_arg2_1_4) _lh_listcomp_fun_ls_h_5_3) in
            (fun _lh_listcomp_fun_8_6 _lh_lookUp_arg1_4_3 _lh_lookUp_arg3_4_3 -> 
              (match _lh_listcomp_fun_ls_h_5_4 with
                | `LH_P2(_lh_lookUp_LH_P2_0_1_4, _lh_lookUp_LH_P2_1_1_4) -> 
                  (let rec t_7_8 = (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_5_4) in
                    (let rec h_7_8 = ((((try_lh__d1 _lh_lookUp_arg1_4_3) _lh_lookUp_LH_P2_0_1_4) _lh_lookUp_arg3_4_3) _lh_lookUp_LH_P2_1_1_4) in
                      (fun _lh_dummy_4_8 -> 
                        ((mappend_lh__d9 h_7_8) (concat_lh__d1 t_7_8)))))
                | _ -> 
                  (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_5_4)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_8_7 _lh_lookUp_arg1_4_4 _lh_lookUp_arg3_4_4 _lh_dummy_4_9 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_8_5 _lh_lookUp_arg4_1_4)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_8_8 = (fun _lh_listcomp_fun_para_5_4 -> 
      (((_lh_listcomp_fun_para_5_4 _lh_listcomp_fun_8_8) _lh_lookUp_arg1_4_2) _lh_lookUp_arg3_4_2)) in
      (_lh_listcomp_fun_8_8 copies_1_4))))
and
lookUp_lh__d7 _lh_lookUp_arg1_3_6 _lh_lookUp_arg2_1_2 _lh_lookUp_arg3_3_6 _lh_lookUp_arg4_1_2 =
  (let rec copies_1_2 = (let rec _lh_listcomp_fun_7_7 = (fun _lh_listcomp_fun_para_4_9 -> 
    (match _lh_listcomp_fun_para_4_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_9, _lh_listcomp_fun_ls_t_4_9) -> 
        (let rec _lh_listcomp_fun_ls_t_5_0 = (_lh_listcomp_fun_7_7 _lh_listcomp_fun_ls_t_4_9) in
          (let rec _lh_listcomp_fun_ls_h_5_0 = ((freshCopy_lh__d1 _lh_lookUp_arg2_1_2) _lh_listcomp_fun_ls_h_4_9) in
            (fun _lh_listcomp_fun_7_8 _lh_lookUp_arg1_3_7 _lh_lookUp_arg3_3_7 -> 
              (match _lh_listcomp_fun_ls_h_5_0 with
                | `LH_P2(_lh_lookUp_LH_P2_0_1_2, _lh_lookUp_LH_P2_1_1_2) -> 
                  (let rec t_7_4 = (_lh_listcomp_fun_7_8 _lh_listcomp_fun_ls_t_5_0) in
                    (let rec h_7_4 = ((((try_lh__d1 _lh_lookUp_arg1_3_7) _lh_lookUp_LH_P2_0_1_2) _lh_lookUp_arg3_3_7) _lh_lookUp_LH_P2_1_1_2) in
                      (fun _lh_dummy_4_4 -> 
                        ((mappend_lh__d9 h_7_4) (concat_lh__d1 t_7_4)))))
                | _ -> 
                  (_lh_listcomp_fun_7_8 _lh_listcomp_fun_ls_t_5_0)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_7_9 _lh_lookUp_arg1_3_8 _lh_lookUp_arg3_3_8 _lh_dummy_4_5 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_7_7 _lh_lookUp_arg4_1_2)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_8_0 = (fun _lh_listcomp_fun_para_5_0 -> 
      (((_lh_listcomp_fun_para_5_0 _lh_listcomp_fun_8_0) _lh_lookUp_arg1_3_6) _lh_lookUp_arg3_3_6)) in
      (_lh_listcomp_fun_8_0 copies_1_2))))
and
lookUp_lh__d8 _lh_lookUp_arg1_9 _lh_lookUp_arg2_3 _lh_lookUp_arg3_9 _lh_lookUp_arg4_3 =
  (let rec copies_3 = (let rec _lh_listcomp_fun_3_4 = (fun _lh_listcomp_fun_para_2_8 -> 
    (match _lh_listcomp_fun_para_2_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_6, _lh_listcomp_fun_ls_t_2_6) -> 
        (let rec _lh_listcomp_fun_ls_t_2_7 = (_lh_listcomp_fun_3_4 _lh_listcomp_fun_ls_t_2_6) in
          (let rec _lh_listcomp_fun_ls_h_2_7 = ((freshCopy_lh__d1 _lh_lookUp_arg2_3) _lh_listcomp_fun_ls_h_2_6) in
            (fun _lh_listcomp_fun_3_5 _lh_lookUp_arg1_1_0 _lh_lookUp_arg3_1_0 -> 
              (match _lh_listcomp_fun_ls_h_2_7 with
                | `LH_P2(_lh_lookUp_LH_P2_0_3, _lh_lookUp_LH_P2_1_3) -> 
                  (let rec t_5_4 = (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_7) in
                    (let rec h_5_4 = ((((try_lh__d1 _lh_lookUp_arg1_1_0) _lh_lookUp_LH_P2_0_3) _lh_lookUp_arg3_1_0) _lh_lookUp_LH_P2_1_3) in
                      (fun _lh_dummy_2_4 -> 
                        ((mappend_lh__d9 h_5_4) (concat_lh__d1 t_5_4)))))
                | _ -> 
                  (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_7)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_3_6 _lh_lookUp_arg1_1_1 _lh_lookUp_arg3_1_1 _lh_dummy_2_5 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_3_4 _lh_lookUp_arg4_3)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_3_7 = (fun _lh_listcomp_fun_para_2_9 -> 
      (((_lh_listcomp_fun_para_2_9 _lh_listcomp_fun_3_7) _lh_lookUp_arg1_9) _lh_lookUp_arg3_9)) in
      (_lh_listcomp_fun_3_7 copies_3))))
and
lookUp_lh__d9 _lh_lookUp_arg1_0 _lh_lookUp_arg2_0 _lh_lookUp_arg3_0 _lh_lookUp_arg4_0 =
  (let rec copies_0 = (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (let rec _lh_listcomp_fun_ls_t_1 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
          (let rec _lh_listcomp_fun_ls_h_1 = ((freshCopy_lh__d1 _lh_lookUp_arg2_0) _lh_listcomp_fun_ls_h_0) in
            (fun _lh_listcomp_fun_1 _lh_lookUp_arg1_1 _lh_lookUp_arg3_1 -> 
              (match _lh_listcomp_fun_ls_h_1 with
                | `LH_P2(_lh_lookUp_LH_P2_0_0, _lh_lookUp_LH_P2_1_0) -> 
                  (let rec t_2_9 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
                    (let rec h_2_9 = ((((try_lh__d1 _lh_lookUp_arg1_1) _lh_lookUp_LH_P2_0_0) _lh_lookUp_arg3_1) _lh_lookUp_LH_P2_1_0) in
                      (fun _lh_dummy_0 -> 
                        ((mappend_lh__d9 h_2_9) (concat_lh__d1 t_2_9)))))
                | _ -> 
                  (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_2 _lh_lookUp_arg1_2 _lh_lookUp_arg3_2 _lh_dummy_1 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_0 _lh_lookUp_arg4_0)) in
    (concat_lh__d1 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_1 -> 
      (((_lh_listcomp_fun_para_1 _lh_listcomp_fun_3) _lh_lookUp_arg1_0) _lh_lookUp_arg3_0)) in
      (_lh_listcomp_fun_3 copies_0))))
and
solve_lh__d1 _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (match _lh_solve_arg2_0 with
    | `Question(_lh_solve_Question_0_0) -> 
      (`LH_C((`Question(_lh_solve_Question_0_0)), (`LH_N)))
    | _ -> 
      (match _lh_solve_arg3_0 with
        | `Term(_lh_solve_Term_0_0, _lh_solve_Term_1_0) -> 
          (match _lh_solve_Term_0_0 with
            | `LH_C(_lh_solve_LH_C_0_0, _lh_solve_LH_C_1_0) -> 
              (match _lh_solve_LH_C_0_0 with
                | 'o' -> 
                  (match _lh_solve_LH_C_1_0 with
                    | `LH_C(_lh_solve_LH_C_0_1, _lh_solve_LH_C_1_1) -> 
                      (match _lh_solve_LH_C_0_1 with
                        | 'r' -> 
                          (match _lh_solve_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_solve_Term_1_0 with
                                | `LH_C(_lh_solve_LH_C_0_2, _lh_solve_LH_C_1_2) -> 
                                  (match _lh_solve_LH_C_1_2 with
                                    | `LH_C(_lh_solve_LH_C_0_3, _lh_solve_LH_C_1_3) -> 
                                      (match _lh_solve_LH_C_1_3 with
                                        | `LH_N -> 
                                          ((mappend_lh__d9 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2)) (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3))
                                        | _ -> 
                                          (match _lh_solve_arg3_0 with
                                            | `Term(_lh_solve_Term_0_1, _lh_solve_Term_1_1) -> 
                                              (match _lh_solve_Term_0_1 with
                                                | `LH_C(_lh_solve_LH_C_0_4, _lh_solve_LH_C_1_4) -> 
                                                  (match _lh_solve_LH_C_0_4 with
                                                    | 'a' -> 
                                                      (match _lh_solve_LH_C_1_4 with
                                                        | `LH_C(_lh_solve_LH_C_0_5, _lh_solve_LH_C_1_5) -> 
                                                          (match _lh_solve_LH_C_0_5 with
                                                            | 'n' -> 
                                                              (match _lh_solve_LH_C_1_5 with
                                                                | `LH_C(_lh_solve_LH_C_0_6, _lh_solve_LH_C_1_6) -> 
                                                                  (match _lh_solve_LH_C_0_6 with
                                                                    | 'd' -> 
                                                                      (match _lh_solve_LH_C_1_6 with
                                                                        | `LH_N -> 
                                                                          (match _lh_solve_Term_1_1 with
                                                                            | `LH_C(_lh_solve_LH_C_0_7, _lh_solve_LH_C_1_7) -> 
                                                                              (match _lh_solve_LH_C_1_7 with
                                                                                | `LH_C(_lh_solve_LH_C_0_8, _lh_solve_LH_C_1_8) -> 
                                                                                  (match _lh_solve_LH_C_1_8 with
                                                                                    | `LH_N -> 
                                                                                      (concat_lh__d1 (let rec _lh_listcomp_fun_2_5 = (fun _lh_listcomp_fun_para_1_9 -> 
                                                                                        (match _lh_listcomp_fun_para_1_9 with
                                                                                          | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_7) -> 
                                                                                            (let rec t_4_5 = (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_7) in
                                                                                              (let rec h_4_5 = (((solve_lh__d1 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_7) _lh_solve_LH_C_0_8) in
                                                                                                (fun _lh_dummy_6 -> 
                                                                                                  ((mappend_lh__d9 h_4_5) (concat_lh__d1 t_4_5)))))
                                                                                          | `LH_N -> 
                                                                                            (fun _lh_dummy_7 -> 
                                                                                              (`LH_N)))) in
                                                                                        (_lh_listcomp_fun_2_5 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_7))))
                                                                                    | _ -> 
                                                                                      (let rec _lh_matchIdent_3 = _lh_solve_arg1_0 in
                                                                                        (match _lh_matchIdent_3 with
                                                                                          | `LH_P2(_lh_solve_LH_P2_0_0, _lh_solve_LH_P2_1_0) -> 
                                                                                            (let rec rs_1 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_0) _lh_solve_arg3_0) in
                                                                                              (if (not (null_lh__d2_d0 rs_1)) then
                                                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1)
                                                                                              else
                                                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                          | _ -> 
                                                                                            (failwith "error"))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_4 = _lh_solve_arg1_0 in
                                                                                    (match _lh_matchIdent_4 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1, _lh_solve_LH_P2_1_1) -> 
                                                                                        (let rec rs_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_1) _lh_solve_arg3_0) in
                                                                                          (if (not (null_lh__d2_d0 rs_2)) then
                                                                                            ((((lookUp_lh__d1_d2 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2)
                                                                                          else
                                                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_5 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_5 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_2, _lh_solve_LH_P2_1_2) -> 
                                                                                    (let rec rs_3 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null_lh__d2_d0 rs_3)) then
                                                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3)
                                                                                      else
                                                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_6 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_6 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_3, _lh_solve_LH_P2_1_3) -> 
                                                                                (let rec rs_4 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null_lh__d2_d0 rs_4)) then
                                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4)
                                                                                  else
                                                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_7 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_7 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_4, _lh_solve_LH_P2_1_4) -> 
                                                                            (let rec rs_5 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh__d1_d2 rs_5)) then
                                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5)
                                                                              else
                                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_8 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_8 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_5, _lh_solve_LH_P2_1_5) -> 
                                                                        (let rec rs_6 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh__d2_d0 rs_6)) then
                                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6)
                                                                          else
                                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_9 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_9 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_6, _lh_solve_LH_P2_1_6) -> 
                                                                    (let rec rs_7 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh__d2_d0 rs_7)) then
                                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7)
                                                                      else
                                                                        (((ask_lh__d2 _lh_solve_LH_P2_1_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_0 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_1_0 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_7, _lh_solve_LH_P2_1_7) -> 
                                                                (let rec rs_8 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh__d2_d0 rs_8)) then
                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8)
                                                                  else
                                                                    (((ask_lh__d1_d3 _lh_solve_LH_P2_1_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_1 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_1_1 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_8, _lh_solve_LH_P2_1_8) -> 
                                                            (let rec rs_9 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh__d8 rs_9)) then
                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9)
                                                              else
                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_2 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_1_2 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_9, _lh_solve_LH_P2_1_9) -> 
                                                        (let rec rs_1_0 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh__d2_d0 rs_1_0)) then
                                                            ((((lookUp_lh__d9 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_0)
                                                          else
                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_3 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_1_3 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_0, _lh_solve_LH_P2_1_1_0) -> 
                                                    (let rec rs_1_1 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_1_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh__d2_d0 rs_1_1)) then
                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_1)
                                                      else
                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_1_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error")))))
                                    | _ -> 
                                      (match _lh_solve_arg3_0 with
                                        | `Term(_lh_solve_Term_0_2, _lh_solve_Term_1_2) -> 
                                          (match _lh_solve_Term_0_2 with
                                            | `LH_C(_lh_solve_LH_C_0_9, _lh_solve_LH_C_1_9) -> 
                                              (match _lh_solve_LH_C_0_9 with
                                                | 'a' -> 
                                                  (match _lh_solve_LH_C_1_9 with
                                                    | `LH_C(_lh_solve_LH_C_0_1_0, _lh_solve_LH_C_1_1_0) -> 
                                                      (match _lh_solve_LH_C_0_1_0 with
                                                        | 'n' -> 
                                                          (match _lh_solve_LH_C_1_1_0 with
                                                            | `LH_C(_lh_solve_LH_C_0_1_1, _lh_solve_LH_C_1_1_1) -> 
                                                              (match _lh_solve_LH_C_0_1_1 with
                                                                | 'd' -> 
                                                                  (match _lh_solve_LH_C_1_1_1 with
                                                                    | `LH_N -> 
                                                                      (match _lh_solve_Term_1_2 with
                                                                        | `LH_C(_lh_solve_LH_C_0_1_2, _lh_solve_LH_C_1_1_2) -> 
                                                                          (match _lh_solve_LH_C_1_1_2 with
                                                                            | `LH_C(_lh_solve_LH_C_0_1_3, _lh_solve_LH_C_1_1_3) -> 
                                                                              (match _lh_solve_LH_C_1_1_3 with
                                                                                | `LH_N -> 
                                                                                  (concat_lh__d1 (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_2_0 -> 
                                                                                    (match _lh_listcomp_fun_para_2_0 with
                                                                                      | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_1_8) -> 
                                                                                        (let rec t_4_6 = (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_1_8) in
                                                                                          (let rec h_4_6 = (((solve_lh__d1 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_8) _lh_solve_LH_C_0_1_3) in
                                                                                            (fun _lh_dummy_8 -> 
                                                                                              ((mappend_lh__d9 h_4_6) (concat_lh__d1 t_4_6)))))
                                                                                      | `LH_N -> 
                                                                                        (fun _lh_dummy_9 -> 
                                                                                          (`LH_N)))) in
                                                                                    (_lh_listcomp_fun_2_6 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_1_2))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_1_4 = _lh_solve_arg1_0 in
                                                                                    (match _lh_matchIdent_1_4 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_1, _lh_solve_LH_P2_1_1_1) -> 
                                                                                        (let rec rs_1_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_1_1) _lh_solve_arg3_0) in
                                                                                          (if (not (null_lh__d2_d0 rs_1_2)) then
                                                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_2)
                                                                                          else
                                                                                            (((ask_lh__d7 _lh_solve_LH_P2_1_1_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_1_5 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_1_5 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_2, _lh_solve_LH_P2_1_1_2) -> 
                                                                                    (let rec rs_1_3 = ((relevant_lh__d3 _lh_solve_LH_P2_0_1_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null_lh__d2_d0 rs_1_3)) then
                                                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_3)
                                                                                      else
                                                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_1_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_1_6 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_1_6 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_1_3, _lh_solve_LH_P2_1_1_3) -> 
                                                                                (let rec rs_1_4 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_1_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null_lh__d2_d0 rs_1_4)) then
                                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_4)
                                                                                  else
                                                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_1_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_1_7 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_1_7 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_1_4, _lh_solve_LH_P2_1_1_4) -> 
                                                                            (let rec rs_1_5 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_1_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh__d2_d0 rs_1_5)) then
                                                                                ((((lookUp_lh__d1_d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_5)
                                                                              else
                                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_1_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_1_8 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_1_8 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_5, _lh_solve_LH_P2_1_1_5) -> 
                                                                        (let rec rs_1_6 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_1_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh__d1_d0 rs_1_6)) then
                                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_6)
                                                                          else
                                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_1_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_9 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_1_9 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_6, _lh_solve_LH_P2_1_1_6) -> 
                                                                    (let rec rs_1_7 = ((relevant_lh__d4 _lh_solve_LH_P2_0_1_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh__d2_d0 rs_1_7)) then
                                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_7)
                                                                      else
                                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_1_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_2_0 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_2_0 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_7, _lh_solve_LH_P2_1_1_7) -> 
                                                                (let rec rs_1_8 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_1_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh__d2_d0 rs_1_8)) then
                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_8)
                                                                  else
                                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_1_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_2_1 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_2_1 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_8, _lh_solve_LH_P2_1_1_8) -> 
                                                            (let rec rs_1_9 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_1_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh__d1_d8 rs_1_9)) then
                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_9)
                                                              else
                                                                (((ask_lh__d5 _lh_solve_LH_P2_1_1_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_2_2 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_2_2 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_9, _lh_solve_LH_P2_1_1_9) -> 
                                                        (let rec rs_2_0 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_1_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh__d2_d0 rs_2_0)) then
                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_0)
                                                          else
                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_1_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_2_3 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_2_3 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_2_0, _lh_solve_LH_P2_1_2_0) -> 
                                                    (let rec rs_2_1 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_2_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh__d2_d0 rs_2_1)) then
                                                        ((((lookUp_lh__d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_1)
                                                      else
                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_2_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_2_4 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_2_4 with
                                              | `LH_P2(_lh_solve_LH_P2_0_2_1, _lh_solve_LH_P2_1_2_1) -> 
                                                (let rec rs_2_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_2_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh__d2_d0 rs_2_2)) then
                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_2)
                                                  else
                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_2_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error")))))
                                | _ -> 
                                  (match _lh_solve_arg3_0 with
                                    | `Term(_lh_solve_Term_0_3, _lh_solve_Term_1_3) -> 
                                      (match _lh_solve_Term_0_3 with
                                        | `LH_C(_lh_solve_LH_C_0_1_4, _lh_solve_LH_C_1_1_4) -> 
                                          (match _lh_solve_LH_C_0_1_4 with
                                            | 'a' -> 
                                              (match _lh_solve_LH_C_1_1_4 with
                                                | `LH_C(_lh_solve_LH_C_0_1_5, _lh_solve_LH_C_1_1_5) -> 
                                                  (match _lh_solve_LH_C_0_1_5 with
                                                    | 'n' -> 
                                                      (match _lh_solve_LH_C_1_1_5 with
                                                        | `LH_C(_lh_solve_LH_C_0_1_6, _lh_solve_LH_C_1_1_6) -> 
                                                          (match _lh_solve_LH_C_0_1_6 with
                                                            | 'd' -> 
                                                              (match _lh_solve_LH_C_1_1_6 with
                                                                | `LH_N -> 
                                                                  (match _lh_solve_Term_1_3 with
                                                                    | `LH_C(_lh_solve_LH_C_0_1_7, _lh_solve_LH_C_1_1_7) -> 
                                                                      (match _lh_solve_LH_C_1_1_7 with
                                                                        | `LH_C(_lh_solve_LH_C_0_1_8, _lh_solve_LH_C_1_1_8) -> 
                                                                          (match _lh_solve_LH_C_1_1_8 with
                                                                            | `LH_N -> 
                                                                              (concat_lh__d1 (let rec _lh_listcomp_fun_2_7 = (fun _lh_listcomp_fun_para_2_1 -> 
                                                                                (match _lh_listcomp_fun_para_2_1 with
                                                                                  | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_1_9) -> 
                                                                                    (let rec t_4_7 = (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_1_9) in
                                                                                      (let rec h_4_7 = (((solve_lh__d1 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_9) _lh_solve_LH_C_0_1_8) in
                                                                                        (fun _lh_dummy_1_0 -> 
                                                                                          ((mappend_lh__d9 h_4_7) (concat_lh__d1 t_4_7)))))
                                                                                  | `LH_N -> 
                                                                                    (fun _lh_dummy_1_1 -> 
                                                                                      (`LH_N)))) in
                                                                                (_lh_listcomp_fun_2_7 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_1_7))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_2_5 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_2_5 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_2_2, _lh_solve_LH_P2_1_2_2) -> 
                                                                                    (let rec rs_2_3 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_2_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null_lh__d2_d0 rs_2_3)) then
                                                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_3)
                                                                                      else
                                                                                        (((ask_lh__d1_d6 _lh_solve_LH_P2_1_2_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_2_6 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_2_6 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_2_3, _lh_solve_LH_P2_1_2_3) -> 
                                                                                (let rec rs_2_4 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_2_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null_lh__d2_d0 rs_2_4)) then
                                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_4)
                                                                                  else
                                                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_2_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_2_7 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_2_7 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_2_4, _lh_solve_LH_P2_1_2_4) -> 
                                                                            (let rec rs_2_5 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_2_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh__d2_d0 rs_2_5)) then
                                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_5)
                                                                              else
                                                                                (((ask_lh__d3 _lh_solve_LH_P2_1_2_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_2_8 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_2_8 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_2_5, _lh_solve_LH_P2_1_2_5) -> 
                                                                        (let rec rs_2_6 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_2_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh__d2_d0 rs_2_6)) then
                                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_6)
                                                                          else
                                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_2_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_2_9 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_2_9 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_2_6, _lh_solve_LH_P2_1_2_6) -> 
                                                                    (let rec rs_2_7 = ((relevant_lh__d1_d1 _lh_solve_LH_P2_0_2_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh__d2_d0 rs_2_7)) then
                                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_7)
                                                                      else
                                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_2_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_3_0 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_3_0 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_2_7, _lh_solve_LH_P2_1_2_7) -> 
                                                                (let rec rs_2_8 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_2_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh__d1_d3 rs_2_8)) then
                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_8)
                                                                  else
                                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_2_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_3_1 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_3_1 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_2_8, _lh_solve_LH_P2_1_2_8) -> 
                                                            (let rec rs_2_9 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_2_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh__d2_d0 rs_2_9)) then
                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_9)
                                                              else
                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_2_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_3_2 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_3_2 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_2_9, _lh_solve_LH_P2_1_2_9) -> 
                                                        (let rec rs_3_0 = ((relevant_lh__d1_d7 _lh_solve_LH_P2_0_2_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh__d2_d0 rs_3_0)) then
                                                            ((((lookUp_lh__d5 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_0)
                                                          else
                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_2_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_3_3 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_3_3 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_3_0, _lh_solve_LH_P2_1_3_0) -> 
                                                    (let rec rs_3_1 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh__d4 rs_3_1)) then
                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_1)
                                                      else
                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_3_4 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_3_4 with
                                              | `LH_P2(_lh_solve_LH_P2_0_3_1, _lh_solve_LH_P2_1_3_1) -> 
                                                (let rec rs_3_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh__d2_d0 rs_3_2)) then
                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_2)
                                                  else
                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_3_5 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_3_5 with
                                          | `LH_P2(_lh_solve_LH_P2_0_3_2, _lh_solve_LH_P2_1_3_2) -> 
                                            (let rec rs_3_3 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh__d2_d0 rs_3_3)) then
                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_3)
                                              else
                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error")))))
                            | _ -> 
                              (match _lh_solve_arg3_0 with
                                | `Term(_lh_solve_Term_0_4, _lh_solve_Term_1_4) -> 
                                  (match _lh_solve_Term_0_4 with
                                    | `LH_C(_lh_solve_LH_C_0_1_9, _lh_solve_LH_C_1_1_9) -> 
                                      (match _lh_solve_LH_C_0_1_9 with
                                        | 'a' -> 
                                          (match _lh_solve_LH_C_1_1_9 with
                                            | `LH_C(_lh_solve_LH_C_0_2_0, _lh_solve_LH_C_1_2_0) -> 
                                              (match _lh_solve_LH_C_0_2_0 with
                                                | 'n' -> 
                                                  (match _lh_solve_LH_C_1_2_0 with
                                                    | `LH_C(_lh_solve_LH_C_0_2_1, _lh_solve_LH_C_1_2_1) -> 
                                                      (match _lh_solve_LH_C_0_2_1 with
                                                        | 'd' -> 
                                                          (match _lh_solve_LH_C_1_2_1 with
                                                            | `LH_N -> 
                                                              (match _lh_solve_Term_1_4 with
                                                                | `LH_C(_lh_solve_LH_C_0_2_2, _lh_solve_LH_C_1_2_2) -> 
                                                                  (match _lh_solve_LH_C_1_2_2 with
                                                                    | `LH_C(_lh_solve_LH_C_0_2_3, _lh_solve_LH_C_1_2_3) -> 
                                                                      (match _lh_solve_LH_C_1_2_3 with
                                                                        | `LH_N -> 
                                                                          (concat_lh__d1 (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_2_2 -> 
                                                                            (match _lh_listcomp_fun_para_2_2 with
                                                                              | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_0) -> 
                                                                                (let rec t_4_8 = (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_2_0) in
                                                                                  (let rec h_4_8 = (((solve_lh__d1 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_0) _lh_solve_LH_C_0_2_3) in
                                                                                    (fun _lh_dummy_1_2 -> 
                                                                                      ((mappend_lh__d9 h_4_8) (concat_lh__d1 t_4_8)))))
                                                                              | `LH_N -> 
                                                                                (fun _lh_dummy_1_3 -> 
                                                                                  (`LH_N)))) in
                                                                            (_lh_listcomp_fun_2_8 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2_2))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_3_6 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_3_6 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_3_3, _lh_solve_LH_P2_1_3_3) -> 
                                                                                (let rec rs_3_4 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null_lh__d1_d7 rs_3_4)) then
                                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_4)
                                                                                  else
                                                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_3_7 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_3_7 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_3_4, _lh_solve_LH_P2_1_3_4) -> 
                                                                            (let rec rs_3_5 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh__d1 rs_3_5)) then
                                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_5)
                                                                              else
                                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_3_8 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_3_8 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_3_5, _lh_solve_LH_P2_1_3_5) -> 
                                                                        (let rec rs_3_6 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh__d2_d0 rs_3_6)) then
                                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_6)
                                                                          else
                                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_3_9 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_3_9 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_3_6, _lh_solve_LH_P2_1_3_6) -> 
                                                                    (let rec rs_3_7 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh__d2_d0 rs_3_7)) then
                                                                        ((((lookUp_lh__d8 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_7)
                                                                      else
                                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_4_0 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_4_0 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_3_7, _lh_solve_LH_P2_1_3_7) -> 
                                                                (let rec rs_3_8 = ((relevant_lh__d5 _lh_solve_LH_P2_0_3_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh__d2_d0 rs_3_8)) then
                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_8)
                                                                  else
                                                                    (((ask_lh__d1_d1 _lh_solve_LH_P2_1_3_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_4_1 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_4_1 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_3_8, _lh_solve_LH_P2_1_3_8) -> 
                                                            (let rec rs_3_9 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh__d2_d0 rs_3_9)) then
                                                                ((((lookUp_lh__d6 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_9)
                                                              else
                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_4_2 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_4_2 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_3_9, _lh_solve_LH_P2_1_3_9) -> 
                                                        (let rec rs_4_0 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_3_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh__d3 rs_4_0)) then
                                                            ((((lookUp_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_0)
                                                          else
                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_3_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_4_3 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_4_3 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_4_0, _lh_solve_LH_P2_1_4_0) -> 
                                                    (let rec rs_4_1 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_4_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh__d2_d0 rs_4_1)) then
                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_1)
                                                      else
                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_4_4 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_4_4 with
                                              | `LH_P2(_lh_solve_LH_P2_0_4_1, _lh_solve_LH_P2_1_4_1) -> 
                                                (let rec rs_4_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_4_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh__d2_d0 rs_4_2)) then
                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_2)
                                                  else
                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_4_5 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_4_5 with
                                          | `LH_P2(_lh_solve_LH_P2_0_4_2, _lh_solve_LH_P2_1_4_2) -> 
                                            (let rec rs_4_3 = ((relevant_lh__d6 _lh_solve_LH_P2_0_4_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh__d2_d0 rs_4_3)) then
                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_3)
                                              else
                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_4_6 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_4_6 with
                                      | `LH_P2(_lh_solve_LH_P2_0_4_3, _lh_solve_LH_P2_1_4_3) -> 
                                        (let rec rs_4_4 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_4_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh__d6 rs_4_4)) then
                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_4)
                                          else
                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error")))))
                        | _ -> 
                          (match _lh_solve_arg3_0 with
                            | `Term(_lh_solve_Term_0_5, _lh_solve_Term_1_5) -> 
                              (match _lh_solve_Term_0_5 with
                                | `LH_C(_lh_solve_LH_C_0_2_4, _lh_solve_LH_C_1_2_4) -> 
                                  (match _lh_solve_LH_C_0_2_4 with
                                    | 'a' -> 
                                      (match _lh_solve_LH_C_1_2_4 with
                                        | `LH_C(_lh_solve_LH_C_0_2_5, _lh_solve_LH_C_1_2_5) -> 
                                          (match _lh_solve_LH_C_0_2_5 with
                                            | 'n' -> 
                                              (match _lh_solve_LH_C_1_2_5 with
                                                | `LH_C(_lh_solve_LH_C_0_2_6, _lh_solve_LH_C_1_2_6) -> 
                                                  (match _lh_solve_LH_C_0_2_6 with
                                                    | 'd' -> 
                                                      (match _lh_solve_LH_C_1_2_6 with
                                                        | `LH_N -> 
                                                          (match _lh_solve_Term_1_5 with
                                                            | `LH_C(_lh_solve_LH_C_0_2_7, _lh_solve_LH_C_1_2_7) -> 
                                                              (match _lh_solve_LH_C_1_2_7 with
                                                                | `LH_C(_lh_solve_LH_C_0_2_8, _lh_solve_LH_C_1_2_8) -> 
                                                                  (match _lh_solve_LH_C_1_2_8 with
                                                                    | `LH_N -> 
                                                                      (concat_lh__d1 (let rec _lh_listcomp_fun_2_9 = (fun _lh_listcomp_fun_para_2_3 -> 
                                                                        (match _lh_listcomp_fun_para_2_3 with
                                                                          | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_1) -> 
                                                                            (let rec t_4_9 = (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_1) in
                                                                              (let rec h_4_9 = (((solve_lh__d1 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_1) _lh_solve_LH_C_0_2_8) in
                                                                                (fun _lh_dummy_1_4 -> 
                                                                                  ((mappend_lh__d9 h_4_9) (concat_lh__d1 t_4_9)))))
                                                                          | `LH_N -> 
                                                                            (fun _lh_dummy_1_5 -> 
                                                                              (`LH_N)))) in
                                                                        (_lh_listcomp_fun_2_9 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2_7))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_4_7 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_4_7 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_4_4, _lh_solve_LH_P2_1_4_4) -> 
                                                                            (let rec rs_4_5 = ((relevant_lh__d7 _lh_solve_LH_P2_0_4_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh__d5 rs_4_5)) then
                                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_5)
                                                                              else
                                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_4_8 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_4_8 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_4_5, _lh_solve_LH_P2_1_4_5) -> 
                                                                        (let rec rs_4_6 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_4_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh__d2_d0 rs_4_6)) then
                                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_6)
                                                                          else
                                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_4_9 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_4_9 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_4_6, _lh_solve_LH_P2_1_4_6) -> 
                                                                    (let rec rs_4_7 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_4_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh__d1_d9 rs_4_7)) then
                                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_7)
                                                                      else
                                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_5_0 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_5_0 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_4_7, _lh_solve_LH_P2_1_4_7) -> 
                                                                (let rec rs_4_8 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_4_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh__d2_d0 rs_4_8)) then
                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_8)
                                                                  else
                                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_5_1 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_5_1 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_4_8, _lh_solve_LH_P2_1_4_8) -> 
                                                            (let rec rs_4_9 = ((relevant_lh__d1_d9 _lh_solve_LH_P2_0_4_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh__d2_d0 rs_4_9)) then
                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_9)
                                                              else
                                                                (((ask_lh__d1_d0 _lh_solve_LH_P2_1_4_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_5_2 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_5_2 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_4_9, _lh_solve_LH_P2_1_4_9) -> 
                                                        (let rec rs_5_0 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_4_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh__d2_d0 rs_5_0)) then
                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_0)
                                                          else
                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_4_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_5_3 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_5_3 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_5_0, _lh_solve_LH_P2_1_5_0) -> 
                                                    (let rec rs_5_1 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh__d2_d0 rs_5_1)) then
                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_1)
                                                      else
                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_5_4 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_5_4 with
                                              | `LH_P2(_lh_solve_LH_P2_0_5_1, _lh_solve_LH_P2_1_5_1) -> 
                                                (let rec rs_5_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh__d2_d0 rs_5_2)) then
                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_2)
                                                  else
                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_5_5 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_5_5 with
                                          | `LH_P2(_lh_solve_LH_P2_0_5_2, _lh_solve_LH_P2_1_5_2) -> 
                                            (let rec rs_5_3 = ((relevant_lh__d1_d5 _lh_solve_LH_P2_0_5_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh__d2_d0 rs_5_3)) then
                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_3)
                                              else
                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_5_6 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_5_6 with
                                      | `LH_P2(_lh_solve_LH_P2_0_5_3, _lh_solve_LH_P2_1_5_3) -> 
                                        (let rec rs_5_4 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh__d2_d0 rs_5_4)) then
                                            ((((lookUp_lh__d1_d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_4)
                                          else
                                            (((ask_lh__d1_d7 _lh_solve_LH_P2_1_5_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_5_7 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_5_7 with
                                  | `LH_P2(_lh_solve_LH_P2_0_5_4, _lh_solve_LH_P2_1_5_4) -> 
                                    (let rec rs_5_5 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh__d1_d5 rs_5_5)) then
                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_5)
                                      else
                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error")))))
                    | _ -> 
                      (match _lh_solve_arg3_0 with
                        | `Term(_lh_solve_Term_0_6, _lh_solve_Term_1_6) -> 
                          (match _lh_solve_Term_0_6 with
                            | `LH_C(_lh_solve_LH_C_0_2_9, _lh_solve_LH_C_1_2_9) -> 
                              (match _lh_solve_LH_C_0_2_9 with
                                | 'a' -> 
                                  (match _lh_solve_LH_C_1_2_9 with
                                    | `LH_C(_lh_solve_LH_C_0_3_0, _lh_solve_LH_C_1_3_0) -> 
                                      (match _lh_solve_LH_C_0_3_0 with
                                        | 'n' -> 
                                          (match _lh_solve_LH_C_1_3_0 with
                                            | `LH_C(_lh_solve_LH_C_0_3_1, _lh_solve_LH_C_1_3_1) -> 
                                              (match _lh_solve_LH_C_0_3_1 with
                                                | 'd' -> 
                                                  (match _lh_solve_LH_C_1_3_1 with
                                                    | `LH_N -> 
                                                      (match _lh_solve_Term_1_6 with
                                                        | `LH_C(_lh_solve_LH_C_0_3_2, _lh_solve_LH_C_1_3_2) -> 
                                                          (match _lh_solve_LH_C_1_3_2 with
                                                            | `LH_C(_lh_solve_LH_C_0_3_3, _lh_solve_LH_C_1_3_3) -> 
                                                              (match _lh_solve_LH_C_1_3_3 with
                                                                | `LH_N -> 
                                                                  (concat_lh__d1 (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_2_4 -> 
                                                                    (match _lh_listcomp_fun_para_2_4 with
                                                                      | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_2) -> 
                                                                        (let rec t_5_0 = (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_2_2) in
                                                                          (let rec h_5_0 = (((solve_lh__d1 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_2) _lh_solve_LH_C_0_3_3) in
                                                                            (fun _lh_dummy_1_6 -> 
                                                                              ((mappend_lh__d9 h_5_0) (concat_lh__d1 t_5_0)))))
                                                                      | `LH_N -> 
                                                                        (fun _lh_dummy_1_7 -> 
                                                                          (`LH_N)))) in
                                                                    (_lh_listcomp_fun_3_0 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3_2))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_5_8 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_5_8 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_5_5, _lh_solve_LH_P2_1_5_5) -> 
                                                                        (let rec rs_5_6 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh__d2 rs_5_6)) then
                                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_6)
                                                                          else
                                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_5_9 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_5_9 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_5_6, _lh_solve_LH_P2_1_5_6) -> 
                                                                    (let rec rs_5_7 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh__d2_d0 rs_5_7)) then
                                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_7)
                                                                      else
                                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_6_0 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_6_0 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_5_7, _lh_solve_LH_P2_1_5_7) -> 
                                                                (let rec rs_5_8 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh__d2_d0 rs_5_8)) then
                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_8)
                                                                  else
                                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_6_1 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_6_1 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_5_8, _lh_solve_LH_P2_1_5_8) -> 
                                                            (let rec rs_5_9 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh__d2_d0 rs_5_9)) then
                                                                ((((lookUp_lh__d2 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_9)
                                                              else
                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_6_2 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_6_2 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_5_9, _lh_solve_LH_P2_1_5_9) -> 
                                                        (let rec rs_6_0 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_5_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh__d1_d4 rs_6_0)) then
                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_0)
                                                          else
                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_5_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_6_3 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_6_3 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_6_0, _lh_solve_LH_P2_1_6_0) -> 
                                                    (let rec rs_6_1 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_6_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh__d2_d0 rs_6_1)) then
                                                        ((((lookUp_lh__d3 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_1)
                                                      else
                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_6_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_6_4 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_6_4 with
                                              | `LH_P2(_lh_solve_LH_P2_0_6_1, _lh_solve_LH_P2_1_6_1) -> 
                                                (let rec rs_6_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_6_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh__d2_d0 rs_6_2)) then
                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_2)
                                                  else
                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_6_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_6_5 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_6_5 with
                                          | `LH_P2(_lh_solve_LH_P2_0_6_2, _lh_solve_LH_P2_1_6_2) -> 
                                            (let rec rs_6_3 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_6_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh__d2_d0 rs_6_3)) then
                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_3)
                                              else
                                                (((ask_lh__d9 _lh_solve_LH_P2_1_6_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_6_6 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_6_6 with
                                      | `LH_P2(_lh_solve_LH_P2_0_6_3, _lh_solve_LH_P2_1_6_3) -> 
                                        (let rec rs_6_4 = ((relevant_lh__d1_d2 _lh_solve_LH_P2_0_6_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh__d2_d0 rs_6_4)) then
                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_4)
                                          else
                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_6_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_6_7 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_6_7 with
                                  | `LH_P2(_lh_solve_LH_P2_0_6_4, _lh_solve_LH_P2_1_6_4) -> 
                                    (let rec rs_6_5 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_6_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh__d2_d0 rs_6_5)) then
                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_5)
                                      else
                                        (((ask_lh__d6 _lh_solve_LH_P2_1_6_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_6_8 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_6_8 with
                              | `LH_P2(_lh_solve_LH_P2_0_6_5, _lh_solve_LH_P2_1_6_5) -> 
                                (let rec rs_6_6 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_6_5) _lh_solve_arg3_0) in
                                  (if (not (null_lh__d2_d0 rs_6_6)) then
                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_6)
                                  else
                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_6_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error")))))
                | _ -> 
                  (match _lh_solve_arg3_0 with
                    | `Term(_lh_solve_Term_0_7, _lh_solve_Term_1_7) -> 
                      (match _lh_solve_Term_0_7 with
                        | `LH_C(_lh_solve_LH_C_0_3_4, _lh_solve_LH_C_1_3_4) -> 
                          (match _lh_solve_LH_C_0_3_4 with
                            | 'a' -> 
                              (match _lh_solve_LH_C_1_3_4 with
                                | `LH_C(_lh_solve_LH_C_0_3_5, _lh_solve_LH_C_1_3_5) -> 
                                  (match _lh_solve_LH_C_0_3_5 with
                                    | 'n' -> 
                                      (match _lh_solve_LH_C_1_3_5 with
                                        | `LH_C(_lh_solve_LH_C_0_3_6, _lh_solve_LH_C_1_3_6) -> 
                                          (match _lh_solve_LH_C_0_3_6 with
                                            | 'd' -> 
                                              (match _lh_solve_LH_C_1_3_6 with
                                                | `LH_N -> 
                                                  (match _lh_solve_Term_1_7 with
                                                    | `LH_C(_lh_solve_LH_C_0_3_7, _lh_solve_LH_C_1_3_7) -> 
                                                      (match _lh_solve_LH_C_1_3_7 with
                                                        | `LH_C(_lh_solve_LH_C_0_3_8, _lh_solve_LH_C_1_3_8) -> 
                                                          (match _lh_solve_LH_C_1_3_8 with
                                                            | `LH_N -> 
                                                              (concat_lh__d1 (let rec _lh_listcomp_fun_3_1 = (fun _lh_listcomp_fun_para_2_5 -> 
                                                                (match _lh_listcomp_fun_para_2_5 with
                                                                  | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_3) -> 
                                                                    (let rec t_5_1 = (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_2_3) in
                                                                      (let rec h_5_1 = (((solve_lh__d1 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_3) _lh_solve_LH_C_0_3_8) in
                                                                        (fun _lh_dummy_1_8 -> 
                                                                          ((mappend_lh__d9 h_5_1) (concat_lh__d1 t_5_1)))))
                                                                  | `LH_N -> 
                                                                    (fun _lh_dummy_1_9 -> 
                                                                      (`LH_N)))) in
                                                                (_lh_listcomp_fun_3_1 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3_7))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_6_9 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_6_9 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_6_6, _lh_solve_LH_P2_1_6_6) -> 
                                                                    (let rec rs_6_7 = ((relevant_lh__d1_d0 _lh_solve_LH_P2_0_6_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh__d2_d0 rs_6_7)) then
                                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_7)
                                                                      else
                                                                        (((ask_lh__d1 _lh_solve_LH_P2_1_6_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_7_0 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_7_0 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_6_7, _lh_solve_LH_P2_1_6_7) -> 
                                                                (let rec rs_6_8 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_6_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh__d9 rs_6_8)) then
                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_8)
                                                                  else
                                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_6_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_7_1 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_7_1 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_6_8, _lh_solve_LH_P2_1_6_8) -> 
                                                            (let rec rs_6_9 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_6_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh__d2_d0 rs_6_9)) then
                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_9)
                                                              else
                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_6_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_7_2 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_7_2 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_6_9, _lh_solve_LH_P2_1_6_9) -> 
                                                        (let rec rs_7_0 = ((relevant_lh__d1 _lh_solve_LH_P2_0_6_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh__d2_d0 rs_7_0)) then
                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_0)
                                                          else
                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_6_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_7_3 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_7_3 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_7_0, _lh_solve_LH_P2_1_7_0) -> 
                                                    (let rec rs_7_1 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh__d2_d0 rs_7_1)) then
                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_1)
                                                      else
                                                        (((ask_lh__d4 _lh_solve_LH_P2_1_7_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_7_4 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_7_4 with
                                              | `LH_P2(_lh_solve_LH_P2_0_7_1, _lh_solve_LH_P2_1_7_1) -> 
                                                (let rec rs_7_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh__d1_d6 rs_7_2)) then
                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_2)
                                                  else
                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_7_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_7_5 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_7_5 with
                                          | `LH_P2(_lh_solve_LH_P2_0_7_2, _lh_solve_LH_P2_1_7_2) -> 
                                            (let rec rs_7_3 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh__d2_d0 rs_7_3)) then
                                                ((((lookUp_lh__d1_d3 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_3)
                                              else
                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_7_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_7_6 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_7_6 with
                                      | `LH_P2(_lh_solve_LH_P2_0_7_3, _lh_solve_LH_P2_1_7_3) -> 
                                        (let rec rs_7_4 = ((relevant_lh__d1_d3 _lh_solve_LH_P2_0_7_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh__d2_d0 rs_7_4)) then
                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_4)
                                          else
                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_7_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_7_7 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_7_7 with
                                  | `LH_P2(_lh_solve_LH_P2_0_7_4, _lh_solve_LH_P2_1_7_4) -> 
                                    (let rec rs_7_5 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh__d2_d0 rs_7_5)) then
                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_5)
                                      else
                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_7_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_7_8 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_7_8 with
                              | `LH_P2(_lh_solve_LH_P2_0_7_5, _lh_solve_LH_P2_1_7_5) -> 
                                (let rec rs_7_6 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7_5) _lh_solve_arg3_0) in
                                  (if (not (null_lh__d2_d0 rs_7_6)) then
                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_6)
                                  else
                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_7_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_7_9 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_7_9 with
                          | `LH_P2(_lh_solve_LH_P2_0_7_6, _lh_solve_LH_P2_1_7_6) -> 
                            (let rec rs_7_7 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7_6) _lh_solve_arg3_0) in
                              (if (not (null_lh__d2_d0 rs_7_7)) then
                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_7)
                              else
                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_7_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error")))))
            | _ -> 
              (match _lh_solve_arg3_0 with
                | `Term(_lh_solve_Term_0_8, _lh_solve_Term_1_8) -> 
                  (match _lh_solve_Term_0_8 with
                    | `LH_C(_lh_solve_LH_C_0_3_9, _lh_solve_LH_C_1_3_9) -> 
                      (match _lh_solve_LH_C_0_3_9 with
                        | 'a' -> 
                          (match _lh_solve_LH_C_1_3_9 with
                            | `LH_C(_lh_solve_LH_C_0_4_0, _lh_solve_LH_C_1_4_0) -> 
                              (match _lh_solve_LH_C_0_4_0 with
                                | 'n' -> 
                                  (match _lh_solve_LH_C_1_4_0 with
                                    | `LH_C(_lh_solve_LH_C_0_4_1, _lh_solve_LH_C_1_4_1) -> 
                                      (match _lh_solve_LH_C_0_4_1 with
                                        | 'd' -> 
                                          (match _lh_solve_LH_C_1_4_1 with
                                            | `LH_N -> 
                                              (match _lh_solve_Term_1_8 with
                                                | `LH_C(_lh_solve_LH_C_0_4_2, _lh_solve_LH_C_1_4_2) -> 
                                                  (match _lh_solve_LH_C_1_4_2 with
                                                    | `LH_C(_lh_solve_LH_C_0_4_3, _lh_solve_LH_C_1_4_3) -> 
                                                      (match _lh_solve_LH_C_1_4_3 with
                                                        | `LH_N -> 
                                                          (concat_lh__d1 (let rec _lh_listcomp_fun_3_2 = (fun _lh_listcomp_fun_para_2_6 -> 
                                                            (match _lh_listcomp_fun_para_2_6 with
                                                              | `LH_C(_lh_listcomp_fun_ls_h_2_4, _lh_listcomp_fun_ls_t_2_4) -> 
                                                                (let rec t_5_2 = (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_2_4) in
                                                                  (let rec h_5_2 = (((solve_lh__d1 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_4) _lh_solve_LH_C_0_4_3) in
                                                                    (fun _lh_dummy_2_0 -> 
                                                                      ((mappend_lh__d9 h_5_2) (concat_lh__d1 t_5_2)))))
                                                              | `LH_N -> 
                                                                (fun _lh_dummy_2_1 -> 
                                                                  (`LH_N)))) in
                                                            (_lh_listcomp_fun_3_2 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_4_2))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_8_0 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_8_0 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_7_7, _lh_solve_LH_P2_1_7_7) -> 
                                                                (let rec rs_7_8 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh__d2_d0 rs_7_8)) then
                                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_8)
                                                                  else
                                                                    (((ask_lh__d8 _lh_solve_LH_P2_1_7_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_8_1 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_8_1 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_7_8, _lh_solve_LH_P2_1_7_8) -> 
                                                            (let rec rs_7_9 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh__d2_d0 rs_7_9)) then
                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_9)
                                                              else
                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_7_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_8_2 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_8_2 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_7_9, _lh_solve_LH_P2_1_7_9) -> 
                                                        (let rec rs_8_0 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_7_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh__d2_d0 rs_8_0)) then
                                                            ((((lookUp_lh__d1_d4 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_0)
                                                          else
                                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_7_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_8_3 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_8_3 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_8_0, _lh_solve_LH_P2_1_8_0) -> 
                                                    (let rec rs_8_1 = ((relevant_lh__d8 _lh_solve_LH_P2_0_8_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh__d2_d0 rs_8_1)) then
                                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_1)
                                                      else
                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_8_4 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_8_4 with
                                              | `LH_P2(_lh_solve_LH_P2_0_8_1, _lh_solve_LH_P2_1_8_1) -> 
                                                (let rec rs_8_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_8_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh__d1_d1 rs_8_2)) then
                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_2)
                                                  else
                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_8_5 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_8_5 with
                                          | `LH_P2(_lh_solve_LH_P2_0_8_2, _lh_solve_LH_P2_1_8_2) -> 
                                            (let rec rs_8_3 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_8_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh__d2_d0 rs_8_3)) then
                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_3)
                                              else
                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_8_6 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_8_6 with
                                      | `LH_P2(_lh_solve_LH_P2_0_8_3, _lh_solve_LH_P2_1_8_3) -> 
                                        (let rec rs_8_4 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_8_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh__d2_d0 rs_8_4)) then
                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_4)
                                          else
                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_8_7 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_8_7 with
                                  | `LH_P2(_lh_solve_LH_P2_0_8_4, _lh_solve_LH_P2_1_8_4) -> 
                                    (let rec rs_8_5 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_8_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh__d2_d0 rs_8_5)) then
                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_5)
                                      else
                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_8_8 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_8_8 with
                              | `LH_P2(_lh_solve_LH_P2_0_8_5, _lh_solve_LH_P2_1_8_5) -> 
                                (let rec rs_8_6 = ((relevant_lh__d9 _lh_solve_LH_P2_0_8_5) _lh_solve_arg3_0) in
                                  (if (not (null_lh__d2_d0 rs_8_6)) then
                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_6)
                                  else
                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_8_9 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_8_9 with
                          | `LH_P2(_lh_solve_LH_P2_0_8_6, _lh_solve_LH_P2_1_8_6) -> 
                            (let rec rs_8_7 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_8_6) _lh_solve_arg3_0) in
                              (if (not (null_lh__d2_d0 rs_8_7)) then
                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_7)
                              else
                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_9_0 = _lh_solve_arg1_0 in
                    (match _lh_matchIdent_9_0 with
                      | `LH_P2(_lh_solve_LH_P2_0_8_7, _lh_solve_LH_P2_1_8_7) -> 
                        (let rec rs_8_8 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_8_7) _lh_solve_arg3_0) in
                          (if (not (null_lh__d2_d0 rs_8_8)) then
                            ((((lookUp_lh__d1_d6 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_8)
                          else
                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                      | _ -> 
                        (failwith "error")))))
        | _ -> 
          (match _lh_solve_arg3_0 with
            | `Term(_lh_solve_Term_0_9, _lh_solve_Term_1_9) -> 
              (match _lh_solve_Term_0_9 with
                | `LH_C(_lh_solve_LH_C_0_4_4, _lh_solve_LH_C_1_4_4) -> 
                  (match _lh_solve_LH_C_0_4_4 with
                    | 'a' -> 
                      (match _lh_solve_LH_C_1_4_4 with
                        | `LH_C(_lh_solve_LH_C_0_4_5, _lh_solve_LH_C_1_4_5) -> 
                          (match _lh_solve_LH_C_0_4_5 with
                            | 'n' -> 
                              (match _lh_solve_LH_C_1_4_5 with
                                | `LH_C(_lh_solve_LH_C_0_4_6, _lh_solve_LH_C_1_4_6) -> 
                                  (match _lh_solve_LH_C_0_4_6 with
                                    | 'd' -> 
                                      (match _lh_solve_LH_C_1_4_6 with
                                        | `LH_N -> 
                                          (match _lh_solve_Term_1_9 with
                                            | `LH_C(_lh_solve_LH_C_0_4_7, _lh_solve_LH_C_1_4_7) -> 
                                              (match _lh_solve_LH_C_1_4_7 with
                                                | `LH_C(_lh_solve_LH_C_0_4_8, _lh_solve_LH_C_1_4_8) -> 
                                                  (match _lh_solve_LH_C_1_4_8 with
                                                    | `LH_N -> 
                                                      (concat_lh__d1 (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_2_7 -> 
                                                        (match _lh_listcomp_fun_para_2_7 with
                                                          | `LH_C(_lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_t_2_5) -> 
                                                            (let rec t_5_3 = (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_2_5) in
                                                              (let rec h_5_3 = (((solve_lh__d1 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_5) _lh_solve_LH_C_0_4_8) in
                                                                (fun _lh_dummy_2_2 -> 
                                                                  ((mappend_lh__d9 h_5_3) (concat_lh__d1 t_5_3)))))
                                                          | `LH_N -> 
                                                            (fun _lh_dummy_2_3 -> 
                                                              (`LH_N)))) in
                                                        (_lh_listcomp_fun_3_3 (((solve_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_4_7))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_9_1 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_9_1 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_8_8, _lh_solve_LH_P2_1_8_8) -> 
                                                            (let rec rs_8_9 = ((relevant_lh__d1_d6 _lh_solve_LH_P2_0_8_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh__d2_d0 rs_8_9)) then
                                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_9)
                                                              else
                                                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_8_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_9_2 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_9_2 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_8_9, _lh_solve_LH_P2_1_8_9) -> 
                                                        (let rec rs_9_0 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_8_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh__d2_d0 rs_9_0)) then
                                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_0)
                                                          else
                                                            (((ask_lh__d1_d8 _lh_solve_LH_P2_1_8_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_9_3 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_9_3 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_9_0, _lh_solve_LH_P2_1_9_0) -> 
                                                    (let rec rs_9_1 = ((relevant_lh__d2 _lh_solve_LH_P2_0_9_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh__d2_d0 rs_9_1)) then
                                                        ((((lookUp_lh__d4 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_1)
                                                      else
                                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_9_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_9_4 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_9_4 with
                                              | `LH_P2(_lh_solve_LH_P2_0_9_1, _lh_solve_LH_P2_1_9_1) -> 
                                                (let rec rs_9_2 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_9_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh__d2_d0 rs_9_2)) then
                                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_2)
                                                  else
                                                    (((ask_lh__d1_d9 _lh_solve_LH_P2_1_9_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_9_5 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_9_5 with
                                          | `LH_P2(_lh_solve_LH_P2_0_9_2, _lh_solve_LH_P2_1_9_2) -> 
                                            (let rec rs_9_3 = ((relevant_lh__d1_d8 _lh_solve_LH_P2_0_9_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh__d2_d0 rs_9_3)) then
                                                ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_3)
                                              else
                                                (((ask_lh__d1_d5 _lh_solve_LH_P2_1_9_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_9_6 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_9_6 with
                                      | `LH_P2(_lh_solve_LH_P2_0_9_3, _lh_solve_LH_P2_1_9_3) -> 
                                        (let rec rs_9_4 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_9_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh__d2_d0 rs_9_4)) then
                                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_4)
                                          else
                                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_9_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_9_7 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_9_7 with
                                  | `LH_P2(_lh_solve_LH_P2_0_9_4, _lh_solve_LH_P2_1_9_4) -> 
                                    (let rec rs_9_5 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_9_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh__d2_d0 rs_9_5)) then
                                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_5)
                                      else
                                        (((ask_lh__d1_d9 _lh_solve_LH_P2_1_9_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_9_8 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_9_8 with
                              | `LH_P2(_lh_solve_LH_P2_0_9_5, _lh_solve_LH_P2_1_9_5) -> 
                                (let rec rs_9_6 = ((relevant_lh__d1_d4 _lh_solve_LH_P2_0_9_5) _lh_solve_arg3_0) in
                                  (if (not (null_lh__d2_d0 rs_9_6)) then
                                    ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_6)
                                  else
                                    (((ask_lh__d1_d2 _lh_solve_LH_P2_1_9_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_9_9 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_9_9 with
                          | `LH_P2(_lh_solve_LH_P2_0_9_6, _lh_solve_LH_P2_1_9_6) -> 
                            (let rec rs_9_7 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_9_6) _lh_solve_arg3_0) in
                              (if (not (null_lh__d2_d0 rs_9_7)) then
                                ((((lookUp_lh__d1_d5 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_7)
                              else
                                (((ask_lh__d1_d9 _lh_solve_LH_P2_1_9_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_1_0_0 = _lh_solve_arg1_0 in
                    (match _lh_matchIdent_1_0_0 with
                      | `LH_P2(_lh_solve_LH_P2_0_9_7, _lh_solve_LH_P2_1_9_7) -> 
                        (let rec rs_9_8 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_9_7) _lh_solve_arg3_0) in
                          (if (not (null_lh__d7 rs_9_8)) then
                            ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_8)
                          else
                            (((ask_lh__d1_d9 _lh_solve_LH_P2_1_9_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_1_0_1 = _lh_solve_arg1_0 in
                (match _lh_matchIdent_1_0_1 with
                  | `LH_P2(_lh_solve_LH_P2_0_9_8, _lh_solve_LH_P2_1_9_8) -> 
                    (let rec rs_9_9 = ((relevant_lh__d2_d0 _lh_solve_LH_P2_0_9_8) _lh_solve_arg3_0) in
                      (if (not (null_lh__d2_d0 rs_9_9)) then
                        ((((lookUp_lh__d1_d7 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_9)
                      else
                        (((ask_lh__d1_d4 _lh_solve_LH_P2_1_9_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                  | _ -> 
                    (failwith "error"))))));;
let rec words_lh__d2 _lh_words_arg1_1 =
  (let rec _lh_matchIdent_1_0_3 = ((dropWhile_lh__d1 isSpace_lh__d2) _lh_words_arg1_1) in
    (match _lh_matchIdent_1_0_3 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1) -> 
        (let rec _lh_matchIdent_1_0_4 = ((break_lh__d2 isSpace_lh__d2) (`LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1))) in
          (match _lh_matchIdent_1_0_4 with
            | `LH_P2(_lh_words_LH_P2_0_1, _lh_words_LH_P2_1_1) -> 
              (`LH_C(_lh_words_LH_P2_0_1, (words_lh__d2 _lh_words_LH_P2_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec strip_lh__d1 _lh_strip_arg1_0 _lh_strip_arg2_0 =
  (match _lh_strip_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_strip_LH_C_0_0, _lh_strip_LH_C_1_0) -> 
      (match _lh_strip_LH_C_0_0 with
        | `Question(_lh_strip_Question_0_0) -> 
          (if ((inList_lh__d2 _lh_strip_Question_0_0) _lh_strip_arg1_0) then
            ((strip_lh__d1 _lh_strip_arg1_0) _lh_strip_LH_C_1_0)
          else
            (`LH_C((`Question(_lh_strip_Question_0_0)), ((strip_lh__d1 (`LH_C(_lh_strip_Question_0_0, _lh_strip_arg1_0))) _lh_strip_LH_C_1_0))))
        | _ -> 
          (`LH_C(_lh_strip_LH_C_0_0, ((strip_lh__d1 _lh_strip_arg1_0) _lh_strip_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec tail_lh__d1 ls_5 =
  (match ls_5 with
    | `LH_C(h_6_5, t_6_5) -> 
      t_6_5
    | `LH_N -> 
      (failwith "error"));;
let rec head_lh__d1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_7_7, t_7_7) -> 
      h_7_7
    | `LH_N -> 
      (failwith "error"));;
let rec lines_lh__d2 _lh_lines_arg1_2 =
  (let rec _lh_matchIdent_1_1_5 = ((break_lh__d2 (fun x_7 -> 
    (x_7 = '|'))) _lh_lines_arg1_2) in
    (match _lh_matchIdent_1_1_5 with
      | `LH_P2(_lh_lines_LH_P2_0_2, _lh_lines_LH_P2_1_2) -> 
        (`LH_C(_lh_lines_LH_P2_0_2, (let rec _lh_matchIdent_1_1_6 = _lh_lines_LH_P2_1_2 in
          (match _lh_matchIdent_1_1_6 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_2, _lh_lines_LH_C_1_2) -> 
              (lines_lh__d2 _lh_lines_LH_C_1_2)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")));;
let rec process_lh__d1 _lh_process_arg1_0 _lh_process_arg2_0 =
  let rec info_0 = (fun _lh_info_arg1_0 _lh_info_arg2_0 -> 
    ((enterList_lh__d1 newTable_lh__d1) (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_1 -> 
      (match _lh_listcomp_fun_para_1_1 with
        | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
          (match _lh_listcomp_fun_ls_h_1_0 with
            | `LH_P2(_lh_info_LH_P2_0_0, _lh_info_LH_P2_1_0) -> 
              (match _lh_info_LH_P2_0_0 with
                | `Question(_lh_info_Question_0_0) -> 
                  (`LH_C((`LH_P2(_lh_info_Question_0_0, _lh_info_LH_P2_1_0)), (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_0)))
                | _ -> 
                  (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_0))
            | _ -> 
              (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_0))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_1_5 ((zip_lh__d1 ((results_0 _lh_info_arg1_0) _lh_info_arg2_0)) (replies_0 _lh_info_arg2_0))))))
  and problem_0 = (fun _lh_problem_arg1_0 -> 
    (goal_lh__d1 (words_lh__d2 (head_lh__d1 (lines_lh__d1 _lh_problem_arg1_0)))))
  and defs_0 = (fun _lh_defs_arg1_0 -> 
    (definitions_lh__d1 (tail_lh__d1 (lines_lh__d2 _lh_defs_arg1_0))))
  and newsoln_0 = (`Soln(newTable_lh__d2, (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_2 -> 
    (_lh_listcomp_fun_para_1_2 _lh_listcomp_fun_1_6)) in
    (_lh_listcomp_fun_1_6 ((enumFromTo_lh__d1 0) 1)))))
  and replies_0 = (fun _lh_replies_arg1_0 -> 
    (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_0 -> 
      (_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_1_4)) in
      (_lh_listcomp_fun_1_4 (lines_lh__d3 _lh_replies_arg1_0))))
  and db_0 = (fun _lh_db_arg1_0 _lh_db_arg2_0 -> 
    (`LH_P2((defs_0 _lh_db_arg1_0), ((info_0 _lh_db_arg1_0) _lh_db_arg2_0))))
  and results_0 = (fun _lh_results_arg1_0 _lh_results_arg2_0 -> 
    ((strip_lh__d1 (`LH_N)) (((solve_lh__d1 ((db_0 _lh_results_arg1_0) _lh_results_arg2_0)) newsoln_0) (problem_0 _lh_results_arg1_0))))
  in ((mappend_lh__d2 ((mappend_lh__d1 ((mappend_lh__d3 (let rec t_3_4 = (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (fun ys_3_5 -> 
    ys_3_5) in
    (let rec h_3_4 = ' ' in
      (fun ys_3_6 -> 
        (`LH_C(h_3_4, ((mappend_lh__d3 t_4_2) ys_3_6)))))) in
    (let rec h_3_5 = ':' in
      (fun ys_3_7 -> 
        (`LH_C(h_3_5, ((mappend_lh__d3 t_4_1) ys_3_7)))))) in
    (let rec h_3_6 = 'g' in
      (fun ys_3_8 -> 
        (`LH_C(h_3_6, ((mappend_lh__d3 t_4_0) ys_3_8)))))) in
    (let rec h_3_7 = 'n' in
      (fun ys_3_9 -> 
        (`LH_C(h_3_7, ((mappend_lh__d3 t_3_9) ys_3_9)))))) in
    (let rec h_3_8 = 'i' in
      (fun ys_4_0 -> 
        (`LH_C(h_3_8, ((mappend_lh__d3 t_3_8) ys_4_0)))))) in
    (let rec h_3_9 = 'v' in
      (fun ys_4_1 -> 
        (`LH_C(h_3_9, ((mappend_lh__d3 t_3_7) ys_4_1)))))) in
    (let rec h_4_0 = 'l' in
      (fun ys_4_2 -> 
        (`LH_C(h_4_0, ((mappend_lh__d3 t_3_6) ys_4_2)))))) in
    (let rec h_4_1 = 'o' in
      (fun ys_4_3 -> 
        (`LH_C(h_4_1, ((mappend_lh__d3 t_3_5) ys_4_3)))))) in
    (let rec h_4_2 = 'S' in
      (fun ys_4_4 -> 
        (`LH_C(h_4_2, ((mappend_lh__d3 t_3_4) ys_4_4))))))) (showPhrase_lh__d1 (problem_0 _lh_process_arg1_0)))) (let rec t_4_3 = (fun ys_4_5 -> 
    ys_4_5) in
    (let rec h_4_3 = '|' in
      (fun ys_4_6 -> 
        (`LH_C(h_4_3, ((mappend_lh__d2 t_4_3) ys_4_6)))))))) (((display_lh__d1 ((results_0 _lh_process_arg1_0) _lh_process_arg2_0)) (vars_lh__d1 (problem_0 _lh_process_arg1_0))) (replies_0 _lh_process_arg2_0)));;
let rec testExpert_nofib_lh__d1 _lh_testExpert_nofib_arg1_0 =
  (let rec animals_0 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('o', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('w', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('g', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('r', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('e', (`LH_C('o', (`LH_C('w', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('i', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('l', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('f', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('g', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('s', (`LH_C('w', (`LH_C('i', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec contents_0 = (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('|', (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_C('b', (`LH_C('e', (`LH_C('|', (`LH_C('A', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C('?', (`LH_C('|', (`LH_C('U', (`LH_C('n', (`LH_C('h', (`LH_C('u', (`LH_C('h', (`LH_C('|', (`LH_C('Y', (`LH_C('e', (`LH_C('p', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      ((fun _lh_funcomp_x_0 -> 
        ((fun _lh_funcomp_x_1 -> 
          (length_lh__d1 ((process_lh__d1 animals_0) _lh_funcomp_x_1))) ((take_lh__d1 (_lh_testExpert_nofib_arg1_0 + 9999)) _lh_funcomp_x_0))) contents_0)));;
end;;

