
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec a_lh =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec mult__lh _lh_mult__arg1_0 _lh_mult__arg2_0 =
  (`Node((`LH_C('*', (`LH_N))), (`LH_C(_lh_mult__arg1_0, (`LH_C(_lh_mult__arg2_0, (`LH_N)))))));;
let rec b_lh =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec plus__lh _lh_plus__arg1_0 _lh_plus__arg2_0 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_0, (`LH_C(_lh_plus__arg2_0, (`LH_N)))))));;
let rec example2_lh _lh_example2_arg1_0 =
  ((plus__lh ((mult__lh a_lh) b_lh)) ((mult__lh a_lh) b_lh));;
let rec c_lh =
  (`Node((`LH_C('c', (`LH_N))), (`LH_N)));;
let rec example3_lh _lh_example3_arg1_0 =
  ((plus__lh ((mult__lh ((plus__lh a_lh) b_lh)) c_lh)) ((plus__lh a_lh) b_lh));;
let rec scanr_lh _lh_scanr_arg1_0 _lh_scanr_arg2_0 _lh_scanr_arg3_0 =
  (match _lh_scanr_arg3_0 with
    | `LH_N -> 
      (`LH_C(_lh_scanr_arg2_0, (`LH_N)))
    | `LH_C(_lh_scanr_LH_C_0_0, _lh_scanr_LH_C_1_0) -> 
      (let rec _lh_matchIdent_2 = (((scanr_lh _lh_scanr_arg1_0) _lh_scanr_arg2_0) _lh_scanr_LH_C_1_0) in
        (match _lh_matchIdent_2 with
          | `LH_C(_lh_scanr_LH_C_0_1, _lh_scanr_LH_C_1_1) -> 
            (`LH_C(((_lh_scanr_arg1_0 _lh_scanr_LH_C_0_0) _lh_scanr_LH_C_0_1), (`LH_C(_lh_scanr_LH_C_0_1, _lh_scanr_LH_C_1_1))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec prod_lh _lh_prod_arg1_0 =
  (`Node((`LH_C('X', (`LH_N))), _lh_prod_arg1_0));;
let rec d_lh =
  (`Node((`LH_C('d', (`LH_N))), (`LH_N)));;
let rec zerO_lh _lh_zerO_arg1_0 =
  (match _lh_zerO_arg1_0 with
    | 0 -> 
      (`Node((`LH_C('0', (`LH_N))), (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec example5_lh _lh_example5_arg1_0 =
  (prod_lh (((scanr_lh plus__lh) (zerO_lh 0)) (`LH_C(a_lh, (`LH_C(b_lh, (`LH_C(c_lh, (`LH_C(d_lh, (`LH_N)))))))))));;
let rec example0_lh _lh_example0_arg1_0 =
  a_lh;;
let rec scanl_lh _lh_scanl_arg1_0 _lh_scanl_arg2_0 _lh_scanl_arg3_0 =
  (`LH_C(_lh_scanl_arg2_0, (let rec _lh_matchIdent_0 = _lh_scanl_arg3_0 in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_scanl_LH_C_0_0, _lh_scanl_LH_C_1_0) -> 
        (((scanl_lh _lh_scanl_arg1_0) ((_lh_scanl_arg1_0 _lh_scanl_arg2_0) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_0)
      | _ -> 
        (failwith "error")))));;
let rec example4_lh _lh_example4_arg1_0 =
  (prod_lh (((scanl_lh plus__lh) (zerO_lh 0)) (`LH_C(a_lh, (`LH_C(b_lh, (`LH_C(c_lh, (`LH_C(d_lh, (`LH_N)))))))))));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh t_4) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec id_lh _lh_id_arg1_0 =
  _lh_id_arg1_0;;
let rec newlyDefined_lh _lh_newlyDefined_arg1_0 _lh_newlyDefined_arg2_0 _lh_newlyDefined_arg3_0 _lh_newlyDefined_arg4_0 =
  (if (_lh_newlyDefined_arg1_0 = _lh_newlyDefined_arg4_0) then
    _lh_newlyDefined_arg2_0
  else
    (_lh_newlyDefined_arg3_0 _lh_newlyDefined_arg4_0));;
