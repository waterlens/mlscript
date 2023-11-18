
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec break_lh _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_1 = ((break_lh _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_1 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec compareList_lh _lh_compareList_arg1_0 _lh_compareList_arg2_0 =
  (match _lh_compareList_arg1_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_0 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_0, _lh_compareList_LH_C_1_0) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1, _lh_compareList_LH_C_1_1) -> 
      (match _lh_compareList_arg2_0 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_2, _lh_compareList_LH_C_1_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1) = (int_of_char _lh_compareList_LH_C_0_2)) then
            ((compareList_lh _lh_compareList_LH_C_1_1) _lh_compareList_LH_C_1_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1) < (int_of_char _lh_compareList_LH_C_0_2)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec foldl_lh f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (((foldl_lh f_1) ((f_1 i_0) h_1)) t_1)
    | `LH_N -> 
      i_0);;
let rec foldr_lh f_2 i_1 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      ((f_2 h_2) (((foldr_lh f_2) i_1) t_2))
    | `LH_N -> 
      i_1);;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh t_3) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec odd_lh _lh_odd_arg1_0 =
  ((_lh_odd_arg1_0 mod 2) = 0);;
let rec prependToAll_lh _lh_prependToAll_arg1_0 _lh_prependToAll_arg2_0 =
  (match _lh_prependToAll_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_prependToAll_LH_C_0_0, _lh_prependToAll_LH_C_1_0) -> 
      (`LH_C(_lh_prependToAll_arg1_0, (`LH_C(_lh_prependToAll_LH_C_0_0, ((prependToAll_lh _lh_prependToAll_arg1_0) _lh_prependToAll_LH_C_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_lh ls_4 a_0 =
  (match ls_4 with
    | `LH_C(h_5, t_5) -> 
      ((reverse_helper_lh t_5) (`LH_C(h_5, a_0)))
    | `LH_N -> 
      a_0);;
let rec select_lh _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_0_0)), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_4, t_4) -> 
      ((mappend_lh h_4) (concat_lh t_4))
    | `LH_N -> 
      (`LH_N))
and eqList_lh _lh_eqList_arg1_0 _lh_eqList_arg2_0 =
  (((compareList_lh _lh_eqList_arg1_0) _lh_eqList_arg2_0) = (`EQ))
and geList_lh _lh_geList_arg1_0 _lh_geList_arg2_0 =
  (not ((ltList_lh _lh_geList_arg1_0) _lh_geList_arg2_0))
and gtList_lh _lh_gtList_arg1_0 _lh_gtList_arg2_0 =
  (let rec _lh_matchIdent_8 = ((compareList_lh _lh_gtList_arg1_0) _lh_gtList_arg2_0) in
    (match _lh_matchIdent_8 with
      | `GT -> 
        true
      | _ -> 
        false))
and hash_lh _lh_hash_arg1_0 =
  (((foldl_lh (fun acc_0 c_0 -> 
    ((int_of_char c_0) + (acc_0 * 31)))) 0) _lh_hash_arg1_0)
and heapSort_lh _lh_heapSort_arg1_0 =
  let rec div2_0 = (fun _lh_div2_arg1_0 -> 
    (_lh_div2_arg1_0 / 2))
  and clear_0 = (fun _lh_clear_arg1_0 -> 
    (match _lh_clear_arg1_0 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_clear_Branch_0_0, _lh_clear_Branch_1_0, _lh_clear_Branch_2_0) -> 
        (`LH_C(_lh_clear_Branch_0_0, (clear_0 ((mix_0 _lh_clear_Branch_1_0) _lh_clear_Branch_2_0))))
      | _ -> 
        (failwith "error")))
  and mix_0 = (fun _lh_mix_arg1_0 _lh_mix_arg2_0 -> 
    (match _lh_mix_arg1_0 with
      | `Tip -> 
        _lh_mix_arg2_0
      | _ -> 
        (match _lh_mix_arg2_0 with
          | `Tip -> 
            _lh_mix_arg1_0
          | _ -> 
            (match _lh_mix_arg1_0 with
              | `Branch(_lh_mix_Branch_0_0, _lh_mix_Branch_1_0, _lh_mix_Branch_2_0) -> 
                (match _lh_mix_arg2_0 with
                  | `Branch(_lh_mix_Branch_0_1, _lh_mix_Branch_1_1, _lh_mix_Branch_2_1) -> 
                    (if ((leList_lh _lh_mix_Branch_0_0) _lh_mix_Branch_0_1) then
                      (`Branch(_lh_mix_Branch_0_0, ((mix_0 _lh_mix_Branch_1_0) _lh_mix_Branch_2_0), (`Branch(_lh_mix_Branch_0_1, _lh_mix_Branch_1_1, _lh_mix_Branch_2_1))))
                    else
                      (`Branch(_lh_mix_Branch_0_1, (`Branch(_lh_mix_Branch_0_0, _lh_mix_Branch_1_0, _lh_mix_Branch_2_0)), ((mix_0 _lh_mix_Branch_1_1) _lh_mix_Branch_2_1))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
  and heap_0 = (fun _lh_heap_arg1_0 _lh_heap_arg2_0 -> 
    (match _lh_heap_arg2_0 with
      | `LH_N -> 
        (`Tip)
      | `LH_C(_lh_heap_LH_C_0_0, _lh_heap_LH_C_1_0) -> 
        (((to_heap_0 _lh_heap_arg1_0) _lh_heap_LH_C_0_0) ((heap_0 (_lh_heap_arg1_0 + 1)) _lh_heap_LH_C_1_0))
      | _ -> 
        (failwith "error")))
  and to_heap_0 = (fun _lh_to_heap_arg1_0 _lh_to_heap_arg2_0 _lh_to_heap_arg3_0 -> 
    (match _lh_to_heap_arg3_0 with
      | `Tip -> 
        (`Branch(_lh_to_heap_arg2_0, (`Tip), (`Tip)))
      | `Branch(_lh_to_heap_Branch_0_0, _lh_to_heap_Branch_1_0, _lh_to_heap_Branch_2_0) -> 
        (if (((leList_lh _lh_to_heap_arg2_0) _lh_to_heap_Branch_0_0) && (odd_lh _lh_to_heap_arg1_0)) then
          (`Branch(_lh_to_heap_arg2_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_Branch_0_0) _lh_to_heap_Branch_1_0), _lh_to_heap_Branch_2_0))
        else
          (if ((leList_lh _lh_to_heap_arg2_0) _lh_to_heap_Branch_0_0) then
            (`Branch(_lh_to_heap_arg2_0, _lh_to_heap_Branch_1_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_Branch_0_0) _lh_to_heap_Branch_2_0)))
          else
            (if (odd_lh _lh_to_heap_arg1_0) then
              (`Branch(_lh_to_heap_Branch_0_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_arg2_0) _lh_to_heap_Branch_1_0), _lh_to_heap_Branch_2_0))
            else
              (`Branch(_lh_to_heap_Branch_0_0, _lh_to_heap_Branch_1_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_arg2_0) _lh_to_heap_Branch_2_0))))))
      | _ -> 
        (failwith "error")))
  in (clear_0 ((heap_0 0) _lh_heapSort_arg1_0))
