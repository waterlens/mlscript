

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec take_lh n_1 ls_5 =
  (if (n_1 > 0) then
    (match ls_5 with
      | `LH_C(h_1_6, t_1_6) -> 
        (`LH_C(h_1_6, ((take_lh (n_1 - 1)) t_1_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec dropWhile_lh _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_lh _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec tail_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_1_0, t_1_0) -> 
      t_1_0
    | `LH_N -> 
      (failwith "error"));;
let rec strEq_lh _lh_strEq_arg1_0 _lh_strEq_arg2_0 =
  (match _lh_strEq_arg1_0 with
    | `LH_C(_lh_strEq_LH_C_0_0, _lh_strEq_LH_C_1_0) -> 
      (let rec _lh_matchIdent_1_0_4 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_1_0_4 with
          | `LH_C(_lh_strEq_LH_C_0_1, _lh_strEq_LH_C_1_1) -> 
            (if (_lh_strEq_LH_C_0_0 = _lh_strEq_LH_C_0_1) then
              ((strEq_lh _lh_strEq_LH_C_1_0) _lh_strEq_LH_C_1_1)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_0_5 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_1_0_5 with
          | `LH_C(_lh_strEq_LH_C_0_2, _lh_strEq_LH_C_1_2) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec takeWhile_lh _lh_takeWhile_arg1_0 _lh_takeWhile_arg2_0 =
  (match _lh_takeWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_0, _lh_takeWhile_LH_C_1_0) -> 
      (if (_lh_takeWhile_arg1_0 _lh_takeWhile_LH_C_0_0) then
        (`LH_C(_lh_takeWhile_LH_C_0_0, ((takeWhile_lh _lh_takeWhile_arg1_0) _lh_takeWhile_LH_C_1_0)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec inList_lh _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec head_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_1_2, t_1_2) -> 
      h_1_2
    | `LH_N -> 
      (failwith "error"));;
let rec mappend_lh xs_2 ys_1 =
  (match xs_2 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C(h_1_3, ((mappend_lh t_1_3) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec enumFromTo_lh a_0 b_0 _lh_popOutId_0_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_1_3 = ((enumFromTo_lh (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_1_2 = a_0 in
        (`LH_C((`LH_C('X', (string_of_int _lh_listcomp_fun_ls_h_1_2))), (_lh_popOutId_0_0 _lh_listcomp_fun_ls_t_1_3)))))
  else
    (`LH_N));;
let rec break_lh _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_1_0_6 = ((break_lh _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_1_0_6 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec foldr1_lh _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1_lh _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec map_lh f_0 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C((f_0 h_1_4), ((map_lh f_0) t_1_4)))
    | `LH_N -> 
      (`LH_N));;
let rec answer_lh _lh_answer_arg1_0 =
  (match _lh_answer_arg1_0 with
    | `Answer(_lh_answer_Answer_0_0) -> 
      _lh_answer_Answer_0_0
    | _ -> 
      (failwith "error"));;
let rec succeeds_lh _lh_succeeds_arg1_0 =
  (match _lh_succeeds_arg1_0 with
    | `Answer(_lh_succeeds_Answer_0_0) -> 
      true
    | _ -> 
      false);;
let rec failure_lh _lh_failure_arg1_0 =
  (`Reason(_lh_failure_arg1_0));;
let rec success_lh _lh_success_arg1_0 =
  (`Answer(_lh_success_arg1_0));;
let rec fst_lh _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec concat_lh lss_0 =
  (lss_0 99);;
let rec drop_lh _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_lh (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec length_lh ls_1 =
  (match ls_1 with
    | `LH_C(h_1_1, t_1_1) -> 
      (1 + (length_lh t_1_1))
    | `LH_N -> 
      0);;
let rec zip_lh xs_1 ys_0 =
  (match xs_1 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_0 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lh tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec filter_lh f_2 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_9, t_1_9) -> 
      (if (f_2 h_1_9) then
        (`LH_C(h_1_9, ((filter_lh f_2) t_1_9)))
      else
        ((filter_lh f_2) t_1_9))
    | `LH_N -> 
      (`LH_N));;
let rec update_lh _lh_update_arg1_0 _lh_update_arg2_0 _lh_update_arg3_0 =
  (match _lh_update_arg1_0 with
    | `Empty -> 
      (`Fork((`Empty), (`LH_P2(_lh_update_arg2_0, _lh_update_arg3_0)), (`Empty)))
    | `Fork(_lh_update_Fork_0_0, _lh_update_Fork_1_0, _lh_update_Fork_2_0) -> 
      (match _lh_update_Fork_1_0 with
        | `LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0) -> 
          (if (_lh_update_arg2_0 < _lh_update_LH_P2_0_0) then
            (`Fork((((update_lh _lh_update_Fork_0_0) _lh_update_arg2_0) _lh_update_arg3_0), (`LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0)), _lh_update_Fork_2_0))
          else
            (if (_lh_update_arg2_0 = _lh_update_LH_P2_0_0) then
              (`Fork(_lh_update_Fork_0_0, (`LH_P2(_lh_update_arg2_0, _lh_update_arg3_0)), _lh_update_Fork_2_0))
            else
              (if (_lh_update_arg2_0 > _lh_update_LH_P2_0_0) then
                (`Fork(_lh_update_Fork_0_0, (`LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0)), (((update_lh _lh_update_Fork_2_0) _lh_update_arg2_0) _lh_update_arg3_0)))
              else
                ((failwith "error") (`LH_C('u', (`LH_C('p', (`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec or_lh _lh_or_arg1_0 =
  (_lh_or_arg1_0 99);;
let rec newTable_lh =
  (`Empty);;
let rec try_lh _lh_try_arg1_1 _lh_try_arg2_0 _lh_try_arg3_1 _lh_try_arg4_1 =
  (((_lh_try_arg2_0 _lh_try_arg1_1) _lh_try_arg3_1) _lh_try_arg4_1);;
let rec mergeKey_lh _lh_mergeKey_arg1_0 _lh_mergeKey_arg2_0 =
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
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0)), ((mergeKey_lh _lh_mergeKey_LH_C_1_0) (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1)), _lh_mergeKey_LH_C_1_1)))))
                          else
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1)), ((mergeKey_lh (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0)), _lh_mergeKey_LH_C_1_0))) _lh_mergeKey_LH_C_1_1))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec atIndex_lh n_2 ls_6 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match ls_6 with
      | `LH_C(h_1_8, t_1_8) -> 
        (if (n_2 = 0) then
          h_1_8
        else
          ((atIndex_lh (n_2 - 1)) t_1_8))
      | `LH_N -> 
        (failwith "error")));;
let rec foldr_lh f_1 i_0 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_5, t_1_5) -> 
      ((f_1 h_1_5) (((foldr_lh f_1) i_0) t_1_5))
    | `LH_N -> 
      i_0);;
let rec null_lh _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec isSpace_lh _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec split_lh _lh_split_arg1_0 _lh_split_arg2_0 _lh_split_arg3_0 _lh_split_arg4_0 =
  (`Term(_lh_split_arg3_0, (`LH_C((_lh_split_arg2_0 ((takeWhile_lh (fun x_1 -> 
    (not ((strEq_lh x_1) _lh_split_arg3_0)))) _lh_split_arg1_0)), (`LH_C((_lh_split_arg4_0 (tail_lh ((dropWhile_lh (fun x_2 -> 
    (not ((strEq_lh x_2) _lh_split_arg3_0)))) _lh_split_arg1_0))), (`LH_N)))))));;
let rec noun_lh _lh_noun_arg1_0 =
  (match _lh_noun_arg1_0 with
    | `LH_C(_lh_noun_LH_C_0_0, _lh_noun_LH_C_1_0) -> 
      (match _lh_noun_LH_C_1_0 with
        | `LH_C(_lh_noun_LH_C_0_1, _lh_noun_LH_C_1_1) -> 
          (match _lh_noun_LH_C_1_1 with
            | `LH_N -> 
              (if ((inList_lh _lh_noun_LH_C_0_0) (`LH_C((`LH_C('a', (`LH_N))), (`LH_C((`LH_C('a', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))), (`LH_N)))))))) then
                (noun_lh (`LH_C(((mappend_lh ((mappend_lh _lh_noun_LH_C_0_0) (`LH_C(' ', (`LH_N))))) _lh_noun_LH_C_0_1), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head_lh _lh_noun_LH_C_0_0)) && ((head_lh _lh_noun_LH_C_0_0) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_0))
          else
            (`Term(_lh_noun_LH_C_0_0, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lines_lh _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_0 = ((break_lh (fun x_0 -> 
    (x_0 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_0 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_1 = _lh_lines_LH_P2_1_0 in
          (match _lh_matchIdent_1 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_0, _lh_lines_LH_C_1_0) -> 
              (lines_lh _lh_lines_LH_C_1_0)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")));;
let rec showPhrase_lh _lh_showPhrase_arg1_0 =
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
                  ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (showPhrase_lh _lh_showPhrase_LH_C_0_0)) (`LH_C(' ', (`LH_N))))) _lh_showPhrase_Term_0_0)) (`LH_C(' ', (`LH_N))))) (showPhrase_lh _lh_showPhrase_LH_C_0_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec fails_lh _lh_fails_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    (not (succeeds_lh _lh_funcomp_x_2))) _lh_fails_arg1_0);;
let rec find_lh _lh_find_arg1_0 _lh_find_arg2_0 =
  (let rec _lh_matchIdent_1_0_7 = _lh_find_arg1_0 in
    (match _lh_matchIdent_1_0_7 with
      | `Empty -> 
        (failure_lh (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_0, _lh_find_Fork_1_0, _lh_find_Fork_2_0) -> 
        (match _lh_find_Fork_1_0 with
          | `LH_P2(_lh_find_LH_P2_0_0, _lh_find_LH_P2_1_0) -> 
            (if (_lh_find_arg2_0 < _lh_find_LH_P2_0_0) then
              ((find_lh _lh_find_Fork_0_0) _lh_find_arg2_0)
            else
              (if (_lh_find_arg2_0 = _lh_find_LH_P2_0_0) then
                (success_lh _lh_find_LH_P2_1_0)
              else
                (if (_lh_find_arg2_0 > _lh_find_LH_P2_0_0) then
                  ((find_lh _lh_find_Fork_2_0) _lh_find_arg2_0)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")));;
let rec enterList_lh _lh_enterList_arg1_0 _lh_enterList_arg2_0 =
  (match _lh_enterList_arg2_0 with
    | `LH_N -> 
      _lh_enterList_arg1_0
    | _ -> 
      (match _lh_enterList_arg1_0 with
        | `Empty -> 
          (match _lh_enterList_arg2_0 with
            | `LH_C(_lh_enterList_LH_C_0_0, _lh_enterList_LH_C_1_0) -> 
              (let rec k_0 = (fst_lh _lh_enterList_LH_C_0_0) in
                (let rec left_0 = ((enterList_lh (`Empty)) (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_6 -> 
                  (match _lh_listcomp_fun_para_6 with
                    | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_6) -> 
                      (if ((fst_lh _lh_listcomp_fun_ls_h_5) < k_0) then
                        (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_6)))
                      else
                        (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_6))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_9 _lh_enterList_LH_C_1_0))) in
                  (let rec right_0 = ((enterList_lh (`Empty)) (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_7 -> 
                    (match _lh_listcomp_fun_para_7 with
                      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_7) -> 
                        (if ((fst_lh _lh_listcomp_fun_ls_h_6) > k_0) then
                          (`LH_C(_lh_listcomp_fun_ls_h_6, (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_7)))
                        else
                          (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_7))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_1_0 _lh_enterList_LH_C_1_0))) in
                    (`Fork(left_0, _lh_enterList_LH_C_0_0, right_0)))))
            | _ -> 
              (match _lh_enterList_arg1_0 with
                | `Fork(_lh_enterList_Fork_0_0, _lh_enterList_Fork_1_0, _lh_enterList_Fork_2_0) -> 
                  (let rec k_1 = (fst_lh _lh_enterList_Fork_1_0) in
                    (let rec left'_0 = ((enterList_lh _lh_enterList_Fork_0_0) (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_8 -> 
                      (match _lh_listcomp_fun_para_8 with
                        | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_8) -> 
                          (if ((fst_lh _lh_listcomp_fun_ls_h_7) < k_1) then
                            (`LH_C(_lh_listcomp_fun_ls_h_7, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_8)))
                          else
                            (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_8))
                        | `LH_N -> 
                          (`LH_N))) in
                      (_lh_listcomp_fun_1_1 _lh_enterList_arg2_0))) in
                      (let rec right'_0 = ((enterList_lh _lh_enterList_Fork_2_0) (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_9 -> 
                        (match _lh_listcomp_fun_para_9 with
                          | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_9) -> 
                            (if ((fst_lh _lh_listcomp_fun_ls_h_8) > k_1) then
                              (`LH_C(_lh_listcomp_fun_ls_h_8, (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_9)))
                            else
                              (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_9))
                          | `LH_N -> 
                            (`LH_N))) in
                        (_lh_listcomp_fun_1_2 _lh_enterList_arg2_0))) in
                        (`Fork(left'_0, _lh_enterList_Fork_1_0, right'_0)))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_enterList_arg1_0 with
            | `Fork(_lh_enterList_Fork_0_1, _lh_enterList_Fork_1_1, _lh_enterList_Fork_2_1) -> 
              (let rec k_2 = (fst_lh _lh_enterList_Fork_1_1) in
                (let rec left'_1 = ((enterList_lh _lh_enterList_Fork_0_1) (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_1_0 -> 
                  (match _lh_listcomp_fun_para_1_0 with
                    | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_1_0) -> 
                      (if ((fst_lh _lh_listcomp_fun_ls_h_9) < k_2) then
                        (`LH_C(_lh_listcomp_fun_ls_h_9, (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_0)))
                      else
                        (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_0))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_1_3 _lh_enterList_arg2_0))) in
                  (let rec right'_1 = ((enterList_lh _lh_enterList_Fork_2_1) (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_1 -> 
                    (match _lh_listcomp_fun_para_1_1 with
                      | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_1) -> 
                        (if ((fst_lh _lh_listcomp_fun_ls_h_1_0) > k_2) then
                          (`LH_C(_lh_listcomp_fun_ls_h_1_0, (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_1)))
                        else
                          (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_1))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_1_4 _lh_enterList_arg2_0))) in
                    (`Fork(left'_1, _lh_enterList_Fork_1_1, right'_1)))))
            | _ -> 
              (failwith "error"))));;
let rec nub_lh _lh_nub_arg1_0 =
  (match _lh_nub_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nub_LH_C_0_0, _lh_nub_LH_C_1_0) -> 
      (`LH_C(_lh_nub_LH_C_0_0, (nub_lh ((filter_lh (fun y_1 -> 
        (not (_lh_nub_LH_C_0_0 = y_1)))) _lh_nub_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec occurs_lh _lh_occurs_arg1_0 _lh_occurs_arg2_1 =
  (match _lh_occurs_arg2_1 with
    | `Term(_lh_occurs_Term_0_0, _lh_occurs_Term_1_0) -> 
      (or_lh (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_2_8 -> 
        (match _lh_listcomp_fun_para_2_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_8, _lh_listcomp_fun_ls_t_2_9) -> 
            (let rec _lh_or_LH_C_1_0 = (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_2_9) in
              (let rec _lh_or_LH_C_0_0 = ((occurs_lh _lh_occurs_arg1_0) _lh_listcomp_fun_ls_h_2_8) in
                (fun _lh_dummy_2_2 -> 
                  (if _lh_or_LH_C_0_0 then
                    true
                  else
                    (or_lh _lh_or_LH_C_1_0)))))
          | `LH_N -> 
            (fun _lh_dummy_2_3 -> 
              false))) in
        (_lh_listcomp_fun_3_3 _lh_occurs_Term_1_0)))
    | _ -> 
      (_lh_occurs_arg1_0 _lh_occurs_arg2_1));;
let rec entries_lh _lh_entries_arg1_0 =
  (match _lh_entries_arg1_0 with
    | `Empty -> 
      (`LH_N)
    | `Fork(_lh_entries_Fork_0_0, _lh_entries_Fork_1_0, _lh_entries_Fork_2_0) -> 
      ((mappend_lh ((mappend_lh (entries_lh _lh_entries_Fork_0_0)) (`LH_C(_lh_entries_Fork_1_0, (`LH_N))))) (entries_lh _lh_entries_Fork_2_0))
    | _ -> 
      (failwith "error"));;
let rec sortKey_lh _lh_sortKey_arg1_0 =
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
    (((foldr_lh insertKey_0) (`LH_N)) _lh_sortKey_arg1_0));;
let rec words_lh _lh_words_arg1_0 =
  (let rec _lh_matchIdent_1_0_1 = ((dropWhile_lh isSpace_lh) _lh_words_arg1_0) in
    (match _lh_matchIdent_1_0_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0) -> 
        (let rec _lh_matchIdent_1_0_2 = ((break_lh isSpace_lh) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
          (match _lh_matchIdent_1_0_2 with
            | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
              (`LH_C(_lh_words_LH_P2_0_0, (words_lh _lh_words_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec strip_lh _lh_strip_arg1_0 _lh_strip_arg2_0 =
  (match _lh_strip_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_strip_LH_C_0_0, _lh_strip_LH_C_1_0) -> 
      (match _lh_strip_LH_C_0_0 with
        | `Question(_lh_strip_Question_0_0) -> 
          (if ((inList_lh _lh_strip_Question_0_0) _lh_strip_arg1_0) then
            ((strip_lh _lh_strip_arg1_0) _lh_strip_LH_C_1_0)
          else
            (`LH_C((`Question(_lh_strip_Question_0_0)), ((strip_lh (`LH_C(_lh_strip_Question_0_0, _lh_strip_arg1_0))) _lh_strip_LH_C_1_0))))
        | _ -> 
          (`LH_C(_lh_strip_LH_C_0_0, ((strip_lh _lh_strip_arg1_0) _lh_strip_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec relation_lh _lh_relation_arg1_0 =
  (let rec verbs_0 = (`LH_C((`LH_C('i', (`LH_C('s', (`LH_N))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))), (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))), (`LH_C((`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))), (`LH_N))))))))))) in
    (let rec verb_0 = (head_lh (let rec _lh_listcomp_fun_2_7 = (fun _lh_listcomp_fun_para_2_2 -> 
      (match _lh_listcomp_fun_para_2_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_3) -> 
          (if ((inList_lh _lh_listcomp_fun_ls_h_2_2) verbs_0) then
            (`LH_C(_lh_listcomp_fun_ls_h_2_2, (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_2_3)))
          else
            (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_2_3))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_2_7 _lh_relation_arg1_0))) in
      ((((split_lh _lh_relation_arg1_0) noun_lh) verb_0) noun_lh)));;
let rec subst_lh _lh_subst_arg1_0 _lh_subst_arg2_0 =
  (match _lh_subst_arg2_0 with
    | `Term(_lh_subst_Term_0_0, _lh_subst_Term_1_0) -> 
      (`Term(_lh_subst_Term_0_0, (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_2 -> 
        (match _lh_listcomp_fun_para_1_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_2) -> 
            (`LH_C(((subst_lh _lh_subst_arg1_0) _lh_listcomp_fun_ls_h_1_1), (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_5 _lh_subst_Term_1_0))))
    | `Var(_lh_subst_Var_0_0) -> 
      (let rec lookup_0 = ((find_lh _lh_subst_arg1_0) _lh_subst_Var_0_0) in
        (if (fails_lh lookup_0) then
          (`Var(_lh_subst_Var_0_0))
        else
          ((subst_lh _lh_subst_arg1_0) (answer_lh lookup_0))))
    | _ -> 
      (failwith "error"));;
let rec vars_lh _lh_vars_arg1_0 =
  (let rec names_0 = (fun _lh_names_arg1_0 -> 
    (match _lh_names_arg1_0 with
      | `Var(_lh_names_Var_0_0) -> 
        (`LH_C(_lh_names_Var_0_0, (`LH_N)))
      | `Term(_lh_names_Term_0_0, _lh_names_Term_1_0) -> 
        (concat_lh (let rec _lh_listcomp_fun_3_2 = (fun _lh_listcomp_fun_para_2_7 -> 
          (match _lh_listcomp_fun_para_2_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_2_7, _lh_listcomp_fun_ls_t_2_8) -> 
              (let rec t_1_7 = (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_2_8) in
                (let rec h_1_7 = (names_0 _lh_listcomp_fun_ls_h_2_7) in
                  (fun _lh_dummy_2_0 -> 
                    ((mappend_lh h_1_7) (concat_lh t_1_7)))))
            | `LH_N -> 
              (fun _lh_dummy_2_1 -> 
                (`LH_N)))) in
          (_lh_listcomp_fun_3_2 _lh_names_Term_1_0)))
      | _ -> 
        (failwith "error"))) in
    (nub_lh (names_0 _lh_vars_arg1_0)));;
let rec updateList_lh _lh_updateList_arg1_0 _lh_updateList_arg2_0 =
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
        (let rec m_1 = ((length_lh _lh_balance_arg1_0) / 2) in
          (let rec left_1 = (balance_0 ((take_lh m_1) _lh_balance_arg1_0)) in
            (let rec right_1 = (balance_0 ((drop_lh (m_1 + 1)) _lh_balance_arg1_0)) in
              (`Fork(left_1, ((atIndex_lh m_1) _lh_balance_arg1_0), right_1)))))))
  in (balance_0 ((mergeKey_lh (entries_lh _lh_updateList_arg1_0)) (unique_0 (sortKey_lh _lh_updateList_arg2_0))));;
let rec relevant_lh _lh_relevant_arg1_0 _lh_relevant_arg2_0 =
  (match _lh_relevant_arg2_0 with
    | `Term(_lh_relevant_Term_0_0, _lh_relevant_Term_1_0) -> 
      (let rec lookup_1 = ((find_lh _lh_relevant_arg1_0) _lh_relevant_Term_0_0) in
        (if (fails_lh lookup_1) then
          (`LH_N)
        else
          (answer_lh lookup_1)))
    | _ -> 
      (failwith "error"));;
let rec goal_lh _lh_goal_arg1_0 =
  (if ((inList_lh (`LH_C('o', (`LH_C('r', (`LH_N)))))) _lh_goal_arg1_0) then
    ((((split_lh _lh_goal_arg1_0) goal_lh) (`LH_C('o', (`LH_C('r', (`LH_N)))))) goal_lh)
  else
    (if ((inList_lh (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) _lh_goal_arg1_0) then
      ((((split_lh _lh_goal_arg1_0) goal_lh) (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) goal_lh)
    else
      (relation_lh _lh_goal_arg1_0)));;
let rec showVars_lh _lh_showVars_arg1_0 _lh_showVars_arg2_0 =
  (let rec join_0 = (fun x_4 y_0 -> 
    ((mappend_lh ((mappend_lh x_4) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) y_0)) in
    (let rec showVar_0 = (fun v_1 -> 
      ((mappend_lh ((mappend_lh v_1) (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_N))))))))) (showPhrase_lh ((subst_lh _lh_showVars_arg1_0) (`Var(v_1)))))) in
      ((foldr1_lh join_0) ((map_lh showVar_0) _lh_showVars_arg2_0))));;
let rec compear_lh _lh_compear_arg1_0 _lh_compear_arg2_0 _lh_compear_arg3_0 =
  (match _lh_compear_arg2_0 with
    | `Term(_lh_compear_Term_0_0, _lh_compear_Term_1_0) -> 
      (match _lh_compear_arg3_0 with
        | `Term(_lh_compear_Term_0_1, _lh_compear_Term_1_1) -> 
          (if (_lh_compear_Term_0_0 = _lh_compear_Term_0_1) then
            ((matchList_lh _lh_compear_arg1_0) ((zip_lh _lh_compear_Term_1_0) _lh_compear_Term_1_1))
          else
            (failure_lh (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))
        | _ -> 
          (match _lh_compear_arg3_0 with
            | `Var(_lh_compear_Var_0_0) -> 
              (((compear_lh _lh_compear_arg1_0) (`Var(_lh_compear_Var_0_0))) _lh_compear_arg2_0)
            | _ -> 
              (failwith "error")))
    | `Var(_lh_compear_Var_0_1) -> 
      (match _lh_compear_arg3_0 with
        | `Var(_lh_compear_Var_0_2) -> 
          (if (_lh_compear_Var_0_1 <> _lh_compear_Var_0_2) then
            (success_lh (((update_lh _lh_compear_arg1_0) _lh_compear_Var_0_1) (`Var(_lh_compear_Var_0_2))))
          else
            (success_lh _lh_compear_arg1_0))
        | _ -> 
          (if (not ((occurs_lh (let rec _lh_occurs_Var_0_0 = _lh_compear_Var_0_1 in
            (fun _lh_occurs_arg2_0 -> 
              (match _lh_occurs_arg2_0 with
                | `Var(_lh_occurs_Var_0_1) -> 
                  (_lh_occurs_Var_0_0 = _lh_occurs_Var_0_1)
                | _ -> 
                  (match _lh_occurs_arg2_0 with
                    | `Var(_lh_occurs_Var_0_2) -> 
                      false
                    | _ -> 
                      (failwith "error")))))) _lh_compear_arg3_0)) then
            (success_lh (((update_lh _lh_compear_arg1_0) _lh_compear_Var_0_1) _lh_compear_arg3_0))
          else
            (failure_lh (`LH_C('o', (`LH_C('c', (`LH_C('c', (`LH_C('u', (`LH_C('r', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C(' ', (`LH_C('f', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C('d', (`LH_N))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (match _lh_compear_arg3_0 with
        | `Var(_lh_compear_Var_0_3) -> 
          (((compear_lh _lh_compear_arg1_0) (`Var(_lh_compear_Var_0_3))) _lh_compear_arg2_0)
        | _ -> 
          (failwith "error")))
and
matchList_lh _lh_matchList_arg1_0 _lh_matchList_arg2_0 =
  (match _lh_matchList_arg2_0 with
    | `LH_N -> 
      (success_lh _lh_matchList_arg1_0)
    | `LH_C(_lh_matchList_LH_C_0_0, _lh_matchList_LH_C_1_0) -> 
      (match _lh_matchList_LH_C_0_0 with
        | `LH_P2(_lh_matchList_LH_P2_0_0, _lh_matchList_LH_P2_1_0) -> 
          (let rec res_0 = (((match_lh _lh_matchList_arg1_0) _lh_matchList_LH_P2_0_0) _lh_matchList_LH_P2_1_0) in
            (if (fails_lh res_0) then
              res_0
            else
              ((matchList_lh (answer_lh res_0)) _lh_matchList_LH_C_1_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
match_lh _lh_match_arg1_0 _lh_match_arg2_0 _lh_match_arg3_0 =
  (((compear_lh _lh_match_arg1_0) ((subst_lh _lh_match_arg1_0) _lh_match_arg2_0)) ((subst_lh _lh_match_arg1_0) _lh_match_arg3_0));;
let rec ask_lh _lh_ask_arg1_0 _lh_ask_arg2_0 _lh_ask_arg3_0 =
  (match _lh_ask_arg2_0 with
    | `Soln(_lh_ask_Soln_0_0, _lh_ask_Soln_1_0) -> 
      (let rec sp_0 = (showPhrase_lh ((subst_lh _lh_ask_Soln_0_0) _lh_ask_arg3_0)) in
        (let rec ans_0 = (answer_lh ((find_lh _lh_ask_arg1_0) sp_0)) in
          (`LH_C((`Question(sp_0)), (if ans_0 then
            (`LH_C((`Soln(_lh_ask_Soln_0_0, _lh_ask_Soln_1_0)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"));;
let rec display_lh _lh_display_arg1_0 _lh_display_arg2_0 _lh_display_arg3_0 =
  (match _lh_display_arg1_0 with
    | `LH_N -> 
      (`LH_C('N', (`LH_C('o', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_display_LH_C_0_0, _lh_display_LH_C_1_0) -> 
      (match _lh_display_LH_C_0_0 with
        | `Question(_lh_display_Question_0_0) -> 
          ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('I', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))) _lh_display_Question_0_0)) (`LH_C('?', (`LH_C('|', (`LH_N))))))) (((display_lh _lh_display_LH_C_1_0) _lh_display_arg2_0) (tail_lh _lh_display_arg3_0)))
        | `Soln(_lh_display_Soln_0_0, _lh_display_Soln_1_0) -> 
          (let rec sol_0 = ((showVars_lh _lh_display_Soln_0_0) _lh_display_arg2_0) in
            (let rec etc_0 = (if ((_lh_display_arg3_0 = (`LH_N)) || ((head_lh _lh_display_arg3_0) = false)) then
              (`LH_N)
            else
              (((display_lh _lh_display_LH_C_1_0) _lh_display_arg2_0) (tail_lh _lh_display_arg3_0))) in
              ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('S', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))) sol_0)) (`LH_C('.', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C('?', (`LH_C('|', (`LH_N))))))))))))))))))) etc_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec freshCopy_lh _lh_freshCopy_arg1_0 _lh_freshCopy_arg2_0 =
  (match _lh_freshCopy_arg1_0 with
    | `Soln(_lh_freshCopy_Soln_0_0, _lh_freshCopy_Soln_1_0) -> 
      (let rec xs_0 = (vars_lh _lh_freshCopy_arg2_0) in
        (let rec n_0 = (length_lh xs_0) in
          (let rec tab_0 = ((updateList_lh newTable_lh) ((zip_lh xs_0) (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_5 -> 
            (match _lh_listcomp_fun_para_5 with
              | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                (`LH_C((`Var(_lh_listcomp_fun_ls_h_4)), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_4)))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_7 ((take_lh n_0) _lh_freshCopy_Soln_1_0))))) in
            (let rec _lh_lookUp_LH_P2_1_0 = ((subst_lh tab_0) _lh_freshCopy_arg2_0) in
              (let rec _lh_lookUp_LH_P2_0_0 = (let rec _lh_try_Soln_1_0 = ((drop_lh n_0) _lh_freshCopy_Soln_1_0) in
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
                                                        (let rec m_0 = (((match_lh _lh_try_Soln_0_0) _lh_try_arg3_0) _lh_try_LH_C_0_2) in
                                                          (if (fails_lh m_0) then
                                                            (`LH_N)
                                                          else
                                                            (((solve_lh _lh_try_arg1_0) (`Soln((answer_lh m_0), _lh_try_Soln_1_0))) _lh_try_LH_C_0_3)))
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
                        (failwith "error"))))) in
                (fun _lh_listcomp_fun_ls_t_5 _lh_listcomp_fun_8 _lh_lookUp_arg1_3 _lh_lookUp_arg3_3 -> 
                  (let rec t_0 = (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_5) in
                    (let rec h_0 = ((((try_lh _lh_lookUp_arg1_3) _lh_lookUp_LH_P2_0_0) _lh_lookUp_arg3_3) _lh_lookUp_LH_P2_1_0) in
                      (fun _lh_dummy_1 -> 
                        ((mappend_lh h_0) (concat_lh t_0)))))))))))
    | _ -> 
      (failwith "error"))
and
lookUp_lh _lh_lookUp_arg1_0 _lh_lookUp_arg2_0 _lh_lookUp_arg3_0 _lh_lookUp_arg4_0 =
  (let rec copies_0 = (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (let rec _lh_listcomp_fun_ls_t_1 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
          (let rec _lh_listcomp_fun_ls_h_1 = ((freshCopy_lh _lh_lookUp_arg2_0) _lh_listcomp_fun_ls_h_0) in
            (fun _lh_listcomp_fun_1 _lh_lookUp_arg1_1 _lh_lookUp_arg3_1 -> 
              ((((_lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_1) _lh_lookUp_arg1_1) _lh_lookUp_arg3_1))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_2 _lh_lookUp_arg1_2 _lh_lookUp_arg3_2 _lh_dummy_0 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_0 _lh_lookUp_arg4_0)) in
    (concat_lh (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_1 -> 
      (((_lh_listcomp_fun_para_1 _lh_listcomp_fun_3) _lh_lookUp_arg1_0) _lh_lookUp_arg3_0)) in
      (_lh_listcomp_fun_3 copies_0))))
and
solve_lh _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
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
                                          ((mappend_lh (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2)) (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3))
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
                                                                                      (concat_lh (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_1_3 -> 
                                                                                        (match _lh_listcomp_fun_para_1_3 with
                                                                                          | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_4) -> 
                                                                                            (let rec t_1 = (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_4) in
                                                                                              (let rec h_1 = (((solve_lh _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_3) _lh_solve_LH_C_0_8) in
                                                                                                (fun _lh_dummy_2 -> 
                                                                                                  ((mappend_lh h_1) (concat_lh t_1)))))
                                                                                          | `LH_N -> 
                                                                                            (fun _lh_dummy_3 -> 
                                                                                              (`LH_N)))) in
                                                                                        (_lh_listcomp_fun_1_8 (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_7))))
                                                                                    | _ -> 
                                                                                      (let rec _lh_matchIdent_2 = _lh_solve_arg1_0 in
                                                                                        (match _lh_matchIdent_2 with
                                                                                          | `LH_P2(_lh_solve_LH_P2_0_0, _lh_solve_LH_P2_1_0) -> 
                                                                                            (let rec rs_0 = ((relevant_lh _lh_solve_LH_P2_0_0) _lh_solve_arg3_0) in
                                                                                              (if (not (null_lh rs_0)) then
                                                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_0)
                                                                                              else
                                                                                                (((ask_lh _lh_solve_LH_P2_1_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                          | _ -> 
                                                                                            (failwith "error"))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_3 = _lh_solve_arg1_0 in
                                                                                    (match _lh_matchIdent_3 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1, _lh_solve_LH_P2_1_1) -> 
                                                                                        (let rec rs_1 = ((relevant_lh _lh_solve_LH_P2_0_1) _lh_solve_arg3_0) in
                                                                                          (if (not (null_lh rs_1)) then
                                                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1)
                                                                                          else
                                                                                            (((ask_lh _lh_solve_LH_P2_1_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_4 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_4 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_2, _lh_solve_LH_P2_1_2) -> 
                                                                                    (let rec rs_2 = ((relevant_lh _lh_solve_LH_P2_0_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null_lh rs_2)) then
                                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2)
                                                                                      else
                                                                                        (((ask_lh _lh_solve_LH_P2_1_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_5 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_5 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_3, _lh_solve_LH_P2_1_3) -> 
                                                                                (let rec rs_3 = ((relevant_lh _lh_solve_LH_P2_0_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null_lh rs_3)) then
                                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3)
                                                                                  else
                                                                                    (((ask_lh _lh_solve_LH_P2_1_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_6 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_6 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_4, _lh_solve_LH_P2_1_4) -> 
                                                                            (let rec rs_4 = ((relevant_lh _lh_solve_LH_P2_0_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh rs_4)) then
                                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4)
                                                                              else
                                                                                (((ask_lh _lh_solve_LH_P2_1_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_7 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_7 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_5, _lh_solve_LH_P2_1_5) -> 
                                                                        (let rec rs_5 = ((relevant_lh _lh_solve_LH_P2_0_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh rs_5)) then
                                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5)
                                                                          else
                                                                            (((ask_lh _lh_solve_LH_P2_1_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_8 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_8 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_6, _lh_solve_LH_P2_1_6) -> 
                                                                    (let rec rs_6 = ((relevant_lh _lh_solve_LH_P2_0_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh rs_6)) then
                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6)
                                                                      else
                                                                        (((ask_lh _lh_solve_LH_P2_1_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_9 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_9 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_7, _lh_solve_LH_P2_1_7) -> 
                                                                (let rec rs_7 = ((relevant_lh _lh_solve_LH_P2_0_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh rs_7)) then
                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7)
                                                                  else
                                                                    (((ask_lh _lh_solve_LH_P2_1_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_0 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_1_0 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_8, _lh_solve_LH_P2_1_8) -> 
                                                            (let rec rs_8 = ((relevant_lh _lh_solve_LH_P2_0_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh rs_8)) then
                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8)
                                                              else
                                                                (((ask_lh _lh_solve_LH_P2_1_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_1 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_1_1 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_9, _lh_solve_LH_P2_1_9) -> 
                                                        (let rec rs_9 = ((relevant_lh _lh_solve_LH_P2_0_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh rs_9)) then
                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9)
                                                          else
                                                            (((ask_lh _lh_solve_LH_P2_1_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_2 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_1_2 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_0, _lh_solve_LH_P2_1_1_0) -> 
                                                    (let rec rs_1_0 = ((relevant_lh _lh_solve_LH_P2_0_1_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh rs_1_0)) then
                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_0)
                                                      else
                                                        (((ask_lh _lh_solve_LH_P2_1_1_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
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
                                                                                  (concat_lh (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_1_4 -> 
                                                                                    (match _lh_listcomp_fun_para_1_4 with
                                                                                      | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_5) -> 
                                                                                        (let rec t_2 = (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_5) in
                                                                                          (let rec h_2 = (((solve_lh _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_4) _lh_solve_LH_C_0_1_3) in
                                                                                            (fun _lh_dummy_4 -> 
                                                                                              ((mappend_lh h_2) (concat_lh t_2)))))
                                                                                      | `LH_N -> 
                                                                                        (fun _lh_dummy_5 -> 
                                                                                          (`LH_N)))) in
                                                                                    (_lh_listcomp_fun_1_9 (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_1_2))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_1_3 = _lh_solve_arg1_0 in
                                                                                    (match _lh_matchIdent_1_3 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_1, _lh_solve_LH_P2_1_1_1) -> 
                                                                                        (let rec rs_1_1 = ((relevant_lh _lh_solve_LH_P2_0_1_1) _lh_solve_arg3_0) in
                                                                                          (if (not (null_lh rs_1_1)) then
                                                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_1)
                                                                                          else
                                                                                            (((ask_lh _lh_solve_LH_P2_1_1_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_1_4 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_1_4 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_2, _lh_solve_LH_P2_1_1_2) -> 
                                                                                    (let rec rs_1_2 = ((relevant_lh _lh_solve_LH_P2_0_1_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null_lh rs_1_2)) then
                                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_2)
                                                                                      else
                                                                                        (((ask_lh _lh_solve_LH_P2_1_1_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_1_5 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_1_5 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_1_3, _lh_solve_LH_P2_1_1_3) -> 
                                                                                (let rec rs_1_3 = ((relevant_lh _lh_solve_LH_P2_0_1_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null_lh rs_1_3)) then
                                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_3)
                                                                                  else
                                                                                    (((ask_lh _lh_solve_LH_P2_1_1_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_1_6 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_1_6 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_1_4, _lh_solve_LH_P2_1_1_4) -> 
                                                                            (let rec rs_1_4 = ((relevant_lh _lh_solve_LH_P2_0_1_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh rs_1_4)) then
                                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_4)
                                                                              else
                                                                                (((ask_lh _lh_solve_LH_P2_1_1_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_1_7 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_1_7 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_5, _lh_solve_LH_P2_1_1_5) -> 
                                                                        (let rec rs_1_5 = ((relevant_lh _lh_solve_LH_P2_0_1_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh rs_1_5)) then
                                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_5)
                                                                          else
                                                                            (((ask_lh _lh_solve_LH_P2_1_1_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_8 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_1_8 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_6, _lh_solve_LH_P2_1_1_6) -> 
                                                                    (let rec rs_1_6 = ((relevant_lh _lh_solve_LH_P2_0_1_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh rs_1_6)) then
                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_6)
                                                                      else
                                                                        (((ask_lh _lh_solve_LH_P2_1_1_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_9 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_1_9 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_7, _lh_solve_LH_P2_1_1_7) -> 
                                                                (let rec rs_1_7 = ((relevant_lh _lh_solve_LH_P2_0_1_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh rs_1_7)) then
                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_7)
                                                                  else
                                                                    (((ask_lh _lh_solve_LH_P2_1_1_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_2_0 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_2_0 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_8, _lh_solve_LH_P2_1_1_8) -> 
                                                            (let rec rs_1_8 = ((relevant_lh _lh_solve_LH_P2_0_1_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh rs_1_8)) then
                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_8)
                                                              else
                                                                (((ask_lh _lh_solve_LH_P2_1_1_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_2_1 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_2_1 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_9, _lh_solve_LH_P2_1_1_9) -> 
                                                        (let rec rs_1_9 = ((relevant_lh _lh_solve_LH_P2_0_1_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh rs_1_9)) then
                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_9)
                                                          else
                                                            (((ask_lh _lh_solve_LH_P2_1_1_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_2_2 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_2_2 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_2_0, _lh_solve_LH_P2_1_2_0) -> 
                                                    (let rec rs_2_0 = ((relevant_lh _lh_solve_LH_P2_0_2_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh rs_2_0)) then
                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_0)
                                                      else
                                                        (((ask_lh _lh_solve_LH_P2_1_2_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_2_3 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_2_3 with
                                              | `LH_P2(_lh_solve_LH_P2_0_2_1, _lh_solve_LH_P2_1_2_1) -> 
                                                (let rec rs_2_1 = ((relevant_lh _lh_solve_LH_P2_0_2_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh rs_2_1)) then
                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_1)
                                                  else
                                                    (((ask_lh _lh_solve_LH_P2_1_2_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
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
                                                                              (concat_lh (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_1_5 -> 
                                                                                (match _lh_listcomp_fun_para_1_5 with
                                                                                  | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_6) -> 
                                                                                    (let rec t_3 = (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_6) in
                                                                                      (let rec h_3 = (((solve_lh _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_5) _lh_solve_LH_C_0_1_8) in
                                                                                        (fun _lh_dummy_6 -> 
                                                                                          ((mappend_lh h_3) (concat_lh t_3)))))
                                                                                  | `LH_N -> 
                                                                                    (fun _lh_dummy_7 -> 
                                                                                      (`LH_N)))) in
                                                                                (_lh_listcomp_fun_2_0 (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_1_7))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_2_4 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_2_4 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_2_2, _lh_solve_LH_P2_1_2_2) -> 
                                                                                    (let rec rs_2_2 = ((relevant_lh _lh_solve_LH_P2_0_2_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null_lh rs_2_2)) then
                                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_2)
                                                                                      else
                                                                                        (((ask_lh _lh_solve_LH_P2_1_2_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_2_5 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_2_5 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_2_3, _lh_solve_LH_P2_1_2_3) -> 
                                                                                (let rec rs_2_3 = ((relevant_lh _lh_solve_LH_P2_0_2_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null_lh rs_2_3)) then
                                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_3)
                                                                                  else
                                                                                    (((ask_lh _lh_solve_LH_P2_1_2_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_2_6 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_2_6 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_2_4, _lh_solve_LH_P2_1_2_4) -> 
                                                                            (let rec rs_2_4 = ((relevant_lh _lh_solve_LH_P2_0_2_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh rs_2_4)) then
                                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_4)
                                                                              else
                                                                                (((ask_lh _lh_solve_LH_P2_1_2_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_2_7 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_2_7 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_2_5, _lh_solve_LH_P2_1_2_5) -> 
                                                                        (let rec rs_2_5 = ((relevant_lh _lh_solve_LH_P2_0_2_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh rs_2_5)) then
                                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_5)
                                                                          else
                                                                            (((ask_lh _lh_solve_LH_P2_1_2_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_2_8 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_2_8 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_2_6, _lh_solve_LH_P2_1_2_6) -> 
                                                                    (let rec rs_2_6 = ((relevant_lh _lh_solve_LH_P2_0_2_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh rs_2_6)) then
                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_6)
                                                                      else
                                                                        (((ask_lh _lh_solve_LH_P2_1_2_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_2_9 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_2_9 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_2_7, _lh_solve_LH_P2_1_2_7) -> 
                                                                (let rec rs_2_7 = ((relevant_lh _lh_solve_LH_P2_0_2_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh rs_2_7)) then
                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_7)
                                                                  else
                                                                    (((ask_lh _lh_solve_LH_P2_1_2_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_3_0 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_3_0 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_2_8, _lh_solve_LH_P2_1_2_8) -> 
                                                            (let rec rs_2_8 = ((relevant_lh _lh_solve_LH_P2_0_2_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh rs_2_8)) then
                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_8)
                                                              else
                                                                (((ask_lh _lh_solve_LH_P2_1_2_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_3_1 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_3_1 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_2_9, _lh_solve_LH_P2_1_2_9) -> 
                                                        (let rec rs_2_9 = ((relevant_lh _lh_solve_LH_P2_0_2_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh rs_2_9)) then
                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_9)
                                                          else
                                                            (((ask_lh _lh_solve_LH_P2_1_2_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_3_2 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_3_2 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_3_0, _lh_solve_LH_P2_1_3_0) -> 
                                                    (let rec rs_3_0 = ((relevant_lh _lh_solve_LH_P2_0_3_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh rs_3_0)) then
                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_0)
                                                      else
                                                        (((ask_lh _lh_solve_LH_P2_1_3_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_3_3 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_3_3 with
                                              | `LH_P2(_lh_solve_LH_P2_0_3_1, _lh_solve_LH_P2_1_3_1) -> 
                                                (let rec rs_3_1 = ((relevant_lh _lh_solve_LH_P2_0_3_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh rs_3_1)) then
                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_1)
                                                  else
                                                    (((ask_lh _lh_solve_LH_P2_1_3_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_3_4 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_3_4 with
                                          | `LH_P2(_lh_solve_LH_P2_0_3_2, _lh_solve_LH_P2_1_3_2) -> 
                                            (let rec rs_3_2 = ((relevant_lh _lh_solve_LH_P2_0_3_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh rs_3_2)) then
                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_2)
                                              else
                                                (((ask_lh _lh_solve_LH_P2_1_3_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
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
                                                                          (concat_lh (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_1_6 -> 
                                                                            (match _lh_listcomp_fun_para_1_6 with
                                                                              | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_7) -> 
                                                                                (let rec t_4 = (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_7) in
                                                                                  (let rec h_4 = (((solve_lh _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_6) _lh_solve_LH_C_0_2_3) in
                                                                                    (fun _lh_dummy_8 -> 
                                                                                      ((mappend_lh h_4) (concat_lh t_4)))))
                                                                              | `LH_N -> 
                                                                                (fun _lh_dummy_9 -> 
                                                                                  (`LH_N)))) in
                                                                            (_lh_listcomp_fun_2_1 (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2_2))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_3_5 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_3_5 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_3_3, _lh_solve_LH_P2_1_3_3) -> 
                                                                                (let rec rs_3_3 = ((relevant_lh _lh_solve_LH_P2_0_3_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null_lh rs_3_3)) then
                                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_3)
                                                                                  else
                                                                                    (((ask_lh _lh_solve_LH_P2_1_3_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_3_6 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_3_6 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_3_4, _lh_solve_LH_P2_1_3_4) -> 
                                                                            (let rec rs_3_4 = ((relevant_lh _lh_solve_LH_P2_0_3_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh rs_3_4)) then
                                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_4)
                                                                              else
                                                                                (((ask_lh _lh_solve_LH_P2_1_3_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_3_7 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_3_7 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_3_5, _lh_solve_LH_P2_1_3_5) -> 
                                                                        (let rec rs_3_5 = ((relevant_lh _lh_solve_LH_P2_0_3_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh rs_3_5)) then
                                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_5)
                                                                          else
                                                                            (((ask_lh _lh_solve_LH_P2_1_3_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_3_8 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_3_8 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_3_6, _lh_solve_LH_P2_1_3_6) -> 
                                                                    (let rec rs_3_6 = ((relevant_lh _lh_solve_LH_P2_0_3_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh rs_3_6)) then
                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_6)
                                                                      else
                                                                        (((ask_lh _lh_solve_LH_P2_1_3_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_3_9 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_3_9 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_3_7, _lh_solve_LH_P2_1_3_7) -> 
                                                                (let rec rs_3_7 = ((relevant_lh _lh_solve_LH_P2_0_3_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh rs_3_7)) then
                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_7)
                                                                  else
                                                                    (((ask_lh _lh_solve_LH_P2_1_3_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_4_0 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_4_0 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_3_8, _lh_solve_LH_P2_1_3_8) -> 
                                                            (let rec rs_3_8 = ((relevant_lh _lh_solve_LH_P2_0_3_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh rs_3_8)) then
                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_8)
                                                              else
                                                                (((ask_lh _lh_solve_LH_P2_1_3_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_4_1 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_4_1 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_3_9, _lh_solve_LH_P2_1_3_9) -> 
                                                        (let rec rs_3_9 = ((relevant_lh _lh_solve_LH_P2_0_3_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh rs_3_9)) then
                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_9)
                                                          else
                                                            (((ask_lh _lh_solve_LH_P2_1_3_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_4_2 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_4_2 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_4_0, _lh_solve_LH_P2_1_4_0) -> 
                                                    (let rec rs_4_0 = ((relevant_lh _lh_solve_LH_P2_0_4_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh rs_4_0)) then
                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_0)
                                                      else
                                                        (((ask_lh _lh_solve_LH_P2_1_4_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_4_3 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_4_3 with
                                              | `LH_P2(_lh_solve_LH_P2_0_4_1, _lh_solve_LH_P2_1_4_1) -> 
                                                (let rec rs_4_1 = ((relevant_lh _lh_solve_LH_P2_0_4_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh rs_4_1)) then
                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_1)
                                                  else
                                                    (((ask_lh _lh_solve_LH_P2_1_4_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_4_4 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_4_4 with
                                          | `LH_P2(_lh_solve_LH_P2_0_4_2, _lh_solve_LH_P2_1_4_2) -> 
                                            (let rec rs_4_2 = ((relevant_lh _lh_solve_LH_P2_0_4_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh rs_4_2)) then
                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_2)
                                              else
                                                (((ask_lh _lh_solve_LH_P2_1_4_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_4_5 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_4_5 with
                                      | `LH_P2(_lh_solve_LH_P2_0_4_3, _lh_solve_LH_P2_1_4_3) -> 
                                        (let rec rs_4_3 = ((relevant_lh _lh_solve_LH_P2_0_4_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh rs_4_3)) then
                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_3)
                                          else
                                            (((ask_lh _lh_solve_LH_P2_1_4_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
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
                                                                      (concat_lh (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_1_7 -> 
                                                                        (match _lh_listcomp_fun_para_1_7 with
                                                                          | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_8) -> 
                                                                            (let rec t_5 = (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_8) in
                                                                              (let rec h_5 = (((solve_lh _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_7) _lh_solve_LH_C_0_2_8) in
                                                                                (fun _lh_dummy_1_0 -> 
                                                                                  ((mappend_lh h_5) (concat_lh t_5)))))
                                                                          | `LH_N -> 
                                                                            (fun _lh_dummy_1_1 -> 
                                                                              (`LH_N)))) in
                                                                        (_lh_listcomp_fun_2_2 (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2_7))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_4_6 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_4_6 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_4_4, _lh_solve_LH_P2_1_4_4) -> 
                                                                            (let rec rs_4_4 = ((relevant_lh _lh_solve_LH_P2_0_4_4) _lh_solve_arg3_0) in
                                                                              (if (not (null_lh rs_4_4)) then
                                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_4)
                                                                              else
                                                                                (((ask_lh _lh_solve_LH_P2_1_4_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_4_7 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_4_7 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_4_5, _lh_solve_LH_P2_1_4_5) -> 
                                                                        (let rec rs_4_5 = ((relevant_lh _lh_solve_LH_P2_0_4_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh rs_4_5)) then
                                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_5)
                                                                          else
                                                                            (((ask_lh _lh_solve_LH_P2_1_4_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_4_8 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_4_8 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_4_6, _lh_solve_LH_P2_1_4_6) -> 
                                                                    (let rec rs_4_6 = ((relevant_lh _lh_solve_LH_P2_0_4_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh rs_4_6)) then
                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_6)
                                                                      else
                                                                        (((ask_lh _lh_solve_LH_P2_1_4_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_4_9 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_4_9 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_4_7, _lh_solve_LH_P2_1_4_7) -> 
                                                                (let rec rs_4_7 = ((relevant_lh _lh_solve_LH_P2_0_4_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh rs_4_7)) then
                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_7)
                                                                  else
                                                                    (((ask_lh _lh_solve_LH_P2_1_4_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_5_0 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_5_0 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_4_8, _lh_solve_LH_P2_1_4_8) -> 
                                                            (let rec rs_4_8 = ((relevant_lh _lh_solve_LH_P2_0_4_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh rs_4_8)) then
                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_8)
                                                              else
                                                                (((ask_lh _lh_solve_LH_P2_1_4_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_5_1 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_5_1 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_4_9, _lh_solve_LH_P2_1_4_9) -> 
                                                        (let rec rs_4_9 = ((relevant_lh _lh_solve_LH_P2_0_4_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh rs_4_9)) then
                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_9)
                                                          else
                                                            (((ask_lh _lh_solve_LH_P2_1_4_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_5_2 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_5_2 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_5_0, _lh_solve_LH_P2_1_5_0) -> 
                                                    (let rec rs_5_0 = ((relevant_lh _lh_solve_LH_P2_0_5_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh rs_5_0)) then
                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_0)
                                                      else
                                                        (((ask_lh _lh_solve_LH_P2_1_5_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_5_3 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_5_3 with
                                              | `LH_P2(_lh_solve_LH_P2_0_5_1, _lh_solve_LH_P2_1_5_1) -> 
                                                (let rec rs_5_1 = ((relevant_lh _lh_solve_LH_P2_0_5_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh rs_5_1)) then
                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_1)
                                                  else
                                                    (((ask_lh _lh_solve_LH_P2_1_5_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_5_4 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_5_4 with
                                          | `LH_P2(_lh_solve_LH_P2_0_5_2, _lh_solve_LH_P2_1_5_2) -> 
                                            (let rec rs_5_2 = ((relevant_lh _lh_solve_LH_P2_0_5_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh rs_5_2)) then
                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_2)
                                              else
                                                (((ask_lh _lh_solve_LH_P2_1_5_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_5_5 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_5_5 with
                                      | `LH_P2(_lh_solve_LH_P2_0_5_3, _lh_solve_LH_P2_1_5_3) -> 
                                        (let rec rs_5_3 = ((relevant_lh _lh_solve_LH_P2_0_5_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh rs_5_3)) then
                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_3)
                                          else
                                            (((ask_lh _lh_solve_LH_P2_1_5_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_5_6 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_5_6 with
                                  | `LH_P2(_lh_solve_LH_P2_0_5_4, _lh_solve_LH_P2_1_5_4) -> 
                                    (let rec rs_5_4 = ((relevant_lh _lh_solve_LH_P2_0_5_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh rs_5_4)) then
                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_4)
                                      else
                                        (((ask_lh _lh_solve_LH_P2_1_5_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
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
                                                                  (concat_lh (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_1_8 -> 
                                                                    (match _lh_listcomp_fun_para_1_8 with
                                                                      | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_1_9) -> 
                                                                        (let rec t_6 = (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_9) in
                                                                          (let rec h_6 = (((solve_lh _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_8) _lh_solve_LH_C_0_3_3) in
                                                                            (fun _lh_dummy_1_2 -> 
                                                                              ((mappend_lh h_6) (concat_lh t_6)))))
                                                                      | `LH_N -> 
                                                                        (fun _lh_dummy_1_3 -> 
                                                                          (`LH_N)))) in
                                                                    (_lh_listcomp_fun_2_3 (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3_2))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_5_7 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_5_7 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_5_5, _lh_solve_LH_P2_1_5_5) -> 
                                                                        (let rec rs_5_5 = ((relevant_lh _lh_solve_LH_P2_0_5_5) _lh_solve_arg3_0) in
                                                                          (if (not (null_lh rs_5_5)) then
                                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_5)
                                                                          else
                                                                            (((ask_lh _lh_solve_LH_P2_1_5_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_5_8 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_5_8 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_5_6, _lh_solve_LH_P2_1_5_6) -> 
                                                                    (let rec rs_5_6 = ((relevant_lh _lh_solve_LH_P2_0_5_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh rs_5_6)) then
                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_6)
                                                                      else
                                                                        (((ask_lh _lh_solve_LH_P2_1_5_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_5_9 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_5_9 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_5_7, _lh_solve_LH_P2_1_5_7) -> 
                                                                (let rec rs_5_7 = ((relevant_lh _lh_solve_LH_P2_0_5_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh rs_5_7)) then
                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_7)
                                                                  else
                                                                    (((ask_lh _lh_solve_LH_P2_1_5_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_6_0 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_6_0 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_5_8, _lh_solve_LH_P2_1_5_8) -> 
                                                            (let rec rs_5_8 = ((relevant_lh _lh_solve_LH_P2_0_5_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh rs_5_8)) then
                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_8)
                                                              else
                                                                (((ask_lh _lh_solve_LH_P2_1_5_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_6_1 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_6_1 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_5_9, _lh_solve_LH_P2_1_5_9) -> 
                                                        (let rec rs_5_9 = ((relevant_lh _lh_solve_LH_P2_0_5_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh rs_5_9)) then
                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_9)
                                                          else
                                                            (((ask_lh _lh_solve_LH_P2_1_5_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_6_2 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_6_2 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_6_0, _lh_solve_LH_P2_1_6_0) -> 
                                                    (let rec rs_6_0 = ((relevant_lh _lh_solve_LH_P2_0_6_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh rs_6_0)) then
                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_0)
                                                      else
                                                        (((ask_lh _lh_solve_LH_P2_1_6_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_6_3 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_6_3 with
                                              | `LH_P2(_lh_solve_LH_P2_0_6_1, _lh_solve_LH_P2_1_6_1) -> 
                                                (let rec rs_6_1 = ((relevant_lh _lh_solve_LH_P2_0_6_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh rs_6_1)) then
                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_1)
                                                  else
                                                    (((ask_lh _lh_solve_LH_P2_1_6_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_6_4 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_6_4 with
                                          | `LH_P2(_lh_solve_LH_P2_0_6_2, _lh_solve_LH_P2_1_6_2) -> 
                                            (let rec rs_6_2 = ((relevant_lh _lh_solve_LH_P2_0_6_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh rs_6_2)) then
                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_2)
                                              else
                                                (((ask_lh _lh_solve_LH_P2_1_6_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_6_5 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_6_5 with
                                      | `LH_P2(_lh_solve_LH_P2_0_6_3, _lh_solve_LH_P2_1_6_3) -> 
                                        (let rec rs_6_3 = ((relevant_lh _lh_solve_LH_P2_0_6_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh rs_6_3)) then
                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_3)
                                          else
                                            (((ask_lh _lh_solve_LH_P2_1_6_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_6_6 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_6_6 with
                                  | `LH_P2(_lh_solve_LH_P2_0_6_4, _lh_solve_LH_P2_1_6_4) -> 
                                    (let rec rs_6_4 = ((relevant_lh _lh_solve_LH_P2_0_6_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh rs_6_4)) then
                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_4)
                                      else
                                        (((ask_lh _lh_solve_LH_P2_1_6_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_6_7 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_6_7 with
                              | `LH_P2(_lh_solve_LH_P2_0_6_5, _lh_solve_LH_P2_1_6_5) -> 
                                (let rec rs_6_5 = ((relevant_lh _lh_solve_LH_P2_0_6_5) _lh_solve_arg3_0) in
                                  (if (not (null_lh rs_6_5)) then
                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_5)
                                  else
                                    (((ask_lh _lh_solve_LH_P2_1_6_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
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
                                                              (concat_lh (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_1_9 -> 
                                                                (match _lh_listcomp_fun_para_1_9 with
                                                                  | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_2_0) -> 
                                                                    (let rec t_7 = (_lh_listcomp_fun_2_4 _lh_listcomp_fun_ls_t_2_0) in
                                                                      (let rec h_7 = (((solve_lh _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_9) _lh_solve_LH_C_0_3_8) in
                                                                        (fun _lh_dummy_1_4 -> 
                                                                          ((mappend_lh h_7) (concat_lh t_7)))))
                                                                  | `LH_N -> 
                                                                    (fun _lh_dummy_1_5 -> 
                                                                      (`LH_N)))) in
                                                                (_lh_listcomp_fun_2_4 (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3_7))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_6_8 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_6_8 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_6_6, _lh_solve_LH_P2_1_6_6) -> 
                                                                    (let rec rs_6_6 = ((relevant_lh _lh_solve_LH_P2_0_6_6) _lh_solve_arg3_0) in
                                                                      (if (not (null_lh rs_6_6)) then
                                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_6)
                                                                      else
                                                                        (((ask_lh _lh_solve_LH_P2_1_6_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_6_9 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_6_9 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_6_7, _lh_solve_LH_P2_1_6_7) -> 
                                                                (let rec rs_6_7 = ((relevant_lh _lh_solve_LH_P2_0_6_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh rs_6_7)) then
                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_7)
                                                                  else
                                                                    (((ask_lh _lh_solve_LH_P2_1_6_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_7_0 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_7_0 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_6_8, _lh_solve_LH_P2_1_6_8) -> 
                                                            (let rec rs_6_8 = ((relevant_lh _lh_solve_LH_P2_0_6_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh rs_6_8)) then
                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_8)
                                                              else
                                                                (((ask_lh _lh_solve_LH_P2_1_6_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_7_1 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_7_1 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_6_9, _lh_solve_LH_P2_1_6_9) -> 
                                                        (let rec rs_6_9 = ((relevant_lh _lh_solve_LH_P2_0_6_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh rs_6_9)) then
                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_9)
                                                          else
                                                            (((ask_lh _lh_solve_LH_P2_1_6_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_7_2 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_7_2 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_7_0, _lh_solve_LH_P2_1_7_0) -> 
                                                    (let rec rs_7_0 = ((relevant_lh _lh_solve_LH_P2_0_7_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh rs_7_0)) then
                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_0)
                                                      else
                                                        (((ask_lh _lh_solve_LH_P2_1_7_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_7_3 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_7_3 with
                                              | `LH_P2(_lh_solve_LH_P2_0_7_1, _lh_solve_LH_P2_1_7_1) -> 
                                                (let rec rs_7_1 = ((relevant_lh _lh_solve_LH_P2_0_7_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh rs_7_1)) then
                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_1)
                                                  else
                                                    (((ask_lh _lh_solve_LH_P2_1_7_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_7_4 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_7_4 with
                                          | `LH_P2(_lh_solve_LH_P2_0_7_2, _lh_solve_LH_P2_1_7_2) -> 
                                            (let rec rs_7_2 = ((relevant_lh _lh_solve_LH_P2_0_7_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh rs_7_2)) then
                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_2)
                                              else
                                                (((ask_lh _lh_solve_LH_P2_1_7_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_7_5 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_7_5 with
                                      | `LH_P2(_lh_solve_LH_P2_0_7_3, _lh_solve_LH_P2_1_7_3) -> 
                                        (let rec rs_7_3 = ((relevant_lh _lh_solve_LH_P2_0_7_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh rs_7_3)) then
                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_3)
                                          else
                                            (((ask_lh _lh_solve_LH_P2_1_7_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_7_6 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_7_6 with
                                  | `LH_P2(_lh_solve_LH_P2_0_7_4, _lh_solve_LH_P2_1_7_4) -> 
                                    (let rec rs_7_4 = ((relevant_lh _lh_solve_LH_P2_0_7_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh rs_7_4)) then
                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_4)
                                      else
                                        (((ask_lh _lh_solve_LH_P2_1_7_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_7_7 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_7_7 with
                              | `LH_P2(_lh_solve_LH_P2_0_7_5, _lh_solve_LH_P2_1_7_5) -> 
                                (let rec rs_7_5 = ((relevant_lh _lh_solve_LH_P2_0_7_5) _lh_solve_arg3_0) in
                                  (if (not (null_lh rs_7_5)) then
                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_5)
                                  else
                                    (((ask_lh _lh_solve_LH_P2_1_7_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_7_8 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_7_8 with
                          | `LH_P2(_lh_solve_LH_P2_0_7_6, _lh_solve_LH_P2_1_7_6) -> 
                            (let rec rs_7_6 = ((relevant_lh _lh_solve_LH_P2_0_7_6) _lh_solve_arg3_0) in
                              (if (not (null_lh rs_7_6)) then
                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_6)
                              else
                                (((ask_lh _lh_solve_LH_P2_1_7_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
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
                                                          (concat_lh (let rec _lh_listcomp_fun_2_5 = (fun _lh_listcomp_fun_para_2_0 -> 
                                                            (match _lh_listcomp_fun_para_2_0 with
                                                              | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_1) -> 
                                                                (let rec t_8 = (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_2_1) in
                                                                  (let rec h_8 = (((solve_lh _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_0) _lh_solve_LH_C_0_4_3) in
                                                                    (fun _lh_dummy_1_6 -> 
                                                                      ((mappend_lh h_8) (concat_lh t_8)))))
                                                              | `LH_N -> 
                                                                (fun _lh_dummy_1_7 -> 
                                                                  (`LH_N)))) in
                                                            (_lh_listcomp_fun_2_5 (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_4_2))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_7_9 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_7_9 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_7_7, _lh_solve_LH_P2_1_7_7) -> 
                                                                (let rec rs_7_7 = ((relevant_lh _lh_solve_LH_P2_0_7_7) _lh_solve_arg3_0) in
                                                                  (if (not (null_lh rs_7_7)) then
                                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_7)
                                                                  else
                                                                    (((ask_lh _lh_solve_LH_P2_1_7_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_8_0 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_8_0 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_7_8, _lh_solve_LH_P2_1_7_8) -> 
                                                            (let rec rs_7_8 = ((relevant_lh _lh_solve_LH_P2_0_7_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh rs_7_8)) then
                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_8)
                                                              else
                                                                (((ask_lh _lh_solve_LH_P2_1_7_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_8_1 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_8_1 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_7_9, _lh_solve_LH_P2_1_7_9) -> 
                                                        (let rec rs_7_9 = ((relevant_lh _lh_solve_LH_P2_0_7_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh rs_7_9)) then
                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_9)
                                                          else
                                                            (((ask_lh _lh_solve_LH_P2_1_7_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_8_2 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_8_2 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_8_0, _lh_solve_LH_P2_1_8_0) -> 
                                                    (let rec rs_8_0 = ((relevant_lh _lh_solve_LH_P2_0_8_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh rs_8_0)) then
                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_0)
                                                      else
                                                        (((ask_lh _lh_solve_LH_P2_1_8_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_8_3 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_8_3 with
                                              | `LH_P2(_lh_solve_LH_P2_0_8_1, _lh_solve_LH_P2_1_8_1) -> 
                                                (let rec rs_8_1 = ((relevant_lh _lh_solve_LH_P2_0_8_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh rs_8_1)) then
                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_1)
                                                  else
                                                    (((ask_lh _lh_solve_LH_P2_1_8_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_8_4 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_8_4 with
                                          | `LH_P2(_lh_solve_LH_P2_0_8_2, _lh_solve_LH_P2_1_8_2) -> 
                                            (let rec rs_8_2 = ((relevant_lh _lh_solve_LH_P2_0_8_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh rs_8_2)) then
                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_2)
                                              else
                                                (((ask_lh _lh_solve_LH_P2_1_8_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_8_5 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_8_5 with
                                      | `LH_P2(_lh_solve_LH_P2_0_8_3, _lh_solve_LH_P2_1_8_3) -> 
                                        (let rec rs_8_3 = ((relevant_lh _lh_solve_LH_P2_0_8_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh rs_8_3)) then
                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_3)
                                          else
                                            (((ask_lh _lh_solve_LH_P2_1_8_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_8_6 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_8_6 with
                                  | `LH_P2(_lh_solve_LH_P2_0_8_4, _lh_solve_LH_P2_1_8_4) -> 
                                    (let rec rs_8_4 = ((relevant_lh _lh_solve_LH_P2_0_8_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh rs_8_4)) then
                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_4)
                                      else
                                        (((ask_lh _lh_solve_LH_P2_1_8_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_8_7 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_8_7 with
                              | `LH_P2(_lh_solve_LH_P2_0_8_5, _lh_solve_LH_P2_1_8_5) -> 
                                (let rec rs_8_5 = ((relevant_lh _lh_solve_LH_P2_0_8_5) _lh_solve_arg3_0) in
                                  (if (not (null_lh rs_8_5)) then
                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_5)
                                  else
                                    (((ask_lh _lh_solve_LH_P2_1_8_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_8_8 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_8_8 with
                          | `LH_P2(_lh_solve_LH_P2_0_8_6, _lh_solve_LH_P2_1_8_6) -> 
                            (let rec rs_8_6 = ((relevant_lh _lh_solve_LH_P2_0_8_6) _lh_solve_arg3_0) in
                              (if (not (null_lh rs_8_6)) then
                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_6)
                              else
                                (((ask_lh _lh_solve_LH_P2_1_8_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_8_9 = _lh_solve_arg1_0 in
                    (match _lh_matchIdent_8_9 with
                      | `LH_P2(_lh_solve_LH_P2_0_8_7, _lh_solve_LH_P2_1_8_7) -> 
                        (let rec rs_8_7 = ((relevant_lh _lh_solve_LH_P2_0_8_7) _lh_solve_arg3_0) in
                          (if (not (null_lh rs_8_7)) then
                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_7)
                          else
                            (((ask_lh _lh_solve_LH_P2_1_8_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
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
                                                      (concat_lh (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_2_1 -> 
                                                        (match _lh_listcomp_fun_para_2_1 with
                                                          | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_2) -> 
                                                            (let rec t_9 = (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_2_2) in
                                                              (let rec h_9 = (((solve_lh _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_1) _lh_solve_LH_C_0_4_8) in
                                                                (fun _lh_dummy_1_8 -> 
                                                                  ((mappend_lh h_9) (concat_lh t_9)))))
                                                          | `LH_N -> 
                                                            (fun _lh_dummy_1_9 -> 
                                                              (`LH_N)))) in
                                                        (_lh_listcomp_fun_2_6 (((solve_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_4_7))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_9_0 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_9_0 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_8_8, _lh_solve_LH_P2_1_8_8) -> 
                                                            (let rec rs_8_8 = ((relevant_lh _lh_solve_LH_P2_0_8_8) _lh_solve_arg3_0) in
                                                              (if (not (null_lh rs_8_8)) then
                                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_8)
                                                              else
                                                                (((ask_lh _lh_solve_LH_P2_1_8_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_9_1 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_9_1 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_8_9, _lh_solve_LH_P2_1_8_9) -> 
                                                        (let rec rs_8_9 = ((relevant_lh _lh_solve_LH_P2_0_8_9) _lh_solve_arg3_0) in
                                                          (if (not (null_lh rs_8_9)) then
                                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_9)
                                                          else
                                                            (((ask_lh _lh_solve_LH_P2_1_8_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_9_2 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_9_2 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_9_0, _lh_solve_LH_P2_1_9_0) -> 
                                                    (let rec rs_9_0 = ((relevant_lh _lh_solve_LH_P2_0_9_0) _lh_solve_arg3_0) in
                                                      (if (not (null_lh rs_9_0)) then
                                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_0)
                                                      else
                                                        (((ask_lh _lh_solve_LH_P2_1_9_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_9_3 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_9_3 with
                                              | `LH_P2(_lh_solve_LH_P2_0_9_1, _lh_solve_LH_P2_1_9_1) -> 
                                                (let rec rs_9_1 = ((relevant_lh _lh_solve_LH_P2_0_9_1) _lh_solve_arg3_0) in
                                                  (if (not (null_lh rs_9_1)) then
                                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_1)
                                                  else
                                                    (((ask_lh _lh_solve_LH_P2_1_9_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_9_4 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_9_4 with
                                          | `LH_P2(_lh_solve_LH_P2_0_9_2, _lh_solve_LH_P2_1_9_2) -> 
                                            (let rec rs_9_2 = ((relevant_lh _lh_solve_LH_P2_0_9_2) _lh_solve_arg3_0) in
                                              (if (not (null_lh rs_9_2)) then
                                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_2)
                                              else
                                                (((ask_lh _lh_solve_LH_P2_1_9_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_9_5 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_9_5 with
                                      | `LH_P2(_lh_solve_LH_P2_0_9_3, _lh_solve_LH_P2_1_9_3) -> 
                                        (let rec rs_9_3 = ((relevant_lh _lh_solve_LH_P2_0_9_3) _lh_solve_arg3_0) in
                                          (if (not (null_lh rs_9_3)) then
                                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_3)
                                          else
                                            (((ask_lh _lh_solve_LH_P2_1_9_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_9_6 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_9_6 with
                                  | `LH_P2(_lh_solve_LH_P2_0_9_4, _lh_solve_LH_P2_1_9_4) -> 
                                    (let rec rs_9_4 = ((relevant_lh _lh_solve_LH_P2_0_9_4) _lh_solve_arg3_0) in
                                      (if (not (null_lh rs_9_4)) then
                                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_4)
                                      else
                                        (((ask_lh _lh_solve_LH_P2_1_9_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_9_7 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_9_7 with
                              | `LH_P2(_lh_solve_LH_P2_0_9_5, _lh_solve_LH_P2_1_9_5) -> 
                                (let rec rs_9_5 = ((relevant_lh _lh_solve_LH_P2_0_9_5) _lh_solve_arg3_0) in
                                  (if (not (null_lh rs_9_5)) then
                                    ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_5)
                                  else
                                    (((ask_lh _lh_solve_LH_P2_1_9_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_9_8 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_9_8 with
                          | `LH_P2(_lh_solve_LH_P2_0_9_6, _lh_solve_LH_P2_1_9_6) -> 
                            (let rec rs_9_6 = ((relevant_lh _lh_solve_LH_P2_0_9_6) _lh_solve_arg3_0) in
                              (if (not (null_lh rs_9_6)) then
                                ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_6)
                              else
                                (((ask_lh _lh_solve_LH_P2_1_9_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_9_9 = _lh_solve_arg1_0 in
                    (match _lh_matchIdent_9_9 with
                      | `LH_P2(_lh_solve_LH_P2_0_9_7, _lh_solve_LH_P2_1_9_7) -> 
                        (let rec rs_9_7 = ((relevant_lh _lh_solve_LH_P2_0_9_7) _lh_solve_arg3_0) in
                          (if (not (null_lh rs_9_7)) then
                            ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_7)
                          else
                            (((ask_lh _lh_solve_LH_P2_1_9_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_1_0_0 = _lh_solve_arg1_0 in
                (match _lh_matchIdent_1_0_0 with
                  | `LH_P2(_lh_solve_LH_P2_0_9_8, _lh_solve_LH_P2_1_9_8) -> 
                    (let rec rs_9_8 = ((relevant_lh _lh_solve_LH_P2_0_9_8) _lh_solve_arg3_0) in
                      (if (not (null_lh rs_9_8)) then
                        ((((lookUp_lh _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_8)
                      else
                        (((ask_lh _lh_solve_LH_P2_1_9_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                  | _ -> 
                    (failwith "error"))))));;
let rec rule_lh _lh_rule_arg1_0 =
  ((((split_lh _lh_rule_arg1_0) relation_lh) (`LH_C('i', (`LH_C('f', (`LH_N)))))) goal_lh);;
let rec definitions_lh _lh_definitions_arg1_0 =
  (let rec verb_1 = (fun x_3 -> 
    (let rec _lh_matchIdent_1_0_3 = x_3 in
      (match _lh_matchIdent_1_0_3 with
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
    (let rec rs_9_9 = (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_2_3 -> 
      (match _lh_listcomp_fun_para_2_3 with
        | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_4) -> 
          (`LH_C((rule_lh (words_lh _lh_listcomp_fun_ls_h_2_3)), (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_2_4)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_2_8 _lh_definitions_arg1_0)) in
      (let rec verbs_1 = (nub_lh (let rec _lh_listcomp_fun_2_9 = (fun _lh_listcomp_fun_para_2_4 -> 
        (match _lh_listcomp_fun_para_2_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_4, _lh_listcomp_fun_ls_t_2_5) -> 
            (`LH_C((verb_1 _lh_listcomp_fun_ls_h_2_4), (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_5)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_9 rs_9_9))) in
        (let rec def_0 = (fun v_0 -> 
          (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_2_5 -> 
            (match _lh_listcomp_fun_para_2_5 with
              | `LH_C(_lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_t_2_6) -> 
                (if ((verb_1 _lh_listcomp_fun_ls_h_2_5) = v_0) then
                  (`LH_C(_lh_listcomp_fun_ls_h_2_5, (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_2_6)))
                else
                  (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_2_6))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_3_0 rs_9_9))) in
          ((updateList_lh newTable_lh) (let rec _lh_listcomp_fun_3_1 = (fun _lh_listcomp_fun_para_2_6 -> 
            (match _lh_listcomp_fun_para_2_6 with
              | `LH_C(_lh_listcomp_fun_ls_h_2_6, _lh_listcomp_fun_ls_t_2_7) -> 
                (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_2_6, (def_0 _lh_listcomp_fun_ls_h_2_6))), (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_2_7)))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_3_1 verbs_1)))))));;
let rec process_lh _lh_process_arg1_0 _lh_process_arg2_0 =
  let rec info_0 = (fun _lh_info_arg1_0 _lh_info_arg2_0 -> 
    ((enterList_lh newTable_lh) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
      (match _lh_listcomp_fun_para_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
          (match _lh_listcomp_fun_ls_h_2 with
            | `LH_P2(_lh_info_LH_P2_0_0, _lh_info_LH_P2_1_0) -> 
              (match _lh_info_LH_P2_0_0 with
                | `Question(_lh_info_Question_0_0) -> 
                  (`LH_C((`LH_P2(_lh_info_Question_0_0, _lh_info_LH_P2_1_0)), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_2)))
                | _ -> 
                  (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_2))
            | _ -> 
              (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_2))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_4 ((zip_lh ((results_0 _lh_info_arg1_0) _lh_info_arg2_0)) (replies_0 _lh_info_arg2_0))))))
  and problem_0 = (fun _lh_problem_arg1_0 -> 
    (goal_lh (words_lh (head_lh (lines_lh _lh_problem_arg1_0)))))
  and defs_0 = (fun _lh_defs_arg1_0 -> 
    (definitions_lh (tail_lh (lines_lh _lh_defs_arg1_0))))
  and newsoln_0 = (`Soln(newTable_lh, (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_3 -> 
    (_lh_listcomp_fun_para_3 _lh_listcomp_fun_5)) in
    (_lh_listcomp_fun_5 ((enumFromTo_lh 0) 1)))))
  and replies_0 = (fun _lh_replies_arg1_0 -> 
    (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_4 -> 
      (match _lh_listcomp_fun_para_4 with
        | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
          (`LH_C(((words_lh _lh_listcomp_fun_ls_h_3) <> (`LH_C((`LH_C('n', (`LH_C('o', (`LH_N))))), (`LH_N)))), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_3)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_6 (lines_lh _lh_replies_arg1_0))))
  and db_0 = (fun _lh_db_arg1_0 _lh_db_arg2_0 -> 
    (`LH_P2((defs_0 _lh_db_arg1_0), ((info_0 _lh_db_arg1_0) _lh_db_arg2_0))))
  and results_0 = (fun _lh_results_arg1_0 _lh_results_arg2_0 -> 
    ((strip_lh (`LH_N)) (((solve_lh ((db_0 _lh_results_arg1_0) _lh_results_arg2_0)) newsoln_0) (problem_0 _lh_results_arg1_0))))
  in ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('S', (`LH_C('o', (`LH_C('l', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))) (showPhrase_lh (problem_0 _lh_process_arg1_0)))) (`LH_C('|', (`LH_N))))) (((display_lh ((results_0 _lh_process_arg1_0) _lh_process_arg2_0)) (vars_lh (problem_0 _lh_process_arg1_0))) (replies_0 _lh_process_arg2_0)));;
let rec testExpert_nofib_lh _lh_testExpert_nofib_arg1_0 =
  (let rec animals_0 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('o', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('w', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('g', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('r', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('e', (`LH_C('o', (`LH_C('w', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('i', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('l', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('f', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('g', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('s', (`LH_C('w', (`LH_C('i', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec contents_0 = (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('|', (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_C('b', (`LH_C('e', (`LH_C('|', (`LH_C('A', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C('?', (`LH_C('|', (`LH_C('U', (`LH_C('n', (`LH_C('h', (`LH_C('u', (`LH_C('h', (`LH_C('|', (`LH_C('Y', (`LH_C('e', (`LH_C('p', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      ((fun _lh_funcomp_x_0 -> 
        ((fun _lh_funcomp_x_1 -> 
          (length_lh ((process_lh animals_0) _lh_funcomp_x_1))) ((take_lh (_lh_testExpert_nofib_arg1_0 + 9999)) _lh_funcomp_x_0))) contents_0)));;
end;;

