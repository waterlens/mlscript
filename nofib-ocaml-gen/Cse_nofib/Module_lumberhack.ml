

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec bind__d0 _lh_bind_arg1_1 _lh_bind_arg2_2 s_2 =
  (let rec _lh_matchIdent_5 = (_lh_bind_arg1_1 s_2) in
    (_lh_matchIdent_5 _lh_bind_arg2_2));;
let rec bind__d1 _lh_bind_arg1_0 _lh_bind_arg2_1 s_1 =
  (let rec _lh_matchIdent_4 = (_lh_bind_arg1_0 s_1) in
    (match _lh_matchIdent_4 with
      | `LH_P2(_lh_bind_LH_P2_0_1, _lh_bind_LH_P2_1_1) -> 
        ((_lh_bind_arg2_1 _lh_bind_LH_P2_1_1) _lh_bind_LH_P2_0_1)
      | _ -> 
        (failwith "error")));;
let rec bind__d2 _lh_bind_arg1_2 _lh_bind_arg2_3 s_5 =
  (let rec _lh_matchIdent_7 = (_lh_bind_arg1_2 s_5) in
    (match _lh_matchIdent_7 with
      | `LH_P2(_lh_bind_LH_P2_0_2, _lh_bind_LH_P2_1_2) -> 
        ((_lh_bind_arg2_3 _lh_bind_LH_P2_1_2) _lh_bind_LH_P2_0_2)
      | _ -> 
        (failwith "error")));;
let rec bind__d3 _lh_bind_arg1_3 _lh_bind_arg2_4 s_6 =
  (let rec _lh_matchIdent_9 = (_lh_bind_arg1_3 s_6) in
    (match _lh_matchIdent_9 with
      | `LH_P2(_lh_bind_LH_P2_0_3, _lh_bind_LH_P2_1_3) -> 
        ((_lh_bind_arg2_4 _lh_bind_LH_P2_1_3) _lh_bind_LH_P2_0_3)
      | _ -> 
        (failwith "error")));;
let rec concat__d0 lss_0 =
  (lss_0 99);;
let rec foldr__d0 f_3 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      ((f_3 h_2) (((foldr__d0 f_3) i_0) t_2))
    | `LH_N -> 
      i_0);;
let rec head__d0 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_6, t_1_6) -> 
      h_1_6
    | `LH_N -> 
      (failwith "error"));;
let rec id__d0 _lh_id_arg1_0 =
  _lh_id_arg1_0;;
let rec map__d0 f_4 ls_2 =
  (ls_2 f_4);;
let rec map__d3 f_5 ls_3 =
  (ls_3 f_5);;
let rec map__d4 f_1_3 ls_4 =
  (ls_4 f_1_3);;
let rec mappend__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d1 xs_1 ys_3 =
  (match xs_1 with
    | `LH_C(h_1_9, t_1_9) -> 
      (`LH_C(h_1_9, ((mappend__d1 t_1_9) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec newlyDefined__d0 _lh_newlyDefined_arg1_0 _lh_newlyDefined_arg2_0 _lh_newlyDefined_arg3_0 _lh_newlyDefined_arg4_0 =
  (if (_lh_newlyDefined_arg1_0 = _lh_newlyDefined_arg4_0) then
    _lh_newlyDefined_arg2_0
  else
    (_lh_newlyDefined_arg3_0 _lh_newlyDefined_arg4_0));;
let rec null__d0 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec retURN__d0 _lh_retURN_arg1_2 s_7 =
  (`LH_P2(s_7, _lh_retURN_arg1_2));;
let rec retURN__d1 _lh_retURN_arg1_1 s_4 =
  (`LH_P2(s_4, _lh_retURN_arg1_1));;
let rec retURN__d2 _lh_retURN_arg1_0 s_3 =
  (`LH_P2(s_3, _lh_retURN_arg1_0));;
let rec scanl__d0 _lh_scanl_arg1_5 _lh_scanl_arg2_5 _lh_scanl_arg3_0 =
  (`LH_C(_lh_scanl_arg2_5, (let rec _lh_matchIdent_8 = _lh_scanl_arg3_0 in
    ((_lh_matchIdent_8 _lh_scanl_arg1_5) _lh_scanl_arg2_5))));;
let rec scanr__d0 _lh_scanr_arg1_5 _lh_scanr_arg2_5 _lh_scanr_arg3_0 =
  ((_lh_scanr_arg3_0 _lh_scanr_arg2_5) _lh_scanr_arg1_5);;
let rec startingWith__d0 _lh_startingWith_arg1_0 _lh_startingWith_arg2_0 =
  (let rec _lh_matchIdent_1_0 = (_lh_startingWith_arg1_0 _lh_startingWith_arg2_0) in
    (match _lh_matchIdent_1_0 with
      | `LH_P2(_lh_startingWith_LH_P2_0_0, _lh_startingWith_LH_P2_1_0) -> 
        _lh_startingWith_LH_P2_1_0
      | _ -> 
        (failwith "error")));;
