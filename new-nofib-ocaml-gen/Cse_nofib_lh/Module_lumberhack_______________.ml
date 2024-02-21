

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec retURN_lh__d2 _lh_retURN_arg1_0 s_0 =
  (`LH_P2(s_0, _lh_retURN_arg1_0));;
let rec bind_lh__d3 _lh_bind_arg1_2 _lh_bind_arg2_2 s_4 =
  (let rec _lh_matchIdent_7 = (_lh_bind_arg1_2 s_4) in
    (match _lh_matchIdent_7 with
      | `LH_P2(_lh_bind_LH_P2_0_1, _lh_bind_LH_P2_1_1) -> 
        ((_lh_bind_arg2_2 _lh_bind_LH_P2_1_1) _lh_bind_LH_P2_0_1)
      | _ -> 
        (failwith "error")));;
let rec retURN_lh__d3 _lh_retURN_arg1_2 s_5 =
  (`LH_P2(s_5, _lh_retURN_arg1_2));;
let rec bind_lh__d4 _lh_bind_arg1_0 _lh_bind_arg2_0 s_2 =
  (let rec _lh_matchIdent_4 = (_lh_bind_arg1_0 s_2) in
    (match _lh_matchIdent_4 with
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
let rec retURN_lh__d1 _lh_retURN_arg1_1 s_1 =
  (`LH_P2(s_1, _lh_retURN_arg1_1));;
let rec bind_lh__d1 _lh_bind_arg1_3 _lh_bind_arg2_4 s_7 =
  (let rec _lh_matchIdent_9 = (_lh_bind_arg1_3 s_7) in
    (match _lh_matchIdent_9 with
      | `LH_P2(_lh_bind_LH_P2_0_3, _lh_bind_LH_P2_1_3) -> 
        ((_lh_bind_arg2_4 _lh_bind_LH_P2_1_3) _lh_bind_LH_P2_0_3)
      | _ -> 
        (failwith "error")));;
let rec update_lh__d1 _lh_update_arg1_0 s_6 =
  (let rec _lh_bind_LH_P2_1_2 = s_6 in
    (let rec _lh_bind_LH_P2_0_2 = (_lh_update_arg1_0 s_6) in
      (fun _lh_bind_arg2_3 -> 
        ((_lh_bind_arg2_3 _lh_bind_LH_P2_1_2) _lh_bind_LH_P2_0_2))));;
let rec incr_lh__d1 =
  (update_lh__d1 (fun x_0 -> 
    (1 + x_0)));;
let rec bind_lh__d2 _lh_bind_arg1_1 _lh_bind_arg2_1 s_3 =
  (let rec _lh_matchIdent_5 = (_lh_bind_arg1_1 s_3) in
    (_lh_matchIdent_5 _lh_bind_arg2_1));;
let rec a_lh__d9 =
  (let rec _lh_label_Node_1_2 = (`LH_N) in
    (let rec _lh_label_Node_0_2 = (`LH_C('a', (`LH_N))) in
      (fun label_2 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2) _lh_label_Node_1_2)) (fun ts_2 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2, _lh_label_Node_0_2)), ts_2))))))))));;
let rec b_lh__d6 =
  (let rec _lh_label_Node_1_1_5 = (`LH_N) in
    (let rec _lh_label_Node_0_1_5 = (`LH_C('b', (`LH_N))) in
      (fun label_1_6 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1_6 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1_6) _lh_label_Node_1_1_5)) (fun ts_1_5 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1_6, _lh_label_Node_0_1_5)), ts_1_5))))))))));;
let rec prod_lh__d2 _lh_prod_arg1_1 =
  (let rec _lh_label_Node_1_2_2 = _lh_prod_arg1_1 in
    (let rec _lh_label_Node_0_2_2 = (`LH_C('X', (`LH_N))) in
      (fun label_2_3 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_3 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_3) _lh_label_Node_1_2_2)) (fun ts_2_2 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_3, _lh_label_Node_0_2_2)), ts_2_2))))))))));;
let rec scanr_lh__d1 _lh_scanr_arg1_5 _lh_scanr_arg2_5 _lh_scanr_arg3_0 =
  ((_lh_scanr_arg3_0 _lh_scanr_arg2_5) _lh_scanr_arg1_5);;
let rec zerO_lh__d2 =
  (let rec _lh_label_Node_1_2_7 = (`LH_N) in
    (let rec _lh_label_Node_0_2_7 = (`LH_C('0', (`LH_N))) in
      (fun label_2_8 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_8 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_8) _lh_label_Node_1_2_7)) (fun ts_2_7 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_8, _lh_label_Node_0_2_7)), ts_2_7))))))))));;
