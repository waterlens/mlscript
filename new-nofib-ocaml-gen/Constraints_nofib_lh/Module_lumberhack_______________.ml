

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________ = struct
let rec mapTree_lh__d6__d1 _lh_mapTree_arg1_3 _lh_mapTree_arg2_3 =
  (_lh_mapTree_arg2_3 _lh_mapTree_arg1_3);;
let rec lookupCache_lh__d2__d0 _lh_lookupCache_arg1_0 _lh_lookupCache_arg2_0 =
  (let rec f_7 = (fun _lh_f_arg1_0 _lh_f_arg2_2 -> 
    (_lh_f_arg2_2 _lh_f_arg1_0)) in
    ((mapTree_lh__d6__d1 (f_7 _lh_lookupCache_arg1_0)) _lh_lookupCache_arg2_0));;
let rec mapTree_lh__d5__d1 _lh_mapTree_arg1_4 _lh_mapTree_arg2_4 =
  (_lh_mapTree_arg2_4 _lh_mapTree_arg1_4);;
let rec domainWipeOut_lh__d1__d0 _lh_domainWipeOut_arg1_0 _lh_domainWipeOut_arg2_0 =
  (match _lh_domainWipeOut_arg1_0 with
    | `CSP(_lh_domainWipeOut_CSP_0_0, _lh_domainWipeOut_CSP_1_0, _lh_domainWipeOut_CSP_2_0) -> 
      (let rec f_5_9 = (fun _lh_f_arg1_4 -> 
        (_lh_f_arg1_4 99)) in
        ((mapTree_lh__d5__d1 f_5_9) _lh_domainWipeOut_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d4__d0 a_1 b_0 =
  (if (a_1 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d4__d0 (a_1 + 1)) b_0) in
      (fun _lh_listcomp_fun_0 -> 
        (`LH_C((`Unknown), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))))
  else
    (fun _lh_listcomp_fun_1 -> 
      (`LH_N)));;