let rec take__d0 n_2_0 ls_6 =
  (if (n_2_0 > 0) then
    (ls_6 n_2_0)
  else
    (fun f_1_4 -> 
      (`LH_N)));;
let rec update__d0 _lh_update_arg1_0 s_0 =
  (let rec _lh_bind_LH_P2_1_0 = s_0 in
    (let rec _lh_bind_LH_P2_0_0 = (_lh_update_arg1_0 s_0) in
      (fun _lh_bind_arg2_0 -> 
        ((_lh_bind_arg2_0 _lh_bind_LH_P2_1_0) _lh_bind_LH_P2_0_0))));;
let rec a__d0 =
  (let rec _lh_label_Node_1_2_9 = (`LH_N) in
    (let rec _lh_label_Node_0_2_9 = (`LH_C('a', (`LH_N))) in
      (fun label_3_0 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_7 -> 
          ((bind__d1 ((mmapl__d0 label_3_0) _lh_label_Node_1_2_9)) (fun ts_2_9 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_7, _lh_label_Node_0_2_9)), ts_2_9))))))))))
and a__d1 =
  (let rec _lh_label_Node_1_2_0 = (`LH_N) in
    (let rec _lh_label_Node_0_2_0 = (`LH_C('a', (`LH_N))) in
      (fun label_2_1 -> 
        ((bind__d0 (incr__d0 0)) (fun n_2_8 -> 
          ((bind__d1 ((mmapl__d0 label_2_1) _lh_label_Node_1_2_0)) (fun ts_2_0 -> 
            (retURN__d2 (`Node((`LH_P2(n_2_8, _lh_label_Node_0_2_0)), ts_2_0))))))))))
and a__d2 =
  (let rec _lh_label_Node_1_5 = (`LH_N) in
    (let rec _lh_label_Node_0_5 = (`LH_C('a', (`LH_N))) in
      (fun label_5 -> 
        ((bind__d0 (incr__d0 0)) (fun n_5 -> 
          ((bind__d1 ((mmapl__d0 label_5) _lh_label_Node_1_5)) (fun ts_5 -> 
            (retURN__d2 (`Node((`LH_P2(n_5, _lh_label_Node_0_5)), ts_5))))))))))
and a__d3 =
  (let rec _lh_label_Node_1_2_3 = (`LH_N) in
    (let rec _lh_label_Node_0_2_3 = (`LH_C('a', (`LH_N))) in
      (fun label_2_4 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_1 -> 
          ((bind__d1 ((mmapl__d0 label_2_4) _lh_label_Node_1_2_3)) (fun ts_2_3 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_1, _lh_label_Node_0_2_3)), ts_2_3))))))))))
and a__d4 =
  (let rec _lh_label_Node_1_9 = (`LH_N) in
    (let rec _lh_label_Node_0_9 = (`LH_C('a', (`LH_N))) in
      (fun label_9 -> 
        ((bind__d0 (incr__d0 0)) (fun n_1_6 -> 
          ((bind__d1 ((mmapl__d0 label_9) _lh_label_Node_1_9)) (fun ts_9 -> 
            (retURN__d2 (`Node((`LH_P2(n_1_6, _lh_label_Node_0_9)), ts_9))))))))))
and a__d5 =
  (let rec _lh_label_Node_1_2_4 = (`LH_N) in
    (let rec _lh_label_Node_0_2_4 = (`LH_C('a', (`LH_N))) in
      (fun label_2_5 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_2 -> 
          ((bind__d1 ((mmapl__d0 label_2_5) _lh_label_Node_1_2_4)) (fun ts_2_4 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_2, _lh_label_Node_0_2_4)), ts_2_4))))))))))
and a__d6 =
  (let rec _lh_label_Node_1_1_0 = (`LH_N) in
    (let rec _lh_label_Node_0_1_0 = (`LH_C('a', (`LH_N))) in
      (fun label_1_0 -> 
        ((bind__d0 (incr__d0 0)) (fun n_1_7 -> 
          ((bind__d1 ((mmapl__d0 label_1_0) _lh_label_Node_1_1_0)) (fun ts_1_0 -> 
            (retURN__d2 (`Node((`LH_P2(n_1_7, _lh_label_Node_0_1_0)), ts_1_0))))))))))
and a__d7 =
  (let rec _lh_label_Node_1_6 = (`LH_N) in
    (let rec _lh_label_Node_0_6 = (`LH_C('a', (`LH_N))) in
      (fun label_6 -> 
        ((bind__d0 (incr__d0 0)) (fun n_6 -> 
          ((bind__d1 ((mmapl__d0 label_6) _lh_label_Node_1_6)) (fun ts_6 -> 
            (retURN__d2 (`Node((`LH_P2(n_6, _lh_label_Node_0_6)), ts_6))))))))))
and a__d8 =
  (let rec _lh_label_Node_1_2_5 = (`LH_N) in
    (let rec _lh_label_Node_0_2_5 = (`LH_C('a', (`LH_N))) in
      (fun label_2_6 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_3 -> 
          ((bind__d1 ((mmapl__d0 label_2_6) _lh_label_Node_1_2_5)) (fun ts_2_5 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_3, _lh_label_Node_0_2_5)), ts_2_5))))))))))
