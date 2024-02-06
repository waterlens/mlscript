

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______ = struct
let rec map_lh__d5 f_4_2 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C((f_4_2 h_1_8), ((map_lh__d5 f_4_2) t_1_8)))
    | `LH_N -> 
      (`LH_N));;
let rec mapTree_lh__d2 _lh_mapTree_arg1_9 _lh_mapTree_arg2_9 =
  (match _lh_mapTree_arg2_9 with
    | `Node(_lh_mapTree_Node_0_6, _lh_mapTree_Node_1_6) -> 
      (`Node((_lh_mapTree_arg1_9 _lh_mapTree_Node_0_6), ((map_lh__d5 (mapTree_lh__d2 _lh_mapTree_arg1_9)) _lh_mapTree_Node_1_6)))
    | _ -> 
      (failwith "error"));;
let rec filter_lh__d1 f_5_1 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_2_3, t_2_3) -> 
      (if (f_5_1 h_2_3) then
        (`LH_C(h_2_3, ((filter_lh__d1 f_5_1) t_2_3)))
      else
        ((filter_lh__d1 f_5_1) t_2_3))
    | `LH_N -> 
      (`LH_N));;
let rec level_lh__d1 _lh_level_arg1_3 =
  (match _lh_level_arg1_3 with
    | `Assign(_lh_level_Assign_0_3, _lh_level_Assign_1_3) -> 
      _lh_level_Assign_0_3
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_lh__d1 ls_6 a_4 =
  (match ls_6 with
    | `LH_C(h_6, t_6) -> 
      ((reverse_helper_lh__d1 t_6) (`LH_C(h_6, a_4)))
    | `LH_N -> 
      a_4);;
let rec reverse_lh__d1 ls_2_2 =
  ((reverse_helper_lh__d1 ls_2_2) (`LH_N));;
let rec maxLevel_lh__d2 _lh_maxLevel_arg1_2 =
  (match _lh_maxLevel_arg1_2 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_2, _lh_maxLevel_LH_C_1_2) -> 
      (match _lh_maxLevel_LH_C_0_2 with
        | `Assign(_lh_maxLevel_Assign_0_2, _lh_maxLevel_Assign_1_2) -> 
          _lh_maxLevel_Assign_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec complete_lh__d1 _lh_complete_arg1_0 _lh_complete_arg2_0 =
  (match _lh_complete_arg1_0 with
    | `CSP(_lh_complete_CSP_0_0, _lh_complete_CSP_1_0, _lh_complete_CSP_2_0) -> 
      ((maxLevel_lh__d2 _lh_complete_arg2_0) = _lh_complete_CSP_0_0)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d1 _lh_checkComplete_arg1_2 _lh_checkComplete_arg2_2 =
  (if ((complete_lh__d1 _lh_checkComplete_arg1_2) _lh_checkComplete_arg2_2) then
    (`Known((`LH_N)))
  else
    (`Unknown));;
let rec level_lh__d2 _lh_level_arg1_1 =
  (match _lh_level_arg1_1 with
    | `Assign(_lh_level_Assign_0_1, _lh_level_Assign_1_1) -> 
      _lh_level_Assign_0_1
    | _ -> 
      (failwith "error"));;
let rec earliestInconsistency_lh__d1 _lh_earliestInconsistency_arg1_2 _lh_earliestInconsistency_arg2_2 =
  (match _lh_earliestInconsistency_arg1_2 with
    | `CSP(_lh_earliestInconsistency_CSP_0_2, _lh_earliestInconsistency_CSP_1_2, _lh_earliestInconsistency_CSP_2_2) -> 
      (match _lh_earliestInconsistency_arg2_2 with
        | `LH_N -> 
          (fun _lh_bt_arg1_9 s_1_0 -> 
            ((checkComplete_lh__d1 _lh_bt_arg1_9) s_1_0))
        | `LH_C(_lh_earliestInconsistency_LH_C_0_4, _lh_earliestInconsistency_LH_C_1_4) -> 
          (let rec _lh_matchIdent_7 = ((filter_lh__d1 (fun _lh_funcomp_x_7 -> 
            (not ((_lh_earliestInconsistency_CSP_2_2 _lh_earliestInconsistency_LH_C_0_4) _lh_funcomp_x_7)))) (reverse_lh__d1 _lh_earliestInconsistency_LH_C_1_4)) in
            (match _lh_matchIdent_7 with
              | `LH_N -> 
                (fun _lh_bt_arg1_1_0 s_1_1 -> 
                  ((checkComplete_lh__d1 _lh_bt_arg1_1_0) s_1_1))
              | `LH_C(_lh_earliestInconsistency_LH_C_0_5, _lh_earliestInconsistency_LH_C_1_5) -> 
                (let rec _lh_bt_Just_0_2 = (let rec _lh_bt_LH_P2_1_2 = (level_lh__d2 _lh_earliestInconsistency_LH_C_0_5) in
                  (let rec _lh_bt_LH_P2_0_2 = (level_lh__d1 _lh_earliestInconsistency_LH_C_0_4) in
                    (`Known((`LH_C(_lh_bt_LH_P2_0_2, (`LH_C(_lh_bt_LH_P2_1_2, (`LH_N))))))))) in
                  (fun _lh_bt_arg1_1_1 s_1_2 -> 
                    _lh_bt_Just_0_2))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec bt_lh__d1 _lh_bt_arg1_5 =
  (let rec f_1_9 = (fun s_6 -> 
    (`LH_P2(s_6, (let rec _lh_matchIdent_5 = ((earliestInconsistency_lh__d1 _lh_bt_arg1_5) s_6) in
      ((_lh_matchIdent_5 _lh_bt_arg1_5) s_6))))) in
    (mapTree_lh__d2 f_1_9));;
let rec head_lh__d2 ls_4 =
  (match ls_4 with
    | `LH_C(h_5, t_5) -> 
      h_5
    | `LH_N -> 
      (failwith "error"));;
let rec knownConflict_lh__d1 _lh_knownConflict_arg1_0 =
  (match _lh_knownConflict_arg1_0 with
    | `Known(_lh_knownConflict_Known_0_0) -> 
      (match _lh_knownConflict_Known_0_0 with
        | `LH_C(_lh_knownConflict_LH_C_0_0, _lh_knownConflict_LH_C_1_0) -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec maxLevel_lh__d4 _lh_maxLevel_arg1_3 =
  (match _lh_maxLevel_arg1_3 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_3, _lh_maxLevel_LH_C_1_3) -> 
      (match _lh_maxLevel_LH_C_0_3 with
        | `Assign(_lh_maxLevel_Assign_0_3, _lh_maxLevel_Assign_1_3) -> 
          _lh_maxLevel_Assign_0_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec complete_lh__d4 _lh_complete_arg1_2 _lh_complete_arg2_2 =
  (match _lh_complete_arg1_2 with
    | `CSP(_lh_complete_CSP_0_2, _lh_complete_CSP_1_2, _lh_complete_CSP_2_2) -> 
      ((maxLevel_lh__d4 _lh_complete_arg2_2) = _lh_complete_CSP_0_2)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d4 _lh_checkComplete_arg1_3 _lh_checkComplete_arg2_3 =
  (if ((complete_lh__d4 _lh_checkComplete_arg1_3) _lh_checkComplete_arg2_3) then
    (`Known((`LH_N)))
  else
    (`Unknown));;
let rec filter_lh__d3 f_3 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (if (f_3 h_0) then
        (`LH_C(h_0, ((filter_lh__d3 f_3) t_0)))
      else
        ((filter_lh__d3 f_3) t_0))
    | `LH_N -> 
      (`LH_N));;