let rec d_lh__d2 =
  (let rec _lh_label_Node_1_2_5 = (`LH_N) in
    (let rec _lh_label_Node_0_2_5 = (`LH_C('d', (`LH_N))) in
      (fun label_2_6 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_6 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_6) _lh_label_Node_1_2_5)) (fun ts_2_5 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_6, _lh_label_Node_0_2_5)), ts_2_5))))))))));;
let rec plus__lh__d7 _lh_plus__arg1_6 _lh_plus__arg2_6 =
  (let rec _lh_label_Node_1_3_2 = (`LH_C(_lh_plus__arg1_6, (`LH_C(_lh_plus__arg2_6, (`LH_N))))) in
    (let rec _lh_label_Node_0_3_2 = (`LH_C('+', (`LH_N))) in
      (fun label_3_3 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_4_0 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_3_3) _lh_label_Node_1_3_2)) (fun ts_3_2 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_4_0, _lh_label_Node_0_3_2)), ts_3_2))))))))));;
let rec c_lh__d3 =
  (let rec _lh_label_Node_1_3_3 = (`LH_N) in
    (let rec _lh_label_Node_0_3_3 = (`LH_C('c', (`LH_N))) in
      (fun label_3_4 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_4_1 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_3_4) _lh_label_Node_1_3_3)) (fun ts_3_3 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_4_1, _lh_label_Node_0_3_3)), ts_3_3))))))))));;
let rec example5_lh__d1 =
  (prod_lh__d2 (((scanr_lh__d1 plus__lh__d7) zerO_lh__d2) (let rec _lh_scanr_LH_C_1_0 = (let rec _lh_scanr_LH_C_1_1 = (let rec _lh_scanr_LH_C_1_2 = (let rec _lh_scanr_LH_C_1_3 = (fun _lh_scanr_arg2_0 _lh_scanr_arg1_0 -> 
    (`LH_C(_lh_scanr_arg2_0, (`LH_N)))) in
    (let rec _lh_scanr_LH_C_0_0 = d_lh__d2 in
      (fun _lh_scanr_arg2_1 _lh_scanr_arg1_1 -> 
        (let rec _lh_matchIdent_0 = (((scanr_lh__d1 _lh_scanr_arg1_1) _lh_scanr_arg2_1) _lh_scanr_LH_C_1_3) in
          (match _lh_matchIdent_0 with
            | `LH_C(_lh_scanr_LH_C_0_1, _lh_scanr_LH_C_1_4) -> 
              (`LH_C(((_lh_scanr_arg1_1 _lh_scanr_LH_C_0_0) _lh_scanr_LH_C_0_1), (`LH_C(_lh_scanr_LH_C_0_1, _lh_scanr_LH_C_1_4))))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_scanr_LH_C_0_2 = c_lh__d3 in
      (fun _lh_scanr_arg2_2 _lh_scanr_arg1_2 -> 
        (let rec _lh_matchIdent_1 = (((scanr_lh__d1 _lh_scanr_arg1_2) _lh_scanr_arg2_2) _lh_scanr_LH_C_1_2) in
          (match _lh_matchIdent_1 with
            | `LH_C(_lh_scanr_LH_C_0_3, _lh_scanr_LH_C_1_5) -> 
              (`LH_C(((_lh_scanr_arg1_2 _lh_scanr_LH_C_0_2) _lh_scanr_LH_C_0_3), (`LH_C(_lh_scanr_LH_C_0_3, _lh_scanr_LH_C_1_5))))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_scanr_LH_C_0_4 = b_lh__d6 in
      (fun _lh_scanr_arg2_3 _lh_scanr_arg1_3 -> 
        (let rec _lh_matchIdent_2 = (((scanr_lh__d1 _lh_scanr_arg1_3) _lh_scanr_arg2_3) _lh_scanr_LH_C_1_1) in
          (match _lh_matchIdent_2 with
            | `LH_C(_lh_scanr_LH_C_0_5, _lh_scanr_LH_C_1_6) -> 
              (`LH_C(((_lh_scanr_arg1_3 _lh_scanr_LH_C_0_4) _lh_scanr_LH_C_0_5), (`LH_C(_lh_scanr_LH_C_0_5, _lh_scanr_LH_C_1_6))))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_scanr_LH_C_0_6 = a_lh__d9 in
      (fun _lh_scanr_arg2_4 _lh_scanr_arg1_4 -> 
        (let rec _lh_matchIdent_3 = (((scanr_lh__d1 _lh_scanr_arg1_4) _lh_scanr_arg2_4) _lh_scanr_LH_C_1_0) in
          (match _lh_matchIdent_3 with
            | `LH_C(_lh_scanr_LH_C_0_7, _lh_scanr_LH_C_1_7) -> 
              (`LH_C(((_lh_scanr_arg1_4 _lh_scanr_LH_C_0_6) _lh_scanr_LH_C_0_7), (`LH_C(_lh_scanr_LH_C_0_7, _lh_scanr_LH_C_1_7))))
            | _ -> 
              (failwith "error"))))))));;
let rec plus__lh__d5 _lh_plus__arg1_3 _lh_plus__arg2_3 =
  (let rec _lh_label_Node_1_2_3 = (`LH_C(_lh_plus__arg1_3, (`LH_C(_lh_plus__arg2_3, (`LH_N))))) in
    (let rec _lh_label_Node_0_2_3 = (`LH_C('+', (`LH_N))) in
      (fun label_2_4 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_4 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_4) _lh_label_Node_1_2_3)) (fun ts_2_3 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_4, _lh_label_Node_0_2_3)), ts_2_3))))))))));;