and b__d0 =
  (let rec _lh_label_Node_1_1 = (`LH_N) in
    (let rec _lh_label_Node_0_1 = (`LH_C('b', (`LH_N))) in
      (fun label_1 -> 
        ((bind__d0 (incr__d0 0)) (fun n_1 -> 
          ((bind__d1 ((mmapl__d0 label_1) _lh_label_Node_1_1)) (fun ts_1 -> 
            (retURN__d2 (`Node((`LH_P2(n_1, _lh_label_Node_0_1)), ts_1))))))))))
and b__d1 =
  (let rec _lh_label_Node_1_1_9 = (`LH_N) in
    (let rec _lh_label_Node_0_1_9 = (`LH_C('b', (`LH_N))) in
      (fun label_2_0 -> 
        ((bind__d0 (incr__d0 0)) (fun n_2_7 -> 
          ((bind__d1 ((mmapl__d0 label_2_0) _lh_label_Node_1_1_9)) (fun ts_1_9 -> 
            (retURN__d2 (`Node((`LH_P2(n_2_7, _lh_label_Node_0_1_9)), ts_1_9))))))))))
and b__d2 =
  (let rec _lh_label_Node_1_0 = (`LH_N) in
    (let rec _lh_label_Node_0_0 = (`LH_C('b', (`LH_N))) in
      (fun label_0 -> 
        ((bind__d0 (incr__d0 0)) (fun n_0 -> 
          ((bind__d1 ((mmapl__d0 label_0) _lh_label_Node_1_0)) (fun ts_0 -> 
            (retURN__d2 (`Node((`LH_P2(n_0, _lh_label_Node_0_0)), ts_0))))))))))
and b__d3 =
  (let rec _lh_label_Node_1_3_3 = (`LH_N) in
    (let rec _lh_label_Node_0_3_3 = (`LH_C('b', (`LH_N))) in
      (fun label_3_4 -> 
        ((bind__d0 (incr__d0 0)) (fun n_4_1 -> 
          ((bind__d1 ((mmapl__d0 label_3_4) _lh_label_Node_1_3_3)) (fun ts_3_3 -> 
            (retURN__d2 (`Node((`LH_P2(n_4_1, _lh_label_Node_0_3_3)), ts_3_3))))))))))
and b__d4 =
  (let rec _lh_label_Node_1_1_1 = (`LH_N) in
    (let rec _lh_label_Node_0_1_1 = (`LH_C('b', (`LH_N))) in
      (fun label_1_1 -> 
        ((bind__d0 (incr__d0 0)) (fun n_1_8 -> 
          ((bind__d1 ((mmapl__d0 label_1_1) _lh_label_Node_1_1_1)) (fun ts_1_1 -> 
            (retURN__d2 (`Node((`LH_P2(n_1_8, _lh_label_Node_0_1_1)), ts_1_1))))))))))
and b__d5 =
  (let rec _lh_label_Node_1_1_3 = (`LH_N) in
    (let rec _lh_label_Node_0_1_3 = (`LH_C('b', (`LH_N))) in
      (fun label_1_3 -> 
        ((bind__d0 (incr__d0 0)) (fun n_2_1 -> 
          ((bind__d1 ((mmapl__d0 label_1_3) _lh_label_Node_1_1_3)) (fun ts_1_3 -> 
            (retURN__d2 (`Node((`LH_P2(n_2_1, _lh_label_Node_0_1_3)), ts_1_3))))))))))
and c__d0 =
  (let rec _lh_label_Node_1_2_7 = (`LH_N) in
    (let rec _lh_label_Node_0_2_7 = (`LH_C('c', (`LH_N))) in
      (fun label_2_8 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_5 -> 
          ((bind__d1 ((mmapl__d0 label_2_8) _lh_label_Node_1_2_7)) (fun ts_2_7 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_5, _lh_label_Node_0_2_7)), ts_2_7))))))))))
and c__d1 =
  (let rec _lh_label_Node_1_1_6 = (`LH_N) in
    (let rec _lh_label_Node_0_1_6 = (`LH_C('c', (`LH_N))) in
      (fun label_1_7 -> 
        ((bind__d0 (incr__d0 0)) (fun n_2_4 -> 
          ((bind__d1 ((mmapl__d0 label_1_7) _lh_label_Node_1_1_6)) (fun ts_1_6 -> 
            (retURN__d2 (`Node((`LH_P2(n_2_4, _lh_label_Node_0_1_6)), ts_1_6))))))))))