let rec nubBy_lh__d1 _lh_nubBy_arg1_0 _lh_nubBy_arg2_0 =
  (match _lh_nubBy_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nubBy_LH_C_0_0, _lh_nubBy_LH_C_1_0) -> 
      (`LH_C(_lh_nubBy_LH_C_0_0, ((nubBy_lh__d1 _lh_nubBy_arg1_0) ((filter_lh__d3 (fun y_0 -> 
        (not ((_lh_nubBy_arg1_0 _lh_nubBy_LH_C_0_0) y_0)))) _lh_nubBy_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec foldl_lh__d1 f_7 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_3, t_3) -> 
      (((foldl_lh__d1 f_7) ((f_7 i_0) h_3)) t_3)
    | `LH_N -> 
      i_0);;
let rec mappend_lh__d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d1 t_4) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec flip_lh__d1 _lh_flip_arg1_0 _lh_flip_arg2_0 _lh_flip_arg3_0 =
  ((_lh_flip_arg1_0 _lh_flip_arg3_0) _lh_flip_arg2_0);;
let rec deleteBy_lh__d1 _lh_deleteBy_arg1_0 _lh_deleteBy_arg2_0 _lh_deleteBy_arg3_0 =
  (match _lh_deleteBy_arg3_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_deleteBy_LH_C_0_0, _lh_deleteBy_LH_C_1_0) -> 
      (if ((_lh_deleteBy_arg1_0 _lh_deleteBy_arg2_0) _lh_deleteBy_LH_C_0_0) then
        _lh_deleteBy_LH_C_1_0
      else
        (`LH_C(_lh_deleteBy_LH_C_0_0, (((deleteBy_lh__d1 _lh_deleteBy_arg1_0) _lh_deleteBy_arg2_0) _lh_deleteBy_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec unionBy_lh__d1 _lh_unionBy_arg1_0 _lh_unionBy_arg2_0 _lh_unionBy_arg3_0 =
  ((mappend_lh__d1 _lh_unionBy_arg2_0) (((foldl_lh__d1 (flip_lh__d1 (deleteBy_lh__d1 _lh_unionBy_arg1_0))) ((nubBy_lh__d1 _lh_unionBy_arg1_0) _lh_unionBy_arg3_0)) _lh_unionBy_arg2_0));;
let rec union_lh__d2 _lh_union_arg1_1 _lh_union_arg2_1 =
  (((unionBy_lh__d1 (fun a_1_2 b_1_0 -> 
    (a_1_2 = b_1_0))) _lh_union_arg1_1) _lh_union_arg2_1);;
let rec collect_lh__d1 _lh_collect_arg1_0 =
  (match _lh_collect_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_collect_LH_C_0_0, _lh_collect_LH_C_1_0) -> 
      (match _lh_collect_LH_C_0_0 with
        | `Known(_lh_collect_Known_0_0) -> 
          ((union_lh__d2 _lh_collect_Known_0_0) (collect_lh__d1 _lh_collect_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec value_lh__d2 _lh_value_arg1_1 =
  (match _lh_value_arg1_1 with
    | `Assign(_lh_value_Assign_0_1, _lh_value_Assign_1_1) -> 
      _lh_value_Assign_1_1
    | _ -> 
      (failwith "error"));;
let rec all_lh__d1 _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh__d1 _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec head_lh__d3 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_4, t_2_4) -> 
      h_2_4
    | `LH_N -> 
      (failwith "error"));;
let rec null_lh__d1 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d7 a_8 b_6 =
  (if (a_8 <= b_6) then
    (let rec _lh_listcomp_fun_ls_t_7 = ((enumFromTo_lh__d7 (a_8 + 1)) b_6) in
      (let rec _lh_listcomp_fun_ls_h_4 = a_8 in
        (fun _lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_2_0 -> 
          (let rec ty_1 = (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_7) in
            (let rec hy_1 = (let rec _lh_fillTable_LH_P2_1_0 = _lh_listcomp_fun_ls_h_4 in
              (let rec _lh_fillTable_LH_P2_0_0 = _lh_listcomp_fun_ls_h_5 in
                (fun _lh_fillTable_Assign_0_2 _lh_fillTable_Assign_1_2 _lh_fillTable_CSP_2_2 cs_4 -> 
                  (if ((cs_4 = (`Unknown)) && (not ((_lh_fillTable_CSP_2_2 (`Assign(_lh_fillTable_Assign_0_2, _lh_fillTable_Assign_1_2))) (`Assign(_lh_fillTable_LH_P2_0_0, _lh_fillTable_LH_P2_1_0))))) then
                    (`Known((`LH_C(_lh_fillTable_Assign_0_2, (`LH_C(_lh_fillTable_LH_P2_0_0, (`LH_N)))))))
                  else
                    cs_4)))) in
              (fun f_3_8 hx_8 tx_8 -> 
                (`LH_C(((f_3_8 hx_8) hy_1), (match tx_8 with
                  | `LH_C(hx_9, tx_9) -> 
                    (((ty_1 f_3_8) hx_9) tx_9)
                  | `LH_N -> 
                    (`LH_N))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_2_1 f_3_9 hx_1_0 tx_1_0 -> 
      (`LH_N)));;
let rec enumFromTo_lh__d8 a_1_1 b_9 =
  (if (a_1_1 <= b_9) then
    (let rec _lh_listcomp_fun_ls_t_1_0 = ((enumFromTo_lh__d8 (a_1_1 + 1)) b_9) in
      (let rec _lh_listcomp_fun_ls_h_1_0 = a_1_1 in
        (fun _lh_fillTable_CSP_1_5 _lh_listcomp_fun_3_0 -> 
          (let rec ty_3 = (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_1_0) in
            (let rec hy_3 = (let rec _lh_listcomp_fun_3_1 = (fun _lh_listcomp_fun_para_1_4 -> 
              ((_lh_listcomp_fun_para_1_4 _lh_listcomp_fun_ls_h_1_0) _lh_listcomp_fun_3_1)) in
              (_lh_listcomp_fun_3_1 ((enumFromTo_lh__d7 1) _lh_fillTable_CSP_1_5))) in
              (fun f_5_7 hx_1_8 tx_1_8 -> 
                (`LH_C(((f_5_7 hx_1_8) hy_3), (match tx_1_8 with
                  | `LH_C(hx_1_9, tx_1_9) -> 
                    (((ty_3 f_5_7) hx_1_9) tx_1_9)
                  | `LH_N -> 
                    (`LH_N))))))))))
  else
    (fun _lh_fillTable_CSP_1_6 _lh_listcomp_fun_3_2 f_5_8 hx_2_0 tx_2_0 -> 
      (`LH_N)));;
let rec atIndex_lh__d2 n_0 ls_2_5 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match ls_2_5 with
      | `LH_C(h_2_9, t_3_0) -> 
        (if (n_0 = 0) then
          h_2_9
        else
          ((atIndex_lh__d2 (n_0 - 1)) t_3_0))
      | `LH_N -> 
        (failwith "error")));;
let rec tail_lh__d2 ls_8 =
  (match ls_8 with
    | `LH_C(h_7, t_7) -> 
      t_7
    | `LH_N -> 
      (failwith "error"));;
let rec map_lh__d6 f_2_0 ls_9 =
  (match ls_9 with
    | `LH_C(h_8, t_8) -> 
      (let rec t_9 = ((map_lh__d6 f_2_0) t_8) in
        (let rec h_9 = (f_2_0 h_8) in
          (fun f_2_1 -> 
            (let rec t_1_0 = (t_9 f_2_1) in
              (let rec h_1_0 = (f_2_1 h_9) in
                (fun f_2_2 -> 
                  (`LH_C((f_2_2 h_1_0), (t_1_0 f_2_2)))))))))
    | `LH_N -> 
      (fun f_2_3 f_2_4 -> 
        (`LH_N)));;
let rec cacheChecks_lh__d2 _lh_cacheChecks_arg1_0 _lh_cacheChecks_arg2_0 _lh_cacheChecks_arg3_0 =
  (match _lh_cacheChecks_arg3_0 with
    | `Node(_lh_cacheChecks_Node_0_0, _lh_cacheChecks_Node_1_0) -> 
      (let rec _lh_mapTree_Node_1_1 = ((map_lh__d6 ((cacheChecks_lh__d2 _lh_cacheChecks_arg1_0) (match _lh_cacheChecks_Node_0_0 with
        | `LH_N -> 
          (tail_lh__d2 _lh_cacheChecks_arg2_0)
        | `LH_C(_lh_fillTable_LH_C_0_1, _lh_fillTable_LH_C_1_1) -> 
          (match _lh_fillTable_LH_C_0_1 with
            | `Assign(_lh_fillTable_Assign_0_1, _lh_fillTable_Assign_1_1) -> 
              (match _lh_cacheChecks_arg1_0 with
                | `CSP(_lh_fillTable_CSP_0_1, _lh_fillTable_CSP_1_3, _lh_fillTable_CSP_2_1) -> 
                  (let rec f_3_7 = (fun cs_2 varval_1 -> 
                    (let rec _lh_matchIdent_8 = varval_1 in
                      ((((_lh_matchIdent_8 _lh_fillTable_Assign_0_1) _lh_fillTable_Assign_1_1) _lh_fillTable_CSP_2_1) cs_2))) in
                    (match (tail_lh__d2 _lh_cacheChecks_arg2_0) with
                      | `LH_C(hx_6, tx_6) -> 
                        ((((let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_7 -> 
                          ((_lh_listcomp_fun_para_7 _lh_fillTable_CSP_1_3) _lh_listcomp_fun_1_7)) in
                          (_lh_listcomp_fun_1_7 ((enumFromTo_lh__d8 (_lh_fillTable_Assign_0_1 + 1)) _lh_fillTable_CSP_0_1))) (fun xs_3 ys_3 -> 
                          (match xs_3 with
                            | `LH_C(hx_7, tx_7) -> 
                              (((ys_3 f_3_7) hx_7) tx_7)
                            | `LH_N -> 
                              (`LH_N)))) hx_6) tx_6)
                      | `LH_N -> 
                        (`LH_N)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) _lh_cacheChecks_Node_1_0) in
        (let rec _lh_mapTree_Node_0_1 = (let rec _lh_f_LH_P2_1_1 = _lh_cacheChecks_arg2_0 in
          (let rec _lh_f_LH_P2_0_2 = _lh_cacheChecks_Node_0_0 in
            (fun _lh_f_arg1_6 -> 
              (match _lh_f_LH_P2_0_2 with
                | `LH_N -> 
                  (let rec _lh_f_LH_P2_1_2 = _lh_f_LH_P2_1_1 in
                    (let rec _lh_f_LH_P2_0_3 = (let rec _lh_f_LH_P2_1_3 = (`Unknown) in
                      (let rec _lh_f_LH_P2_0_4 = (`LH_N) in
                        (fun _lh_f_LH_P2_1_4 -> 
                          (let rec wipedDomains_0 = (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_8 -> 
                            (match _lh_listcomp_fun_para_8 with
                              | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_5) -> 
                                (if ((all_lh__d1 knownConflict_lh__d1) _lh_listcomp_fun_ls_h_2) then
                                  (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_5)))
                                else
                                  (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_5))
                              | `LH_N -> 
                                (`LH_N))) in
                            (_lh_listcomp_fun_1_8 _lh_f_LH_P2_1_4)) in
                            (let rec cs'_0 = (if (null_lh__d1 wipedDomains_0) then
                              _lh_f_LH_P2_1_3
                            else
                              (`Known((collect_lh__d1 (head_lh__d2 wipedDomains_0))))) in
                              (`LH_P2(_lh_f_LH_P2_0_4, cs'_0))))))) in
                      (fun _lh_dummy_0 -> 
                        (_lh_f_LH_P2_0_3 _lh_f_LH_P2_1_2))))
                | `LH_C(_lh_f_LH_C_0_0, _lh_f_LH_C_1_0) -> 
                  (let rec tableEntry_0 = ((atIndex_lh__d2 ((value_lh__d2 _lh_f_LH_C_0_0) - 1)) (head_lh__d3 _lh_f_LH_P2_1_1)) in
                    (let rec cs_3 = (if (tableEntry_0 = (`Unknown)) then
                      ((checkComplete_lh__d4 _lh_f_arg1_6) (`LH_C(_lh_f_LH_C_0_0, _lh_f_LH_C_1_0)))
                    else
                      tableEntry_0) in
                      (let rec _lh_f_LH_P2_1_5 = _lh_f_LH_P2_1_1 in
                        (let rec _lh_f_LH_P2_0_5 = (let rec _lh_f_LH_P2_1_6 = cs_3 in
                          (let rec _lh_f_LH_P2_0_6 = (`LH_C(_lh_f_LH_C_0_0, _lh_f_LH_C_1_0)) in
                            (fun _lh_f_LH_P2_1_7 -> 
                              (let rec wipedDomains_1 = (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_9 -> 
                                (match _lh_listcomp_fun_para_9 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_6) -> 
                                    (if ((all_lh__d1 knownConflict_lh__d1) _lh_listcomp_fun_ls_h_3) then
                                      (`LH_C(_lh_listcomp_fun_ls_h_3, (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_6)))
                                    else
                                      (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_6))
                                  | `LH_N -> 
                                    (`LH_N))) in
                                (_lh_listcomp_fun_1_9 _lh_f_LH_P2_1_7)) in
                                (let rec cs'_1 = (if (null_lh__d1 wipedDomains_1) then
                                  _lh_f_LH_P2_1_6
                                else
                                  (`Known((collect_lh__d1 (head_lh__d2 wipedDomains_1))))) in
                                  (`LH_P2(_lh_f_LH_P2_0_6, cs'_1))))))) in
                          (fun _lh_dummy_1 -> 
                            (_lh_f_LH_P2_0_5 _lh_f_LH_P2_1_5))))))
                | _ -> 
                  (failwith "error"))))) in
          (fun _lh_mapTree_arg1_3 -> 
            (let rec _lh_mapTree_Node_1_2 = (_lh_mapTree_Node_1_1 (fun _lh_mapTree_arg2_3 -> 
              (_lh_mapTree_arg2_3 _lh_mapTree_arg1_3))) in
              (let rec _lh_mapTree_Node_0_2 = (_lh_mapTree_arg1_3 _lh_mapTree_Node_0_1) in
                (fun _lh_mapTree_arg1_4 -> 
                  (`Node((_lh_mapTree_arg1_4 _lh_mapTree_Node_0_2), (_lh_mapTree_Node_1_2 (fun _lh_mapTree_arg2_4 -> 
                    (_lh_mapTree_arg2_4 _lh_mapTree_arg1_4)))))))))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d4 a_2 b_1 =
  (if (a_2 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d4 (a_2 + 1)) b_1) in
      (fun _lh_listcomp_fun_1 -> 
        (`LH_C((`Unknown), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_0)))))
  else
    (fun _lh_listcomp_fun_2 -> 
      (`LH_N)));;
let rec enumFromTo_lh__d3 a_1_0 b_8 =
  (if (a_1_0 <= b_8) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo_lh__d3 (a_1_0 + 1)) b_8) in
      (fun _lh_emptyTable_CSP_1_5 _lh_listcomp_fun_2_5 -> 
        (`LH_C((let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_1_1 -> 
          (_lh_listcomp_fun_para_1_1 _lh_listcomp_fun_2_6)) in
          (_lh_listcomp_fun_2_6 ((enumFromTo_lh__d4 1) _lh_emptyTable_CSP_1_5))), (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_9)))))
  else
    (fun _lh_emptyTable_CSP_1_6 _lh_listcomp_fun_2_7 -> 
      (`LH_N)));;
let rec fc_lh__d1 _lh_fc_arg1_0 _lh_funcomp_x_8 =
  ((fun _lh_funcomp_x_9 -> 
    (match _lh_fc_arg1_0 with
      | `CSP(_lh_domainWipeOut_CSP_0_1, _lh_domainWipeOut_CSP_1_1, _lh_domainWipeOut_CSP_2_1) -> 
        (let rec f_3_4 = (fun _lh_f_arg1_3 -> 
          (_lh_f_arg1_3 99)) in
          ((let rec f_3_5 = (fun _lh_f_arg1_4 _lh_f_arg2_4 -> 
            (_lh_f_arg2_4 _lh_f_arg1_4)) in
            (_lh_funcomp_x_9 (f_3_5 _lh_fc_arg1_0))) f_3_4))
      | _ -> 
        (failwith "error"))) (((cacheChecks_lh__d2 _lh_fc_arg1_0) (match _lh_fc_arg1_0 with
    | `CSP(_lh_emptyTable_CSP_0_2, _lh_emptyTable_CSP_1_4, _lh_emptyTable_CSP_2_2) -> 
      (`LH_C((`LH_N), (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_6 -> 
        ((_lh_listcomp_fun_para_6 _lh_emptyTable_CSP_1_4) _lh_listcomp_fun_1_6)) in
        (_lh_listcomp_fun_1_6 ((enumFromTo_lh__d3 1) _lh_emptyTable_CSP_0_2)))))
    | _ -> 
      (failwith "error"))) _lh_funcomp_x_8));;
let rec map_lh__d1_d4 f_4_5 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_1_9, t_1_9) -> 
      (`LH_C((f_4_5 h_1_9), ((map_lh__d1_d4 f_4_5) t_1_9)))
    | `LH_N -> 
      (`LH_N));;
let rec foldTree_lh__d2 _lh_foldTree_arg1_1 _lh_foldTree_arg2_1 =
  (match _lh_foldTree_arg2_1 with
    | `Node(_lh_foldTree_Node_0_0, _lh_foldTree_Node_1_0) -> 
      ((_lh_foldTree_arg1_1 _lh_foldTree_Node_0_0) ((map_lh__d1_d4 (foldTree_lh__d2 _lh_foldTree_arg1_1)) _lh_foldTree_Node_1_0))
    | _ -> 
      (failwith "error"));;
let rec label_lh__d2 _lh_label_arg1_0 =
  (match _lh_label_arg1_0 with
    | `Node(_lh_label_Node_0_0, _lh_label_Node_1_0) -> 
      _lh_label_Node_0_0
    | _ -> 
      (failwith "error"));;
let rec filterTree_lh__d1 _lh_filterTree_arg1_0 =
  (let rec f_2 = (fun a_1 cs_1 -> 
    (`Node(a_1, ((filter_lh__d3 (fun _lh_funcomp_x_1 -> 
      (_lh_filterTree_arg1_0 (label_lh__d2 _lh_funcomp_x_1)))) cs_1)))) in
    (foldTree_lh__d2 f_2));;
let rec prune_lh__d1 _lh_prune_arg1_0 =
  (filterTree_lh__d1 (fun _lh_funcomp_x_0 -> 
    (not (_lh_prune_arg1_0 _lh_funcomp_x_0))));;
let rec snd_lh__d2 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec fst_lh__d2 _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec maxLevel_lh__d3 _lh_maxLevel_arg1_1 =
  (match _lh_maxLevel_arg1_1 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_1, _lh_maxLevel_LH_C_1_1) -> 
      (match _lh_maxLevel_LH_C_0_1 with
        | `Assign(_lh_maxLevel_Assign_0_1, _lh_maxLevel_Assign_1_1) -> 
          _lh_maxLevel_Assign_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d9 a_6 b_4 =
  (if (a_6 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_lh__d9 (a_6 + 1)) b_4) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_6 in
        (fun _lh_listcomp_fun_1_0 ss_1 -> 
          (`LH_C((`LH_C((`Assign(((maxLevel_lh__d3 ss_1) + 1), _lh_listcomp_fun_ls_h_1)), ss_1)), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_3))))))
  else
    (fun _lh_listcomp_fun_1_1 ss_2 -> 
      (`LH_N)));;
let rec initTree_lh__d1 _lh_initTree_arg1_0 _lh_initTree_arg2_0 =
  (`Node(_lh_initTree_arg2_0, ((map_lh__d1_d4 (initTree_lh__d1 _lh_initTree_arg1_0)) (_lh_initTree_arg1_0 _lh_initTree_arg2_0))));;
let rec knownSolution_lh__d1 _lh_knownSolution_arg1_0 =
  (match _lh_knownSolution_arg1_0 with
    | `Known(_lh_knownSolution_Known_0_0) -> 
      (match _lh_knownSolution_Known_0_0 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec knownConflict_lh__d2 _lh_knownConflict_arg1_1 =
  (match _lh_knownConflict_arg1_1 with
    | `Known(_lh_knownConflict_Known_0_1) -> 
      (match _lh_knownConflict_Known_0_1 with
        | `LH_C(_lh_knownConflict_LH_C_0_1, _lh_knownConflict_LH_C_1_1) -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec snd_lh__d1 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_2_6, t_2_6) -> 
      ((mappend_lh__d1 h_2_6) (concat_lh__d1 t_2_6))
    | `LH_N -> 
      (`LH_N));;
let rec leaves_lh__d1 _lh_leaves_arg1_0 =
  (match _lh_leaves_arg1_0 with
    | `Node(_lh_leaves_Node_0_0, _lh_leaves_Node_1_0) -> 
      (match _lh_leaves_Node_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_leaves_Node_0_0, (`LH_N)))
        | _ -> 
          (concat_lh__d1 ((map_lh__d1_d4 leaves_lh__d1) _lh_leaves_Node_1_0)))
    | _ -> 
      (failwith "error"));;
let rec filter_lh__d2 f_6_1 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_7, t_2_7) -> 
      (if (f_6_1 h_2_7) then
        (let rec t_2_8 = ((filter_lh__d2 f_6_1) t_2_7) in
          (let rec h_2_8 = h_2_7 in
            (fun f_6_2 -> 
              (let rec t_2_9 = (t_2_8 f_6_2) in
                (fun _lh_dummy_2 -> 
                  (1 + (t_2_9 99)))))))
      else
        ((filter_lh__d2 f_6_1) t_2_7))
    | `LH_N -> 
      (fun f_6_3 _lh_dummy_3 -> 
        0));;
let rec search_lh__d1 _lh_search_arg1_0 _lh_search_arg2_0 =
  ((fun _lh_funcomp_x_1_0 -> 
    ((fun _lh_funcomp_x_1_1 -> 
      ((fun _lh_funcomp_x_1_2 -> 
        ((fun _lh_funcomp_x_1_3 -> 
          ((fun _lh_funcomp_x_1_4 -> 
            (((filter_lh__d2 (fun _lh_funcomp_x_1_5 -> 
              (knownSolution_lh__d1 (snd_lh__d1 _lh_funcomp_x_1_5)))) _lh_funcomp_x_1_4) fst_lh__d2)) (leaves_lh__d1 _lh_funcomp_x_1_3))) ((prune_lh__d1 (fun _lh_funcomp_x_1_6 -> 
          (knownConflict_lh__d2 (snd_lh__d2 _lh_funcomp_x_1_6)))) _lh_funcomp_x_1_2))) ((_lh_search_arg1_0 _lh_search_arg2_0) _lh_funcomp_x_1_1))) (match _lh_funcomp_x_1_0 with
      | `CSP(_lh_mkTree_CSP_0_1, _lh_mkTree_CSP_1_1, _lh_mkTree_CSP_2_1) -> 
        (let rec next_1 = (fun ss_3 -> 
          (if ((maxLevel_lh__d4 ss_3) < _lh_mkTree_CSP_0_1) then
            (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_1_0 -> 
              ((_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_2_4) ss_3)) in
              (_lh_listcomp_fun_2_4 ((enumFromTo_lh__d9 1) _lh_mkTree_CSP_1_1)))
          else
            (`LH_N))) in
          ((initTree_lh__d1 next_1) (`LH_N)))
      | _ -> 
        (failwith "error")))) _lh_search_arg2_0);;
let rec abs_lh__d2 _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 > 0) then
    _lh_abs_arg1_0
  else
    (0 - _lh_abs_arg1_0));;
let rec abs_lh__d1 _lh_abs_arg1_1 =
  (if (_lh_abs_arg1_1 > 0) then
    _lh_abs_arg1_1
  else
    (0 - _lh_abs_arg1_1));;
let rec safe_lh__d1 _lh_safe_arg1_0 _lh_safe_arg2_0 =
  (match _lh_safe_arg1_0 with
    | `Assign(_lh_safe_Assign_0_0, _lh_safe_Assign_1_0) -> 
      (match _lh_safe_arg2_0 with
        | `Assign(_lh_safe_Assign_0_1, _lh_safe_Assign_1_1) -> 
          ((_lh_safe_Assign_1_0 <> _lh_safe_Assign_1_1) && ((abs_lh__d1 (_lh_safe_Assign_0_0 - _lh_safe_Assign_0_1)) <> (abs_lh__d2 (_lh_safe_Assign_1_0 - _lh_safe_Assign_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec queens_lh__d1 _lh_queens_arg1_0 =
  (`CSP(_lh_queens_arg1_0, _lh_queens_arg1_0, safe_lh__d1));;
let rec try_lh__d1 _lh_try_arg1_0 _lh_try_arg2_0 =
  (((search_lh__d1 _lh_try_arg2_0) (queens_lh__d1 _lh_try_arg1_0)) 99);;
let rec level_lh__d4 _lh_level_arg1_0 =
  (match _lh_level_arg1_0 with
    | `Assign(_lh_level_Assign_0_0, _lh_level_Assign_1_0) -> 
      _lh_level_Assign_0_0
    | _ -> 
      (failwith "error"));;
let rec level_lh__d3 _lh_level_arg1_2 =
  (match _lh_level_arg1_2 with
    | `Assign(_lh_level_Assign_0_2, _lh_level_Assign_1_2) -> 
      _lh_level_Assign_0_2
    | _ -> 
      (failwith "error"));;
let rec complete_lh__d2 _lh_complete_arg1_3 _lh_complete_arg2_3 =
  (match _lh_complete_arg1_3 with
    | `CSP(_lh_complete_CSP_0_3, _lh_complete_CSP_1_3, _lh_complete_CSP_2_3) -> 
      ((maxLevel_lh__d4 _lh_complete_arg2_3) = _lh_complete_CSP_0_3)
    | _ -> 
      (failwith "error"));;
let rec maxLevel_lh__d1 _lh_maxLevel_arg1_0 =
  (match _lh_maxLevel_arg1_0 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_0, _lh_maxLevel_LH_C_1_0) -> 
      (match _lh_maxLevel_LH_C_0_0 with
        | `Assign(_lh_maxLevel_Assign_0_0, _lh_maxLevel_Assign_1_0) -> 
          _lh_maxLevel_Assign_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec notElem_lh__d1 _lh_notElem_arg1_0 _lh_notElem_arg2_0 =
  (match _lh_notElem_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_notElem_LH_C_0_0, _lh_notElem_LH_C_1_0) -> 
      (if (_lh_notElem_arg1_0 = _lh_notElem_LH_C_0_0) then
        false
      else
        ((notElem_lh__d1 _lh_notElem_arg1_0) _lh_notElem_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec union_lh__d1 _lh_union_arg1_0 _lh_union_arg2_0 =
  (((unionBy_lh__d1 (fun a_0 b_0 -> 
    (a_0 = b_0))) _lh_union_arg1_0) _lh_union_arg2_0);;
let rec map_lh__d2 f_2_6 ls_1_1 _lh_popOutId_0_0 =
  (match ls_1_1 with
    | `LH_C(h_1_1, t_1_1) -> 
      (let rec _lh_combine_LH_C_1_0 = ((map_lh__d2 f_2_6) t_1_1) in
        (let rec _lh_combine_LH_C_0_0 = (f_2_6 h_1_1) in
          (match _lh_combine_LH_C_0_0 with
            | `LH_P2(_lh_combine_LH_P2_0_0, _lh_combine_LH_P2_1_0) -> 
              (match _lh_combine_LH_P2_1_0 with
                | `Known(_lh_combine_Known_0_0) -> 
                  (if ((notElem_lh__d1 (maxLevel_lh__d1 _lh_combine_LH_P2_0_0)) _lh_combine_Known_0_0) then
                    _lh_combine_Known_0_0
                  else
                    (_lh_combine_LH_C_1_0 ((union_lh__d1 _lh_combine_Known_0_0) _lh_popOutId_0_0)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
    | `LH_N -> 
      _lh_popOutId_0_0);;
let rec label_lh__d1 _lh_label_arg1_1 =
  (match _lh_label_arg1_1 with
    | `Node(_lh_label_Node_0_1, _lh_label_Node_1_1) -> 
      _lh_label_Node_0_1
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d2 _lh_checkComplete_arg1_4 _lh_checkComplete_arg2_4 =
  (if ((complete_lh__d2 _lh_checkComplete_arg1_4) _lh_checkComplete_arg2_4) then
    (let rec _lh_f_Known_0_2 = (`LH_N) in
      (fun _lh_f_LH_P2_0_8 _lh_f_arg2_7 -> 
        (`Node((`LH_P2(_lh_f_LH_P2_0_8, (`Known(_lh_f_Known_0_2)))), _lh_f_arg2_7))))
  else
    (fun _lh_f_LH_P2_0_9 _lh_f_arg2_8 -> 
      (`Node((`LH_P2(_lh_f_LH_P2_0_9, (`Known((((map_lh__d2 label_lh__d1) _lh_f_arg2_8) (`LH_N)))))), _lh_f_arg2_8))));;
let rec reverse_lh__d2 ls_2_6 =
  ((reverse_helper_lh__d1 ls_2_6) (`LH_N));;
let rec earliestInconsistency_lh__d2 _lh_earliestInconsistency_arg1_0 _lh_earliestInconsistency_arg2_0 =
  (match _lh_earliestInconsistency_arg1_0 with
    | `CSP(_lh_earliestInconsistency_CSP_0_0, _lh_earliestInconsistency_CSP_1_0, _lh_earliestInconsistency_CSP_2_0) -> 
      (match _lh_earliestInconsistency_arg2_0 with
        | `LH_N -> 
          (fun _lh_bt_arg1_0 s_0 -> 
            ((checkComplete_lh__d2 _lh_bt_arg1_0) s_0))
        | `LH_C(_lh_earliestInconsistency_LH_C_0_0, _lh_earliestInconsistency_LH_C_1_0) -> 
          (let rec _lh_matchIdent_1 = ((filter_lh__d3 (fun _lh_funcomp_x_2 -> 
            (not ((_lh_earliestInconsistency_CSP_2_0 _lh_earliestInconsistency_LH_C_0_0) _lh_funcomp_x_2)))) (reverse_lh__d2 _lh_earliestInconsistency_LH_C_1_0)) in
            (match _lh_matchIdent_1 with
              | `LH_N -> 
                (fun _lh_bt_arg1_1 s_1 -> 
                  ((checkComplete_lh__d2 _lh_bt_arg1_1) s_1))
              | `LH_C(_lh_earliestInconsistency_LH_C_0_1, _lh_earliestInconsistency_LH_C_1_1) -> 
                (let rec _lh_bt_Just_0_0 = (let rec _lh_bt_LH_P2_1_0 = (level_lh__d4 _lh_earliestInconsistency_LH_C_0_1) in
                  (let rec _lh_bt_LH_P2_0_0 = (level_lh__d3 _lh_earliestInconsistency_LH_C_0_0) in
                    (let rec _lh_f_Known_0_0 = (`LH_C(_lh_bt_LH_P2_0_0, (`LH_C(_lh_bt_LH_P2_1_0, (`LH_N))))) in
                      (fun _lh_f_LH_P2_0_0 _lh_f_arg2_0 -> 
                        (`Node((`LH_P2(_lh_f_LH_P2_0_0, (`Known(_lh_f_Known_0_0)))), _lh_f_arg2_0)))))) in
                  (fun _lh_bt_arg1_2 s_2 -> 
                    _lh_bt_Just_0_0))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d9 f_4 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (let rec t_2 = ((map_lh__d9 f_4) t_1) in
        (let rec h_2 = (f_4 h_1) in
          (fun f_5 -> 
            (`LH_C((f_5 h_2), (t_2 f_5))))))
    | `LH_N -> 
      (fun f_6 -> 
        (`LH_N)));;
let rec mapTree_lh__d3 _lh_mapTree_arg1_2 _lh_mapTree_arg2_2 =
  (match _lh_mapTree_arg2_2 with
    | `Node(_lh_mapTree_Node_0_0, _lh_mapTree_Node_1_0) -> 
      (let rec _lh_foldTree_Node_1_1 = ((map_lh__d9 (mapTree_lh__d3 _lh_mapTree_arg1_2)) _lh_mapTree_Node_1_0) in
        (let rec _lh_foldTree_Node_0_1 = (_lh_mapTree_arg1_2 _lh_mapTree_Node_0_0) in
          (fun _lh_foldTree_arg1_2 -> 
            ((_lh_foldTree_arg1_2 _lh_foldTree_Node_0_1) (_lh_foldTree_Node_1_1 (fun _lh_foldTree_arg2_3 -> 
              (_lh_foldTree_arg2_3 _lh_foldTree_arg1_2)))))))
    | _ -> 
      (failwith "error"));;
let rec bjbt_lh__d1 _lh_bjbt_arg1_0 _lh_funcomp_x_1_7 =
  (let rec f_5_3 = (fun _lh_f_arg1_9 _lh_f_arg2_9 -> 
    (_lh_f_arg1_9 _lh_f_arg2_9)) in
    ((let rec f_5_4 = (fun s_1_3 -> 
      (let rec _lh_f_LH_P2_1_1_0 = (let rec _lh_matchIdent_1_0 = ((earliestInconsistency_lh__d2 _lh_bjbt_arg1_0) s_1_3) in
        ((_lh_matchIdent_1_0 _lh_bjbt_arg1_0) s_1_3)) in
        (let rec _lh_f_LH_P2_0_1_1 = s_1_3 in
          (fun _lh_f_arg2_1_0 -> 
            ((_lh_f_LH_P2_1_1_0 _lh_f_LH_P2_0_1_1) _lh_f_arg2_1_0))))) in
      ((mapTree_lh__d3 f_5_4) _lh_funcomp_x_1_7)) f_5_3));;
let rec mapTree_lh__d7 _lh_mapTree_arg1_6 _lh_mapTree_arg2_6 =
  (match _lh_mapTree_arg2_6 with
    | `Node(_lh_mapTree_Node_0_3, _lh_mapTree_Node_1_3) -> 
      (`Node((_lh_mapTree_arg1_6 _lh_mapTree_Node_0_3), ((map_lh__d1_d4 (mapTree_lh__d7 _lh_mapTree_arg1_6)) _lh_mapTree_Node_1_3)))
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d5 _lh_checkComplete_arg1_1 _lh_checkComplete_arg2_1 =
  (if ((complete_lh__d4 _lh_checkComplete_arg1_1) _lh_checkComplete_arg2_1) then
    (`Known((`LH_N)))
  else
    (`Unknown));;
let rec earliestInconsistency_lh__d3 _lh_earliestInconsistency_arg1_1 _lh_earliestInconsistency_arg2_1 =
  (match _lh_earliestInconsistency_arg1_1 with
    | `CSP(_lh_earliestInconsistency_CSP_0_1, _lh_earliestInconsistency_CSP_1_1, _lh_earliestInconsistency_CSP_2_1) -> 
      (match _lh_earliestInconsistency_arg2_1 with
        | `LH_N -> 
          (fun _lh_bt_arg1_6 s_7 -> 
            ((checkComplete_lh__d5 _lh_bt_arg1_6) s_7))
        | `LH_C(_lh_earliestInconsistency_LH_C_0_2, _lh_earliestInconsistency_LH_C_1_2) -> 
          (let rec _lh_matchIdent_6 = ((filter_lh__d3 (fun _lh_funcomp_x_6 -> 
            (not ((_lh_earliestInconsistency_CSP_2_1 _lh_earliestInconsistency_LH_C_0_2) _lh_funcomp_x_6)))) (reverse_lh__d2 _lh_earliestInconsistency_LH_C_1_2)) in
            (match _lh_matchIdent_6 with
              | `LH_N -> 
                (fun _lh_bt_arg1_7 s_8 -> 
                  ((checkComplete_lh__d5 _lh_bt_arg1_7) s_8))
              | `LH_C(_lh_earliestInconsistency_LH_C_0_3, _lh_earliestInconsistency_LH_C_1_3) -> 
                (let rec _lh_bt_Just_0_1 = (let rec _lh_bt_LH_P2_1_1 = (level_lh__d4 _lh_earliestInconsistency_LH_C_0_3) in
                  (let rec _lh_bt_LH_P2_0_1 = (level_lh__d4 _lh_earliestInconsistency_LH_C_0_2) in
                    (`Known((`LH_C(_lh_bt_LH_P2_0_1, (`LH_C(_lh_bt_LH_P2_1_1, (`LH_N))))))))) in
                  (fun _lh_bt_arg1_8 s_9 -> 
                    _lh_bt_Just_0_1))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d8 f_6_6 ls_2_8 _lh_popOutId_0_1 =
  (match ls_2_8 with
    | `LH_C(h_3_1, t_3_2) -> 
      (let rec _lh_combine_LH_C_1_1 = ((map_lh__d8 f_6_6) t_3_2) in
        (let rec _lh_combine_LH_C_0_1 = (f_6_6 h_3_1) in
          (match _lh_combine_LH_C_0_1 with
            | `LH_P2(_lh_combine_LH_P2_0_1, _lh_combine_LH_P2_1_1) -> 
              (match _lh_combine_LH_P2_1_1 with
                | `Known(_lh_combine_Known_0_1) -> 
                  (if ((notElem_lh__d1 (maxLevel_lh__d4 _lh_combine_LH_P2_0_1)) _lh_combine_Known_0_1) then
                    _lh_combine_Known_0_1
                  else
                    (_lh_combine_LH_C_1_1 ((union_lh__d2 _lh_combine_Known_0_1) _lh_popOutId_0_1)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
    | `LH_N -> 
      _lh_popOutId_0_1);;
let rec knownConflict_lh__d3 _lh_knownConflict_arg1_2 =
  (match _lh_knownConflict_arg1_2 with
    | `Known(_lh_knownConflict_Known_0_2) -> 
      (match _lh_knownConflict_Known_0_2 with
        | `LH_C(_lh_knownConflict_LH_C_0_2, _lh_knownConflict_LH_C_1_2) -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec bj'_lh__d1 _lh_bj'_arg1_0 =
  (let rec f_4_4 = (fun _lh_f_arg1_7 _lh_f_arg2_6 -> 
    (match _lh_f_arg1_7 with
      | `LH_P2(_lh_f_LH_P2_0_7, _lh_f_LH_P2_1_8) -> 
        (match _lh_f_LH_P2_1_8 with
          | `Known(_lh_f_Known_0_1) -> 
            (`Node((`LH_P2(_lh_f_LH_P2_0_7, (`Known(_lh_f_Known_0_1)))), _lh_f_arg2_6))
          | `Unknown -> 
            (let rec cs'_2 = (`Known((((map_lh__d8 label_lh__d2) _lh_f_arg2_6) (`LH_N)))) in
              (if (knownConflict_lh__d3 cs'_2) then
                (`Node((`LH_P2(_lh_f_LH_P2_0_7, cs'_2)), (`LH_N)))
              else
                (`Node((`LH_P2(_lh_f_LH_P2_0_7, cs'_2)), _lh_f_arg2_6))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))) in
    (foldTree_lh__d2 f_4_4));;
let rec bjbt'_lh__d1 _lh_bjbt'_arg1_0 _lh_funcomp_x_3 =
  ((bj'_lh__d1 _lh_bjbt'_arg1_0) (let rec f_1_1 = (fun s_4 -> 
    (`LH_P2(s_4, (let rec _lh_matchIdent_3 = ((earliestInconsistency_lh__d3 _lh_bjbt'_arg1_0) s_4) in
      ((_lh_matchIdent_3 _lh_bjbt'_arg1_0) s_4))))) in
    ((mapTree_lh__d7 f_1_1) _lh_funcomp_x_3)));;
let rec fst_lh__d1 _lh_fst_arg1_1 =
  _lh_fst_arg1_1;;
let rec value_lh__d1 _lh_value_arg1_0 =
  (match _lh_value_arg1_0 with
    | `Assign(_lh_value_Assign_0_0, _lh_value_Assign_1_0) -> 
      _lh_value_Assign_1_0
    | _ -> 
      (failwith "error"));;
let rec tail_lh__d1 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_1_7, t_1_7) -> 
      t_1_7
    | `LH_N -> 
      (failwith "error"));;
let rec map_lh__d3 f_4_6 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_2_0, t_2_0) -> 
      (let rec t_2_1 = ((map_lh__d3 f_4_6) t_2_0) in
        (let rec h_2_1 = (f_4_6 h_2_0) in
          (fun f_4_7 -> 
            (let rec t_2_2 = (t_2_1 f_4_7) in
              (let rec h_2_2 = (f_4_7 h_2_1) in
                (fun f_4_8 -> 
                  (`LH_C((f_4_8 h_2_2), (t_2_2 f_4_8)))))))))
    | `LH_N -> 
      (fun f_4_9 f_5_0 -> 
        (`LH_N)));;
let rec head_lh__d1 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_5, t_2_5) -> 
      h_2_5
    | `LH_N -> 
      (failwith "error"));;
let rec atIndex_lh__d1 n_1 ls_2_7 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match ls_2_7 with
      | `LH_C(h_3_0, t_3_1) -> 
        (if (n_1 = 0) then
          h_3_0
        else
          ((atIndex_lh__d1 (n_1 - 1)) t_3_1))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo_lh__d5 a_9 b_7 =
  (if (a_9 <= b_7) then
    (let rec _lh_listcomp_fun_ls_t_8 = ((enumFromTo_lh__d5 (a_9 + 1)) b_7) in
      (let rec _lh_listcomp_fun_ls_h_7 = a_9 in
        (fun _lh_listcomp_fun_ls_h_8 _lh_listcomp_fun_2_2 -> 
          (let rec ty_2 = (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_8) in
            (let rec hy_2 = (let rec _lh_fillTable_LH_P2_1_1 = _lh_listcomp_fun_ls_h_7 in
              (let rec _lh_fillTable_LH_P2_0_1 = _lh_listcomp_fun_ls_h_8 in
                (fun _lh_fillTable_Assign_0_3 _lh_fillTable_Assign_1_3 _lh_fillTable_CSP_2_3 cs_5 -> 
                  (if ((cs_5 = (`Unknown)) && (not ((_lh_fillTable_CSP_2_3 (`Assign(_lh_fillTable_Assign_0_3, _lh_fillTable_Assign_1_3))) (`Assign(_lh_fillTable_LH_P2_0_1, _lh_fillTable_LH_P2_1_1))))) then
                    (`Known((`LH_C(_lh_fillTable_Assign_0_3, (`LH_C(_lh_fillTable_LH_P2_0_1, (`LH_N)))))))
                  else
                    cs_5)))) in
              (fun f_4_0 hx_1_1 tx_1_1 -> 
                (`LH_C(((f_4_0 hx_1_1) hy_2), (match tx_1_1 with
                  | `LH_C(hx_1_2, tx_1_2) -> 
                    (((ty_2 f_4_0) hx_1_2) tx_1_2)
                  | `LH_N -> 
                    (`LH_N))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_9 _lh_listcomp_fun_2_3 f_4_1 hx_1_3 tx_1_3 -> 
      (`LH_N)));;
let rec enumFromTo_lh__d6 a_3 b_2 =
  (if (a_3 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo_lh__d6 (a_3 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_3 in
        (fun _lh_fillTable_CSP_1_1 _lh_listcomp_fun_4 -> 
          (let rec ty_0 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_1) in
            (let rec hy_0 = (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_2 -> 
              ((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_5)) in
              (_lh_listcomp_fun_5 ((enumFromTo_lh__d5 1) _lh_fillTable_CSP_1_1))) in
              (fun f_1_3 hx_2 tx_2 -> 
                (`LH_C(((f_1_3 hx_2) hy_0), (match tx_2 with
                  | `LH_C(hx_3, tx_3) -> 
                    (((ty_0 f_1_3) hx_3) tx_3)
                  | `LH_N -> 
                    (`LH_N))))))))))
  else
    (fun _lh_fillTable_CSP_1_2 _lh_listcomp_fun_6 f_1_4 hx_4 tx_4 -> 
      (`LH_N)));;
let rec complete_lh__d3 _lh_complete_arg1_1 _lh_complete_arg2_1 =
  (match _lh_complete_arg1_1 with
    | `CSP(_lh_complete_CSP_0_1, _lh_complete_CSP_1_1, _lh_complete_CSP_2_1) -> 
      ((maxLevel_lh__d4 _lh_complete_arg2_1) = _lh_complete_CSP_0_1)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d3 _lh_checkComplete_arg1_0 _lh_checkComplete_arg2_0 =
  (if ((complete_lh__d3 _lh_checkComplete_arg1_0) _lh_checkComplete_arg2_0) then
    (`Known((`LH_N)))
  else
    (`Unknown));;
let rec cacheChecks_lh__d1 _lh_cacheChecks_arg1_1 _lh_cacheChecks_arg2_1 _lh_cacheChecks_arg3_1 =
  (match _lh_cacheChecks_arg3_1 with
    | `Node(_lh_cacheChecks_Node_0_1, _lh_cacheChecks_Node_1_1) -> 
      (let rec _lh_mapTree_Node_1_4 = ((map_lh__d3 ((cacheChecks_lh__d1 _lh_cacheChecks_arg1_1) (match _lh_cacheChecks_Node_0_1 with
        | `LH_N -> 
          (tail_lh__d1 _lh_cacheChecks_arg2_1)
        | `LH_C(_lh_fillTable_LH_C_0_2, _lh_fillTable_LH_C_1_2) -> 
          (match _lh_fillTable_LH_C_0_2 with
            | `Assign(_lh_fillTable_Assign_0_4, _lh_fillTable_Assign_1_4) -> 
              (match _lh_cacheChecks_arg1_1 with
                | `CSP(_lh_fillTable_CSP_0_2, _lh_fillTable_CSP_1_4, _lh_fillTable_CSP_2_4) -> 
                  (let rec f_5_2 = (fun cs_6 varval_2 -> 
                    (let rec _lh_matchIdent_9 = varval_2 in
                      ((((_lh_matchIdent_9 _lh_fillTable_Assign_0_4) _lh_fillTable_Assign_1_4) _lh_fillTable_CSP_2_4) cs_6))) in
                    (match (tail_lh__d1 _lh_cacheChecks_arg2_1) with
                      | `LH_C(hx_1_5, tx_1_5) -> 
                        ((((let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_1_2 -> 
                          ((_lh_listcomp_fun_para_1_2 _lh_fillTable_CSP_1_4) _lh_listcomp_fun_2_8)) in
                          (_lh_listcomp_fun_2_8 ((enumFromTo_lh__d6 (_lh_fillTable_Assign_0_4 + 1)) _lh_fillTable_CSP_0_2))) (fun xs_5 ys_5 -> 
                          (match xs_5 with
                            | `LH_C(hx_1_6, tx_1_6) -> 
                              (((ys_5 f_5_2) hx_1_6) tx_1_6)
                            | `LH_N -> 
                              (`LH_N)))) hx_1_5) tx_1_5)
                      | `LH_N -> 
                        (`LH_N)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) _lh_cacheChecks_Node_1_1) in
        (let rec _lh_mapTree_Node_0_4 = (let rec _lh_f_LH_P2_1_9 = _lh_cacheChecks_arg2_1 in
          (let rec _lh_f_LH_P2_0_1_0 = _lh_cacheChecks_Node_0_1 in
            (fun _lh_f_arg1_8 -> 
              (match _lh_f_LH_P2_0_1_0 with
                | `LH_N -> 
                  (let rec _lh_fst_LH_P2_0_1 = (`LH_P2((`LH_N), (`Unknown))) in
                    _lh_fst_LH_P2_0_1)
                | `LH_C(_lh_f_LH_C_0_1, _lh_f_LH_C_1_1) -> 
                  (let rec tableEntry_1 = ((atIndex_lh__d1 ((value_lh__d1 _lh_f_LH_C_0_1) - 1)) (head_lh__d1 _lh_f_LH_P2_1_9)) in
                    (let rec cs_7 = (if (tableEntry_1 = (`Unknown)) then
                      ((checkComplete_lh__d3 _lh_f_arg1_8) (`LH_C(_lh_f_LH_C_0_1, _lh_f_LH_C_1_1)))
                    else
                      tableEntry_1) in
                      (let rec _lh_fst_LH_P2_0_2 = (`LH_P2((`LH_C(_lh_f_LH_C_0_1, _lh_f_LH_C_1_1)), cs_7)) in
                        _lh_fst_LH_P2_0_2)))
                | _ -> 
                  (failwith "error"))))) in
          (fun _lh_mapTree_arg1_7 -> 
            (let rec _lh_mapTree_Node_1_5 = (_lh_mapTree_Node_1_4 (fun _lh_mapTree_arg2_7 -> 
              (_lh_mapTree_arg2_7 _lh_mapTree_arg1_7))) in
              (let rec _lh_mapTree_Node_0_5 = (_lh_mapTree_arg1_7 _lh_mapTree_Node_0_4) in
                (fun _lh_mapTree_arg1_8 -> 
                  (`Node((_lh_mapTree_arg1_8 _lh_mapTree_Node_0_5), (_lh_mapTree_Node_1_5 (fun _lh_mapTree_arg2_8 -> 
                    (_lh_mapTree_arg2_8 _lh_mapTree_arg1_8)))))))))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d2 a_5 b_3 =
  (if (a_5 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo_lh__d2 (a_5 + 1)) b_3) in
      (fun _lh_listcomp_fun_8 -> 
        (`LH_C((`Unknown), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_2)))))
  else
    (fun _lh_listcomp_fun_9 -> 
      (`LH_N)));;
let rec enumFromTo_lh__d1 a_7 b_5 =
  (if (a_7 <= b_5) then
    (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo_lh__d1 (a_7 + 1)) b_5) in
      (fun _lh_emptyTable_CSP_1_2 _lh_listcomp_fun_1_3 -> 
        (`LH_C((let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_5 -> 
          (_lh_listcomp_fun_para_5 _lh_listcomp_fun_1_4)) in
          (_lh_listcomp_fun_1_4 ((enumFromTo_lh__d2 1) _lh_emptyTable_CSP_1_2))), (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_4)))))
  else
    (fun _lh_emptyTable_CSP_1_3 _lh_listcomp_fun_1_5 -> 
      (`LH_N)));;
let rec bm_lh__d1 _lh_bm_arg1_0 _lh_funcomp_x_4 =
  ((fun _lh_funcomp_x_5 -> 
    ((let rec f_1_2 = (fun _lh_f_arg1_1 _lh_f_arg2_1 -> 
      (_lh_f_arg2_1 _lh_f_arg1_1)) in
      (_lh_funcomp_x_5 (f_1_2 _lh_bm_arg1_0))) fst_lh__d1)) (((cacheChecks_lh__d1 _lh_bm_arg1_0) (match _lh_bm_arg1_0 with
    | `CSP(_lh_emptyTable_CSP_0_0, _lh_emptyTable_CSP_1_0, _lh_emptyTable_CSP_2_0) -> 
      (`LH_C((`LH_N), (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_1 -> 
        ((_lh_listcomp_fun_para_1 _lh_emptyTable_CSP_1_0) _lh_listcomp_fun_3)) in
        (_lh_listcomp_fun_3 ((enumFromTo_lh__d1 1) _lh_emptyTable_CSP_0_0)))))
    | _ -> 
      (failwith "error"))) _lh_funcomp_x_4));;
let rec testConstraints_nofib_lh__d1 _lh_testConstraints_nofib_arg1_0 =
  ((let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (fun f_2_7 -> 
    (`LH_N)) in
    (let rec h_1_2 = fc_lh__d1 in
      (fun f_2_8 -> 
        (`LH_C((f_2_8 h_1_2), (t_1_6 f_2_8)))))) in
    (let rec h_1_3 = bjbt'_lh__d1 in
      (fun f_2_9 -> 
        (`LH_C((f_2_9 h_1_3), (t_1_5 f_2_9)))))) in
    (let rec h_1_4 = bjbt_lh__d1 in
      (fun f_3_0 -> 
        (`LH_C((f_3_0 h_1_4), (t_1_4 f_3_0)))))) in
    (let rec h_1_5 = bm_lh__d1 in
      (fun f_3_1 -> 
        (`LH_C((f_3_1 h_1_5), (t_1_3 f_3_1)))))) in
    (let rec h_1_6 = bt_lh__d1 in
      (fun f_3_2 -> 
        (`LH_C((f_3_2 h_1_6), (t_1_2 f_3_2)))))) (try_lh__d1 _lh_testConstraints_nofib_arg1_0));;
end;;

