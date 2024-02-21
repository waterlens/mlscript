

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec foldl_lh__d1 f_0 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (((foldl_lh__d1 f_0) ((f_0 i_0) h_2)) t_2)
    | `LH_N -> 
      i_0);;
let rec hash_lh__d1 _lh_hash_arg1_0 =
  (((foldl_lh__d1 (fun acc_0 c_0 -> 
    ((int_of_char c_0) + (acc_0 * 31)))) 0) _lh_hash_arg1_0);;
let rec mappend_lh__d5 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_lh__d5 t_9) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec compareList_lh__d1 _lh_compareList_arg1_0 _lh_compareList_arg2_0 =
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
            ((compareList_lh__d1 _lh_compareList_LH_C_1_1) _lh_compareList_LH_C_1_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1) < (int_of_char _lh_compareList_LH_C_0_2)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gtList_lh__d5 _lh_gtList_arg1_3 _lh_gtList_arg2_3 =
  (let rec _lh_matchIdent_1_3 = ((compareList_lh__d1 _lh_gtList_arg1_3) _lh_gtList_arg2_3) in
    (match _lh_matchIdent_1_3 with
      | `GT -> 
        true
      | _ -> 
        false));;
let rec leList_lh__d1_d4 _lh_leList_arg1_0 _lh_leList_arg2_0 =
  (not ((gtList_lh__d5 _lh_leList_arg1_0) _lh_leList_arg2_0));;
let rec quickerSort_lh__d1 _lh_quickerSort_arg1_0 =
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
                ((mappend_lh__d5 (quickerSort_lh__d1 _lh_split_arg2_0)) (`LH_C(_lh_split_arg1_0, (quickerSort_lh__d1 _lh_split_arg3_0))))
              | `LH_C(_lh_split_LH_C_0_0, _lh_split_LH_C_1_0) -> 
                (if ((leList_lh__d1_d4 _lh_split_LH_C_0_0) _lh_split_arg1_0) then
                  ((((split_0 _lh_split_arg1_0) (`LH_C(_lh_split_LH_C_0_0, _lh_split_arg2_0))) _lh_split_arg3_0) _lh_split_LH_C_1_0)
                else
                  ((((split_0 _lh_split_arg1_0) _lh_split_arg2_0) (`LH_C(_lh_split_LH_C_0_0, _lh_split_arg3_0))) _lh_split_LH_C_1_0))
              | _ -> 
                (failwith "error"))) in
            ((((split_0 _lh_quickerSort_LH_C_0_0) (`LH_N)) (`LH_N)) _lh_quickerSort_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d8 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d8 t_3) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec reverse_helper_lh__d1 ls_3 a_0 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      ((reverse_helper_lh__d1 t_4) (`LH_C(h_4, a_0)))
    | `LH_N -> 
      a_0);;
let rec reverse_lh__d2 ls_9 =
  ((reverse_helper_lh__d1 ls_9) (`LH_N));;
let rec reverse_lh__d4 ls_1_0 =
  ((reverse_helper_lh__d1 ls_1_0) (`LH_N));;
let rec reverse_lh__d3 ls_0 =
  ((reverse_helper_lh__d1 ls_0) (`LH_N));;
let rec reverse_lh__d5 ls_1 =
  ((reverse_helper_lh__d1 ls_1) (`LH_N));;
let rec mappend_lh__d1_d0 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d1_d0 t_5) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_lh__d7 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d7 t_6) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec ltList_lh__d2 _lh_ltList_arg1_1 _lh_ltList_arg2_1 =
  (let rec _lh_matchIdent_6 = ((compareList_lh__d1 _lh_ltList_arg1_1) _lh_ltList_arg2_1) in
    (match _lh_matchIdent_6 with
      | `LT -> 
        true
      | _ -> 
        false));;
let rec mappend_lh__d9 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C(h_1_5, ((mappend_lh__d9 t_1_5) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec insertSort_lh__d1 _lh_insertSort_arg1_0 =
  (match _lh_insertSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_insertSort_LH_C_0_0, _lh_insertSort_LH_C_1_0) -> 
      (let rec trins_0 = (fun _lh_trins_arg1_0 _lh_trins_arg2_0 _lh_trins_arg3_0 -> 
        (match _lh_trins_arg2_0 with
          | `LH_N -> 
            (match _lh_trins_arg3_0 with
              | `LH_C(_lh_trins_LH_C_0_0, _lh_trins_LH_C_1_0) -> 
                (((trins_0 (`LH_N)) ((mappend_lh__d9 (reverse_lh__d5 _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_0, (`LH_N))))) _lh_trins_LH_C_1_0)
              | _ -> 
                (match _lh_trins_arg3_0 with
                  | `LH_N -> 
                    ((mappend_lh__d1_d0 (reverse_lh__d5 _lh_trins_arg1_0)) _lh_trins_arg2_0)
                  | _ -> 
                    (match _lh_trins_arg2_0 with
                      | `LH_C(_lh_trins_LH_C_0_1, _lh_trins_LH_C_1_1) -> 
                        (match _lh_trins_arg3_0 with
                          | `LH_C(_lh_trins_LH_C_0_2, _lh_trins_LH_C_1_2) -> 
                            (if ((ltList_lh__d2 _lh_trins_LH_C_0_1) _lh_trins_LH_C_0_2) then
                              (((trins_0 (`LH_C(_lh_trins_LH_C_0_1, _lh_trins_arg1_0))) _lh_trins_LH_C_1_1) (`LH_C(_lh_trins_LH_C_0_2, _lh_trins_LH_C_1_2)))
                            else
                              (((trins_0 (`LH_N)) ((mappend_lh__d1_d0 (reverse_lh__d2 _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_2, (`LH_C(_lh_trins_LH_C_0_1, _lh_trins_LH_C_1_1)))))) _lh_trins_LH_C_1_2))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))))
          | _ -> 
            (match _lh_trins_arg3_0 with
              | `LH_N -> 
                ((mappend_lh__d7 (reverse_lh__d3 _lh_trins_arg1_0)) _lh_trins_arg2_0)
              | _ -> 
                (match _lh_trins_arg2_0 with
                  | `LH_C(_lh_trins_LH_C_0_3, _lh_trins_LH_C_1_3) -> 
                    (match _lh_trins_arg3_0 with
                      | `LH_C(_lh_trins_LH_C_0_4, _lh_trins_LH_C_1_4) -> 
                        (if ((ltList_lh__d2 _lh_trins_LH_C_0_3) _lh_trins_LH_C_0_4) then
                          (((trins_0 (`LH_C(_lh_trins_LH_C_0_3, _lh_trins_arg1_0))) _lh_trins_LH_C_1_3) (`LH_C(_lh_trins_LH_C_0_4, _lh_trins_LH_C_1_4)))
                        else
                          (((trins_0 (`LH_N)) ((mappend_lh__d8 (reverse_lh__d4 _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_4, (`LH_C(_lh_trins_LH_C_0_3, _lh_trins_LH_C_1_3)))))) _lh_trins_LH_C_1_4))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
        (((trins_0 (`LH_N)) (`LH_C(_lh_insertSort_LH_C_0_0, (`LH_N)))) _lh_insertSort_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d3 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d3 t_1) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec foldr_lh__d3 f_3 i_3 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_0, t_1_0) -> 
      ((f_3 h_1_0) (((foldr_lh__d3 f_3) i_3) t_1_0))
    | `LH_N -> 
      i_3);;
let rec select_lh__d1 _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_0_0)), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec partition_lh__d1 _lh_partition_arg1_0 _lh_partition_arg2_0 =
  (((foldr_lh__d3 (select_lh__d1 _lh_partition_arg1_0)) (`LH_P2((`LH_N), (`LH_N)))) _lh_partition_arg2_0);;
