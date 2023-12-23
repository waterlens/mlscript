

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec foldl_lh__d0 f_2_5 i_2_3 ls_1_2 =
  ((ls_1_2 f_2_5) i_2_3);;
let rec hash_lh__d0 _lh_hash_arg1_0 =
  (((foldl_lh__d0 (fun acc_0 c_0 -> 
    ((int_of_char c_0) + (acc_0 * 31)))) 0) _lh_hash_arg1_0);;
let rec reverse_helper_lh__d5 ls_2 a_0 =
  (match ls_2 with
    | `LH_C(h_0, t_0) -> 
      ((reverse_helper_lh__d5 t_0) (`LH_C(h_0, a_0)))
    | `LH_N -> 
      a_0);;
let rec reverse_lh__d5 ls_1 =
  ((reverse_helper_lh__d5 ls_1) (`LH_N));;
let rec compareList_lh__d2_d4 _lh_compareList_arg1_1_0 _lh_compareList_arg2_1_0 =
  (match _lh_compareList_arg1_1_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_3_0, _lh_compareList_LH_C_1_3_0) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_3_1, _lh_compareList_LH_C_1_3_1) -> 
      (match _lh_compareList_arg2_1_0 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_3_2, _lh_compareList_LH_C_1_3_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_3_1) = (int_of_char _lh_compareList_LH_C_0_3_2)) then
            ((compareList_lh__d2_d4 _lh_compareList_LH_C_1_3_1) _lh_compareList_LH_C_1_3_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_1) < (int_of_char _lh_compareList_LH_C_0_3_2)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d9 _lh_gtList_arg1_8 _lh_gtList_arg2_8 =
  (let rec _lh_matchIdent_1_6 = ((compareList_lh__d2_d4 _lh_gtList_arg1_8) _lh_gtList_arg2_8) in
    _lh_matchIdent_1_6);;
let rec leList_lh__d1_d4 _lh_leList_arg1_1 _lh_leList_arg2_1 =
  (not ((gtList_lh__d1_d9 _lh_leList_arg1_1) _lh_leList_arg2_1));;
let rec foldr_lh__d2 f_1_9 i_1_8 ls_9 =
  (match ls_9 with
    | `LH_C(h_2_7, t_2_7) -> 
      ((f_1_9 h_2_7) (((foldr_lh__d2 f_1_9) i_1_8) t_2_7))
    | `LH_N -> 
      i_1_8);;
let rec mappend_lh__d8 xs_2 ys_6 =
  (match xs_2 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_lh__d8 t_7) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec compareList_lh__d2_d3 _lh_compareList_arg1_2_4 _lh_compareList_arg2_2_4 =
  (match _lh_compareList_arg1_2_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_4 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_7_2, _lh_compareList_LH_C_1_7_2) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7_3, _lh_compareList_LH_C_1_7_3) -> 
      (match _lh_compareList_arg2_2_4 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_7_4, _lh_compareList_LH_C_1_7_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7_3) = (int_of_char _lh_compareList_LH_C_0_7_4)) then
            ((compareList_lh__d2_d3 _lh_compareList_LH_C_1_7_3) _lh_compareList_LH_C_1_7_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7_3) < (int_of_char _lh_compareList_LH_C_0_7_4)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d8 _lh_gtList_arg1_1_9 _lh_gtList_arg2_1_9 =
  (let rec _lh_matchIdent_3_1 = ((compareList_lh__d2_d3 _lh_gtList_arg1_1_9) _lh_gtList_arg2_1_9) in
    _lh_matchIdent_3_1);;
let rec leList_lh__d1_d3 _lh_leList_arg1_8 _lh_leList_arg2_8 =
  (not ((gtList_lh__d1_d8 _lh_leList_arg1_8) _lh_leList_arg2_8));;