and c__d2 =
  (let rec _lh_label_Node_1_3 = (`LH_N) in
    (let rec _lh_label_Node_0_3 = (`LH_C('c', (`LH_N))) in
      (fun label_3 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3 -> 
          ((bind__d1 ((mmapl__d0 label_3) _lh_label_Node_1_3)) (fun ts_3 -> 
            (retURN__d2 (`Node((`LH_P2(n_3, _lh_label_Node_0_3)), ts_3))))))))))
and cse__d0 _lh_cse_arg1_0 =
  (findCommon__d0 (ltGraph__d0 (labelTree__d0 _lh_cse_arg1_0)))
and d__d0 =
  (let rec _lh_label_Node_1_3_1 = (`LH_N) in
    (let rec _lh_label_Node_0_3_1 = (`LH_C('d', (`LH_N))) in
      (fun label_3_2 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_9 -> 
          ((bind__d1 ((mmapl__d0 label_3_2) _lh_label_Node_1_3_1)) (fun ts_3_1 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_9, _lh_label_Node_0_3_1)), ts_3_1))))))))))
and d__d1 =
  (let rec _lh_label_Node_1_4 = (`LH_N) in
    (let rec _lh_label_Node_0_4 = (`LH_C('d', (`LH_N))) in
      (fun label_4 -> 
        ((bind__d0 (incr__d0 0)) (fun n_4 -> 
          ((bind__d1 ((mmapl__d0 label_4) _lh_label_Node_1_4)) (fun ts_4 -> 
            (retURN__d2 (`Node((`LH_P2(n_4, _lh_label_Node_0_4)), ts_4))))))))))
and enumFromTo__d0 a_0 b_1 =
  (if (a_0 <= b_1) then
    (let rec t_2_0 = ((enumFromTo__d0 (a_0 + 1)) b_1) in
      (let rec h_2_0 = a_0 in
        (fun f_1_6 -> 
          (`LH_C((f_1_6 h_2_0), ((map__d3 f_1_6) t_2_0))))))
  else
    (fun f_1_7 -> 
      (`LH_N)))
and example0__d0 _lh_example0_arg1_0 =
  a__d0
and example1__d0 _lh_example1_arg1_0 =
  ((plus___d0 a__d1) a__d2)
and example2__d0 _lh_example2_arg1_0 =
  ((plus___d1 ((mult___d0 a__d3) b__d0)) ((mult___d1 a__d4) b__d1))
and example3__d0 _lh_example3_arg1_0 =
  ((plus___d2 ((mult___d2 ((plus___d3 a__d5) b__d2)) c__d0)) ((plus___d4 a__d6) b__d3))
and example4__d0 _lh_example4_arg1_0 =
  (prod__d0 (((scanl__d0 plus___d5) (zerO__d0 0)) (let rec _lh_scanl_LH_C_1_0 = (let rec _lh_scanl_LH_C_1_1 = (let rec _lh_scanl_LH_C_1_2 = (let rec _lh_scanl_LH_C_1_3 = (fun _lh_scanl_arg1_0 _lh_scanl_arg2_0 -> 
    (`LH_N)) in
    (let rec _lh_scanl_LH_C_0_0 = d__d0 in
      (fun _lh_scanl_arg1_1 _lh_scanl_arg2_1 -> 
        (((scanl__d0 _lh_scanl_arg1_1) ((_lh_scanl_arg1_1 _lh_scanl_arg2_1) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_3)))) in
    (let rec _lh_scanl_LH_C_0_1 = c__d1 in
      (fun _lh_scanl_arg1_2 _lh_scanl_arg2_2 -> 
        (((scanl__d0 _lh_scanl_arg1_2) ((_lh_scanl_arg1_2 _lh_scanl_arg2_2) _lh_scanl_LH_C_0_1)) _lh_scanl_LH_C_1_2)))) in
    (let rec _lh_scanl_LH_C_0_2 = b__d4 in
      (fun _lh_scanl_arg1_3 _lh_scanl_arg2_3 -> 
        (((scanl__d0 _lh_scanl_arg1_3) ((_lh_scanl_arg1_3 _lh_scanl_arg2_3) _lh_scanl_LH_C_0_2)) _lh_scanl_LH_C_1_1)))) in
    (let rec _lh_scanl_LH_C_0_3 = a__d7 in
      (fun _lh_scanl_arg1_4 _lh_scanl_arg2_4 -> 
        (((scanl__d0 _lh_scanl_arg1_4) ((_lh_scanl_arg1_4 _lh_scanl_arg2_4) _lh_scanl_LH_C_0_3)) _lh_scanl_LH_C_1_0))))))