let rec a_lh__d6 =
  (let rec _lh_label_Node_1_3_1 = (`LH_N) in
    (let rec _lh_label_Node_0_3_1 = (`LH_C('a', (`LH_N))) in
      (fun label_3_2 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_3_9 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_3_2) _lh_label_Node_1_3_1)) (fun ts_3_1 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_3_9, _lh_label_Node_0_3_1)), ts_3_1))))))))));;
let rec a_lh__d5 =
  (let rec _lh_label_Node_1_6 = (`LH_N) in
    (let rec _lh_label_Node_0_6 = (`LH_C('a', (`LH_N))) in
      (fun label_6 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_6 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_6) _lh_label_Node_1_6)) (fun ts_6 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_6, _lh_label_Node_0_6)), ts_6))))))))));;
let rec example1_lh__d1 =
  ((plus__lh__d5 a_lh__d6) a_lh__d5);;
let rec c_lh__d1 =
  (let rec _lh_label_Node_1_1 = (`LH_N) in
    (let rec _lh_label_Node_0_1 = (`LH_C('c', (`LH_N))) in
      (fun label_1 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1) _lh_label_Node_1_1)) (fun ts_1 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1, _lh_label_Node_0_1)), ts_1))))))))));;
let rec a_lh__d1 =
  (let rec _lh_label_Node_1_1_2 = (`LH_N) in
    (let rec _lh_label_Node_0_1_2 = (`LH_C('a', (`LH_N))) in
      (fun label_1_3 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1_2 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1_3) _lh_label_Node_1_1_2)) (fun ts_1_2 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1_2, _lh_label_Node_0_1_2)), ts_1_2))))))))));;
let rec plus__lh__d1 _lh_plus__arg1_1 _lh_plus__arg2_1 =
  (let rec _lh_label_Node_1_1_4 = (`LH_C(_lh_plus__arg1_1, (`LH_C(_lh_plus__arg2_1, (`LH_N))))) in
    (let rec _lh_label_Node_0_1_4 = (`LH_C('+', (`LH_N))) in
      (fun label_1_5 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1_5 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1_5) _lh_label_Node_1_1_4)) (fun ts_1_4 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1_5, _lh_label_Node_0_1_4)), ts_1_4))))))))));;
let rec a_lh__d2 =
  (let rec _lh_label_Node_1_1_8 = (`LH_N) in
    (let rec _lh_label_Node_0_1_8 = (`LH_C('a', (`LH_N))) in
      (fun label_1_9 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1_9 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1_9) _lh_label_Node_1_1_8)) (fun ts_1_8 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1_9, _lh_label_Node_0_1_8)), ts_1_8))))))))));;
