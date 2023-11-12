
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec a__d0 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a__d1 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a__d2 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a__d3 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a__d4 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a__d5 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a__d6 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a__d7 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec a__d8 =
  (`Node((`LH_C('a', (`LH_N))), (`LH_N)));;
let rec b__d0 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec b__d1 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec b__d2 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec b__d3 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec b__d4 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec b__d5 =
  (`Node((`LH_C('b', (`LH_N))), (`LH_N)));;
let rec bind__d0 _lh_bind_arg1_1 _lh_bind_arg2_1 s_1_1 =
  (let rec _lh_matchIdent_1_1 = (_lh_bind_arg1_1 s_1_1) in
    (match _lh_matchIdent_1_1 with
      | `LH_P2(_lh_bind_LH_P2_0_1, _lh_bind_LH_P2_1_1) -> 
        ((_lh_bind_arg2_1 _lh_bind_LH_P2_1_1) _lh_bind_LH_P2_0_1)
      | _ -> 
        (failwith "error")));;
let rec bind__d1 _lh_bind_arg1_2 _lh_bind_arg2_2 s_1_2 =
  (let rec _lh_matchIdent_1_2 = (_lh_bind_arg1_2 s_1_2) in
    (match _lh_matchIdent_1_2 with
      | `LH_P2(_lh_bind_LH_P2_0_2, _lh_bind_LH_P2_1_2) -> 
        ((_lh_bind_arg2_2 _lh_bind_LH_P2_1_2) _lh_bind_LH_P2_0_2)
      | _ -> 
        (failwith "error")));;
let rec bind__d2 _lh_bind_arg1_4 _lh_bind_arg2_4 s_1_4 =
  (let rec _lh_matchIdent_1_5 = (_lh_bind_arg1_4 s_1_4) in
    (match _lh_matchIdent_1_5 with
      | `LH_P2(_lh_bind_LH_P2_0_4, _lh_bind_LH_P2_1_4) -> 
        ((_lh_bind_arg2_4 _lh_bind_LH_P2_1_4) _lh_bind_LH_P2_0_4)
      | _ -> 
        (failwith "error")));;
let rec bind__d3 _lh_bind_arg1_3 _lh_bind_arg2_3 s_1_3 =
  (let rec _lh_matchIdent_1_4 = (_lh_bind_arg1_3 s_1_3) in
    (match _lh_matchIdent_1_4 with
      | `LH_P2(_lh_bind_LH_P2_0_3, _lh_bind_LH_P2_1_3) -> 
        ((_lh_bind_arg2_3 _lh_bind_LH_P2_1_3) _lh_bind_LH_P2_0_3)
      | _ -> 
        (failwith "error")));;
let rec c__d0 =
  (`Node((`LH_C('c', (`LH_N))), (`LH_N)));;
let rec c__d1 =
  (`Node((`LH_C('c', (`LH_N))), (`LH_N)));;
let rec c__d2 =
  (`Node((`LH_C('c', (`LH_N))), (`LH_N)));;
let rec d__d0 =
  (`Node((`LH_C('d', (`LH_N))), (`LH_N)));;
let rec d__d1 =
  (`Node((`LH_C('d', (`LH_N))), (`LH_N)));;
let rec enumFromTo__d0 a_6 b_5 =
  (if (a_6 <= b_5) then
    (`LH_C(a_6, ((enumFromTo__d0 (a_6 + 1)) b_5)))
  else
    (`LH_N));;
let rec foldr__d0 f_1_6 i_5 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_8, t_3_0) -> 
      ((f_1_6 h_2_8) (((foldr__d0 f_1_6) i_5) t_3_0))
    | `LH_N -> 
      i_5);;
let rec head__d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_3, t_2_5) -> 
      h_2_3
    | `LH_N -> 
      (failwith "error"));;
let rec id__d0 _lh_id_arg1_1 =
  _lh_id_arg1_1;;