and example5__d0 _lh_example5_arg1_0 =
  (prod__d1 (((scanr__d0 plus___d6) (zerO__d1 0)) (let rec _lh_scanr_LH_C_1_0 = (let rec _lh_scanr_LH_C_1_1 = (let rec _lh_scanr_LH_C_1_2 = (let rec _lh_scanr_LH_C_1_3 = (fun _lh_scanr_arg2_0 _lh_scanr_arg1_0 -> 
    (`LH_C(_lh_scanr_arg2_0, (`LH_N)))) in
    (let rec _lh_scanr_LH_C_0_0 = d__d1 in
      (fun _lh_scanr_arg2_1 _lh_scanr_arg1_1 -> 
        (let rec _lh_matchIdent_0 = (((scanr__d0 _lh_scanr_arg1_1) _lh_scanr_arg2_1) _lh_scanr_LH_C_1_3) in
          (match _lh_matchIdent_0 with
            | `LH_C(_lh_scanr_LH_C_0_1, _lh_scanr_LH_C_1_4) -> 
              (`LH_C(((_lh_scanr_arg1_1 _lh_scanr_LH_C_0_0) _lh_scanr_LH_C_0_1), (`LH_C(_lh_scanr_LH_C_0_1, _lh_scanr_LH_C_1_4))))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_scanr_LH_C_0_2 = c__d2 in
      (fun _lh_scanr_arg2_2 _lh_scanr_arg1_2 -> 
        (let rec _lh_matchIdent_1 = (((scanr__d0 _lh_scanr_arg1_2) _lh_scanr_arg2_2) _lh_scanr_LH_C_1_2) in
          (match _lh_matchIdent_1 with
            | `LH_C(_lh_scanr_LH_C_0_3, _lh_scanr_LH_C_1_5) -> 
              (`LH_C(((_lh_scanr_arg1_2 _lh_scanr_LH_C_0_2) _lh_scanr_LH_C_0_3), (`LH_C(_lh_scanr_LH_C_0_3, _lh_scanr_LH_C_1_5))))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_scanr_LH_C_0_4 = b__d5 in
      (fun _lh_scanr_arg2_3 _lh_scanr_arg1_3 -> 
        (let rec _lh_matchIdent_2 = (((scanr__d0 _lh_scanr_arg1_3) _lh_scanr_arg2_3) _lh_scanr_LH_C_1_1) in
          (match _lh_matchIdent_2 with
            | `LH_C(_lh_scanr_LH_C_0_5, _lh_scanr_LH_C_1_6) -> 
              (`LH_C(((_lh_scanr_arg1_3 _lh_scanr_LH_C_0_4) _lh_scanr_LH_C_0_5), (`LH_C(_lh_scanr_LH_C_0_5, _lh_scanr_LH_C_1_6))))
            | _ -> 
              (failwith "error")))))) in
    (let rec _lh_scanr_LH_C_0_6 = a__d8 in
      (fun _lh_scanr_arg2_4 _lh_scanr_arg1_4 -> 
        (let rec _lh_matchIdent_3 = (((scanr__d0 _lh_scanr_arg1_4) _lh_scanr_arg2_4) _lh_scanr_LH_C_1_0) in
          (match _lh_matchIdent_3 with
            | `LH_C(_lh_scanr_LH_C_0_7, _lh_scanr_LH_C_1_7) -> 
              (`LH_C(((_lh_scanr_arg1_4 _lh_scanr_LH_C_0_6) _lh_scanr_LH_C_0_7), (`LH_C(_lh_scanr_LH_C_0_7, _lh_scanr_LH_C_1_7))))
            | _ -> 
              (failwith "error"))))))))
and findCommon__d0 _lh_findCommon_arg1_0 =
  (let rec sim_0 = (fun _lh_sim_arg1_0 _lh_sim_arg2_0 -> 
    (_lh_sim_arg1_0 _lh_sim_arg2_0)) in
    (let rec _lh_matchIdent_6 = (((foldr__d0 sim_0) (`LH_P2(id__d0, (`LH_N)))) _lh_findCommon_arg1_0) in
      (match _lh_matchIdent_6 with
        | `LH_P2(_lh_findCommon_LH_P2_0_0, _lh_findCommon_LH_P2_1_0) -> 
          _lh_findCommon_LH_P2_1_0
        | _ -> 
          (failwith "error"))))
and incr__d0 _lh_incr_arg1_0 =
  (update__d0 (fun x_0 -> 
    (1 + x_0)))
and labelTree__d0 _lh_labelTree_arg1_0 =
  (let rec label_1_5 = (fun _lh_label_arg1_0 -> 
    (_lh_label_arg1_0 label_1_5)) in
    ((startingWith__d0 (label_1_5 _lh_labelTree_arg1_0)) 0))
and ltGraph__d0 _lh_ltGraph_arg1_0 =
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
            (`LH_C((let rec _lh_sim_LH_P3_2_0 = ((map__d1 labelOf_0) _lh_ltGraph_Node_1_0) in
              (let rec _lh_sim_LH_P3_1_0 = _lh_ltGraph_LH_P2_1_0 in
                (let rec _lh_sim_LH_P3_0_0 = _lh_ltGraph_LH_P2_0_0 in
                  (fun _lh_sim_arg2_1 -> 
                    (match _lh_sim_arg2_1 with
                      | `LH_P2(_lh_sim_LH_P2_0_0, _lh_sim_LH_P2_1_0) -> 
                        (let rec rcs_0 = ((map__d0 _lh_sim_LH_P2_0_0) _lh_sim_LH_P3_2_0) in
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
                            (if (null__d0 ms_0) then
                              (`LH_P2(_lh_sim_LH_P2_0_0, ((mappend__d0 (let rec t_1_5 = (fun ys_1 -> 
                                ys_1) in
                                (let rec h_1_5 = (`LH_P3(_lh_sim_LH_P3_0_0, _lh_sim_LH_P3_1_0, rcs_0)) in
                                  (fun ys_2 -> 
                                    (`LH_C(h_1_5, ((mappend__d0 t_1_5) ys_2))))))) _lh_sim_LH_P2_1_0)))
                            else
                              (`LH_P2((((newlyDefined__d0 _lh_sim_LH_P3_0_0) (head__d0 ms_0)) _lh_sim_LH_P2_0_0), _lh_sim_LH_P2_1_0)))))
                      | _ -> 
                        (failwith "error")))))), (concat__d0 ((map__d2 ltGraph__d0) _lh_ltGraph_Node_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and map__d1 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map__d1 f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (fun f_1 -> 
            (`LH_C((f_1 h_1), ((map__d0 f_1) t_1))))))
    | `LH_N -> 
      (fun f_2 -> 
        (`LH_N)))
and map__d2 f_1_5 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_7, t_1_7) -> 
      (let rec t_1_8 = ((map__d2 f_1_5) t_1_7) in
        (let rec h_1_8 = (f_1_5 h_1_7) in
          (fun _lh_dummy_0 -> 
            ((mappend__d1 h_1_8) (concat__d0 t_1_8)))))
    | `LH_N -> 
      (fun _lh_dummy_1 -> 
        (`LH_N)))
