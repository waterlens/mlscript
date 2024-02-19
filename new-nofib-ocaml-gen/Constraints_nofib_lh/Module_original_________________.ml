
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end) = struct
let rec maxLevel_lh _lh_maxLevel_arg1_0 =
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
let rec complete_lh _lh_complete_arg1_0 _lh_complete_arg2_0 =
  (match _lh_complete_arg1_0 with
    | `CSP(_lh_complete_CSP_0_0, _lh_complete_CSP_1_0, _lh_complete_CSP_2_0) -> 
      ((maxLevel_lh _lh_complete_arg2_0) = _lh_complete_CSP_0_0)
    | _ -> 
      (failwith "error"));;
let rec checkComplete_lh _lh_checkComplete_arg1_0 _lh_checkComplete_arg2_0 =
  (if ((complete_lh _lh_checkComplete_arg1_0) _lh_checkComplete_arg2_0) then
    (`Known((`LH_N)))
  else
    (`Unknown));;
let rec filter_lh f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (if (f_1 h_1) then
        (`LH_C(h_1, ((filter_lh f_1) t_1)))
      else
        ((filter_lh f_1) t_1))
    | `LH_N -> 
      (`LH_N));;
let rec level_lh _lh_level_arg1_0 =
  (match _lh_level_arg1_0 with
    | `Assign(_lh_level_Assign_0_0, _lh_level_Assign_1_0) -> 
      _lh_level_Assign_0_0
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_lh ls_8 a_1 =
  (match ls_8 with
    | `LH_C(h_9, t_9) -> 
      ((reverse_helper_lh t_9) (`LH_C(h_9, a_1)))
    | `LH_N -> 
      a_1);;
let rec reverse_lh ls_7 =
  ((reverse_helper_lh ls_7) (`LH_N));;
let rec earliestInconsistency_lh _lh_earliestInconsistency_arg1_0 _lh_earliestInconsistency_arg2_0 =
  (match _lh_earliestInconsistency_arg1_0 with
    | `CSP(_lh_earliestInconsistency_CSP_0_0, _lh_earliestInconsistency_CSP_1_0, _lh_earliestInconsistency_CSP_2_0) -> 
      (match _lh_earliestInconsistency_arg2_0 with
        | `LH_N -> 
          (`Nothing)
        | `LH_C(_lh_earliestInconsistency_LH_C_0_0, _lh_earliestInconsistency_LH_C_1_0) -> 
          (let rec _lh_matchIdent_1 = ((filter_lh (fun _lh_funcomp_x_6 -> 
            (not ((_lh_earliestInconsistency_CSP_2_0 _lh_earliestInconsistency_LH_C_0_0) _lh_funcomp_x_6)))) (reverse_lh _lh_earliestInconsistency_LH_C_1_0)) in
            (match _lh_matchIdent_1 with
              | `LH_N -> 
                (`Nothing)
              | `LH_C(_lh_earliestInconsistency_LH_C_0_1, _lh_earliestInconsistency_LH_C_1_1) -> 
                (`Just((`LH_P2((level_lh _lh_earliestInconsistency_LH_C_0_0), (level_lh _lh_earliestInconsistency_LH_C_0_1)))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mapTree_lh _lh_mapTree_arg1_0 _lh_mapTree_arg2_0 =
  (match _lh_mapTree_arg2_0 with
    | `Node(_lh_mapTree_Node_0_0, _lh_mapTree_Node_1_0) -> 
      (`Node((_lh_mapTree_arg1_0 _lh_mapTree_Node_0_0), ((map_lh (mapTree_lh _lh_mapTree_arg1_0)) _lh_mapTree_Node_1_0)))
    | _ -> 
      (failwith "error"));;
let rec bt_lh _lh_bt_arg1_0 =
  (let rec f_4 = (fun s_0 -> 
    (`LH_P2(s_0, (let rec _lh_matchIdent_0 = ((earliestInconsistency_lh _lh_bt_arg1_0) s_0) in
      (match _lh_matchIdent_0 with
        | `Nothing -> 
          ((checkComplete_lh _lh_bt_arg1_0) s_0)
        | `Just(_lh_bt_Just_0_0) -> 
          (match _lh_bt_Just_0_0 with
            | `LH_P2(_lh_bt_LH_P2_0_0, _lh_bt_LH_P2_1_0) -> 
              (`Known((`LH_C(_lh_bt_LH_P2_0_0, (`LH_C(_lh_bt_LH_P2_1_0, (`LH_N)))))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))))) in
    (mapTree_lh f_4));;
let rec label_lh _lh_label_arg1_0 =
  (match _lh_label_arg1_0 with
    | `Node(_lh_label_Node_0_0, _lh_label_Node_1_0) -> 
      _lh_label_Node_0_0
    | _ -> 
      (failwith "error"));;
let rec flip_lh _lh_flip_arg1_0 _lh_flip_arg2_0 _lh_flip_arg3_0 =
  ((_lh_flip_arg1_0 _lh_flip_arg3_0) _lh_flip_arg2_0);;
let rec deleteBy_lh _lh_deleteBy_arg1_0 _lh_deleteBy_arg2_0 _lh_deleteBy_arg3_0 =
  (match _lh_deleteBy_arg3_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_deleteBy_LH_C_0_0, _lh_deleteBy_LH_C_1_0) -> 
      (if ((_lh_deleteBy_arg1_0 _lh_deleteBy_arg2_0) _lh_deleteBy_LH_C_0_0) then
        _lh_deleteBy_LH_C_1_0
      else
        (`LH_C(_lh_deleteBy_LH_C_0_0, (((deleteBy_lh _lh_deleteBy_arg1_0) _lh_deleteBy_arg2_0) _lh_deleteBy_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec foldl_lh f_2 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (((foldl_lh f_2) ((f_2 i_0) h_2)) t_2)
    | `LH_N -> 
      i_0);;
let rec mappend_lh xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh t_6) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec nubBy_lh _lh_nubBy_arg1_0 _lh_nubBy_arg2_0 =
  (match _lh_nubBy_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nubBy_LH_C_0_0, _lh_nubBy_LH_C_1_0) -> 
      (`LH_C(_lh_nubBy_LH_C_0_0, ((nubBy_lh _lh_nubBy_arg1_0) ((filter_lh (fun y_0 -> 
        (not ((_lh_nubBy_arg1_0 _lh_nubBy_LH_C_0_0) y_0)))) _lh_nubBy_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec unionBy_lh _lh_unionBy_arg1_0 _lh_unionBy_arg2_0 _lh_unionBy_arg3_0 =
  ((mappend_lh _lh_unionBy_arg2_0) (((foldl_lh (flip_lh (deleteBy_lh _lh_unionBy_arg1_0))) ((nubBy_lh _lh_unionBy_arg1_0) _lh_unionBy_arg3_0)) _lh_unionBy_arg2_0));;
let rec union_lh _lh_union_arg1_0 _lh_union_arg2_0 =
  (((unionBy_lh (fun a_2 b_1 -> 
    (a_2 = b_1))) _lh_union_arg1_0) _lh_union_arg2_0);;
let rec notElem_lh _lh_notElem_arg1_0 _lh_notElem_arg2_0 =
  (match _lh_notElem_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_notElem_LH_C_0_0, _lh_notElem_LH_C_1_0) -> 
      (if (_lh_notElem_arg1_0 = _lh_notElem_LH_C_0_0) then
        false
      else
        ((notElem_lh _lh_notElem_arg1_0) _lh_notElem_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec combine_lh _lh_combine_arg1_0 _lh_combine_arg2_0 =
  (match _lh_combine_arg1_0 with
    | `LH_N -> 
      _lh_combine_arg2_0
    | `LH_C(_lh_combine_LH_C_0_0, _lh_combine_LH_C_1_0) -> 
      (match _lh_combine_LH_C_0_0 with
        | `LH_P2(_lh_combine_LH_P2_0_0, _lh_combine_LH_P2_1_0) -> 
          (match _lh_combine_LH_P2_1_0 with
            | `Known(_lh_combine_Known_0_0) -> 
              (if ((notElem_lh (maxLevel_lh _lh_combine_LH_P2_0_0)) _lh_combine_Known_0_0) then
                _lh_combine_Known_0_0
              else
                ((combine_lh _lh_combine_LH_C_1_0) ((union_lh _lh_combine_Known_0_0) _lh_combine_arg2_0)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec foldTree_lh _lh_foldTree_arg1_0 _lh_foldTree_arg2_0 =
  (match _lh_foldTree_arg2_0 with
    | `Node(_lh_foldTree_Node_0_0, _lh_foldTree_Node_1_0) -> 
      ((_lh_foldTree_arg1_0 _lh_foldTree_Node_0_0) ((map_lh (foldTree_lh _lh_foldTree_arg1_0)) _lh_foldTree_Node_1_0))
    | _ -> 
      (failwith "error"));;
let rec bj_lh _lh_bj_arg1_0 =
  (let rec f_5 = (fun _lh_f_arg1_0 _lh_f_arg2_0 -> 
    (match _lh_f_arg1_0 with
      | `LH_P2(_lh_f_LH_P2_0_0, _lh_f_LH_P2_1_0) -> 
        (match _lh_f_LH_P2_1_0 with
          | `Known(_lh_f_Known_0_0) -> 
            (`Node((`LH_P2(_lh_f_LH_P2_0_0, (`Known(_lh_f_Known_0_0)))), _lh_f_arg2_0))
          | `Unknown -> 
            (`Node((`LH_P2(_lh_f_LH_P2_0_0, (`Known(((combine_lh ((map_lh label_lh) _lh_f_arg2_0)) (`LH_N)))))), _lh_f_arg2_0))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))) in
    (foldTree_lh f_5));;
let rec bjbt_lh _lh_bjbt_arg1_0 _lh_funcomp_x_3 =
  ((bj_lh _lh_bjbt_arg1_0) ((bt_lh _lh_bjbt_arg1_0) _lh_funcomp_x_3));;
let rec abs_lh _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 > 0) then
    _lh_abs_arg1_0
  else
    (0 - _lh_abs_arg1_0));;
let rec safe_lh _lh_safe_arg1_0 _lh_safe_arg2_0 =
  (match _lh_safe_arg1_0 with
    | `Assign(_lh_safe_Assign_0_0, _lh_safe_Assign_1_0) -> 
      (match _lh_safe_arg2_0 with
        | `Assign(_lh_safe_Assign_0_1, _lh_safe_Assign_1_1) -> 
          ((_lh_safe_Assign_1_0 <> _lh_safe_Assign_1_1) && ((abs_lh (_lh_safe_Assign_0_0 - _lh_safe_Assign_0_1)) <> (abs_lh (_lh_safe_Assign_1_0 - _lh_safe_Assign_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec queens_lh _lh_queens_arg1_0 =
  (`CSP(_lh_queens_arg1_0, _lh_queens_arg1_0, safe_lh));;
let rec length_lh ls_5 =
  (match ls_5 with
    | `LH_C(h_5, t_5) -> 
      (1 + (length_lh t_5))
    | `LH_N -> 
      0);;
let rec filterTree_lh _lh_filterTree_arg1_0 =
  (let rec f_8 = (fun a_3 cs_0 -> 
    (`Node(a_3, ((filter_lh (fun _lh_funcomp_x_8 -> 
      (_lh_filterTree_arg1_0 (label_lh _lh_funcomp_x_8)))) cs_0)))) in
    (foldTree_lh f_8));;
let rec prune_lh _lh_prune_arg1_0 =
  (filterTree_lh (fun _lh_funcomp_x_2 -> 
    (not (_lh_prune_arg1_0 _lh_funcomp_x_2))));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_8, t_8) -> 
      ((mappend_lh h_8) (concat_lh t_8))
    | `LH_N -> 
      (`LH_N));;
let rec leaves_lh _lh_leaves_arg1_0 =
  (match _lh_leaves_arg1_0 with
    | `Node(_lh_leaves_Node_0_0, _lh_leaves_Node_1_0) -> 
      (match _lh_leaves_Node_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_leaves_Node_0_0, (`LH_N)))
        | _ -> 
          (concat_lh ((map_lh leaves_lh) _lh_leaves_Node_1_0)))
    | _ -> 
      (failwith "error"));;
let rec snd_lh _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec initTree_lh _lh_initTree_arg1_0 _lh_initTree_arg2_0 =
  (`Node(_lh_initTree_arg2_0, ((map_lh (initTree_lh _lh_initTree_arg1_0)) (_lh_initTree_arg1_0 _lh_initTree_arg2_0))));;
let rec mkTree_lh _lh_mkTree_arg1_0 =
  (match _lh_mkTree_arg1_0 with
    | `CSP(_lh_mkTree_CSP_0_0, _lh_mkTree_CSP_1_0, _lh_mkTree_CSP_2_0) -> 
      (let rec next_0 = (fun ss_0 -> 
        (if ((maxLevel_lh ss_0) < _lh_mkTree_CSP_0_0) then
          (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
            (match _lh_listcomp_fun_para_3 with
              | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                (`LH_C((`LH_C((`Assign(((maxLevel_lh ss_0) + 1), _lh_listcomp_fun_ls_h_3)), ss_0)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_3 ((enumFromTo_lh 1) _lh_mkTree_CSP_1_0)))
        else
          (`LH_N))) in
        ((initTree_lh next_0) (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec knownConflict_lh _lh_knownConflict_arg1_0 =
  (match _lh_knownConflict_arg1_0 with
    | `Known(_lh_knownConflict_Known_0_0) -> 
      (match _lh_knownConflict_Known_0_0 with
        | `LH_C(_lh_knownConflict_LH_C_0_0, _lh_knownConflict_LH_C_1_0) -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec fst_lh _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec knownSolution_lh _lh_knownSolution_arg1_0 =
  (match _lh_knownSolution_arg1_0 with
    | `Known(_lh_knownSolution_Known_0_0) -> 
      (match _lh_knownSolution_Known_0_0 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec search_lh _lh_search_arg1_0 _lh_search_arg2_0 =
  ((fun _lh_funcomp_x_9 -> 
    ((fun _lh_funcomp_x_1_0 -> 
      ((fun _lh_funcomp_x_1_1 -> 
        ((fun _lh_funcomp_x_1_2 -> 
          ((fun _lh_funcomp_x_1_3 -> 
            ((map_lh fst_lh) ((filter_lh (fun _lh_funcomp_x_1_4 -> 
              (knownSolution_lh (snd_lh _lh_funcomp_x_1_4)))) _lh_funcomp_x_1_3))) (leaves_lh _lh_funcomp_x_1_2))) ((prune_lh (fun _lh_funcomp_x_1_5 -> 
          (knownConflict_lh (snd_lh _lh_funcomp_x_1_5)))) _lh_funcomp_x_1_1))) ((_lh_search_arg1_0 _lh_search_arg2_0) _lh_funcomp_x_1_0))) (mkTree_lh _lh_funcomp_x_9))) _lh_search_arg2_0);;
let rec try_lh _lh_try_arg1_0 _lh_try_arg2_0 =
  (length_lh ((search_lh _lh_try_arg2_0) (queens_lh _lh_try_arg1_0)));;
let rec zipWith_lh f_3 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_0 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_3 hx_0) hy_0), (((zipWith_lh f_3) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec fillTable_lh _lh_fillTable_arg1_0 _lh_fillTable_arg2_0 _lh_fillTable_arg3_0 =
  (match _lh_fillTable_arg1_0 with
    | `LH_N -> 
      _lh_fillTable_arg3_0
    | `LH_C(_lh_fillTable_LH_C_0_0, _lh_fillTable_LH_C_1_0) -> 
      (match _lh_fillTable_LH_C_0_0 with
        | `Assign(_lh_fillTable_Assign_0_0, _lh_fillTable_Assign_1_0) -> 
          (match _lh_fillTable_arg2_0 with
            | `CSP(_lh_fillTable_CSP_0_0, _lh_fillTable_CSP_1_0, _lh_fillTable_CSP_2_0) -> 
              (let rec f_9 = (fun cs_1 varval_0 -> 
                (let rec _lh_matchIdent_2 = varval_0 in
                  (match _lh_matchIdent_2 with
                    | `LH_P2(_lh_fillTable_LH_P2_0_0, _lh_fillTable_LH_P2_1_0) -> 
                      (if ((cs_1 = (`Unknown)) && (not ((_lh_fillTable_CSP_2_0 (`Assign(_lh_fillTable_Assign_0_0, _lh_fillTable_Assign_1_0))) (`Assign(_lh_fillTable_LH_P2_0_0, _lh_fillTable_LH_P2_1_0))))) then
                        (`Known((`LH_C(_lh_fillTable_Assign_0_0, (`LH_C(_lh_fillTable_LH_P2_0_0, (`LH_N)))))))
                      else
                        cs_1)
                    | _ -> 
                      (failwith "error")))) in
                (((zipWith_lh (zipWith_lh f_9)) _lh_fillTable_arg3_0) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
                  (match _lh_listcomp_fun_para_4 with
                    | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                      (`LH_C((let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
                        (match _lh_listcomp_fun_para_5 with
                          | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                            (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_h_5)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                          | `LH_N -> 
                            (`LH_N))) in
                        (_lh_listcomp_fun_5 ((enumFromTo_lh 1) _lh_fillTable_CSP_1_0))), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_4 ((enumFromTo_lh (_lh_fillTable_Assign_0_0 + 1)) _lh_fillTable_CSP_0_0)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec tail_lh ls_4 =
  (match ls_4 with
    | `LH_C(h_4, t_4) -> 
      t_4
    | `LH_N -> 
      (failwith "error"));;
let rec cacheChecks_lh _lh_cacheChecks_arg1_0 _lh_cacheChecks_arg2_0 _lh_cacheChecks_arg3_0 =
  (match _lh_cacheChecks_arg3_0 with
    | `Node(_lh_cacheChecks_Node_0_0, _lh_cacheChecks_Node_1_0) -> 
      (`Node((`LH_P2(_lh_cacheChecks_Node_0_0, _lh_cacheChecks_arg2_0)), ((map_lh ((cacheChecks_lh _lh_cacheChecks_arg1_0) (((fillTable_lh _lh_cacheChecks_Node_0_0) _lh_cacheChecks_arg1_0) (tail_lh _lh_cacheChecks_arg2_0)))) _lh_cacheChecks_Node_1_0)))
    | _ -> 
      (failwith "error"));;
let rec emptyTable_lh _lh_emptyTable_arg1_0 =
  (match _lh_emptyTable_arg1_0 with
    | `CSP(_lh_emptyTable_CSP_0_0, _lh_emptyTable_CSP_1_0, _lh_emptyTable_CSP_2_0) -> 
      (`LH_C((`LH_N), (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (`LH_C((let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              (match _lh_listcomp_fun_para_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                  (`LH_C((`Unknown), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_1 ((enumFromTo_lh 1) _lh_emptyTable_CSP_1_0))), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 ((enumFromTo_lh 1) _lh_emptyTable_CSP_0_0)))))
    | _ -> 
      (failwith "error"));;
let rec value_lh _lh_value_arg1_0 =
  (match _lh_value_arg1_0 with
    | `Assign(_lh_value_Assign_0_0, _lh_value_Assign_1_0) -> 
      _lh_value_Assign_1_0
    | _ -> 
      (failwith "error"));;
let rec head_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec atIndex_lh n_0 ls_6 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match ls_6 with
      | `LH_C(h_7, t_7) -> 
        (if (n_0 = 0) then
          h_7
        else
          ((atIndex_lh (n_0 - 1)) t_7))
      | `LH_N -> 
        (failwith "error")));;
let rec lookupCache_lh _lh_lookupCache_arg1_0 _lh_lookupCache_arg2_0 =
  (let rec f_1_0 = (fun _lh_f_arg1_3 _lh_f_arg2_2 -> 
    (match _lh_f_arg2_2 with
      | `LH_P2(_lh_f_LH_P2_0_4, _lh_f_LH_P2_1_4) -> 
        (match _lh_f_LH_P2_0_4 with
          | `LH_N -> 
            (`LH_P2((`LH_P2((`LH_N), (`Unknown))), _lh_f_LH_P2_1_4))
          | `LH_C(_lh_f_LH_C_0_0, _lh_f_LH_C_1_0) -> 
            (let rec tableEntry_0 = ((atIndex_lh ((value_lh _lh_f_LH_C_0_0) - 1)) (head_lh _lh_f_LH_P2_1_4)) in
              (let rec cs_2 = (if (tableEntry_0 = (`Unknown)) then
                ((checkComplete_lh _lh_f_arg1_3) (`LH_C(_lh_f_LH_C_0_0, _lh_f_LH_C_1_0)))
              else
                tableEntry_0) in
                (`LH_P2((`LH_P2((`LH_C(_lh_f_LH_C_0_0, _lh_f_LH_C_1_0)), cs_2)), _lh_f_LH_P2_1_4))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))) in
    ((mapTree_lh (f_1_0 _lh_lookupCache_arg1_0)) _lh_lookupCache_arg2_0));;
let rec bm_lh _lh_bm_arg1_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((mapTree_lh fst_lh) ((lookupCache_lh _lh_bm_arg1_0) _lh_funcomp_x_1))) (((cacheChecks_lh _lh_bm_arg1_0) (emptyTable_lh _lh_bm_arg1_0)) _lh_funcomp_x_0));;
let rec collect_lh _lh_collect_arg1_0 =
  (match _lh_collect_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_collect_LH_C_0_0, _lh_collect_LH_C_1_0) -> 
      (match _lh_collect_LH_C_0_0 with
        | `Known(_lh_collect_Known_0_0) -> 
          ((union_lh _lh_collect_Known_0_0) (collect_lh _lh_collect_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec all_lh _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec null_lh _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec domainWipeOut_lh _lh_domainWipeOut_arg1_0 _lh_domainWipeOut_arg2_0 =
  (match _lh_domainWipeOut_arg1_0 with
    | `CSP(_lh_domainWipeOut_CSP_0_0, _lh_domainWipeOut_CSP_1_0, _lh_domainWipeOut_CSP_2_0) -> 
      (let rec f_6 = (fun _lh_f_arg1_1 -> 
        (match _lh_f_arg1_1 with
          | `LH_P2(_lh_f_LH_P2_0_1, _lh_f_LH_P2_1_1) -> 
            (match _lh_f_LH_P2_0_1 with
              | `LH_P2(_lh_f_LH_P2_0_2, _lh_f_LH_P2_1_2) -> 
                (let rec wipedDomains_0 = (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                  (match _lh_listcomp_fun_para_2 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                      (if ((all_lh knownConflict_lh) _lh_listcomp_fun_ls_h_2) then
                        (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                      else
                        (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_2 _lh_f_LH_P2_1_1)) in
                  (let rec cs'_0 = (if (null_lh wipedDomains_0) then
                    _lh_f_LH_P2_1_2
                  else
                    (`Known((collect_lh (head_lh wipedDomains_0))))) in
                    (`LH_P2(_lh_f_LH_P2_0_2, cs'_0))))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))) in
        ((mapTree_lh f_6) _lh_domainWipeOut_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec fc_lh _lh_fc_arg1_0 _lh_funcomp_x_4 =
  ((fun _lh_funcomp_x_5 -> 
    ((domainWipeOut_lh _lh_fc_arg1_0) ((lookupCache_lh _lh_fc_arg1_0) _lh_funcomp_x_5))) (((cacheChecks_lh _lh_fc_arg1_0) (emptyTable_lh _lh_fc_arg1_0)) _lh_funcomp_x_4));;
let rec bj'_lh _lh_bj'_arg1_0 =
  (let rec f_7 = (fun _lh_f_arg1_2 _lh_f_arg2_1 -> 
    (match _lh_f_arg1_2 with
      | `LH_P2(_lh_f_LH_P2_0_3, _lh_f_LH_P2_1_3) -> 
        (match _lh_f_LH_P2_1_3 with
          | `Known(_lh_f_Known_0_1) -> 
            (`Node((`LH_P2(_lh_f_LH_P2_0_3, (`Known(_lh_f_Known_0_1)))), _lh_f_arg2_1))
          | `Unknown -> 
            (let rec cs'_1 = (`Known(((combine_lh ((map_lh label_lh) _lh_f_arg2_1)) (`LH_N)))) in
              (if (knownConflict_lh cs'_1) then
                (`Node((`LH_P2(_lh_f_LH_P2_0_3, cs'_1)), (`LH_N)))
              else
                (`Node((`LH_P2(_lh_f_LH_P2_0_3, cs'_1)), _lh_f_arg2_1))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))) in
    (foldTree_lh f_7));;
let rec bjbt'_lh _lh_bjbt'_arg1_0 _lh_funcomp_x_7 =
  ((bj'_lh _lh_bjbt'_arg1_0) ((bt_lh _lh_bjbt'_arg1_0) _lh_funcomp_x_7));;
let rec testConstraints_nofib_lh _lh_testConstraints_nofib_arg1_0 =
  ((map_lh (try_lh _lh_testConstraints_nofib_arg1_0)) (`LH_C(bt_lh, (`LH_C(bm_lh, (`LH_C(bjbt_lh, (`LH_C(bjbt'_lh, (`LH_C(fc_lh, (`LH_N))))))))))));;
end;;