let rec b_lh__d2 =
  (let rec _lh_label_Node_1_2_0 = (`LH_N) in
    (let rec _lh_label_Node_0_2_0 = (`LH_C('b', (`LH_N))) in
      (fun label_2_1 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_1 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_1) _lh_label_Node_1_2_0)) (fun ts_2_0 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_1, _lh_label_Node_0_2_0)), ts_2_0))))))))));;
let rec plus__lh__d3 _lh_plus__arg1_2 _lh_plus__arg2_2 =
  (let rec _lh_label_Node_1_2_1 = (`LH_C(_lh_plus__arg1_2, (`LH_C(_lh_plus__arg2_2, (`LH_N))))) in
    (let rec _lh_label_Node_0_2_1 = (`LH_C('+', (`LH_N))) in
      (fun label_2_2 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_2 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_2) _lh_label_Node_1_2_1)) (fun ts_2_1 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_2, _lh_label_Node_0_2_1)), ts_2_1))))))))));;
let rec plus__lh__d2 _lh_plus__arg1_4 _lh_plus__arg2_4 =
  (let rec _lh_label_Node_1_2_6 = (`LH_C(_lh_plus__arg1_4, (`LH_C(_lh_plus__arg2_4, (`LH_N))))) in
    (let rec _lh_label_Node_0_2_6 = (`LH_C('+', (`LH_N))) in
      (fun label_2_7 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_7 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_7) _lh_label_Node_1_2_6)) (fun ts_2_6 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_7, _lh_label_Node_0_2_6)), ts_2_6))))))))));;
let rec b_lh__d1 =
  (let rec _lh_label_Node_1_7 = (`LH_N) in
    (let rec _lh_label_Node_0_7 = (`LH_C('b', (`LH_N))) in
      (fun label_7 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_7 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_7) _lh_label_Node_1_7)) (fun ts_7 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_7, _lh_label_Node_0_7)), ts_7))))))))));;
let rec mult__lh__d1 _lh_mult__arg1_0 _lh_mult__arg2_0 =
  (let rec _lh_label_Node_1_9 = (`LH_C(_lh_mult__arg1_0, (`LH_C(_lh_mult__arg2_0, (`LH_N))))) in
    (let rec _lh_label_Node_0_9 = (`LH_C('*', (`LH_N))) in
      (fun label_9 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_9 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_9) _lh_label_Node_1_9)) (fun ts_9 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_9, _lh_label_Node_0_9)), ts_9))))))))));;
let rec example3_lh__d1 =
  ((plus__lh__d1 ((mult__lh__d1 ((plus__lh__d3 a_lh__d2) b_lh__d2)) c_lh__d1)) ((plus__lh__d2 a_lh__d1) b_lh__d1));;
let rec map_lh__d1 f_3 ls_4 =
  (ls_4 f_3);;
let rec a_lh__d4 =
  (let rec _lh_label_Node_1_1_3 = (`LH_N) in
    (let rec _lh_label_Node_0_1_3 = (`LH_C('a', (`LH_N))) in
      (fun label_1_4 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1_4 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1_4) _lh_label_Node_1_1_3)) (fun ts_1_3 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1_4, _lh_label_Node_0_1_3)), ts_1_3))))))))));;
let rec example0_lh__d1 =
  a_lh__d4;;