let rec map__d0 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_2 h_2_0), ((map__d0 f_1_2) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_7 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C((f_1_7 h_3_0), ((map__d1 f_1_7) t_3_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C((f_1_3 h_2_4), ((map__d2 f_1_3) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_5 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C((f_1_5 h_2_6), ((map__d3 f_1_5) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_4 h_2_5), ((map__d4 f_1_4) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_0 ys_1_1 =
  (match xs_1_0 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend__d0 t_2_9) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1 xs_9 ys_1_0 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d1 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mult___d0 _lh_mult__arg1_1 _lh_mult__arg2_1 =
  (`Node((`LH_C('*', (`LH_N))), (`LH_C(_lh_mult__arg1_1, (`LH_C(_lh_mult__arg2_1, (`LH_N)))))));;
let rec mult___d1 _lh_mult__arg1_3 _lh_mult__arg2_3 =
  (`Node((`LH_C('*', (`LH_N))), (`LH_C(_lh_mult__arg1_3, (`LH_C(_lh_mult__arg2_3, (`LH_N)))))));;
let rec mult___d2 _lh_mult__arg1_2 _lh_mult__arg2_2 =
  (`Node((`LH_C('*', (`LH_N))), (`LH_C(_lh_mult__arg1_2, (`LH_C(_lh_mult__arg2_2, (`LH_N)))))));;
let rec newlyDefined__d0 _lh_newlyDefined_arg1_1 _lh_newlyDefined_arg2_1 _lh_newlyDefined_arg3_1 _lh_newlyDefined_arg4_1 =
  (if (_lh_newlyDefined_arg1_1 = _lh_newlyDefined_arg4_1) then
    _lh_newlyDefined_arg2_1
  else
    (_lh_newlyDefined_arg3_1 _lh_newlyDefined_arg4_1));;
let rec null__d0 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec plus___d0 _lh_plus__arg1_4 _lh_plus__arg2_4 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_4, (`LH_C(_lh_plus__arg2_4, (`LH_N)))))));;
let rec plus___d1 _lh_plus__arg1_5 _lh_plus__arg2_5 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_5, (`LH_C(_lh_plus__arg2_5, (`LH_N)))))));;
let rec plus___d2 _lh_plus__arg1_6 _lh_plus__arg2_6 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_6, (`LH_C(_lh_plus__arg2_6, (`LH_N)))))));;
let rec plus___d3 _lh_plus__arg1_1 _lh_plus__arg2_1 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_1, (`LH_C(_lh_plus__arg2_1, (`LH_N)))))));;
let rec plus___d4 _lh_plus__arg1_7 _lh_plus__arg2_7 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_7, (`LH_C(_lh_plus__arg2_7, (`LH_N)))))));;
let rec plus___d5 _lh_plus__arg1_3 _lh_plus__arg2_3 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_3, (`LH_C(_lh_plus__arg2_3, (`LH_N)))))));;
let rec plus___d6 _lh_plus__arg1_2 _lh_plus__arg2_2 =
  (`Node((`LH_C('+', (`LH_N))), (`LH_C(_lh_plus__arg1_2, (`LH_C(_lh_plus__arg2_2, (`LH_N)))))));;
let rec prod__d0 _lh_prod_arg1_1 =
  (`Node((`LH_C('X', (`LH_N))), _lh_prod_arg1_1));;
let rec prod__d1 _lh_prod_arg1_2 =
  (`Node((`LH_C('X', (`LH_N))), _lh_prod_arg1_2));;
let rec retURN__d0 _lh_retURN_arg1_2 s_9 =
  (`LH_P2(s_9, _lh_retURN_arg1_2));;
let rec retURN__d1 _lh_retURN_arg1_3 s_1_5 =
  (`LH_P2(s_1_5, _lh_retURN_arg1_3));;
let rec retURN__d2 _lh_retURN_arg1_1 s_8 =
  (`LH_P2(s_8, _lh_retURN_arg1_1));;
let rec scanl__d0 _lh_scanl_arg1_1 _lh_scanl_arg2_1 _lh_scanl_arg3_1 =
  (`LH_C(_lh_scanl_arg2_1, (let rec _lh_matchIdent_1_3 = _lh_scanl_arg3_1 in
    (match _lh_matchIdent_1_3 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_scanl_LH_C_0_1, _lh_scanl_LH_C_1_1) -> 
        (((scanl__d0 _lh_scanl_arg1_1) ((_lh_scanl_arg1_1 _lh_scanl_arg2_1) _lh_scanl_LH_C_0_1)) _lh_scanl_LH_C_1_1)
      | _ -> 
        (failwith "error")))));;
