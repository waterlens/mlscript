

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec a_lh__d9 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec b_lh__d6 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec prod_lh__d2 _lh_prod_arg1_0 =
  (`Node((`LH_C('X', (`LH_N))), _lh_prod_arg1_0));;
let rec scanr_lh__d1 _lh_scanr_arg1_0 _lh_scanr_arg2_0 _lh_scanr_arg3_0 =
  (match _lh_scanr_arg3_0 with
    | `LH_N -> 
      (`LH_C(_lh_scanr_arg2_0, (`LH_N)))
    | `LH_C(_lh_scanr_LH_C_0_0, _lh_scanr_LH_C_1_0) -> 
      (let rec _lh_matchIdent_5 = (((scanr_lh__d1 _lh_scanr_arg1_0) _lh_scanr_arg2_0) _lh_scanr_LH_C_1_0) in
        (match _lh_matchIdent_5 with
          | `LH_C(_lh_scanr_LH_C_0_1, _lh_scanr_LH_C_1_1) -> 
            (`LH_C(((_lh_scanr_arg1_0 _lh_scanr_LH_C_0_0) _lh_scanr_LH_C_0_1), (`LH_C(_lh_scanr_LH_C_0_1, _lh_scanr_LH_C_1_1))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec zerO_lh__d2 _lh_zerO_arg1_0 =
  (match _lh_zerO_arg1_0 with
    | 0 -> 
      (`Node((`LH_C('0', (`LH_N))), (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec d_lh__d2 =
  (`Node((`LH_C('d', (`LH_N))), (`LH_N)));;
let rec plus__lh__d7 _lh_plus__arg1_0 _lh_plus__arg2_0 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_0, (`LH_C(_lh_plus__arg2_0, (`LH_N)))))));;
let rec c_lh__d3 =
  (`Node((`LH_C('c', (`LH_N))), (`LH_N)));;
let rec example5_lh__d1 _lh_example5_arg1_0 =
  (prod_lh__d2 (((scanr_lh__d1 plus__lh__d7) (zerO_lh__d2 0)) (`LH_C(a_lh__d9, (`LH_C(b_lh__d6, (`LH_C(c_lh__d3, (`LH_C(d_lh__d2, (`LH_N)))))))))));;
let rec a_lh__d2 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a_lh__d1 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec plus__lh__d1 _lh_plus__arg1_6 _lh_plus__arg2_6 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_6, (`LH_C(_lh_plus__arg2_6, (`LH_N)))))));;
let rec example1_lh__d1 _lh_example1_arg1_0 =
  ((plus__lh__d1 a_lh__d2) a_lh__d1);;
let rec c_lh__d1 =
  (`Node((`LH_C('c', (`LH_N))), (`LH_N)));;
let rec a_lh__d5 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a_lh__d4 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec b_lh__d2 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec plus__lh__d3 _lh_plus__arg1_4 _lh_plus__arg2_4 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_4, (`LH_C(_lh_plus__arg2_4, (`LH_N)))))));;
let rec plus__lh__d2 _lh_plus__arg1_5 _lh_plus__arg2_5 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_5, (`LH_C(_lh_plus__arg2_5, (`LH_N)))))));;
let rec plus__lh__d4 _lh_plus__arg1_3 _lh_plus__arg2_3 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_3, (`LH_C(_lh_plus__arg2_3, (`LH_N)))))));;
let rec b_lh__d1 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec mult__lh__d1 _lh_mult__arg1_2 _lh_mult__arg2_2 =
  (`Node((`LH_C('*', (`LH_N))), (`LH_C(_lh_mult__arg1_2, (`LH_C(_lh_mult__arg2_2, (`LH_N)))))));;
let rec example3_lh__d1 _lh_example3_arg1_0 =
  ((plus__lh__d3 ((mult__lh__d1 ((plus__lh__d2 a_lh__d5) b_lh__d1)) c_lh__d1)) ((plus__lh__d4 a_lh__d4) b_lh__d2));;
let rec map_lh__d1 f_5 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C((f_5 h_1_0), ((map_lh__d1 f_5) t_1_0)))
    | `LH_N -> 
      (`LH_N));;
let rec a_lh__d3 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec example0_lh__d1 _lh_example0_arg1_0 =
  a_lh__d3;;