let rec geList_lh__d1 _lh_geList_arg1_0 _lh_geList_arg2_0 =
  (not ((ltList_lh__d2 _lh_geList_arg1_0) _lh_geList_arg2_0));;
let rec quickSort2_lh__d1 _lh_quickSort2_arg1_0 =
  (match _lh_quickSort2_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort2_LH_C_0_0, _lh_quickSort2_LH_C_1_0) -> 
      (let rec _lh_matchIdent_5 = ((partition_lh__d1 ((fun x_1 y_0 -> 
        ((geList_lh__d1 x_1) y_0)) _lh_quickSort2_LH_C_0_0)) _lh_quickSort2_LH_C_1_0) in
        (match _lh_matchIdent_5 with
          | `LH_P2(_lh_quickSort2_LH_P2_0_0, _lh_quickSort2_LH_P2_1_0) -> 
            ((mappend_lh__d3 (quickSort2_lh__d1 _lh_quickSort2_LH_P2_0_0)) (`LH_C(_lh_quickSort2_LH_C_0_0, (quickSort2_lh__d1 _lh_quickSort2_LH_P2_1_0))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec leList_lh__d9 _lh_leList_arg1_1_3 _lh_leList_arg2_1_3 =
  (not ((gtList_lh__d5 _lh_leList_arg1_1_3) _lh_leList_arg2_1_3));;
let rec foldr_lh__d2 f_2 i_2 ls_5 =
  (match ls_5 with
    | `LH_C(h_7, t_7) -> 
      ((f_2 h_7) (((foldr_lh__d2 f_2) i_2) t_7))
    | `LH_N -> 
      i_2);;
let rec mappend_lh__d2 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_lh__d2 t_8) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec treeSort_lh__d1 _lh_treeSort_arg1_0 =
  let rec mkTree_1 = (fun _lh_mkTree_arg1_1 -> 
    (let rec to_tree_1 = (fun _lh_to_tree_arg1_1 _lh_to_tree_arg2_1 -> 
      (match _lh_to_tree_arg2_1 with
        | `Tip -> 
          (`Branch(_lh_to_tree_arg1_1, (`Tip), (`Tip)))
        | `Branch(_lh_to_tree_Branch_0_0, _lh_to_tree_Branch_1_0, _lh_to_tree_Branch_2_0) -> 
          (if ((leList_lh__d9 _lh_to_tree_arg1_1) _lh_to_tree_Branch_0_0) then
            (`Branch(_lh_to_tree_Branch_0_0, ((to_tree_1 _lh_to_tree_arg1_1) _lh_to_tree_Branch_1_0), _lh_to_tree_Branch_2_0))
          else
            (`Branch(_lh_to_tree_Branch_0_0, _lh_to_tree_Branch_1_0, ((to_tree_1 _lh_to_tree_arg1_1) _lh_to_tree_Branch_2_0))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_lh__d2 to_tree_1) (`Tip)) _lh_mkTree_arg1_1)))
  and readTree_1 = (fun _lh_readTree_arg1_1 -> 
    (match _lh_readTree_arg1_1 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_readTree_Branch_0_0, _lh_readTree_Branch_1_0, _lh_readTree_Branch_2_0) -> 
        ((mappend_lh__d2 (readTree_1 _lh_readTree_Branch_1_0)) (`LH_C(_lh_readTree_Branch_0_0, (readTree_1 _lh_readTree_Branch_2_0))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_1 -> 
    (readTree_1 (mkTree_1 _lh_funcomp_x_1))) _lh_treeSort_arg1_0);;
let rec odd_lh__d2 _lh_odd_arg1_0 =
  ((_lh_odd_arg1_0 mod 2) = 0);;
let rec leList_lh__d1_d2 _lh_leList_arg1_3 _lh_leList_arg2_3 =
  (not ((gtList_lh__d5 _lh_leList_arg1_3) _lh_leList_arg2_3));;
let rec leList_lh__d1_d1 _lh_leList_arg1_6 _lh_leList_arg2_6 =
  (not ((gtList_lh__d5 _lh_leList_arg1_6) _lh_leList_arg2_6));;
let rec leList_lh__d1_d3 _lh_leList_arg1_8 _lh_leList_arg2_8 =
  (not ((gtList_lh__d5 _lh_leList_arg1_8) _lh_leList_arg2_8));;
let rec odd_lh__d1 _lh_odd_arg1_1 =
  ((_lh_odd_arg1_1 mod 2) = 0);;
let rec heapSort_lh__d1 _lh_heapSort_arg1_0 =
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
                    (if ((leList_lh__d1_d1 _lh_mix_Branch_0_0) _lh_mix_Branch_0_1) then
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
        (if (((leList_lh__d1_d3 _lh_to_heap_arg2_0) _lh_to_heap_Branch_0_0) && (odd_lh__d1 _lh_to_heap_arg1_0)) then
          (`Branch(_lh_to_heap_arg2_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_Branch_0_0) _lh_to_heap_Branch_1_0), _lh_to_heap_Branch_2_0))
        else
          (if ((leList_lh__d1_d2 _lh_to_heap_arg2_0) _lh_to_heap_Branch_0_0) then
            (`Branch(_lh_to_heap_arg2_0, _lh_to_heap_Branch_1_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_Branch_0_0) _lh_to_heap_Branch_2_0)))
          else
            (if (odd_lh__d2 _lh_to_heap_arg1_0) then
              (`Branch(_lh_to_heap_Branch_0_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_arg2_0) _lh_to_heap_Branch_1_0), _lh_to_heap_Branch_2_0))
            else
              (`Branch(_lh_to_heap_Branch_0_0, _lh_to_heap_Branch_1_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_arg2_0) _lh_to_heap_Branch_2_0))))))
      | _ -> 
        (failwith "error")))
  in (clear_0 ((heap_0 0) _lh_heapSort_arg1_0));;
let rec leList_lh__d1_d6 _lh_leList_arg1_1_2 _lh_leList_arg2_1_2 =
  (not ((gtList_lh__d5 _lh_leList_arg1_1_2) _lh_leList_arg2_1_2));;
let rec mappend_lh__d6 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C(h_1_1, ((mappend_lh__d6 t_1_1) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec leList_lh__d1_d5 _lh_leList_arg1_4 _lh_leList_arg2_4 =
  (not ((gtList_lh__d5 _lh_leList_arg1_4) _lh_leList_arg2_4));;
let rec treeSort2_lh__d1 _lh_treeSort2_arg1_0 =
  let rec mkTree_0 = (fun _lh_mkTree_arg1_0 -> 
    (let rec to_tree_0 = (fun _lh_to_tree_arg1_0 _lh_to_tree_arg2_0 -> 
      (match _lh_to_tree_arg2_0 with
        | `Tip2 -> 
          (`Twig2(_lh_to_tree_arg1_0))
        | `Twig2(_lh_to_tree_Twig2_0_0) -> 
          (if ((leList_lh__d1_d5 _lh_to_tree_arg1_0) _lh_to_tree_Twig2_0_0) then
            (`Branch2(_lh_to_tree_Twig2_0_0, (`Twig2(_lh_to_tree_arg1_0)), (`Tip2)))
          else
            (`Branch2(_lh_to_tree_Twig2_0_0, (`Tip2), (`Twig2(_lh_to_tree_arg1_0)))))
        | `Branch2(_lh_to_tree_Branch2_0_0, _lh_to_tree_Branch2_1_0, _lh_to_tree_Branch2_2_0) -> 
          (if ((leList_lh__d1_d6 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_0_0) then
            (`Branch2(_lh_to_tree_Branch2_0_0, ((to_tree_0 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_1_0), _lh_to_tree_Branch2_2_0))
          else
            (`Branch2(_lh_to_tree_Branch2_0_0, _lh_to_tree_Branch2_1_0, ((to_tree_0 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_2_0))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_lh__d3 to_tree_0) (`Tip2)) _lh_mkTree_arg1_0)))
  and readTree_0 = (fun _lh_readTree_arg1_0 -> 
    (match _lh_readTree_arg1_0 with
      | `Tip2 -> 
        (`LH_N)
      | `Twig2(_lh_readTree_Twig2_0_0) -> 
        (`LH_C(_lh_readTree_Twig2_0_0, (`LH_N)))
      | `Branch2(_lh_readTree_Branch2_0_0, _lh_readTree_Branch2_1_0, _lh_readTree_Branch2_2_0) -> 
        ((mappend_lh__d6 (readTree_0 _lh_readTree_Branch2_1_0)) (`LH_C(_lh_readTree_Branch2_0_0, (readTree_0 _lh_readTree_Branch2_2_0))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_0 -> 
    (readTree_0 (mkTree_0 _lh_funcomp_x_0))) _lh_treeSort2_arg1_0);;
let rec break_lh__d1 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_0 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_0 in
          (let rec _lh_lines_LH_C_0_0 = _lh_break_LH_C_0_0 in
            (fun _lh_dummy_1 -> 
              (match _lh_lines_LH_C_1_0 with
                | `LH_N -> 
                  (`LH_N)
                | _ -> 
                  (let rec _lh_matchIdent_7 = ((break_lh__d1 (fun x_2 -> 
                    (x_2 = '|'))) _lh_lines_LH_C_1_0) in
                    (match _lh_matchIdent_7 with
                      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
                        (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_8 = _lh_lines_LH_P2_1_1 in
                          (_lh_matchIdent_8 99))))
                      | _ -> 
                        (failwith "error")))))))))
      else
        (let rec _lh_matchIdent_9 = ((break_lh__d1 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec leList_lh__d8 _lh_leList_arg1_2 _lh_leList_arg2_2 =
  (not ((gtList_lh__d5 _lh_leList_arg1_2) _lh_leList_arg2_2));;
let rec gtList_lh__d1 _lh_gtList_arg1_0 _lh_gtList_arg2_0 =
  (let rec _lh_matchIdent_1 = ((compareList_lh__d1 _lh_gtList_arg1_0) _lh_gtList_arg2_0) in
    (match _lh_matchIdent_1 with
      | `GT -> 
        true
      | _ -> 
        false));;
let rec gtList_lh__d4 _lh_gtList_arg1_1 _lh_gtList_arg2_1 =
  (let rec _lh_matchIdent_2 = ((compareList_lh__d1 _lh_gtList_arg1_1) _lh_gtList_arg2_1) in
    (match _lh_matchIdent_2 with
      | `GT -> 
        true
      | _ -> 
        false));;
let rec leList_lh__d1 _lh_leList_arg1_7 _lh_leList_arg2_7 =
  (not ((gtList_lh__d5 _lh_leList_arg1_7) _lh_leList_arg2_7));;
let rec leList_lh__d6 _lh_leList_arg1_1_0 _lh_leList_arg2_1_0 =
  (not ((gtList_lh__d5 _lh_leList_arg1_1_0) _lh_leList_arg2_1_0));;
let rec gtList_lh__d2 _lh_gtList_arg1_4 _lh_gtList_arg2_4 =
  (let rec _lh_matchIdent_1_8 = ((compareList_lh__d1 _lh_gtList_arg1_4) _lh_gtList_arg2_4) in
    (match _lh_matchIdent_1_8 with
      | `GT -> 
        true
      | _ -> 
        false));;
let rec ltList_lh__d1 _lh_ltList_arg1_0 _lh_ltList_arg2_0 =
  (let rec _lh_matchIdent_0 = ((compareList_lh__d1 _lh_ltList_arg1_0) _lh_ltList_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LT -> 
        true
      | _ -> 
        false));;
let rec leList_lh__d7 _lh_leList_arg1_1 _lh_leList_arg2_1 =
  (not ((gtList_lh__d5 _lh_leList_arg1_1) _lh_leList_arg2_1));;
let rec eqList_lh__d1 _lh_eqList_arg1_0 _lh_eqList_arg2_0 =
  (((compareList_lh__d1 _lh_eqList_arg1_0) _lh_eqList_arg2_0) = (`EQ));;
let rec leList_lh__d2 _lh_leList_arg1_9 _lh_leList_arg2_9 =
  (not ((gtList_lh__d5 _lh_leList_arg1_9) _lh_leList_arg2_9));;
let rec leList_lh__d5 _lh_leList_arg1_1_1 _lh_leList_arg2_1_1 =
  (not ((gtList_lh__d5 _lh_leList_arg1_1_1) _lh_leList_arg2_1_1));;
let rec gtList_lh__d3 _lh_gtList_arg1_2 _lh_gtList_arg2_2 =
  (let rec _lh_matchIdent_1_0 = ((compareList_lh__d1 _lh_gtList_arg1_2) _lh_gtList_arg2_2) in
    (match _lh_matchIdent_1_0 with
      | `GT -> 
        true
      | _ -> 
        false));;
let rec leList_lh__d4 _lh_leList_arg1_1_4 _lh_leList_arg2_1_4 =
  (not ((gtList_lh__d5 _lh_leList_arg1_1_4) _lh_leList_arg2_1_4));;
let rec leList_lh__d3 _lh_leList_arg1_1_5 _lh_leList_arg2_1_5 =
  (not ((gtList_lh__d5 _lh_leList_arg1_1_5) _lh_leList_arg2_1_5));;
let rec mergeSort_lh__d1 _lh_mergeSort_arg1_0 =
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
                                (let rec _lh_matchIdent_1_4 = _lh_runsplit_LH_C_1_1 in
                                  (match _lh_matchIdent_1_4 with
                                    | `LH_N -> 
                                      (if ((gtList_lh__d4 _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_1, (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))))) _lh_runsplit_LH_C_1_2)
                                      else
                                        (if ((leList_lh__d4 _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                          ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1))))) _lh_runsplit_LH_C_1_2)
                                        else
                                          (let rec _lh_merge_lists_LH_C_1_1 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))) _lh_runsplit_LH_C_1_2) in
                                            (let rec _lh_merge_lists_LH_C_0_1 = (`LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1)) in
                                              (fun merge_lists_4 merge_4 -> 
                                                ((merge_4 _lh_merge_lists_LH_C_0_1) (merge_lists_4 _lh_merge_lists_LH_C_1_1)))))))
                                    | _ -> 
                                      (if ((leList_lh__d2 _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_C(_lh_runsplit_LH_C_0_1, _lh_matchIdent_1_4))))) _lh_runsplit_LH_C_1_2)
                                      else
                                        (let rec _lh_merge_lists_LH_C_1_2 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))) _lh_runsplit_LH_C_1_2) in
                                          (let rec _lh_merge_lists_LH_C_0_2 = (`LH_C(_lh_runsplit_LH_C_0_1, _lh_matchIdent_1_4)) in
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
                            (let rec _lh_matchIdent_1_5 = _lh_runsplit_LH_C_1_3 in
                              (match _lh_matchIdent_1_5 with
                                | `LH_N -> 
                                  (if ((gtList_lh__d3 _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_3, (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))))) _lh_runsplit_LH_C_1_4)
                                  else
                                    (if ((leList_lh__d8 _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                      ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3))))) _lh_runsplit_LH_C_1_4)
                                    else
                                      (let rec _lh_merge_lists_LH_C_1_3 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))) _lh_runsplit_LH_C_1_4) in
                                        (let rec _lh_merge_lists_LH_C_0_3 = (`LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3)) in
                                          (fun merge_lists_6 merge_6 -> 
                                            ((merge_6 _lh_merge_lists_LH_C_0_3) (merge_lists_6 _lh_merge_lists_LH_C_1_3)))))))
                                | _ -> 
                                  (if ((leList_lh__d5 _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_C(_lh_runsplit_LH_C_0_3, _lh_matchIdent_1_5))))) _lh_runsplit_LH_C_1_4)
                                  else
                                    (let rec _lh_merge_lists_LH_C_1_4 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))) _lh_runsplit_LH_C_1_4) in
                                      (let rec _lh_merge_lists_LH_C_0_4 = (`LH_C(_lh_runsplit_LH_C_0_3, _lh_matchIdent_1_5)) in
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
                            (let rec _lh_matchIdent_1_6 = _lh_runsplit_LH_C_1_6 in
                              (match _lh_matchIdent_1_6 with
                                | `LH_N -> 
                                  (if ((gtList_lh__d1 _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_6, (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))))) _lh_runsplit_LH_C_1_7)
                                  else
                                    (if ((leList_lh__d1 _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                      ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6))))) _lh_runsplit_LH_C_1_7)
                                    else
                                      (let rec _lh_merge_lists_LH_C_1_6 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))) _lh_runsplit_LH_C_1_7) in
                                        (let rec _lh_merge_lists_LH_C_0_6 = (`LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6)) in
                                          (fun merge_lists_1_0 merge_1_0 -> 
                                            ((merge_1_0 _lh_merge_lists_LH_C_0_6) (merge_lists_1_0 _lh_merge_lists_LH_C_1_6)))))))
                                | _ -> 
                                  (if ((leList_lh__d3 _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_C(_lh_runsplit_LH_C_0_6, _lh_matchIdent_1_6))))) _lh_runsplit_LH_C_1_7)
                                  else
                                    (let rec _lh_merge_lists_LH_C_1_7 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))) _lh_runsplit_LH_C_1_7) in
                                      (let rec _lh_merge_lists_LH_C_0_7 = (`LH_C(_lh_runsplit_LH_C_0_6, _lh_matchIdent_1_6)) in
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
                        (let rec _lh_matchIdent_1_7 = _lh_runsplit_LH_C_1_8 in
                          (match _lh_matchIdent_1_7 with
                            | `LH_N -> 
                              (if ((gtList_lh__d2 _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_8, (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))))) _lh_runsplit_LH_C_1_9)
                              else
                                (if ((leList_lh__d7 _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                  ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8))))) _lh_runsplit_LH_C_1_9)
                                else
                                  (let rec _lh_merge_lists_LH_C_1_8 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))) _lh_runsplit_LH_C_1_9) in
                                    (let rec _lh_merge_lists_LH_C_0_8 = (`LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8)) in
                                      (fun merge_lists_1_2 merge_1_2 -> 
                                        ((merge_1_2 _lh_merge_lists_LH_C_0_8) (merge_lists_1_2 _lh_merge_lists_LH_C_1_8)))))))
                            | _ -> 
                              (if ((leList_lh__d6 _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_C(_lh_runsplit_LH_C_0_8, _lh_matchIdent_1_7))))) _lh_runsplit_LH_C_1_9)
                              else
                                (let rec _lh_merge_lists_LH_C_1_9 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))) _lh_runsplit_LH_C_1_9) in
                                  (let rec _lh_merge_lists_LH_C_0_9 = (`LH_C(_lh_runsplit_LH_C_0_8, _lh_matchIdent_1_7)) in
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
                    (if ((eqList_lh__d1 _lh_merge_LH_C_0_0) _lh_merge_LH_C_0_1) then
                      (`LH_C(_lh_merge_LH_C_0_0, (`LH_C(_lh_merge_LH_C_0_1, ((merge_0 _lh_merge_LH_C_1_0) _lh_merge_LH_C_1_1)))))
                    else
                      (if ((ltList_lh__d1 _lh_merge_LH_C_0_0) _lh_merge_LH_C_0_1) then
                        (`LH_C(_lh_merge_LH_C_0_0, ((merge_0 _lh_merge_LH_C_1_0) (`LH_C(_lh_merge_LH_C_0_1, _lh_merge_LH_C_1_1)))))
                      else
                        (`LH_C(_lh_merge_LH_C_0_1, ((merge_0 (`LH_C(_lh_merge_LH_C_0_0, _lh_merge_LH_C_1_0))) _lh_merge_LH_C_1_1)))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
  in ((fun _lh_funcomp_x_5 -> 
    (merge_lists_0 ((runsplit_0 (`LH_N)) _lh_funcomp_x_5))) _lh_mergeSort_arg1_0);;
let rec reverse_lh__d1 ls_8 =
  ((reverse_helper_lh__d1 ls_8) (`LH_N));;
let rec map_lh__d1 f_5 ls_7 _lh_popOutId_0_0 =
  (match ls_7 with
    | `LH_C(h_1_3, t_1_3) -> 
      (let rec t_1_4 = ((map_lh__d1 f_5) t_1_3) in
        (let rec h_1_4 = (f_5 h_1_3) in
          ((mappend_lh__d1_d0 h_1_4) (t_1_4 99))))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d1 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (((map_lh__d1 (fun l_0 -> 
    ((mappend_lh__d1 l_0) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_0) 99);;
let rec leList_lh__d1_d0 _lh_leList_arg1_5 _lh_leList_arg2_5 =
  (not ((gtList_lh__d5 _lh_leList_arg1_5) _lh_leList_arg2_5));;
let rec mappend_lh__d4 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C(h_1_2, ((mappend_lh__d4 t_1_2) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec quickSort_lh__d1 _lh_quickSort_arg1_0 =
  (match _lh_quickSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort_LH_C_0_0, _lh_quickSort_LH_C_1_0) -> 
      ((mappend_lh__d4 (quickSort_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((leList_lh__d1_d0 _lh_listcomp_fun_ls_h_0) _lh_quickSort_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_quickSort_LH_C_1_0)))) (`LH_C(_lh_quickSort_LH_C_0_0, (quickSort_lh__d1 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (if ((gtList_lh__d5 _lh_listcomp_fun_ls_h_1) _lh_quickSort_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 _lh_quickSort_LH_C_1_0))))))
    | _ -> 
      (failwith "error"));;
let rec mangle_lh__d1 _lh_mangle_arg1_0 =
  (let rec sort_0 = (fun _lh_sort_arg1_0 -> 
    (((((let rec _lh_intersperse_LH_C_1_0 = (let rec _lh_prependToAll_LH_C_1_0 = (let rec _lh_prependToAll_LH_C_1_1 = (let rec _lh_prependToAll_LH_C_1_2 = (let rec _lh_prependToAll_LH_C_1_3 = (let rec _lh_prependToAll_LH_C_1_4 = (let rec _lh_prependToAll_LH_C_1_5 = (let rec _lh_prependToAll_LH_C_1_6 = (fun _lh_prependToAll_arg1_1 f_6 i_4 -> 
      i_4) in
      (let rec _lh_prependToAll_LH_C_0_0 = treeSort2_lh__d1 in
        (fun _lh_prependToAll_arg1_2 -> 
          (let rec t_1_6 = (let rec t_1_7 = (_lh_prependToAll_LH_C_1_6 _lh_prependToAll_arg1_2) in
            (let rec h_1_6 = _lh_prependToAll_LH_C_0_0 in
              (fun f_7 i_5 -> 
                ((f_7 h_1_6) ((t_1_7 f_7) i_5))))) in
            (let rec h_1_7 = _lh_prependToAll_arg1_2 in
              (fun f_8 i_6 -> 
                ((f_8 h_1_7) ((t_1_6 f_8) i_6)))))))) in
      (let rec _lh_prependToAll_LH_C_0_1 = treeSort_lh__d1 in
        (fun _lh_prependToAll_arg1_3 -> 
          (let rec t_1_8 = (let rec t_1_9 = (_lh_prependToAll_LH_C_1_5 _lh_prependToAll_arg1_3) in
            (let rec h_1_8 = _lh_prependToAll_LH_C_0_1 in
              (fun f_9 i_7 -> 
                ((f_9 h_1_8) ((t_1_9 f_9) i_7))))) in
            (let rec h_1_9 = _lh_prependToAll_arg1_3 in
              (fun f_1_0 i_8 -> 
                ((f_1_0 h_1_9) ((t_1_8 f_1_0) i_8)))))))) in
      (let rec _lh_prependToAll_LH_C_0_2 = quickerSort_lh__d1 in
        (fun _lh_prependToAll_arg1_4 -> 
          (let rec t_2_0 = (let rec t_2_1 = (_lh_prependToAll_LH_C_1_4 _lh_prependToAll_arg1_4) in
            (let rec h_2_0 = _lh_prependToAll_LH_C_0_2 in
              (fun f_1_1 i_9 -> 
                ((f_1_1 h_2_0) ((t_2_1 f_1_1) i_9))))) in
            (let rec h_2_1 = _lh_prependToAll_arg1_4 in
              (fun f_1_2 i_1_0 -> 
                ((f_1_2 h_2_1) ((t_2_0 f_1_2) i_1_0)))))))) in
      (let rec _lh_prependToAll_LH_C_0_3 = quickSort2_lh__d1 in
        (fun _lh_prependToAll_arg1_5 -> 
          (let rec t_2_2 = (let rec t_2_3 = (_lh_prependToAll_LH_C_1_3 _lh_prependToAll_arg1_5) in
            (let rec h_2_2 = _lh_prependToAll_LH_C_0_3 in
              (fun f_1_3 i_1_1 -> 
                ((f_1_3 h_2_2) ((t_2_3 f_1_3) i_1_1))))) in
            (let rec h_2_3 = _lh_prependToAll_arg1_5 in
              (fun f_1_4 i_1_2 -> 
                ((f_1_4 h_2_3) ((t_2_2 f_1_4) i_1_2)))))))) in
      (let rec _lh_prependToAll_LH_C_0_4 = quickSort_lh__d1 in
        (fun _lh_prependToAll_arg1_6 -> 
          (let rec t_2_4 = (let rec t_2_5 = (_lh_prependToAll_LH_C_1_2 _lh_prependToAll_arg1_6) in
            (let rec h_2_4 = _lh_prependToAll_LH_C_0_4 in
              (fun f_1_5 i_1_3 -> 
                ((f_1_5 h_2_4) ((t_2_5 f_1_5) i_1_3))))) in
            (let rec h_2_5 = _lh_prependToAll_arg1_6 in
              (fun f_1_6 i_1_4 -> 
                ((f_1_6 h_2_5) ((t_2_4 f_1_6) i_1_4)))))))) in
      (let rec _lh_prependToAll_LH_C_0_5 = mergeSort_lh__d1 in
        (fun _lh_prependToAll_arg1_7 -> 
          (let rec t_2_6 = (let rec t_2_7 = (_lh_prependToAll_LH_C_1_1 _lh_prependToAll_arg1_7) in
            (let rec h_2_6 = _lh_prependToAll_LH_C_0_5 in
              (fun f_1_7 i_1_5 -> 
                ((f_1_7 h_2_6) ((t_2_7 f_1_7) i_1_5))))) in
            (let rec h_2_7 = _lh_prependToAll_arg1_7 in
              (fun f_1_8 i_1_6 -> 
                ((f_1_8 h_2_7) ((t_2_6 f_1_8) i_1_6)))))))) in
      (let rec _lh_prependToAll_LH_C_0_6 = insertSort_lh__d1 in
        (fun _lh_prependToAll_arg1_8 -> 
          (let rec t_2_8 = (let rec t_2_9 = (_lh_prependToAll_LH_C_1_0 _lh_prependToAll_arg1_8) in
            (let rec h_2_8 = _lh_prependToAll_LH_C_0_6 in
              (fun f_1_9 i_1_7 -> 
                ((f_1_9 h_2_8) ((t_2_9 f_1_9) i_1_7))))) in
            (let rec h_2_9 = _lh_prependToAll_arg1_8 in
              (fun f_2_0 i_1_8 -> 
                ((f_2_0 h_2_9) ((t_2_8 f_2_0) i_1_8)))))))) in
      (let rec _lh_intersperse_LH_C_0_0 = heapSort_lh__d1 in
        (fun _lh_intersperse_arg1_1 -> 
          (let rec t_3_0 = (_lh_intersperse_LH_C_1_0 _lh_intersperse_arg1_1) in
            (let rec h_3_0 = _lh_intersperse_LH_C_0_0 in
              (fun f_2_1 i_1_9 -> 
                ((f_2_1 h_3_0) ((t_3_0 f_2_1) i_1_9)))))))) reverse_lh__d1) (fun f_2_2 g_0 _lh_funcomp_x_2 -> 
      (f_2_2 (g_0 _lh_funcomp_x_2)))) (fun x_3 -> 
      x_3)) _lh_sort_arg1_0)) in
    ((fun _lh_funcomp_x_3 -> 
      ((fun _lh_funcomp_x_4 -> 
        (unlines_lh__d1 (sort_0 _lh_funcomp_x_4))) (match _lh_funcomp_x_3 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (let rec _lh_matchIdent_1_1 = ((break_lh__d1 (fun x_4 -> 
            (x_4 = '|'))) _lh_funcomp_x_3) in
            (match _lh_matchIdent_1_1 with
              | `LH_P2(_lh_lines_LH_P2_0_2, _lh_lines_LH_P2_1_2) -> 
                (`LH_C(_lh_lines_LH_P2_0_2, (let rec _lh_matchIdent_1_2 = _lh_lines_LH_P2_1_2 in
                  (_lh_matchIdent_1_2 99))))
              | _ -> 
                (failwith "error")))))) _lh_mangle_arg1_0));;
let rec testSorting_nofib_lh__d1 _lh_testSorting_nofib_arg1_0 =
  (let rec f_4 = (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('M', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('o', (`LH_C('l', (`LH_C('.', (`LH_C('M', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('D', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_C('.', (`LH_C('L', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_C('E', (`LH_C('n', (`LH_C('v', (`LH_C('i', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('f', (`LH_C('i', (`LH_C('b', (`LH_C('U', (`LH_C('t', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C('$', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('_', (`LH_C(':', (`LH_C('s', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('F', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C(')', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C(' ', (`LH_C('-', (`LH_C('>', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('u', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('.', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('=', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_C('h', (`LH_C('e', (`LH_C('a', (`LH_C('p', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('r', (`LH_C('g', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(']', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (hash_lh__d1 (mangle_lh__d1 f_4)));;
let run () = 1 + (Obj.magic ((testSorting_nofib_lh__d1 0)));
end;;

