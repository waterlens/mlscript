

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
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
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec eqno_lh _lh_eqno_arg1_0 =
  (match _lh_eqno_arg1_0 with
    | `Eqn(_lh_eqno_Eqn_0_0, _lh_eqno_Eqn_1_0) -> 
      (match _lh_eqno_Eqn_1_0 with
        | `LH_P2(_lh_eqno_LH_P2_0_0, _lh_eqno_LH_P2_1_0) -> 
          _lh_eqno_Eqn_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec filter_lh f_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (if (f_0 h_1) then
        (`LH_C(h_1, ((filter_lh f_0) t_1)))
      else
        ((filter_lh f_0) t_1))
    | `LH_N -> 
      (`LH_N));;
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
let rec cross_lh _lh_cross_arg1_0 _lh_cross_arg2_0 _lh_cross_arg3_0 =
  (match _lh_cross_arg3_0 with
    | `LH_P2(_lh_cross_LH_P2_0_0, _lh_cross_LH_P2_1_0) -> 
      (`LH_P2((_lh_cross_arg1_0 _lh_cross_LH_P2_0_0), (_lh_cross_arg2_0 _lh_cross_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec map_lh f_3 ls_4 =
  (match ls_4 with
    | `LH_C(h_5, t_8) -> 
      (`LH_C((f_3 h_5), ((map_lh f_3) t_8)))
    | `LH_N -> 
      (`LH_N));;
let rec maybeX_lh _lh_maybeX_arg1_0 _lh_maybeX_arg2_0 =
  (if _lh_maybeX_arg1_0 then
    (`Just(_lh_maybeX_arg2_0))
  else
    (`Nothing));;
let rec squash_lh _lh_squash_arg1_0 =
  (match _lh_squash_arg1_0 with
    | `Just(_lh_squash_Just_0_0) -> 
      _lh_squash_Just_0_0
    | `Nothing -> 
      (`Nothing)
    | _ -> 
      (failwith "error"));;
let rec ltRewrite_lh _lh_ltRewrite_arg1_0 _lh_ltRewrite_arg2_0 _lh_ltRewrite_arg3_0 =
  ((_lh_ltRewrite_arg1_0 (`LH_P2(_lh_ltRewrite_arg2_0, _lh_ltRewrite_arg3_0))) = (`Less));;
let rec eqExpr_lh _lh_eqExpr_arg1_0 _lh_eqExpr_arg2_0 =
  (match _lh_eqExpr_arg1_0 with
    | `Func(_lh_eqExpr_Func_0_0, _lh_eqExpr_Func_1_0) -> 
      (match _lh_eqExpr_arg2_0 with
        | `Func(_lh_eqExpr_Func_0_1, _lh_eqExpr_Func_1_1) -> 
          ((_lh_eqExpr_Func_0_0 = _lh_eqExpr_Func_0_1) && ((eqListExpr_lh _lh_eqExpr_Func_1_0) _lh_eqExpr_Func_1_1))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_0) -> 
      (match _lh_eqExpr_arg2_0 with
        | `Var(_lh_eqExpr_Var_0_1) -> 
          (_lh_eqExpr_Var_0_0 = _lh_eqExpr_Var_0_1)
        | _ -> 
          false)
    | _ -> 
      false)
and
eqListExpr_lh _lh_eqListExpr_arg1_0 _lh_eqListExpr_arg2_0 =
  (match _lh_eqListExpr_arg1_0 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_0 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_0, _lh_eqListExpr_LH_C_1_0) -> 
      (match _lh_eqListExpr_arg2_0 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1, _lh_eqListExpr_LH_C_1_1) -> 
          (if ((eqExpr_lh _lh_eqListExpr_LH_C_0_0) _lh_eqListExpr_LH_C_0_1) then
            ((eqListExpr_lh _lh_eqListExpr_LH_C_1_0) _lh_eqListExpr_LH_C_1_1)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec succeed_lh _lh_succeed_arg1_0 =
  (`Just(_lh_succeed_arg1_0));;
let rec orElse_lh _lh_orElse_arg1_0 _lh_orElse_arg2_0 =
  (match _lh_orElse_arg1_0 with
    | `Nothing -> 
      _lh_orElse_arg2_0
    | _ -> 
      _lh_orElse_arg1_0);;
let rec modify_lh _lh_modify_arg1_0 _lh_modify_arg2_0 _lh_modify_arg3_0 =
  (match _lh_modify_arg1_0 with
    | `LH_C(_lh_modify_LH_C_0_0, _lh_modify_LH_C_1_0) -> 
      (match _lh_modify_arg2_0 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_0 _lh_modify_LH_C_0_0), _lh_modify_LH_C_1_0))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_0, (((modify_lh _lh_modify_LH_C_1_0) (_lh_modify_arg2_0 - 1)) _lh_modify_arg3_0))))
    | _ -> 
      (failwith "error"));;
let rec the_lh _lh_the_arg1_0 =
  (match _lh_the_arg1_0 with
    | `Just(_lh_the_Just_0_0) -> 
      _lh_the_Just_0_0
    | _ -> 
      (failwith "error"));;
let rec pair_lh _lh_pair_arg1_0 _lh_pair_arg2_0 =
  (`LH_P2(_lh_pair_arg1_0, _lh_pair_arg2_0));;
let rec snd_lh _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec foldr_lh f_4 i_1 ls_5 =
  (match ls_5 with
    | `LH_C(h_6, t_9) -> 
      ((f_4 h_6) (((foldr_lh f_4) i_1) t_9))
    | `LH_N -> 
      i_1);;
let rec quant_lh _lh_quant_arg1_0 _lh_quant_arg2_0 _lh_quant_arg3_0 _lh_quant_arg4_0 =
  (let rec p_0 = (fun x_1 -> 
    ((_lh_quant_arg2_0 x_1) _lh_quant_arg3_0)) in
    ((_lh_quant_arg1_0 p_0) _lh_quant_arg4_0));;
let rec update_alist_lh _lh_update_alist_arg1_0 _lh_update_alist_arg2_0 _lh_update_alist_arg3_0 =
  (let rec upd_0 = (fun ls_2 -> 
    (let rec _lh_matchIdent_1 = ls_2 in
      (match _lh_matchIdent_1 with
        | `LH_N -> 
          (`LH_C((`LH_P2(_lh_update_alist_arg1_0, (_lh_update_alist_arg2_0 _lh_update_alist_arg3_0))), (`LH_N)))
        | `LH_C(_lh_update_alist_LH_C_0_0, _lh_update_alist_LH_C_1_0) -> 
          (match _lh_update_alist_LH_C_0_0 with
            | `LH_P2(_lh_update_alist_LH_P2_0_0, _lh_update_alist_LH_P2_1_0) -> 
              (if (_lh_update_alist_arg1_0 = _lh_update_alist_LH_P2_0_0) then
                (`LH_C((`LH_P2(_lh_update_alist_arg1_0, (_lh_update_alist_arg2_0 _lh_update_alist_LH_P2_1_0))), _lh_update_alist_LH_C_1_0))
              else
                (`LH_C((`LH_P2(_lh_update_alist_LH_P2_0_0, _lh_update_alist_LH_P2_1_0)), (upd_0 _lh_update_alist_LH_C_1_0))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    upd_0);;
let rec getOrElse_lh _lh_getOrElse_arg1_0 _lh_getOrElse_arg2_0 =
  (match _lh_getOrElse_arg1_0 with
    | `Just(_lh_getOrElse_Just_0_0) -> 
      _lh_getOrElse_Just_0_0
    | `Nothing -> 
      _lh_getOrElse_arg2_0
    | _ -> 
      (failwith "error"));;
let rec lift_lh _lh_lift_arg1_0 _lh_lift_arg2_0 =
  (match _lh_lift_arg2_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_0) -> 
      (`Just((_lh_lift_arg1_0 _lh_lift_Just_0_0)))
    | _ -> 
      (failwith "error"));;
let rec prop2_lh _lh_prop2_arg1_0 _lh_prop2_arg2_0 _lh_prop2_arg3_0 =
  (match _lh_prop2_arg2_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_0) -> 
      ((_lh_prop2_arg1_0 _lh_prop2_Just_0_0) _lh_prop2_arg3_0)
    | _ -> 
      (failwith "error"));;
let rec zip_lh xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_1 with
        | `LH_C(hy_2, ty_2) -> 
          (`LH_C((`LH_P2(hx_1, hy_2)), ((zip_lh tx_1) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec croak_lh =
  (`Nothing);;
let rec exists_lh _lh_exists_arg1_0 =
  (match _lh_exists_arg1_0 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec any_lh _lh_any_arg1_0 _lh_any_arg2_0 =
  (match _lh_any_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_0, _lh_any_LH_C_1_0) -> 
      (if (_lh_any_arg1_0 _lh_any_LH_C_0_0) then
        true
      else
        ((any_lh _lh_any_arg1_0) _lh_any_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_4, t_7) -> 
      (`LH_C(h_4, ((mappend_lh t_7) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec zip_lz_nl_lh xs_0 ys_0 =
  (match ys_0 with
    | `LH_C(hy_1, ty_1) -> 
      (((Lazy.force xs_0) hy_1) ty_1)
    | `LH_N -> 
      (`LH_N));;
let rec or_lh _lh_or_arg1_0 =
  (match _lh_or_arg1_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_0, _lh_or_LH_C_1_0) -> 
      (if _lh_or_LH_C_0_0 then
        true
      else
        (or_lh _lh_or_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec foldl_lh f_1 i_0 ls_3 =
  (match ls_3 with
    | `LH_C(h_2, t_4) -> 
      (((foldl_lh f_1) ((f_1 i_0) h_2)) t_4)
    | `LH_N -> 
      i_0);;
let rec eqpr_lh _lh_eqpr_arg1_0 =
  (match _lh_eqpr_arg1_0 with
    | `Eqn(_lh_eqpr_Eqn_0_0, _lh_eqpr_Eqn_1_0) -> 
      _lh_eqpr_Eqn_1_0
    | _ -> 
      (failwith "error"));;
let rec eqRewrite_lh _lh_eqRewrite_arg1_0 _lh_eqRewrite_arg2_0 _lh_eqRewrite_arg3_0 =
  ((_lh_eqRewrite_arg1_0 (`LH_P2(_lh_eqRewrite_arg2_0, _lh_eqRewrite_arg3_0))) = (`Equal));;
let rec sum_lh ls_6 =
  (match ls_6 with
    | `LH_C(h_7, t_1_0) -> 
      (h_7 + (sum_lh t_1_0))
    | `LH_N -> 
      0);;
let rec lhs_lh _lh_lhs_arg1_0 =
  (match _lh_lhs_arg1_0 with
    | `Eqn(_lh_lhs_Eqn_0_0, _lh_lhs_Eqn_1_0) -> 
      (match _lh_lhs_Eqn_1_0 with
        | `LH_P2(_lh_lhs_LH_P2_0_0, _lh_lhs_LH_P2_1_0) -> 
          _lh_lhs_LH_P2_0_0
        | _ -> 
          (failwith "error"))
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
let rec box_lh _lh_box_arg1_0 =
  (`LH_C(_lh_box_arg1_0, (`LH_N)));;
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
let rec fst_lh _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec atIndex_lh n_0 ls_7 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match ls_7 with
      | `LH_C(h_8, t_1_1) -> 
        (if (n_0 = 0) then
          h_8
        else
          ((atIndex_lh (n_0 - 1)) t_1_1))
      | `LH_N -> 
        (failwith "error")));;
let rec gtRewrite_lh _lh_gtRewrite_arg1_0 _lh_gtRewrite_arg2_0 _lh_gtRewrite_arg3_0 =
  ((_lh_gtRewrite_arg1_0 (`LH_P2(_lh_gtRewrite_arg2_0, _lh_gtRewrite_arg3_0))) = (`Greater));;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec map_dnet_lh _lh_map_dnet_arg1_0 _lh_map_dnet_arg2_0 =
  (match _lh_map_dnet_arg2_0 with
    | `Switch(_lh_map_dnet_Switch_0_0, _lh_map_dnet_Switch_1_0) -> 
      (`Switch(((map_lh ((cross_lh (fun x_0 -> 
        x_0)) (map_dnet_lh _lh_map_dnet_arg1_0))) _lh_map_dnet_Switch_0_0), ((map_dnet_lh _lh_map_dnet_arg1_0) _lh_map_dnet_Switch_1_0)))
    | `Return(_lh_map_dnet_Return_0_0) -> 
      (`Return((_lh_map_dnet_arg1_0 _lh_map_dnet_Return_0_0)))
    | _ -> 
      (failwith "error"));;
let rec geRewrite_lh _lh_geRewrite_arg1_0 _lh_geRewrite_arg2_0 _lh_geRewrite_arg3_0 =
  ((inList_lh (_lh_geRewrite_arg1_0 (`LH_P2(_lh_geRewrite_arg2_0, _lh_geRewrite_arg3_0)))) (`LH_C((`Greater), (`LH_C((`Equal), (`LH_N))))));;
let rec orElseMap_lh _lh_orElseMap_arg1_0 _lh_orElseMap_arg2_0 _lh_orElseMap_arg3_0 =
  ((orElse_lh (_lh_orElseMap_arg1_0 _lh_orElseMap_arg3_0)) (_lh_orElseMap_arg2_0 _lh_orElseMap_arg3_0));;
let rec replace_lh _lh_replace_arg1_0 _lh_replace_arg2_0 _lh_replace_arg3_0 =
  (match _lh_replace_arg2_0 with
    | `LH_N -> 
      _lh_replace_arg3_0
    | _ -> 
      (match _lh_replace_arg1_0 with
        | `Func(_lh_replace_Func_0_0, _lh_replace_Func_1_0) -> 
          (match _lh_replace_arg2_0 with
            | `LH_C(_lh_replace_LH_C_0_0, _lh_replace_LH_C_1_0) -> 
              (`Func(_lh_replace_Func_0_0, (((modify_lh _lh_replace_Func_1_0) _lh_replace_LH_C_0_0) (fun t_2 -> 
                (((replace_lh t_2) _lh_replace_LH_C_1_0) _lh_replace_arg3_0)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")));;
let rec first_ok_lh _lh_first_ok_arg1_0 =
  (((foldr_lh orElse_lh) (`Nothing)) _lh_first_ok_arg1_0);;
let rec expr_fold_lh _lh_expr_fold_arg1_0 _lh_expr_fold_arg2_0 _lh_expr_fold_arg3_0 =
  (match _lh_expr_fold_arg3_0 with
    | `Var(_lh_expr_fold_Var_0_0) -> 
      (_lh_expr_fold_arg2_0 _lh_expr_fold_Var_0_0)
    | `Func(_lh_expr_fold_Func_0_0, _lh_expr_fold_Func_1_0) -> 
      ((_lh_expr_fold_arg1_0 _lh_expr_fold_Func_0_0) ((map_lh ((expr_fold_lh _lh_expr_fold_arg1_0) _lh_expr_fold_arg2_0)) _lh_expr_fold_Func_1_0))
    | _ -> 
      (failwith "error"));;
let rec prop_fold_lh _lh_prop_fold_arg1_0 _lh_prop_fold_arg2_0 _lh_prop_fold_arg3_0 =
  (match _lh_prop_fold_arg3_0 with
    | `LH_N -> 
      (`Just(_lh_prop_fold_arg2_0))
    | `LH_C(_lh_prop_fold_LH_C_0_0, _lh_prop_fold_LH_C_1_0) -> 
      (((prop2_lh (prop_fold_lh _lh_prop_fold_arg1_0)) ((_lh_prop_fold_arg1_0 _lh_prop_fold_arg2_0) _lh_prop_fold_LH_C_0_0)) _lh_prop_fold_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec enumFrom_lh a_0 =
  (lazy (let rec tx_0 = (enumFrom_lh (a_0 + 1)) in
    (let rec hx_0 = a_0 in
      (fun hy_0 ty_0 -> 
        (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lz_nl_lh tx_0) ty_0)))))));;
let rec simplify_lh _lh_simplify_arg1_0 =
  (let rec f_2 = (fun t_5 -> 
    ((getOrElse_lh ((lift_lh f_2) (_lh_simplify_arg1_0 t_5))) t_5)) in
    f_2);;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_3, t_6) -> 
      ((mappend_lh h_3) (concat_lh t_6))
    | `LH_N -> 
      (`LH_N));;
let rec listify_lh _lh_listify_arg1_0 =
  ((getOrElse_lh ((lift_lh box_lh) _lh_listify_arg1_0)) (`LH_N));;
let rec delete_eqns_lh _lh_delete_eqns_arg1_0 =
  (let rec ok_0 = (fun e_0 -> 
    (not ((inList_lh (eqno_lh e_0)) _lh_delete_eqns_arg1_0))) in
    (map_dnet_lh (filter_lh ok_0)));;
let rec assoc_lh _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (let rec match_x_0 = (fun uv_0 -> 
    (let rec _lh_matchIdent_0 = uv_0 in
      (match _lh_matchIdent_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          ((maybeX_lh (_lh_assoc_arg2_0 = _lh_assoc_LH_P2_0_0)) _lh_assoc_LH_P2_1_0)
        | _ -> 
          (failwith "error")))) in
    (first_ok_lh ((map_lh match_x_0) _lh_assoc_arg1_0)));;
let rec stand_lh _lh_stand_arg1_0 =
  ((expr_fold_lh (fun x_4 y_1 -> 
    (`Func(x_4, y_1)))) (fun v_0 -> 
    (`Var(((mappend_lh v_0) _lh_stand_arg1_0)))));;
let rec occurs_lh _lh_occurs_arg1_0 =
  ((expr_fold_lh (fun dum_2 -> 
    or_lh)) (fun x_5 -> 
    (x_5 = _lh_occurs_arg1_0)));;
let rec try_all_lh _lh_try_all_arg1_0 =
  (((foldr_lh orElseMap_lh) (fun dum_0 -> 
    croak_lh)) _lh_try_all_arg1_0);;
let rec subterms_lh _lh_subterms_arg1_0 =
  (match _lh_subterms_arg1_0 with
    | `Var(_lh_subterms_Var_0_0) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_0, _lh_subterms_Func_1_0) -> 
      ((mappend_lh (`LH_C((`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_0, _lh_subterms_Func_1_0)))), (`LH_N)))) (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (match _lh_listcomp_fun_ls_h_1 with
              | `LH_P2(_lh_subterms_LH_P2_0_0, _lh_subterms_LH_P2_1_0) -> 
                (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                  (match _lh_listcomp_fun_para_2 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                      (match _lh_listcomp_fun_ls_h_2 with
                        | `LH_P2(_lh_subterms_LH_P2_0_1, _lh_subterms_LH_P2_1_1) -> 
                          (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_0, _lh_subterms_LH_P2_0_1)), _lh_subterms_LH_P2_1_1)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                        | _ -> 
                          (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                    | `LH_N -> 
                      (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))) in
                  (_lh_listcomp_fun_2 (subterms_lh _lh_subterms_LH_P2_1_0)))
              | _ -> 
                (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 ((zip_lz_nl_lh (enumFrom_lh 0)) _lh_subterms_Func_1_0))))
    | _ -> 
      (failwith "error"));;
let rec cost_lh _lh_cost_arg1_0 =
  (match _lh_cost_arg1_0 with
    | `LH_P2(_lh_cost_LH_P2_0_0, _lh_cost_LH_P2_1_0) -> 
      (let rec size_0 = (fun _lh_size_arg1_0 -> 
        (((expr_fold_lh (fun x_2 a_1 -> 
          ((sum_lh a_1) + 1))) (fun dum_1 -> 
          0)) _lh_size_arg1_0)) in
        ((size_0 _lh_cost_LH_P2_0_0) + (size_0 _lh_cost_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec sift_lh _lh_sift_arg1_0 =
  ((fun _lh_funcomp_x_1 -> 
    (concat_lh ((map_lh listify_lh) _lh_funcomp_x_1))) _lh_sift_arg1_0);;
let rec apply_lh _lh_apply_arg1_0 _lh_apply_arg2_0 =
  ((getOrElse_lh ((assoc_lh _lh_apply_arg1_0) _lh_apply_arg2_0)) (`Var(_lh_apply_arg2_0)));;
let rec match'_lh _lh_match'_arg1_0 _lh_match'_arg2_0 =
  (match _lh_match'_arg2_0 with
    | `LH_P2(_lh_match'_LH_P2_0_0, _lh_match'_LH_P2_1_0) -> 
      (match _lh_match'_LH_P2_0_0 with
        | `Var(_lh_match'_Var_0_0) -> 
          (let rec u_0 = ((assoc_lh _lh_match'_arg1_0) _lh_match'_Var_0_0) in
            (if (not (exists_lh u_0)) then
              (succeed_lh (`LH_C((`LH_P2(_lh_match'_Var_0_0, _lh_match'_LH_P2_1_0)), _lh_match'_arg1_0)))
            else
              (if ((eqExpr_lh (the_lh u_0)) _lh_match'_LH_P2_1_0) then
                (succeed_lh _lh_match'_arg1_0)
              else
                croak_lh)))
        | `Func(_lh_match'_Func_0_0, _lh_match'_Func_1_0) -> 
          (match _lh_match'_LH_P2_1_0 with
            | `Func(_lh_match'_Func_0_1, _lh_match'_Func_1_1) -> 
              (if (_lh_match'_Func_0_0 = _lh_match'_Func_0_1) then
                (((prop_fold_lh match'_lh) _lh_match'_arg1_0) ((zip_lh _lh_match'_Func_1_0) _lh_match'_Func_1_1))
              else
                croak_lh)
            | `Var(_lh_match'_Var_0_1) -> 
              croak_lh
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec stand_eqn_lh _lh_stand_eqn_arg1_0 _lh_stand_eqn_arg2_0 =
  (match _lh_stand_eqn_arg2_0 with
    | `Eqn(_lh_stand_eqn_Eqn_0_0, _lh_stand_eqn_Eqn_1_0) -> 
      (match _lh_stand_eqn_Eqn_1_0 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_0, _lh_stand_eqn_LH_P2_1_0) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_0, (`LH_P2(((stand_lh _lh_stand_eqn_arg1_0) _lh_stand_eqn_LH_P2_0_0), ((stand_lh _lh_stand_eqn_arg1_0) _lh_stand_eqn_LH_P2_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec inside_lh _lh_inside_arg1_0 _lh_inside_arg2_0 =
  (first_ok_lh (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (match _lh_listcomp_fun_ls_h_3 with
          | `LH_P2(_lh_inside_LH_P2_0_0, _lh_inside_LH_P2_1_0) -> 
            (`LH_C(((lift_lh ((replace_lh _lh_inside_arg2_0) _lh_inside_LH_P2_0_0)) (_lh_inside_arg1_0 _lh_inside_LH_P2_1_0)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
          | _ -> 
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 (subterms_lh _lh_inside_arg2_0))));;
let rec sub_lh _lh_sub_arg1_0 _lh_sub_arg2_0 =
  (((expr_fold_lh (fun x_3 y_0 -> 
    (`Func(x_3, y_0)))) (apply_lh _lh_sub_arg2_0)) _lh_sub_arg1_0);;
let rec match_lh _lh_match_arg1_0 _lh_match_arg2_0 =
  ((match'_lh (`LH_N)) (`LH_P2(_lh_match_arg1_0, _lh_match_arg2_0)));;
let rec rewrite_lh _lh_rewrite_arg1_0 =
  (match _lh_rewrite_arg1_0 with
    | `Eqn(_lh_rewrite_Eqn_0_0, _lh_rewrite_Eqn_1_0) -> 
      (match _lh_rewrite_Eqn_1_0 with
        | `LH_P2(_lh_rewrite_LH_P2_0_0, _lh_rewrite_LH_P2_1_0) -> 
          (fun _lh_funcomp_x_0 -> 
            ((lift_lh (sub_lh _lh_rewrite_LH_P2_1_0)) ((match_lh _lh_rewrite_LH_P2_0_0) _lh_funcomp_x_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec comp_sub_lh _lh_comp_sub_arg1_0 _lh_comp_sub_arg2_0 =
  ((mappend_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (match _lh_listcomp_fun_ls_h_0 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_0, _lh_comp_sub_LH_P2_1_0) -> 
            (`LH_C((`LH_P2(_lh_comp_sub_LH_P2_0_0, ((sub_lh _lh_comp_sub_LH_P2_1_0) _lh_comp_sub_arg1_0))), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          | _ -> 
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 _lh_comp_sub_arg2_0))) _lh_comp_sub_arg1_0);;
let rec unify'_lh _lh_unify'_arg1_0 _lh_unify'_arg2_0 =
  (match _lh_unify'_arg2_0 with
    | `LH_P2(_lh_unify'_LH_P2_0_0, _lh_unify'_LH_P2_1_0) -> 
      (match _lh_unify'_LH_P2_0_0 with
        | `Var(_lh_unify'_Var_0_0) -> 
          (((univar_lh _lh_unify'_arg1_0) _lh_unify'_Var_0_0) _lh_unify'_LH_P2_1_0)
        | `Func(_lh_unify'_Func_0_0, _lh_unify'_Func_1_0) -> 
          (match _lh_unify'_LH_P2_1_0 with
            | `Var(_lh_unify'_Var_0_1) -> 
              (((univar_lh _lh_unify'_arg1_0) _lh_unify'_Var_0_1) (`Func(_lh_unify'_Func_0_0, _lh_unify'_Func_1_0)))
            | `Func(_lh_unify'_Func_0_1, _lh_unify'_Func_1_1) -> 
              (if (_lh_unify'_Func_0_0 = _lh_unify'_Func_0_1) then
                (((prop_fold_lh unify'_lh) _lh_unify'_arg1_0) ((zip_lh _lh_unify'_Func_1_0) _lh_unify'_Func_1_1))
              else
                croak_lh)
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
univar_lh _lh_univar_arg1_0 _lh_univar_arg2_0 _lh_univar_arg3_0 =
  (let rec t_3 = ((assoc_lh _lh_univar_arg1_0) _lh_univar_arg2_0) in
    (if (exists_lh t_3) then
      ((unify'_lh _lh_univar_arg1_0) (`LH_P2((the_lh t_3), _lh_univar_arg3_0)))
    else
      (if ((eqExpr_lh _lh_univar_arg3_0) (`Var(_lh_univar_arg2_0))) then
        (succeed_lh _lh_univar_arg1_0)
      else
        (let rec u'_0 = ((sub_lh _lh_univar_arg3_0) _lh_univar_arg1_0) in
          (if (not ((occurs_lh _lh_univar_arg2_0) u'_0)) then
            (succeed_lh ((comp_sub_lh (`LH_C((`LH_P2(_lh_univar_arg2_0, u'_0)), (`LH_N)))) _lh_univar_arg1_0))
          else
            croak_lh)))));;
let rec reduce1_lh _lh_reduce1_arg1_0 =
  (inside_lh (rewrite_lh _lh_reduce1_arg1_0));;
let rec unify_lh _lh_unify_arg1_0 _lh_unify_arg2_0 =
  ((unify'_lh (`LH_N)) (`LH_P2(_lh_unify_arg1_0, _lh_unify_arg2_0)));;
let rec result_lh _lh_result_arg1_0 =
  (match _lh_result_arg1_0 with
    | `LH_P2(_lh_result_LH_P2_0_0, _lh_result_LH_P2_1_0) -> 
      let rec multi_0 = (fun _lh_multi_arg1_0 _lh_multi_arg2_0 -> 
        (((_lh_multi_arg2_0 _lh_multi_arg1_0) dominates_0) rem_eq_0))
      and rank_order_0 = (fun _lh_rank_order_arg1_0 _lh_rank_order_arg2_0 -> 
        ((_lh_rank_order_arg2_0 _lh_rank_order_arg1_0) num_order_0))
      and superpose_0 = (fun _lh_superpose_arg1_0 _lh_superpose_arg2_0 -> 
        (sift_lh (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
          (match _lh_listcomp_fun_para_4 with
            | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
              (match _lh_listcomp_fun_ls_h_4 with
                | `LH_P2(_lh_superpose_LH_P2_0_0, _lh_superpose_LH_P2_1_0) -> 
                  (`LH_C(((lift_lh (pair_lh _lh_superpose_LH_P2_0_0)) ((unify_lh _lh_superpose_arg1_0) _lh_superpose_LH_P2_1_0)), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
                | _ -> 
                  (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))
            | `LH_N -> 
              (`LH_N))) in
          (_lh_listcomp_fun_4 (subterms_lh _lh_superpose_arg2_0)))))
      and delete_0 = (fun _lh_delete_arg1_0 _lh_delete_arg2_0 _lh_delete_arg3_0 -> 
        (match _lh_delete_arg3_0 with
          | `LH_N -> 
            croak_lh
          | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
            (if ((_lh_delete_arg1_0 _lh_delete_arg2_0) _lh_delete_LH_C_0_0) then
              (succeed_lh _lh_delete_LH_C_1_0)
            else
              ((lift_lh (fun x_6 -> 
                (`LH_C(_lh_delete_LH_C_0_0, x_6)))) (((delete_0 _lh_delete_arg1_0) _lh_delete_arg2_0) _lh_delete_LH_C_1_0)))
          | _ -> 
            (failwith "error")))
      and rem_eq_0 = (fun _lh_rem_eq_arg1_0 _lh_rem_eq_arg2_0 -> 
        (match _lh_rem_eq_arg2_0 with
          | `LH_P2(_lh_rem_eq_LH_P2_0_0, _lh_rem_eq_LH_P2_1_0) -> 
            (match _lh_rem_eq_LH_P2_0_0 with
              | `LH_N -> 
                (`LH_P2((`LH_N), _lh_rem_eq_LH_P2_1_0))
              | `LH_C(_lh_rem_eq_LH_C_0_0, _lh_rem_eq_LH_C_1_0) -> 
                (let rec add_x_0 = (fun xsys_0 -> 
                  (let rec _lh_matchIdent_2 = xsys_0 in
                    (match _lh_matchIdent_2 with
                      | `LH_P2(_lh_rem_eq_LH_P2_0_1, _lh_rem_eq_LH_P2_1_1) -> 
                        (`LH_P2((`LH_C(_lh_rem_eq_LH_C_0_0, _lh_rem_eq_LH_P2_0_1)), _lh_rem_eq_LH_P2_1_1))
                      | _ -> 
                        (failwith "error")))) in
                  ((getOrElse_lh ((lift_lh (fun _lh_funcomp_x_2 -> 
                    ((rem_eq_0 _lh_rem_eq_arg1_0) ((pair_lh _lh_rem_eq_LH_C_1_0) _lh_funcomp_x_2)))) (((delete_0 _lh_rem_eq_arg1_0) _lh_rem_eq_LH_C_0_0) _lh_rem_eq_LH_P2_1_0))) (add_x_0 ((rem_eq_0 _lh_rem_eq_arg1_0) (`LH_P2(_lh_rem_eq_LH_C_1_0, _lh_rem_eq_LH_P2_1_0))))))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and q_eqn_0 = (fun _lh_q_eqn_arg1_0 -> 
        (match _lh_q_eqn_arg1_0 with
          | `LH_C(_lh_q_eqn_LH_C_0_0, _lh_q_eqn_LH_C_1_0) -> 
            (match _lh_q_eqn_LH_C_1_0 with
              | `LH_C(_lh_q_eqn_LH_C_0_1, _lh_q_eqn_LH_C_1_1) -> 
                (match _lh_q_eqn_LH_C_1_1 with
                  | `LH_C(_lh_q_eqn_LH_C_0_2, _lh_q_eqn_LH_C_1_2) -> 
                    (match _lh_q_eqn_LH_C_1_2 with
                      | `LH_N -> 
                        (`List((`LH_C(_lh_q_eqn_LH_C_0_0, (`LH_C(_lh_q_eqn_LH_C_0_2, (`LH_N)))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and parse_eqn_0 = (fun _lh_parse_eqn_arg1_0 -> 
        (let rec _lh_matchIdent_3 = (fst_lh (the_lh (p_eqn_0 _lh_parse_eqn_arg1_0))) in
          (match _lh_matchIdent_3 with
            | `List(_lh_parse_eqn_List_0_0) -> 
              (match _lh_parse_eqn_List_0_0 with
                | `LH_C(_lh_parse_eqn_LH_C_0_0, _lh_parse_eqn_LH_C_1_0) -> 
                  (match _lh_parse_eqn_LH_C_0_0 with
                    | `Expr(_lh_parse_eqn_Expr_0_0) -> 
                      (match _lh_parse_eqn_LH_C_1_0 with
                        | `LH_C(_lh_parse_eqn_LH_C_0_1, _lh_parse_eqn_LH_C_1_1) -> 
                          (match _lh_parse_eqn_LH_C_0_1 with
                            | `Expr(_lh_parse_eqn_Expr_0_1) -> 
                              (match _lh_parse_eqn_LH_C_1_1 with
                                | `LH_N -> 
                                  (`LH_P2(_lh_parse_eqn_Expr_0_0, _lh_parse_eqn_Expr_0_1))
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
              (failwith "error"))))
      and addby_0 = (fun _lh_addby_arg1_0 _lh_addby_arg2_0 _lh_addby_arg3_0 -> 
        (let rec insert_0 = (fun x_7 ls_8 -> 
          (let rec _lh_matchIdent_4 = ls_8 in
            (match _lh_matchIdent_4 with
              | `LH_N -> 
                (`LH_C(x_7, (`LH_N)))
              | `LH_C(_lh_addby_LH_C_0_0, _lh_addby_LH_C_1_0) -> 
                (if ((_lh_addby_arg1_0 x_7) <= (_lh_addby_arg1_0 _lh_addby_LH_C_0_0)) then
                  (`LH_C(x_7, (`LH_C(_lh_addby_LH_C_0_0, _lh_addby_LH_C_1_0))))
                else
                  (`LH_C(_lh_addby_LH_C_0_0, ((insert_0 x_7) _lh_addby_LH_C_1_0))))
              | _ -> 
                (failwith "error")))) in
          (((foldr_lh insert_0) _lh_addby_arg3_0) _lh_addby_arg2_0)))
      and seq2Lzq_0 = (fun _lh_seq2Lzq_arg1_0 _lh_seq2Lzq_arg2_0 _lh_seq2Lzq_arg3_0 -> 
        (let rec g_0 = (fun xs_3 -> 
          (let rec _lh_matchIdent_5 = xs_3 in
            (match _lh_matchIdent_5 with
              | `LH_P2(_lh_seq2Lzq_LH_P2_0_0, _lh_seq2Lzq_LH_P2_1_0) -> 
                ((lift_lh ((cross_lh (_lh_seq2Lzq_arg1_0 _lh_seq2Lzq_LH_P2_0_0)) (fun x_8 -> 
                  x_8))) ((Lazy.force _lh_seq2Lzq_arg3_0) _lh_seq2Lzq_LH_P2_1_0))
              | _ -> 
                (failwith "error")))) in
          (fun _lh_funcomp_x_3 -> 
            ((fun _lh_funcomp_x_4 -> 
              (squash_lh ((lift_lh g_0) _lh_funcomp_x_4))) (_lh_seq2Lzq_arg2_0 _lh_funcomp_x_3)))))
      and find_assoc_0 = (fun _lh_find_assoc_arg1_0 _lh_find_assoc_arg2_0 _lh_find_assoc_arg3_0 -> 
        (match _lh_find_assoc_arg1_0 with
          | `Afunc(_lh_find_assoc_Afunc_0_0) -> 
            ((getOrElse_lh ((lift_lh (find'_0 _lh_find_assoc_arg2_0)) ((assoc_lh _lh_find_assoc_arg3_0) _lh_find_assoc_Afunc_0_0))) (`LH_N))
          | `Avar -> 
            (`LH_N)
          | _ -> 
            (failwith "error")))
      and rpo_0 = (fun _lh_rpo_arg1_0 _lh_rpo_arg2_0 -> 
        (let rec rpo'_0 = (fun param_0 -> 
          (let rec _lh_matchIdent_6 = param_0 in
            (match _lh_matchIdent_6 with
              | `LH_P2(_lh_rpo_LH_P2_0_0, _lh_rpo_LH_P2_1_0) -> 
                (match _lh_rpo_LH_P2_0_0 with
                  | `Var(_lh_rpo_Var_0_0) -> 
                    (match _lh_rpo_LH_P2_1_0 with
                      | `Var(_lh_rpo_Var_0_1) -> 
                        (if (_lh_rpo_Var_0_0 = _lh_rpo_Var_0_1) then
                          (`Equal)
                        else
                          (`Unrelated))
                      | `Func(_lh_rpo_Func_0_0, _lh_rpo_Func_1_0) -> 
                        (if ((occurs_lh _lh_rpo_Var_0_0) (`Func(_lh_rpo_Func_0_0, _lh_rpo_Func_1_0))) then
                          (`Less)
                        else
                          (`Unrelated))
                      | _ -> 
                        ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                  | `Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1) -> 
                    (match _lh_rpo_LH_P2_1_0 with
                      | `Var(_lh_rpo_Var_0_2) -> 
                        (if ((occurs_lh _lh_rpo_Var_0_2) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) then
                          (`Greater)
                        else
                          (`Unrelated))
                      | `Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2) -> 
                        (let rec _lh_matchIdent_7 = (_lh_rpo_arg1_0 (let rec _lh_rank_order_LH_P2_1_0 = _lh_rpo_Func_0_2 in
                          (let rec _lh_rank_order_LH_P2_0_0 = _lh_rpo_Func_0_1 in
                            (fun _lh_rank_order_arg1_1 num_order_1 -> 
                              (num_order_1 (let rec _lh_num_order_LH_P2_1_0 = (_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_1_0) in
                                (let rec _lh_num_order_LH_P2_0_0 = (_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_0_0) in
                                  (fun _lh_dummy_0 -> 
                                    (if (_lh_num_order_LH_P2_0_0 > _lh_num_order_LH_P2_1_0) then
                                      (fun _lh_rpo_Func_0_3 _lh_rpo_Func_0_4 _lh_rpo_Func_1_3 _lh_rpo_Func_1_4 _lh_rpo_arg2_1 rpo'_1 -> 
                                        (if ((((quant_lh all_lh) (ltRewrite_lh rpo'_1)) (`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4))) _lh_rpo_Func_1_3) then
                                          (`Greater)
                                        else
                                          (if ((((quant_lh any_lh) (geRewrite_lh rpo'_1)) (`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4))) _lh_rpo_Func_1_3) then
                                            (`Less)
                                          else
                                            (`Unrelated))))
                                    else
                                      (if (_lh_num_order_LH_P2_0_0 < _lh_num_order_LH_P2_1_0) then
                                        (fun _lh_rpo_Func_0_5 _lh_rpo_Func_0_6 _lh_rpo_Func_1_5 _lh_rpo_Func_1_6 _lh_rpo_arg2_2 rpo'_2 -> 
                                          (if ((((quant_lh all_lh) (ltRewrite_lh rpo'_2)) (`Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5))) _lh_rpo_Func_1_6) then
                                            (`Less)
                                          else
                                            (if ((((quant_lh any_lh) (geRewrite_lh rpo'_2)) (`Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5))) _lh_rpo_Func_1_6) then
                                              (`Greater)
                                            else
                                              (`Unrelated))))
                                      else
                                        (fun _lh_rpo_Func_0_7 _lh_rpo_Func_0_8 _lh_rpo_Func_1_7 _lh_rpo_Func_1_8 _lh_rpo_arg2_3 rpo'_3 -> 
                                          ((_lh_rpo_arg2_3 rpo'_3) (let rec _lh_lex_ext_LH_P2_1_0 = (let rec _lh_lex_ext_Func_1_0 = _lh_rpo_Func_1_7 in
                                            (let rec _lh_lex_ext_Func_0_0 = _lh_rpo_Func_0_7 in
                                              (fun _lh_lex_ext_Func_0_1 _lh_lex_ext_Func_1_1 _lh_lex_ext_arg1_0 lexico_1 -> 
                                                (let rec estimate_0 = ((lexico_1 _lh_lex_ext_arg1_0) (`LH_P2(_lh_lex_ext_Func_1_1, _lh_lex_ext_Func_1_0))) in
                                                  (let rec confirm_0 = (fun x_9 -> 
                                                    (let rec _lh_matchIdent_8 = x_9 in
                                                      (match _lh_matchIdent_8 with
                                                        | `Equal -> 
                                                          true
                                                        | `Greater -> 
                                                          ((((quant_lh all_lh) (ltRewrite_lh _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1))) _lh_lex_ext_Func_1_0)
                                                        | `Less -> 
                                                          ((((quant_lh all_lh) (ltRewrite_lh _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0))) _lh_lex_ext_Func_1_1)
                                                        | `Unrelated -> 
                                                          false
                                                        | _ -> 
                                                          (failwith "error")))) in
                                                    (if (confirm_0 estimate_0) then
                                                      estimate_0
                                                    else
                                                      (if ((((quant_lh any_lh) (geRewrite_lh _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0))) _lh_lex_ext_Func_1_1) then
                                                        (`Greater)
                                                      else
                                                        (if ((((quant_lh any_lh) (geRewrite_lh _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1))) _lh_lex_ext_Func_1_0) then
                                                          (`Less)
                                                        else
                                                          (`Unrelated))))))))) in
                                            (let rec _lh_lex_ext_LH_P2_0_0 = (let rec _lh_lex_ext_Func_1_2 = _lh_rpo_Func_1_8 in
                                              (let rec _lh_lex_ext_Func_0_2 = _lh_rpo_Func_0_8 in
                                                (fun _lh_lex_ext_LH_P2_1_1 _lh_lex_ext_arg1_1 lexico_2 -> 
                                                  ((((_lh_lex_ext_LH_P2_1_1 _lh_lex_ext_Func_0_2) _lh_lex_ext_Func_1_2) _lh_lex_ext_arg1_1) lexico_2)))) in
                                              (fun _lh_lex_ext_arg1_2 lexico_3 -> 
                                                (((_lh_lex_ext_LH_P2_0_0 _lh_lex_ext_LH_P2_1_0) _lh_lex_ext_arg1_2) lexico_3)))))))))))))))) in
                          ((((((_lh_matchIdent_7 _lh_rpo_Func_0_2) _lh_rpo_Func_0_1) _lh_rpo_Func_1_2) _lh_rpo_Func_1_1) _lh_rpo_arg2_0) rpo'_0))
                      | _ -> 
                        ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                  | _ -> 
                    ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
              | _ -> 
                ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))) in
          rpo'_0))
      and split_0 = (fun _lh_split_arg1_0 _lh_split_arg2_0 -> 
        (let rec tmp_0 = ((zip_lh ((map_lh _lh_split_arg1_0) _lh_split_arg2_0)) _lh_split_arg2_0) in
          (let rec _lh_process2_LH_P2_1_0 = (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
            (match _lh_listcomp_fun_para_5 with
              | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                (match _lh_listcomp_fun_ls_h_5 with
                  | `LH_P2(_lh_split_LH_P2_0_0, _lh_split_LH_P2_1_0) -> 
                    (if (not _lh_split_LH_P2_0_0) then
                      (`LH_C(_lh_split_LH_P2_1_0, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                    else
                      (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
                  | _ -> 
                    (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_5 tmp_0)) in
            (let rec _lh_process2_LH_P2_0_0 = (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
              (match _lh_listcomp_fun_para_6 with
                | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
                  (match _lh_listcomp_fun_ls_h_6 with
                    | `LH_P2(_lh_split_LH_P2_0_1, _lh_split_LH_P2_1_1) -> 
                      (if _lh_split_LH_P2_0_1 then
                        (`LH_C(_lh_split_LH_P2_1_1, (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6)))
                      else
                        (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))
                    | _ -> 
                      (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_6 tmp_0)) in
              (fun _lh_process2_arg1_0 _lh_process2_arg2_0 _lh_process2_arg4_0 _lh_process2_arg5_0 _lh_process2_arg6_0 add_agenda_1 add_eqn_1 all_crit_pairs_1 process_1 resolve_1 super_reduce_1 -> 
                (let rec net'_0 = ((add_eqn_1 ((delete_eqns_lh ((map_lh eqno_lh) _lh_process2_LH_P2_0_0)) _lh_process2_arg4_0)) _lh_process2_arg6_0) in
                  (let rec deletions_0 = ((map_lh eqpr_lh) _lh_process2_LH_P2_0_0) in
                    (let rec critical_0 = ((all_crit_pairs_1 _lh_process2_arg6_0) _lh_process2_LH_P2_1_0) in
                      (let rec new_agenda_0 = (sift_lh ((map_lh (resolve_1 (super_reduce_1 net'_0))) ((mappend_lh deletions_0) critical_0))) in
                        (let rec todo'_0 = (((add_agenda_1 (snd_lh _lh_process2_arg1_0)) new_agenda_0) _lh_process2_arg5_0) in
                          (((((process_1 _lh_process2_arg1_0) _lh_process2_arg2_0) ((mappend_lh _lh_process2_LH_P2_1_0) (`LH_C(_lh_process2_arg6_0, (`LH_N))))) net'_0) todo'_0)))))))))))
      and build_0 = (fun _lh_build_arg1_0 _lh_build_arg2_0 _lh_funcomp_x_5 -> 
        ((lift_lh ((cross_lh _lh_build_arg1_0) (fun x_1_0 -> 
          x_1_0))) (_lh_build_arg2_0 _lh_funcomp_x_5)))
      and process1_0 = (fun _lh_process1_arg1_0 _lh_process1_arg2_0 _lh_process1_arg3_0 _lh_process1_arg4_0 _lh_process1_arg5_0 _lh_process1_arg6_0 -> 
        ((((((((_lh_process1_arg6_0 _lh_process1_arg1_0) _lh_process1_arg2_0) _lh_process1_arg3_0) _lh_process1_arg4_0) _lh_process1_arg5_0) add_agenda_0) process2_0) process_0))
      and p_op_0 = (fun _lh_p_op_arg1_0 -> 
        ((sp_0 (string_of_0 opsym_0)) _lh_p_op_arg1_0))
      and p_prim_0 = (fun _lh_p_prim_arg1_0 -> 
        (((orElseMap_lh p_name_0) ((seQ_0 (fun x_1_1 -> 
          ((atIndex_lh 1) x_1_1))) (`LH_C((look_for_0 '('), (`LH_C(p_expr_0, (`LH_C((look_for_0 ')'), (`LH_N))))))))) _lh_p_prim_arg1_0))
      and reducible_0 = (fun _lh_reducible_arg1_0 _lh_reducible_arg2_0 -> 
        (match _lh_reducible_arg2_0 with
          | `Eqn(_lh_reducible_Eqn_0_0, _lh_reducible_Eqn_1_0) -> 
            (match _lh_reducible_Eqn_1_0 with
              | `LH_P2(_lh_reducible_LH_P2_0_0, _lh_reducible_LH_P2_1_0) -> 
                ((exists_lh (_lh_reducible_arg1_0 _lh_reducible_LH_P2_0_0)) || (exists_lh (_lh_reducible_arg1_0 _lh_reducible_LH_P2_1_0)))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and mk_list_0 = (fun _lh_mk_list_arg1_0 _lh_mk_list_arg2_0 -> 
        (match _lh_mk_list_arg2_0 with
          | `List(_lh_mk_list_List_0_0) -> 
            (_lh_mk_list_arg1_0 _lh_mk_list_List_0_0)
          | _ -> 
            (failwith "error")))
      and lexico_0 = (fun _lh_lexico_arg1_0 _lh_lexico_arg2_0 -> 
        (match _lh_lexico_arg2_0 with
          | `LH_P2(_lh_lexico_LH_P2_0_0, _lh_lexico_LH_P2_1_0) -> 
            (match _lh_lexico_LH_P2_0_0 with
              | `LH_N -> 
                (match _lh_lexico_LH_P2_1_0 with
                  | `LH_N -> 
                    (`Equal)
                  | `LH_C(_lh_lexico_LH_C_0_0, _lh_lexico_LH_C_1_0) -> 
                    (`Less)
                  | _ -> 
                    (failwith "error"))
              | `LH_C(_lh_lexico_LH_C_0_1, _lh_lexico_LH_C_1_1) -> 
                (match _lh_lexico_LH_P2_1_0 with
                  | `LH_N -> 
                    (`Greater)
                  | `LH_C(_lh_lexico_LH_C_0_2, _lh_lexico_LH_C_1_2) -> 
                    ((lex_combine_0 (_lh_lexico_arg1_0 (`LH_P2(_lh_lexico_LH_C_0_1, _lh_lexico_LH_C_0_2)))) ((lexico_0 _lh_lexico_arg1_0) (`LH_P2(_lh_lexico_LH_C_1_1, _lh_lexico_LH_C_1_2))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and find_0 = (fun _lh_find_arg1_0 _lh_find_arg2_0 -> 
        ((find'_0 (g_init_0 _lh_find_arg1_0)) _lh_find_arg2_0))
      and rank_0 = (fun _lh_rank_arg1_0 -> 
        (match _lh_rank_arg1_0 with
          | `LH_C(_lh_rank_LH_C_0_0, _lh_rank_LH_C_1_0) -> 
            (match _lh_rank_LH_C_0_0 with
              | 'E' -> 
                (match _lh_rank_LH_C_1_0 with
                  | `LH_N -> 
                    1
                  | _ -> 
                    (failwith "error"))
              | '*' -> 
                (match _lh_rank_LH_C_1_0 with
                  | `LH_N -> 
                    2
                  | _ -> 
                    (failwith "error"))
              | 'I' -> 
                (match _lh_rank_LH_C_1_0 with
                  | `LH_N -> 
                    3
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and is_switch_0 = (fun _lh_is_switch_arg1_0 -> 
        (match _lh_is_switch_arg1_0 with
          | `Switch(_lh_is_switch_Switch_0_0, _lh_is_switch_Switch_1_0) -> 
            true
          | `Return(_lh_is_switch_Return_0_0) -> 
            false
          | _ -> 
            (failwith "error")))
      and q_func_0 = (fun _lh_q_func_arg1_0 -> 
        (match _lh_q_func_arg1_0 with
          | `LH_C(_lh_q_func_LH_C_0_0, _lh_q_func_LH_C_1_0) -> 
            (match _lh_q_func_LH_C_0_0 with
              | `MkString(_lh_q_func_MkString_0_0) -> 
                (match _lh_q_func_LH_C_1_0 with
                  | `LH_C(_lh_q_func_LH_C_0_1, _lh_q_func_LH_C_1_1) -> 
                    (match _lh_q_func_LH_C_1_1 with
                      | `LH_C(_lh_q_func_LH_C_0_2, _lh_q_func_LH_C_1_2) -> 
                        (match _lh_q_func_LH_C_0_2 with
                          | `List(_lh_q_func_List_0_0) -> 
                            (match _lh_q_func_LH_C_1_2 with
                              | `LH_C(_lh_q_func_LH_C_0_3, _lh_q_func_LH_C_1_3) -> 
                                (match _lh_q_func_LH_C_1_3 with
                                  | `LH_N -> 
                                    (`Expr((`Func(_lh_q_func_MkString_0_0, ((map_lh unExpr_0) _lh_q_func_List_0_0)))))
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
            (failwith "error")))
      and knuth_bendix_0 = (fun _lh_knuth_bendix_arg1_0 _lh_knuth_bendix_arg2_0 -> 
        ((knuth_bendix1_0 (`LH_P2(_lh_knuth_bendix_arg1_0, cost_lh))) _lh_knuth_bendix_arg2_0))
      and add_agenda_0 = (fun _lh_add_agenda_arg1_0 _lh_add_agenda_arg2_0 -> 
        ((addby_0 item_cost_0) ((map_lh (mk_item_0 _lh_add_agenda_arg1_0)) _lh_add_agenda_arg2_0)))
      and g_init_0 = (fun _lh_g_init_arg1_0 -> 
        (`LH_C(_lh_g_init_arg1_0, (`LH_N))))
      and mk_dnet_0 = (fun _lh_mk_dnet_arg1_0 -> 
        (((foldl_lh add_eqn_0) empty_net_0) _lh_mk_dnet_arg1_0))
      and p_name_0 = (fun _lh_p_name_arg1_0 -> 
        (((build_0 q_name_0) p_ident_0) _lh_p_name_arg1_0))
      and q_op_0 = (fun _lh_q_op_arg1_0 -> 
        (match _lh_q_op_arg1_0 with
          | `LH_C(_lh_q_op_LH_C_0_0, _lh_q_op_LH_C_1_0) -> 
            (match _lh_q_op_LH_C_0_0 with
              | `Expr(_lh_q_op_Expr_0_0) -> 
                (match _lh_q_op_LH_C_1_0 with
                  | `LH_C(_lh_q_op_LH_C_0_1, _lh_q_op_LH_C_1_1) -> 
                    (match _lh_q_op_LH_C_0_1 with
                      | `MkString(_lh_q_op_MkString_0_0) -> 
                        (match _lh_q_op_LH_C_1_1 with
                          | `LH_C(_lh_q_op_LH_C_0_2, _lh_q_op_LH_C_1_2) -> 
                            (match _lh_q_op_LH_C_0_2 with
                              | `Expr(_lh_q_op_Expr_0_1) -> 
                                (match _lh_q_op_LH_C_1_2 with
                                  | `LH_N -> 
                                    (`Expr((`Func(_lh_q_op_MkString_0_0, (`LH_C(_lh_q_op_Expr_0_0, (`LH_C(_lh_q_op_Expr_0_1, (`LH_N)))))))))
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
            (failwith "error")))
      and unExpr_0 = (fun _lh_unExpr_arg1_0 -> 
        (match _lh_unExpr_arg1_0 with
          | `Expr(_lh_unExpr_Expr_0_0) -> 
            _lh_unExpr_Expr_0_0
          | _ -> 
            (failwith "error")))
      and opsym_0 = (fun _lh_opsym_arg1_0 -> 
        ((fun x_1_2 -> 
          ((inList_lh x_1_2) (`LH_C('*', (`LH_C('+', (`LH_C('%', (`LH_C('@', (`LH_C('-', (`LH_C('/', (`LH_C('?', (`LH_C(':', (`LH_N))))))))))))))))))) _lh_opsym_arg1_0))
      and resolve_0 = (fun _lh_resolve_arg1_0 _lh_resolve_arg2_0 -> 
        (let rec lhs'_0 = ((simplify_lh _lh_resolve_arg1_0) (fst_lh _lh_resolve_arg2_0)) in
          (let rec rhs'_0 = ((simplify_lh _lh_resolve_arg1_0) (snd_lh _lh_resolve_arg2_0)) in
            (if ((eqExpr_lh lhs'_0) rhs'_0) then
              croak_lh
            else
              (succeed_lh (`LH_P2(lhs'_0, rhs'_0)))))))
      and p_term_0 = (fun _lh_p_term_arg1_0 -> 
        (((orElseMap_lh ((seQ_0 q_func_0) (`LH_C(p_ident_0, (`LH_C((look_for_0 '('), (`LH_C(((list_of_0 p_expr_0) ','), (`LH_C((look_for_0 ')'), (`LH_N))))))))))) p_prim_0) _lh_p_term_arg1_0))
      and add_eqn_0 = (fun _lh_add_eqn_arg1_0 _lh_add_eqn_arg2_0 -> 
        (((thread_0 (preorder_0 (g_init_0 (lhs_lh _lh_add_eqn_arg2_0)))) _lh_add_eqn_arg2_0) _lh_add_eqn_arg1_0))
      and thread_0 = (fun _lh_thread_arg1_0 _lh_thread_arg2_0 _lh_thread_arg3_0 -> 
        (match _lh_thread_arg1_0 with
          | `LH_C(_lh_thread_LH_C_0_0, _lh_thread_LH_C_1_0) -> 
            (match _lh_thread_LH_C_0_0 with
              | `Afunc(_lh_thread_Afunc_0_0) -> 
                (match _lh_thread_arg3_0 with
                  | `Switch(_lh_thread_Switch_0_0, _lh_thread_Switch_1_0) -> 
                    (`Switch(((((update_alist_lh _lh_thread_Afunc_0_0) ((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0)) empty_net_0) _lh_thread_Switch_0_0), _lh_thread_Switch_1_0))
                  | `Return(_lh_thread_Return_0_0) -> 
                    (((thread_0 (`LH_C((`Afunc(_lh_thread_Afunc_0_0)), _lh_thread_LH_C_1_0))) _lh_thread_arg2_0) (`Switch((`LH_N), (`Return(_lh_thread_Return_0_0)))))
                  | _ -> 
                    (failwith "error"))
              | `Avar -> 
                (match _lh_thread_arg3_0 with
                  | `Switch(_lh_thread_Switch_0_1, _lh_thread_Switch_1_1) -> 
                    (`Switch(_lh_thread_Switch_0_1, (((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0) _lh_thread_Switch_1_1)))
                  | `Return(_lh_thread_Return_0_1) -> 
                    (let rec d'_0 = (((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0) (`Return(_lh_thread_Return_0_1))) in
                      (if (is_switch_0 d'_0) then
                        (`Switch((`LH_N), d'_0))
                      else
                        d'_0))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | `LH_N -> 
            (match _lh_thread_arg3_0 with
              | `Return(_lh_thread_Return_0_2) -> 
                (`Return((`LH_C(_lh_thread_arg2_0, _lh_thread_Return_0_2))))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and item_cost_0 = (fun _lh_item_cost_arg1_0 -> 
        (match _lh_item_cost_arg1_0 with
          | `Item(_lh_item_cost_Item_0_0, _lh_item_cost_Item_1_0) -> 
            _lh_item_cost_Item_0_0
          | _ -> 
            (failwith "error")))
      and g_rest_0 = (fun _lh_g_rest_arg1_0 -> 
        (match _lh_g_rest_arg1_0 with
          | `LH_C(_lh_g_rest_LH_C_0_0, _lh_g_rest_LH_C_1_0) -> 
            (match _lh_g_rest_LH_C_0_0 with
              | `Func(_lh_g_rest_Func_0_0, _lh_g_rest_Func_1_0) -> 
                ((mappend_lh _lh_g_rest_Func_1_0) _lh_g_rest_LH_C_1_0)
              | `Var(_lh_g_rest_Var_0_0) -> 
                _lh_g_rest_LH_C_1_0
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and lex_ext_0 = (fun _lh_lex_ext_arg1_3 _lh_lex_ext_arg2_0 -> 
        ((_lh_lex_ext_arg2_0 _lh_lex_ext_arg1_3) lexico_0))
      and empty_0 = (fun _lh_empty_arg1_0 -> 
        (succeed_lh (`LH_P2((`List((`LH_N))), _lh_empty_arg1_0))))
      and g_skip_0 = (fun _lh_g_skip_arg1_0 -> 
        (tail_lh _lh_g_skip_arg1_0))
      and super_reduce_0 = (fun _lh_super_reduce_arg1_0 -> 
        (inside_lh (dnet_reduce_0 _lh_super_reduce_arg1_0)))
      and unString_0 = (fun _lh_unString_arg1_0 -> 
        (match _lh_unString_arg1_0 with
          | `MkString(_lh_unString_MkString_0_0) -> 
            _lh_unString_MkString_0_0
          | _ -> 
            (failwith "error")))
      and look_for_0 = (fun _lh_look_for_arg1_0 -> 
        (sp_0 (pchar_0 (fun x_1_3 -> 
          (x_1_3 = _lh_look_for_arg1_0)))))
      and mk_crit_0 = (fun _lh_mk_crit_arg1_0 _lh_mk_crit_arg2_0 _lh_mk_crit_arg3_0 -> 
        (match _lh_mk_crit_arg1_0 with
          | `Eqn(_lh_mk_crit_Eqn_0_0, _lh_mk_crit_Eqn_1_0) -> 
            (match _lh_mk_crit_Eqn_1_0 with
              | `LH_P2(_lh_mk_crit_LH_P2_0_0, _lh_mk_crit_LH_P2_1_0) -> 
                (match _lh_mk_crit_arg2_0 with
                  | `Eqn(_lh_mk_crit_Eqn_0_1, _lh_mk_crit_Eqn_1_1) -> 
                    (match _lh_mk_crit_Eqn_1_1 with
                      | `LH_P2(_lh_mk_crit_LH_P2_0_1, _lh_mk_crit_LH_P2_1_1) -> 
                        (match _lh_mk_crit_arg3_0 with
                          | `LH_P2(_lh_mk_crit_LH_P2_0_2, _lh_mk_crit_LH_P2_1_2) -> 
                            (`LH_P2(((sub_lh (((replace_lh _lh_mk_crit_LH_P2_0_1) _lh_mk_crit_LH_P2_0_2) _lh_mk_crit_LH_P2_1_0)) _lh_mk_crit_LH_P2_1_2), ((sub_lh _lh_mk_crit_LH_P2_1_1) _lh_mk_crit_LH_P2_1_2)))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and list_of_0 = (fun _lh_list_of_arg1_0 _lh_list_of_arg2_0 -> 
        (let rec p'_0 = (lazy (((seq2_0 mk_cons_0) _lh_list_of_arg1_0) ((orElseMap_lh (((seq2Lzq_0 (fun x_1_4 y_2 -> 
          y_2)) (look_for_0 _lh_list_of_arg2_0)) p'_0)) empty_0))) in
          (Lazy.force p'_0)))
      and seQ_0 = (fun _lh_seQ_arg1_0 _lh_seQ_arg2_0 -> 
        ((build_0 (mk_list_0 _lh_seQ_arg1_0)) (((foldr_lh (seq2_0 mk_cons_0)) empty_0) _lh_seQ_arg2_0)))
      and q_name_0 = (fun _lh_q_name_arg1_0 -> 
        (match _lh_q_name_arg1_0 with
          | `MkString(_lh_q_name_MkString_0_0) -> 
            (if (((int_of_char ((atIndex_lh 0) _lh_q_name_MkString_0_0)) >= (int_of_char 'a')) && ((int_of_char ((atIndex_lh 0) _lh_q_name_MkString_0_0)) <= (int_of_char 'z'))) then
              (`Expr((`Var(_lh_q_name_MkString_0_0))))
            else
              (`Expr((`Func(_lh_q_name_MkString_0_0, (`LH_N))))))
          | _ -> 
            (failwith "error")))
      and lex_combine_0 = (fun _lh_lex_combine_arg1_0 _lh_lex_combine_arg2_0 -> 
        (match _lh_lex_combine_arg1_0 with
          | `Equal -> 
            _lh_lex_combine_arg2_0
          | `Greater -> 
            (`Greater)
          | `Less -> 
            (`Less)
          | `Unrelated -> 
            (`Unrelated)
          | _ -> 
            (failwith "error")))
      and num_order_0 = (fun _lh_num_order_arg1_0 -> 
        (_lh_num_order_arg1_0 99))
      and pchar_0 = (fun _lh_pchar_arg1_0 _lh_pchar_arg2_0 -> 
        (match _lh_pchar_arg2_0 with
          | `LH_N -> 
            croak_lh
          | `LH_C(_lh_pchar_LH_C_0_0, _lh_pchar_LH_C_1_0) -> 
            (if (_lh_pchar_arg1_0 _lh_pchar_LH_C_0_0) then
              (succeed_lh (`LH_P2((`MkString((`LH_C(_lh_pchar_LH_C_0_0, (`LH_N))))), _lh_pchar_LH_C_1_0)))
            else
              croak_lh)
          | _ -> 
            (failwith "error")))
      and crit_pairs_0 = (fun _lh_crit_pairs_arg1_0 _lh_crit_pairs_arg2_0 -> 
        ((mappend_lh ((map_lh ((mk_crit_0 _lh_crit_pairs_arg1_0) _lh_crit_pairs_arg2_0)) ((superpose_0 (lhs_lh _lh_crit_pairs_arg1_0)) (lhs_lh _lh_crit_pairs_arg2_0)))) ((map_lh ((mk_crit_0 _lh_crit_pairs_arg2_0) _lh_crit_pairs_arg1_0)) ((strict_super_0 (lhs_lh _lh_crit_pairs_arg2_0)) (lhs_lh _lh_crit_pairs_arg1_0)))))
      and strict_super_0 = (fun _lh_strict_super_arg1_0 _lh_strict_super_arg2_0 -> 
        (match _lh_strict_super_arg2_0 with
          | `Func(_lh_strict_super_Func_0_0, _lh_strict_super_Func_1_0) -> 
            (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
              (match _lh_listcomp_fun_para_7 with
                | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
                  (match _lh_listcomp_fun_ls_h_7 with
                    | `LH_P2(_lh_strict_super_LH_P2_0_0, _lh_strict_super_LH_P2_1_0) -> 
                      (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
                        (match _lh_listcomp_fun_para_8 with
                          | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
                            (match _lh_listcomp_fun_ls_h_8 with
                              | `LH_P2(_lh_strict_super_LH_P2_0_1, _lh_strict_super_LH_P2_1_1) -> 
                                (`LH_C((`LH_P2((`LH_C(_lh_strict_super_LH_P2_0_0, _lh_strict_super_LH_P2_0_1)), _lh_strict_super_LH_P2_1_1)), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
                              | _ -> 
                                (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
                          | `LH_N -> 
                            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))) in
                        (_lh_listcomp_fun_8 ((superpose_0 _lh_strict_super_arg1_0) _lh_strict_super_LH_P2_1_0)))
                    | _ -> 
                      (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_7 ((zip_lz_nl_lh (enumFrom_lh 0)) _lh_strict_super_Func_1_0)))
          | _ -> 
            (failwith "error")))
      and dominates_0 = (fun _lh_dominates_arg1_0 -> 
        ((quant_lh all_lh) ((quant_lh any_lh) (gtRewrite_lh _lh_dominates_arg1_0))))
      and knuth_bendix1_0 = (fun _lh_knuth_bendix1_arg1_0 _lh_knuth_bendix1_arg2_0 -> 
        (((((process_0 _lh_knuth_bendix1_arg1_0) 1) (`LH_N)) empty_net_0) (((add_agenda_0 (snd_lh _lh_knuth_bendix1_arg1_0)) _lh_knuth_bendix1_arg2_0) (`LH_N))))
      and mk_item_0 = (fun _lh_mk_item_arg1_0 _lh_mk_item_arg2_0 -> 
        (`Item((_lh_mk_item_arg1_0 _lh_mk_item_arg2_0), _lh_mk_item_arg2_0)))
      and sp_0 = (fun _lh_sp_arg1_0 _lh_funcomp_x_6 -> 
        (_lh_sp_arg1_0 ((dropWhile_lh (fun x_1_5 -> 
          (x_1_5 = ' '))) _lh_funcomp_x_6)))
      and p_eqn_0 = (fun _lh_p_eqn_arg1_0 -> 
        (((seQ_0 q_eqn_0) (`LH_C(p_expr_0, (`LH_C((look_for_0 '='), (`LH_C(p_expr_0, (`LH_N)))))))) _lh_p_eqn_arg1_0))
      and p_ident_0 = (fun _lh_p_ident_arg1_0 -> 
        ((sp_0 (string_of_0 alphanum_0)) _lh_p_ident_arg1_0))
      and process2_0 = (fun _lh_process2_arg1_1 _lh_process2_arg2_1 _lh_process2_arg3_0 _lh_process2_arg4_1 _lh_process2_arg5_1 _lh_process2_arg6_1 -> 
        (let rec _lh_matchIdent_9 = ((split_0 (reducible_0 (reduce1_lh _lh_process2_arg6_1))) _lh_process2_arg3_0) in
          (((((((((((_lh_matchIdent_9 _lh_process2_arg1_1) _lh_process2_arg2_1) _lh_process2_arg4_1) _lh_process2_arg5_1) _lh_process2_arg6_1) add_agenda_0) add_eqn_0) all_crit_pairs_0) process_0) resolve_0) super_reduce_0)))
      and dnet_reduce_0 = (fun _lh_dnet_reduce_arg1_0 _lh_dnet_reduce_arg2_0 -> 
        ((try_all_lh ((map_lh rewrite_lh) ((find_0 _lh_dnet_reduce_arg2_0) _lh_dnet_reduce_arg1_0))) _lh_dnet_reduce_arg2_0))
      and find'_0 = (fun _lh_find'_arg1_0 _lh_find'_arg2_0 -> 
        (match _lh_find'_arg2_0 with
          | `Return(_lh_find'_Return_0_0) -> 
            _lh_find'_Return_0_0
          | `Switch(_lh_find'_Switch_0_0, _lh_find'_Switch_1_0) -> 
            ((mappend_lh (((find_assoc_0 (g_first_0 _lh_find'_arg1_0)) (g_rest_0 _lh_find'_arg1_0)) _lh_find'_Switch_0_0)) ((find'_0 (g_skip_0 _lh_find'_arg1_0)) _lh_find'_Switch_1_0))
          | _ -> 
            (failwith "error")))
      and multi_ext_0 = (fun _lh_multi_ext_arg1_0 _lh_multi_ext_arg2_0 -> 
        (match _lh_multi_ext_arg2_0 with
          | `LH_P2(_lh_multi_ext_LH_P2_0_0, _lh_multi_ext_LH_P2_1_0) -> 
            (match _lh_multi_ext_LH_P2_0_0 with
              | `Func(_lh_multi_ext_Func_0_0, _lh_multi_ext_Func_1_0) -> 
                (match _lh_multi_ext_LH_P2_1_0 with
                  | `Func(_lh_multi_ext_Func_0_1, _lh_multi_ext_Func_1_1) -> 
                    ((multi_0 _lh_multi_ext_arg1_0) (let rec _lh_multi_LH_P2_1_0 = _lh_multi_ext_Func_1_1 in
                      (let rec _lh_multi_LH_P2_0_0 = _lh_multi_ext_Func_1_0 in
                        (fun _lh_multi_arg1_1 dominates_1 rem_eq_1 -> 
                          (let rec _lh_matchIdent_1_0 = ((rem_eq_1 (eqRewrite_lh _lh_multi_arg1_1)) (`LH_P2(_lh_multi_LH_P2_0_0, _lh_multi_LH_P2_1_0))) in
                            (match _lh_matchIdent_1_0 with
                              | `LH_P2(_lh_multi_LH_P2_0_1, _lh_multi_LH_P2_1_1) -> 
                                (if (((dominates_1 _lh_multi_arg1_1) _lh_multi_LH_P2_0_1) _lh_multi_LH_P2_1_1) then
                                  (`Greater)
                                else
                                  (if (((dominates_1 _lh_multi_arg1_1) _lh_multi_LH_P2_1_1) _lh_multi_LH_P2_0_1) then
                                    (`Less)
                                  else
                                    (`Unrelated)))
                              | _ -> 
                                (failwith "error")))))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and seq2_0 = (fun _lh_seq2_arg1_0 _lh_seq2_arg2_0 _lh_seq2_arg3_0 -> 
        (let rec g_1 = (fun xs_4 -> 
          (let rec _lh_matchIdent_1_1 = xs_4 in
            (match _lh_matchIdent_1_1 with
              | `LH_P2(_lh_seq2_LH_P2_0_0, _lh_seq2_LH_P2_1_0) -> 
                ((lift_lh ((cross_lh (_lh_seq2_arg1_0 _lh_seq2_LH_P2_0_0)) (fun x_1_6 -> 
                  x_1_6))) (_lh_seq2_arg3_0 _lh_seq2_LH_P2_1_0))
              | _ -> 
                (failwith "error")))) in
          (fun _lh_funcomp_x_7 -> 
            ((fun _lh_funcomp_x_8 -> 
              (squash_lh ((lift_lh g_1) _lh_funcomp_x_8))) (_lh_seq2_arg2_0 _lh_funcomp_x_7)))))
      and g_first_0 = (fun _lh_g_first_arg1_0 -> 
        (match _lh_g_first_arg1_0 with
          | `LH_C(_lh_g_first_LH_C_0_0, _lh_g_first_LH_C_1_0) -> 
            (match _lh_g_first_LH_C_0_0 with
              | `Func(_lh_g_first_Func_0_0, _lh_g_first_Func_1_0) -> 
                (`Afunc(_lh_g_first_Func_0_0))
              | `Var(_lh_g_first_Var_0_0) -> 
                (`Avar)
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and p_expr_0 = (fun _lh_p_expr_arg1_0 -> 
        (((orElseMap_lh ((seQ_0 q_op_0) (`LH_C(p_term_0, (`LH_C(p_op_0, (`LH_C(p_term_0, (`LH_N))))))))) p_term_0) _lh_p_expr_arg1_0))
      and all_crit_pairs_0 = (fun _lh_all_crit_pairs_arg1_0 _lh_all_crit_pairs_arg2_0 -> 
        (let rec eqn'_0 = ((stand_eqn_lh (`LH_C('1', (`LH_N)))) _lh_all_crit_pairs_arg1_0) in
          (let rec eqn''_0 = ((stand_eqn_lh (`LH_C('2', (`LH_N)))) _lh_all_crit_pairs_arg1_0) in
            (let rec theory''_0 = ((map_lh (stand_eqn_lh (`LH_C('2', (`LH_N))))) _lh_all_crit_pairs_arg2_0) in
              ((mappend_lh ((map_lh ((mk_crit_0 eqn'_0) eqn''_0)) ((strict_super_0 (lhs_lh eqn'_0)) (lhs_lh eqn''_0)))) (concat_lh ((map_lh (crit_pairs_0 eqn'_0)) theory''_0)))))))
      and parse_0 = (fun _lh_parse_arg1_0 -> 
        ((fun _lh_funcomp_x_9 -> 
          ((fun _lh_funcomp_x_1_0 -> 
            ((fun _lh_funcomp_x_1_1 -> 
              (unExpr_0 (fst_lh _lh_funcomp_x_1_1))) (the_lh _lh_funcomp_x_1_0))) (p_expr_0 _lh_funcomp_x_9))) _lh_parse_arg1_0))
      and mk_cons_0 = (fun _lh_mk_cons_arg1_0 _lh_mk_cons_arg2_0 -> 
        (match _lh_mk_cons_arg2_0 with
          | `List(_lh_mk_cons_List_0_0) -> 
            (`List((`LH_C(_lh_mk_cons_arg1_0, _lh_mk_cons_List_0_0))))
          | _ -> 
            (failwith "error")))
      and string_of_0 = (fun _lh_string_of_arg1_0 _lh_string_of_arg2_0 -> 
        (let rec chars_0 = ((takeWhile_lh _lh_string_of_arg1_0) _lh_string_of_arg2_0) in
          (let rec s'_0 = ((dropWhile_lh _lh_string_of_arg1_0) _lh_string_of_arg2_0) in
            ((maybeX_lh (chars_0 <> (`LH_N))) (`LH_P2((`MkString(chars_0)), s'_0))))))
      and preorder_0 = (fun _lh_preorder_arg1_0 -> 
        (if ((eqListExpr_lh _lh_preorder_arg1_0) (`LH_N)) then
          (`LH_N)
        else
          ((mappend_lh (`LH_C((g_first_0 _lh_preorder_arg1_0), (`LH_N)))) (preorder_0 (g_rest_0 _lh_preorder_arg1_0)))))
      and alphanum_0 = (fun _lh_alphanum_arg1_0 -> 
        (((((int_of_char _lh_alphanum_arg1_0) >= (int_of_char 'A')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char 'Z'))) || (((int_of_char _lh_alphanum_arg1_0) >= (int_of_char 'a')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char 'z')))) || (((int_of_char _lh_alphanum_arg1_0) >= (int_of_char '0')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char '9')))))
      and preprocess_0 = (fun _lh_preprocess_arg1_0 _lh_preprocess_arg2_0 -> 
        (match _lh_preprocess_arg2_0 with
          | `LH_P2(_lh_preprocess_LH_P2_0_0, _lh_preprocess_LH_P2_1_0) -> 
            (let rec _lh_process1_LH_P2_1_0 = ((simplify_lh (super_reduce_0 _lh_preprocess_arg1_0)) _lh_preprocess_LH_P2_1_0) in
              (let rec _lh_process1_LH_P2_0_0 = ((simplify_lh (super_reduce_0 _lh_preprocess_arg1_0)) _lh_preprocess_LH_P2_0_0) in
                (fun _lh_process1_arg1_1 _lh_process1_arg2_1 _lh_process1_arg3_1 _lh_process1_arg4_1 _lh_process1_arg5_1 add_agenda_2 process2_1 process_2 -> 
                  (let rec o_0 = ((fst_lh _lh_process1_arg1_1) (`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0))) in
                    (let rec _lh_matchIdent_1_2 = o_0 in
                      (match _lh_matchIdent_1_2 with
                        | `Unrelated -> 
                          (((((process_2 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) (((add_agenda_2 (fun dum_3 -> 
                            1000)) (`LH_C((`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0)), (`LH_N)))) _lh_process1_arg5_1))
                        | `Equal -> 
                          (((((process_2 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1)
                        | _ -> 
                          (let rec eqn_0 = (let rec _lh_matchIdent_1_3 = o_0 in
                            (match _lh_matchIdent_1_3 with
                              | `Greater -> 
                                (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0))))
                              | `Less -> 
                                (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_1_0, _lh_process1_LH_P2_0_0))))
                              | _ -> 
                                (failwith "error"))) in
                            ((((((process2_1 _lh_process1_arg1_1) (_lh_process1_arg2_1 + 1)) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1) eqn_0))))))))
          | _ -> 
            (failwith "error")))
      and empty_net_0 = (`Return((`LH_N)))
      and process_0 = (fun _lh_process_arg1_0 _lh_process_arg2_0 _lh_process_arg3_0 _lh_process_arg4_0 _lh_process_arg5_0 -> 
        (match _lh_process_arg5_0 with
          | `LH_N -> 
            _lh_process_arg4_0
          | `LH_C(_lh_process_LH_C_0_0, _lh_process_LH_C_1_0) -> 
            (match _lh_process_LH_C_0_0 with
              | `Item(_lh_process_Item_0_0, _lh_process_Item_1_0) -> 
                ((((((process1_0 _lh_process_arg1_0) _lh_process_arg2_0) _lh_process_arg3_0) _lh_process_arg4_0) _lh_process_LH_C_1_0) ((preprocess_0 _lh_process_arg4_0) _lh_process_Item_1_0))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      in (let rec group_completion_0 = ((knuth_bendix_0 ((rpo_0 (rank_order_0 rank_0)) lex_ext_0)) ((map_lh parse_eqn_0) (`LH_C((`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('x', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C('(', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('E', (`LH_N))))))))))))))))))))))))), (`LH_N))))))))) in
        ((eqExpr_lh ((simplify_lh (super_reduce_0 group_completion_0)) (parse_0 _lh_result_LH_P2_0_0))) (parse_0 _lh_result_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec testRewrite_nofib_lh _lh_testRewrite_nofib_arg1_0 =
  ((all_lh result_lh) ((copy_lh _lh_testRewrite_nofib_arg1_0) (`LH_P2((`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_N))))))))))))))))), (`LH_C('I', (`LH_C('(', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))));;
end;;

