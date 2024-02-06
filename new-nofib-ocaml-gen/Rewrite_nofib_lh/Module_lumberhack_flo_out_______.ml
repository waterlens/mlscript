

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______ = struct
let rec fst_lh__d4 _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1_d3 f_2_9 ls_5 =
  (match ls_5 with
    | `LH_C(h_2_2, t_2_7) -> 
      (`LH_C((f_2_9 h_2_2), ((map_lh__d1_d3 f_2_9) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec expr_fold_lh__d1 _lh_expr_fold_arg1_0 _lh_expr_fold_arg2_0 _lh_expr_fold_arg3_0 =
  (match _lh_expr_fold_arg3_0 with
    | `Var(_lh_expr_fold_Var_0_0) -> 
      (_lh_expr_fold_arg2_0 _lh_expr_fold_Var_0_0)
    | `Func(_lh_expr_fold_Func_0_0, _lh_expr_fold_Func_1_0) -> 
      ((_lh_expr_fold_arg1_0 _lh_expr_fold_Func_0_0) ((map_lh__d1_d3 ((expr_fold_lh__d1 _lh_expr_fold_arg1_0) _lh_expr_fold_arg2_0)) _lh_expr_fold_Func_1_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_2_3, t_2_8) -> 
      (`LH_C(h_2_3, ((mappend_lh__d7 t_2_8) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec stand_lh__d1 _lh_stand_arg1_0 =
  ((expr_fold_lh__d1 (fun x_1_8 y_1 -> 
    (`Func(x_1_8, y_1)))) (fun v_0 -> 
    (`Var(((mappend_lh__d7 v_0) _lh_stand_arg1_0)))));;
let rec stand_eqn_lh__d3 _lh_stand_eqn_arg1_0 _lh_stand_eqn_arg2_0 =
  (match _lh_stand_eqn_arg2_0 with
    | `Eqn(_lh_stand_eqn_Eqn_0_0, _lh_stand_eqn_Eqn_1_0) -> 
      (match _lh_stand_eqn_Eqn_1_0 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_0, _lh_stand_eqn_LH_P2_1_0) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_0, (`LH_P2(((stand_lh__d1 _lh_stand_eqn_arg1_0) _lh_stand_eqn_LH_P2_0_0), ((stand_lh__d1 _lh_stand_eqn_arg1_0) _lh_stand_eqn_LH_P2_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d3 f_4_0 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_3_4, t_4_1) -> 
      (let rec t_4_2 = ((map_lh__d3 f_4_0) t_4_1) in
        (let rec h_3_5 = (f_4_0 h_3_4) in
          (fun ys_1_0 -> 
            (`LH_C(h_3_5, (t_4_2 ys_1_0))))))
    | `LH_N -> 
      (fun ys_1_1 -> 
        ys_1_1));;
let rec orElse_lh__d1 _lh_orElse_arg1_0 _lh_orElse_arg2_0 =
  (match _lh_orElse_arg1_0 with
    | `Nothing -> 
      _lh_orElse_arg2_0
    | _ -> 
      _lh_orElse_arg1_0);;
let rec orElseMap_lh__d4 _lh_orElseMap_arg1_0 _lh_orElseMap_arg2_0 _lh_orElseMap_arg3_0 =
  ((orElse_lh__d1 (_lh_orElseMap_arg1_0 _lh_orElseMap_arg3_0)) (_lh_orElseMap_arg2_0 _lh_orElseMap_arg3_0));;
let rec getOrElse_lh__d2 _lh_getOrElse_arg1_1 _lh_getOrElse_arg2_3 =
  (match _lh_getOrElse_arg1_1 with
    | `Just(_lh_getOrElse_Just_0_1) -> 
      _lh_getOrElse_Just_0_1
    | `Nothing -> 
      _lh_getOrElse_arg2_3
    | _ -> 
      (failwith "error"));;
let rec lift_lh__d1_d0 _lh_lift_arg1_2 _lh_lift_arg2_2 =
  (match _lh_lift_arg2_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_2) -> 
      (`Just((_lh_lift_arg1_2 _lh_lift_Just_0_2)))
    | _ -> 
      (failwith "error"));;
let rec simplify_lh__d5 _lh_simplify_arg1_0 =
  (let rec f_0 = (fun t_0 -> 
    ((getOrElse_lh__d2 ((lift_lh__d1_d0 f_0) (_lh_simplify_arg1_0 t_0))) t_0)) in
    f_0);;
let rec cross_lh__d2 _lh_cross_arg1_0 _lh_cross_arg2_0 _lh_cross_arg3_0 =
  (match _lh_cross_arg3_0 with
    | `LH_P2(_lh_cross_LH_P2_0_0, _lh_cross_LH_P2_1_0) -> 
      (`LH_P2((_lh_cross_arg1_0 _lh_cross_LH_P2_0_0), (_lh_cross_arg2_0 _lh_cross_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_3_9, t_4_6) -> 
      ((mappend_lh__d7 h_3_9) (concat_lh__d1 t_4_6))
    | `LH_N -> 
      (`LH_N));;
let rec box_lh__d1 _lh_box_arg1_0 =
  (`LH_C(_lh_box_arg1_0, (`LH_N)));;
let rec listify_lh__d1 _lh_listify_arg1_0 =
  ((getOrElse_lh__d2 ((lift_lh__d1_d0 box_lh__d1) _lh_listify_arg1_0)) (`LH_N));;
let rec sift_lh__d2 _lh_sift_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    (concat_lh__d1 ((map_lh__d1_d3 listify_lh__d1) _lh_funcomp_x_0))) _lh_sift_arg1_0);;
let rec simplify_lh__d4 _lh_simplify_arg1_1 =
  (let rec f_1 = (fun t_1 -> 
    ((getOrElse_lh__d2 ((lift_lh__d1_d0 f_1) (_lh_simplify_arg1_1 t_1))) t_1)) in
    f_1);;
let rec any_lh__d5 _lh_any_arg1_0 _lh_any_arg2_0 =
  (match _lh_any_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_0, _lh_any_LH_C_1_0) -> 
      (if (_lh_any_arg1_0 _lh_any_LH_C_0_0) then
        true
      else
        ((any_lh__d5 _lh_any_arg1_0) _lh_any_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec quant_lh__d5 _lh_quant_arg1_0 _lh_quant_arg2_0 _lh_quant_arg3_0 _lh_quant_arg4_0 =
  (let rec p_0 = (fun x_0 -> 
    ((_lh_quant_arg2_0 x_0) _lh_quant_arg3_0)) in
    ((_lh_quant_arg1_0 p_0) _lh_quant_arg4_0));;
let rec simplify_lh__d1 _lh_simplify_arg1_2 =
  (let rec f_2 = (fun t_2 -> 
    ((getOrElse_lh__d2 ((lift_lh__d1_d0 f_2) (_lh_simplify_arg1_2 t_2))) t_2)) in
    f_2);;
let rec map_lh__d9 f_3 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_3) -> 
      (`LH_C((f_3 h_0), ((map_lh__d9 f_3) t_3)))
    | `LH_N -> 
      (`LH_N));;
let rec lhs_lh__d5 _lh_lhs_arg1_0 =
  (match _lh_lhs_arg1_0 with
    | `Eqn(_lh_lhs_Eqn_0_0, _lh_lhs_Eqn_1_0) -> 
      (match _lh_lhs_Eqn_1_0 with
        | `LH_P2(_lh_lhs_LH_P2_0_0, _lh_lhs_LH_P2_1_0) -> 
          _lh_lhs_LH_P2_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec succeed_lh__d4 _lh_succeed_arg1_0 =
  (`Just(_lh_succeed_arg1_0));;
let rec foldl_lh__d1 f_4 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_4) -> 
      (((foldl_lh__d1 f_4) ((f_4 i_0) h_1)) t_4)
    | `LH_N -> 
      i_0);;
let rec eqRewrite_lh__d1 _lh_eqRewrite_arg1_0 _lh_eqRewrite_arg2_0 _lh_eqRewrite_arg3_0 =
  ((_lh_eqRewrite_arg1_0 (`LH_P2(_lh_eqRewrite_arg2_0, _lh_eqRewrite_arg3_0))) = (`Equal));;
let rec modify_lh__d1 _lh_modify_arg1_0 _lh_modify_arg2_0 _lh_modify_arg3_0 =
  (match _lh_modify_arg1_0 with
    | `LH_C(_lh_modify_LH_C_0_0, _lh_modify_LH_C_1_0) -> 
      (match _lh_modify_arg2_0 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_0 _lh_modify_LH_C_0_0), _lh_modify_LH_C_1_0))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_0, (((modify_lh__d1 _lh_modify_LH_C_1_0) (_lh_modify_arg2_0 - 1)) _lh_modify_arg3_0))))
    | _ -> 
      (failwith "error"));;