let rec startingWith_lh__d1 _lh_startingWith_arg1_0 _lh_startingWith_arg2_0 =
  (let rec _lh_matchIdent_6 = (_lh_startingWith_arg1_0 _lh_startingWith_arg2_0) in
    (match _lh_matchIdent_6 with
      | `LH_P2(_lh_startingWith_LH_P2_0_0, _lh_startingWith_LH_P2_1_0) -> 
        _lh_startingWith_LH_P2_1_0
      | _ -> 
        (failwith "error")));;
let rec labelTree_lh__d1 _lh_labelTree_arg1_0 =
  (let rec label_1_2 = (fun _lh_label_arg1_0 -> 
    (_lh_label_arg1_0 label_1_2)) in
    ((startingWith_lh__d1 (label_1_2 _lh_labelTree_arg1_0)) 0));;
let rec foldr_lh__d1 f_0 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      ((f_0 h_2) (((foldr_lh__d1 f_0) i_0) t_2))
    | `LH_N -> 
      i_0);;
let rec id_lh__d1 _lh_id_arg1_0 =
  _lh_id_arg1_0;;
let rec findCommon_lh__d1 _lh_findCommon_arg1_0 =
  (let rec sim_0 = (fun _lh_sim_arg1_0 _lh_sim_arg2_1 -> 
    (_lh_sim_arg1_0 _lh_sim_arg2_1)) in
    (let rec _lh_matchIdent_1_0 = (((foldr_lh__d1 sim_0) (`LH_P2(id_lh__d1, (`LH_N)))) _lh_findCommon_arg1_0) in
      (match _lh_matchIdent_1_0 with
        | `LH_P2(_lh_findCommon_LH_P2_0_0, _lh_findCommon_LH_P2_1_0) -> 
          _lh_findCommon_LH_P2_1_0
        | _ -> 
          (failwith "error"))));;
let rec mappend_lh__d1 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec map_lh__d3 f_7 ls_6 =
  (ls_6 f_7);;
let rec map_lh__d5 f_4 ls_5 =
  (match ls_5 with
    | `LH_C(h_5, t_5) -> 
      (let rec t_6 = ((map_lh__d5 f_4) t_5) in
        (let rec h_6 = (f_4 h_5) in
          (fun f_5 -> 
            (`LH_C((f_5 h_6), ((map_lh__d3 f_5) t_6))))))
    | `LH_N -> 
      (fun f_6 -> 
        (`LH_N)));;
let rec null_lh__d1 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d1 lss_0 =
  (lss_0 99);;
let rec mappend_lh__d2 xs_1 ys_3 =
  (match xs_1 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d2 t_3) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec map_lh__d4 f_1_5 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_9, t_1_9) -> 
      (let rec t_2_0 = ((map_lh__d4 f_1_5) t_1_9) in
        (let rec h_2_0 = (f_1_5 h_1_9) in
          (fun _lh_dummy_0 -> 
            ((mappend_lh__d2 h_2_0) (concat_lh__d1 t_2_0)))))
    | `LH_N -> 
      (fun _lh_dummy_1 -> 
        (`LH_N)));;
let rec head_lh__d1 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec newlyDefined_lh__d1 _lh_newlyDefined_arg1_0 _lh_newlyDefined_arg2_0 _lh_newlyDefined_arg3_0 _lh_newlyDefined_arg4_0 =
  (if (_lh_newlyDefined_arg1_0 = _lh_newlyDefined_arg4_0) then
    _lh_newlyDefined_arg2_0
  else
    (_lh_newlyDefined_arg3_0 _lh_newlyDefined_arg4_0));;
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
            (`LH_C((let rec _lh_sim_LH_P3_2_0 = ((map_lh__d5 labelOf_0) _lh_ltGraph_Node_1_0) in
              (let rec _lh_sim_LH_P3_1_0 = _lh_ltGraph_LH_P2_1_0 in
                (let rec _lh_sim_LH_P3_0_0 = _lh_ltGraph_LH_P2_0_0 in
                  (fun _lh_sim_arg2_0 -> 
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
                              (`LH_P2(_lh_sim_LH_P2_0_0, ((mappend_lh__d1 (let rec t_1 = (fun ys_1 -> 
                                ys_1) in
                                (let rec h_1 = (`LH_P3(_lh_sim_LH_P3_0_0, _lh_sim_LH_P3_1_0, rcs_0)) in
                                  (fun ys_2 -> 
                                    (`LH_C(h_1, ((mappend_lh__d1 t_1) ys_2))))))) _lh_sim_LH_P2_1_0)))
                            else
                              (`LH_P2((((newlyDefined_lh__d1 _lh_sim_LH_P3_0_0) (head_lh__d1 ms_0)) _lh_sim_LH_P2_0_0), _lh_sim_LH_P2_1_0)))))
                      | _ -> 
                        (failwith "error")))))), (concat_lh__d1 ((map_lh__d4 ltGraph_lh__d1) _lh_ltGraph_Node_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec cse_lh__d1 _lh_cse_arg1_0 =
  (findCommon_lh__d1 (ltGraph_lh__d1 (labelTree_lh__d1 _lh_cse_arg1_0)));;
let rec take_lh__d1 n_1_3 ls_2 =
  (if (n_1_3 > 0) then
    (ls_2 n_1_3)
  else
    (fun f_1 -> 
      (`LH_N)));;
let rec map_lh__d2 f_2 ls_3 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_2 h_4), ((map_lh__d2 f_2) t_4)))
    | `LH_N -> 
      (`LH_N));;
let rec c_lh__d2 =
  (let rec _lh_label_Node_1_3 = (`LH_N) in
    (let rec _lh_label_Node_0_3 = (`LH_C('c', (`LH_N))) in
      (fun label_3 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_3 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_3) _lh_label_Node_1_3)) (fun ts_3 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_3, _lh_label_Node_0_3)), ts_3))))))))));;