let rec treeSort2_lh__d0 _lh_treeSort2_arg1_0 =
  let rec mkTree_0 = (fun _lh_mkTree_arg1_0 -> 
    (let rec to_tree_0 = (fun _lh_to_tree_arg1_0 _lh_to_tree_arg2_0 -> 
      (match _lh_to_tree_arg2_0 with
        | `Tip2 -> 
          (`Twig2(_lh_to_tree_arg1_0))
        | `Twig2(_lh_to_tree_Twig2_0_0) -> 
          (if ((leList_lh__d1_d3 _lh_to_tree_arg1_0) _lh_to_tree_Twig2_0_0) then
            (`Branch2(_lh_to_tree_Twig2_0_0, (`Twig2(_lh_to_tree_arg1_0)), (`Tip2)))
          else
            (`Branch2(_lh_to_tree_Twig2_0_0, (`Tip2), (`Twig2(_lh_to_tree_arg1_0)))))
        | `Branch2(_lh_to_tree_Branch2_0_0, _lh_to_tree_Branch2_1_0, _lh_to_tree_Branch2_2_0) -> 
          (if ((leList_lh__d1_d4 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_0_0) then
            (`Branch2(_lh_to_tree_Branch2_0_0, ((to_tree_0 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_1_0), _lh_to_tree_Branch2_2_0))
          else
            (`Branch2(_lh_to_tree_Branch2_0_0, _lh_to_tree_Branch2_1_0, ((to_tree_0 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_2_0))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_lh__d2 to_tree_0) (`Tip2)) _lh_mkTree_arg1_0)))
  and readTree_0 = (fun _lh_readTree_arg1_0 -> 
    (match _lh_readTree_arg1_0 with
      | `Tip2 -> 
        (`LH_N)
      | `Twig2(_lh_readTree_Twig2_0_0) -> 
        (`LH_C(_lh_readTree_Twig2_0_0, (`LH_N)))
      | `Branch2(_lh_readTree_Branch2_0_0, _lh_readTree_Branch2_1_0, _lh_readTree_Branch2_2_0) -> 
        ((mappend_lh__d8 (readTree_0 _lh_readTree_Branch2_1_0)) (`LH_C(_lh_readTree_Branch2_0_0, (readTree_0 _lh_readTree_Branch2_2_0))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_0 -> 
    (readTree_0 (mkTree_0 _lh_funcomp_x_0))) _lh_treeSort2_arg1_0);;
let rec prependToAll_lh__d3 _lh_prependToAll_arg1_9 _lh_prependToAll_arg2_1 =
  (_lh_prependToAll_arg2_1 _lh_prependToAll_arg1_9);;
let rec mappend_lh__d5 xs_7 ys_1_4 =
  (match xs_7 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C(h_3_0, ((mappend_lh__d5 t_3_0) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec foldr_lh__d1 f_1_8 i_1_7 ls_8 =
  (match ls_8 with
    | `LH_C(h_2_5, t_2_5) -> 
      ((f_1_8 h_2_5) (((foldr_lh__d1 f_1_8) i_1_7) t_2_5))
    | `LH_N -> 
      i_1_7);;
let rec select_lh__d0 _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_0_0)), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec partition_lh__d0 _lh_partition_arg1_0 _lh_partition_arg2_0 =
  (((foldr_lh__d1 (select_lh__d0 _lh_partition_arg1_0)) (`LH_P2((`LH_N), (`LH_N)))) _lh_partition_arg2_0);;
let rec compareList_lh__d1_d9 _lh_compareList_arg1_2_2 _lh_compareList_arg2_2_2 =
  (match _lh_compareList_arg1_2_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_6, _lh_compareList_LH_C_1_6_6) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_6_7, _lh_compareList_LH_C_1_6_7) -> 
      (match _lh_compareList_arg2_2_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_8, _lh_compareList_LH_C_1_6_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_6_7) = (int_of_char _lh_compareList_LH_C_0_6_8)) then
            ((compareList_lh__d1_d9 _lh_compareList_LH_C_1_6_7) _lh_compareList_LH_C_1_6_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_6_7) < (int_of_char _lh_compareList_LH_C_0_6_8)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec ltList_lh__d3 _lh_ltList_arg1_1 _lh_ltList_arg2_1 =
  (let rec _lh_matchIdent_3 = ((compareList_lh__d1_d9 _lh_ltList_arg1_1) _lh_ltList_arg2_1) in
    _lh_matchIdent_3);;
let rec geList_lh__d0 _lh_geList_arg1_0 _lh_geList_arg2_0 =
  (not ((ltList_lh__d3 _lh_geList_arg1_0) _lh_geList_arg2_0));;
let rec quickSort2_lh__d0 _lh_quickSort2_arg1_0 =
  (match _lh_quickSort2_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort2_LH_C_0_0, _lh_quickSort2_LH_C_1_0) -> 
      (let rec _lh_matchIdent_1_0 = ((partition_lh__d0 ((fun x_1 y_0 -> 
        ((geList_lh__d0 x_1) y_0)) _lh_quickSort2_LH_C_0_0)) _lh_quickSort2_LH_C_1_0) in
        (match _lh_matchIdent_1_0 with
          | `LH_P2(_lh_quickSort2_LH_P2_0_0, _lh_quickSort2_LH_P2_1_0) -> 
            ((mappend_lh__d5 (quickSort2_lh__d0 _lh_quickSort2_LH_P2_0_0)) (`LH_C(_lh_quickSort2_LH_C_0_0, (quickSort2_lh__d0 _lh_quickSort2_LH_P2_1_0))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d0 lss_0 =
  (lss_0 99);;
let rec mappend_lh__d1_d0 xs_4 ys_9 =
  (xs_4 ys_9);;
let rec concat_lh__d1 lss_1 =
  (lss_1 99);;
let rec map_lh__d0 f_2_1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_3_1, t_3_1) -> 
      (let rec t_3_2 = ((map_lh__d0 f_2_1) t_3_1) in
        (let rec h_3_2 = (f_2_1 h_3_1) in
          (fun _lh_dummy_0 -> 
            ((mappend_lh__d1_d0 h_3_2) (concat_lh__d1 t_3_2)))))
    | `LH_N -> 
      (fun _lh_dummy_1 f_2_2 i_2_0 -> 
        i_2_0));;
let rec mappend_lh__d1_d1 xs_9 ys_1_6 =
  (match xs_9 with
    | `LH_C(h_3_5, t_3_5) -> 
      (let rec t_3_6 = ((mappend_lh__d1_d1 t_3_5) ys_1_6) in
        (let rec h_3_6 = h_3_5 in
          (fun ys_1_7 -> 
            (let rec t_3_7 = ((mappend_lh__d1_d0 t_3_6) ys_1_7) in
              (let rec h_3_7 = h_3_6 in
                (fun f_2_4 i_2_2 -> 
                  (((foldl_lh__d0 f_2_4) ((f_2_4 i_2_2) h_3_7)) t_3_7)))))))
    | `LH_N -> 
      ys_1_6);;
let rec unlines_lh__d0 _lh_unlines_arg1_0 =
  (concat_lh__d0 ((map_lh__d0 (fun l_0 -> 
    ((mappend_lh__d1_d1 l_0) (let rec t_2_8 = (fun ys_1_2 -> 
      ys_1_2) in
      (let rec h_2_8 = '|' in
        (fun ys_1_3 -> 
          (let rec t_2_9 = ((mappend_lh__d1_d0 t_2_8) ys_1_3) in
            (let rec h_2_9 = h_2_8 in
              (fun f_2_0 i_1_9 -> 
                (((foldl_lh__d0 f_2_0) ((f_2_0 i_1_9) h_2_9)) t_2_9)))))))))) _lh_unlines_arg1_0));;
let rec prependToAll_lh__d0 _lh_prependToAll_arg1_1_2 _lh_prependToAll_arg2_4 =
  (_lh_prependToAll_arg2_4 _lh_prependToAll_arg1_1_2);;
let rec prependToAll_lh__d2 _lh_prependToAll_arg1_1_3 _lh_prependToAll_arg2_5 =
  (_lh_prependToAll_arg2_5 _lh_prependToAll_arg1_1_3);;
let rec prependToAll_lh__d6 _lh_prependToAll_arg1_1_4 _lh_prependToAll_arg2_6 =
  (_lh_prependToAll_arg2_6 _lh_prependToAll_arg1_1_4);;
let rec break_lh__d0 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_2 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_0 in
          (fun _lh_dummy_3 -> 
            (lines_lh__d0 _lh_lines_LH_C_1_0)))))
      else
        (let rec _lh_matchIdent_3_0 = ((break_lh__d0 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_3_0 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and
lines_lh__d0 _lh_lines_arg1_0 =
  (match _lh_lines_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_2_5 = ((break_lh__d0 (fun x_2 -> 
        (x_2 = '|'))) _lh_lines_arg1_0) in
        (match _lh_matchIdent_2_5 with
          | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
            (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_2_6 = _lh_lines_LH_P2_1_0 in
              (_lh_matchIdent_2_6 99))))
          | _ -> 
            (failwith "error"))));;
let rec intersperse_lh__d0 _lh_intersperse_arg1_1 _lh_intersperse_arg2_0 =
  (_lh_intersperse_arg2_0 _lh_intersperse_arg1_1);;
let rec prependToAll_lh__d7 _lh_prependToAll_arg1_1_5 _lh_prependToAll_arg2_7 =
  (_lh_prependToAll_arg2_7 _lh_prependToAll_arg1_1_5);;
let rec compareList_lh__d2_d0 _lh_compareList_arg1_2_5 _lh_compareList_arg2_2_5 =
  (match _lh_compareList_arg1_2_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_5 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_7_5, _lh_compareList_LH_C_1_7_5) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7_6, _lh_compareList_LH_C_1_7_6) -> 
      (match _lh_compareList_arg2_2_5 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_7_7, _lh_compareList_LH_C_1_7_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7_6) = (int_of_char _lh_compareList_LH_C_0_7_7)) then
            ((compareList_lh__d2_d0 _lh_compareList_LH_C_1_7_6) _lh_compareList_LH_C_1_7_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7_6) < (int_of_char _lh_compareList_LH_C_0_7_7)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d5 _lh_gtList_arg1_4 _lh_gtList_arg2_4 =
  (let rec _lh_matchIdent_1_2 = ((compareList_lh__d2_d0 _lh_gtList_arg1_4) _lh_gtList_arg2_4) in
    _lh_matchIdent_1_2);;
let rec compareList_lh__d2_d1 _lh_compareList_arg1_1_3 _lh_compareList_arg2_1_3 =
  (match _lh_compareList_arg1_1_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_3 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_3_9, _lh_compareList_LH_C_1_3_9) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_0, _lh_compareList_LH_C_1_4_0) -> 
      (match _lh_compareList_arg2_1_3 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_4_1, _lh_compareList_LH_C_1_4_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_0) = (int_of_char _lh_compareList_LH_C_0_4_1)) then
            ((compareList_lh__d2_d1 _lh_compareList_LH_C_1_4_0) _lh_compareList_LH_C_1_4_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_0) < (int_of_char _lh_compareList_LH_C_0_4_1)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d6 _lh_gtList_arg1_1 _lh_gtList_arg2_1 =
  (let rec _lh_matchIdent_1 = ((compareList_lh__d2_d1 _lh_gtList_arg1_1) _lh_gtList_arg2_1) in
    _lh_matchIdent_1);;
let rec leList_lh__d1_d1 _lh_leList_arg1_6 _lh_leList_arg2_6 =
  (not ((gtList_lh__d1_d6 _lh_leList_arg1_6) _lh_leList_arg2_6));;
let rec mappend_lh__d6 xs_8 ys_1_5 =
  (match xs_8 with
    | `LH_C(h_3_4, t_3_4) -> 
      (`LH_C(h_3_4, ((mappend_lh__d6 t_3_4) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec quickSort_lh__d0 _lh_quickSort_arg1_0 =
  (match _lh_quickSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort_LH_C_0_0, _lh_quickSort_LH_C_1_0) -> 
      ((mappend_lh__d6 (quickSort_lh__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((leList_lh__d1_d1 _lh_listcomp_fun_ls_h_0) _lh_quickSort_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_quickSort_LH_C_1_0)))) (`LH_C(_lh_quickSort_LH_C_0_0, (quickSort_lh__d0 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (if ((gtList_lh__d1_d5 _lh_listcomp_fun_ls_h_1) _lh_quickSort_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 _lh_quickSort_LH_C_1_0))))))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d3 f_2_3 i_2_1 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_3, t_3_3) -> 
      ((f_2_3 h_3_3) (((foldr_lh__d3 f_2_3) i_2_1) t_3_3))
    | `LH_N -> 
      i_2_1);;
let rec mappend_lh__d9 xs_1_1 ys_1_9 =
  (match xs_1_1 with
    | `LH_C(h_3_8, t_3_8) -> 
      (`LH_C(h_3_8, ((mappend_lh__d9 t_3_8) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec compareList_lh__d2_d5 _lh_compareList_arg1_1_6 _lh_compareList_arg2_1_6 =
  (match _lh_compareList_arg1_1_6 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_6 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_4_8, _lh_compareList_LH_C_1_4_8) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_9, _lh_compareList_LH_C_1_4_9) -> 
      (match _lh_compareList_arg2_1_6 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_5_0, _lh_compareList_LH_C_1_5_0) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_9) = (int_of_char _lh_compareList_LH_C_0_5_0)) then
            ((compareList_lh__d2_d5 _lh_compareList_LH_C_1_4_9) _lh_compareList_LH_C_1_5_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_9) < (int_of_char _lh_compareList_LH_C_0_5_0)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d2_d0 _lh_gtList_arg1_2_0 _lh_gtList_arg2_2_0 =
  (let rec _lh_matchIdent_3_2 = ((compareList_lh__d2_d5 _lh_gtList_arg1_2_0) _lh_gtList_arg2_2_0) in
    _lh_matchIdent_3_2);;
let rec leList_lh__d1_d5 _lh_leList_arg1_4 _lh_leList_arg2_4 =
  (not ((gtList_lh__d2_d0 _lh_leList_arg1_4) _lh_leList_arg2_4));;
let rec treeSort_lh__d0 _lh_treeSort_arg1_0 =
  let rec mkTree_1 = (fun _lh_mkTree_arg1_1 -> 
    (let rec to_tree_1 = (fun _lh_to_tree_arg1_1 _lh_to_tree_arg2_1 -> 
      (match _lh_to_tree_arg2_1 with
        | `Tip -> 
          (`Branch(_lh_to_tree_arg1_1, (`Tip), (`Tip)))
        | `Branch(_lh_to_tree_Branch_0_0, _lh_to_tree_Branch_1_0, _lh_to_tree_Branch_2_0) -> 
          (if ((leList_lh__d1_d5 _lh_to_tree_arg1_1) _lh_to_tree_Branch_0_0) then
            (`Branch(_lh_to_tree_Branch_0_0, ((to_tree_1 _lh_to_tree_arg1_1) _lh_to_tree_Branch_1_0), _lh_to_tree_Branch_2_0))
          else
            (`Branch(_lh_to_tree_Branch_0_0, _lh_to_tree_Branch_1_0, ((to_tree_1 _lh_to_tree_arg1_1) _lh_to_tree_Branch_2_0))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_lh__d3 to_tree_1) (`Tip)) _lh_mkTree_arg1_1)))
  and readTree_1 = (fun _lh_readTree_arg1_1 -> 
    (match _lh_readTree_arg1_1 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_readTree_Branch_0_0, _lh_readTree_Branch_1_0, _lh_readTree_Branch_2_0) -> 
        ((mappend_lh__d9 (readTree_1 _lh_readTree_Branch_1_0)) (`LH_C(_lh_readTree_Branch_0_0, (readTree_1 _lh_readTree_Branch_2_0))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_5 -> 
    (readTree_1 (mkTree_1 _lh_funcomp_x_5))) _lh_treeSort_arg1_0);;
let rec compareList_lh__d2_d2 _lh_compareList_arg1_1_9 _lh_compareList_arg2_1_9 =
  (match _lh_compareList_arg1_1_9 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_9 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_5_7, _lh_compareList_LH_C_1_5_7) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_5_8, _lh_compareList_LH_C_1_5_8) -> 
      (match _lh_compareList_arg2_1_9 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_5_9, _lh_compareList_LH_C_1_5_9) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_5_8) = (int_of_char _lh_compareList_LH_C_0_5_9)) then
            ((compareList_lh__d2_d2 _lh_compareList_LH_C_1_5_8) _lh_compareList_LH_C_1_5_9)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_5_8) < (int_of_char _lh_compareList_LH_C_0_5_9)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d7 _lh_gtList_arg1_7 _lh_gtList_arg2_7 =
  (let rec _lh_matchIdent_1_5 = ((compareList_lh__d2_d2 _lh_gtList_arg1_7) _lh_gtList_arg2_7) in
    _lh_matchIdent_1_5);;
let rec leList_lh__d1_d2 _lh_leList_arg1_3 _lh_leList_arg2_3 =
  (not ((gtList_lh__d1_d7 _lh_leList_arg1_3) _lh_leList_arg2_3));;
let rec mappend_lh__d7 xs_5 ys_1_0 =
  (match xs_5 with
    | `LH_C(h_2_6, t_2_6) -> 
      (`LH_C(h_2_6, ((mappend_lh__d7 t_2_6) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec quickerSort_lh__d0 _lh_quickerSort_arg1_0 =
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
                ((mappend_lh__d7 (quickerSort_lh__d0 _lh_split_arg2_0)) (`LH_C(_lh_split_arg1_0, (quickerSort_lh__d0 _lh_split_arg3_0))))
              | `LH_C(_lh_split_LH_C_0_0, _lh_split_LH_C_1_0) -> 
                (if ((leList_lh__d1_d2 _lh_split_LH_C_0_0) _lh_split_arg1_0) then
                  ((((split_0 _lh_split_arg1_0) (`LH_C(_lh_split_LH_C_0_0, _lh_split_arg2_0))) _lh_split_arg3_0) _lh_split_LH_C_1_0)
                else
                  ((((split_0 _lh_split_arg1_0) _lh_split_arg2_0) (`LH_C(_lh_split_LH_C_0_0, _lh_split_arg3_0))) _lh_split_LH_C_1_0))
              | _ -> 
                (failwith "error"))) in
            ((((split_0 _lh_quickerSort_LH_C_0_0) (`LH_N)) (`LH_N)) _lh_quickerSort_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec prependToAll_lh__d5 _lh_prependToAll_arg1_8 _lh_prependToAll_arg2_0 =
  (_lh_prependToAll_arg2_0 _lh_prependToAll_arg1_8);;
let rec odd_lh__d0 _lh_odd_arg1_0 =
  ((_lh_odd_arg1_0 mod 2) = 0);;
let rec compareList_lh__d1 _lh_compareList_arg1_2_1 _lh_compareList_arg2_2_1 =
  (match _lh_compareList_arg1_2_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_1 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_3, _lh_compareList_LH_C_1_6_3) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_6_4, _lh_compareList_LH_C_1_6_4) -> 
      (match _lh_compareList_arg2_2_1 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_6_5, _lh_compareList_LH_C_1_6_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_6_4) = (int_of_char _lh_compareList_LH_C_0_6_5)) then
            ((compareList_lh__d1 _lh_compareList_LH_C_1_6_4) _lh_compareList_LH_C_1_6_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_6_4) < (int_of_char _lh_compareList_LH_C_0_6_5)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1 _lh_gtList_arg1_2 _lh_gtList_arg2_2 =
  (let rec _lh_matchIdent_4 = ((compareList_lh__d1 _lh_gtList_arg1_2) _lh_gtList_arg2_2) in
    _lh_matchIdent_4);;
let rec leList_lh__d1 _lh_leList_arg1_7 _lh_leList_arg2_7 =
  (not ((gtList_lh__d1 _lh_leList_arg1_7) _lh_leList_arg2_7));;
let rec compareList_lh__d2 _lh_compareList_arg1_5 _lh_compareList_arg2_5 =
  (match _lh_compareList_arg1_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_5 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_5, _lh_compareList_LH_C_1_1_5) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_6, _lh_compareList_LH_C_1_1_6) -> 
      (match _lh_compareList_arg2_5 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_7, _lh_compareList_LH_C_1_1_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_6) = (int_of_char _lh_compareList_LH_C_0_1_7)) then
            ((compareList_lh__d2 _lh_compareList_LH_C_1_1_6) _lh_compareList_LH_C_1_1_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_6) < (int_of_char _lh_compareList_LH_C_0_1_7)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d2 _lh_gtList_arg1_1_7 _lh_gtList_arg2_1_7 =
  (let rec _lh_matchIdent_2_8 = ((compareList_lh__d2 _lh_gtList_arg1_1_7) _lh_gtList_arg2_1_7) in
    _lh_matchIdent_2_8);;
let rec leList_lh__d2 _lh_leList_arg1_9 _lh_leList_arg2_9 =
  (not ((gtList_lh__d2 _lh_leList_arg1_9) _lh_leList_arg2_9));;
let rec compareList_lh__d0 _lh_compareList_arg1_1_1 _lh_compareList_arg2_1_1 =
  (match _lh_compareList_arg1_1_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_1 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_3_3, _lh_compareList_LH_C_1_3_3) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_3_4, _lh_compareList_LH_C_1_3_4) -> 
      (match _lh_compareList_arg2_1_1 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_3_5, _lh_compareList_LH_C_1_3_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_3_4) = (int_of_char _lh_compareList_LH_C_0_3_5)) then
            ((compareList_lh__d0 _lh_compareList_LH_C_1_3_4) _lh_compareList_LH_C_1_3_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_4) < (int_of_char _lh_compareList_LH_C_0_3_5)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d0 _lh_gtList_arg1_9 _lh_gtList_arg2_9 =
  (let rec _lh_matchIdent_1_7 = ((compareList_lh__d0 _lh_gtList_arg1_9) _lh_gtList_arg2_9) in
    _lh_matchIdent_1_7);;
let rec leList_lh__d0 _lh_leList_arg1_1_5 _lh_leList_arg2_1_5 =
  (not ((gtList_lh__d0 _lh_leList_arg1_1_5) _lh_leList_arg2_1_5));;
let rec odd_lh__d1 _lh_odd_arg1_1 =
  ((_lh_odd_arg1_1 mod 2) = 0);;
let rec heapSort_lh__d0 _lh_heapSort_arg1_0 =
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
                    (if ((leList_lh__d0 _lh_mix_Branch_0_0) _lh_mix_Branch_0_1) then
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
        (if (((leList_lh__d1 _lh_to_heap_arg2_0) _lh_to_heap_Branch_0_0) && (odd_lh__d0 _lh_to_heap_arg1_0)) then
          (`Branch(_lh_to_heap_arg2_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_Branch_0_0) _lh_to_heap_Branch_1_0), _lh_to_heap_Branch_2_0))
        else
          (if ((leList_lh__d2 _lh_to_heap_arg2_0) _lh_to_heap_Branch_0_0) then
            (`Branch(_lh_to_heap_arg2_0, _lh_to_heap_Branch_1_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_Branch_0_0) _lh_to_heap_Branch_2_0)))
          else
            (if (odd_lh__d1 _lh_to_heap_arg1_0) then
              (`Branch(_lh_to_heap_Branch_0_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_arg2_0) _lh_to_heap_Branch_1_0), _lh_to_heap_Branch_2_0))
            else
              (`Branch(_lh_to_heap_Branch_0_0, _lh_to_heap_Branch_1_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_arg2_0) _lh_to_heap_Branch_2_0))))))
      | _ -> 
        (failwith "error")))
  in (clear_0 ((heap_0 0) _lh_heapSort_arg1_0));;
let rec foldr_lh__d0 f_1_7 i_1_6 ls_7 =
  ((ls_7 f_1_7) i_1_6);;
let rec compareList_lh__d1_d4 _lh_compareList_arg1_4 _lh_compareList_arg2_4 =
  (match _lh_compareList_arg1_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_2, _lh_compareList_LH_C_1_1_2) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_3, _lh_compareList_LH_C_1_1_3) -> 
      (match _lh_compareList_arg2_4 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_4, _lh_compareList_LH_C_1_1_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_3) = (int_of_char _lh_compareList_LH_C_0_1_4)) then
            ((compareList_lh__d1_d4 _lh_compareList_LH_C_1_1_3) _lh_compareList_LH_C_1_1_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_3) < (int_of_char _lh_compareList_LH_C_0_1_4)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d1 _lh_gtList_arg1_6 _lh_gtList_arg2_6 =
  (let rec _lh_matchIdent_1_4 = ((compareList_lh__d1_d4 _lh_gtList_arg1_6) _lh_gtList_arg2_6) in
    _lh_matchIdent_1_4);;
let rec leList_lh__d7 _lh_leList_arg1_0 _lh_leList_arg2_0 =
  (not ((gtList_lh__d1_d1 _lh_leList_arg1_0) _lh_leList_arg2_0));;
let rec compareList_lh__d1_d5 _lh_compareList_arg1_1 _lh_compareList_arg2_1 =
  (match _lh_compareList_arg1_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_3, _lh_compareList_LH_C_1_3) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4, _lh_compareList_LH_C_1_4) -> 
      (match _lh_compareList_arg2_1 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_5, _lh_compareList_LH_C_1_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4) = (int_of_char _lh_compareList_LH_C_0_5)) then
            ((compareList_lh__d1_d5 _lh_compareList_LH_C_1_4) _lh_compareList_LH_C_1_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4) < (int_of_char _lh_compareList_LH_C_0_5)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d2 _lh_gtList_arg1_1_4 _lh_gtList_arg2_1_4 =
  (let rec _lh_matchIdent_2_3 = ((compareList_lh__d1_d5 _lh_gtList_arg1_1_4) _lh_gtList_arg2_1_4) in
    _lh_matchIdent_2_3);;
let rec leList_lh__d8 _lh_leList_arg1_2 _lh_leList_arg2_2 =
  (not ((gtList_lh__d1_d2 _lh_leList_arg1_2) _lh_leList_arg2_2));;
let rec compareList_lh__d1_d7 _lh_compareList_arg1_1_7 _lh_compareList_arg2_1_7 =
  (match _lh_compareList_arg1_1_7 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_7 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_5_1, _lh_compareList_LH_C_1_5_1) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_5_2, _lh_compareList_LH_C_1_5_2) -> 
      (match _lh_compareList_arg2_1_7 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_5_3, _lh_compareList_LH_C_1_5_3) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_5_2) = (int_of_char _lh_compareList_LH_C_0_5_3)) then
            ((compareList_lh__d1_d7 _lh_compareList_LH_C_1_5_2) _lh_compareList_LH_C_1_5_3)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_5_2) < (int_of_char _lh_compareList_LH_C_0_5_3)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d4 _lh_gtList_arg1_0 _lh_gtList_arg2_0 =
  (let rec _lh_matchIdent_0 = ((compareList_lh__d1_d7 _lh_gtList_arg1_0) _lh_gtList_arg2_0) in
    _lh_matchIdent_0);;
let rec leList_lh__d1_d0 _lh_leList_arg1_5 _lh_leList_arg2_5 =
  (not ((gtList_lh__d1_d4 _lh_leList_arg1_5) _lh_leList_arg2_5));;
let rec compareList_lh__d7 _lh_compareList_arg1_1_2 _lh_compareList_arg2_1_2 =
  (match _lh_compareList_arg1_1_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_3_6, _lh_compareList_LH_C_1_3_6) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_3_7, _lh_compareList_LH_C_1_3_7) -> 
      (match _lh_compareList_arg2_1_2 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_3_8, _lh_compareList_LH_C_1_3_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_3_7) = (int_of_char _lh_compareList_LH_C_0_3_8)) then
            ((compareList_lh__d7 _lh_compareList_LH_C_1_3_7) _lh_compareList_LH_C_1_3_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_7) < (int_of_char _lh_compareList_LH_C_0_3_8)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d4 _lh_gtList_arg1_5 _lh_gtList_arg2_5 =
  (let rec _lh_matchIdent_1_3 = ((compareList_lh__d7 _lh_gtList_arg1_5) _lh_gtList_arg2_5) in
    _lh_matchIdent_1_3);;
let rec compareList_lh__d9 _lh_compareList_arg1_1_4 _lh_compareList_arg2_1_4 =
  (match _lh_compareList_arg1_1_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_4 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_4_2, _lh_compareList_LH_C_1_4_2) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_3, _lh_compareList_LH_C_1_4_3) -> 
      (match _lh_compareList_arg2_1_4 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_4_4, _lh_compareList_LH_C_1_4_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_3) = (int_of_char _lh_compareList_LH_C_0_4_4)) then
            ((compareList_lh__d9 _lh_compareList_LH_C_1_4_3) _lh_compareList_LH_C_1_4_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_3) < (int_of_char _lh_compareList_LH_C_0_4_4)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d6 _lh_gtList_arg1_1_1 _lh_gtList_arg2_1_1 =
  (let rec _lh_matchIdent_2_0 = ((compareList_lh__d9 _lh_gtList_arg1_1_1) _lh_gtList_arg2_1_1) in
    _lh_matchIdent_2_0);;
let rec compareList_lh__d8 _lh_compareList_arg1_2_3 _lh_compareList_arg2_2_3 =
  (match _lh_compareList_arg1_2_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_3 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_9, _lh_compareList_LH_C_1_6_9) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7_0, _lh_compareList_LH_C_1_7_0) -> 
      (match _lh_compareList_arg2_2_3 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_7_1, _lh_compareList_LH_C_1_7_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7_0) = (int_of_char _lh_compareList_LH_C_0_7_1)) then
            ((compareList_lh__d8 _lh_compareList_LH_C_1_7_0) _lh_compareList_LH_C_1_7_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7_0) < (int_of_char _lh_compareList_LH_C_0_7_1)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d5 _lh_gtList_arg1_1_6 _lh_gtList_arg2_1_6 =
  (let rec _lh_matchIdent_2_7 = ((compareList_lh__d8 _lh_gtList_arg1_1_6) _lh_gtList_arg2_1_6) in
    _lh_matchIdent_2_7);;
let rec compareList_lh__d1_d6 _lh_compareList_arg1_6 _lh_compareList_arg2_6 =
  (match _lh_compareList_arg1_6 with
    | `LH_N -> 
      (match _lh_compareList_arg2_6 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_8, _lh_compareList_LH_C_1_1_8) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_9, _lh_compareList_LH_C_1_1_9) -> 
      (match _lh_compareList_arg2_6 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_2_0, _lh_compareList_LH_C_1_2_0) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_9) = (int_of_char _lh_compareList_LH_C_0_2_0)) then
            ((compareList_lh__d1_d6 _lh_compareList_LH_C_1_1_9) _lh_compareList_LH_C_1_2_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_9) < (int_of_char _lh_compareList_LH_C_0_2_0)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d3 _lh_gtList_arg1_1_0 _lh_gtList_arg2_1_0 =
  (let rec _lh_matchIdent_1_9 = ((compareList_lh__d1_d6 _lh_gtList_arg1_1_0) _lh_gtList_arg2_1_0) in
    _lh_matchIdent_1_9);;