let rec replace_lh__d1 _lh_replace_arg1_0 _lh_replace_arg2_0 _lh_replace_arg3_0 =
  (match _lh_replace_arg2_0 with
    | `LH_N -> 
      _lh_replace_arg3_0
    | _ -> 
      (match _lh_replace_arg1_0 with
        | `Func(_lh_replace_Func_0_0, _lh_replace_Func_1_0) -> 
          (match _lh_replace_arg2_0 with
            | `LH_C(_lh_replace_LH_C_0_0, _lh_replace_LH_C_1_0) -> 
              (`Func(_lh_replace_Func_0_0, (((modify_lh__d1 _lh_replace_Func_1_0) _lh_replace_LH_C_0_0) (fun t_5 -> 
                (((replace_lh__d1 t_5) _lh_replace_LH_C_1_0) _lh_replace_arg3_0)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")));;
let rec zip_lh__d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_1 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lh__d1 tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec snd_lh__d2 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec lift_lh__d1 _lh_lift_arg1_0 _lh_lift_arg2_0 =
  (match _lh_lift_arg2_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_0) -> 
      (`Just((_lh_lift_arg1_0 _lh_lift_Just_0_0)))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d7 f_5 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_6) -> 
      (`LH_C((f_5 h_2), ((map_lh__d7 f_5) t_6)))
    | `LH_N -> 
      (`LH_N));;
let rec geRewrite_lh__d3 _lh_geRewrite_arg1_0 _lh_geRewrite_arg2_0 _lh_geRewrite_arg3_0 =
  ((let rec _lh_inList_LH_C_1_0 = (let rec _lh_inList_LH_C_1_1 = (fun _lh_inList_arg1_0 -> 
    false) in
    (let rec _lh_inList_LH_C_0_0 = (`Equal) in
      (fun _lh_inList_arg1_1 -> 
        (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_0) then
          true
        else
          (_lh_inList_LH_C_1_1 _lh_inList_arg1_1))))) in
    (let rec _lh_inList_LH_C_0_1 = (`Greater) in
      (fun _lh_inList_arg1_2 -> 
        (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_1) then
          true
        else
          (_lh_inList_LH_C_1_0 _lh_inList_arg1_2))))) (_lh_geRewrite_arg1_0 (`LH_P2(_lh_geRewrite_arg2_0, _lh_geRewrite_arg3_0))));;
let rec sum_lh__d1 ls_9 =
  (match ls_9 with
    | `LH_C(h_2_7, t_3_3) -> 
      (h_2_7 + (sum_lh__d1 t_3_3))
    | `LH_N -> 
      0);;
let rec cost_lh__d1 _lh_cost_arg1_0 =
  (match _lh_cost_arg1_0 with
    | `LH_P2(_lh_cost_LH_P2_0_0, _lh_cost_LH_P2_1_0) -> 
      (let rec size_0 = (fun _lh_size_arg1_0 -> 
        (((expr_fold_lh__d1 (fun x_1 a_0 -> 
          ((sum_lh__d1 a_0) + 1))) (fun dum_0 -> 
          0)) _lh_size_arg1_0)) in
        ((size_0 _lh_cost_LH_P2_0_0) + (size_0 _lh_cost_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec croak_lh__d4 =
  (`Nothing);;
let rec or_lh__d1 _lh_or_arg1_0 =
  (match _lh_or_arg1_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_0, _lh_or_LH_C_1_0) -> 
      (if _lh_or_LH_C_0_0 then
        true
      else
        (or_lh__d1 _lh_or_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec occurs_lh__d2 _lh_occurs_arg1_0 =
  ((expr_fold_lh__d1 (fun dum_2 -> 
    or_lh__d1)) (fun x_1_3 -> 
    (x_1_3 = _lh_occurs_arg1_0)));;
let rec maybeX_lh__d1 _lh_maybeX_arg1_0 _lh_maybeX_arg2_0 =
  (if _lh_maybeX_arg1_0 then
    (`Just(_lh_maybeX_arg2_0))
  else
    (`Nothing));;
let rec foldr_lh__d2 f_3_1 i_1_9 ls_7 =
  (match ls_7 with
    | `LH_C(h_2_5, t_3_0) -> 
      ((f_3_1 h_2_5) (((foldr_lh__d2 f_3_1) i_1_9) t_3_0))
    | `LH_N -> 
      i_1_9);;
let rec first_ok_lh__d1 _lh_first_ok_arg1_0 =
  (((foldr_lh__d2 orElse_lh__d1) (`Nothing)) _lh_first_ok_arg1_0);;
let rec assoc_lh__d1 _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (let rec match_x_0 = (fun uv_0 -> 
    (let rec _lh_matchIdent_1_2 = uv_0 in
      (match _lh_matchIdent_1_2 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          ((maybeX_lh__d1 (_lh_assoc_arg2_0 = _lh_assoc_LH_P2_0_0)) _lh_assoc_LH_P2_1_0)
        | _ -> 
          (failwith "error")))) in
    (first_ok_lh__d1 ((map_lh__d1_d3 match_x_0) _lh_assoc_arg1_0)));;
let rec apply_lh__d1 _lh_apply_arg1_0 _lh_apply_arg2_0 =
  ((getOrElse_lh__d2 ((assoc_lh__d1 _lh_apply_arg1_0) _lh_apply_arg2_0)) (`Var(_lh_apply_arg2_0)));;
let rec sub_lh__d3 _lh_sub_arg1_1 _lh_sub_arg2_1 =
  (((expr_fold_lh__d1 (fun x_2_1 y_3 -> 
    (`Func(x_2_1, y_3)))) (apply_lh__d1 _lh_sub_arg2_1)) _lh_sub_arg1_1);;
let rec comp_sub_lh__d1 _lh_comp_sub_arg1_0 _lh_comp_sub_arg2_0 =
  ((mappend_lh__d7 (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
    (match _lh_listcomp_fun_para_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (match _lh_listcomp_fun_ls_h_6 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_0, _lh_comp_sub_LH_P2_1_0) -> 
            (`LH_C((`LH_P2(_lh_comp_sub_LH_P2_0_0, ((sub_lh__d3 _lh_comp_sub_LH_P2_1_0) _lh_comp_sub_arg1_0))), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6)))
          | _ -> 
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 _lh_comp_sub_arg2_0))) _lh_comp_sub_arg1_0);;
let rec exists_lh__d2 _lh_exists_arg1_0 =
  (match _lh_exists_arg1_0 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec eqExpr_lh__d2 _lh_eqExpr_arg1_1 _lh_eqExpr_arg2_1 =
  (match _lh_eqExpr_arg1_1 with
    | `Func(_lh_eqExpr_Func_0_2, _lh_eqExpr_Func_1_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Func(_lh_eqExpr_Func_0_3, _lh_eqExpr_Func_1_3) -> 
          ((_lh_eqExpr_Func_0_2 = _lh_eqExpr_Func_0_3) && ((eqListExpr_lh__d1 _lh_eqExpr_Func_1_2) _lh_eqExpr_Func_1_3))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Var(_lh_eqExpr_Var_0_3) -> 
          (_lh_eqExpr_Var_0_2 = _lh_eqExpr_Var_0_3)
        | _ -> 
          false)
    | _ -> 
      false)
and
eqListExpr_lh__d1 _lh_eqListExpr_arg1_0 _lh_eqListExpr_arg2_0 =
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
          (if ((eqExpr_lh__d2 _lh_eqListExpr_LH_C_0_0) _lh_eqListExpr_LH_C_0_1) then
            ((eqListExpr_lh__d1 _lh_eqListExpr_LH_C_1_0) _lh_eqListExpr_LH_C_1_1)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec the_lh__d2 _lh_the_arg1_1 =
  (match _lh_the_arg1_1 with
    | `Just(_lh_the_Just_0_1) -> 
      _lh_the_Just_0_1
    | _ -> 
      (failwith "error"));;
let rec prop2_lh__d1 _lh_prop2_arg1_0 _lh_prop2_arg2_0 _lh_prop2_arg3_0 =
  (match _lh_prop2_arg2_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_0) -> 
      ((_lh_prop2_arg1_0 _lh_prop2_Just_0_0) _lh_prop2_arg3_0)
    | _ -> 
      (failwith "error"));;
let rec prop_fold_lh__d1 _lh_prop_fold_arg1_0 _lh_prop_fold_arg2_0 _lh_prop_fold_arg3_0 =
  (match _lh_prop_fold_arg3_0 with
    | `LH_N -> 
      (`Just(_lh_prop_fold_arg2_0))
    | `LH_C(_lh_prop_fold_LH_C_0_0, _lh_prop_fold_LH_C_1_0) -> 
      (((prop2_lh__d1 (prop_fold_lh__d1 _lh_prop_fold_arg1_0)) ((_lh_prop_fold_arg1_0 _lh_prop_fold_arg2_0) _lh_prop_fold_LH_C_0_0)) _lh_prop_fold_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec unify'_lh__d1 _lh_unify'_arg1_0 _lh_unify'_arg2_0 =
  (match _lh_unify'_arg2_0 with
    | `LH_P2(_lh_unify'_LH_P2_0_0, _lh_unify'_LH_P2_1_0) -> 
      (match _lh_unify'_LH_P2_0_0 with
        | `Var(_lh_unify'_Var_0_0) -> 
          (((univar_lh__d1 _lh_unify'_arg1_0) _lh_unify'_Var_0_0) _lh_unify'_LH_P2_1_0)
        | `Func(_lh_unify'_Func_0_0, _lh_unify'_Func_1_0) -> 
          (match _lh_unify'_LH_P2_1_0 with
            | `Var(_lh_unify'_Var_0_1) -> 
              (((univar_lh__d1 _lh_unify'_arg1_0) _lh_unify'_Var_0_1) (`Func(_lh_unify'_Func_0_0, _lh_unify'_Func_1_0)))
            | `Func(_lh_unify'_Func_0_1, _lh_unify'_Func_1_1) -> 
              (if (_lh_unify'_Func_0_0 = _lh_unify'_Func_0_1) then
                (((prop_fold_lh__d1 unify'_lh__d1) _lh_unify'_arg1_0) ((zip_lh__d1 _lh_unify'_Func_1_0) _lh_unify'_Func_1_1))
              else
                croak_lh__d4)
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
univar_lh__d1 _lh_univar_arg1_0 _lh_univar_arg2_0 _lh_univar_arg3_0 =
  (let rec t_3_1 = ((assoc_lh__d1 _lh_univar_arg1_0) _lh_univar_arg2_0) in
    (if (exists_lh__d2 t_3_1) then
      ((unify'_lh__d1 _lh_univar_arg1_0) (`LH_P2((the_lh__d2 t_3_1), _lh_univar_arg3_0)))
    else
      (if ((eqExpr_lh__d2 _lh_univar_arg3_0) (`Var(_lh_univar_arg2_0))) then
        (succeed_lh__d4 _lh_univar_arg1_0)
      else
        (let rec u'_0 = ((sub_lh__d3 _lh_univar_arg3_0) _lh_univar_arg1_0) in
          (if (not ((occurs_lh__d2 _lh_univar_arg2_0) u'_0)) then
            (succeed_lh__d4 ((comp_sub_lh__d1 (`LH_C((`LH_P2(_lh_univar_arg2_0, u'_0)), (`LH_N)))) _lh_univar_arg1_0))
          else
            croak_lh__d4)))));;