let rec enumFromTo_lh__d3__d0 a_8 b_5 =
  (if (a_8 <= b_5) then
    (let rec _lh_listcomp_fun_ls_t_5 = ((enumFromTo_lh__d3__d0 (a_8 + 1)) b_5) in
      (fun _lh_emptyTable_CSP_1_4 _lh_listcomp_fun_1_2 -> 
        (`LH_C((let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_6 -> 
          (_lh_listcomp_fun_para_6 _lh_listcomp_fun_1_3)) in
          (_lh_listcomp_fun_1_3 ((enumFromTo_lh__d4__d0 1) _lh_emptyTable_CSP_1_4))), (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_5)))))
  else
    (fun _lh_emptyTable_CSP_1_5 _lh_listcomp_fun_1_4 -> 
      (`LH_N)));;
let rec emptyTable_lh__d2__d0 _lh_emptyTable_arg1_0 =
  (match _lh_emptyTable_arg1_0 with
    | `CSP(_lh_emptyTable_CSP_0_0, _lh_emptyTable_CSP_1_0, _lh_emptyTable_CSP_2_0) -> 
      (`LH_C((`LH_N), (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_0 -> 
        ((_lh_listcomp_fun_para_0 _lh_emptyTable_CSP_1_0) _lh_listcomp_fun_2)) in
        (_lh_listcomp_fun_2 ((enumFromTo_lh__d3__d0 1) _lh_emptyTable_CSP_0_0)))))
    | _ -> 
      (failwith "error"));;
let rec filter_lh__d3__d5 f_8_8 ls_5_2 =
  (match ls_5_2 with
    | `LH_C(h_4_7, t_4_8) -> 
      (if (f_8_8 h_4_7) then
        (`LH_C(h_4_7, ((filter_lh__d3__d5 f_8_8) t_4_8)))
      else
        ((filter_lh__d3__d5 f_8_8) t_4_8))
    | `LH_N -> 
      (`LH_N));;
let rec nubBy_lh__d1__d3 _lh_nubBy_arg1_2 _lh_nubBy_arg2_2 =
  (match _lh_nubBy_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nubBy_LH_C_0_2, _lh_nubBy_LH_C_1_2) -> 
      (`LH_C(_lh_nubBy_LH_C_0_2, ((nubBy_lh__d1__d3 _lh_nubBy_arg1_2) ((filter_lh__d3__d5 (fun y_2 -> 
        (not ((_lh_nubBy_arg1_2 _lh_nubBy_LH_C_0_2) y_2)))) _lh_nubBy_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec deleteBy_lh__d1__d3 _lh_deleteBy_arg1_4 _lh_deleteBy_arg2_4 _lh_deleteBy_arg3_4 =
  (match _lh_deleteBy_arg3_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_deleteBy_LH_C_0_4, _lh_deleteBy_LH_C_1_4) -> 
      (if ((_lh_deleteBy_arg1_4 _lh_deleteBy_arg2_4) _lh_deleteBy_LH_C_0_4) then
        _lh_deleteBy_LH_C_1_4
      else
        (`LH_C(_lh_deleteBy_LH_C_0_4, (((deleteBy_lh__d1__d3 _lh_deleteBy_arg1_4) _lh_deleteBy_arg2_4) _lh_deleteBy_LH_C_1_4))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1__d3 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_4_0, t_4_1) -> 
      (`LH_C(h_4_0, ((mappend_lh__d1__d3 t_4_1) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec flip_lh__d1__d3 _lh_flip_arg1_3 _lh_flip_arg2_3 _lh_flip_arg3_3 =
  ((_lh_flip_arg1_3 _lh_flip_arg3_3) _lh_flip_arg2_3);;
let rec foldl_lh__d1__d3 f_9_9 i_4 ls_6_0 =
  (match ls_6_0 with
    | `LH_C(h_5_5, t_5_6) -> 
      (((foldl_lh__d1__d3 f_9_9) ((f_9_9 i_4) h_5_5)) t_5_6)
    | `LH_N -> 
      i_4);;
let rec unionBy_lh__d1__d3 _lh_unionBy_arg1_4 _lh_unionBy_arg2_4 _lh_unionBy_arg3_4 =
  ((mappend_lh__d1__d3 _lh_unionBy_arg2_4) (((foldl_lh__d1__d3 (flip_lh__d1__d3 (deleteBy_lh__d1__d3 _lh_unionBy_arg1_4))) ((nubBy_lh__d1__d3 _lh_unionBy_arg1_4) _lh_unionBy_arg3_4)) _lh_unionBy_arg2_4));;
let rec union_lh__d2__d1 _lh_union_arg1_0 _lh_union_arg2_0 =
  (((unionBy_lh__d1__d3 (fun a_3 b_1 -> 
    (a_3 = b_1))) _lh_union_arg1_0) _lh_union_arg2_0);;
let rec collect_lh__d1__d0 _lh_collect_arg1_1 =
  (match _lh_collect_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_collect_LH_C_0_1, _lh_collect_LH_C_1_1) -> 
      (match _lh_collect_LH_C_0_1 with
        | `Known(_lh_collect_Known_0_1) -> 
          ((union_lh__d2__d1 _lh_collect_Known_0_1) (collect_lh__d1__d0 _lh_collect_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec all_lh__d1__d0 _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh__d1__d0 _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec value_lh__d2__d0 _lh_value_arg1_0 =
  (match _lh_value_arg1_0 with
    | `Assign(_lh_value_Assign_0_0, _lh_value_Assign_1_0) -> 
      _lh_value_Assign_1_0
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1_d3__d0 f_2_7 ls_2_0 =
  (ls_2_0 f_2_7);;
let rec map_lh__d1_d2__d0 f_3_6 ls_2_4 =
  (ls_2_4 f_3_6);;
let rec knownConflict_lh__d1__d1 _lh_knownConflict_arg1_2 =
  (match _lh_knownConflict_arg1_2 with
    | `Known(_lh_knownConflict_Known_0_2) -> 
      (match _lh_knownConflict_Known_0_2 with
        | `LH_C(_lh_knownConflict_LH_C_0_2, _lh_knownConflict_LH_C_1_2) -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec all_lh__d1__d1 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
        ((all_lh__d1__d1 _lh_all_arg1_1) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec knownConflict_lh__d1__d0 _lh_knownConflict_arg1_3 =
  (match _lh_knownConflict_arg1_3 with
    | `Known(_lh_knownConflict_Known_0_3) -> 
      (match _lh_knownConflict_Known_0_3 with
        | `LH_C(_lh_knownConflict_LH_C_0_3, _lh_knownConflict_LH_C_1_3) -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec zipWith_lh__d4__d0 f_1_6 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(hx_1, tx_1) -> 
      (((ys_2 f_1_6) hx_1) tx_1)
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d7__d0 a_1_2 b_9 =
  (if (a_1_2 <= b_9) then
    (let rec _lh_listcomp_fun_ls_t_8 = ((enumFromTo_lh__d7__d0 (a_1_2 + 1)) b_9) in
      (let rec _lh_listcomp_fun_ls_h_4 = a_1_2 in
        (fun _lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_2_1 -> 
          (let rec ty_2 = (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_8) in
            (let rec hy_2 = (let rec _lh_fillTable_LH_P2_1_0 = _lh_listcomp_fun_ls_h_4 in
              (let rec _lh_fillTable_LH_P2_0_0 = _lh_listcomp_fun_ls_h_5 in
                (fun _lh_fillTable_Assign_0_1 _lh_fillTable_Assign_1_1 _lh_fillTable_CSP_2_1 cs_4 -> 
                  (if ((cs_4 = (`Unknown)) && (not ((_lh_fillTable_CSP_2_1 (`Assign(_lh_fillTable_Assign_0_1, _lh_fillTable_Assign_1_1))) (`Assign(_lh_fillTable_LH_P2_0_0, _lh_fillTable_LH_P2_1_0))))) then
                    (`Known((`LH_C(_lh_fillTable_Assign_0_1, (`LH_C(_lh_fillTable_LH_P2_0_0, (`LH_N)))))))
                  else
                    cs_4)))) in
              (fun f_8_6 hx_1_1 tx_1_1 -> 
                (`LH_C(((f_8_6 hx_1_1) hy_2), (((zipWith_lh__d4__d0 f_8_6) tx_1_1) ty_2)))))))))
  else
    (fun _lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_2_2 f_8_7 hx_1_2 tx_1_2 -> 
      (`LH_N)));;
let rec zipWith_lh__d3__d0 f_8 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(hx_0, tx_0) -> 
      (((ys_0 f_8) hx_0) tx_0)
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d8__d0 a_4 b_2 =
  (if (a_4 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo_lh__d8__d0 (a_4 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_4 in
        (fun _lh_fillTable_CSP_1_0 _lh_listcomp_fun_3 -> 
          (let rec ty_0 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_1) in
            (let rec hy_0 = (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_1 -> 
              ((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_4)) in
              (_lh_listcomp_fun_4 ((enumFromTo_lh__d7__d0 1) _lh_fillTable_CSP_1_0))) in
              (fun f_2_3 hx_2 tx_2 -> 
                (`LH_C(((f_2_3 hx_2) hy_0), (((zipWith_lh__d3__d0 f_2_3) tx_2) ty_0)))))))))
  else
    (fun _lh_fillTable_CSP_1_1 _lh_listcomp_fun_5 f_2_4 hx_3 tx_3 -> 
      (`LH_N)));;
let rec zipWith_lh__d3__d1 f_8_0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (((ys_1_1 f_8_0) hx_1_0) tx_1_0)
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_lh__d4__d1 f_5_7 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(hx_4, tx_4) -> 
      (((ys_5 f_5_7) hx_4) tx_4)
    | `LH_N -> 
      (`LH_N));;
let rec fillTable_lh__d2__d0 _lh_fillTable_arg1_0 _lh_fillTable_arg2_0 _lh_fillTable_arg3_0 =
  (match _lh_fillTable_arg1_0 with
    | `LH_N -> 
      _lh_fillTable_arg3_0
    | `LH_C(_lh_fillTable_LH_C_0_0, _lh_fillTable_LH_C_1_0) -> 
      (match _lh_fillTable_LH_C_0_0 with
        | `Assign(_lh_fillTable_Assign_0_0, _lh_fillTable_Assign_1_0) -> 
          (match _lh_fillTable_arg2_0 with
            | `CSP(_lh_fillTable_CSP_0_0, _lh_fillTable_CSP_1_4, _lh_fillTable_CSP_2_0) -> 
              (let rec f_7_8 = (fun cs_3 varval_0 -> 
                (let rec _lh_matchIdent_4 = varval_0 in
                  ((((_lh_matchIdent_4 _lh_fillTable_Assign_0_0) _lh_fillTable_Assign_1_0) _lh_fillTable_CSP_2_0) cs_3))) in
                (((zipWith_lh__d3__d1 (zipWith_lh__d4__d1 f_7_8)) _lh_fillTable_arg3_0) (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_8 -> 
                  ((_lh_listcomp_fun_para_8 _lh_fillTable_CSP_1_4) _lh_listcomp_fun_1_8)) in
                  (_lh_listcomp_fun_1_8 ((enumFromTo_lh__d8__d0 (_lh_fillTable_Assign_0_0 + 1)) _lh_fillTable_CSP_0_0)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1__d1 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec tail_lh__d2__d0 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_4_6, t_4_7) -> 
      t_4_7
    | `LH_N -> 
      (failwith "error"));;
let rec mapTree_lh__d6__d0 _lh_mapTree_arg1_1_4 _lh_mapTree_arg2_1_0 =
  (_lh_mapTree_arg2_1_0 _lh_mapTree_arg1_1_4);;
let rec head_lh__d2__d1 ls_5_8 =
  (match ls_5_8 with
    | `LH_C(h_5_3, t_5_4) -> 
      h_5_3
    | `LH_N -> 
      (failwith "error"));;
let rec deleteBy_lh__d1__d4 _lh_deleteBy_arg1_2 _lh_deleteBy_arg2_2 _lh_deleteBy_arg3_2 =
  (match _lh_deleteBy_arg3_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_deleteBy_LH_C_0_2, _lh_deleteBy_LH_C_1_2) -> 
      (if ((_lh_deleteBy_arg1_2 _lh_deleteBy_arg2_2) _lh_deleteBy_LH_C_0_2) then
        _lh_deleteBy_LH_C_1_2
      else
        (`LH_C(_lh_deleteBy_LH_C_0_2, (((deleteBy_lh__d1__d4 _lh_deleteBy_arg1_2) _lh_deleteBy_arg2_2) _lh_deleteBy_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec foldl_lh__d1__d4 f_5_8 i_1 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_3_6, t_3_7) -> 
      (((foldl_lh__d1__d4 f_5_8) ((f_5_8 i_1) h_3_6)) t_3_7)
    | `LH_N -> 
      i_1);;
let rec mappend_lh__d1__d4 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_5_2, t_5_3) -> 
      (`LH_C(h_5_2, ((mappend_lh__d1__d4 t_5_3) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec filter_lh__d3__d6 f_5_5 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_3_5, t_3_6) -> 
      (if (f_5_5 h_3_5) then
        (`LH_C(h_3_5, ((filter_lh__d3__d6 f_5_5) t_3_6)))
      else
        ((filter_lh__d3__d6 f_5_5) t_3_6))
    | `LH_N -> 
      (`LH_N));;
let rec nubBy_lh__d1__d4 _lh_nubBy_arg1_1 _lh_nubBy_arg2_1 =
  (match _lh_nubBy_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nubBy_LH_C_0_1, _lh_nubBy_LH_C_1_1) -> 
      (`LH_C(_lh_nubBy_LH_C_0_1, ((nubBy_lh__d1__d4 _lh_nubBy_arg1_1) ((filter_lh__d3__d6 (fun y_1 -> 
        (not ((_lh_nubBy_arg1_1 _lh_nubBy_LH_C_0_1) y_1)))) _lh_nubBy_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec flip_lh__d1__d4 _lh_flip_arg1_0 _lh_flip_arg2_0 _lh_flip_arg3_0 =
  ((_lh_flip_arg1_0 _lh_flip_arg3_0) _lh_flip_arg2_0);;
let rec unionBy_lh__d1__d4 _lh_unionBy_arg1_3 _lh_unionBy_arg2_3 _lh_unionBy_arg3_3 =
  ((mappend_lh__d1__d4 _lh_unionBy_arg2_3) (((foldl_lh__d1__d4 (flip_lh__d1__d4 (deleteBy_lh__d1__d4 _lh_unionBy_arg1_3))) ((nubBy_lh__d1__d4 _lh_unionBy_arg1_3) _lh_unionBy_arg3_3)) _lh_unionBy_arg2_3));;
let rec union_lh__d2__d2 _lh_union_arg1_4 _lh_union_arg2_4 =
  (((unionBy_lh__d1__d4 (fun a_1_5 b_1_2 -> 
    (a_1_5 = b_1_2))) _lh_union_arg1_4) _lh_union_arg2_4);;
let rec collect_lh__d1__d1 _lh_collect_arg1_0 =
  (match _lh_collect_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_collect_LH_C_0_0, _lh_collect_LH_C_1_0) -> 
      (match _lh_collect_LH_C_0_0 with
        | `Known(_lh_collect_Known_0_0) -> 
          ((union_lh__d2__d2 _lh_collect_Known_0_0) (collect_lh__d1__d1 _lh_collect_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec head_lh__d2__d0 ls_2 =
  (match ls_2 with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec null_lh__d1__d0 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec maxLevel_lh__d4__d6 _lh_maxLevel_arg1_5 =
  (_lh_maxLevel_arg1_5 99);;
let rec complete_lh__d4__d2 _lh_complete_arg1_7 _lh_complete_arg2_7 =
  (match _lh_complete_arg1_7 with
    | `CSP(_lh_complete_CSP_0_7, _lh_complete_CSP_1_7, _lh_complete_CSP_2_7) -> 
      ((maxLevel_lh__d4__d6 _lh_complete_arg2_7) = _lh_complete_CSP_0_7)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d4__d0 _lh_checkComplete_arg1_1 _lh_checkComplete_arg2_1 =
  (if ((complete_lh__d4__d2 _lh_checkComplete_arg1_1) _lh_checkComplete_arg2_1) then
    (`Known((`LH_N)))
  else
    (`Unknown));;
let rec atIndex_lh__d2__d0 n_1 ls_2_1 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match ls_2_1 with
      | `LH_C(h_1_9, t_2_0) -> 
        (if (n_1 = 0) then
          h_1_9
        else
          ((atIndex_lh__d2__d0 (n_1 - 1)) t_2_0))
      | `LH_N -> 
        (failwith "error")));;
let rec mapTree_lh__d5__d0 _lh_mapTree_arg1_1_1 _lh_mapTree_arg2_7 =
  (_lh_mapTree_arg2_7 _lh_mapTree_arg1_1_1);;
let rec head_lh__d3__d0 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_2_8, t_2_9) -> 
      h_2_8
    | `LH_N -> 
      (failwith "error"));;
let rec map_lh__d1_d3__d1 f_9_1 ls_5_3 =
  (ls_5_3 f_9_1);;
let rec map_lh__d1_d2__d1 f_0 ls_0 =
  (ls_0 f_0);;
let rec map_lh__d6__d0 f_3_9 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_2_9, t_3_0) -> 
      (let rec t_3_1 = ((map_lh__d6__d0 f_3_9) t_3_0) in
        (let rec h_3_0 = (f_3_9 h_2_9) in
          (fun f_4_0 -> 
            (let rec t_3_2 = ((map_lh__d1_d3__d1 f_4_0) t_3_1) in
              (let rec h_3_1 = (f_4_0 h_3_0) in
                (fun f_4_1 -> 
                  (`LH_C((f_4_1 h_3_1), ((map_lh__d1_d2__d1 f_4_1) t_3_2)))))))))
    | `LH_N -> 
      (fun f_4_2 f_4_3 -> 
        (`LH_N)));;
let rec cacheChecks_lh__d2__d0 _lh_cacheChecks_arg1_1 _lh_cacheChecks_arg2_1 _lh_cacheChecks_arg3_1 =
  (match _lh_cacheChecks_arg3_1 with
    | `Node(_lh_cacheChecks_Node_0_1, _lh_cacheChecks_Node_1_1) -> 
      (let rec _lh_mapTree_Node_1_4 = ((map_lh__d6__d0 ((cacheChecks_lh__d2__d0 _lh_cacheChecks_arg1_1) (((fillTable_lh__d2__d0 _lh_cacheChecks_Node_0_1) _lh_cacheChecks_arg1_1) (tail_lh__d2__d0 _lh_cacheChecks_arg2_1)))) _lh_cacheChecks_Node_1_1) in
        (let rec _lh_mapTree_Node_0_4 = (let rec _lh_f_LH_P2_1_2 = _lh_cacheChecks_arg2_1 in
          (let rec _lh_f_LH_P2_0_7 = _lh_cacheChecks_Node_0_1 in
            (fun _lh_f_arg1_2 -> 
              (match _lh_f_LH_P2_0_7 with
                | `LH_N -> 
                  (let rec _lh_f_LH_P2_1_3 = _lh_f_LH_P2_1_2 in
                    (let rec _lh_f_LH_P2_0_8 = (let rec _lh_f_LH_P2_1_4 = (`Unknown) in
                      (let rec _lh_f_LH_P2_0_9 = (`LH_N) in
                        (fun _lh_f_LH_P2_1_5 -> 
                          (let rec wipedDomains_0 = (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_3 -> 
                            (match _lh_listcomp_fun_para_3 with
                              | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_2) -> 
                                (if ((all_lh__d1__d0 knownConflict_lh__d1__d0) _lh_listcomp_fun_ls_h_1) then
                                  (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_2)))
                                else
                                  (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_2))
                              | `LH_N -> 
                                (`LH_N))) in
                            (_lh_listcomp_fun_7 _lh_f_LH_P2_1_5)) in
                            (let rec cs'_0 = (if (null_lh__d1__d0 wipedDomains_0) then
                              _lh_f_LH_P2_1_4
                            else
                              (`Known((collect_lh__d1__d0 (head_lh__d2__d0 wipedDomains_0))))) in
                              (`LH_P2(_lh_f_LH_P2_0_9, cs'_0))))))) in
                      (fun _lh_dummy_5 -> 
                        (_lh_f_LH_P2_0_8 _lh_f_LH_P2_1_3))))
                | `LH_C(_lh_f_LH_C_0_1, _lh_f_LH_C_1_1) -> 
                  (let rec tableEntry_1 = ((atIndex_lh__d2__d0 ((value_lh__d2__d0 _lh_f_LH_C_0_1) - 1)) (head_lh__d3__d0 _lh_f_LH_P2_1_2)) in
                    (let rec cs_1 = (if (tableEntry_1 = (`Unknown)) then
                      ((checkComplete_lh__d4__d0 _lh_f_arg1_2) (let rec _lh_maxLevel_LH_C_0_3 = _lh_f_LH_C_0_1 in
                        (fun _lh_dummy_6 -> 
                          (match _lh_maxLevel_LH_C_0_3 with
                            | `Assign(_lh_maxLevel_Assign_0_3, _lh_maxLevel_Assign_1_3) -> 
                              _lh_maxLevel_Assign_0_3
                            | _ -> 
                              (failwith "error")))))
                    else
                      tableEntry_1) in
                      (let rec _lh_f_LH_P2_1_6 = _lh_f_LH_P2_1_2 in
                        (let rec _lh_f_LH_P2_0_1_0 = (let rec _lh_f_LH_P2_1_7 = cs_1 in
                          (let rec _lh_f_LH_P2_0_1_1 = (`LH_C(_lh_f_LH_C_0_1, _lh_f_LH_C_1_1)) in
                            (fun _lh_f_LH_P2_1_8 -> 
                              (let rec wipedDomains_1 = (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_4 -> 
                                (match _lh_listcomp_fun_para_4 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_3) -> 
                                    (if ((all_lh__d1__d1 knownConflict_lh__d1__d1) _lh_listcomp_fun_ls_h_2) then
                                      (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_3)))
                                    else
                                      (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_3))
                                  | `LH_N -> 
                                    (`LH_N))) in
                                (_lh_listcomp_fun_8 _lh_f_LH_P2_1_8)) in
                                (let rec cs'_1 = (if (null_lh__d1__d1 wipedDomains_1) then
                                  _lh_f_LH_P2_1_7
                                else
                                  (`Known((collect_lh__d1__d1 (head_lh__d2__d1 wipedDomains_1))))) in
                                  (`LH_P2(_lh_f_LH_P2_0_1_1, cs'_1))))))) in
                          (fun _lh_dummy_7 -> 
                            (_lh_f_LH_P2_0_1_0 _lh_f_LH_P2_1_6))))))
                | _ -> 
                  (failwith "error"))))) in
          (fun _lh_mapTree_arg1_8 -> 
            (let rec _lh_mapTree_Node_1_5 = ((map_lh__d1_d3__d0 (mapTree_lh__d6__d0 _lh_mapTree_arg1_8)) _lh_mapTree_Node_1_4) in
              (let rec _lh_mapTree_Node_0_5 = (_lh_mapTree_arg1_8 _lh_mapTree_Node_0_4) in
                (fun _lh_mapTree_arg1_9 -> 
                  (`Node((_lh_mapTree_arg1_9 _lh_mapTree_Node_0_5), ((map_lh__d1_d2__d0 (mapTree_lh__d5__d0 _lh_mapTree_arg1_9)) _lh_mapTree_Node_1_5)))))))))
    | _ -> 
      (failwith "error"));;
let rec fc_lh__d1__d0 _lh_fc_arg1_0 _lh_funcomp_x_7 =
  ((fun _lh_funcomp_x_8 -> 
    ((domainWipeOut_lh__d1__d0 _lh_fc_arg1_0) ((lookupCache_lh__d2__d0 _lh_fc_arg1_0) _lh_funcomp_x_8))) (((cacheChecks_lh__d2__d0 _lh_fc_arg1_0) (emptyTable_lh__d2__d0 _lh_fc_arg1_0)) _lh_funcomp_x_7));;
let rec map_lh__d1__d0 f_2_6 ls_1_8 =
  (ls_1_8 f_2_6);;
let rec length_lh__d1__d0 ls_2_5 =
  (ls_2_5 99);;
let rec abs_lh__d1__d0 _lh_abs_arg1_1 =
  (if (_lh_abs_arg1_1 > 0) then
    _lh_abs_arg1_1
  else
    (0 - _lh_abs_arg1_1));;
let rec abs_lh__d2__d0 _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 > 0) then
    _lh_abs_arg1_0
  else
    (0 - _lh_abs_arg1_0));;
let rec safe_lh__d1__d0 _lh_safe_arg1_0 _lh_safe_arg2_0 =
  (match _lh_safe_arg1_0 with
    | `Assign(_lh_safe_Assign_0_0, _lh_safe_Assign_1_0) -> 
      (match _lh_safe_arg2_0 with
        | `Assign(_lh_safe_Assign_0_1, _lh_safe_Assign_1_1) -> 
          ((_lh_safe_Assign_1_0 <> _lh_safe_Assign_1_1) && ((abs_lh__d1__d0 (_lh_safe_Assign_0_0 - _lh_safe_Assign_0_1)) <> (abs_lh__d2__d0 (_lh_safe_Assign_1_0 - _lh_safe_Assign_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec queens_lh__d1__d0 _lh_queens_arg1_0 =
  (`CSP(_lh_queens_arg1_0, _lh_queens_arg1_0, safe_lh__d1__d0));;
let rec map_lh__d7__d0 f_3 ls_4 =
  (ls_4 f_3);;
let rec length_lh__d1__d1 ls_2_3 =
  (ls_2_3 99);;
let rec filter_lh__d2__d0 f_2_0 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_1_2, t_1_2) -> 
      (if (f_2_0 h_1_2) then
        (let rec t_1_3 = ((filter_lh__d2__d0 f_2_0) t_1_2) in
          (let rec h_1_3 = h_1_2 in
            (fun f_2_1 -> 
              (let rec t_1_4 = ((map_lh__d7__d0 f_2_1) t_1_3) in
                (fun _lh_dummy_2 -> 
                  (1 + (length_lh__d1__d1 t_1_4)))))))
      else
        ((filter_lh__d2__d0 f_2_0) t_1_2))
    | `LH_N -> 
      (fun f_2_2 _lh_dummy_3 -> 
        0));;
let rec snd_lh__d1__d0 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec knownConflict_lh__d2__d0 _lh_knownConflict_arg1_1 =
  (match _lh_knownConflict_arg1_1 with
    | `Known(_lh_knownConflict_Known_0_1) -> 
      (match _lh_knownConflict_Known_0_1 with
        | `LH_C(_lh_knownConflict_LH_C_0_1, _lh_knownConflict_LH_C_1_1) -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec map_lh__d7__d1 f_4_4 ls_3_1 =
  (ls_3_1 f_4_4);;
let rec mappend_lh__d1__d5 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_1_6, t_1_7) -> 
      (`LH_C(h_1_6, ((mappend_lh__d1__d5 t_1_7) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec concat_lh__d1__d0 lss_0 =
  (lss_0 99);;
let rec map_lh__d1_d4__d2 f_1_4 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_8, t_8) -> 
      (let rec t_9 = ((map_lh__d1_d4__d2 f_1_4) t_8) in
        (let rec h_9 = (f_1_4 h_8) in
          (fun _lh_dummy_0 -> 
            ((mappend_lh__d1__d5 h_9) (concat_lh__d1__d0 t_9)))))
    | `LH_N -> 
      (fun _lh_dummy_1 -> 
        (`LH_N)));;
let rec leaves_lh__d1__d0 _lh_leaves_arg1_0 =
  (match _lh_leaves_arg1_0 with
    | `Node(_lh_leaves_Node_0_0, _lh_leaves_Node_1_0) -> 
      (match _lh_leaves_Node_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_leaves_Node_0_0, (`LH_N)))
        | _ -> 
          (concat_lh__d1__d0 ((map_lh__d1_d4__d2 leaves_lh__d1__d0) _lh_leaves_Node_1_0)))
    | _ -> 
      (failwith "error"));;
let rec knownSolution_lh__d1__d0 _lh_knownSolution_arg1_0 =
  (match _lh_knownSolution_arg1_0 with
    | `Known(_lh_knownSolution_Known_0_0) -> 
      (match _lh_knownSolution_Known_0_0 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec filter_lh__d3__d7 f_4_6 ls_3_3 =
  (ls_3_3 f_4_6);;
let rec label_lh__d2__d1 _lh_label_arg1_2 =
  (match _lh_label_arg1_2 with
    | `Node(_lh_label_Node_0_2, _lh_label_Node_1_2) -> 
      _lh_label_Node_0_2
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1_d4__d4 f_6_1 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_3_7, t_3_8) -> 
      (let rec t_3_9 = ((map_lh__d1_d4__d4 f_6_1) t_3_8) in
        (let rec h_3_8 = (f_6_1 h_3_7) in
          (fun f_6_2 -> 
            (if (f_6_2 h_3_8) then
              (`LH_C(h_3_8, ((filter_lh__d3__d7 f_6_2) t_3_9)))
            else
              ((filter_lh__d3__d7 f_6_2) t_3_9)))))
    | `LH_N -> 
      (fun f_6_3 -> 
        (`LH_N)));;
let rec foldTree_lh__d2__d1 _lh_foldTree_arg1_1 _lh_foldTree_arg2_0 =
  (match _lh_foldTree_arg2_0 with
    | `Node(_lh_foldTree_Node_0_1, _lh_foldTree_Node_1_1) -> 
      ((_lh_foldTree_arg1_1 _lh_foldTree_Node_0_1) ((map_lh__d1_d4__d4 (foldTree_lh__d2__d1 _lh_foldTree_arg1_1)) _lh_foldTree_Node_1_1))
    | _ -> 
      (failwith "error"));;
let rec filterTree_lh__d1__d0 _lh_filterTree_arg1_0 =
  (let rec f_2_8 = (fun a_5 cs_2 -> 
    (`Node(a_5, ((filter_lh__d3__d7 (fun _lh_funcomp_x_1_0 -> 
      (_lh_filterTree_arg1_0 (label_lh__d2__d1 _lh_funcomp_x_1_0)))) cs_2)))) in
    (foldTree_lh__d2__d1 f_2_8));;
let rec prune_lh__d1__d0 _lh_prune_arg1_0 =
  (filterTree_lh__d1__d0 (fun _lh_funcomp_x_1_4 -> 
    (not (_lh_prune_arg1_0 _lh_funcomp_x_1_4))));;
let rec snd_lh__d2__d0 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1_d4__d3 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_1 h_0), ((map_lh__d1_d4__d3 f_1) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec initTree_lh__d1__d0 _lh_initTree_arg1_0 _lh_initTree_arg2_0 =
  (`Node(_lh_initTree_arg2_0, ((map_lh__d1_d4__d3 (initTree_lh__d1__d0 _lh_initTree_arg1_0)) (_lh_initTree_arg1_0 _lh_initTree_arg2_0))));;
let rec maxLevel_lh__d3__d0 _lh_maxLevel_arg1_2 =
  (match _lh_maxLevel_arg1_2 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_4, _lh_maxLevel_LH_C_1_2) -> 
      (match _lh_maxLevel_LH_C_0_4 with
        | `Assign(_lh_maxLevel_Assign_0_4, _lh_maxLevel_Assign_1_4) -> 
          _lh_maxLevel_Assign_0_4
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d9__d0 a_1_6 b_1_3 =
  (if (a_1_6 <= b_1_3) then
    (let rec _lh_listcomp_fun_ls_t_1_0 = ((enumFromTo_lh__d9__d0 (a_1_6 + 1)) b_1_3) in
      (let rec _lh_listcomp_fun_ls_h_1_0 = a_1_6 in
        (fun _lh_listcomp_fun_2_5 ss_0 -> 
          (`LH_C((`LH_C((`Assign(((maxLevel_lh__d3__d0 ss_0) + 1), _lh_listcomp_fun_ls_h_1_0)), ss_0)), (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_0))))))
  else
    (fun _lh_listcomp_fun_2_6 ss_1 -> 
      (`LH_N)));;
let rec maxLevel_lh__d4__d7 _lh_maxLevel_arg1_4 =
  (match _lh_maxLevel_arg1_4 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_5, _lh_maxLevel_LH_C_1_3) -> 
      (match _lh_maxLevel_LH_C_0_5 with
        | `Assign(_lh_maxLevel_Assign_0_5, _lh_maxLevel_Assign_1_5) -> 
          _lh_maxLevel_Assign_0_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mkTree_lh__d1__d0 _lh_mkTree_arg1_0 =
  (match _lh_mkTree_arg1_0 with
    | `CSP(_lh_mkTree_CSP_0_0, _lh_mkTree_CSP_1_0, _lh_mkTree_CSP_2_0) -> 
      (let rec next_0 = (fun ss_2 -> 
        (if ((maxLevel_lh__d4__d7 ss_2) < _lh_mkTree_CSP_0_0) then
          (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_1_0 -> 
            ((_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_2_8) ss_2)) in
            (_lh_listcomp_fun_2_8 ((enumFromTo_lh__d9__d0 1) _lh_mkTree_CSP_1_0)))
        else
          (`LH_N))) in
        ((initTree_lh__d1__d0 next_0) (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec fst_lh__d2__d0 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_2, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec search_lh__d1__d0 _lh_search_arg1_0 _lh_search_arg2_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((fun _lh_funcomp_x_3 -> 
          ((fun _lh_funcomp_x_4 -> 
            ((map_lh__d7__d1 fst_lh__d2__d0) ((filter_lh__d2__d0 (fun _lh_funcomp_x_5 -> 
              (knownSolution_lh__d1__d0 (snd_lh__d1__d0 _lh_funcomp_x_5)))) _lh_funcomp_x_4))) (leaves_lh__d1__d0 _lh_funcomp_x_3))) ((prune_lh__d1__d0 (fun _lh_funcomp_x_6 -> 
          (knownConflict_lh__d2__d0 (snd_lh__d2__d0 _lh_funcomp_x_6)))) _lh_funcomp_x_2))) ((_lh_search_arg1_0 _lh_search_arg2_0) _lh_funcomp_x_1))) (mkTree_lh__d1__d0 _lh_funcomp_x_0))) _lh_search_arg2_0);;
let rec try_lh__d1__d0 _lh_try_arg1_0 _lh_try_arg2_0 =
  (length_lh__d1__d0 ((search_lh__d1__d0 _lh_try_arg2_0) (queens_lh__d1__d0 _lh_try_arg1_0)));;
let rec map_lh__d1__d3 f_6_0 ls_4_0 =
  (ls_4_0 f_6_0);;
let rec map_lh__d1__d5 f_7_0 ls_4_6 =
  (ls_4_6 f_7_0);;
let rec filter_lh__d1__d0 f_1_1 ls_9 =
  (ls_9 f_1_1);;
let rec reverse_helper_lh__d1__d2 ls_1_1 a_2 =
  (match ls_1_1 with
    | `LH_C(h_5, t_5) -> 
      ((reverse_helper_lh__d1__d2 t_5) (let rec t_6 = a_2 in
        (let rec h_6 = h_5 in
          (fun f_1_3 -> 
            (if (f_1_3 h_6) then
              (`LH_C(h_6, ((filter_lh__d1__d0 f_1_3) t_6)))
            else
              ((filter_lh__d1__d0 f_1_3) t_6))))))
    | `LH_N -> 
      a_2);;
let rec reverse_lh__d1__d0 ls_5 =
  ((reverse_helper_lh__d1__d2 ls_5) (fun f_4 -> 
    (`LH_N)));;