let rec leList_lh__d9 _lh_leList_arg1_1_2 _lh_leList_arg2_1_2 =
  (not ((gtList_lh__d1_d3 _lh_leList_arg1_1_2) _lh_leList_arg2_1_2));;
let rec compareList_lh__d1_d8 _lh_compareList_arg1_1_8 _lh_compareList_arg2_1_8 =
  (match _lh_compareList_arg1_1_8 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_8 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_5_4, _lh_compareList_LH_C_1_5_4) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_5_5, _lh_compareList_LH_C_1_5_5) -> 
      (match _lh_compareList_arg2_1_8 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_5_6, _lh_compareList_LH_C_1_5_6) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_5_5) = (int_of_char _lh_compareList_LH_C_0_5_6)) then
            ((compareList_lh__d1_d8 _lh_compareList_LH_C_1_5_5) _lh_compareList_LH_C_1_5_6)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_5_5) < (int_of_char _lh_compareList_LH_C_0_5_6)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec ltList_lh__d2 _lh_ltList_arg1_3 _lh_ltList_arg2_3 =
  (let rec _lh_matchIdent_1_8 = ((compareList_lh__d1_d8 _lh_ltList_arg1_3) _lh_ltList_arg2_3) in
    _lh_matchIdent_1_8);;
let rec compareList_lh__d1_d3 _lh_compareList_arg1_2_0 _lh_compareList_arg2_2_0 =
  (match _lh_compareList_arg1_2_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_0, _lh_compareList_LH_C_1_6_0) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_6_1, _lh_compareList_LH_C_1_6_1) -> 
      (match _lh_compareList_arg2_2_0 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_6_2, _lh_compareList_LH_C_1_6_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_6_1) = (int_of_char _lh_compareList_LH_C_0_6_2)) then
            ((compareList_lh__d1_d3 _lh_compareList_LH_C_1_6_1) _lh_compareList_LH_C_1_6_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_6_1) < (int_of_char _lh_compareList_LH_C_0_6_2)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d1_d0 _lh_gtList_arg1_1_8 _lh_gtList_arg2_1_8 =
  (let rec _lh_matchIdent_2_9 = ((compareList_lh__d1_d3 _lh_gtList_arg1_1_8) _lh_gtList_arg2_1_8) in
    _lh_matchIdent_2_9);;