let rec prod_lh__d1 _lh_prod_arg1_0 =
  (let rec _lh_label_Node_1_4 = _lh_prod_arg1_0 in
    (let rec _lh_label_Node_0_4 = (`LH_C('X', (`LH_N))) in
      (fun label_4 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_4 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_4) _lh_label_Node_1_4)) (fun ts_4 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_4, _lh_label_Node_0_4)), ts_4))))))))));;
let rec a_lh__d3 =
  (let rec _lh_label_Node_1_8 = (`LH_N) in
    (let rec _lh_label_Node_0_8 = (`LH_C('a', (`LH_N))) in
      (fun label_8 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_8 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_8) _lh_label_Node_1_8)) (fun ts_8 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_8, _lh_label_Node_0_8)), ts_8))))))))));;
let rec zerO_lh__d1 =
  (let rec _lh_label_Node_1_1_6 = (`LH_N) in
    (let rec _lh_label_Node_0_1_6 = (`LH_C('0', (`LH_N))) in
      (fun label_1_7 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1_7 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1_7) _lh_label_Node_1_1_6)) (fun ts_1_6 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1_7, _lh_label_Node_0_1_6)), ts_1_6))))))))));;
let rec b_lh__d3 =
  (let rec _lh_label_Node_1_1_9 = (`LH_N) in
    (let rec _lh_label_Node_0_1_9 = (`LH_C('b', (`LH_N))) in
      (fun label_2_0 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_0 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_0) _lh_label_Node_1_1_9)) (fun ts_1_9 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_0, _lh_label_Node_0_1_9)), ts_1_9))))))))));;
let rec plus__lh__d4 _lh_plus__arg1_5 _lh_plus__arg2_5 =
  (let rec _lh_label_Node_1_2_8 = (`LH_C(_lh_plus__arg1_5, (`LH_C(_lh_plus__arg2_5, (`LH_N))))) in
    (let rec _lh_label_Node_0_2_8 = (`LH_C('+', (`LH_N))) in
      (fun label_2_9 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_9 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_9) _lh_label_Node_1_2_8)) (fun ts_2_8 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_9, _lh_label_Node_0_2_8)), ts_2_8))))))))));;