let rec mappend_lh__d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d1 t_5) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec foldr_lh__d1 f_3 i_0 ls_4 =
  (match ls_4 with
    | `LH_C(h_7, t_7) -> 
      ((f_3 h_7) (((foldr_lh__d1 f_3) i_0) t_7))
    | `LH_N -> 
      i_0);;
let rec map_lh__d3 f_2 ls_2 =
  (match ls_2 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_2 h_4), ((map_lh__d3 f_2) t_4)))
    | `LH_N -> 
      (`LH_N));;
let rec null_lh__d1 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec id_lh__d1 _lh_id_arg1_0 =
  _lh_id_arg1_0;;
let rec head_lh__d1 ls_3 =
  (match ls_3 with
    | `LH_C(h_6, t_6) -> 
      h_6
    | `LH_N -> 
      (failwith "error"));;
let rec newlyDefined_lh__d1 _lh_newlyDefined_arg1_0 _lh_newlyDefined_arg2_0 _lh_newlyDefined_arg3_0 _lh_newlyDefined_arg4_0 =
  (if (_lh_newlyDefined_arg1_0 = _lh_newlyDefined_arg4_0) then
    _lh_newlyDefined_arg2_0
  else
    (_lh_newlyDefined_arg3_0 _lh_newlyDefined_arg4_0));;
let rec findCommon_lh__d1 _lh_findCommon_arg1_0 =
  (let rec sim_0 = (fun _lh_sim_arg1_0 _lh_sim_arg2_0 -> 
    (match _lh_sim_arg1_0 with
      | `LH_P3(_lh_sim_LH_P3_0_0, _lh_sim_LH_P3_1_0, _lh_sim_LH_P3_2_0) -> 
        (match _lh_sim_arg2_0 with
          | `LH_P2(_lh_sim_LH_P2_0_0, _lh_sim_LH_P2_1_0) -> 
            (let rec rcs_0 = ((map_lh__d3 _lh_sim_LH_P2_0_0) _lh_sim_LH_P3_2_0) in
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
                (if (null_lh__d1 ms_0) then
                  (`LH_P2(_lh_sim_LH_P2_0_0, ((mappend_lh__d1 (`LH_C((`LH_P3(_lh_sim_LH_P3_0_0, _lh_sim_LH_P3_1_0, rcs_0)), (`LH_N)))) _lh_sim_LH_P2_1_0)))
                else
                  (`LH_P2((((newlyDefined_lh__d1 _lh_sim_LH_P3_0_0) (head_lh__d1 ms_0)) _lh_sim_LH_P2_0_0), _lh_sim_LH_P2_1_0)))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))) in
    (let rec _lh_matchIdent_7 = (((foldr_lh__d1 sim_0) (`LH_P2(id_lh__d1, (`LH_N)))) _lh_findCommon_arg1_0) in
      (match _lh_matchIdent_7 with
        | `LH_P2(_lh_findCommon_LH_P2_0_0, _lh_findCommon_LH_P2_1_0) -> 
          _lh_findCommon_LH_P2_1_0
        | _ -> 
          (failwith "error"))));;
let rec mappend_lh__d2 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d2 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_3, t_3) -> 
      ((mappend_lh__d2 h_3) (concat_lh__d1 t_3))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d4 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C((f_1 h_2), ((map_lh__d4 f_1) t_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d5 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_0 h_1), ((map_lh__d5 f_0) t_1)))
    | `LH_N -> 
      (`LH_N));;
let rec ltGraph_lh__d1 _lh_ltGraph_arg1_0 =
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
            (`LH_C((`LH_P3(_lh_ltGraph_LH_P2_0_0, _lh_ltGraph_LH_P2_1_0, ((map_lh__d4 labelOf_0) _lh_ltGraph_Node_1_0))), (concat_lh__d1 ((map_lh__d5 ltGraph_lh__d1) _lh_ltGraph_Node_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec retURN_lh__d2 _lh_retURN_arg1_1 s_3 =
  (`LH_P2(s_3, _lh_retURN_arg1_1));;
let rec bind_lh__d3 _lh_bind_arg1_1 _lh_bind_arg2_1 s_1 =
  (let rec _lh_matchIdent_1 = (_lh_bind_arg1_1 s_1) in
    (match _lh_matchIdent_1 with
      | `LH_P2(_lh_bind_LH_P2_0_1, _lh_bind_LH_P2_1_1) -> 
        ((_lh_bind_arg2_1 _lh_bind_LH_P2_1_1) _lh_bind_LH_P2_0_1)
      | _ -> 
        (failwith "error")));;
let rec retURN_lh__d3 _lh_retURN_arg1_0 s_2 =
  (`LH_P2(s_2, _lh_retURN_arg1_0));;
let rec bind_lh__d4 _lh_bind_arg1_0 _lh_bind_arg2_0 s_0 =
  (let rec _lh_matchIdent_0 = (_lh_bind_arg1_0 s_0) in
    (match _lh_matchIdent_0 with
      | `LH_P2(_lh_bind_LH_P2_0_0, _lh_bind_LH_P2_1_0) -> 
        ((_lh_bind_arg2_0 _lh_bind_LH_P2_1_0) _lh_bind_LH_P2_0_0)
      | _ -> 
        (failwith "error")));;