let rec unify_lh__d1 _lh_unify_arg1_0 _lh_unify_arg2_0 =
  ((unify'_lh__d1 (`LH_N)) (`LH_P2(_lh_unify_arg1_0, _lh_unify_arg2_0)));;
let rec lhs_lh__d4 _lh_lhs_arg1_1 =
  (match _lh_lhs_arg1_1 with
    | `Eqn(_lh_lhs_Eqn_0_1, _lh_lhs_Eqn_1_1) -> 
      (match _lh_lhs_Eqn_1_1 with
        | `LH_P2(_lh_lhs_LH_P2_0_1, _lh_lhs_LH_P2_1_1) -> 
          _lh_lhs_LH_P2_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec stand_eqn_lh__d2 _lh_stand_eqn_arg1_1 _lh_stand_eqn_arg2_1 =
  (match _lh_stand_eqn_arg2_1 with
    | `Eqn(_lh_stand_eqn_Eqn_0_1, _lh_stand_eqn_Eqn_1_1) -> 
      (match _lh_stand_eqn_Eqn_1_1 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_1, _lh_stand_eqn_LH_P2_1_1) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_1, (`LH_P2(((stand_lh__d1 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_0_1), ((stand_lh__d1 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1_d1 f_6 ls_3 _lh_popOutId_0_0 =
  (match ls_3 with
    | `LH_C(h_3, t_7) -> 
      (let rec t_8 = ((map_lh__d1_d1 f_6) t_7) in
        (let rec h_4 = (f_6 h_3) in
          (`LH_C(h_4, (t_8 _lh_popOutId_0_0)))))
    | `LH_N -> 
      _lh_popOutId_0_0);;
let rec simplify_lh__d3 _lh_simplify_arg1_3 =
  (let rec f_7 = (fun t_9 -> 
    ((getOrElse_lh__d2 ((lift_lh__d1_d0 f_7) (_lh_simplify_arg1_3 t_9))) t_9)) in
    f_7);;
let rec eqExpr_lh__d1 _lh_eqExpr_arg1_0 _lh_eqExpr_arg2_0 =
  (match _lh_eqExpr_arg1_0 with
    | `Func(_lh_eqExpr_Func_0_0, _lh_eqExpr_Func_1_0) -> 
      (match _lh_eqExpr_arg2_0 with
        | `Func(_lh_eqExpr_Func_0_1, _lh_eqExpr_Func_1_1) -> 
          ((_lh_eqExpr_Func_0_0 = _lh_eqExpr_Func_0_1) && ((eqListExpr_lh__d1 _lh_eqExpr_Func_1_0) _lh_eqExpr_Func_1_1))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_0) -> 
      (match _lh_eqExpr_arg2_0 with
        | `Var(_lh_eqExpr_Var_0_1) -> 
          (_lh_eqExpr_Var_0_0 = _lh_eqExpr_Var_0_1)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec enumFrom_lh__d1 a_1 =
  (lazy (let rec tx_1 = (enumFrom_lh__d1 (a_1 + 1)) in
    (let rec hx_1 = a_1 in
      (fun hy_2 ty_2 -> 
        (`LH_C((`LH_P2(hx_1, hy_2)), (match ty_2 with
          | `LH_C(hy_3, ty_3) -> 
            (((Lazy.force tx_1) hy_3) ty_3)
          | `LH_N -> 
            (`LH_N))))))));;
let rec subterms_lh__d1 _lh_subterms_arg1_0 =
  (match _lh_subterms_arg1_0 with
    | `Var(_lh_subterms_Var_0_0) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_0, _lh_subterms_Func_1_0) -> 
      ((mappend_lh__d7 (`LH_C((`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_0, _lh_subterms_Func_1_0)))), (`LH_N)))) (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
        (match _lh_listcomp_fun_para_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
            (match _lh_listcomp_fun_ls_h_7 with
              | `LH_P2(_lh_subterms_LH_P2_0_0, _lh_subterms_LH_P2_1_0) -> 
                (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
                  (match _lh_listcomp_fun_para_8 with
                    | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
                      (match _lh_listcomp_fun_ls_h_8 with
                        | `LH_P2(_lh_subterms_LH_P2_0_1, _lh_subterms_LH_P2_1_1) -> 
                          (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_0, _lh_subterms_LH_P2_0_1)), _lh_subterms_LH_P2_1_1)), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
                        | _ -> 
                          (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
                    | `LH_N -> 
                      (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))) in
                  (_lh_listcomp_fun_8 (subterms_lh__d1 _lh_subterms_LH_P2_1_0)))
              | _ -> 
                (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_7 (match _lh_subterms_Func_1_0 with
          | `LH_C(hy_4, ty_4) -> 
            (((Lazy.force (enumFrom_lh__d1 0)) hy_4) ty_4)
          | `LH_N -> 
            (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec inside_lh__d1 _lh_inside_arg1_0 _lh_inside_arg2_0 =
  (first_ok_lh__d1 (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
        (match _lh_listcomp_fun_ls_h_5 with
          | `LH_P2(_lh_inside_LH_P2_0_0, _lh_inside_LH_P2_1_0) -> 
            (`LH_C(((lift_lh__d1_d0 ((replace_lh__d1 _lh_inside_arg2_0) _lh_inside_LH_P2_0_0)) (_lh_inside_arg1_0 _lh_inside_LH_P2_1_0)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
          | _ -> 
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5 (subterms_lh__d1 _lh_inside_arg2_0))));;
let rec match'_lh__d1 _lh_match'_arg1_0 _lh_match'_arg2_0 =
  (match _lh_match'_arg2_0 with
    | `LH_P2(_lh_match'_LH_P2_0_0, _lh_match'_LH_P2_1_0) -> 
      (match _lh_match'_LH_P2_0_0 with
        | `Var(_lh_match'_Var_0_0) -> 
          (let rec u_0 = ((assoc_lh__d1 _lh_match'_arg1_0) _lh_match'_Var_0_0) in
            (if (not (exists_lh__d2 u_0)) then
              (succeed_lh__d4 (`LH_C((`LH_P2(_lh_match'_Var_0_0, _lh_match'_LH_P2_1_0)), _lh_match'_arg1_0)))
            else
              (if ((eqExpr_lh__d2 (the_lh__d2 u_0)) _lh_match'_LH_P2_1_0) then
                (succeed_lh__d4 _lh_match'_arg1_0)
              else
                croak_lh__d4)))
        | `Func(_lh_match'_Func_0_0, _lh_match'_Func_1_0) -> 
          (match _lh_match'_LH_P2_1_0 with
            | `Func(_lh_match'_Func_0_1, _lh_match'_Func_1_1) -> 
              (if (_lh_match'_Func_0_0 = _lh_match'_Func_0_1) then
                (((prop_fold_lh__d1 match'_lh__d1) _lh_match'_arg1_0) ((zip_lh__d1 _lh_match'_Func_1_0) _lh_match'_Func_1_1))
              else
                croak_lh__d4)
            | `Var(_lh_match'_Var_0_1) -> 
              croak_lh__d4
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec match_lh__d1 _lh_match_arg1_0 _lh_match_arg2_0 =
  ((match'_lh__d1 (`LH_N)) (`LH_P2(_lh_match_arg1_0, _lh_match_arg2_0)));;
let rec rewrite_lh__d1 _lh_rewrite_arg1_0 =
  (match _lh_rewrite_arg1_0 with
    | `Eqn(_lh_rewrite_Eqn_0_0, _lh_rewrite_Eqn_1_0) -> 
      (match _lh_rewrite_Eqn_1_0 with
        | `LH_P2(_lh_rewrite_LH_P2_0_0, _lh_rewrite_LH_P2_1_0) -> 
          (fun _lh_funcomp_x_1_1 -> 
            ((lift_lh__d1_d0 (sub_lh__d3 _lh_rewrite_LH_P2_1_0)) ((match_lh__d1 _lh_rewrite_LH_P2_0_0) _lh_funcomp_x_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec reduce1_lh__d1 _lh_reduce1_arg1_0 =
  (inside_lh__d1 (rewrite_lh__d1 _lh_reduce1_arg1_0));;
let rec pair_lh__d2 _lh_pair_arg1_0 _lh_pair_arg2_0 =
  (`LH_P2(_lh_pair_arg1_0, _lh_pair_arg2_0));;
let rec any_lh__d3 _lh_any_arg1_1 _lh_any_arg2_1 =
  (match _lh_any_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_1, _lh_any_LH_C_1_1) -> 
      (if (_lh_any_arg1_1 _lh_any_LH_C_0_1) then
        true
      else
        ((any_lh__d3 _lh_any_arg1_1) _lh_any_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec geRewrite_lh__d4 _lh_geRewrite_arg1_1 _lh_geRewrite_arg2_1 _lh_geRewrite_arg3_1 =
  ((let rec _lh_inList_LH_C_1_1_0 = (let rec _lh_inList_LH_C_1_1_1 = (fun _lh_inList_arg1_1_2 -> 
    false) in
    (let rec _lh_inList_LH_C_0_1_0 = (`Equal) in
      (fun _lh_inList_arg1_1_3 -> 
        (if (_lh_inList_arg1_1_3 = _lh_inList_LH_C_0_1_0) then
          true
        else
          (_lh_inList_LH_C_1_1_1 _lh_inList_arg1_1_3))))) in
    (let rec _lh_inList_LH_C_0_1_1 = (`Greater) in
      (fun _lh_inList_arg1_1_4 -> 
        (if (_lh_inList_arg1_1_4 = _lh_inList_LH_C_0_1_1) then
          true
        else
          (_lh_inList_LH_C_1_1_0 _lh_inList_arg1_1_4))))) (_lh_geRewrite_arg1_1 (`LH_P2(_lh_geRewrite_arg2_1, _lh_geRewrite_arg3_1))));;
let rec orElseMap_lh__d3 _lh_orElseMap_arg1_1 _lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1 =
  ((orElse_lh__d1 (_lh_orElseMap_arg1_1 _lh_orElseMap_arg3_1)) (_lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1));;
let rec croak_lh__d2 =
  (`Nothing);;
let rec lift_lh__d4 _lh_lift_arg1_1 _lh_lift_arg2_1 =
  (match _lh_lift_arg2_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1) -> 
      (`Just((_lh_lift_arg1_1 _lh_lift_Just_0_1)))
    | _ -> 
      (failwith "error"));;
let rec lhs_lh__d2 _lh_lhs_arg1_2 =
  (match _lh_lhs_arg1_2 with
    | `Eqn(_lh_lhs_Eqn_0_2, _lh_lhs_Eqn_1_2) -> 
      (match _lh_lhs_Eqn_1_2 with
        | `LH_P2(_lh_lhs_LH_P2_0_2, _lh_lhs_LH_P2_1_2) -> 
          _lh_lhs_LH_P2_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec ltRewrite_lh__d2 _lh_ltRewrite_arg1_0 _lh_ltRewrite_arg2_0 _lh_ltRewrite_arg3_0 =
  ((_lh_ltRewrite_arg1_0 (`LH_P2(_lh_ltRewrite_arg2_0, _lh_ltRewrite_arg3_0))) = (`Less));;
let rec lift_lh__d7 _lh_lift_arg1_3 _lh_lift_arg2_3 =
  (match _lh_lift_arg2_3 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_3) -> 
      (`Just((_lh_lift_arg1_3 _lh_lift_Just_0_3)))
    | _ -> 
      (failwith "error"));;
let rec succeed_lh__d1 _lh_succeed_arg1_1 =
  (`Just(_lh_succeed_arg1_1));;
let rec mappend_lh__d2 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_2_4, t_2_9) -> 
      (`LH_C(h_2_4, ((mappend_lh__d2 t_2_9) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec eqpr_lh__d1 _lh_eqpr_arg1_0 =
  (match _lh_eqpr_arg1_0 with
    | `Eqn(_lh_eqpr_Eqn_0_0, _lh_eqpr_Eqn_1_0) -> 
      _lh_eqpr_Eqn_1_0
    | _ -> 
      (failwith "error"));;
let rec all_lh__d5 _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh__d5 _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec lift_lh__d5 _lh_lift_arg1_4 _lh_lift_arg2_4 =
  (match _lh_lift_arg2_4 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_4) -> 
      (let rec _lh_squash_Just_0_0 = (_lh_lift_arg1_4 _lh_lift_Just_0_4) in
        _lh_squash_Just_0_0)
    | _ -> 
      (failwith "error"));;
let rec quant_lh__d1_d0 _lh_quant_arg1_1 _lh_quant_arg2_1 _lh_quant_arg3_1 _lh_quant_arg4_1 =
  (let rec p_1 = (fun x_1_4 -> 
    ((_lh_quant_arg2_1 x_1_4) _lh_quant_arg3_1)) in
    ((_lh_quant_arg1_1 p_1) _lh_quant_arg4_1));;
let rec lhs_lh__d1 _lh_lhs_arg1_3 =
  (match _lh_lhs_arg1_3 with
    | `Eqn(_lh_lhs_Eqn_0_3, _lh_lhs_Eqn_1_3) -> 
      (match _lh_lhs_Eqn_1_3 with
        | `LH_P2(_lh_lhs_LH_P2_0_3, _lh_lhs_LH_P2_1_3) -> 
          _lh_lhs_LH_P2_0_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec any_lh__d2 _lh_any_arg1_2 _lh_any_arg2_2 =
  (match _lh_any_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_2, _lh_any_LH_C_1_2) -> 
      (if (_lh_any_arg1_2 _lh_any_LH_C_0_2) then
        true
      else
        ((any_lh__d2 _lh_any_arg1_2) _lh_any_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec pair_lh__d1 _lh_pair_arg1_1 _lh_pair_arg2_1 =
  (`LH_P2(_lh_pair_arg1_1, _lh_pair_arg2_1));;
let rec lift_lh__d8 _lh_lift_arg1_5 _lh_lift_arg2_5 =
  (match _lh_lift_arg2_5 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_5) -> 
      (`Just((_lh_lift_arg1_5 _lh_lift_Just_0_5)))
    | _ -> 
      (failwith "error"));;
let rec fst_lh__d2 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_1, _lh_fst_LH_P2_1_1) -> 
      _lh_fst_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec lift_lh__d3 _lh_lift_arg1_6 _lh_lift_arg2_6 =
  (match _lh_lift_arg2_6 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_1 -> 
        _lh_getOrElse_arg2_1)
    | `Just(_lh_lift_Just_0_6) -> 
      (let rec _lh_getOrElse_Just_0_0 = (_lh_lift_arg1_6 _lh_lift_Just_0_6) in
        (fun _lh_getOrElse_arg2_2 -> 
          _lh_getOrElse_Just_0_0))
    | _ -> 
      (failwith "error"));;
let rec snd_lh__d1 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec quant_lh__d2 _lh_quant_arg1_2 _lh_quant_arg2_2 _lh_quant_arg3_2 _lh_quant_arg4_2 =
  (let rec p_2 = (fun x_1_6 -> 
    ((_lh_quant_arg2_2 x_1_6) _lh_quant_arg3_2)) in
    ((_lh_quant_arg1_2 p_2) _lh_quant_arg4_2));;
let rec copy_lh__d1 _lh_copy_arg1_0 _lh_copy_arg2_0 _lh_popOutId_0_1 =
  (if (_lh_copy_arg1_0 <= 0) then
    true
  else
    (let rec _lh_all_LH_C_1_1 = ((copy_lh__d1 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
      (let rec _lh_all_LH_C_0_1 = _lh_copy_arg2_0 in
        (if (_lh_popOutId_0_1 _lh_all_LH_C_0_1) then
          (_lh_all_LH_C_1_1 _lh_popOutId_0_1)
        else
          false))));;
let rec the_lh__d1 _lh_the_arg1_0 =
  (match _lh_the_arg1_0 with
    | `Just(_lh_the_Just_0_0) -> 
      _lh_the_Just_0_0
    | _ -> 
      (failwith "error"));;
let rec cross_lh__d3 _lh_cross_arg1_1 _lh_cross_arg2_1 _lh_cross_arg3_1 =
  (match _lh_cross_arg3_1 with
    | `LH_P2(_lh_cross_LH_P2_0_1, _lh_cross_LH_P2_1_1) -> 
      (`LH_P2((_lh_cross_arg1_1 _lh_cross_LH_P2_0_1), (_lh_cross_arg2_1 _lh_cross_LH_P2_1_1)))
    | _ -> 
      (failwith "error"));;
let rec quant_lh__d9 _lh_quant_arg1_3 _lh_quant_arg2_3 _lh_quant_arg3_3 _lh_quant_arg4_3 =
  (let rec p_3 = (fun x_1_7 -> 
    ((_lh_quant_arg2_3 x_1_7) _lh_quant_arg3_3)) in
    ((_lh_quant_arg1_3 p_3) _lh_quant_arg4_3));;
let rec eqno_lh__d1 _lh_eqno_arg1_0 =
  (match _lh_eqno_arg1_0 with
    | `Eqn(_lh_eqno_Eqn_0_0, _lh_eqno_Eqn_1_0) -> 
      (match _lh_eqno_Eqn_1_0 with
        | `LH_P2(_lh_eqno_LH_P2_0_0, _lh_eqno_LH_P2_1_0) -> 
          _lh_eqno_Eqn_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec any_lh__d4 _lh_any_arg1_3 _lh_any_arg2_3 =
  (match _lh_any_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_3, _lh_any_LH_C_1_3) -> 
      (if (_lh_any_arg1_3 _lh_any_LH_C_0_3) then
        true
      else
        ((any_lh__d4 _lh_any_arg1_3) _lh_any_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
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
let rec dropWhile_lh__d2 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile_lh__d2 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lh__d3 n_0 ls_8 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match ls_8 with
      | `LH_C(h_2_6, t_3_2) -> 
        (if (n_0 = 0) then
          h_2_6
        else
          ((atIndex_lh__d3 (n_0 - 1)) t_3_2))
      | `LH_N -> 
        (failwith "error")));;
let rec map_lh__d1_d2 f_3_3 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_2_8, t_3_4) -> 
      (let rec t_3_5 = ((map_lh__d1_d2 f_3_3) t_3_4) in
        (let rec h_2_9 = (f_3_3 h_2_8) in
          (fun f_3_4 -> 
            (`LH_C((f_3_4 h_2_9), (t_3_5 f_3_4))))))
    | `LH_N -> 
      (fun f_3_5 -> 
        (`LH_N)));;
let rec sub_lh__d1 _lh_sub_arg1_0 _lh_sub_arg2_0 =
  (((expr_fold_lh__d1 (fun x_1_9 y_2 -> 
    (`Func(x_1_9, y_2)))) (apply_lh__d1 _lh_sub_arg2_0)) _lh_sub_arg1_0);;
let rec mappend_lh__d4 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_3_0, t_3_6) -> 
      (`LH_C(h_3_0, ((mappend_lh__d4 t_3_6) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec lhs_lh__d3 _lh_lhs_arg1_4 =
  (match _lh_lhs_arg1_4 with
    | `Eqn(_lh_lhs_Eqn_0_4, _lh_lhs_Eqn_1_4) -> 
      (match _lh_lhs_Eqn_1_4 with
        | `LH_P2(_lh_lhs_LH_P2_0_4, _lh_lhs_LH_P2_1_4) -> 
          _lh_lhs_LH_P2_0_4
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec fst_lh__d1 _lh_fst_arg1_2 =
  (match _lh_fst_arg1_2 with
    | `LH_P2(_lh_fst_LH_P2_0_2, _lh_fst_LH_P2_1_2) -> 
      _lh_fst_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec tail_lh__d1 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_3_1, t_3_7) -> 
      t_3_7
    | `LH_N -> 
      (failwith "error"));;
let rec quant_lh__d7 _lh_quant_arg1_4 _lh_quant_arg2_4 _lh_quant_arg3_4 _lh_quant_arg4_4 =
  (let rec p_4 = (fun x_2_0 -> 
    ((_lh_quant_arg2_4 x_2_0) _lh_quant_arg3_4)) in
    ((_lh_quant_arg1_4 p_4) _lh_quant_arg4_4));;
let rec fst_lh__d3 _lh_fst_arg1_3 =
  (match _lh_fst_arg1_3 with
    | `LH_P2(_lh_fst_LH_P2_0_3, _lh_fst_LH_P2_1_3) -> 
      _lh_fst_LH_P2_0_3
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1 f_3_7 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_3_2, t_3_8) -> 
      (let rec _lh_inList_LH_C_1_1_2 = ((map_lh__d1 f_3_7) t_3_8) in
        (let rec _lh_inList_LH_C_0_1_2 = (f_3_7 h_3_2) in
          (fun _lh_inList_arg1_1_6 -> 
            (if (_lh_inList_arg1_1_6 = _lh_inList_LH_C_0_1_2) then
              true
            else
              (_lh_inList_LH_C_1_1_2 _lh_inList_arg1_1_6)))))
    | `LH_N -> 
      (fun _lh_inList_arg1_1_7 -> 
        false));;
let rec snd_lh__d3 _lh_snd_arg1_2 =
  (match _lh_snd_arg1_2 with
    | `LH_P2(_lh_snd_LH_P2_0_2, _lh_snd_LH_P2_1_2) -> 
      _lh_snd_LH_P2_1_2
    | _ -> 
      (failwith "error"));;
let rec all_lh__d6 _lh_all_arg1_2 _lh_all_arg2_2 =
  (match _lh_all_arg2_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_3, _lh_all_LH_C_1_3) -> 
      (if (_lh_all_arg1_2 _lh_all_LH_C_0_3) then
        ((all_lh__d6 _lh_all_arg1_2) _lh_all_LH_C_1_3)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec ltRewrite_lh__d3 _lh_ltRewrite_arg1_1 _lh_ltRewrite_arg2_1 _lh_ltRewrite_arg3_1 =
  ((_lh_ltRewrite_arg1_1 (`LH_P2(_lh_ltRewrite_arg2_1, _lh_ltRewrite_arg3_1))) = (`Less));;
let rec all_lh__d4 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_2, _lh_all_LH_C_1_2) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_2) then
        ((all_lh__d4 _lh_all_arg1_1) _lh_all_LH_C_1_2)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec succeed_lh__d3 _lh_succeed_arg1_2 =
  (`Just(_lh_succeed_arg1_2));;
let rec try_all_lh__d1 _lh_try_all_arg1_0 =
  (((foldr_lh__d2 orElseMap_lh__d4) (fun dum_3 -> 
    croak_lh__d4)) _lh_try_all_arg1_0);;
let rec ltRewrite_lh__d4 _lh_ltRewrite_arg1_2 _lh_ltRewrite_arg2_2 _lh_ltRewrite_arg3_2 =
  ((_lh_ltRewrite_arg1_2 (`LH_P2(_lh_ltRewrite_arg2_2, _lh_ltRewrite_arg3_2))) = (`Less));;
let rec exists_lh__d1 _lh_exists_arg1_1 =
  (match _lh_exists_arg1_1 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec all_lh__d2 _lh_all_arg1_3 _lh_all_arg2_3 =
  (match _lh_all_arg2_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_4, _lh_all_LH_C_1_4) -> 
      (if (_lh_all_arg1_3 _lh_all_LH_C_0_4) then
        ((all_lh__d2 _lh_all_arg1_3) _lh_all_LH_C_1_4)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec gtRewrite_lh__d1 _lh_gtRewrite_arg1_0 _lh_gtRewrite_arg2_0 _lh_gtRewrite_arg3_0 =
  ((_lh_gtRewrite_arg1_0 (`LH_P2(_lh_gtRewrite_arg2_0, _lh_gtRewrite_arg3_0))) = (`Greater));;
let rec simplify_lh__d2 _lh_simplify_arg1_4 =
  (let rec f_3_8 = (fun t_3_9 -> 
    ((getOrElse_lh__d2 ((lift_lh__d1_d0 f_3_8) (_lh_simplify_arg1_4 t_3_9))) t_3_9)) in
    f_3_8);;
let rec lhs_lh__d7 _lh_lhs_arg1_5 =
  (match _lh_lhs_arg1_5 with
    | `Eqn(_lh_lhs_Eqn_0_5, _lh_lhs_Eqn_1_5) -> 
      (match _lh_lhs_Eqn_1_5 with
        | `LH_P2(_lh_lhs_LH_P2_0_5, _lh_lhs_LH_P2_1_5) -> 
          _lh_lhs_LH_P2_0_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec occurs_lh__d1 _lh_occurs_arg1_1 =
  ((expr_fold_lh__d1 (fun dum_4 -> 
    or_lh__d1)) (fun x_2_2 -> 
    (x_2_2 = _lh_occurs_arg1_1)));;
let rec geRewrite_lh__d1 _lh_geRewrite_arg1_2 _lh_geRewrite_arg2_2 _lh_geRewrite_arg3_2 =
  ((let rec _lh_inList_LH_C_1_1_3 = (let rec _lh_inList_LH_C_1_1_4 = (fun _lh_inList_arg1_1_8 -> 
    false) in
    (let rec _lh_inList_LH_C_0_1_3 = (`Equal) in
      (fun _lh_inList_arg1_1_9 -> 
        (if (_lh_inList_arg1_1_9 = _lh_inList_LH_C_0_1_3) then
          true
        else
          (_lh_inList_LH_C_1_1_4 _lh_inList_arg1_1_9))))) in
    (let rec _lh_inList_LH_C_0_1_4 = (`Greater) in
      (fun _lh_inList_arg1_2_0 -> 
        (if (_lh_inList_arg1_2_0 = _lh_inList_LH_C_0_1_4) then
          true
        else
          (_lh_inList_LH_C_1_1_3 _lh_inList_arg1_2_0))))) (_lh_geRewrite_arg1_2 (`LH_P2(_lh_geRewrite_arg2_2, _lh_geRewrite_arg3_2))));;
let rec succeed_lh__d2 _lh_succeed_arg1_3 =
  (`Just(_lh_succeed_arg1_3));;
let rec quant_lh__d1 _lh_quant_arg1_5 _lh_quant_arg2_5 _lh_quant_arg3_5 _lh_quant_arg4_5 =
  (let rec p_5 = (fun x_2_3 -> 
    ((_lh_quant_arg2_5 x_2_3) _lh_quant_arg3_5)) in
    ((_lh_quant_arg1_5 p_5) _lh_quant_arg4_5));;
let rec map_lh__d5 f_3_9 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_3_3, t_4_0) -> 
      (`LH_C((f_3_9 h_3_3), ((map_lh__d5 f_3_9) t_4_0)))
    | `LH_N -> 
      (`LH_N));;
let rec lift_lh__d2 _lh_lift_arg1_7 _lh_lift_arg2_7 =
  (match _lh_lift_arg2_7 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_7) -> 
      (let rec _lh_squash_Just_0_1 = (_lh_lift_arg1_7 _lh_lift_Just_0_7) in
        _lh_squash_Just_0_1)
    | _ -> 
      (failwith "error"));;
let rec lift_lh__d9 _lh_lift_arg1_8 _lh_lift_arg2_8 =
  (match _lh_lift_arg2_8 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_8) -> 
      (`Just((_lh_lift_arg1_8 _lh_lift_Just_0_8)))
    | _ -> 
      (failwith "error"));;
let rec quant_lh__d6 _lh_quant_arg1_6 _lh_quant_arg2_6 _lh_quant_arg3_6 _lh_quant_arg4_6 =
  (let rec p_6 = (fun x_2_4 -> 
    ((_lh_quant_arg2_6 x_2_4) _lh_quant_arg3_6)) in
    ((_lh_quant_arg1_6 p_6) _lh_quant_arg4_6));;
let rec lift_lh__d6 _lh_lift_arg1_9 _lh_lift_arg2_9 =
  (match _lh_lift_arg2_9 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_9) -> 
      (`Just((_lh_lift_arg1_9 _lh_lift_Just_0_9)))
    | _ -> 
      (failwith "error"));;
let rec ltRewrite_lh__d1 _lh_ltRewrite_arg1_3 _lh_ltRewrite_arg2_3 _lh_ltRewrite_arg3_3 =
  ((_lh_ltRewrite_arg1_3 (`LH_P2(_lh_ltRewrite_arg2_3, _lh_ltRewrite_arg3_3))) = (`Less));;
let rec lhs_lh__d6 _lh_lhs_arg1_6 =
  (match _lh_lhs_arg1_6 with
    | `Eqn(_lh_lhs_Eqn_0_6, _lh_lhs_Eqn_1_6) -> 
      (match _lh_lhs_Eqn_1_6 with
        | `LH_P2(_lh_lhs_LH_P2_0_6, _lh_lhs_LH_P2_1_6) -> 
          _lh_lhs_LH_P2_0_6
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_dnet_lh__d1 _lh_map_dnet_arg1_0 _lh_map_dnet_arg2_0 =
  (match _lh_map_dnet_arg2_0 with
    | `Switch(_lh_map_dnet_Switch_0_0, _lh_map_dnet_Switch_1_0) -> 
      (`Switch(((map_lh__d1_d3 ((cross_lh__d3 (fun x_1_5 -> 
        x_1_5)) (map_dnet_lh__d1 _lh_map_dnet_arg1_0))) _lh_map_dnet_Switch_0_0), ((map_dnet_lh__d1 _lh_map_dnet_arg1_0) _lh_map_dnet_Switch_1_0)))
    | `Return(_lh_map_dnet_Return_0_0) -> 
      (`Return((_lh_map_dnet_arg1_0 _lh_map_dnet_Return_0_0)))
    | _ -> 
      (failwith "error"));;
let rec filter_lh__d1 f_4_1 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_3_6, t_4_3) -> 
      (if (f_4_1 h_3_6) then
        (`LH_C(h_3_6, ((filter_lh__d1 f_4_1) t_4_3)))
      else
        ((filter_lh__d1 f_4_1) t_4_3))
    | `LH_N -> 
      (`LH_N));;
let rec delete_eqns_lh__d1 _lh_delete_eqns_arg1_0 =
  (let rec ok_0 = (fun e_0 -> 
    (not (_lh_delete_eqns_arg1_0 (eqno_lh__d1 e_0)))) in
    (map_dnet_lh__d1 (filter_lh__d1 ok_0)));;
let rec croak_lh__d3 =
  (`Nothing);;
let rec all_lh__d3 _lh_all_arg1_5 _lh_all_arg2_5 =
  (match _lh_all_arg2_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_5, _lh_all_LH_C_1_5) -> 
      (if (_lh_all_arg1_5 _lh_all_LH_C_0_5) then
        ((all_lh__d3 _lh_all_arg1_5) _lh_all_LH_C_1_5)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec quant_lh__d8 _lh_quant_arg1_7 _lh_quant_arg2_7 _lh_quant_arg3_7 _lh_quant_arg4_7 =
  (let rec p_7 = (fun x_2_5 -> 
    ((_lh_quant_arg2_7 x_2_5) _lh_quant_arg3_7)) in
    ((_lh_quant_arg1_7 p_7) _lh_quant_arg4_7));;
let rec map_lh__d4 f_4_2 ls_1_8 _lh_popOutId_0_2 =
  (match ls_1_8 with
    | `LH_C(h_3_7, t_4_4) -> 
      (let rec t_4_5 = ((map_lh__d4 f_4_2) t_4_4) in
        (let rec h_3_8 = (f_4_2 h_3_7) in
          (`LH_C(h_3_8, (t_4_5 _lh_popOutId_0_2)))))
    | `LH_N -> 
      _lh_popOutId_0_2);;
let rec geRewrite_lh__d2 _lh_geRewrite_arg1_3 _lh_geRewrite_arg2_3 _lh_geRewrite_arg3_3 =
  ((let rec _lh_inList_LH_C_1_1_5 = (let rec _lh_inList_LH_C_1_1_6 = (fun _lh_inList_arg1_2_1 -> 
    false) in
    (let rec _lh_inList_LH_C_0_1_5 = (`Equal) in
      (fun _lh_inList_arg1_2_2 -> 
        (if (_lh_inList_arg1_2_2 = _lh_inList_LH_C_0_1_5) then
          true
        else
          (_lh_inList_LH_C_1_1_6 _lh_inList_arg1_2_2))))) in
    (let rec _lh_inList_LH_C_0_1_6 = (`Greater) in
      (fun _lh_inList_arg1_2_3 -> 
        (if (_lh_inList_arg1_2_3 = _lh_inList_LH_C_0_1_6) then
          true
        else
          (_lh_inList_LH_C_1_1_5 _lh_inList_arg1_2_3))))) (_lh_geRewrite_arg1_3 (`LH_P2(_lh_geRewrite_arg2_3, _lh_geRewrite_arg3_3))));;
let rec orElseMap_lh__d1 _lh_orElseMap_arg1_2 _lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2 =
  ((orElse_lh__d1 (_lh_orElseMap_arg1_2 _lh_orElseMap_arg3_2)) (_lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2));;
let rec quant_lh__d3 _lh_quant_arg1_8 _lh_quant_arg2_8 _lh_quant_arg3_8 _lh_quant_arg4_8 =
  (let rec p_8 = (fun x_2_6 -> 
    ((_lh_quant_arg2_8 x_2_6) _lh_quant_arg3_8)) in
    ((_lh_quant_arg1_8 p_8) _lh_quant_arg4_8));;
let rec update_alist_lh__d1 _lh_update_alist_arg1_0 _lh_update_alist_arg2_0 _lh_update_alist_arg3_0 =
  (let rec upd_0 = (fun ls_1_9 -> 
    (let rec _lh_matchIdent_1_3 = ls_1_9 in
      (match _lh_matchIdent_1_3 with
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
let rec any_lh__d1 _lh_any_arg1_4 _lh_any_arg2_4 =
  (match _lh_any_arg2_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_4, _lh_any_LH_C_1_4) -> 
      (if (_lh_any_arg1_4 _lh_any_LH_C_0_4) then
        true
      else
        ((any_lh__d1 _lh_any_arg1_4) _lh_any_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec result_lh__d1 _lh_result_arg1_0 =
  (_lh_result_arg1_0 99);;
let rec croak_lh__d1 =
  (`Nothing);;
let rec sift_lh__d1 _lh_sift_arg1_1 =
  ((fun _lh_funcomp_x_1_2 -> 
    (concat_lh__d1 ((map_lh__d1_d3 listify_lh__d1) _lh_funcomp_x_1_2))) _lh_sift_arg1_1);;
let rec orElseMap_lh__d2 _lh_orElseMap_arg1_3 _lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3 =
  ((orElse_lh__d1 (_lh_orElseMap_arg1_3 _lh_orElseMap_arg3_3)) (_lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3));;
let rec map_lh__d1_d0 f_4_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_4_0, t_4_7) -> 
      (`LH_C((f_4_3 h_4_0), ((map_lh__d1_d0 f_4_3) t_4_7)))
    | `LH_N -> 
      (`LH_N));;
let rec atIndex_lh__d2 n_1 ls_2_1 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match ls_2_1 with
      | `LH_C(h_4_1, t_4_8) -> 
        (if (n_1 = 0) then
          h_4_1
        else
          ((atIndex_lh__d2 (n_1 - 1)) t_4_8))
      | `LH_N -> 
        (failwith "error")));;
let rec sub_lh__d2 _lh_sub_arg1_2 _lh_sub_arg2_2 =
  (((expr_fold_lh__d1 (fun x_2_7 y_4 -> 
    (`Func(x_2_7, y_4)))) (apply_lh__d1 _lh_sub_arg2_2)) _lh_sub_arg1_2);;
let rec cross_lh__d1 _lh_cross_arg1_2 _lh_cross_arg2_2 _lh_cross_arg3_2 =
  (match _lh_cross_arg3_2 with
    | `LH_P2(_lh_cross_LH_P2_0_2, _lh_cross_LH_P2_1_2) -> 
      (`LH_P2((_lh_cross_arg1_2 _lh_cross_LH_P2_0_2), (_lh_cross_arg2_2 _lh_cross_LH_P2_1_2)))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lh__d1 n_2 ls_2_2 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match ls_2_2 with
      | `LH_C(h_4_2, t_4_9) -> 
        (if (n_2 = 0) then
          h_4_2
        else
          ((atIndex_lh__d1 (n_2 - 1)) t_4_9))
      | `LH_N -> 
        (failwith "error")));;
let rec quant_lh__d4 _lh_quant_arg1_9 _lh_quant_arg2_9 _lh_quant_arg3_9 _lh_quant_arg4_9 =
  (let rec p_9 = (fun x_2_8 -> 
    ((_lh_quant_arg2_9 x_2_8) _lh_quant_arg3_9)) in
    ((_lh_quant_arg1_9 p_9) _lh_quant_arg4_9));;
let rec map_lh__d8 f_4_4 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_4_3, t_5_0) -> 
      (`LH_C((f_4_4 h_4_3), ((map_lh__d8 f_4_4) t_5_0)))
    | `LH_N -> 
      (`LH_N));;
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
let rec stand_eqn_lh__d1 _lh_stand_eqn_arg1_2 _lh_stand_eqn_arg2_2 =
  (match _lh_stand_eqn_arg2_2 with
    | `Eqn(_lh_stand_eqn_Eqn_0_2, _lh_stand_eqn_Eqn_1_2) -> 
      (match _lh_stand_eqn_Eqn_1_2 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_2, _lh_stand_eqn_LH_P2_1_2) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_2, (`LH_P2(((stand_lh__d1 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_0_2), ((stand_lh__d1 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_1_2)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec testRewrite_nofib_lh__d1 _lh_testRewrite_nofib_arg1_0 =
  (((copy_lh__d1 _lh_testRewrite_nofib_arg1_0) (let rec _lh_result_LH_P2_1_0 = (`LH_C('I', (`LH_C('(', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(')', (`LH_N))))))))))))))))))))))) in
    (let rec _lh_result_LH_P2_0_0 = (`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_N))))))))))))))))) in
      (fun _lh_dummy_0 -> 
        let rec multi_0 = (fun _lh_multi_arg1_0 _lh_multi_arg2_0 -> 
          (((_lh_multi_arg2_0 _lh_multi_arg1_0) dominates_0) rem_eq_0))
        and rank_order_0 = (fun _lh_rank_order_arg1_0 _lh_rank_order_arg2_0 -> 
          ((_lh_rank_order_arg2_0 _lh_rank_order_arg1_0) num_order_0))
        and superpose_0 = (fun _lh_superpose_arg1_0 _lh_superpose_arg2_0 -> 
          (sift_lh__d2 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                (match _lh_listcomp_fun_ls_h_0 with
                  | `LH_P2(_lh_superpose_LH_P2_0_0, _lh_superpose_LH_P2_1_0) -> 
                    (`LH_C(((lift_lh__d8 (pair_lh__d1 _lh_superpose_LH_P2_0_0)) ((unify_lh__d1 _lh_superpose_arg1_0) _lh_superpose_LH_P2_1_0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                  | _ -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_0 (subterms_lh__d1 _lh_superpose_arg2_0)))))
        and delete_0 = (fun _lh_delete_arg1_0 _lh_delete_arg2_0 _lh_delete_arg3_0 -> 
          (match _lh_delete_arg3_0 with
            | `LH_N -> 
              croak_lh__d4
            | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
              (if ((_lh_delete_arg1_0 _lh_delete_arg2_0) _lh_delete_LH_C_0_0) then
                (succeed_lh__d4 _lh_delete_LH_C_1_0)
              else
                ((lift_lh__d9 (fun x_2 -> 
                  (`LH_C(_lh_delete_LH_C_0_0, x_2)))) (((delete_0 _lh_delete_arg1_0) _lh_delete_arg2_0) _lh_delete_LH_C_1_0)))
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
                    (let rec _lh_matchIdent_0 = xsys_0 in
                      (match _lh_matchIdent_0 with
                        | `LH_P2(_lh_rem_eq_LH_P2_0_1, _lh_rem_eq_LH_P2_1_1) -> 
                          (`LH_P2((`LH_C(_lh_rem_eq_LH_C_0_0, _lh_rem_eq_LH_P2_0_1)), _lh_rem_eq_LH_P2_1_1))
                        | _ -> 
                          (failwith "error")))) in
                    (((lift_lh__d3 (fun _lh_funcomp_x_1 -> 
                      ((rem_eq_0 _lh_rem_eq_arg1_0) ((pair_lh__d2 _lh_rem_eq_LH_C_1_0) _lh_funcomp_x_1)))) (((delete_0 _lh_rem_eq_arg1_0) _lh_rem_eq_LH_C_0_0) _lh_rem_eq_LH_P2_1_0)) (add_x_0 ((rem_eq_0 _lh_rem_eq_arg1_0) (`LH_P2(_lh_rem_eq_LH_C_1_0, _lh_rem_eq_LH_P2_1_0))))))
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
          (let rec _lh_matchIdent_1 = (fst_lh__d3 (the_lh__d2 (p_eqn_0 _lh_parse_eqn_arg1_0))) in
            (match _lh_matchIdent_1 with
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
          (let rec insert_0 = (fun x_3 ls_4 -> 
            (let rec _lh_matchIdent_2 = ls_4 in
              (match _lh_matchIdent_2 with
                | `LH_N -> 
                  (`LH_C(x_3, (`LH_N)))
                | `LH_C(_lh_addby_LH_C_0_0, _lh_addby_LH_C_1_0) -> 
                  (if ((_lh_addby_arg1_0 x_3) <= (_lh_addby_arg1_0 _lh_addby_LH_C_0_0)) then
                    (`LH_C(x_3, (`LH_C(_lh_addby_LH_C_0_0, _lh_addby_LH_C_1_0))))
                  else
                    (`LH_C(_lh_addby_LH_C_0_0, ((insert_0 x_3) _lh_addby_LH_C_1_0))))
                | _ -> 
                  (failwith "error")))) in
            (((foldr_lh__d2 insert_0) _lh_addby_arg3_0) _lh_addby_arg2_0)))
        and seq2Lzq_0 = (fun _lh_seq2Lzq_arg1_0 _lh_seq2Lzq_arg2_0 _lh_seq2Lzq_arg3_0 -> 
          (let rec g_0 = (fun xs_3 -> 
            (let rec _lh_matchIdent_3 = xs_3 in
              (match _lh_matchIdent_3 with
                | `LH_P2(_lh_seq2Lzq_LH_P2_0_0, _lh_seq2Lzq_LH_P2_1_0) -> 
                  ((lift_lh__d6 ((cross_lh__d2 (_lh_seq2Lzq_arg1_0 _lh_seq2Lzq_LH_P2_0_0)) (fun x_4 -> 
                    x_4))) ((Lazy.force _lh_seq2Lzq_arg3_0) _lh_seq2Lzq_LH_P2_1_0))
                | _ -> 
                  (failwith "error")))) in
            (fun _lh_funcomp_x_2 -> 
              ((fun _lh_funcomp_x_3 -> 
                ((lift_lh__d5 g_0) _lh_funcomp_x_3)) (_lh_seq2Lzq_arg2_0 _lh_funcomp_x_2)))))
        and find_assoc_0 = (fun _lh_find_assoc_arg1_0 _lh_find_assoc_arg2_0 _lh_find_assoc_arg3_0 -> 
          (match _lh_find_assoc_arg1_0 with
            | `Afunc(_lh_find_assoc_Afunc_0_0) -> 
              ((getOrElse_lh__d2 ((lift_lh__d1 (find'_0 _lh_find_assoc_arg2_0)) ((assoc_lh__d1 _lh_find_assoc_arg3_0) _lh_find_assoc_Afunc_0_0))) (`LH_N))
            | `Avar -> 
              (`LH_N)
            | _ -> 
              (failwith "error")))
        and rpo_0 = (fun _lh_rpo_arg1_0 _lh_rpo_arg2_0 -> 
          (let rec rpo'_0 = (fun param_0 -> 
            (let rec _lh_matchIdent_4 = param_0 in
              (match _lh_matchIdent_4 with
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
                          (if ((occurs_lh__d1 _lh_rpo_Var_0_0) (`Func(_lh_rpo_Func_0_0, _lh_rpo_Func_1_0))) then
                            (`Less)
                          else
                            (`Unrelated))
                        | _ -> 
                          ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                    | `Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1) -> 
                      (match _lh_rpo_LH_P2_1_0 with
                        | `Var(_lh_rpo_Var_0_2) -> 
                          (if ((occurs_lh__d2 _lh_rpo_Var_0_2) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) then
                            (`Greater)
                          else
                            (`Unrelated))
                        | `Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2) -> 
                          (let rec _lh_matchIdent_5 = (_lh_rpo_arg1_0 (let rec _lh_rank_order_LH_P2_1_0 = _lh_rpo_Func_0_2 in
                            (let rec _lh_rank_order_LH_P2_0_0 = _lh_rpo_Func_0_1 in
                              (fun _lh_rank_order_arg1_1 num_order_1 -> 
                                (num_order_1 (`LH_P2((_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_0_0), (_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_1_0)))))))) in
                            (match _lh_matchIdent_5 with
                              | `Equal -> 
                                ((_lh_rpo_arg2_0 rpo'_0) (`LH_P2((`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1)), (`Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2)))))
                              | `Greater -> 
                                (if ((((quant_lh__d1_d0 all_lh__d2) (ltRewrite_lh__d1 rpo'_0)) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) _lh_rpo_Func_1_2) then
                                  (`Greater)
                                else
                                  (if ((((quant_lh__d8 any_lh__d1) (geRewrite_lh__d1 rpo'_0)) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) _lh_rpo_Func_1_2) then
                                    (`Less)
                                  else
                                    (`Unrelated)))
                              | `Less -> 
                                (if ((((quant_lh__d2 all_lh__d6) (ltRewrite_lh__d3 rpo'_0)) (`Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2))) _lh_rpo_Func_1_1) then
                                  (`Less)
                                else
                                  (if ((((quant_lh__d7 any_lh__d4) (geRewrite_lh__d4 rpo'_0)) (`Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2))) _lh_rpo_Func_1_1) then
                                    (`Greater)
                                  else
                                    (`Unrelated)))
                              | `Unrelated -> 
                                (`Unrelated)
                              | _ -> 
                                (failwith "error")))
                        | _ -> 
                          ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                    | _ -> 
                      ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                | _ -> 
                  ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))) in
            rpo'_0))
        and split_0 = (fun _lh_split_arg1_0 _lh_split_arg2_0 -> 
          (let rec tmp_0 = ((zip_lh__d1 ((map_lh__d7 _lh_split_arg1_0) _lh_split_arg2_0)) _lh_split_arg2_0) in
            (let rec _lh_process2_LH_P2_1_0 = (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              (match _lh_listcomp_fun_para_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                  (match _lh_listcomp_fun_ls_h_1 with
                    | `LH_P2(_lh_split_LH_P2_0_0, _lh_split_LH_P2_1_0) -> 
                      (if (not _lh_split_LH_P2_0_0) then
                        (`LH_C(_lh_split_LH_P2_1_0, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                      else
                        (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                    | _ -> 
                      (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_1 tmp_0)) in
              (let rec _lh_process2_LH_P2_0_0 = (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                (match _lh_listcomp_fun_para_2 with
                  | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                    (match _lh_listcomp_fun_ls_h_2 with
                      | `LH_P2(_lh_split_LH_P2_0_1, _lh_split_LH_P2_1_1) -> 
                        (if _lh_split_LH_P2_0_1 then
                          (`LH_C(_lh_split_LH_P2_1_1, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                        else
                          (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                      | _ -> 
                        (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_2 tmp_0)) in
                (fun _lh_process2_arg1_0 _lh_process2_arg2_0 _lh_process2_arg4_0 _lh_process2_arg5_0 _lh_process2_arg6_0 add_agenda_1 add_eqn_1 all_crit_pairs_1 process_1 resolve_1 super_reduce_1 -> 
                  (let rec net'_0 = ((add_eqn_1 ((delete_eqns_lh__d1 ((map_lh__d1 eqno_lh__d1) _lh_process2_LH_P2_0_0)) _lh_process2_arg4_0)) _lh_process2_arg6_0) in
                    (let rec deletions_0 = ((map_lh__d3 eqpr_lh__d1) _lh_process2_LH_P2_0_0) in
                      (let rec critical_0 = ((all_crit_pairs_1 _lh_process2_arg6_0) _lh_process2_LH_P2_1_0) in
                        (let rec new_agenda_0 = (sift_lh__d1 ((map_lh__d1_d0 (resolve_1 (super_reduce_1 net'_0))) (deletions_0 critical_0))) in
                          (let rec todo'_0 = (((add_agenda_1 (snd_lh__d2 _lh_process2_arg1_0)) new_agenda_0) _lh_process2_arg5_0) in
                            (((((process_1 _lh_process2_arg1_0) _lh_process2_arg2_0) ((mappend_lh__d2 _lh_process2_LH_P2_1_0) (`LH_C(_lh_process2_arg6_0, (`LH_N))))) net'_0) todo'_0)))))))))))
        and build_0 = (fun _lh_build_arg1_0 _lh_build_arg2_0 _lh_funcomp_x_4 -> 
          ((lift_lh__d7 ((cross_lh__d3 _lh_build_arg1_0) (fun x_5 -> 
            x_5))) (_lh_build_arg2_0 _lh_funcomp_x_4)))
        and process1_0 = (fun _lh_process1_arg1_0 _lh_process1_arg2_0 _lh_process1_arg3_0 _lh_process1_arg4_0 _lh_process1_arg5_0 _lh_process1_arg6_0 -> 
          ((((((((_lh_process1_arg6_0 _lh_process1_arg1_0) _lh_process1_arg2_0) _lh_process1_arg3_0) _lh_process1_arg4_0) _lh_process1_arg5_0) add_agenda_0) process2_0) process_0))
        and p_op_0 = (fun _lh_p_op_arg1_0 -> 
          ((sp_0 (string_of_0 opsym_0)) _lh_p_op_arg1_0))
        and p_prim_0 = (fun _lh_p_prim_arg1_0 -> 
          (((orElseMap_lh__d2 p_name_0) ((seQ_0 (fun x_6 -> 
            ((atIndex_lh__d1 1) x_6))) (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (fun f_8 i_1 -> 
            i_1) in
            (let rec h_5 = (look_for_0 ')') in
              (fun f_9 i_2 -> 
                ((f_9 h_5) ((t_1_2 f_9) i_2))))) in
            (let rec h_6 = p_expr_0 in
              (fun f_1_0 i_3 -> 
                ((f_1_0 h_6) ((t_1_1 f_1_0) i_3))))) in
            (let rec h_7 = (look_for_0 '(') in
              (fun f_1_1 i_4 -> 
                ((f_1_1 h_7) ((t_1_0 f_1_1) i_4))))))) _lh_p_prim_arg1_0))
        and reducible_0 = (fun _lh_reducible_arg1_0 _lh_reducible_arg2_0 -> 
          (match _lh_reducible_arg2_0 with
            | `Eqn(_lh_reducible_Eqn_0_0, _lh_reducible_Eqn_1_0) -> 
              (match _lh_reducible_Eqn_1_0 with
                | `LH_P2(_lh_reducible_LH_P2_0_0, _lh_reducible_LH_P2_1_0) -> 
                  ((exists_lh__d1 (_lh_reducible_arg1_0 _lh_reducible_LH_P2_0_0)) || (exists_lh__d2 (_lh_reducible_arg1_0 _lh_reducible_LH_P2_1_0)))
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
                                      (`Expr((`Func(_lh_q_func_MkString_0_0, ((map_lh__d1_d3 unExpr_0) _lh_q_func_List_0_0)))))
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
          ((knuth_bendix1_0 (`LH_P2(_lh_knuth_bendix_arg1_0, cost_lh__d1))) _lh_knuth_bendix_arg2_0))
        and add_agenda_0 = (fun _lh_add_agenda_arg1_0 _lh_add_agenda_arg2_0 -> 
          ((addby_0 item_cost_0) ((map_lh__d8 (mk_item_0 _lh_add_agenda_arg1_0)) _lh_add_agenda_arg2_0)))
        and g_init_0 = (fun _lh_g_init_arg1_0 -> 
          (`LH_C(_lh_g_init_arg1_0, (`LH_N))))
        and mk_dnet_0 = (fun _lh_mk_dnet_arg1_0 -> 
          (((foldl_lh__d1 add_eqn_0) empty_net_0) _lh_mk_dnet_arg1_0))
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
          ((fun x_7 -> 
            ((let rec _lh_inList_LH_C_1_2 = (let rec _lh_inList_LH_C_1_3 = (let rec _lh_inList_LH_C_1_4 = (let rec _lh_inList_LH_C_1_5 = (let rec _lh_inList_LH_C_1_6 = (let rec _lh_inList_LH_C_1_7 = (let rec _lh_inList_LH_C_1_8 = (let rec _lh_inList_LH_C_1_9 = (fun _lh_inList_arg1_3 -> 
              false) in
              (let rec _lh_inList_LH_C_0_2 = ':' in
                (fun _lh_inList_arg1_4 -> 
                  (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_2) then
                    true
                  else
                    (_lh_inList_LH_C_1_9 _lh_inList_arg1_4))))) in
              (let rec _lh_inList_LH_C_0_3 = '?' in
                (fun _lh_inList_arg1_5 -> 
                  (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_3) then
                    true
                  else
                    (_lh_inList_LH_C_1_8 _lh_inList_arg1_5))))) in
              (let rec _lh_inList_LH_C_0_4 = '/' in
                (fun _lh_inList_arg1_6 -> 
                  (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_4) then
                    true
                  else
                    (_lh_inList_LH_C_1_7 _lh_inList_arg1_6))))) in
              (let rec _lh_inList_LH_C_0_5 = '-' in
                (fun _lh_inList_arg1_7 -> 
                  (if (_lh_inList_arg1_7 = _lh_inList_LH_C_0_5) then
                    true
                  else
                    (_lh_inList_LH_C_1_6 _lh_inList_arg1_7))))) in
              (let rec _lh_inList_LH_C_0_6 = '@' in
                (fun _lh_inList_arg1_8 -> 
                  (if (_lh_inList_arg1_8 = _lh_inList_LH_C_0_6) then
                    true
                  else
                    (_lh_inList_LH_C_1_5 _lh_inList_arg1_8))))) in
              (let rec _lh_inList_LH_C_0_7 = '%' in
                (fun _lh_inList_arg1_9 -> 
                  (if (_lh_inList_arg1_9 = _lh_inList_LH_C_0_7) then
                    true
                  else
                    (_lh_inList_LH_C_1_4 _lh_inList_arg1_9))))) in
              (let rec _lh_inList_LH_C_0_8 = '+' in
                (fun _lh_inList_arg1_1_0 -> 
                  (if (_lh_inList_arg1_1_0 = _lh_inList_LH_C_0_8) then
                    true
                  else
                    (_lh_inList_LH_C_1_3 _lh_inList_arg1_1_0))))) in
              (let rec _lh_inList_LH_C_0_9 = '*' in
                (fun _lh_inList_arg1_1_1 -> 
                  (if (_lh_inList_arg1_1_1 = _lh_inList_LH_C_0_9) then
                    true
                  else
                    (_lh_inList_LH_C_1_2 _lh_inList_arg1_1_1))))) x_7)) _lh_opsym_arg1_0))
        and resolve_0 = (fun _lh_resolve_arg1_0 _lh_resolve_arg2_0 -> 
          (let rec lhs'_0 = ((simplify_lh__d1 _lh_resolve_arg1_0) (fst_lh__d4 _lh_resolve_arg2_0)) in
            (let rec rhs'_0 = ((simplify_lh__d5 _lh_resolve_arg1_0) (snd_lh__d3 _lh_resolve_arg2_0)) in
              (if ((eqExpr_lh__d1 lhs'_0) rhs'_0) then
                croak_lh__d1
              else
                (succeed_lh__d1 (`LH_P2(lhs'_0, rhs'_0)))))))
        and p_term_0 = (fun _lh_p_term_arg1_0 -> 
          (((orElseMap_lh__d1 ((seQ_0 q_func_0) (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (fun f_1_2 i_5 -> 
            i_5) in
            (let rec h_8 = (look_for_0 ')') in
              (fun f_1_3 i_6 -> 
                ((f_1_3 h_8) ((t_1_6 f_1_3) i_6))))) in
            (let rec h_9 = ((list_of_0 p_expr_0) ',') in
              (fun f_1_4 i_7 -> 
                ((f_1_4 h_9) ((t_1_5 f_1_4) i_7))))) in
            (let rec h_1_0 = (look_for_0 '(') in
              (fun f_1_5 i_8 -> 
                ((f_1_5 h_1_0) ((t_1_4 f_1_5) i_8))))) in
            (let rec h_1_1 = p_ident_0 in
              (fun f_1_6 i_9 -> 
                ((f_1_6 h_1_1) ((t_1_3 f_1_6) i_9))))))) p_prim_0) _lh_p_term_arg1_0))
        and add_eqn_0 = (fun _lh_add_eqn_arg1_0 _lh_add_eqn_arg2_0 -> 
          (((thread_0 (preorder_0 (g_init_0 (lhs_lh__d1 _lh_add_eqn_arg2_0)))) _lh_add_eqn_arg2_0) _lh_add_eqn_arg1_0))
        and thread_0 = (fun _lh_thread_arg1_0 _lh_thread_arg2_0 _lh_thread_arg3_0 -> 
          (match _lh_thread_arg1_0 with
            | `LH_C(_lh_thread_LH_C_0_0, _lh_thread_LH_C_1_0) -> 
              (match _lh_thread_LH_C_0_0 with
                | `Afunc(_lh_thread_Afunc_0_0) -> 
                  (match _lh_thread_arg3_0 with
                    | `Switch(_lh_thread_Switch_0_0, _lh_thread_Switch_1_0) -> 
                      (`Switch(((((update_alist_lh__d1 _lh_thread_Afunc_0_0) ((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0)) empty_net_0) _lh_thread_Switch_0_0), _lh_thread_Switch_1_0))
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
                  ((mappend_lh__d4 _lh_g_rest_Func_1_0) _lh_g_rest_LH_C_1_0)
                | `Var(_lh_g_rest_Var_0_0) -> 
                  _lh_g_rest_LH_C_1_0
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and lex_ext_0 = (fun _lh_lex_ext_arg1_0 _lh_lex_ext_arg2_0 -> 
          (match _lh_lex_ext_arg2_0 with
            | `LH_P2(_lh_lex_ext_LH_P2_0_0, _lh_lex_ext_LH_P2_1_0) -> 
              (match _lh_lex_ext_LH_P2_0_0 with
                | `Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0) -> 
                  (match _lh_lex_ext_LH_P2_1_0 with
                    | `Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1) -> 
                      (let rec estimate_0 = ((lexico_0 _lh_lex_ext_arg1_0) (`LH_P2(_lh_lex_ext_Func_1_0, _lh_lex_ext_Func_1_1))) in
                        (let rec confirm_0 = (fun x_8 -> 
                          (let rec _lh_matchIdent_6 = x_8 in
                            (match _lh_matchIdent_6 with
                              | `Equal -> 
                                true
                              | `Greater -> 
                                ((((quant_lh__d1 all_lh__d4) (ltRewrite_lh__d4 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0))) _lh_lex_ext_Func_1_1)
                              | `Less -> 
                                ((((quant_lh__d3 all_lh__d3) (ltRewrite_lh__d2 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1))) _lh_lex_ext_Func_1_0)
                              | `Unrelated -> 
                                false
                              | _ -> 
                                (failwith "error")))) in
                          (if (confirm_0 estimate_0) then
                            estimate_0
                          else
                            (if ((((quant_lh__d4 any_lh__d2) (geRewrite_lh__d2 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1))) _lh_lex_ext_Func_1_0) then
                              (`Greater)
                            else
                              (if ((((quant_lh__d6 any_lh__d5) (geRewrite_lh__d3 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0))) _lh_lex_ext_Func_1_1) then
                                (`Less)
                              else
                                (`Unrelated))))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and empty_0 = (fun _lh_empty_arg1_0 -> 
          (succeed_lh__d3 (`LH_P2((`List((`LH_N))), _lh_empty_arg1_0))))
        and g_skip_0 = (fun _lh_g_skip_arg1_0 -> 
          (tail_lh__d1 _lh_g_skip_arg1_0))
        and super_reduce_0 = (fun _lh_super_reduce_arg1_0 -> 
          (inside_lh__d1 (dnet_reduce_0 _lh_super_reduce_arg1_0)))
        and unString_0 = (fun _lh_unString_arg1_0 -> 
          (match _lh_unString_arg1_0 with
            | `MkString(_lh_unString_MkString_0_0) -> 
              _lh_unString_MkString_0_0
            | _ -> 
              (failwith "error")))
        and look_for_0 = (fun _lh_look_for_arg1_0 -> 
          (sp_0 (pchar_0 (fun x_9 -> 
            (x_9 = _lh_look_for_arg1_0)))))
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
                              (`LH_P2(((sub_lh__d1 (((replace_lh__d1 _lh_mk_crit_LH_P2_0_1) _lh_mk_crit_LH_P2_0_2) _lh_mk_crit_LH_P2_1_0)) _lh_mk_crit_LH_P2_1_2), ((sub_lh__d2 _lh_mk_crit_LH_P2_1_1) _lh_mk_crit_LH_P2_1_2)))
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
          (let rec p'_0 = (lazy (((seq2_0 mk_cons_0) _lh_list_of_arg1_0) ((orElseMap_lh__d3 (((seq2Lzq_0 (fun x_1_0 y_0 -> 
            y_0)) (look_for_0 _lh_list_of_arg2_0)) p'_0)) empty_0))) in
            (Lazy.force p'_0)))
        and seQ_0 = (fun _lh_seQ_arg1_0 _lh_seQ_arg2_0 -> 
          ((build_0 (mk_list_0 _lh_seQ_arg1_0)) ((_lh_seQ_arg2_0 (seq2_0 mk_cons_0)) empty_0)))
        and q_name_0 = (fun _lh_q_name_arg1_0 -> 
          (match _lh_q_name_arg1_0 with
            | `MkString(_lh_q_name_MkString_0_0) -> 
              (if (((int_of_char ((atIndex_lh__d2 0) _lh_q_name_MkString_0_0)) >= (int_of_char 'a')) && ((int_of_char ((atIndex_lh__d3 0) _lh_q_name_MkString_0_0)) <= (int_of_char 'z'))) then
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
          (match _lh_num_order_arg1_0 with
            | `LH_P2(_lh_num_order_LH_P2_0_0, _lh_num_order_LH_P2_1_0) -> 
              (if (_lh_num_order_LH_P2_0_0 > _lh_num_order_LH_P2_1_0) then
                (`Greater)
              else
                (if (_lh_num_order_LH_P2_0_0 < _lh_num_order_LH_P2_1_0) then
                  (`Less)
                else
                  (`Equal)))
            | _ -> 
              (failwith "error")))
        and pchar_0 = (fun _lh_pchar_arg1_0 _lh_pchar_arg2_0 -> 
          (match _lh_pchar_arg2_0 with
            | `LH_N -> 
              croak_lh__d3
            | `LH_C(_lh_pchar_LH_C_0_0, _lh_pchar_LH_C_1_0) -> 
              (if (_lh_pchar_arg1_0 _lh_pchar_LH_C_0_0) then
                (succeed_lh__d2 (`LH_P2((`MkString((`LH_C(_lh_pchar_LH_C_0_0, (`LH_N))))), _lh_pchar_LH_C_1_0)))
              else
                croak_lh__d2)
            | _ -> 
              (failwith "error")))
        and crit_pairs_0 = (fun _lh_crit_pairs_arg1_0 _lh_crit_pairs_arg2_0 -> 
          (((map_lh__d4 ((mk_crit_0 _lh_crit_pairs_arg1_0) _lh_crit_pairs_arg2_0)) ((superpose_0 (lhs_lh__d7 _lh_crit_pairs_arg1_0)) (lhs_lh__d5 _lh_crit_pairs_arg2_0))) ((map_lh__d9 ((mk_crit_0 _lh_crit_pairs_arg2_0) _lh_crit_pairs_arg1_0)) ((strict_super_0 (lhs_lh__d2 _lh_crit_pairs_arg2_0)) (lhs_lh__d3 _lh_crit_pairs_arg1_0)))))
        and strict_super_0 = (fun _lh_strict_super_arg1_0 _lh_strict_super_arg2_0 -> 
          (match _lh_strict_super_arg2_0 with
            | `Func(_lh_strict_super_Func_0_0, _lh_strict_super_Func_1_0) -> 
              (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
                (match _lh_listcomp_fun_para_3 with
                  | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                    (match _lh_listcomp_fun_ls_h_3 with
                      | `LH_P2(_lh_strict_super_LH_P2_0_0, _lh_strict_super_LH_P2_1_0) -> 
                        (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
                          (match _lh_listcomp_fun_para_4 with
                            | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                              (match _lh_listcomp_fun_ls_h_4 with
                                | `LH_P2(_lh_strict_super_LH_P2_0_1, _lh_strict_super_LH_P2_1_1) -> 
                                  (`LH_C((`LH_P2((`LH_C(_lh_strict_super_LH_P2_0_0, _lh_strict_super_LH_P2_0_1)), _lh_strict_super_LH_P2_1_1)), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
                                | _ -> 
                                  (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))
                            | `LH_N -> 
                              (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))) in
                          (_lh_listcomp_fun_4 ((superpose_0 _lh_strict_super_arg1_0) _lh_strict_super_LH_P2_1_0)))
                      | _ -> 
                        (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_3 (match _lh_strict_super_Func_1_0 with
                  | `LH_C(hy_1, ty_1) -> 
                    (((Lazy.force (enumFrom_lh__d1 0)) hy_1) ty_1)
                  | `LH_N -> 
                    (`LH_N))))
            | _ -> 
              (failwith "error")))
        and dominates_0 = (fun _lh_dominates_arg1_0 -> 
          ((quant_lh__d9 all_lh__d5) ((quant_lh__d5 any_lh__d3) (gtRewrite_lh__d1 _lh_dominates_arg1_0))))
        and knuth_bendix1_0 = (fun _lh_knuth_bendix1_arg1_0 _lh_knuth_bendix1_arg2_0 -> 
          (((((process_0 _lh_knuth_bendix1_arg1_0) 1) (`LH_N)) empty_net_0) (((add_agenda_0 (snd_lh__d1 _lh_knuth_bendix1_arg1_0)) _lh_knuth_bendix1_arg2_0) (`LH_N))))
        and mk_item_0 = (fun _lh_mk_item_arg1_0 _lh_mk_item_arg2_0 -> 
          (`Item((_lh_mk_item_arg1_0 _lh_mk_item_arg2_0), _lh_mk_item_arg2_0)))
        and sp_0 = (fun _lh_sp_arg1_0 _lh_funcomp_x_5 -> 
          (_lh_sp_arg1_0 ((dropWhile_lh__d1 (fun x_1_1 -> 
            (x_1_1 = ' '))) _lh_funcomp_x_5)))
        and p_eqn_0 = (fun _lh_p_eqn_arg1_0 -> 
          (((seQ_0 q_eqn_0) (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (fun f_1_7 i_1_0 -> 
            i_1_0) in
            (let rec h_1_2 = p_expr_0 in
              (fun f_1_8 i_1_1 -> 
                ((f_1_8 h_1_2) ((t_1_9 f_1_8) i_1_1))))) in
            (let rec h_1_3 = (look_for_0 '=') in
              (fun f_1_9 i_1_2 -> 
                ((f_1_9 h_1_3) ((t_1_8 f_1_9) i_1_2))))) in
            (let rec h_1_4 = p_expr_0 in
              (fun f_2_0 i_1_3 -> 
                ((f_2_0 h_1_4) ((t_1_7 f_2_0) i_1_3)))))) _lh_p_eqn_arg1_0))
        and p_ident_0 = (fun _lh_p_ident_arg1_0 -> 
          ((sp_0 (string_of_0 alphanum_0)) _lh_p_ident_arg1_0))
        and process2_0 = (fun _lh_process2_arg1_1 _lh_process2_arg2_1 _lh_process2_arg3_0 _lh_process2_arg4_1 _lh_process2_arg5_1 _lh_process2_arg6_1 -> 
          (let rec _lh_matchIdent_7 = ((split_0 (reducible_0 (reduce1_lh__d1 _lh_process2_arg6_1))) _lh_process2_arg3_0) in
            (((((((((((_lh_matchIdent_7 _lh_process2_arg1_1) _lh_process2_arg2_1) _lh_process2_arg4_1) _lh_process2_arg5_1) _lh_process2_arg6_1) add_agenda_0) add_eqn_0) all_crit_pairs_0) process_0) resolve_0) super_reduce_0)))
        and dnet_reduce_0 = (fun _lh_dnet_reduce_arg1_0 _lh_dnet_reduce_arg2_0 -> 
          ((try_all_lh__d1 ((map_lh__d5 rewrite_lh__d1) ((find_0 _lh_dnet_reduce_arg2_0) _lh_dnet_reduce_arg1_0))) _lh_dnet_reduce_arg2_0))
        and find'_0 = (fun _lh_find'_arg1_0 _lh_find'_arg2_0 -> 
          (match _lh_find'_arg2_0 with
            | `Return(_lh_find'_Return_0_0) -> 
              _lh_find'_Return_0_0
            | `Switch(_lh_find'_Switch_0_0, _lh_find'_Switch_1_0) -> 
              ((mappend_lh__d7 (((find_assoc_0 (g_first_0 _lh_find'_arg1_0)) (g_rest_0 _lh_find'_arg1_0)) _lh_find'_Switch_0_0)) ((find'_0 (g_skip_0 _lh_find'_arg1_0)) _lh_find'_Switch_1_0))
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
                            (let rec _lh_matchIdent_8 = ((rem_eq_1 (eqRewrite_lh__d1 _lh_multi_arg1_1)) (`LH_P2(_lh_multi_LH_P2_0_0, _lh_multi_LH_P2_1_0))) in
                              (match _lh_matchIdent_8 with
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
            (let rec _lh_matchIdent_9 = xs_4 in
              (match _lh_matchIdent_9 with
                | `LH_P2(_lh_seq2_LH_P2_0_0, _lh_seq2_LH_P2_1_0) -> 
                  ((lift_lh__d4 ((cross_lh__d1 (_lh_seq2_arg1_0 _lh_seq2_LH_P2_0_0)) (fun x_1_2 -> 
                    x_1_2))) (_lh_seq2_arg3_0 _lh_seq2_LH_P2_1_0))
                | _ -> 
                  (failwith "error")))) in
            (fun _lh_funcomp_x_6 -> 
              ((fun _lh_funcomp_x_7 -> 
                ((lift_lh__d2 g_1) _lh_funcomp_x_7)) (_lh_seq2_arg2_0 _lh_funcomp_x_6)))))
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
          (((orElseMap_lh__d4 ((seQ_0 q_op_0) (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (fun f_2_1 i_1_4 -> 
            i_1_4) in
            (let rec h_1_5 = p_term_0 in
              (fun f_2_2 i_1_5 -> 
                ((f_2_2 h_1_5) ((t_2_2 f_2_2) i_1_5))))) in
            (let rec h_1_6 = p_op_0 in
              (fun f_2_3 i_1_6 -> 
                ((f_2_3 h_1_6) ((t_2_1 f_2_3) i_1_6))))) in
            (let rec h_1_7 = p_term_0 in
              (fun f_2_4 i_1_7 -> 
                ((f_2_4 h_1_7) ((t_2_0 f_2_4) i_1_7))))))) p_term_0) _lh_p_expr_arg1_0))
        and all_crit_pairs_0 = (fun _lh_all_crit_pairs_arg1_0 _lh_all_crit_pairs_arg2_0 -> 
          (let rec eqn'_0 = ((stand_eqn_lh__d1 (`LH_C('1', (`LH_N)))) _lh_all_crit_pairs_arg1_0) in
            (let rec eqn''_0 = ((stand_eqn_lh__d3 (`LH_C('2', (`LH_N)))) _lh_all_crit_pairs_arg1_0) in
              (let rec theory''_0 = ((map_lh__d1_d2 (stand_eqn_lh__d2 (`LH_C('2', (`LH_N))))) _lh_all_crit_pairs_arg2_0) in
                (((map_lh__d1_d1 ((mk_crit_0 eqn'_0) eqn''_0)) ((strict_super_0 (lhs_lh__d6 eqn'_0)) (lhs_lh__d4 eqn''_0))) (concat_lh__d1 (theory''_0 (crit_pairs_0 eqn'_0))))))))
        and parse_0 = (fun _lh_parse_arg1_0 -> 
          ((fun _lh_funcomp_x_8 -> 
            ((fun _lh_funcomp_x_9 -> 
              ((fun _lh_funcomp_x_1_0 -> 
                (unExpr_0 (fst_lh__d1 _lh_funcomp_x_1_0))) (the_lh__d1 _lh_funcomp_x_9))) (p_expr_0 _lh_funcomp_x_8))) _lh_parse_arg1_0))
        and mk_cons_0 = (fun _lh_mk_cons_arg1_0 _lh_mk_cons_arg2_0 -> 
          (match _lh_mk_cons_arg2_0 with
            | `List(_lh_mk_cons_List_0_0) -> 
              (`List((`LH_C(_lh_mk_cons_arg1_0, _lh_mk_cons_List_0_0))))
            | _ -> 
              (failwith "error")))
        and string_of_0 = (fun _lh_string_of_arg1_0 _lh_string_of_arg2_0 -> 
          (let rec chars_0 = ((takeWhile_lh__d1 _lh_string_of_arg1_0) _lh_string_of_arg2_0) in
            (let rec s'_0 = ((dropWhile_lh__d2 _lh_string_of_arg1_0) _lh_string_of_arg2_0) in
              ((maybeX_lh__d1 (chars_0 <> (`LH_N))) (`LH_P2((`MkString(chars_0)), s'_0))))))
        and preorder_0 = (fun _lh_preorder_arg1_0 -> 
          (if ((eqListExpr_lh__d1 _lh_preorder_arg1_0) (`LH_N)) then
            (`LH_N)
          else
            ((let rec t_2_3 = (fun ys_3 -> 
              ys_3) in
              (let rec h_1_8 = (g_first_0 _lh_preorder_arg1_0) in
                (fun ys_4 -> 
                  (`LH_C(h_1_8, (t_2_3 ys_4)))))) (preorder_0 (g_rest_0 _lh_preorder_arg1_0)))))
        and alphanum_0 = (fun _lh_alphanum_arg1_0 -> 
          (((((int_of_char _lh_alphanum_arg1_0) >= (int_of_char 'A')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char 'Z'))) || (((int_of_char _lh_alphanum_arg1_0) >= (int_of_char 'a')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char 'z')))) || (((int_of_char _lh_alphanum_arg1_0) >= (int_of_char '0')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char '9')))))
        and preprocess_0 = (fun _lh_preprocess_arg1_0 _lh_preprocess_arg2_0 -> 
          (match _lh_preprocess_arg2_0 with
            | `LH_P2(_lh_preprocess_LH_P2_0_0, _lh_preprocess_LH_P2_1_0) -> 
              (let rec _lh_process1_LH_P2_1_0 = ((simplify_lh__d3 (super_reduce_0 _lh_preprocess_arg1_0)) _lh_preprocess_LH_P2_1_0) in
                (let rec _lh_process1_LH_P2_0_0 = ((simplify_lh__d2 (super_reduce_0 _lh_preprocess_arg1_0)) _lh_preprocess_LH_P2_0_0) in
                  (fun _lh_process1_arg1_1 _lh_process1_arg2_1 _lh_process1_arg3_1 _lh_process1_arg4_1 _lh_process1_arg5_1 add_agenda_2 process2_1 process_2 -> 
                    (let rec o_0 = ((fst_lh__d2 _lh_process1_arg1_1) (`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0))) in
                      (let rec _lh_matchIdent_1_0 = o_0 in
                        (match _lh_matchIdent_1_0 with
                          | `Unrelated -> 
                            (((((process_2 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) (((add_agenda_2 (fun dum_1 -> 
                              1000)) (`LH_C((`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0)), (`LH_N)))) _lh_process1_arg5_1))
                          | `Equal -> 
                            (((((process_2 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1)
                          | _ -> 
                            (let rec eqn_0 = (let rec _lh_matchIdent_1_1 = o_0 in
                              (match _lh_matchIdent_1_1 with
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
        in (let rec group_completion_0 = ((knuth_bendix_0 ((rpo_0 (rank_order_0 rank_0)) lex_ext_0)) ((let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (fun f_2_5 -> 
          (`LH_N)) in
          (let rec h_1_9 = (`LH_C('I', (`LH_C('(', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('E', (`LH_N))))))))))))))))))))))))) in
            (fun f_2_6 -> 
              (`LH_C((f_2_6 h_1_9), (t_2_6 f_2_6)))))) in
          (let rec h_2_0 = (`LH_C('E', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('x', (`LH_N))))))))))))))))))) in
            (fun f_2_7 -> 
              (`LH_C((f_2_7 h_2_0), (t_2_5 f_2_7)))))) in
          (let rec h_2_1 = (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))) in
            (fun f_2_8 -> 
              (`LH_C((f_2_8 h_2_1), (t_2_4 f_2_8)))))) parse_eqn_0)) in
          ((eqExpr_lh__d2 ((simplify_lh__d4 (super_reduce_0 group_completion_0)) (parse_0 _lh_result_LH_P2_0_0))) (parse_0 _lh_result_LH_P2_1_0))))))) result_lh__d1);;
end;;