let rec d_lh__d1 =
  (let rec _lh_label_Node_1_3_0 = (`LH_N) in
    (let rec _lh_label_Node_0_3_0 = (`LH_C('d', (`LH_N))) in
      (fun label_3_1 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_3_8 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_3_1) _lh_label_Node_1_3_0)) (fun ts_3_0 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_3_8, _lh_label_Node_0_3_0)), ts_3_0))))))))));;
let rec scanl_lh__d1 _lh_scanl_arg1_5 _lh_scanl_arg2_5 _lh_scanl_arg3_0 =
  (`LH_C(_lh_scanl_arg2_5, (let rec _lh_matchIdent_8 = _lh_scanl_arg3_0 in
    ((_lh_matchIdent_8 _lh_scanl_arg1_5) _lh_scanl_arg2_5))));;
let rec example4_lh__d1 =
  (prod_lh__d1 (((scanl_lh__d1 plus__lh__d4) zerO_lh__d1) (let rec _lh_scanl_LH_C_1_0 = (let rec _lh_scanl_LH_C_1_1 = (let rec _lh_scanl_LH_C_1_2 = (let rec _lh_scanl_LH_C_1_3 = (fun _lh_scanl_arg1_0 _lh_scanl_arg2_0 -> 
    (`LH_N)) in
    (let rec _lh_scanl_LH_C_0_0 = d_lh__d1 in
      (fun _lh_scanl_arg1_1 _lh_scanl_arg2_1 -> 
        (((scanl_lh__d1 _lh_scanl_arg1_1) ((_lh_scanl_arg1_1 _lh_scanl_arg2_1) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_3)))) in
    (let rec _lh_scanl_LH_C_0_1 = c_lh__d2 in
      (fun _lh_scanl_arg1_2 _lh_scanl_arg2_2 -> 
        (((scanl_lh__d1 _lh_scanl_arg1_2) ((_lh_scanl_arg1_2 _lh_scanl_arg2_2) _lh_scanl_LH_C_0_1)) _lh_scanl_LH_C_1_2)))) in
    (let rec _lh_scanl_LH_C_0_2 = b_lh__d3 in
      (fun _lh_scanl_arg1_3 _lh_scanl_arg2_3 -> 
        (((scanl_lh__d1 _lh_scanl_arg1_3) ((_lh_scanl_arg1_3 _lh_scanl_arg2_3) _lh_scanl_LH_C_0_2)) _lh_scanl_LH_C_1_1)))) in
    (let rec _lh_scanl_LH_C_0_3 = a_lh__d3 in
      (fun _lh_scanl_arg1_4 _lh_scanl_arg2_4 -> 
        (((scanl_lh__d1 _lh_scanl_arg1_4) ((_lh_scanl_arg1_4 _lh_scanl_arg2_4) _lh_scanl_LH_C_0_3)) _lh_scanl_LH_C_1_0))))));;
let rec plus__lh__d6 _lh_plus__arg1_0 _lh_plus__arg2_0 =
  (let rec _lh_label_Node_1_0 = (`LH_C(_lh_plus__arg1_0, (`LH_C(_lh_plus__arg2_0, (`LH_N))))) in
    (let rec _lh_label_Node_0_0 = (`LH_C('+', (`LH_N))) in
      (fun label_0 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_0 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_0) _lh_label_Node_1_0)) (fun ts_0 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_0, _lh_label_Node_0_0)), ts_0))))))))));;
let rec a_lh__d8 =
  (let rec _lh_label_Node_1_5 = (`LH_N) in
    (let rec _lh_label_Node_0_5 = (`LH_C('a', (`LH_N))) in
      (fun label_5 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_5 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_5) _lh_label_Node_1_5)) (fun ts_5 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_5, _lh_label_Node_0_5)), ts_5))))))))));;
let rec b_lh__d4 =
  (let rec _lh_label_Node_1_1_7 = (`LH_N) in
    (let rec _lh_label_Node_0_1_7 = (`LH_C('b', (`LH_N))) in
      (fun label_1_8 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1_8 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1_8) _lh_label_Node_1_1_7)) (fun ts_1_7 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1_8, _lh_label_Node_0_1_7)), ts_1_7))))))))));;
let rec a_lh__d7 =
  (let rec _lh_label_Node_1_2_4 = (`LH_N) in
    (let rec _lh_label_Node_0_2_4 = (`LH_C('a', (`LH_N))) in
      (fun label_2_5 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_2_5 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_2_5) _lh_label_Node_1_2_4)) (fun ts_2_4 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_2_5, _lh_label_Node_0_2_4)), ts_2_4))))))))));;
let rec mult__lh__d2 _lh_mult__arg1_2 _lh_mult__arg2_2 =
  (let rec _lh_label_Node_1_2_9 = (`LH_C(_lh_mult__arg1_2, (`LH_C(_lh_mult__arg2_2, (`LH_N))))) in
    (let rec _lh_label_Node_0_2_9 = (`LH_C('*', (`LH_N))) in
      (fun label_3_0 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_3_0 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_3_0) _lh_label_Node_1_2_9)) (fun ts_2_9 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_3_0, _lh_label_Node_0_2_9)), ts_2_9))))))))));;