and mmapl__d0 _lh_mmapl_arg1_0 _lh_mmapl_arg2_0 =
  (match _lh_mmapl_arg2_0 with
    | `LH_N -> 
      (retURN__d0 (`LH_N))
    | `LH_C(_lh_mmapl_LH_C_0_0, _lh_mmapl_LH_C_1_0) -> 
      ((bind__d2 (_lh_mmapl_arg1_0 _lh_mmapl_LH_C_0_0)) (fun b_0 -> 
        ((bind__d3 ((mmapl__d0 _lh_mmapl_arg1_0) _lh_mmapl_LH_C_1_0)) (fun bs_0 -> 
          (retURN__d1 (`LH_C(b_0, bs_0)))))))
    | _ -> 
      (failwith "error"))
and mult___d0 _lh_mult__arg1_1 _lh_mult__arg2_1 =
  (let rec _lh_label_Node_1_2_1 = (`LH_C(_lh_mult__arg1_1, (`LH_C(_lh_mult__arg2_1, (`LH_N))))) in
    (let rec _lh_label_Node_0_2_1 = (`LH_C('*', (`LH_N))) in
      (fun label_2_2 -> 
        ((bind__d0 (incr__d0 0)) (fun n_2_9 -> 
          ((bind__d1 ((mmapl__d0 label_2_2) _lh_label_Node_1_2_1)) (fun ts_2_1 -> 
            (retURN__d2 (`Node((`LH_P2(n_2_9, _lh_label_Node_0_2_1)), ts_2_1))))))))))
and mult___d1 _lh_mult__arg1_0 _lh_mult__arg2_0 =
  (let rec _lh_label_Node_1_1_8 = (`LH_C(_lh_mult__arg1_0, (`LH_C(_lh_mult__arg2_0, (`LH_N))))) in
    (let rec _lh_label_Node_0_1_8 = (`LH_C('*', (`LH_N))) in
      (fun label_1_9 -> 
        ((bind__d0 (incr__d0 0)) (fun n_2_6 -> 
          ((bind__d1 ((mmapl__d0 label_1_9) _lh_label_Node_1_1_8)) (fun ts_1_8 -> 
            (retURN__d2 (`Node((`LH_P2(n_2_6, _lh_label_Node_0_1_8)), ts_1_8))))))))))
and mult___d2 _lh_mult__arg1_2 _lh_mult__arg2_2 =
  (let rec _lh_label_Node_1_2_8 = (`LH_C(_lh_mult__arg1_2, (`LH_C(_lh_mult__arg2_2, (`LH_N))))) in
    (let rec _lh_label_Node_0_2_8 = (`LH_C('*', (`LH_N))) in
      (fun label_2_9 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_6 -> 
          ((bind__d1 ((mmapl__d0 label_2_9) _lh_label_Node_1_2_8)) (fun ts_2_8 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_6, _lh_label_Node_0_2_8)), ts_2_8))))))))))
and plus___d0 _lh_plus__arg1_5 _lh_plus__arg2_5 =
  (let rec _lh_label_Node_1_2_6 = (`LH_C(_lh_plus__arg1_5, (`LH_C(_lh_plus__arg2_5, (`LH_N))))) in
    (let rec _lh_label_Node_0_2_6 = (`LH_C('+', (`LH_N))) in
      (fun label_2_7 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_4 -> 
          ((bind__d1 ((mmapl__d0 label_2_7) _lh_label_Node_1_2_6)) (fun ts_2_6 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_4, _lh_label_Node_0_2_6)), ts_2_6))))))))))