let rec mmapl_lh__d1 _lh_mmapl_arg1_0 _lh_mmapl_arg2_0 =
  (match _lh_mmapl_arg2_0 with
    | `LH_N -> 
      (retURN_lh__d2 (`LH_N))
    | `LH_C(_lh_mmapl_LH_C_0_0, _lh_mmapl_LH_C_1_0) -> 
      ((bind_lh__d3 (_lh_mmapl_arg1_0 _lh_mmapl_LH_C_0_0)) (fun b_0 -> 
        ((bind_lh__d4 ((mmapl_lh__d1 _lh_mmapl_arg1_0) _lh_mmapl_LH_C_1_0)) (fun bs_0 -> 
          (retURN_lh__d3 (`LH_C(b_0, bs_0)))))))
    | _ -> 
      (failwith "error"));;
let rec retURN_lh__d1 _lh_retURN_arg1_2 s_6 =
  (`LH_P2(s_6, _lh_retURN_arg1_2));;
let rec startingWith_lh__d1 _lh_startingWith_arg1_0 _lh_startingWith_arg2_0 =
  (let rec _lh_matchIdent_3 = (_lh_startingWith_arg1_0 _lh_startingWith_arg2_0) in
    (match _lh_matchIdent_3 with
      | `LH_P2(_lh_startingWith_LH_P2_0_0, _lh_startingWith_LH_P2_1_0) -> 
        _lh_startingWith_LH_P2_1_0
      | _ -> 
        (failwith "error")));;
let rec bind_lh__d1 _lh_bind_arg1_3 _lh_bind_arg2_3 s_7 =
  (let rec _lh_matchIdent_4 = (_lh_bind_arg1_3 s_7) in
    (match _lh_matchIdent_4 with
      | `LH_P2(_lh_bind_LH_P2_0_3, _lh_bind_LH_P2_1_3) -> 
        ((_lh_bind_arg2_3 _lh_bind_LH_P2_1_3) _lh_bind_LH_P2_0_3)
      | _ -> 
        (failwith "error")));;
let rec update_lh__d1 _lh_update_arg1_0 s_4 =
  (`LH_P2((_lh_update_arg1_0 s_4), s_4));;
let rec incr_lh__d1 _lh_incr_arg1_0 =
  (update_lh__d1 (fun x_0 -> 
    (1 + x_0)));;
let rec bind_lh__d2 _lh_bind_arg1_2 _lh_bind_arg2_2 s_5 =
  (let rec _lh_matchIdent_2 = (_lh_bind_arg1_2 s_5) in
    (match _lh_matchIdent_2 with
      | `LH_P2(_lh_bind_LH_P2_0_2, _lh_bind_LH_P2_1_2) -> 
        ((_lh_bind_arg2_2 _lh_bind_LH_P2_1_2) _lh_bind_LH_P2_0_2)
      | _ -> 
        (failwith "error")));;
let rec labelTree_lh__d1 _lh_labelTree_arg1_0 =
  (let rec label_0 = (fun _lh_label_arg1_0 -> 
    (match _lh_label_arg1_0 with
      | `Node(_lh_label_Node_0_0, _lh_label_Node_1_0) -> 
        ((bind_lh__d2 (incr_lh__d1 0)) (fun n_0 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_0) _lh_label_Node_1_0)) (fun ts_0 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_0, _lh_label_Node_0_0)), ts_0)))))))
      | _ -> 
        (failwith "error"))) in
    ((startingWith_lh__d1 (label_0 _lh_labelTree_arg1_0)) 0));;