let rec b_lh__d5 =
  (let rec _lh_label_Node_1_1_0 = (`LH_N) in
    (let rec _lh_label_Node_0_1_0 = (`LH_C('b', (`LH_N))) in
      (fun label_1_0 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1_0 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1_0) _lh_label_Node_1_1_0)) (fun ts_1_0 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1_0, _lh_label_Node_0_1_0)), ts_1_0))))))))));;
let rec mult__lh__d3 _lh_mult__arg1_1 _lh_mult__arg2_1 =
  (let rec _lh_label_Node_1_1_1 = (`LH_C(_lh_mult__arg1_1, (`LH_C(_lh_mult__arg2_1, (`LH_N))))) in
    (let rec _lh_label_Node_0_1_1 = (`LH_C('*', (`LH_N))) in
      (fun label_1_1 -> 
        ((bind_lh__d2 incr_lh__d1) (fun n_1_1 -> 
          ((bind_lh__d1 ((mmapl_lh__d1 label_1_1) _lh_label_Node_1_1_1)) (fun ts_1_1 -> 
            (retURN_lh__d1 (`Node((`LH_P2(n_1_1, _lh_label_Node_0_1_1)), ts_1_1))))))))));;
let rec example2_lh__d1 =
  ((plus__lh__d6 ((mult__lh__d2 a_lh__d8) b_lh__d4)) ((mult__lh__d3 a_lh__d7) b_lh__d5));;
let rec enumFromTo_lh__d1 a_0 b_1 =
  (if (a_0 <= b_1) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_1)))
  else
    (`LH_N));;
let rec testCse_nofib_lh__d1 _lh_testCse_nofib_arg1_0 =
  ((map_lh__d2 (fun i_1 -> 
    ((map_lh__d1 cse_lh__d1) ((take_lh__d1 (i_1 mod 6)) (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (fun n_3_1 f_8 -> 
      (`LH_N)) in
      (let rec h_7 = example5_lh__d1 in
        (fun n_3_2 -> 
          (let rec t_1_3 = ((take_lh__d1 (n_3_2 - 1)) t_1_2) in
            (let rec h_8 = h_7 in
              (fun f_9 -> 
                (`LH_C((f_9 h_8), ((map_lh__d1 f_9) t_1_3))))))))) in
      (let rec h_9 = example4_lh__d1 in
        (fun n_3_3 -> 
          (let rec t_1_4 = ((take_lh__d1 (n_3_3 - 1)) t_1_1) in
            (let rec h_1_0 = h_9 in
              (fun f_1_0 -> 
                (`LH_C((f_1_0 h_1_0), ((map_lh__d1 f_1_0) t_1_4))))))))) in
      (let rec h_1_1 = example3_lh__d1 in
        (fun n_3_4 -> 
          (let rec t_1_5 = ((take_lh__d1 (n_3_4 - 1)) t_1_0) in
            (let rec h_1_2 = h_1_1 in
              (fun f_1_1 -> 
                (`LH_C((f_1_1 h_1_2), ((map_lh__d1 f_1_1) t_1_5))))))))) in
      (let rec h_1_3 = example2_lh__d1 in
        (fun n_3_5 -> 
          (let rec t_1_6 = ((take_lh__d1 (n_3_5 - 1)) t_9) in
            (let rec h_1_4 = h_1_3 in
              (fun f_1_2 -> 
                (`LH_C((f_1_2 h_1_4), ((map_lh__d1 f_1_2) t_1_6))))))))) in
      (let rec h_1_5 = example1_lh__d1 in
        (fun n_3_6 -> 
          (let rec t_1_7 = ((take_lh__d1 (n_3_6 - 1)) t_8) in
            (let rec h_1_6 = h_1_5 in
              (fun f_1_3 -> 
                (`LH_C((f_1_3 h_1_6), ((map_lh__d1 f_1_3) t_1_7))))))))) in
      (let rec h_1_7 = example0_lh__d1 in
        (fun n_3_7 -> 
          (let rec t_1_8 = ((take_lh__d1 (n_3_7 - 1)) t_7) in
            (let rec h_1_8 = h_1_7 in
              (fun f_1_4 -> 
                (`LH_C((f_1_4 h_1_8), ((map_lh__d1 f_1_4) t_1_8))))))))))))) ((enumFromTo_lh__d1 1) _lh_testCse_nofib_arg1_0));;
let run () = 1 + (Obj.magic ((testCse_nofib_lh__d1 1000)));
end;;