let rec maxLevel_lh__d2__d1 _lh_maxLevel_arg1_6 =
  (match _lh_maxLevel_arg1_6 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_6, _lh_maxLevel_LH_C_1_4) -> 
      (match _lh_maxLevel_LH_C_0_6 with
        | `Assign(_lh_maxLevel_Assign_0_6, _lh_maxLevel_Assign_1_6) -> 
          _lh_maxLevel_Assign_0_6
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec complete_lh__d1__d1 _lh_complete_arg1_3 _lh_complete_arg2_3 =
  (match _lh_complete_arg1_3 with
    | `CSP(_lh_complete_CSP_0_3, _lh_complete_CSP_1_3, _lh_complete_CSP_2_3) -> 
      ((maxLevel_lh__d2__d1 _lh_complete_arg2_3) = _lh_complete_CSP_0_3)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d1__d1 _lh_checkComplete_arg1_6 _lh_checkComplete_arg2_6 =
  (if ((complete_lh__d1__d1 _lh_checkComplete_arg1_6) _lh_checkComplete_arg2_6) then
    (`Known((`LH_N)))
  else
    (`Unknown));;
let rec level_lh__d1__d0 _lh_level_arg1_4 =
  (match _lh_level_arg1_4 with
    | `Assign(_lh_level_Assign_0_4, _lh_level_Assign_1_4) -> 
      _lh_level_Assign_0_4
    | _ -> 
      (failwith "error"));;