let rec cse_lh__d1 _lh_cse_arg1_0 =
  (findCommon_lh__d1 (ltGraph_lh__d1 (labelTree_lh__d1 _lh_cse_arg1_0)));;
let rec take_lh__d1 n_1 ls_6 =
  (if (n_1 > 0) then
    (match ls_6 with
      | `LH_C(h_9, t_9) -> 
        (`LH_C(h_9, ((take_lh__d1 (n_1 - 1)) t_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec map_lh__d2 f_4 ls_5 =
  (match ls_5 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C((f_4 h_8), ((map_lh__d2 f_4) t_8)))
    | `LH_N -> 
      (`LH_N));;
let rec c_lh__d2 =
  (`Node((`LH_C('c', (`LH_N))), (`LH_N)));;
let rec prod_lh__d1 _lh_prod_arg1_1 =
  (`Node((`LH_C('X', (`LH_N))), _lh_prod_arg1_1));;
let rec zerO_lh__d1 _lh_zerO_arg1_1 =
  (match _lh_zerO_arg1_1 with
    | 0 -> 
      (`Node((`LH_C('0', (`LH_N))), (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec b_lh__d3 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec plus__lh__d5 _lh_plus__arg1_2 _lh_plus__arg2_2 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_2, (`LH_C(_lh_plus__arg2_2, (`LH_N)))))));;
let rec d_lh__d1 =
  (`Node((`LH_C('d', (`LH_N))), (`LH_N)));;
let rec a_lh__d6 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec scanl_lh__d1 _lh_scanl_arg1_0 _lh_scanl_arg2_0 _lh_scanl_arg3_0 =
  (`LH_C(_lh_scanl_arg2_0, (let rec _lh_matchIdent_6 = _lh_scanl_arg3_0 in
    (match _lh_matchIdent_6 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_scanl_LH_C_0_0, _lh_scanl_LH_C_1_0) -> 
        (((scanl_lh__d1 _lh_scanl_arg1_0) ((_lh_scanl_arg1_0 _lh_scanl_arg2_0) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_0)
      | _ -> 
        (failwith "error")))));;
let rec example4_lh__d1 _lh_example4_arg1_0 =
  (prod_lh__d1 (((scanl_lh__d1 plus__lh__d5) (zerO_lh__d1 0)) (`LH_C(a_lh__d6, (`LH_C(b_lh__d3, (`LH_C(c_lh__d2, (`LH_C(d_lh__d1, (`LH_N)))))))))));;
let rec plus__lh__d6 _lh_plus__arg1_1 _lh_plus__arg2_1 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_1, (`LH_C(_lh_plus__arg2_1, (`LH_N)))))));;
let rec a_lh__d8 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec b_lh__d4 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec a_lh__d7 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec mult__lh__d2 _lh_mult__arg1_1 _lh_mult__arg2_1 =
  (`Node((`LH_C('*', (`LH_N))), (`LH_C(_lh_mult__arg1_1, (`LH_C(_lh_mult__arg2_1, (`LH_N)))))));;
let rec b_lh__d5 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec mult__lh__d3 _lh_mult__arg1_0 _lh_mult__arg2_0 =
  (`Node((`LH_C('*', (`LH_N))), (`LH_C(_lh_mult__arg1_0, (`LH_C(_lh_mult__arg2_0, (`LH_N)))))));;
let rec example2_lh__d1 _lh_example2_arg1_0 =
  ((plus__lh__d6 ((mult__lh__d2 a_lh__d7) b_lh__d4)) ((mult__lh__d3 a_lh__d8) b_lh__d5));;
let rec enumFromTo_lh__d1 a_0 b_1 =
  (if (a_0 <= b_1) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_1)))
  else
    (`LH_N));;
let rec testCse_nofib_lh__d1 _lh_testCse_nofib_arg1_0 =
  ((map_lh__d2 (fun i_1 -> 
    ((map_lh__d1 cse_lh__d1) ((take_lh__d1 (i_1 mod 6)) (`LH_C((example0_lh__d1 0), (`LH_C((example1_lh__d1 0), (`LH_C((example2_lh__d1 0), (`LH_C((example3_lh__d1 0), (`LH_C((example4_lh__d1 0), (`LH_C((example5_lh__d1 0), (`LH_N))))))))))))))))) ((enumFromTo_lh__d1 1) _lh_testCse_nofib_arg1_0));;
end;;