let rec scanr__d0 _lh_scanr_arg1_1 _lh_scanr_arg2_1 _lh_scanr_arg3_1 =
  (match _lh_scanr_arg3_1 with
    | `LH_N -> 
      (`LH_C(_lh_scanr_arg2_1, (`LH_N)))
    | `LH_C(_lh_scanr_LH_C_0_2, _lh_scanr_LH_C_1_2) -> 
      (let rec _lh_matchIdent_1_0 = (((scanr__d0 _lh_scanr_arg1_1) _lh_scanr_arg2_1) _lh_scanr_LH_C_1_2) in
        (match _lh_matchIdent_1_0 with
          | `LH_C(_lh_scanr_LH_C_0_3, _lh_scanr_LH_C_1_3) -> 
            (`LH_C(((_lh_scanr_arg1_1 _lh_scanr_LH_C_0_2) _lh_scanr_LH_C_0_3), (`LH_C(_lh_scanr_LH_C_0_3, _lh_scanr_LH_C_1_3))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec startingWith__d0 _lh_startingWith_arg1_1 _lh_startingWith_arg2_1 =
  (let rec _lh_matchIdent_1_6 = (_lh_startingWith_arg1_1 _lh_startingWith_arg2_1) in
    (match _lh_matchIdent_1_6 with
      | `LH_P2(_lh_startingWith_LH_P2_0_1, _lh_startingWith_LH_P2_1_1) -> 
        _lh_startingWith_LH_P2_1_1
      | _ -> 
        (failwith "error")));;
let rec take__d0 n_6 ls_2_5 =
  (if (n_6 > 0) then
    (match ls_2_5 with
      | `LH_C(h_2_9, t_3_1) -> 
        (`LH_C(h_2_9, ((take__d0 (n_6 - 1)) t_3_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec update__d0 _lh_update_arg1_1 s_1_0 =
  (`LH_P2((_lh_update_arg1_1 s_1_0), s_1_0));;
let rec zerO__d0 _lh_zerO_arg1_1 =
  (match _lh_zerO_arg1_1 with
    | 0 -> 
      (`Node((`LH_C('0', (`LH_N))), (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec zerO__d1 _lh_zerO_arg1_2 =
  (match _lh_zerO_arg1_2 with
    | 0 -> 
      (`Node((`LH_C('0', (`LH_N))), (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      ((mappend__d1 h_2_2) (concat__d0 t_2_4))
    | `LH_N -> 
      (`LH_N))
and cse__d0 _lh_cse_arg1_1 =
  (findCommon__d0 (ltGraph__d0 (labelTree__d0 _lh_cse_arg1_1)))
and example0__d0 _lh_example0_arg1_1 =
  a__d0
and example1__d0 _lh_example1_arg1_1 =
  ((plus___d0 a__d1) a__d2)
and example2__d0 _lh_example2_arg1_1 =
  ((plus___d1 ((mult___d0 a__d3) b__d0)) ((mult___d1 a__d4) b__d1))
and example3__d0 _lh_example3_arg1_1 =
  ((plus___d2 ((mult___d2 ((plus___d3 a__d5) b__d2)) c__d0)) ((plus___d4 a__d6) b__d3))
and example4__d0 _lh_example4_arg1_1 =
  (prod__d0 (((scanl__d0 plus___d5) (zerO__d0 0)) (`LH_C(a__d7, (`LH_C(b__d4, (`LH_C(c__d1, (`LH_C(d__d0, (`LH_N)))))))))))
and example5__d0 _lh_example5_arg1_1 =
  (prod__d1 (((scanr__d0 plus___d6) (zerO__d1 0)) (`LH_C(a__d8, (`LH_C(b__d5, (`LH_C(c__d2, (`LH_C(d__d1, (`LH_N)))))))))))
and findCommon__d0 _lh_findCommon_arg1_1 =
  (let rec sim_1 = (fun _lh_sim_arg1_1 _lh_sim_arg2_1 -> 
    (match _lh_sim_arg1_1 with
      | `LH_P3(_lh_sim_LH_P3_0_2, _lh_sim_LH_P3_1_2, _lh_sim_LH_P3_2_2) -> 
        (match _lh_sim_arg2_1 with
          | `LH_P2(_lh_sim_LH_P2_0_1, _lh_sim_LH_P2_1_1) -> 
            (let rec rcs_1 = ((map__d0 _lh_sim_LH_P2_0_1) _lh_sim_LH_P3_2_2) in
              (let rec ms_1 = (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                (match _lh_listcomp_fun_para_1 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                    (match _lh_listcomp_fun_ls_h_1 with
                      | `LH_P3(_lh_sim_LH_P3_0_3, _lh_sim_LH_P3_1_3, _lh_sim_LH_P3_2_3) -> 
                        (if (_lh_sim_LH_P3_1_2 = _lh_sim_LH_P3_1_3) then
                          (if (_lh_sim_LH_P3_2_3 = rcs_1) then
                            (`LH_C(_lh_sim_LH_P3_0_3, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                          else
                            (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                        else
                          (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                      | _ -> 
                        (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_1 _lh_sim_LH_P2_1_1)) in
                (if (null__d0 ms_1) then
                  (`LH_P2(_lh_sim_LH_P2_0_1, ((mappend__d0 (`LH_C((`LH_P3(_lh_sim_LH_P3_0_2, _lh_sim_LH_P3_1_2, rcs_1)), (`LH_N)))) _lh_sim_LH_P2_1_1)))
                else
                  (`LH_P2((((newlyDefined__d0 _lh_sim_LH_P3_0_2) (head__d0 ms_1)) _lh_sim_LH_P2_0_1), _lh_sim_LH_P2_1_1)))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))) in
    (let rec _lh_matchIdent_9 = (((foldr__d0 sim_1) (`LH_P2(id__d0, (`LH_N)))) _lh_findCommon_arg1_1) in
      (match _lh_matchIdent_9 with
        | `LH_P2(_lh_findCommon_LH_P2_0_1, _lh_findCommon_LH_P2_1_1) -> 
          _lh_findCommon_LH_P2_1_1
        | _ -> 
          (failwith "error"))))
and incr__d0 _lh_incr_arg1_1 =
  (update__d0 (fun x_3 -> 
    (1 + x_3)))
and labelTree__d0 _lh_labelTree_arg1_1 =
  (let rec label_1 = (fun _lh_label_arg1_1 -> 
    (match _lh_label_arg1_1 with
      | `Node(_lh_label_Node_0_1, _lh_label_Node_1_1) -> 
        ((bind__d0 (incr__d0 0)) (fun n_5 -> 
          ((bind__d1 ((mmapl__d0 label_1) _lh_label_Node_1_1)) (fun ts_2 -> 
            (retURN__d2 (`Node((`LH_P2(n_5, _lh_label_Node_0_1)), ts_2)))))))
      | _ -> 
        (failwith "error"))) in
    ((startingWith__d0 (label_1 _lh_labelTree_arg1_1)) 0))
and ltGraph__d0 _lh_ltGraph_arg1_1 =
  (match _lh_ltGraph_arg1_1 with
    | `Node(_lh_ltGraph_Node_0_1, _lh_ltGraph_Node_1_1) -> 
      (match _lh_ltGraph_Node_0_1 with
        | `LH_P2(_lh_ltGraph_LH_P2_0_1, _lh_ltGraph_LH_P2_1_1) -> 
          (let rec labelOf_1 = (fun _lh_labelOf_arg1_1 -> 
            (match _lh_labelOf_arg1_1 with
              | `Node(_lh_labelOf_Node_0_1, _lh_labelOf_Node_1_1) -> 
                (match _lh_labelOf_Node_0_1 with
                  | `LH_P2(_lh_labelOf_LH_P2_0_1, _lh_labelOf_LH_P2_1_1) -> 
                    _lh_labelOf_LH_P2_0_1
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))) in
            (`LH_C((`LH_P3(_lh_ltGraph_LH_P2_0_1, _lh_ltGraph_LH_P2_1_1, ((map__d1 labelOf_1) _lh_ltGraph_Node_1_1))), (concat__d0 ((map__d2 ltGraph__d0) _lh_ltGraph_Node_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and mmapl__d0 _lh_mmapl_arg1_1 _lh_mmapl_arg2_1 =
  (match _lh_mmapl_arg2_1 with
    | `LH_N -> 
      (retURN__d0 (`LH_N))
    | `LH_C(_lh_mmapl_LH_C_0_1, _lh_mmapl_LH_C_1_1) -> 
      ((bind__d2 (_lh_mmapl_arg1_1 _lh_mmapl_LH_C_0_1)) (fun b_4 -> 
        ((bind__d3 ((mmapl__d0 _lh_mmapl_arg1_1) _lh_mmapl_LH_C_1_1)) (fun bs_1 -> 
          (retURN__d1 (`LH_C(b_4, bs_1)))))))
    | _ -> 
      (failwith "error"))
and testCse_nofib__d0 _lh_testCse_nofib_arg1_1 =
  ((map__d3 (fun i_4 -> 
    ((map__d4 cse__d0) ((take__d0 (i_4 mod 6)) (`LH_C((example0__d0 0), (`LH_C((example1__d0 0), (`LH_C((example2__d0 0), (`LH_C((example3__d0 0), (`LH_C((example4__d0 0), (`LH_C((example5__d0 0), (`LH_N))))))))))))))))) ((enumFromTo__d0 1) _lh_testCse_nofib_arg1_1));;
end;;