and insertSort_lh _lh_insertSort_arg1_0 =
  (match _lh_insertSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_insertSort_LH_C_0_0, _lh_insertSort_LH_C_1_0) -> 
      (let rec trins_0 = (fun _lh_trins_arg1_0 _lh_trins_arg2_0 _lh_trins_arg3_0 -> 
        (match _lh_trins_arg2_0 with
          | `LH_N -> 
            (match _lh_trins_arg3_0 with
              | `LH_C(_lh_trins_LH_C_0_0, _lh_trins_LH_C_1_0) -> 
                (((trins_0 (`LH_N)) ((mappend_lh (reverse_lh _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_0, (`LH_N))))) _lh_trins_LH_C_1_0)
              | _ -> 
                (match _lh_trins_arg3_0 with
                  | `LH_N -> 
                    ((mappend_lh (reverse_lh _lh_trins_arg1_0)) _lh_trins_arg2_0)
                  | _ -> 
                    (match _lh_trins_arg2_0 with
                      | `LH_C(_lh_trins_LH_C_0_1, _lh_trins_LH_C_1_1) -> 
                        (match _lh_trins_arg3_0 with
                          | `LH_C(_lh_trins_LH_C_0_2, _lh_trins_LH_C_1_2) -> 
                            (if ((ltList_lh _lh_trins_LH_C_0_1) _lh_trins_LH_C_0_2) then
                              (((trins_0 (`LH_C(_lh_trins_LH_C_0_1, _lh_trins_arg1_0))) _lh_trins_LH_C_1_1) (`LH_C(_lh_trins_LH_C_0_2, _lh_trins_LH_C_1_2)))
                            else
                              (((trins_0 (`LH_N)) ((mappend_lh (reverse_lh _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_2, (`LH_C(_lh_trins_LH_C_0_1, _lh_trins_LH_C_1_1)))))) _lh_trins_LH_C_1_2))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))))
          | _ -> 
            (match _lh_trins_arg3_0 with
              | `LH_N -> 
                ((mappend_lh (reverse_lh _lh_trins_arg1_0)) _lh_trins_arg2_0)
              | _ -> 
                (match _lh_trins_arg2_0 with
                  | `LH_C(_lh_trins_LH_C_0_3, _lh_trins_LH_C_1_3) -> 
                    (match _lh_trins_arg3_0 with
                      | `LH_C(_lh_trins_LH_C_0_4, _lh_trins_LH_C_1_4) -> 
                        (if ((ltList_lh _lh_trins_LH_C_0_3) _lh_trins_LH_C_0_4) then
                          (((trins_0 (`LH_C(_lh_trins_LH_C_0_3, _lh_trins_arg1_0))) _lh_trins_LH_C_1_3) (`LH_C(_lh_trins_LH_C_0_4, _lh_trins_LH_C_1_4)))
                        else
                          (((trins_0 (`LH_N)) ((mappend_lh (reverse_lh _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_4, (`LH_C(_lh_trins_LH_C_0_3, _lh_trins_LH_C_1_3)))))) _lh_trins_LH_C_1_4))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
        (((trins_0 (`LH_N)) (`LH_C(_lh_insertSort_LH_C_0_0, (`LH_N)))) _lh_insertSort_LH_C_1_0))
    | _ -> 
      (failwith "error"))
and intersperse_lh _lh_intersperse_arg1_0 _lh_intersperse_arg2_0 =
  (match _lh_intersperse_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_intersperse_LH_C_0_0, _lh_intersperse_LH_C_1_0) -> 
      (`LH_C(_lh_intersperse_LH_C_0_0, ((prependToAll_lh _lh_intersperse_arg1_0) _lh_intersperse_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and leList_lh _lh_leList_arg1_0 _lh_leList_arg2_0 =
  (not ((gtList_lh _lh_leList_arg1_0) _lh_leList_arg2_0))
and lines_lh _lh_lines_arg1_0 =
  (match _lh_lines_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_2 = ((break_lh (fun x_0 -> 
        (x_0 = '|'))) _lh_lines_arg1_0) in
        (match _lh_matchIdent_2 with
          | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
            (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_3 = _lh_lines_LH_P2_1_0 in
              (match _lh_matchIdent_3 with
                | `LH_N -> 
                  (`LH_N)
                | `LH_C(_lh_lines_LH_C_0_0, _lh_lines_LH_C_1_0) -> 
                  (lines_lh _lh_lines_LH_C_1_0)
                | _ -> 
                  (failwith "error")))))
          | _ -> 
            (failwith "error"))))
and ltList_lh _lh_ltList_arg1_0 _lh_ltList_arg2_0 =
  (let rec _lh_matchIdent_0 = ((compareList_lh _lh_ltList_arg1_0) _lh_ltList_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LT -> 
        true
      | _ -> 
        false))
and mangle_lh _lh_mangle_arg1_0 =
  (let rec sort_0 = (fun _lh_sort_arg1_0 -> 
    ((((foldr_lh (fun f_4 g_0 _lh_funcomp_x_3 -> 
      (f_4 (g_0 _lh_funcomp_x_3)))) (fun x_1 -> 
      x_1)) ((intersperse_lh reverse_lh) (`LH_C(heapSort_lh, (`LH_C(insertSort_lh, (`LH_C(mergeSort_lh, (`LH_C(quickSort_lh, (`LH_C(quickSort2_lh, (`LH_C(quickerSort_lh, (`LH_C(treeSort_lh, (`LH_C(treeSort2_lh, (`LH_N))))))))))))))))))) _lh_sort_arg1_0)) in
    ((fun _lh_funcomp_x_4 -> 
      ((fun _lh_funcomp_x_5 -> 
        (unlines_lh (sort_0 _lh_funcomp_x_5))) (lines_lh _lh_funcomp_x_4))) _lh_mangle_arg1_0))
and mergeSort_lh _lh_mergeSort_arg1_0 =
  let rec merge_lists_0 = (fun _lh_merge_lists_arg1_0 -> 
    (match _lh_merge_lists_arg1_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_merge_lists_LH_C_0_0, _lh_merge_lists_LH_C_1_0) -> 
        ((merge_0 _lh_merge_lists_LH_C_0_0) (merge_lists_0 _lh_merge_lists_LH_C_1_0))
      | _ -> 
        (failwith "error")))
  and runsplit_0 = (fun _lh_runsplit_arg1_0 _lh_runsplit_arg2_0 -> 
    (match _lh_runsplit_arg1_0 with
      | `LH_N -> 
        (match _lh_runsplit_arg2_0 with
          | `LH_N -> 
            (`LH_N)
          | _ -> 
            (match _lh_runsplit_arg2_0 with
              | `LH_N -> 
                (`LH_C(_lh_runsplit_arg1_0, (`LH_N)))
              | _ -> 
                (match _lh_runsplit_arg1_0 with
                  | `LH_N -> 
                    (match _lh_runsplit_arg2_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_0, _lh_runsplit_LH_C_1_0) -> 
                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_0, (`LH_N)))) _lh_runsplit_LH_C_1_0)
                      | _ -> 
                        (match _lh_runsplit_arg1_0 with
                          | `LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1) -> 
                            (match _lh_runsplit_arg2_0 with
                              | `LH_C(_lh_runsplit_LH_C_0_2, _lh_runsplit_LH_C_1_2) -> 
                                (let rec _lh_matchIdent_4 = _lh_runsplit_LH_C_1_1 in
                                  (match _lh_matchIdent_4 with
                                    | `LH_N -> 
                                      (if ((gtList_lh _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_1, (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))))) _lh_runsplit_LH_C_1_2)
                                      else
                                        (if ((leList_lh _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                          ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1))))) _lh_runsplit_LH_C_1_2)
                                        else
                                          (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1)), ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))) _lh_runsplit_LH_C_1_2)))))
                                    | _ -> 
                                      (if ((leList_lh _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_C(_lh_runsplit_LH_C_0_1, _lh_matchIdent_4))))) _lh_runsplit_LH_C_1_2)
                                      else
                                        (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1, _lh_matchIdent_4)), ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))) _lh_runsplit_LH_C_1_2))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                  | _ -> 
                    (match _lh_runsplit_arg1_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3) -> 
                        (match _lh_runsplit_arg2_0 with
                          | `LH_C(_lh_runsplit_LH_C_0_4, _lh_runsplit_LH_C_1_4) -> 
                            (let rec _lh_matchIdent_5 = _lh_runsplit_LH_C_1_3 in
                              (match _lh_matchIdent_5 with
                                | `LH_N -> 
                                  (if ((gtList_lh _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_3, (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))))) _lh_runsplit_LH_C_1_4)
                                  else
                                    (if ((leList_lh _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                      ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3))))) _lh_runsplit_LH_C_1_4)
                                    else
                                      (`LH_C((`LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3)), ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))) _lh_runsplit_LH_C_1_4)))))
                                | _ -> 
                                  (if ((leList_lh _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_C(_lh_runsplit_LH_C_0_3, _lh_matchIdent_5))))) _lh_runsplit_LH_C_1_4)
                                  else
                                    (`LH_C((`LH_C(_lh_runsplit_LH_C_0_3, _lh_matchIdent_5)), ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))) _lh_runsplit_LH_C_1_4))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))))
      | _ -> 
        (match _lh_runsplit_arg2_0 with
          | `LH_N -> 
            (`LH_C(_lh_runsplit_arg1_0, (`LH_N)))
          | _ -> 
            (match _lh_runsplit_arg1_0 with
              | `LH_N -> 
                (match _lh_runsplit_arg2_0 with
                  | `LH_C(_lh_runsplit_LH_C_0_5, _lh_runsplit_LH_C_1_5) -> 
                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_5, (`LH_N)))) _lh_runsplit_LH_C_1_5)
                  | _ -> 
                    (match _lh_runsplit_arg1_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6) -> 
                        (match _lh_runsplit_arg2_0 with
                          | `LH_C(_lh_runsplit_LH_C_0_7, _lh_runsplit_LH_C_1_7) -> 
                            (let rec _lh_matchIdent_6 = _lh_runsplit_LH_C_1_6 in
                              (match _lh_matchIdent_6 with
                                | `LH_N -> 
                                  (if ((gtList_lh _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_6, (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))))) _lh_runsplit_LH_C_1_7)
                                  else
                                    (if ((leList_lh _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                      ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6))))) _lh_runsplit_LH_C_1_7)
                                    else
                                      (`LH_C((`LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6)), ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))) _lh_runsplit_LH_C_1_7)))))
                                | _ -> 
                                  (if ((leList_lh _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_C(_lh_runsplit_LH_C_0_6, _lh_matchIdent_6))))) _lh_runsplit_LH_C_1_7)
                                  else
                                    (`LH_C((`LH_C(_lh_runsplit_LH_C_0_6, _lh_matchIdent_6)), ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))) _lh_runsplit_LH_C_1_7))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))
              | _ -> 
                (match _lh_runsplit_arg1_0 with
                  | `LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8) -> 
                    (match _lh_runsplit_arg2_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_9, _lh_runsplit_LH_C_1_9) -> 
                        (let rec _lh_matchIdent_7 = _lh_runsplit_LH_C_1_8 in
                          (match _lh_matchIdent_7 with
                            | `LH_N -> 
                              (if ((gtList_lh _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_8, (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))))) _lh_runsplit_LH_C_1_9)
                              else
                                (if ((leList_lh _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                  ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8))))) _lh_runsplit_LH_C_1_9)
                                else
                                  (`LH_C((`LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8)), ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))) _lh_runsplit_LH_C_1_9)))))
                            | _ -> 
                              (if ((leList_lh _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_C(_lh_runsplit_LH_C_0_8, _lh_matchIdent_7))))) _lh_runsplit_LH_C_1_9)
                              else
                                (`LH_C((`LH_C(_lh_runsplit_LH_C_0_8, _lh_matchIdent_7)), ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))) _lh_runsplit_LH_C_1_9))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))))
  and merge_0 = (fun _lh_merge_arg1_0 _lh_merge_arg2_0 -> 
    (match _lh_merge_arg1_0 with
      | `LH_N -> 
        _lh_merge_arg2_0
      | _ -> 
        (match _lh_merge_arg2_0 with
          | `LH_N -> 
            _lh_merge_arg1_0
          | _ -> 
            (match _lh_merge_arg1_0 with
              | `LH_C(_lh_merge_LH_C_0_0, _lh_merge_LH_C_1_0) -> 
                (match _lh_merge_arg2_0 with
                  | `LH_C(_lh_merge_LH_C_0_1, _lh_merge_LH_C_1_1) -> 
                    (if ((eqList_lh _lh_merge_LH_C_0_0) _lh_merge_LH_C_0_1) then
                      (`LH_C(_lh_merge_LH_C_0_0, (`LH_C(_lh_merge_LH_C_0_1, ((merge_0 _lh_merge_LH_C_1_0) _lh_merge_LH_C_1_1)))))
                    else
                      (if ((ltList_lh _lh_merge_LH_C_0_0) _lh_merge_LH_C_0_1) then
                        (`LH_C(_lh_merge_LH_C_0_0, ((merge_0 _lh_merge_LH_C_1_0) (`LH_C(_lh_merge_LH_C_0_1, _lh_merge_LH_C_1_1)))))
                      else
                        (`LH_C(_lh_merge_LH_C_0_1, ((merge_0 (`LH_C(_lh_merge_LH_C_0_0, _lh_merge_LH_C_1_0))) _lh_merge_LH_C_1_1)))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
  in ((fun _lh_funcomp_x_2 -> 
    (merge_lists_0 ((runsplit_0 (`LH_N)) _lh_funcomp_x_2))) _lh_mergeSort_arg1_0)
and partition_lh _lh_partition_arg1_0 _lh_partition_arg2_0 =
  (((foldr_lh (select_lh _lh_partition_arg1_0)) (`LH_P2((`LH_N), (`LH_N)))) _lh_partition_arg2_0)
and quickSort2_lh _lh_quickSort2_arg1_0 =
  (match _lh_quickSort2_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort2_LH_C_0_0, _lh_quickSort2_LH_C_1_0) -> 
      (let rec _lh_matchIdent_9 = ((partition_lh ((fun x_2 y_0 -> 
        ((geList_lh x_2) y_0)) _lh_quickSort2_LH_C_0_0)) _lh_quickSort2_LH_C_1_0) in
        (match _lh_matchIdent_9 with
          | `LH_P2(_lh_quickSort2_LH_P2_0_0, _lh_quickSort2_LH_P2_1_0) -> 
            ((mappend_lh (quickSort2_lh _lh_quickSort2_LH_P2_0_0)) (`LH_C(_lh_quickSort2_LH_C_0_0, (quickSort2_lh _lh_quickSort2_LH_P2_1_0))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and quickSort_lh _lh_quickSort_arg1_0 =
  (match _lh_quickSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort_LH_C_0_0, _lh_quickSort_LH_C_1_0) -> 
      ((mappend_lh (quickSort_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((leList_lh _lh_listcomp_fun_ls_h_0) _lh_quickSort_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_quickSort_LH_C_1_0)))) (`LH_C(_lh_quickSort_LH_C_0_0, (quickSort_lh (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (if ((gtList_lh _lh_listcomp_fun_ls_h_1) _lh_quickSort_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 _lh_quickSort_LH_C_1_0))))))
    | _ -> 
      (failwith "error"))
and quickerSort_lh _lh_quickerSort_arg1_0 =
  (match _lh_quickerSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickerSort_LH_C_0_0, _lh_quickerSort_LH_C_1_0) -> 
      (match _lh_quickerSort_LH_C_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_quickerSort_LH_C_0_0, (`LH_N)))
        | _ -> 
          (let rec split_0 = (fun _lh_split_arg1_0 _lh_split_arg2_0 _lh_split_arg3_0 _lh_split_arg4_0 -> 
            (match _lh_split_arg4_0 with
              | `LH_N -> 
                ((mappend_lh (quickerSort_lh _lh_split_arg2_0)) (`LH_C(_lh_split_arg1_0, (quickerSort_lh _lh_split_arg3_0))))
              | `LH_C(_lh_split_LH_C_0_0, _lh_split_LH_C_1_0) -> 
                (if ((leList_lh _lh_split_LH_C_0_0) _lh_split_arg1_0) then
                  ((((split_0 _lh_split_arg1_0) (`LH_C(_lh_split_LH_C_0_0, _lh_split_arg2_0))) _lh_split_arg3_0) _lh_split_LH_C_1_0)
                else
                  ((((split_0 _lh_split_arg1_0) _lh_split_arg2_0) (`LH_C(_lh_split_LH_C_0_0, _lh_split_arg3_0))) _lh_split_LH_C_1_0))
              | _ -> 
                (failwith "error"))) in
            ((((split_0 _lh_quickerSort_LH_C_0_0) (`LH_N)) (`LH_N)) _lh_quickerSort_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and reverse_lh ls_3 =
  ((reverse_helper_lh ls_3) (`LH_N))
and testSorting_nofib_lh _lh_testSorting_nofib_arg1_0 =
  (let rec f_3 = (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('M', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('o', (`LH_C('l', (`LH_C('.', (`LH_C('M', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('D', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_C('.', (`LH_C('L', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_C('E', (`LH_C('n', (`LH_C('v', (`LH_C('i', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('f', (`LH_C('i', (`LH_C('b', (`LH_C('U', (`LH_C('t', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C('$', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('_', (`LH_C(':', (`LH_C('s', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('F', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C(')', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C(' ', (`LH_C('-', (`LH_C('>', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('u', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('.', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('=', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_C('h', (`LH_C('e', (`LH_C('a', (`LH_C('p', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('r', (`LH_C('g', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(']', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (hash_lh (mangle_lh f_3)))
and treeSort2_lh _lh_treeSort2_arg1_0 =
  let rec mkTree_0 = (fun _lh_mkTree_arg1_0 -> 
    (let rec to_tree_0 = (fun _lh_to_tree_arg1_0 _lh_to_tree_arg2_0 -> 
      (match _lh_to_tree_arg2_0 with
        | `Tip2 -> 
          (`Twig2(_lh_to_tree_arg1_0))
        | `Twig2(_lh_to_tree_Twig2_0_0) -> 
          (if ((leList_lh _lh_to_tree_arg1_0) _lh_to_tree_Twig2_0_0) then
            (`Branch2(_lh_to_tree_Twig2_0_0, (`Twig2(_lh_to_tree_arg1_0)), (`Tip2)))
          else
            (`Branch2(_lh_to_tree_Twig2_0_0, (`Tip2), (`Twig2(_lh_to_tree_arg1_0)))))
        | `Branch2(_lh_to_tree_Branch2_0_0, _lh_to_tree_Branch2_1_0, _lh_to_tree_Branch2_2_0) -> 
          (if ((leList_lh _lh_to_tree_arg1_0) _lh_to_tree_Branch2_0_0) then
            (`Branch2(_lh_to_tree_Branch2_0_0, ((to_tree_0 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_1_0), _lh_to_tree_Branch2_2_0))
          else
            (`Branch2(_lh_to_tree_Branch2_0_0, _lh_to_tree_Branch2_1_0, ((to_tree_0 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_2_0))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_lh to_tree_0) (`Tip2)) _lh_mkTree_arg1_0)))
  and readTree_0 = (fun _lh_readTree_arg1_0 -> 
    (match _lh_readTree_arg1_0 with
      | `Tip2 -> 
        (`LH_N)
      | `Twig2(_lh_readTree_Twig2_0_0) -> 
        (`LH_C(_lh_readTree_Twig2_0_0, (`LH_N)))
      | `Branch2(_lh_readTree_Branch2_0_0, _lh_readTree_Branch2_1_0, _lh_readTree_Branch2_2_0) -> 
        ((mappend_lh (readTree_0 _lh_readTree_Branch2_1_0)) (`LH_C(_lh_readTree_Branch2_0_0, (readTree_0 _lh_readTree_Branch2_2_0))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_0 -> 
    (readTree_0 (mkTree_0 _lh_funcomp_x_0))) _lh_treeSort2_arg1_0)
and treeSort_lh _lh_treeSort_arg1_0 =
  let rec mkTree_1 = (fun _lh_mkTree_arg1_1 -> 
    (let rec to_tree_1 = (fun _lh_to_tree_arg1_1 _lh_to_tree_arg2_1 -> 
      (match _lh_to_tree_arg2_1 with
        | `Tip -> 
          (`Branch(_lh_to_tree_arg1_1, (`Tip), (`Tip)))
        | `Branch(_lh_to_tree_Branch_0_0, _lh_to_tree_Branch_1_0, _lh_to_tree_Branch_2_0) -> 
          (if ((leList_lh _lh_to_tree_arg1_1) _lh_to_tree_Branch_0_0) then
            (`Branch(_lh_to_tree_Branch_0_0, ((to_tree_1 _lh_to_tree_arg1_1) _lh_to_tree_Branch_1_0), _lh_to_tree_Branch_2_0))
          else
            (`Branch(_lh_to_tree_Branch_0_0, _lh_to_tree_Branch_1_0, ((to_tree_1 _lh_to_tree_arg1_1) _lh_to_tree_Branch_2_0))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_lh to_tree_1) (`Tip)) _lh_mkTree_arg1_1)))
  and readTree_1 = (fun _lh_readTree_arg1_1 -> 
    (match _lh_readTree_arg1_1 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_readTree_Branch_0_0, _lh_readTree_Branch_1_0, _lh_readTree_Branch_2_0) -> 
        ((mappend_lh (readTree_1 _lh_readTree_Branch_1_0)) (`LH_C(_lh_readTree_Branch_0_0, (readTree_1 _lh_readTree_Branch_2_0))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_1 -> 
    (readTree_1 (mkTree_1 _lh_funcomp_x_1))) _lh_treeSort_arg1_0)
and unlines_lh _lh_unlines_arg1_0 =
  (concat_lh ((map_lh (fun l_0 -> 
    ((mappend_lh l_0) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_0));;
end;;