let rec head_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      h_2
    | `LH_N -> 
      (failwith "error"));;
let rec null_lh _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec foldr_lh f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_1 h_1) (((foldr_lh f_1) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec findCommon_lh _lh_findCommon_arg1_0 =
  (let rec sim_0 = (fun _lh_sim_arg1_0 _lh_sim_arg2_0 -> 
    (match _lh_sim_arg1_0 with
      | `LH_P3(_lh_sim_LH_P3_0_0, _lh_sim_LH_P3_1_0, _lh_sim_LH_P3_2_0) -> 
        (match _lh_sim_arg2_0 with
          | `LH_P2(_lh_sim_LH_P2_0_0, _lh_sim_LH_P2_1_0) -> 
            (let rec rcs_0 = ((map_lh _lh_sim_LH_P2_0_0) _lh_sim_LH_P3_2_0) in
              (let rec ms_0 = (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
                (match _lh_listcomp_fun_para_0 with
                  | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                    (match _lh_listcomp_fun_ls_h_0 with
                      | `LH_P3(_lh_sim_LH_P3_0_1, _lh_sim_LH_P3_1_1, _lh_sim_LH_P3_2_1) -> 
                        (if (_lh_sim_LH_P3_1_0 = _lh_sim_LH_P3_1_1) then
                          (if (_lh_sim_LH_P3_2_1 = rcs_0) then
                            (`LH_C(_lh_sim_LH_P3_0_1, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                          else
                            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
                        else
                          (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
                      | _ -> 
                        (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_0 _lh_sim_LH_P2_1_0)) in
                (if (null_lh ms_0) then
                  (`LH_P2(_lh_sim_LH_P2_0_0, ((mappend_lh (`LH_C((`LH_P3(_lh_sim_LH_P3_0_0, _lh_sim_LH_P3_1_0, rcs_0)), (`LH_N)))) _lh_sim_LH_P2_1_0)))
                else
                  (`LH_P2((((newlyDefined_lh _lh_sim_LH_P3_0_0) (head_lh ms_0)) _lh_sim_LH_P2_0_0), _lh_sim_LH_P2_1_0)))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))) in
    (let rec _lh_matchIdent_4 = (((foldr_lh sim_0) (`LH_P2(id_lh, (`LH_N)))) _lh_findCommon_arg1_0) in
      (match _lh_matchIdent_4 with
        | `LH_P2(_lh_findCommon_LH_P2_0_0, _lh_findCommon_LH_P2_1_0) -> 
          _lh_findCommon_LH_P2_1_0
        | _ -> 
          (failwith "error"))));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_5, t_5) -> 
      ((mappend_lh h_5) (concat_lh t_5))
    | `LH_N -> 
      (`LH_N));;
let rec ltGraph_lh _lh_ltGraph_arg1_0 =
  (match _lh_ltGraph_arg1_0 with
    | `Node(_lh_ltGraph_Node_0_0, _lh_ltGraph_Node_1_0) -> 
      (match _lh_ltGraph_Node_0_0 with
        | `LH_P2(_lh_ltGraph_LH_P2_0_0, _lh_ltGraph_LH_P2_1_0) -> 
          (let rec labelOf_0 = (fun _lh_labelOf_arg1_0 -> 
            (match _lh_labelOf_arg1_0 with
              | `Node(_lh_labelOf_Node_0_0, _lh_labelOf_Node_1_0) -> 
                (match _lh_labelOf_Node_0_0 with
                  | `LH_P2(_lh_labelOf_LH_P2_0_0, _lh_labelOf_LH_P2_1_0) -> 
                    _lh_labelOf_LH_P2_0_0
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))) in
            (`LH_C((`LH_P3(_lh_ltGraph_LH_P2_0_0, _lh_ltGraph_LH_P2_1_0, ((map_lh labelOf_0) _lh_ltGraph_Node_1_0))), (concat_lh ((map_lh ltGraph_lh) _lh_ltGraph_Node_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec retURN_lh _lh_retURN_arg1_0 s_2 =
  (`LH_P2(s_2, _lh_retURN_arg1_0));;
let rec bind_lh _lh_bind_arg1_0 _lh_bind_arg2_0 s_1 =
  (let rec _lh_matchIdent_1 = (_lh_bind_arg1_0 s_1) in
    (match _lh_matchIdent_1 with
      | `LH_P2(_lh_bind_LH_P2_0_0, _lh_bind_LH_P2_1_0) -> 
        ((_lh_bind_arg2_0 _lh_bind_LH_P2_1_0) _lh_bind_LH_P2_0_0)
      | _ -> 
        (failwith "error")));;
let rec mmapl_lh _lh_mmapl_arg1_0 _lh_mmapl_arg2_0 =
  (match _lh_mmapl_arg2_0 with
    | `LH_N -> 
      (retURN_lh (`LH_N))
    | `LH_C(_lh_mmapl_LH_C_0_0, _lh_mmapl_LH_C_1_0) -> 
      ((bind_lh (_lh_mmapl_arg1_0 _lh_mmapl_LH_C_0_0)) (fun b_1 -> 
        ((bind_lh ((mmapl_lh _lh_mmapl_arg1_0) _lh_mmapl_LH_C_1_0)) (fun bs_0 -> 
          (retURN_lh (`LH_C(b_1, bs_0)))))))
    | _ -> 
      (failwith "error"));;
let rec startingWith_lh _lh_startingWith_arg1_0 _lh_startingWith_arg2_0 =
  (let rec _lh_matchIdent_3 = (_lh_startingWith_arg1_0 _lh_startingWith_arg2_0) in
    (match _lh_matchIdent_3 with
      | `LH_P2(_lh_startingWith_LH_P2_0_0, _lh_startingWith_LH_P2_1_0) -> 
        _lh_startingWith_LH_P2_1_0
      | _ -> 
        (failwith "error")));;
let rec update_lh _lh_update_arg1_0 s_0 =
  (`LH_P2((_lh_update_arg1_0 s_0), s_0));;
let rec incr_lh _lh_incr_arg1_0 =
  (update_lh (fun x_0 -> 
    (1 + x_0)));;
let rec labelTree_lh _lh_labelTree_arg1_0 =
  (let rec label_0 = (fun _lh_label_arg1_0 -> 
    (match _lh_label_arg1_0 with
      | `Node(_lh_label_Node_0_0, _lh_label_Node_1_0) -> 
        ((bind_lh (incr_lh 0)) (fun n_1 -> 
          ((bind_lh ((mmapl_lh label_0) _lh_label_Node_1_0)) (fun ts_0 -> 
            (retURN_lh (`Node((`LH_P2(n_1, _lh_label_Node_0_0)), ts_0)))))))
      | _ -> 
        (failwith "error"))) in
    ((startingWith_lh (label_0 _lh_labelTree_arg1_0)) 0));;
let rec cse_lh _lh_cse_arg1_0 =
  (findCommon_lh (ltGraph_lh (labelTree_lh _lh_cse_arg1_0)));;
let rec example1_lh _lh_example1_arg1_0 =
  ((plus__lh a_lh) a_lh);;
let rec take_lh n_0 ls_3 =
  (if (n_0 > 0) then
    (match ls_3 with
      | `LH_C(h_3, t_3) -> 
        (`LH_C(h_3, ((take_lh (n_0 - 1)) t_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec testCse_nofib_lh _lh_testCse_nofib_arg1_0 =
  ((map_lh (fun i_1 -> 
    ((map_lh cse_lh) ((take_lh (i_1 mod 6)) (`LH_C((example0_lh 0), (`LH_C((example1_lh 0), (`LH_C((example2_lh 0), (`LH_C((example3_lh 0), (`LH_C((example4_lh 0), (`LH_C((example5_lh 0), (`LH_N))))))))))))))))) ((enumFromTo_lh 1) _lh_testCse_nofib_arg1_0));;
end;;