let rec level_lh__d2__d0 _lh_level_arg1_2 =
  (match _lh_level_arg1_2 with
    | `Assign(_lh_level_Assign_0_2, _lh_level_Assign_1_2) -> 
      _lh_level_Assign_0_2
    | _ -> 
      (failwith "error"));;
let rec maxLevel_lh__d2__d0 _lh_maxLevel_arg1_7 =
  (match _lh_maxLevel_arg1_7 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_7, _lh_maxLevel_LH_C_1_5) -> 
      (match _lh_maxLevel_LH_C_0_7 with
        | `Assign(_lh_maxLevel_Assign_0_7, _lh_maxLevel_Assign_1_7) -> 
          _lh_maxLevel_Assign_0_7
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec complete_lh__d1__d0 _lh_complete_arg1_1 _lh_complete_arg2_1 =
  (match _lh_complete_arg1_1 with
    | `CSP(_lh_complete_CSP_0_1, _lh_complete_CSP_1_1, _lh_complete_CSP_2_1) -> 
      ((maxLevel_lh__d2__d0 _lh_complete_arg2_1) = _lh_complete_CSP_0_1)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d1__d0 _lh_checkComplete_arg1_3 _lh_checkComplete_arg2_3 =
  (if ((complete_lh__d1__d0 _lh_checkComplete_arg1_3) _lh_checkComplete_arg2_3) then
    (`Known((`LH_N)))
  else
    (`Unknown));;
let rec earliestInconsistency_lh__d1__d0 _lh_earliestInconsistency_arg1_2 _lh_earliestInconsistency_arg2_2 =
  (match _lh_earliestInconsistency_arg1_2 with
    | `CSP(_lh_earliestInconsistency_CSP_0_2, _lh_earliestInconsistency_CSP_1_2, _lh_earliestInconsistency_CSP_2_2) -> 
      (match _lh_earliestInconsistency_arg2_2 with
        | `LH_N -> 
          (fun _lh_bt_arg1_7 s_7 -> 
            ((checkComplete_lh__d1__d0 _lh_bt_arg1_7) s_7))
        | `LH_C(_lh_earliestInconsistency_LH_C_0_4, _lh_earliestInconsistency_LH_C_1_4) -> 
          (let rec _lh_matchIdent_3 = ((filter_lh__d1__d0 (fun _lh_funcomp_x_1_2 -> 
            (not ((_lh_earliestInconsistency_CSP_2_2 _lh_earliestInconsistency_LH_C_0_4) _lh_funcomp_x_1_2)))) (reverse_lh__d1__d0 _lh_earliestInconsistency_LH_C_1_4)) in
            (match _lh_matchIdent_3 with
              | `LH_N -> 
                (fun _lh_bt_arg1_8 s_8 -> 
                  ((checkComplete_lh__d1__d1 _lh_bt_arg1_8) s_8))
              | `LH_C(_lh_earliestInconsistency_LH_C_0_5, _lh_earliestInconsistency_LH_C_1_5) -> 
                (let rec _lh_bt_Just_0_2 = (let rec _lh_bt_LH_P2_1_2 = (level_lh__d2__d0 _lh_earliestInconsistency_LH_C_0_5) in
                  (let rec _lh_bt_LH_P2_0_2 = (level_lh__d1__d0 _lh_earliestInconsistency_LH_C_0_4) in
                    (`Known((`LH_C(_lh_bt_LH_P2_0_2, (`LH_C(_lh_bt_LH_P2_1_2, (`LH_N))))))))) in
                  (fun _lh_bt_arg1_9 s_9 -> 
                    _lh_bt_Just_0_2))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d5__d0 f_9_6 ls_5_6 =
  (match ls_5_6 with
    | `LH_C(h_5_0, t_5_1) -> 
      (`LH_C((f_9_6 h_5_0), ((map_lh__d5__d0 f_9_6) t_5_1)))
    | `LH_N -> 
      (`LH_N));;
let rec mapTree_lh__d2__d0 _lh_mapTree_arg1_2 _lh_mapTree_arg2_2 =
  (match _lh_mapTree_arg2_2 with
    | `Node(_lh_mapTree_Node_0_1, _lh_mapTree_Node_1_1) -> 
      (`Node((_lh_mapTree_arg1_2 _lh_mapTree_Node_0_1), ((map_lh__d5__d0 (mapTree_lh__d2__d0 _lh_mapTree_arg1_2)) _lh_mapTree_Node_1_1)))
    | _ -> 
      (failwith "error"));;
let rec bt_lh__d1__d0 _lh_bt_arg1_1_0 =
  (let rec f_7_9 = (fun s_1_0 -> 
    (`LH_P2(s_1_0, (let rec _lh_matchIdent_5 = ((earliestInconsistency_lh__d1__d0 _lh_bt_arg1_1_0) s_1_0) in
      ((_lh_matchIdent_5 _lh_bt_arg1_1_0) s_1_0))))) in
    (mapTree_lh__d2__d0 f_7_9));;
let rec map_lh__d1__d1 f_8_1 ls_4_9 =
  (ls_4_9 f_8_1);;
let rec foldTree_lh__d1__d0 _lh_foldTree_arg1_5 _lh_foldTree_arg2_3 =
  (_lh_foldTree_arg2_3 _lh_foldTree_arg1_5);;
let rec bj_lh__d1__d0 _lh_bj_arg1_0 =
  (let rec f_4_8 = (fun _lh_f_arg1_3 _lh_f_arg2_1_0 -> 
    (_lh_f_arg1_3 _lh_f_arg2_1_0)) in
    (foldTree_lh__d1__d0 f_4_8));;
let rec map_lh__d1_d0__d1 f_4_5 ls_3_2 =
  (ls_3_2 f_4_5);;
let rec map_lh__d9__d0 f_8_2 ls_5_0 =
  (match ls_5_0 with
    | `LH_C(h_4_4, t_4_5) -> 
      (let rec t_4_6 = ((map_lh__d9__d0 f_8_2) t_4_5) in
        (let rec h_4_5 = (f_8_2 h_4_4) in
          (fun f_8_3 -> 
            (`LH_C((f_8_3 h_4_5), ((map_lh__d1_d0__d1 f_8_3) t_4_6))))))
    | `LH_N -> 
      (fun f_8_4 -> 
        (`LH_N)));;
let rec foldTree_lh__d1__d1 _lh_foldTree_arg1_4 _lh_foldTree_arg2_2 =
  (_lh_foldTree_arg2_2 _lh_foldTree_arg1_4);;
let rec map_lh__d1_d0__d0 f_4_7 ls_3_4 =
  (ls_3_4 f_4_7);;
let rec mapTree_lh__d3__d0 _lh_mapTree_arg1_1_0 _lh_mapTree_arg2_6 =
  (match _lh_mapTree_arg2_6 with
    | `Node(_lh_mapTree_Node_0_6, _lh_mapTree_Node_1_6) -> 
      (let rec _lh_foldTree_Node_1_2 = ((map_lh__d9__d0 (mapTree_lh__d3__d0 _lh_mapTree_arg1_1_0)) _lh_mapTree_Node_1_6) in
        (let rec _lh_foldTree_Node_0_2 = (_lh_mapTree_arg1_1_0 _lh_mapTree_Node_0_6) in
          (fun _lh_foldTree_arg1_3 -> 
            ((_lh_foldTree_arg1_3 _lh_foldTree_Node_0_2) ((map_lh__d1_d0__d0 (foldTree_lh__d1__d1 _lh_foldTree_arg1_3)) _lh_foldTree_Node_1_2)))))
    | _ -> 
      (failwith "error"));;
let rec maxLevel_lh__d4__d4 _lh_maxLevel_arg1_1 =
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
let rec complete_lh__d2__d1 _lh_complete_arg1_2 _lh_complete_arg2_2 =
  (match _lh_complete_arg1_2 with
    | `CSP(_lh_complete_CSP_0_2, _lh_complete_CSP_1_2, _lh_complete_CSP_2_2) -> 
      ((maxLevel_lh__d4__d4 _lh_complete_arg2_2) = _lh_complete_CSP_0_2)
    | _ -> 
      (failwith "error"));;
let rec label_lh__d1__d1 _lh_label_arg1_0 =
  (match _lh_label_arg1_0 with
    | `Node(_lh_label_Node_0_0, _lh_label_Node_1_0) -> 
      _lh_label_Node_0_0
    | _ -> 
      (failwith "error"));;
let rec combine_lh__d1__d3 _lh_combine_arg1_0 _lh_combine_arg2_0 =
  (_lh_combine_arg1_0 _lh_combine_arg2_0);;
let rec notElem_lh__d1__d2 _lh_notElem_arg1_0 _lh_notElem_arg2_0 =
  (match _lh_notElem_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_notElem_LH_C_0_0, _lh_notElem_LH_C_1_0) -> 
      (if (_lh_notElem_arg1_0 = _lh_notElem_LH_C_0_0) then
        false
      else
        ((notElem_lh__d1__d2 _lh_notElem_arg1_0) _lh_notElem_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec deleteBy_lh__d1__d2 _lh_deleteBy_arg1_0 _lh_deleteBy_arg2_0 _lh_deleteBy_arg3_0 =
  (match _lh_deleteBy_arg3_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_deleteBy_LH_C_0_0, _lh_deleteBy_LH_C_1_0) -> 
      (if ((_lh_deleteBy_arg1_0 _lh_deleteBy_arg2_0) _lh_deleteBy_LH_C_0_0) then
        _lh_deleteBy_LH_C_1_0
      else
        (`LH_C(_lh_deleteBy_LH_C_0_0, (((deleteBy_lh__d1__d2 _lh_deleteBy_arg1_0) _lh_deleteBy_arg2_0) _lh_deleteBy_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1__d2 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_lh__d1__d2 t_7) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec filter_lh__d3__d3 f_2_5 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_5, t_1_6) -> 
      (if (f_2_5 h_1_5) then
        (`LH_C(h_1_5, ((filter_lh__d3__d3 f_2_5) t_1_6)))
      else
        ((filter_lh__d3__d3 f_2_5) t_1_6))
    | `LH_N -> 
      (`LH_N));;
let rec nubBy_lh__d1__d2 _lh_nubBy_arg1_3 _lh_nubBy_arg2_3 =
  (match _lh_nubBy_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nubBy_LH_C_0_3, _lh_nubBy_LH_C_1_3) -> 
      (`LH_C(_lh_nubBy_LH_C_0_3, ((nubBy_lh__d1__d2 _lh_nubBy_arg1_3) ((filter_lh__d3__d3 (fun y_3 -> 
        (not ((_lh_nubBy_arg1_3 _lh_nubBy_LH_C_0_3) y_3)))) _lh_nubBy_LH_C_1_3))))
    | _ -> 
      (failwith "error"));;
let rec foldl_lh__d1__d2 f_3_7 i_0 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_2_7, t_2_8) -> 
      (((foldl_lh__d1__d2 f_3_7) ((f_3_7 i_0) h_2_7)) t_2_8)
    | `LH_N -> 
      i_0);;
let rec flip_lh__d1__d2 _lh_flip_arg1_4 _lh_flip_arg2_4 _lh_flip_arg3_4 =
  ((_lh_flip_arg1_4 _lh_flip_arg3_4) _lh_flip_arg2_4);;
let rec unionBy_lh__d1__d2 _lh_unionBy_arg1_0 _lh_unionBy_arg2_0 _lh_unionBy_arg3_0 =
  ((mappend_lh__d1__d2 _lh_unionBy_arg2_0) (((foldl_lh__d1__d2 (flip_lh__d1__d2 (deleteBy_lh__d1__d2 _lh_unionBy_arg1_0))) ((nubBy_lh__d1__d2 _lh_unionBy_arg1_0) _lh_unionBy_arg3_0)) _lh_unionBy_arg2_0));;
let rec union_lh__d1__d1 _lh_union_arg1_1 _lh_union_arg2_1 =
  (((unionBy_lh__d1__d2 (fun a_6 b_3 -> 
    (a_6 = b_3))) _lh_union_arg1_1) _lh_union_arg2_1);;
let rec maxLevel_lh__d1__d1 _lh_maxLevel_arg1_1_1 =
  (match _lh_maxLevel_arg1_1_1 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_1_1, _lh_maxLevel_LH_C_1_9) -> 
      (match _lh_maxLevel_LH_C_0_1_1 with
        | `Assign(_lh_maxLevel_Assign_0_1_1, _lh_maxLevel_Assign_1_1_1) -> 
          _lh_maxLevel_Assign_0_1_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d2__d1 f_6_5 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_4_1, t_4_2) -> 
      (let rec _lh_combine_LH_C_1_2 = ((map_lh__d2__d1 f_6_5) t_4_2) in
        (let rec _lh_combine_LH_C_0_2 = (f_6_5 h_4_1) in
          (fun _lh_combine_arg2_9 -> 
            (match _lh_combine_LH_C_0_2 with
              | `LH_P2(_lh_combine_LH_P2_0_2, _lh_combine_LH_P2_1_2) -> 
                (match _lh_combine_LH_P2_1_2 with
                  | `Known(_lh_combine_Known_0_2) -> 
                    (if ((notElem_lh__d1__d2 (maxLevel_lh__d1__d1 _lh_combine_LH_P2_0_2)) _lh_combine_Known_0_2) then
                      _lh_combine_Known_0_2
                    else
                      ((combine_lh__d1__d3 _lh_combine_LH_C_1_2) ((union_lh__d1__d1 _lh_combine_Known_0_2) _lh_combine_arg2_9)))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
    | `LH_N -> 
      (fun _lh_combine_arg2_1_0 -> 
        _lh_combine_arg2_1_0));;
let rec combine_lh__d1__d2 _lh_combine_arg1_1 _lh_combine_arg2_1 =
  (_lh_combine_arg1_1 _lh_combine_arg2_1);;
let rec checkComplete_lh__d2__d1 _lh_checkComplete_arg1_0 _lh_checkComplete_arg2_0 =
  (if ((complete_lh__d2__d1 _lh_checkComplete_arg1_0) _lh_checkComplete_arg2_0) then
    (let rec _lh_f_Known_0_0 = (`LH_N) in
      (fun _lh_f_LH_P2_0_0 _lh_f_arg2_0 -> 
        (`Node((`LH_P2(_lh_f_LH_P2_0_0, (`Known(_lh_f_Known_0_0)))), _lh_f_arg2_0))))
  else
    (fun _lh_f_LH_P2_0_1 _lh_f_arg2_1 -> 
      (`Node((`LH_P2(_lh_f_LH_P2_0_1, (`Known(((combine_lh__d1__d2 ((map_lh__d2__d1 label_lh__d1__d1) _lh_f_arg2_1)) (`LH_N)))))), _lh_f_arg2_1))));;
let rec label_lh__d1__d0 _lh_label_arg1_3 =
  (match _lh_label_arg1_3 with
    | `Node(_lh_label_Node_0_3, _lh_label_Node_1_3) -> 
      _lh_label_Node_0_3
    | _ -> 
      (failwith "error"));;
let rec combine_lh__d1__d0 _lh_combine_arg1_3 _lh_combine_arg2_3 =
  (_lh_combine_arg1_3 _lh_combine_arg2_3);;
let rec maxLevel_lh__d1__d0 _lh_maxLevel_arg1_0 =
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
let rec notElem_lh__d1__d1 _lh_notElem_arg1_1 _lh_notElem_arg2_1 =
  (match _lh_notElem_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_notElem_LH_C_0_1, _lh_notElem_LH_C_1_1) -> 
      (if (_lh_notElem_arg1_1 = _lh_notElem_LH_C_0_1) then
        false
      else
        ((notElem_lh__d1__d1 _lh_notElem_arg1_1) _lh_notElem_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec flip_lh__d1__d1 _lh_flip_arg1_2 _lh_flip_arg2_2 _lh_flip_arg3_2 =
  ((_lh_flip_arg1_2 _lh_flip_arg3_2) _lh_flip_arg2_2);;
let rec deleteBy_lh__d1__d1 _lh_deleteBy_arg1_1 _lh_deleteBy_arg2_1 _lh_deleteBy_arg3_1 =
  (match _lh_deleteBy_arg3_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_deleteBy_LH_C_0_1, _lh_deleteBy_LH_C_1_1) -> 
      (if ((_lh_deleteBy_arg1_1 _lh_deleteBy_arg2_1) _lh_deleteBy_LH_C_0_1) then
        _lh_deleteBy_LH_C_1_1
      else
        (`LH_C(_lh_deleteBy_LH_C_0_1, (((deleteBy_lh__d1__d1 _lh_deleteBy_arg1_1) _lh_deleteBy_arg2_1) _lh_deleteBy_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec filter_lh__d3__d2 f_9_8 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_5_4, t_5_5) -> 
      (if (f_9_8 h_5_4) then
        (`LH_C(h_5_4, ((filter_lh__d3__d2 f_9_8) t_5_5)))
      else
        ((filter_lh__d3__d2 f_9_8) t_5_5))
    | `LH_N -> 
      (`LH_N));;
let rec nubBy_lh__d1__d1 _lh_nubBy_arg1_4 _lh_nubBy_arg2_4 =
  (match _lh_nubBy_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nubBy_LH_C_0_4, _lh_nubBy_LH_C_1_4) -> 
      (`LH_C(_lh_nubBy_LH_C_0_4, ((nubBy_lh__d1__d1 _lh_nubBy_arg1_4) ((filter_lh__d3__d2 (fun y_4 -> 
        (not ((_lh_nubBy_arg1_4 _lh_nubBy_LH_C_0_4) y_4)))) _lh_nubBy_LH_C_1_4))))
    | _ -> 
      (failwith "error"));;
let rec foldl_lh__d1__d1 f_6_7 i_2 ls_4_5 =
  (match ls_4_5 with
    | `LH_C(h_4_2, t_4_3) -> 
      (((foldl_lh__d1__d1 f_6_7) ((f_6_7 i_2) h_4_2)) t_4_3)
    | `LH_N -> 
      i_2);;
let rec mappend_lh__d1__d1 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_4_3, t_4_4) -> 
      (`LH_C(h_4_3, ((mappend_lh__d1__d1 t_4_4) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec unionBy_lh__d1__d1 _lh_unionBy_arg1_1 _lh_unionBy_arg2_1 _lh_unionBy_arg3_1 =
  ((mappend_lh__d1__d1 _lh_unionBy_arg2_1) (((foldl_lh__d1__d1 (flip_lh__d1__d1 (deleteBy_lh__d1__d1 _lh_unionBy_arg1_1))) ((nubBy_lh__d1__d1 _lh_unionBy_arg1_1) _lh_unionBy_arg3_1)) _lh_unionBy_arg2_1));;
let rec union_lh__d1__d0 _lh_union_arg1_3 _lh_union_arg2_3 =
  (((unionBy_lh__d1__d1 (fun a_1_3 b_1_0 -> 
    (a_1_3 = b_1_0))) _lh_union_arg1_3) _lh_union_arg2_3);;
let rec combine_lh__d1__d1 _lh_combine_arg1_5 _lh_combine_arg2_1_1 =
  (_lh_combine_arg1_5 _lh_combine_arg2_1_1);;
let rec map_lh__d2__d0 f_6_4 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_3_9, t_4_0) -> 
      (let rec _lh_combine_LH_C_1_1 = ((map_lh__d2__d0 f_6_4) t_4_0) in
        (let rec _lh_combine_LH_C_0_1 = (f_6_4 h_3_9) in
          (fun _lh_combine_arg2_7 -> 
            (match _lh_combine_LH_C_0_1 with
              | `LH_P2(_lh_combine_LH_P2_0_1, _lh_combine_LH_P2_1_1) -> 
                (match _lh_combine_LH_P2_1_1 with
                  | `Known(_lh_combine_Known_0_1) -> 
                    (if ((notElem_lh__d1__d1 (maxLevel_lh__d1__d0 _lh_combine_LH_P2_0_1)) _lh_combine_Known_0_1) then
                      _lh_combine_Known_0_1
                    else
                      ((combine_lh__d1__d1 _lh_combine_LH_C_1_1) ((union_lh__d1__d0 _lh_combine_Known_0_1) _lh_combine_arg2_7)))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
    | `LH_N -> 
      (fun _lh_combine_arg2_8 -> 
        _lh_combine_arg2_8));;
let rec maxLevel_lh__d4__d3 _lh_maxLevel_arg1_1_0 =
  (match _lh_maxLevel_arg1_1_0 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_1_0, _lh_maxLevel_LH_C_1_8) -> 
      (match _lh_maxLevel_LH_C_0_1_0 with
        | `Assign(_lh_maxLevel_Assign_0_1_0, _lh_maxLevel_Assign_1_1_0) -> 
          _lh_maxLevel_Assign_0_1_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec complete_lh__d2__d0 _lh_complete_arg1_5 _lh_complete_arg2_5 =
  (match _lh_complete_arg1_5 with
    | `CSP(_lh_complete_CSP_0_5, _lh_complete_CSP_1_5, _lh_complete_CSP_2_5) -> 
      ((maxLevel_lh__d4__d3 _lh_complete_arg2_5) = _lh_complete_CSP_0_5)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d2__d0 _lh_checkComplete_arg1_2 _lh_checkComplete_arg2_2 =
  (if ((complete_lh__d2__d0 _lh_checkComplete_arg1_2) _lh_checkComplete_arg2_2) then
    (let rec _lh_f_Known_0_2 = (`LH_N) in
      (fun _lh_f_LH_P2_0_4 _lh_f_arg2_5 -> 
        (`Node((`LH_P2(_lh_f_LH_P2_0_4, (`Known(_lh_f_Known_0_2)))), _lh_f_arg2_5))))
  else
    (fun _lh_f_LH_P2_0_5 _lh_f_arg2_6 -> 
      (`Node((`LH_P2(_lh_f_LH_P2_0_5, (`Known(((combine_lh__d1__d0 ((map_lh__d2__d0 label_lh__d1__d0) _lh_f_arg2_6)) (`LH_N)))))), _lh_f_arg2_6))));;
let rec level_lh__d3__d0 _lh_level_arg1_3 =
  (match _lh_level_arg1_3 with
    | `Assign(_lh_level_Assign_0_3, _lh_level_Assign_1_3) -> 
      _lh_level_Assign_0_3
    | _ -> 
      (failwith "error"));;
let rec filter_lh__d3__d4 f_7_3 ls_4_8 =
  (ls_4_8 f_7_3);;
let rec reverse_helper_lh__d1__d1 ls_6 a_0 =
  (match ls_6 with
    | `LH_C(h_2, t_2) -> 
      ((reverse_helper_lh__d1__d1 t_2) (let rec t_3 = a_0 in
        (let rec h_3 = h_2 in
          (fun f_5 -> 
            (if (f_5 h_3) then
              (`LH_C(h_3, ((filter_lh__d3__d4 f_5) t_3)))
            else
              ((filter_lh__d3__d4 f_5) t_3))))))
    | `LH_N -> 
      a_0);;
let rec reverse_lh__d2__d1 ls_2_8 =
  ((reverse_helper_lh__d1__d1 ls_2_8) (fun f_3_8 -> 
    (`LH_N)));;
let rec level_lh__d4__d2 _lh_level_arg1_5 =
  (match _lh_level_arg1_5 with
    | `Assign(_lh_level_Assign_0_5, _lh_level_Assign_1_5) -> 
      _lh_level_Assign_0_5
    | _ -> 
      (failwith "error"));;
let rec earliestInconsistency_lh__d2__d0 _lh_earliestInconsistency_arg1_1 _lh_earliestInconsistency_arg2_1 =
  (match _lh_earliestInconsistency_arg1_1 with
    | `CSP(_lh_earliestInconsistency_CSP_0_1, _lh_earliestInconsistency_CSP_1_1, _lh_earliestInconsistency_CSP_2_1) -> 
      (match _lh_earliestInconsistency_arg2_1 with
        | `LH_N -> 
          (fun _lh_bt_arg1_4 s_4 -> 
            ((checkComplete_lh__d2__d0 _lh_bt_arg1_4) s_4))
        | `LH_C(_lh_earliestInconsistency_LH_C_0_2, _lh_earliestInconsistency_LH_C_1_2) -> 
          (let rec _lh_matchIdent_2 = ((filter_lh__d3__d4 (fun _lh_funcomp_x_1_1 -> 
            (not ((_lh_earliestInconsistency_CSP_2_1 _lh_earliestInconsistency_LH_C_0_2) _lh_funcomp_x_1_1)))) (reverse_lh__d2__d1 _lh_earliestInconsistency_LH_C_1_2)) in
            (match _lh_matchIdent_2 with
              | `LH_N -> 
                (fun _lh_bt_arg1_5 s_5 -> 
                  ((checkComplete_lh__d2__d1 _lh_bt_arg1_5) s_5))
              | `LH_C(_lh_earliestInconsistency_LH_C_0_3, _lh_earliestInconsistency_LH_C_1_3) -> 
                (let rec _lh_bt_Just_0_1 = (let rec _lh_bt_LH_P2_1_1 = (level_lh__d4__d2 _lh_earliestInconsistency_LH_C_0_3) in
                  (let rec _lh_bt_LH_P2_0_1 = (level_lh__d3__d0 _lh_earliestInconsistency_LH_C_0_2) in
                    (let rec _lh_f_Known_0_3 = (`LH_C(_lh_bt_LH_P2_0_1, (`LH_C(_lh_bt_LH_P2_1_1, (`LH_N))))) in
                      (fun _lh_f_LH_P2_0_1_2 _lh_f_arg2_7 -> 
                        (`Node((`LH_P2(_lh_f_LH_P2_0_1_2, (`Known(_lh_f_Known_0_3)))), _lh_f_arg2_7)))))) in
                  (fun _lh_bt_arg1_6 s_6 -> 
                    _lh_bt_Just_0_1))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec bt_lh__d2__d0 _lh_bt_arg1_0 =
  (let rec f_1_0 = (fun s_0 -> 
    (let rec _lh_f_LH_P2_1_0 = (let rec _lh_matchIdent_0 = ((earliestInconsistency_lh__d2__d0 _lh_bt_arg1_0) s_0) in
      ((_lh_matchIdent_0 _lh_bt_arg1_0) s_0)) in
      (let rec _lh_f_LH_P2_0_2 = s_0 in
        (fun _lh_f_arg2_3 -> 
          ((_lh_f_LH_P2_1_0 _lh_f_LH_P2_0_2) _lh_f_arg2_3))))) in
    (mapTree_lh__d3__d0 f_1_0));;
let rec bjbt_lh__d1__d0 _lh_bjbt_arg1_0 _lh_funcomp_x_1_5 =
  ((bj_lh__d1__d0 _lh_bjbt_arg1_0) ((bt_lh__d2__d0 _lh_bjbt_arg1_0) _lh_funcomp_x_1_5));;
let rec enumFromTo_lh__d2__d0 a_1_0 b_7 =
  (if (a_1_0 <= b_7) then
    (let rec _lh_listcomp_fun_ls_t_7 = ((enumFromTo_lh__d2__d0 (a_1_0 + 1)) b_7) in
      (fun _lh_listcomp_fun_1_9 -> 
        (`LH_C((`Unknown), (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_7)))))
  else
    (fun _lh_listcomp_fun_2_0 -> 
      (`LH_N)));;
let rec enumFromTo_lh__d1__d0 a_7 b_4 =
  (if (a_7 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo_lh__d1__d0 (a_7 + 1)) b_4) in
      (fun _lh_emptyTable_CSP_1_2 _lh_listcomp_fun_9 -> 
        (`LH_C((let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_5 -> 
          (_lh_listcomp_fun_para_5 _lh_listcomp_fun_1_0)) in
          (_lh_listcomp_fun_1_0 ((enumFromTo_lh__d2__d0 1) _lh_emptyTable_CSP_1_2))), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_4)))))
  else
    (fun _lh_emptyTable_CSP_1_3 _lh_listcomp_fun_1_1 -> 
      (`LH_N)));;
let rec emptyTable_lh__d1__d0 _lh_emptyTable_arg1_1 =
  (match _lh_emptyTable_arg1_1 with
    | `CSP(_lh_emptyTable_CSP_0_1, _lh_emptyTable_CSP_1_1, _lh_emptyTable_CSP_2_1) -> 
      (`LH_C((`LH_N), (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_2 -> 
        ((_lh_listcomp_fun_para_2 _lh_emptyTable_CSP_1_1) _lh_listcomp_fun_6)) in
        (_lh_listcomp_fun_6 ((enumFromTo_lh__d1__d0 1) _lh_emptyTable_CSP_0_1)))))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d4__d1 f_9 ls_8 =
  (ls_8 f_9);;
let rec mapTree_lh__d4__d0 _lh_mapTree_arg1_5 _lh_mapTree_arg2_5 =
  (_lh_mapTree_arg2_5 _lh_mapTree_arg1_5);;
let rec map_lh__d1_d1__d0 f_1_5 ls_1_3 =
  (ls_1_3 f_1_5);;
let rec maxLevel_lh__d4__d5 _lh_maxLevel_arg1_3 =
  (_lh_maxLevel_arg1_3 99);;
let rec complete_lh__d3__d0 _lh_complete_arg1_4 _lh_complete_arg2_4 =
  (match _lh_complete_arg1_4 with
    | `CSP(_lh_complete_CSP_0_4, _lh_complete_CSP_1_4, _lh_complete_CSP_2_4) -> 
      ((maxLevel_lh__d4__d5 _lh_complete_arg2_4) = _lh_complete_CSP_0_4)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d3__d0 _lh_checkComplete_arg1_4 _lh_checkComplete_arg2_4 =
  (if ((complete_lh__d3__d0 _lh_checkComplete_arg1_4) _lh_checkComplete_arg2_4) then
    (`Known((`LH_N)))
  else
    (`Unknown));;
let rec head_lh__d1__d0 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_2_6, t_2_7) -> 
      h_2_6
    | `LH_N -> 
      (failwith "error"));;
let rec map_lh__d1_d1__d1 f_7_2 ls_4_7 =
  (ls_4_7 f_7_2);;
let rec map_lh__d4__d0 f_1_2 ls_1_0 =
  (ls_1_0 f_1_2);;
let rec map_lh__d3__d0 f_4_9 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_3_2, t_3_3) -> 
      (let rec t_3_4 = ((map_lh__d3__d0 f_4_9) t_3_3) in
        (let rec h_3_3 = (f_4_9 h_3_2) in
          (fun f_5_0 -> 
            (let rec t_3_5 = ((map_lh__d1_d1__d1 f_5_0) t_3_4) in
              (let rec h_3_4 = (f_5_0 h_3_3) in
                (fun f_5_1 -> 
                  (`LH_C((f_5_1 h_3_4), ((map_lh__d4__d0 f_5_1) t_3_5)))))))))
    | `LH_N -> 
      (fun f_5_2 f_5_3 -> 
        (`LH_N)));;
let rec mapTree_lh__d1__d0 _lh_mapTree_arg1_1_2 _lh_mapTree_arg2_8 =
  (_lh_mapTree_arg2_8 _lh_mapTree_arg1_1_2);;
let rec zipWith_lh__d1__d1 f_6_9 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(hx_5, tx_5) -> 
      (((ys_7 f_6_9) hx_5) tx_5)
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_lh__d1__d0 f_7_7 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(hx_9, tx_9) -> 
      (((ys_1_0 f_7_7) hx_9) tx_9)
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_lh__d2__d0 f_9_4 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(hx_1_5, tx_1_5) -> 
      (((ys_1_2 f_9_4) hx_1_5) tx_1_5)
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d5__d0 a_1_4 b_1_1 =
  (if (a_1_4 <= b_1_1) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo_lh__d5__d0 (a_1_4 + 1)) b_1_1) in
      (let rec _lh_listcomp_fun_ls_h_7 = a_1_4 in
        (fun _lh_listcomp_fun_ls_h_8 _lh_listcomp_fun_2_3 -> 
          (let rec ty_3 = (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_9) in
            (let rec hy_3 = (let rec _lh_fillTable_LH_P2_1_1 = _lh_listcomp_fun_ls_h_7 in
              (let rec _lh_fillTable_LH_P2_0_1 = _lh_listcomp_fun_ls_h_8 in
                (fun _lh_fillTable_Assign_0_2 _lh_fillTable_Assign_1_2 _lh_fillTable_CSP_2_2 cs_5 -> 
                  (if ((cs_5 = (`Unknown)) && (not ((_lh_fillTable_CSP_2_2 (`Assign(_lh_fillTable_Assign_0_2, _lh_fillTable_Assign_1_2))) (`Assign(_lh_fillTable_LH_P2_0_1, _lh_fillTable_LH_P2_1_1))))) then
                    (`Known((`LH_C(_lh_fillTable_Assign_0_2, (`LH_C(_lh_fillTable_LH_P2_0_1, (`LH_N)))))))
                  else
                    cs_5)))) in
              (fun f_8_9 hx_1_3 tx_1_3 -> 
                (`LH_C(((f_8_9 hx_1_3) hy_3), (((zipWith_lh__d2__d0 f_8_9) tx_1_3) ty_3)))))))))
  else
    (fun _lh_listcomp_fun_ls_h_9 _lh_listcomp_fun_2_4 f_9_0 hx_1_4 tx_1_4 -> 
      (`LH_N)));;
let rec enumFromTo_lh__d6__d0 a_9 b_6 =
  (if (a_9 <= b_6) then
    (let rec _lh_listcomp_fun_ls_t_6 = ((enumFromTo_lh__d6__d0 (a_9 + 1)) b_6) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_9 in
        (fun _lh_fillTable_CSP_1_2 _lh_listcomp_fun_1_5 -> 
          (let rec ty_1 = (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_6) in
            (let rec hy_1 = (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_7 -> 
              ((_lh_listcomp_fun_para_7 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_1_6)) in
              (_lh_listcomp_fun_1_6 ((enumFromTo_lh__d5__d0 1) _lh_fillTable_CSP_1_2))) in
              (fun f_7_4 hx_7 tx_7 -> 
                (`LH_C(((f_7_4 hx_7) hy_1), (((zipWith_lh__d1__d0 f_7_4) tx_7) ty_1)))))))))
  else
    (fun _lh_fillTable_CSP_1_3 _lh_listcomp_fun_1_7 f_7_5 hx_8 tx_8 -> 
      (`LH_N)));;
let rec zipWith_lh__d2__d1 f_7_1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(hx_6, tx_6) -> 
      (((ys_9 f_7_1) hx_6) tx_6)
    | `LH_N -> 
      (`LH_N));;
let rec fillTable_lh__d1__d0 _lh_fillTable_arg1_1 _lh_fillTable_arg2_1 _lh_fillTable_arg3_1 =
  (match _lh_fillTable_arg1_1 with
    | `LH_N -> 
      _lh_fillTable_arg3_1
    | `LH_C(_lh_fillTable_LH_C_0_1, _lh_fillTable_LH_C_1_1) -> 
      (match _lh_fillTable_LH_C_0_1 with
        | `Assign(_lh_fillTable_Assign_0_3, _lh_fillTable_Assign_1_3) -> 
          (match _lh_fillTable_arg2_1 with
            | `CSP(_lh_fillTable_CSP_0_1, _lh_fillTable_CSP_1_5, _lh_fillTable_CSP_2_3) -> 
              (let rec f_9_2 = (fun cs_6 varval_1 -> 
                (let rec _lh_matchIdent_7 = varval_1 in
                  ((((_lh_matchIdent_7 _lh_fillTable_Assign_0_3) _lh_fillTable_Assign_1_3) _lh_fillTable_CSP_2_3) cs_6))) in
                (((zipWith_lh__d1__d1 (zipWith_lh__d2__d1 f_9_2)) _lh_fillTable_arg3_1) (let rec _lh_listcomp_fun_2_7 = (fun _lh_listcomp_fun_para_9 -> 
                  ((_lh_listcomp_fun_para_9 _lh_fillTable_CSP_1_5) _lh_listcomp_fun_2_7)) in
                  (_lh_listcomp_fun_2_7 ((enumFromTo_lh__d6__d0 (_lh_fillTable_Assign_0_3 + 1)) _lh_fillTable_CSP_0_1)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec value_lh__d1__d0 _lh_value_arg1_1 =
  (match _lh_value_arg1_1 with
    | `Assign(_lh_value_Assign_0_1, _lh_value_Assign_1_1) -> 
      _lh_value_Assign_1_1
    | _ -> 
      (failwith "error"));;
let rec tail_lh__d1__d0 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_1_4, t_1_5) -> 
      t_1_5
    | `LH_N -> 
      (failwith "error"));;
let rec atIndex_lh__d1__d0 n_0 ls_1_9 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match ls_1_9 with
      | `LH_C(h_1_7, t_1_8) -> 
        (if (n_0 = 0) then
          h_1_7
        else
          ((atIndex_lh__d1__d0 (n_0 - 1)) t_1_8))
      | `LH_N -> 
        (failwith "error")));;
let rec cacheChecks_lh__d1__d0 _lh_cacheChecks_arg1_0 _lh_cacheChecks_arg2_0 _lh_cacheChecks_arg3_0 =
  (match _lh_cacheChecks_arg3_0 with
    | `Node(_lh_cacheChecks_Node_0_0, _lh_cacheChecks_Node_1_0) -> 
      (let rec _lh_mapTree_Node_1_2 = ((map_lh__d3__d0 ((cacheChecks_lh__d1__d0 _lh_cacheChecks_arg1_0) (((fillTable_lh__d1__d0 _lh_cacheChecks_Node_0_0) _lh_cacheChecks_arg1_0) (tail_lh__d1__d0 _lh_cacheChecks_arg2_0)))) _lh_cacheChecks_Node_1_0) in
        (let rec _lh_mapTree_Node_0_2 = (let rec _lh_f_LH_P2_1_1 = _lh_cacheChecks_arg2_0 in
          (let rec _lh_f_LH_P2_0_6 = _lh_cacheChecks_Node_0_0 in
            (fun _lh_f_arg1_1 -> 
              (match _lh_f_LH_P2_0_6 with
                | `LH_N -> 
                  (let rec _lh_fst_LH_P2_0_0 = (`LH_P2((`LH_N), (`Unknown))) in
                    _lh_fst_LH_P2_0_0)
                | `LH_C(_lh_f_LH_C_0_0, _lh_f_LH_C_1_0) -> 
                  (let rec tableEntry_0 = ((atIndex_lh__d1__d0 ((value_lh__d1__d0 _lh_f_LH_C_0_0) - 1)) (head_lh__d1__d0 _lh_f_LH_P2_1_1)) in
                    (let rec cs_0 = (if (tableEntry_0 = (`Unknown)) then
                      ((checkComplete_lh__d3__d0 _lh_f_arg1_1) (let rec _lh_maxLevel_LH_C_0_2 = _lh_f_LH_C_0_0 in
                        (fun _lh_dummy_4 -> 
                          (match _lh_maxLevel_LH_C_0_2 with
                            | `Assign(_lh_maxLevel_Assign_0_2, _lh_maxLevel_Assign_1_2) -> 
                              _lh_maxLevel_Assign_0_2
                            | _ -> 
                              (failwith "error")))))
                    else
                      tableEntry_0) in
                      (let rec _lh_fst_LH_P2_0_1 = (`LH_P2((`LH_C(_lh_f_LH_C_0_0, _lh_f_LH_C_1_0)), cs_0)) in
                        _lh_fst_LH_P2_0_1)))
                | _ -> 
                  (failwith "error"))))) in
          (fun _lh_mapTree_arg1_6 -> 
            (let rec _lh_mapTree_Node_1_3 = ((map_lh__d1_d1__d0 (mapTree_lh__d4__d0 _lh_mapTree_arg1_6)) _lh_mapTree_Node_1_2) in
              (let rec _lh_mapTree_Node_0_3 = (_lh_mapTree_arg1_6 _lh_mapTree_Node_0_2) in
                (fun _lh_mapTree_arg1_7 -> 
                  (`Node((_lh_mapTree_arg1_7 _lh_mapTree_Node_0_3), ((map_lh__d4__d1 (mapTree_lh__d1__d0 _lh_mapTree_arg1_7)) _lh_mapTree_Node_1_3)))))))))
    | _ -> 
      (failwith "error"));;
let rec fst_lh__d1__d0 _lh_fst_arg1_0 =
  _lh_fst_arg1_0;;
let rec mapTree_lh__d4__d1 _lh_mapTree_arg1_1 _lh_mapTree_arg2_1 =
  (_lh_mapTree_arg2_1 _lh_mapTree_arg1_1);;
let rec lookupCache_lh__d1__d0 _lh_lookupCache_arg1_1 _lh_lookupCache_arg2_1 =
  (let rec f_6_8 = (fun _lh_f_arg1_5 _lh_f_arg2_1_1 -> 
    (_lh_f_arg2_1_1 _lh_f_arg1_5)) in
    ((mapTree_lh__d4__d1 (f_6_8 _lh_lookupCache_arg1_1)) _lh_lookupCache_arg2_1));;
let rec mapTree_lh__d1__d1 _lh_mapTree_arg1_1_3 _lh_mapTree_arg2_9 =
  (_lh_mapTree_arg2_9 _lh_mapTree_arg1_1_3);;
let rec bm_lh__d1__d0 _lh_bm_arg1_0 _lh_funcomp_x_1_6 =
  ((fun _lh_funcomp_x_1_7 -> 
    ((mapTree_lh__d1__d1 fst_lh__d1__d0) ((lookupCache_lh__d1__d0 _lh_bm_arg1_0) _lh_funcomp_x_1_7))) (((cacheChecks_lh__d1__d0 _lh_bm_arg1_0) (emptyTable_lh__d1__d0 _lh_bm_arg1_0)) _lh_funcomp_x_1_6));;
let rec map_lh__d1__d4 f_9_5 ls_5_5 =
  (ls_5_5 f_9_5);;
let rec map_lh__d1_d4__d0 f_2 ls_3 =
  (ls_3 f_2);;
let rec map_lh__d1_d4__d1 f_1_7 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_1_0, t_1_0) -> 
      (let rec t_1_1 = ((map_lh__d1_d4__d1 f_1_7) t_1_0) in
        (let rec h_1_1 = (f_1_7 h_1_0) in
          (fun f_1_8 -> 
            (`LH_C((f_1_8 h_1_1), ((map_lh__d1_d4__d0 f_1_8) t_1_1))))))
    | `LH_N -> 
      (fun f_1_9 -> 
        (`LH_N)));;
let rec foldTree_lh__d2__d0 _lh_foldTree_arg1_2 _lh_foldTree_arg2_1 =
  (_lh_foldTree_arg2_1 _lh_foldTree_arg1_2);;
let rec mapTree_lh__d7__d0 _lh_mapTree_arg1_0 _lh_mapTree_arg2_0 =
  (match _lh_mapTree_arg2_0 with
    | `Node(_lh_mapTree_Node_0_0, _lh_mapTree_Node_1_0) -> 
      (let rec _lh_foldTree_Node_1_0 = ((map_lh__d1_d4__d1 (mapTree_lh__d7__d0 _lh_mapTree_arg1_0)) _lh_mapTree_Node_1_0) in
        (let rec _lh_foldTree_Node_0_0 = (_lh_mapTree_arg1_0 _lh_mapTree_Node_0_0) in
          (fun _lh_foldTree_arg1_0 -> 
            ((_lh_foldTree_arg1_0 _lh_foldTree_Node_0_0) ((map_lh__d1_d4__d0 (foldTree_lh__d2__d0 _lh_foldTree_arg1_0)) _lh_foldTree_Node_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec level_lh__d4__d0 _lh_level_arg1_0 =
  (match _lh_level_arg1_0 with
    | `Assign(_lh_level_Assign_0_0, _lh_level_Assign_1_0) -> 
      _lh_level_Assign_0_0
    | _ -> 
      (failwith "error"));;
let rec level_lh__d4__d1 _lh_level_arg1_1 =
  (match _lh_level_arg1_1 with
    | `Assign(_lh_level_Assign_0_1, _lh_level_Assign_1_1) -> 
      _lh_level_Assign_0_1
    | _ -> 
      (failwith "error"));;
let rec combine_lh__d2__d0 _lh_combine_arg1_2 _lh_combine_arg2_2 =
  (_lh_combine_arg1_2 _lh_combine_arg2_2);;
let rec label_lh__d2__d0 _lh_label_arg1_1 =
  (match _lh_label_arg1_1 with
    | `Node(_lh_label_Node_0_1, _lh_label_Node_1_1) -> 
      _lh_label_Node_0_1
    | _ -> 
      (failwith "error"));;
let rec knownConflict_lh__d3__d0 _lh_knownConflict_arg1_0 =
  (match _lh_knownConflict_arg1_0 with
    | `Known(_lh_knownConflict_Known_0_0) -> 
      (match _lh_knownConflict_Known_0_0 with
        | `LH_C(_lh_knownConflict_LH_C_0_0, _lh_knownConflict_LH_C_1_0) -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec combine_lh__d2__d1 _lh_combine_arg1_4 _lh_combine_arg2_6 =
  (_lh_combine_arg1_4 _lh_combine_arg2_6);;
let rec maxLevel_lh__d4__d0 _lh_maxLevel_arg1_9 =
  (match _lh_maxLevel_arg1_9 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_9, _lh_maxLevel_LH_C_1_7) -> 
      (match _lh_maxLevel_LH_C_0_9 with
        | `Assign(_lh_maxLevel_Assign_0_9, _lh_maxLevel_Assign_1_9) -> 
          _lh_maxLevel_Assign_0_9
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec filter_lh__d3__d0 f_6 ls_7 =
  (match ls_7 with
    | `LH_C(h_4, t_4) -> 
      (if (f_6 h_4) then
        (`LH_C(h_4, ((filter_lh__d3__d0 f_6) t_4)))
      else
        ((filter_lh__d3__d0 f_6) t_4))
    | `LH_N -> 
      (`LH_N));;
let rec nubBy_lh__d1__d0 _lh_nubBy_arg1_0 _lh_nubBy_arg2_0 =
  (match _lh_nubBy_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nubBy_LH_C_0_0, _lh_nubBy_LH_C_1_0) -> 
      (`LH_C(_lh_nubBy_LH_C_0_0, ((nubBy_lh__d1__d0 _lh_nubBy_arg1_0) ((filter_lh__d3__d0 (fun y_0 -> 
        (not ((_lh_nubBy_arg1_0 _lh_nubBy_LH_C_0_0) y_0)))) _lh_nubBy_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec flip_lh__d1__d0 _lh_flip_arg1_1 _lh_flip_arg2_1 _lh_flip_arg3_1 =
  ((_lh_flip_arg1_1 _lh_flip_arg3_1) _lh_flip_arg2_1);;
let rec mappend_lh__d1__d0 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_1_8, t_1_9) -> 
      (`LH_C(h_1_8, ((mappend_lh__d1__d0 t_1_9) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec deleteBy_lh__d1__d0 _lh_deleteBy_arg1_3 _lh_deleteBy_arg2_3 _lh_deleteBy_arg3_3 =
  (match _lh_deleteBy_arg3_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_deleteBy_LH_C_0_3, _lh_deleteBy_LH_C_1_3) -> 
      (if ((_lh_deleteBy_arg1_3 _lh_deleteBy_arg2_3) _lh_deleteBy_LH_C_0_3) then
        _lh_deleteBy_LH_C_1_3
      else
        (`LH_C(_lh_deleteBy_LH_C_0_3, (((deleteBy_lh__d1__d0 _lh_deleteBy_arg1_3) _lh_deleteBy_arg2_3) _lh_deleteBy_LH_C_1_3))))
    | _ -> 
      (failwith "error"));;
let rec foldl_lh__d1__d0 f_9_7 i_3 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_5_1, t_5_2) -> 
      (((foldl_lh__d1__d0 f_9_7) ((f_9_7 i_3) h_5_1)) t_5_2)
    | `LH_N -> 
      i_3);;
let rec unionBy_lh__d1__d0 _lh_unionBy_arg1_2 _lh_unionBy_arg2_2 _lh_unionBy_arg3_2 =
  ((mappend_lh__d1__d0 _lh_unionBy_arg2_2) (((foldl_lh__d1__d0 (flip_lh__d1__d0 (deleteBy_lh__d1__d0 _lh_unionBy_arg1_2))) ((nubBy_lh__d1__d0 _lh_unionBy_arg1_2) _lh_unionBy_arg3_2)) _lh_unionBy_arg2_2));;
let rec union_lh__d2__d0 _lh_union_arg1_2 _lh_union_arg2_2 =
  (((unionBy_lh__d1__d0 (fun a_1_1 b_8 -> 
    (a_1_1 = b_8))) _lh_union_arg1_2) _lh_union_arg2_2);;
let rec notElem_lh__d1__d0 _lh_notElem_arg1_2 _lh_notElem_arg2_2 =
  (match _lh_notElem_arg2_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_notElem_LH_C_0_2, _lh_notElem_LH_C_1_2) -> 
      (if (_lh_notElem_arg1_2 = _lh_notElem_LH_C_0_2) then
        false
      else
        ((notElem_lh__d1__d0 _lh_notElem_arg1_2) _lh_notElem_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d8__d0 f_3_5 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_5, t_2_6) -> 
      (let rec _lh_combine_LH_C_1_0 = ((map_lh__d8__d0 f_3_5) t_2_6) in
        (let rec _lh_combine_LH_C_0_0 = (f_3_5 h_2_5) in
          (fun _lh_combine_arg2_4 -> 
            (match _lh_combine_LH_C_0_0 with
              | `LH_P2(_lh_combine_LH_P2_0_0, _lh_combine_LH_P2_1_0) -> 
                (match _lh_combine_LH_P2_1_0 with
                  | `Known(_lh_combine_Known_0_0) -> 
                    (if ((notElem_lh__d1__d0 (maxLevel_lh__d4__d0 _lh_combine_LH_P2_0_0)) _lh_combine_Known_0_0) then
                      _lh_combine_Known_0_0
                    else
                      ((combine_lh__d2__d1 _lh_combine_LH_C_1_0) ((union_lh__d2__d0 _lh_combine_Known_0_0) _lh_combine_arg2_4)))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
    | `LH_N -> 
      (fun _lh_combine_arg2_5 -> 
        _lh_combine_arg2_5));;
let rec maxLevel_lh__d4__d2 _lh_maxLevel_arg1_1_2 =
  (match _lh_maxLevel_arg1_1_2 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_1_2, _lh_maxLevel_LH_C_1_1_0) -> 
      (match _lh_maxLevel_LH_C_0_1_2 with
        | `Assign(_lh_maxLevel_Assign_0_1_2, _lh_maxLevel_Assign_1_1_2) -> 
          _lh_maxLevel_Assign_0_1_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec complete_lh__d4__d1 _lh_complete_arg1_6 _lh_complete_arg2_6 =
  (match _lh_complete_arg1_6 with
    | `CSP(_lh_complete_CSP_0_6, _lh_complete_CSP_1_6, _lh_complete_CSP_2_6) -> 
      ((maxLevel_lh__d4__d2 _lh_complete_arg2_6) = _lh_complete_CSP_0_6)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d5__d1 _lh_checkComplete_arg1_5 _lh_checkComplete_arg2_5 =
  (if ((complete_lh__d4__d1 _lh_checkComplete_arg1_5) _lh_checkComplete_arg2_5) then
    (let rec _lh_f_Known_0_4 = (`LH_N) in
      (fun _lh_f_LH_P2_0_1_3 _lh_f_arg2_8 -> 
        (`Node((`LH_P2(_lh_f_LH_P2_0_1_3, (`Known(_lh_f_Known_0_4)))), _lh_f_arg2_8))))
  else
    (fun _lh_f_LH_P2_0_1_4 _lh_f_arg2_9 -> 
      (let rec cs'_2 = (`Known(((combine_lh__d2__d0 ((map_lh__d8__d0 label_lh__d2__d0) _lh_f_arg2_9)) (`LH_N)))) in
        (if (knownConflict_lh__d3__d0 cs'_2) then
          (`Node((`LH_P2(_lh_f_LH_P2_0_1_4, cs'_2)), (`LH_N)))
        else
          (`Node((`LH_P2(_lh_f_LH_P2_0_1_4, cs'_2)), _lh_f_arg2_9))))));;
let rec filter_lh__d3__d1 f_5_4 ls_3_6 =
  (ls_3_6 f_5_4);;
let rec reverse_helper_lh__d1__d0 ls_5_4 a_1_7 =
  (match ls_5_4 with
    | `LH_C(h_4_8, t_4_9) -> 
      ((reverse_helper_lh__d1__d0 t_4_9) (let rec t_5_0 = a_1_7 in
        (let rec h_4_9 = h_4_8 in
          (fun f_9_3 -> 
            (if (f_9_3 h_4_9) then
              (`LH_C(h_4_9, ((filter_lh__d3__d1 f_9_3) t_5_0)))
            else
              ((filter_lh__d3__d1 f_9_3) t_5_0))))))
    | `LH_N -> 
      a_1_7);;
let rec reverse_lh__d2__d0 ls_4_4 =
  ((reverse_helper_lh__d1__d0 ls_4_4) (fun f_6_6 -> 
    (`LH_N)));;
let rec maxLevel_lh__d4__d1 _lh_maxLevel_arg1_8 =
  (match _lh_maxLevel_arg1_8 with
    | `LH_N -> 
      0
    | `LH_C(_lh_maxLevel_LH_C_0_8, _lh_maxLevel_LH_C_1_6) -> 
      (match _lh_maxLevel_LH_C_0_8 with
        | `Assign(_lh_maxLevel_Assign_0_8, _lh_maxLevel_Assign_1_8) -> 
          _lh_maxLevel_Assign_0_8
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec complete_lh__d4__d0 _lh_complete_arg1_0 _lh_complete_arg2_0 =
  (match _lh_complete_arg1_0 with
    | `CSP(_lh_complete_CSP_0_0, _lh_complete_CSP_1_0, _lh_complete_CSP_2_0) -> 
      ((maxLevel_lh__d4__d1 _lh_complete_arg2_0) = _lh_complete_CSP_0_0)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh__d5__d0 _lh_checkComplete_arg1_7 _lh_checkComplete_arg2_7 =
  (if ((complete_lh__d4__d0 _lh_checkComplete_arg1_7) _lh_checkComplete_arg2_7) then
    (let rec _lh_f_Known_0_5 = (`LH_N) in
      (fun _lh_f_LH_P2_0_1_6 _lh_f_arg2_1_4 -> 
        (`Node((`LH_P2(_lh_f_LH_P2_0_1_6, (`Known(_lh_f_Known_0_5)))), _lh_f_arg2_1_4))))
  else
    (fun _lh_f_LH_P2_0_1_7 _lh_f_arg2_1_5 -> 
      (let rec cs'_3 = (`Known(((combine_lh__d2__d0 ((map_lh__d8__d0 label_lh__d2__d0) _lh_f_arg2_1_5)) (`LH_N)))) in
        (if (knownConflict_lh__d3__d0 cs'_3) then
          (`Node((`LH_P2(_lh_f_LH_P2_0_1_7, cs'_3)), (`LH_N)))
        else
          (`Node((`LH_P2(_lh_f_LH_P2_0_1_7, cs'_3)), _lh_f_arg2_1_5))))));;
let rec earliestInconsistency_lh__d3__d0 _lh_earliestInconsistency_arg1_0 _lh_earliestInconsistency_arg2_0 =
  (match _lh_earliestInconsistency_arg1_0 with
    | `CSP(_lh_earliestInconsistency_CSP_0_0, _lh_earliestInconsistency_CSP_1_0, _lh_earliestInconsistency_CSP_2_0) -> 
      (match _lh_earliestInconsistency_arg2_0 with
        | `LH_N -> 
          (fun _lh_bt_arg1_1 s_1 -> 
            ((checkComplete_lh__d5__d0 _lh_bt_arg1_1) s_1))
        | `LH_C(_lh_earliestInconsistency_LH_C_0_0, _lh_earliestInconsistency_LH_C_1_0) -> 
          (let rec _lh_matchIdent_1 = ((filter_lh__d3__d1 (fun _lh_funcomp_x_9 -> 
            (not ((_lh_earliestInconsistency_CSP_2_0 _lh_earliestInconsistency_LH_C_0_0) _lh_funcomp_x_9)))) (reverse_lh__d2__d0 _lh_earliestInconsistency_LH_C_1_0)) in
            (match _lh_matchIdent_1 with
              | `LH_N -> 
                (fun _lh_bt_arg1_2 s_2 -> 
                  ((checkComplete_lh__d5__d1 _lh_bt_arg1_2) s_2))
              | `LH_C(_lh_earliestInconsistency_LH_C_0_1, _lh_earliestInconsistency_LH_C_1_1) -> 
                (let rec _lh_bt_Just_0_0 = (let rec _lh_bt_LH_P2_1_0 = (level_lh__d4__d0 _lh_earliestInconsistency_LH_C_0_1) in
                  (let rec _lh_bt_LH_P2_0_0 = (level_lh__d4__d1 _lh_earliestInconsistency_LH_C_0_0) in
                    (let rec _lh_f_Known_0_1 = (`LH_C(_lh_bt_LH_P2_0_0, (`LH_C(_lh_bt_LH_P2_1_0, (`LH_N))))) in
                      (fun _lh_f_LH_P2_0_3 _lh_f_arg2_4 -> 
                        (`Node((`LH_P2(_lh_f_LH_P2_0_3, (`Known(_lh_f_Known_0_1)))), _lh_f_arg2_4)))))) in
                  (fun _lh_bt_arg1_3 s_3 -> 
                    _lh_bt_Just_0_0))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec bt_lh__d3__d0 _lh_bt_arg1_1_1 =
  (let rec f_8_5 = (fun s_1_1 -> 
    (let rec _lh_f_LH_P2_1_9 = (let rec _lh_matchIdent_6 = ((earliestInconsistency_lh__d3__d0 _lh_bt_arg1_1_1) s_1_1) in
      ((_lh_matchIdent_6 _lh_bt_arg1_1_1) s_1_1)) in
      (let rec _lh_f_LH_P2_0_1_5 = s_1_1 in
        (fun _lh_f_arg2_1_3 -> 
          ((_lh_f_LH_P2_1_9 _lh_f_LH_P2_0_1_5) _lh_f_arg2_1_3))))) in
    (mapTree_lh__d7__d0 f_8_5));;
let rec bj'_lh__d1__d0 _lh_bj'_arg1_0 =
  (let rec f_7_6 = (fun _lh_f_arg1_6 _lh_f_arg2_1_2 -> 
    (_lh_f_arg1_6 _lh_f_arg2_1_2)) in
    (foldTree_lh__d2__d0 f_7_6));;
let rec bjbt'_lh__d1__d0 _lh_bjbt'_arg1_0 _lh_funcomp_x_1_3 =
  ((bj'_lh__d1__d0 _lh_bjbt'_arg1_0) ((bt_lh__d3__d0 _lh_bjbt'_arg1_0) _lh_funcomp_x_1_3));;
let rec map_lh__d1__d2 f_5_6 ls_3_8 =
  (ls_3_8 f_5_6);;
let rec testConstraints_nofib_lh__d1__d0 _lh_testConstraints_nofib_arg1_0 =
  ((map_lh__d1__d0 (try_lh__d1__d0 _lh_testConstraints_nofib_arg1_0)) (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (fun f_2_9 -> 
    (`LH_N)) in
    (let rec h_2_0 = fc_lh__d1__d0 in
      (fun f_3_0 -> 
        (`LH_C((f_3_0 h_2_0), ((map_lh__d1__d1 f_3_0) t_2_5)))))) in
    (let rec h_2_1 = bjbt'_lh__d1__d0 in
      (fun f_3_1 -> 
        (`LH_C((f_3_1 h_2_1), ((map_lh__d1__d2 f_3_1) t_2_4)))))) in
    (let rec h_2_2 = bjbt_lh__d1__d0 in
      (fun f_3_2 -> 
        (`LH_C((f_3_2 h_2_2), ((map_lh__d1__d3 f_3_2) t_2_3)))))) in
    (let rec h_2_3 = bm_lh__d1__d0 in
      (fun f_3_3 -> 
        (`LH_C((f_3_3 h_2_3), ((map_lh__d1__d4 f_3_3) t_2_2)))))) in
    (let rec h_2_4 = bt_lh__d1__d0 in
      (fun f_3_4 -> 
        (`LH_C((f_3_4 h_2_4), ((map_lh__d1__d5 f_3_4) t_2_1)))))));;
end;;