let rec leList_lh__d6 _lh_leList_arg1_1_0 _lh_leList_arg2_1_0 =
  (not ((gtList_lh__d1_d0 _lh_leList_arg1_1_0) _lh_leList_arg2_1_0));;
let rec compareList_lh__d5 _lh_compareList_arg1_8 _lh_compareList_arg2_8 =
  (match _lh_compareList_arg1_8 with
    | `LH_N -> 
      (match _lh_compareList_arg2_8 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_2_4, _lh_compareList_LH_C_1_2_4) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_2_5, _lh_compareList_LH_C_1_2_5) -> 
      (match _lh_compareList_arg2_8 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_2_6, _lh_compareList_LH_C_1_2_6) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_2_5) = (int_of_char _lh_compareList_LH_C_0_2_6)) then
            ((compareList_lh__d5 _lh_compareList_LH_C_1_2_5) _lh_compareList_LH_C_1_2_6)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_5) < (int_of_char _lh_compareList_LH_C_0_2_6)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqList_lh__d0 _lh_eqList_arg1_0 _lh_eqList_arg2_0 =
  (((compareList_lh__d5 _lh_eqList_arg1_0) _lh_eqList_arg2_0) = (`EQ));;
let rec compareList_lh__d1_d2 _lh_compareList_arg1_9 _lh_compareList_arg2_9 =
  (match _lh_compareList_arg1_9 with
    | `LH_N -> 
      (match _lh_compareList_arg2_9 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_2_7, _lh_compareList_LH_C_1_2_7) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_2_8, _lh_compareList_LH_C_1_2_8) -> 
      (match _lh_compareList_arg2_9 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_2_9, _lh_compareList_LH_C_1_2_9) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_2_8) = (int_of_char _lh_compareList_LH_C_0_2_9)) then
            ((compareList_lh__d1_d2 _lh_compareList_LH_C_1_2_8) _lh_compareList_LH_C_1_2_9)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_8) < (int_of_char _lh_compareList_LH_C_0_2_9)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d9 _lh_gtList_arg1_3 _lh_gtList_arg2_3 =
  (let rec _lh_matchIdent_1_1 = ((compareList_lh__d1_d2 _lh_gtList_arg1_3) _lh_gtList_arg2_3) in
    _lh_matchIdent_1_1);;
let rec leList_lh__d5 _lh_leList_arg1_1_1 _lh_leList_arg2_1_1 =
  (not ((gtList_lh__d9 _lh_leList_arg1_1_1) _lh_leList_arg2_1_1));;
let rec compareList_lh__d6 _lh_compareList_arg1_1_5 _lh_compareList_arg2_1_5 =
  (match _lh_compareList_arg1_1_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_5 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_4_5, _lh_compareList_LH_C_1_4_5) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_6, _lh_compareList_LH_C_1_4_6) -> 
      (match _lh_compareList_arg2_1_5 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_4_7, _lh_compareList_LH_C_1_4_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_6) = (int_of_char _lh_compareList_LH_C_0_4_7)) then
            ((compareList_lh__d6 _lh_compareList_LH_C_1_4_6) _lh_compareList_LH_C_1_4_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_6) < (int_of_char _lh_compareList_LH_C_0_4_7)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d3 _lh_gtList_arg1_1_5 _lh_gtList_arg2_1_5 =
  (let rec _lh_matchIdent_2_4 = ((compareList_lh__d6 _lh_gtList_arg1_1_5) _lh_gtList_arg2_1_5) in
    _lh_matchIdent_2_4);;
let rec compareList_lh__d1_d1 _lh_compareList_arg1_3 _lh_compareList_arg2_3 =
  (match _lh_compareList_arg1_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_9, _lh_compareList_LH_C_1_9) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_0, _lh_compareList_LH_C_1_1_0) -> 
      (match _lh_compareList_arg2_3 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_1, _lh_compareList_LH_C_1_1_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_0) = (int_of_char _lh_compareList_LH_C_0_1_1)) then
            ((compareList_lh__d1_d1 _lh_compareList_LH_C_1_1_0) _lh_compareList_LH_C_1_1_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_0) < (int_of_char _lh_compareList_LH_C_0_1_1)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d8 _lh_gtList_arg1_1_3 _lh_gtList_arg2_1_3 =
  (let rec _lh_matchIdent_2_2 = ((compareList_lh__d1_d1 _lh_gtList_arg1_1_3) _lh_gtList_arg2_1_3) in
    _lh_matchIdent_2_2);;
let rec leList_lh__d4 _lh_leList_arg1_1_3 _lh_leList_arg2_1_3 =
  (not ((gtList_lh__d8 _lh_leList_arg1_1_3) _lh_leList_arg2_1_3));;
let rec compareList_lh__d1_d0 _lh_compareList_arg1_0 _lh_compareList_arg2_0 =
  (match _lh_compareList_arg1_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_0, _lh_compareList_LH_C_1_0) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1, _lh_compareList_LH_C_1_1) -> 
      (match _lh_compareList_arg2_0 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_2, _lh_compareList_LH_C_1_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1) = (int_of_char _lh_compareList_LH_C_0_2)) then
            ((compareList_lh__d1_d0 _lh_compareList_LH_C_1_1) _lh_compareList_LH_C_1_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1) < (int_of_char _lh_compareList_LH_C_0_2)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d7 _lh_gtList_arg1_1_2 _lh_gtList_arg2_1_2 =
  (let rec _lh_matchIdent_2_1 = ((compareList_lh__d1_d0 _lh_gtList_arg1_1_2) _lh_gtList_arg2_1_2) in
    _lh_matchIdent_2_1);;
let rec leList_lh__d3 _lh_leList_arg1_1_4 _lh_leList_arg2_1_4 =
  (not ((gtList_lh__d7 _lh_leList_arg1_1_4) _lh_leList_arg2_1_4));;
let rec mergeSort_lh__d0 _lh_mergeSort_arg1_0 =
  let rec merge_lists_0 = (fun _lh_merge_lists_arg1_0 -> 
    ((_lh_merge_lists_arg1_0 merge_lists_0) merge_0))
  and runsplit_0 = (fun _lh_runsplit_arg1_0 _lh_runsplit_arg2_0 -> 
    (match _lh_runsplit_arg1_0 with
      | `LH_N -> 
        (match _lh_runsplit_arg2_0 with
          | `LH_N -> 
            (fun merge_lists_1 merge_1 -> 
              (`LH_N))
          | _ -> 
            (match _lh_runsplit_arg2_0 with
              | `LH_N -> 
                (let rec _lh_merge_lists_LH_C_1_0 = (fun merge_lists_2 merge_2 -> 
                  (`LH_N)) in
                  (let rec _lh_merge_lists_LH_C_0_0 = _lh_runsplit_arg1_0 in
                    (fun merge_lists_3 merge_3 -> 
                      ((merge_3 _lh_merge_lists_LH_C_0_0) (merge_lists_3 _lh_merge_lists_LH_C_1_0)))))
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
                                (let rec _lh_matchIdent_6 = _lh_runsplit_LH_C_1_1 in
                                  (match _lh_matchIdent_6 with
                                    | `LH_N -> 
                                      (if ((gtList_lh__d3 _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_1, (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))))) _lh_runsplit_LH_C_1_2)
                                      else
                                        (if ((leList_lh__d3 _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                          ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1))))) _lh_runsplit_LH_C_1_2)
                                        else
                                          (let rec _lh_merge_lists_LH_C_1_1 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))) _lh_runsplit_LH_C_1_2) in
                                            (let rec _lh_merge_lists_LH_C_0_1 = (`LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1)) in
                                              (fun merge_lists_4 merge_4 -> 
                                                ((merge_4 _lh_merge_lists_LH_C_0_1) (merge_lists_4 _lh_merge_lists_LH_C_1_1)))))))
                                    | _ -> 
                                      (if ((leList_lh__d4 _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_C(_lh_runsplit_LH_C_0_1, _lh_matchIdent_6))))) _lh_runsplit_LH_C_1_2)
                                      else
                                        (let rec _lh_merge_lists_LH_C_1_2 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))) _lh_runsplit_LH_C_1_2) in
                                          (let rec _lh_merge_lists_LH_C_0_2 = (`LH_C(_lh_runsplit_LH_C_0_1, _lh_matchIdent_6)) in
                                            (fun merge_lists_5 merge_5 -> 
                                              ((merge_5 _lh_merge_lists_LH_C_0_2) (merge_lists_5 _lh_merge_lists_LH_C_1_2))))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                  | _ -> 
                    (match _lh_runsplit_arg1_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3) -> 
                        (match _lh_runsplit_arg2_0 with
                          | `LH_C(_lh_runsplit_LH_C_0_4, _lh_runsplit_LH_C_1_4) -> 
                            (let rec _lh_matchIdent_7 = _lh_runsplit_LH_C_1_3 in
                              (match _lh_matchIdent_7 with
                                | `LH_N -> 
                                  (if ((gtList_lh__d4 _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_3, (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))))) _lh_runsplit_LH_C_1_4)
                                  else
                                    (if ((leList_lh__d5 _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                      ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3))))) _lh_runsplit_LH_C_1_4)
                                    else
                                      (let rec _lh_merge_lists_LH_C_1_3 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))) _lh_runsplit_LH_C_1_4) in
                                        (let rec _lh_merge_lists_LH_C_0_3 = (`LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3)) in
                                          (fun merge_lists_6 merge_6 -> 
                                            ((merge_6 _lh_merge_lists_LH_C_0_3) (merge_lists_6 _lh_merge_lists_LH_C_1_3)))))))
                                | _ -> 
                                  (if ((leList_lh__d6 _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_C(_lh_runsplit_LH_C_0_3, _lh_matchIdent_7))))) _lh_runsplit_LH_C_1_4)
                                  else
                                    (let rec _lh_merge_lists_LH_C_1_4 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))) _lh_runsplit_LH_C_1_4) in
                                      (let rec _lh_merge_lists_LH_C_0_4 = (`LH_C(_lh_runsplit_LH_C_0_3, _lh_matchIdent_7)) in
                                        (fun merge_lists_7 merge_7 -> 
                                          ((merge_7 _lh_merge_lists_LH_C_0_4) (merge_lists_7 _lh_merge_lists_LH_C_1_4))))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))))
      | _ -> 
        (match _lh_runsplit_arg2_0 with
          | `LH_N -> 
            (let rec _lh_merge_lists_LH_C_1_5 = (fun merge_lists_8 merge_8 -> 
              (`LH_N)) in
              (let rec _lh_merge_lists_LH_C_0_5 = _lh_runsplit_arg1_0 in
                (fun merge_lists_9 merge_9 -> 
                  ((merge_9 _lh_merge_lists_LH_C_0_5) (merge_lists_9 _lh_merge_lists_LH_C_1_5)))))
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
                            (let rec _lh_matchIdent_8 = _lh_runsplit_LH_C_1_6 in
                              (match _lh_matchIdent_8 with
                                | `LH_N -> 
                                  (if ((gtList_lh__d5 _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_6, (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))))) _lh_runsplit_LH_C_1_7)
                                  else
                                    (if ((leList_lh__d7 _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                      ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6))))) _lh_runsplit_LH_C_1_7)
                                    else
                                      (let rec _lh_merge_lists_LH_C_1_6 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))) _lh_runsplit_LH_C_1_7) in
                                        (let rec _lh_merge_lists_LH_C_0_6 = (`LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6)) in
                                          (fun merge_lists_1_0 merge_1_0 -> 
                                            ((merge_1_0 _lh_merge_lists_LH_C_0_6) (merge_lists_1_0 _lh_merge_lists_LH_C_1_6)))))))
                                | _ -> 
                                  (if ((leList_lh__d8 _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_C(_lh_runsplit_LH_C_0_6, _lh_matchIdent_8))))) _lh_runsplit_LH_C_1_7)
                                  else
                                    (let rec _lh_merge_lists_LH_C_1_7 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))) _lh_runsplit_LH_C_1_7) in
                                      (let rec _lh_merge_lists_LH_C_0_7 = (`LH_C(_lh_runsplit_LH_C_0_6, _lh_matchIdent_8)) in
                                        (fun merge_lists_1_1 merge_1_1 -> 
                                          ((merge_1_1 _lh_merge_lists_LH_C_0_7) (merge_lists_1_1 _lh_merge_lists_LH_C_1_7))))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))
              | _ -> 
                (match _lh_runsplit_arg1_0 with
                  | `LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8) -> 
                    (match _lh_runsplit_arg2_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_9, _lh_runsplit_LH_C_1_9) -> 
                        (let rec _lh_matchIdent_9 = _lh_runsplit_LH_C_1_8 in
                          (match _lh_matchIdent_9 with
                            | `LH_N -> 
                              (if ((gtList_lh__d6 _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_8, (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))))) _lh_runsplit_LH_C_1_9)
                              else
                                (if ((leList_lh__d9 _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                  ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8))))) _lh_runsplit_LH_C_1_9)
                                else
                                  (let rec _lh_merge_lists_LH_C_1_8 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))) _lh_runsplit_LH_C_1_9) in
                                    (let rec _lh_merge_lists_LH_C_0_8 = (`LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8)) in
                                      (fun merge_lists_1_2 merge_1_2 -> 
                                        ((merge_1_2 _lh_merge_lists_LH_C_0_8) (merge_lists_1_2 _lh_merge_lists_LH_C_1_8)))))))
                            | _ -> 
                              (if ((leList_lh__d1_d0 _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_C(_lh_runsplit_LH_C_0_8, _lh_matchIdent_9))))) _lh_runsplit_LH_C_1_9)
                              else
                                (let rec _lh_merge_lists_LH_C_1_9 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))) _lh_runsplit_LH_C_1_9) in
                                  (let rec _lh_merge_lists_LH_C_0_9 = (`LH_C(_lh_runsplit_LH_C_0_8, _lh_matchIdent_9)) in
                                    (fun merge_lists_1_3 merge_1_3 -> 
                                      ((merge_1_3 _lh_merge_lists_LH_C_0_9) (merge_lists_1_3 _lh_merge_lists_LH_C_1_9))))))))
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
                    (if ((eqList_lh__d0 _lh_merge_LH_C_0_0) _lh_merge_LH_C_0_1) then
                      (`LH_C(_lh_merge_LH_C_0_0, (`LH_C(_lh_merge_LH_C_0_1, ((merge_0 _lh_merge_LH_C_1_0) _lh_merge_LH_C_1_1)))))
                    else
                      (if ((ltList_lh__d2 _lh_merge_LH_C_0_0) _lh_merge_LH_C_0_1) then
                        (`LH_C(_lh_merge_LH_C_0_0, ((merge_0 _lh_merge_LH_C_1_0) (`LH_C(_lh_merge_LH_C_0_1, _lh_merge_LH_C_1_1)))))
                      else
                        (`LH_C(_lh_merge_LH_C_0_1, ((merge_0 (`LH_C(_lh_merge_LH_C_0_0, _lh_merge_LH_C_1_0))) _lh_merge_LH_C_1_1)))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
  in ((fun _lh_funcomp_x_4 -> 
    (merge_lists_0 ((runsplit_0 (`LH_N)) _lh_funcomp_x_4))) _lh_mergeSort_arg1_0);;
let rec prependToAll_lh__d1 _lh_prependToAll_arg1_1_0 _lh_prependToAll_arg2_2 =
  (_lh_prependToAll_arg2_2 _lh_prependToAll_arg1_1_0);;
let rec prependToAll_lh__d4 _lh_prependToAll_arg1_1_1 _lh_prependToAll_arg2_3 =
  (_lh_prependToAll_arg2_3 _lh_prependToAll_arg1_1_1);;
let rec mappend_lh__d3 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec reverse_helper_lh__d3 ls_4 a_2 =
  (match ls_4 with
    | `LH_C(h_3, t_3) -> 
      ((reverse_helper_lh__d3 t_3) (let rec t_4 = a_2 in
        (let rec h_4 = h_3 in
          (fun ys_3 -> 
            (`LH_C(h_4, ((mappend_lh__d3 t_4) ys_3)))))))
    | `LH_N -> 
      a_2);;
let rec reverse_lh__d3 ls_0 =
  ((reverse_helper_lh__d3 ls_0) (fun ys_0 -> 
    ys_0));;
let rec compareList_lh__d4 _lh_compareList_arg1_2 _lh_compareList_arg2_2 =
  (match _lh_compareList_arg1_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6, _lh_compareList_LH_C_1_6) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7, _lh_compareList_LH_C_1_7) -> 
      (match _lh_compareList_arg2_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_8, _lh_compareList_LH_C_1_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7) = (int_of_char _lh_compareList_LH_C_0_8)) then
            ((compareList_lh__d4 _lh_compareList_LH_C_1_7) _lh_compareList_LH_C_1_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7) < (int_of_char _lh_compareList_LH_C_0_8)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec ltList_lh__d1 _lh_ltList_arg1_0 _lh_ltList_arg2_0 =
  (let rec _lh_matchIdent_2 = ((compareList_lh__d4 _lh_ltList_arg1_0) _lh_ltList_arg2_0) in
    _lh_matchIdent_2);;
let rec mappend_lh__d1 xs_1 ys_4 =
  (xs_1 ys_4);;
let rec compareList_lh__d3 _lh_compareList_arg1_7 _lh_compareList_arg2_7 =
  (match _lh_compareList_arg1_7 with
    | `LH_N -> 
      (match _lh_compareList_arg2_7 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_2_1, _lh_compareList_LH_C_1_2_1) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_2_2, _lh_compareList_LH_C_1_2_2) -> 
      (match _lh_compareList_arg2_7 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_2_3, _lh_compareList_LH_C_1_2_3) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_2_2) = (int_of_char _lh_compareList_LH_C_0_2_3)) then
            ((compareList_lh__d3 _lh_compareList_LH_C_1_2_2) _lh_compareList_LH_C_1_2_3)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_2) < (int_of_char _lh_compareList_LH_C_0_2_3)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec ltList_lh__d0 _lh_ltList_arg1_2 _lh_ltList_arg2_2 =
  (let rec _lh_matchIdent_5 = ((compareList_lh__d3 _lh_ltList_arg1_2) _lh_ltList_arg2_2) in
    _lh_matchIdent_5);;
let rec mappend_lh__d0 xs_3 ys_8 =
  (xs_3 ys_8);;
let rec mappend_lh__d2 xs_6 ys_1_1 =
  (xs_6 ys_1_1);;
let rec mappend_lh__d4 xs_1_0 ys_1_8 =
  (xs_1_0 ys_1_8);;
let rec reverse_helper_lh__d0 ls_3 a_1 =
  (match ls_3 with
    | `LH_C(h_1, t_1) -> 
      ((reverse_helper_lh__d0 t_1) (let rec t_2 = a_1 in
        (let rec h_2 = h_1 in
          (fun ys_1 -> 
            (`LH_C(h_2, ((mappend_lh__d0 t_2) ys_1)))))))
    | `LH_N -> 
      a_1);;
let rec reverse_lh__d0 ls_1_3 =
  ((reverse_helper_lh__d0 ls_1_3) (fun ys_2_0 -> 
    ys_2_0));;
let rec reverse_helper_lh__d1 ls_6 a_4 =
  (match ls_6 with
    | `LH_C(h_2_3, t_2_3) -> 
      ((reverse_helper_lh__d1 t_2_3) (let rec t_2_4 = a_4 in
        (let rec h_2_4 = h_2_3 in
          (fun ys_7 -> 
            (`LH_C(h_2_4, ((mappend_lh__d1 t_2_4) ys_7)))))))
    | `LH_N -> 
      a_4);;
let rec reverse_lh__d1 ls_1_4 =
  ((reverse_helper_lh__d1 ls_1_4) (fun ys_2_1 -> 
    ys_2_1));;
let rec reverse_helper_lh__d2 ls_5 a_3 =
  (match ls_5 with
    | `LH_C(h_5, t_5) -> 
      ((reverse_helper_lh__d2 t_5) (let rec t_6 = a_3 in
        (let rec h_6 = h_5 in
          (fun ys_5 -> 
            (`LH_C(h_6, ((mappend_lh__d2 t_6) ys_5)))))))
    | `LH_N -> 
      a_3);;
let rec reverse_lh__d2 ls_1_6 =
  ((reverse_helper_lh__d2 ls_1_6) (fun ys_2_3 -> 
    ys_2_3));;
let rec reverse_helper_lh__d4 ls_1_5 a_5 =
  (match ls_1_5 with
    | `LH_C(h_3_9, t_3_9) -> 
      ((reverse_helper_lh__d4 t_3_9) (let rec t_4_0 = a_5 in
        (let rec h_4_0 = h_3_9 in
          (fun ys_2_2 -> 
            (`LH_C(h_4_0, ((mappend_lh__d4 t_4_0) ys_2_2)))))))
    | `LH_N -> 
      a_5);;
let rec reverse_lh__d4 ls_1_7 =
  ((reverse_helper_lh__d4 ls_1_7) (fun ys_2_4 -> 
    ys_2_4));;
let rec insertSort_lh__d0 _lh_insertSort_arg1_0 =
  (match _lh_insertSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_insertSort_LH_C_0_0, _lh_insertSort_LH_C_1_0) -> 
      (let rec trins_0 = (fun _lh_trins_arg1_0 _lh_trins_arg2_0 _lh_trins_arg3_0 -> 
        (match _lh_trins_arg2_0 with
          | `LH_N -> 
            (match _lh_trins_arg3_0 with
              | `LH_C(_lh_trins_LH_C_0_0, _lh_trins_LH_C_1_0) -> 
                (((trins_0 (`LH_N)) ((mappend_lh__d0 (reverse_lh__d0 _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_0, (`LH_N))))) _lh_trins_LH_C_1_0)
              | _ -> 
                (match _lh_trins_arg3_0 with
                  | `LH_N -> 
                    ((mappend_lh__d1 (reverse_lh__d1 _lh_trins_arg1_0)) _lh_trins_arg2_0)
                  | _ -> 
                    (match _lh_trins_arg2_0 with
                      | `LH_C(_lh_trins_LH_C_0_1, _lh_trins_LH_C_1_1) -> 
                        (match _lh_trins_arg3_0 with
                          | `LH_C(_lh_trins_LH_C_0_2, _lh_trins_LH_C_1_2) -> 
                            (if ((ltList_lh__d0 _lh_trins_LH_C_0_1) _lh_trins_LH_C_0_2) then
                              (((trins_0 (`LH_C(_lh_trins_LH_C_0_1, _lh_trins_arg1_0))) _lh_trins_LH_C_1_1) (`LH_C(_lh_trins_LH_C_0_2, _lh_trins_LH_C_1_2)))
                            else
                              (((trins_0 (`LH_N)) ((mappend_lh__d2 (reverse_lh__d2 _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_2, (`LH_C(_lh_trins_LH_C_0_1, _lh_trins_LH_C_1_1)))))) _lh_trins_LH_C_1_2))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))))
          | _ -> 
            (match _lh_trins_arg3_0 with
              | `LH_N -> 
                ((mappend_lh__d3 (reverse_lh__d3 _lh_trins_arg1_0)) _lh_trins_arg2_0)
              | _ -> 
                (match _lh_trins_arg2_0 with
                  | `LH_C(_lh_trins_LH_C_0_3, _lh_trins_LH_C_1_3) -> 
                    (match _lh_trins_arg3_0 with
                      | `LH_C(_lh_trins_LH_C_0_4, _lh_trins_LH_C_1_4) -> 
                        (if ((ltList_lh__d1 _lh_trins_LH_C_0_3) _lh_trins_LH_C_0_4) then
                          (((trins_0 (`LH_C(_lh_trins_LH_C_0_3, _lh_trins_arg1_0))) _lh_trins_LH_C_1_3) (`LH_C(_lh_trins_LH_C_0_4, _lh_trins_LH_C_1_4)))
                        else
                          (((trins_0 (`LH_N)) ((mappend_lh__d4 (reverse_lh__d4 _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_4, (`LH_C(_lh_trins_LH_C_0_3, _lh_trins_LH_C_1_3)))))) _lh_trins_LH_C_1_4))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
        (((trins_0 (`LH_N)) (`LH_C(_lh_insertSort_LH_C_0_0, (`LH_N)))) _lh_insertSort_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec mangle_lh__d0 _lh_mangle_arg1_0 =
  (let rec sort_0 = (fun _lh_sort_arg1_0 -> 
    ((((foldr_lh__d0 (fun f_0 g_0 _lh_funcomp_x_1 -> 
      (f_0 (g_0 _lh_funcomp_x_1)))) (fun x_0 -> 
      x_0)) ((intersperse_lh__d0 reverse_lh__d5) (let rec _lh_intersperse_LH_C_1_0 = (let rec _lh_prependToAll_LH_C_1_0 = (let rec _lh_prependToAll_LH_C_1_1 = (let rec _lh_prependToAll_LH_C_1_2 = (let rec _lh_prependToAll_LH_C_1_3 = (let rec _lh_prependToAll_LH_C_1_4 = (let rec _lh_prependToAll_LH_C_1_5 = (let rec _lh_prependToAll_LH_C_1_6 = (fun _lh_prependToAll_arg1_0 f_1 i_0 -> 
      i_0) in
      (let rec _lh_prependToAll_LH_C_0_0 = treeSort2_lh__d0 in
        (fun _lh_prependToAll_arg1_1 -> 
          (let rec t_8 = (let rec t_9 = ((prependToAll_lh__d0 _lh_prependToAll_arg1_1) _lh_prependToAll_LH_C_1_6) in
            (let rec h_8 = _lh_prependToAll_LH_C_0_0 in
              (fun f_2 i_1 -> 
                ((f_2 h_8) (((foldr_lh__d0 f_2) i_1) t_9))))) in
            (let rec h_9 = _lh_prependToAll_arg1_1 in
              (fun f_3 i_2 -> 
                ((f_3 h_9) (((foldr_lh__d0 f_3) i_2) t_8)))))))) in
      (let rec _lh_prependToAll_LH_C_0_1 = treeSort_lh__d0 in
        (fun _lh_prependToAll_arg1_2 -> 
          (let rec t_1_0 = (let rec t_1_1 = ((prependToAll_lh__d1 _lh_prependToAll_arg1_2) _lh_prependToAll_LH_C_1_5) in
            (let rec h_1_0 = _lh_prependToAll_LH_C_0_1 in
              (fun f_4 i_3 -> 
                ((f_4 h_1_0) (((foldr_lh__d0 f_4) i_3) t_1_1))))) in
            (let rec h_1_1 = _lh_prependToAll_arg1_2 in
              (fun f_5 i_4 -> 
                ((f_5 h_1_1) (((foldr_lh__d0 f_5) i_4) t_1_0)))))))) in
      (let rec _lh_prependToAll_LH_C_0_2 = quickerSort_lh__d0 in
        (fun _lh_prependToAll_arg1_3 -> 
          (let rec t_1_2 = (let rec t_1_3 = ((prependToAll_lh__d2 _lh_prependToAll_arg1_3) _lh_prependToAll_LH_C_1_4) in
            (let rec h_1_2 = _lh_prependToAll_LH_C_0_2 in
              (fun f_6 i_5 -> 
                ((f_6 h_1_2) (((foldr_lh__d0 f_6) i_5) t_1_3))))) in
            (let rec h_1_3 = _lh_prependToAll_arg1_3 in
              (fun f_7 i_6 -> 
                ((f_7 h_1_3) (((foldr_lh__d0 f_7) i_6) t_1_2)))))))) in
      (let rec _lh_prependToAll_LH_C_0_3 = quickSort2_lh__d0 in
        (fun _lh_prependToAll_arg1_4 -> 
          (let rec t_1_4 = (let rec t_1_5 = ((prependToAll_lh__d3 _lh_prependToAll_arg1_4) _lh_prependToAll_LH_C_1_3) in
            (let rec h_1_4 = _lh_prependToAll_LH_C_0_3 in
              (fun f_8 i_7 -> 
                ((f_8 h_1_4) (((foldr_lh__d0 f_8) i_7) t_1_5))))) in
            (let rec h_1_5 = _lh_prependToAll_arg1_4 in
              (fun f_9 i_8 -> 
                ((f_9 h_1_5) (((foldr_lh__d0 f_9) i_8) t_1_4)))))))) in
      (let rec _lh_prependToAll_LH_C_0_4 = quickSort_lh__d0 in
        (fun _lh_prependToAll_arg1_5 -> 
          (let rec t_1_6 = (let rec t_1_7 = ((prependToAll_lh__d4 _lh_prependToAll_arg1_5) _lh_prependToAll_LH_C_1_2) in
            (let rec h_1_6 = _lh_prependToAll_LH_C_0_4 in
              (fun f_1_0 i_9 -> 
                ((f_1_0 h_1_6) (((foldr_lh__d0 f_1_0) i_9) t_1_7))))) in
            (let rec h_1_7 = _lh_prependToAll_arg1_5 in
              (fun f_1_1 i_1_0 -> 
                ((f_1_1 h_1_7) (((foldr_lh__d0 f_1_1) i_1_0) t_1_6)))))))) in
      (let rec _lh_prependToAll_LH_C_0_5 = mergeSort_lh__d0 in
        (fun _lh_prependToAll_arg1_6 -> 
          (let rec t_1_8 = (let rec t_1_9 = ((prependToAll_lh__d5 _lh_prependToAll_arg1_6) _lh_prependToAll_LH_C_1_1) in
            (let rec h_1_8 = _lh_prependToAll_LH_C_0_5 in
              (fun f_1_2 i_1_1 -> 
                ((f_1_2 h_1_8) (((foldr_lh__d0 f_1_2) i_1_1) t_1_9))))) in
            (let rec h_1_9 = _lh_prependToAll_arg1_6 in
              (fun f_1_3 i_1_2 -> 
                ((f_1_3 h_1_9) (((foldr_lh__d0 f_1_3) i_1_2) t_1_8)))))))) in
      (let rec _lh_prependToAll_LH_C_0_6 = insertSort_lh__d0 in
        (fun _lh_prependToAll_arg1_7 -> 
          (let rec t_2_0 = (let rec t_2_1 = ((prependToAll_lh__d6 _lh_prependToAll_arg1_7) _lh_prependToAll_LH_C_1_0) in
            (let rec h_2_0 = _lh_prependToAll_LH_C_0_6 in
              (fun f_1_4 i_1_3 -> 
                ((f_1_4 h_2_0) (((foldr_lh__d0 f_1_4) i_1_3) t_2_1))))) in
            (let rec h_2_1 = _lh_prependToAll_arg1_7 in
              (fun f_1_5 i_1_4 -> 
                ((f_1_5 h_2_1) (((foldr_lh__d0 f_1_5) i_1_4) t_2_0)))))))) in
      (let rec _lh_intersperse_LH_C_0_0 = heapSort_lh__d0 in
        (fun _lh_intersperse_arg1_0 -> 
          (let rec t_2_2 = ((prependToAll_lh__d7 _lh_intersperse_arg1_0) _lh_intersperse_LH_C_1_0) in
            (let rec h_2_2 = _lh_intersperse_LH_C_0_0 in
              (fun f_1_6 i_1_5 -> 
                ((f_1_6 h_2_2) (((foldr_lh__d0 f_1_6) i_1_5) t_2_2)))))))))) _lh_sort_arg1_0)) in
    ((fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (unlines_lh__d0 (sort_0 _lh_funcomp_x_3))) (lines_lh__d0 _lh_funcomp_x_2))) _lh_mangle_arg1_0));;
let rec testSorting_nofib_lh__d0 _lh_testSorting_nofib_arg1_0 =
  (let rec f_2_6 = (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('M', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('o', (`LH_C('l', (`LH_C('.', (`LH_C('M', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('D', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_C('.', (`LH_C('L', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_C('E', (`LH_C('n', (`LH_C('v', (`LH_C('i', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('f', (`LH_C('i', (`LH_C('b', (`LH_C('U', (`LH_C('t', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C('$', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('_', (`LH_C(':', (`LH_C('s', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('F', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C(')', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C(' ', (`LH_C('-', (`LH_C('>', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('u', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('.', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('=', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_C('h', (`LH_C('e', (`LH_C('a', (`LH_C('p', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('r', (`LH_C('g', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(']', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (hash_lh__d0 (mangle_lh__d0 f_2_6)));;
end;;