and plus___d1 _lh_plus__arg1_0 _lh_plus__arg2_0 =
  (let rec _lh_label_Node_1_2 = (`LH_C(_lh_plus__arg1_0, (`LH_C(_lh_plus__arg2_0, (`LH_N))))) in
    (let rec _lh_label_Node_0_2 = (`LH_C('+', (`LH_N))) in
      (fun label_2 -> 
        ((bind__d0 (incr__d0 0)) (fun n_2 -> 
          ((bind__d1 ((mmapl__d0 label_2) _lh_label_Node_1_2)) (fun ts_2 -> 
            (retURN__d2 (`Node((`LH_P2(n_2, _lh_label_Node_0_2)), ts_2))))))))))
and plus___d2 _lh_plus__arg1_3 _lh_plus__arg2_3 =
  (let rec _lh_label_Node_1_1_4 = (`LH_C(_lh_plus__arg1_3, (`LH_C(_lh_plus__arg2_3, (`LH_N))))) in
    (let rec _lh_label_Node_0_1_4 = (`LH_C('+', (`LH_N))) in
      (fun label_1_4 -> 
        ((bind__d0 (incr__d0 0)) (fun n_2_2 -> 
          ((bind__d1 ((mmapl__d0 label_1_4) _lh_label_Node_1_1_4)) (fun ts_1_4 -> 
            (retURN__d2 (`Node((`LH_P2(n_2_2, _lh_label_Node_0_1_4)), ts_1_4))))))))))
and plus___d3 _lh_plus__arg1_6 _lh_plus__arg2_6 =
  (let rec _lh_label_Node_1_3_2 = (`LH_C(_lh_plus__arg1_6, (`LH_C(_lh_plus__arg2_6, (`LH_N))))) in
    (let rec _lh_label_Node_0_3_2 = (`LH_C('+', (`LH_N))) in
      (fun label_3_3 -> 
        ((bind__d0 (incr__d0 0)) (fun n_4_0 -> 
          ((bind__d1 ((mmapl__d0 label_3_3) _lh_label_Node_1_3_2)) (fun ts_3_2 -> 
            (retURN__d2 (`Node((`LH_P2(n_4_0, _lh_label_Node_0_3_2)), ts_3_2))))))))))
and plus___d4 _lh_plus__arg1_1 _lh_plus__arg2_1 =
  (let rec _lh_label_Node_1_8 = (`LH_C(_lh_plus__arg1_1, (`LH_C(_lh_plus__arg2_1, (`LH_N))))) in
    (let rec _lh_label_Node_0_8 = (`LH_C('+', (`LH_N))) in
      (fun label_8 -> 
        ((bind__d0 (incr__d0 0)) (fun n_8 -> 
          ((bind__d1 ((mmapl__d0 label_8) _lh_label_Node_1_8)) (fun ts_8 -> 
            (retURN__d2 (`Node((`LH_P2(n_8, _lh_label_Node_0_8)), ts_8))))))))))
and plus___d5 _lh_plus__arg1_4 _lh_plus__arg2_4 =
  (let rec _lh_label_Node_1_1_5 = (`LH_C(_lh_plus__arg1_4, (`LH_C(_lh_plus__arg2_4, (`LH_N))))) in
    (let rec _lh_label_Node_0_1_5 = (`LH_C('+', (`LH_N))) in
      (fun label_1_6 -> 
        ((bind__d0 (incr__d0 0)) (fun n_2_3 -> 
          ((bind__d1 ((mmapl__d0 label_1_6) _lh_label_Node_1_1_5)) (fun ts_1_5 -> 
            (retURN__d2 (`Node((`LH_P2(n_2_3, _lh_label_Node_0_1_5)), ts_1_5))))))))))
and plus___d6 _lh_plus__arg1_2 _lh_plus__arg2_2 =
  (let rec _lh_label_Node_1_1_2 = (`LH_C(_lh_plus__arg1_2, (`LH_C(_lh_plus__arg2_2, (`LH_N))))) in
    (let rec _lh_label_Node_0_1_2 = (`LH_C('+', (`LH_N))) in
      (fun label_1_2 -> 
        ((bind__d0 (incr__d0 0)) (fun n_1_9 -> 
          ((bind__d1 ((mmapl__d0 label_1_2) _lh_label_Node_1_1_2)) (fun ts_1_2 -> 
            (retURN__d2 (`Node((`LH_P2(n_1_9, _lh_label_Node_0_1_2)), ts_1_2))))))))))
and prod__d0 _lh_prod_arg1_0 =
  (let rec _lh_label_Node_1_2_2 = _lh_prod_arg1_0 in
    (let rec _lh_label_Node_0_2_2 = (`LH_C('X', (`LH_N))) in
      (fun label_2_3 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_0 -> 
          ((bind__d1 ((mmapl__d0 label_2_3) _lh_label_Node_1_2_2)) (fun ts_2_2 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_0, _lh_label_Node_0_2_2)), ts_2_2))))))))))
and prod__d1 _lh_prod_arg1_1 =
  (let rec _lh_label_Node_1_3_0 = _lh_prod_arg1_1 in
    (let rec _lh_label_Node_0_3_0 = (`LH_C('X', (`LH_N))) in
      (fun label_3_1 -> 
        ((bind__d0 (incr__d0 0)) (fun n_3_8 -> 
          ((bind__d1 ((mmapl__d0 label_3_1) _lh_label_Node_1_3_0)) (fun ts_3_0 -> 
            (retURN__d2 (`Node((`LH_P2(n_3_8, _lh_label_Node_0_3_0)), ts_3_0))))))))))
and testCse_nofib__d0 _lh_testCse_nofib_arg1_0 =
  ((map__d3 (fun i_1 -> 
    ((map__d4 cse__d0) ((take__d0 (i_1 mod 6)) (let rec t_3 = (let rec t_4 = (let rec t_5 = (let rec t_6 = (let rec t_7 = (let rec t_8 = (fun n_9 f_6 -> 
      (`LH_N)) in
      (let rec h_3 = (example5__d0 0) in
        (fun n_1_0 -> 
          (let rec t_9 = ((take__d0 (n_1_0 - 1)) t_8) in
            (let rec h_4 = h_3 in
              (fun f_7 -> 
                (`LH_C((f_7 h_4), ((map__d4 f_7) t_9))))))))) in
      (let rec h_5 = (example4__d0 0) in
        (fun n_1_1 -> 
          (let rec t_1_0 = ((take__d0 (n_1_1 - 1)) t_7) in
            (let rec h_6 = h_5 in
              (fun f_8 -> 
                (`LH_C((f_8 h_6), ((map__d4 f_8) t_1_0))))))))) in
      (let rec h_7 = (example3__d0 0) in
        (fun n_1_2 -> 
          (let rec t_1_1 = ((take__d0 (n_1_2 - 1)) t_6) in
            (let rec h_8 = h_7 in
              (fun f_9 -> 
                (`LH_C((f_9 h_8), ((map__d4 f_9) t_1_1))))))))) in
      (let rec h_9 = (example2__d0 0) in
        (fun n_1_3 -> 
          (let rec t_1_2 = ((take__d0 (n_1_3 - 1)) t_5) in
            (let rec h_1_0 = h_9 in
              (fun f_1_0 -> 
                (`LH_C((f_1_0 h_1_0), ((map__d4 f_1_0) t_1_2))))))))) in
      (let rec h_1_1 = (example1__d0 0) in
        (fun n_1_4 -> 
          (let rec t_1_3 = ((take__d0 (n_1_4 - 1)) t_4) in
            (let rec h_1_2 = h_1_1 in
              (fun f_1_1 -> 
                (`LH_C((f_1_1 h_1_2), ((map__d4 f_1_1) t_1_3))))))))) in
      (let rec h_1_3 = (example0__d0 0) in
        (fun n_1_5 -> 
          (let rec t_1_4 = ((take__d0 (n_1_5 - 1)) t_3) in
            (let rec h_1_4 = h_1_3 in
              (fun f_1_2 -> 
                (`LH_C((f_1_2 h_1_4), ((map__d4 f_1_2) t_1_4))))))))))))) ((enumFromTo__d0 1) _lh_testCse_nofib_arg1_0))
and zerO__d0 _lh_zerO_arg1_0 =
  (match _lh_zerO_arg1_0 with
    | 0 -> 
      (let rec _lh_label_Node_1_7 = (`LH_N) in
        (let rec _lh_label_Node_0_7 = (`LH_C('0', (`LH_N))) in
          (fun label_7 -> 
            ((bind__d0 (incr__d0 0)) (fun n_7 -> 
              ((bind__d1 ((mmapl__d0 label_7) _lh_label_Node_1_7)) (fun ts_7 -> 
                (retURN__d2 (`Node((`LH_P2(n_7, _lh_label_Node_0_7)), ts_7))))))))))
    | _ -> 
      (failwith "error"))
and zerO__d1 _lh_zerO_arg1_1 =
  (match _lh_zerO_arg1_1 with
    | 0 -> 
      (let rec _lh_label_Node_1_1_7 = (`LH_N) in
        (let rec _lh_label_Node_0_1_7 = (`LH_C('0', (`LH_N))) in
          (fun label_1_8 -> 
            ((bind__d0 (incr__d0 0)) (fun n_2_5 -> 
              ((bind__d1 ((mmapl__d0 label_1_8) _lh_label_Node_1_1_7)) (fun ts_1_7 -> 
                (retURN__d2 (`Node((`LH_P2(n_2_5, _lh_label_Node_0_1_7)), ts_1_7))))))))))
    | _ -> 
      (failwith "error"));;
end;;

