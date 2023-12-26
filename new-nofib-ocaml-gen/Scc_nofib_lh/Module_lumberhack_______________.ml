

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________ = struct
let rec dfs_lh__d1_d0__d0 _lh_dfs_arg1_1_8 _lh_dfs_arg2_1_0 _lh_dfs_arg3_1_6 =
  ((_lh_dfs_arg2_1_0 _lh_dfs_arg1_1_8) _lh_dfs_arg3_1_6);;
let rec dfs_lh__d1_d1__d0 _lh_dfs_arg1_2_1 _lh_dfs_arg2_1_2 _lh_dfs_arg3_1_9 =
  ((_lh_dfs_arg2_1_2 _lh_dfs_arg1_2_1) _lh_dfs_arg3_1_9);;
let rec dfs_lh__d3__d0 _lh_dfs_arg1_2 _lh_dfs_arg2_2 _lh_dfs_arg3_2 =
  ((_lh_dfs_arg2_2 _lh_dfs_arg1_2) _lh_dfs_arg3_2);;
let rec dfs_lh__d1_d7__d0 _lh_dfs_arg1_5_1 _lh_dfs_arg2_1_3 _lh_dfs_arg3_4_1 =
  ((_lh_dfs_arg2_1_3 _lh_dfs_arg1_5_1) _lh_dfs_arg3_4_1);;
let rec inList_lh__d4__d0 _lh_inList_arg1_4 _lh_inList_arg2_4 =
  (match _lh_inList_arg2_4 with
    | `LH_C(_lh_inList_LH_C_0_4, _lh_inList_LH_C_1_4) -> 
      (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_4) then
        true
      else
        ((inList_lh__d4__d0 _lh_inList_arg1_4) _lh_inList_LH_C_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec dfs_lh__d2_d1__d1 _lh_dfs_arg1_6_4 _lh_dfs_arg2_2_4 _lh_dfs_arg3_5_4 =
  ((_lh_dfs_arg2_2_4 _lh_dfs_arg1_6_4) _lh_dfs_arg3_5_4);;
let rec inList_lh__d7__d1 _lh_inList_arg1_1_0 _lh_inList_arg2_1_0 =
  (match _lh_inList_arg2_1_0 with
    | `LH_C(_lh_inList_LH_C_0_1_0, _lh_inList_LH_C_1_1_0) -> 
      (if (_lh_inList_arg1_1_0 = _lh_inList_LH_C_0_1_0) then
        true
      else
        ((inList_lh__d7__d1 _lh_inList_arg1_1_0) _lh_inList_LH_C_1_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1__d0 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_6, t_5) -> 
      (let rec _lh_span_tree_LH_C_1_3 = ((mappend_lh__d1__d0 t_5) ys_4) in
        (let rec _lh_span_tree_LH_C_0_3 = h_6 in
          (fun _lh_span_tree_LH_P2_0_8 _lh_span_tree_LH_P2_1_8 _lh_span_tree_arg1_5 span_tree_5 -> 
            (if ((inList_lh__d7__d1 _lh_span_tree_LH_C_0_3) _lh_span_tree_LH_P2_0_8) then
              (((span_tree_5 _lh_span_tree_arg1_5) (`LH_P2(_lh_span_tree_LH_P2_0_8, _lh_span_tree_LH_P2_1_8))) _lh_span_tree_LH_C_1_3)
            else
              (let rec _lh_matchIdent_1_1 = (((dfs_lh__d2_d1__d1 _lh_span_tree_arg1_5) (let rec _lh_dfs_LH_P2_1_4_6 = (`LH_N) in
                (let rec _lh_dfs_LH_P2_0_4_6 = (`LH_C(_lh_span_tree_LH_C_0_3, _lh_span_tree_LH_P2_0_8)) in
                  (fun _lh_dfs_arg1_5_3 _lh_dfs_arg3_4_3 -> 
                    (((_lh_dfs_arg3_4_3 _lh_dfs_LH_P2_0_4_6) _lh_dfs_LH_P2_1_4_6) _lh_dfs_arg1_5_3))))) (_lh_span_tree_arg1_5 _lh_span_tree_LH_C_0_3)) in
                (match _lh_matchIdent_1_1 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_9, _lh_span_tree_LH_P2_1_9) -> 
                    (((span_tree_5 _lh_span_tree_arg1_5) (`LH_P2(_lh_span_tree_LH_P2_0_9, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_3, _lh_span_tree_LH_P2_1_9)), _lh_span_tree_LH_P2_1_8))))) _lh_span_tree_LH_C_1_3)
                  | _ -> 
                    (failwith "error")))))))
    | `LH_N -> 
      ys_4);;
let rec snd_lh__d0__d0 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec snd_lh__d1__d0 _lh_snd_arg1_1 =
  _lh_snd_arg1_1;;
let rec map_lh__d0__d0 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d0__d0 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec dfs_lh__d2_d4__d0 _lh_dfs_arg1_6_1 _lh_dfs_arg2_2_1 _lh_dfs_arg3_5_1 =
  ((_lh_dfs_arg2_2_1 _lh_dfs_arg1_6_1) _lh_dfs_arg3_5_1);;
let rec dfs_lh__d2_d5__d0 _lh_dfs_arg1_6_8 _lh_dfs_arg2_2_7 _lh_dfs_arg3_5_8 =
  ((_lh_dfs_arg2_2_7 _lh_dfs_arg1_6_8) _lh_dfs_arg3_5_8);;
let rec dfs_lh__d2_d2__d0 _lh_dfs_arg1_1_4 _lh_dfs_arg2_7 _lh_dfs_arg3_1_2 =
  ((_lh_dfs_arg2_7 _lh_dfs_arg1_1_4) _lh_dfs_arg3_1_2);;
let rec mappend_lh__d7__d0 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d7__d0 t_2) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec dfs_lh__d2_d3__d0 _lh_dfs_arg1_5_4 _lh_dfs_arg2_1_5 _lh_dfs_arg3_4_4 =
  ((_lh_dfs_arg2_1_5 _lh_dfs_arg1_5_4) _lh_dfs_arg3_4_4);;
let rec inList_lh__d8__d0 _lh_inList_arg1_5 _lh_inList_arg2_5 =
  (match _lh_inList_arg2_5 with
    | `LH_C(_lh_inList_LH_C_0_5, _lh_inList_LH_C_1_5) -> 
      (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_5) then
        true
      else
        ((inList_lh__d8__d0 _lh_inList_arg1_5) _lh_inList_LH_C_1_5))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec stronglyConnComp_lh__d0__d0 _lh_stronglyConnComp_arg1_0 _lh_stronglyConnComp_arg2_0 =
  let rec new_range_0 = (fun _lh_new_range_arg1_0 _lh_new_range_arg2_0 -> 
    (match _lh_new_range_arg1_0 with
      | `LH_N -> 
        (fun _lh_dfs_LH_P2_0_0 _lh_dfs_LH_P2_1_0 _lh_dfs_arg1_4 -> 
          (`LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0)))
      | `LH_C(_lh_new_range_LH_C_0_0, _lh_new_range_LH_C_1_0) -> 
        (match _lh_new_range_LH_C_0_0 with
          | `LH_P2(_lh_new_range_LH_P2_0_0, _lh_new_range_LH_P2_1_0) -> 
            (if (_lh_new_range_LH_P2_0_0 = _lh_new_range_arg2_0) then
              (let rec _lh_dfs_LH_C_1_0 = ((new_range_0 _lh_new_range_LH_C_1_0) _lh_new_range_arg2_0) in
                (let rec _lh_dfs_LH_C_0_0 = _lh_new_range_LH_P2_1_0 in
                  (fun _lh_dfs_LH_P2_0_1 _lh_dfs_LH_P2_1_1 _lh_dfs_arg1_5 -> 
                    (if ((inList_lh__d8__d0 _lh_dfs_LH_C_0_0) _lh_dfs_LH_P2_0_1) then
                      (((dfs_lh__d2_d2__d0 _lh_dfs_arg1_5) (let rec _lh_dfs_LH_P2_1_2 = _lh_dfs_LH_P2_1_1 in
                        (let rec _lh_dfs_LH_P2_0_2 = _lh_dfs_LH_P2_0_1 in
                          (fun _lh_dfs_arg1_6 _lh_dfs_arg3_4 -> 
                            (((_lh_dfs_arg3_4 _lh_dfs_LH_P2_0_2) _lh_dfs_LH_P2_1_2) _lh_dfs_arg1_6))))) _lh_dfs_LH_C_1_0)
                    else
                      (let rec _lh_matchIdent_0 = (((dfs_lh__d2_d3__d0 _lh_dfs_arg1_5) (let rec _lh_dfs_LH_P2_1_3 = (`LH_N) in
                        (let rec _lh_dfs_LH_P2_0_3 = (`LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_P2_0_1)) in
                          (fun _lh_dfs_arg1_7 _lh_dfs_arg3_5 -> 
                            (((_lh_dfs_arg3_5 _lh_dfs_LH_P2_0_3) _lh_dfs_LH_P2_1_3) _lh_dfs_arg1_7))))) (_lh_dfs_arg1_5 _lh_dfs_LH_C_0_0)) in
                        (match _lh_matchIdent_0 with
                          | `LH_P2(_lh_dfs_LH_P2_0_4, _lh_dfs_LH_P2_1_4) -> 
                            (((dfs_lh__d2_d4__d0 _lh_dfs_arg1_5) (let rec _lh_dfs_LH_P2_1_5 = ((mappend_lh__d7__d0 (`LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_P2_1_4))) _lh_dfs_LH_P2_1_1) in
                              (let rec _lh_dfs_LH_P2_0_5 = _lh_dfs_LH_P2_0_4 in
                                (fun _lh_dfs_arg1_8 _lh_dfs_arg3_6 -> 
                                  (((_lh_dfs_arg3_6 _lh_dfs_LH_P2_0_5) _lh_dfs_LH_P2_1_5) _lh_dfs_arg1_8))))) _lh_dfs_LH_C_1_0)
                          | _ -> 
                            (failwith "error")))))))
            else
              ((new_range_0 _lh_new_range_LH_C_1_0) _lh_new_range_arg2_0))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  and span_tree_0 = (fun _lh_span_tree_arg1_0 _lh_span_tree_arg2_0 _lh_span_tree_arg3_0 -> 
    (match _lh_span_tree_arg2_0 with
      | `LH_P2(_lh_span_tree_LH_P2_0_0, _lh_span_tree_LH_P2_1_0) -> 
        ((((_lh_span_tree_arg3_0 _lh_span_tree_LH_P2_0_0) _lh_span_tree_LH_P2_1_0) _lh_span_tree_arg1_0) span_tree_0)
      | _ -> 
        (failwith "error")))
  and swap_0 = (fun _lh_swap_arg1_0 -> 
    (match _lh_swap_arg1_0 with
      | `LH_P2(_lh_swap_LH_P2_0_0, _lh_swap_LH_P2_1_0) -> 
        (`LH_P2(_lh_swap_LH_P2_1_0, _lh_swap_LH_P2_0_0))
      | _ -> 
        (failwith "error")))
  in (snd_lh__d0__d0 (((span_tree_0 (new_range_0 ((map_lh__d0__d0 swap_0) _lh_stronglyConnComp_arg1_0))) (`LH_P2((`LH_N), (`LH_N)))) (snd_lh__d1__d0 (((dfs_lh__d2_d5__d0 (new_range_0 _lh_stronglyConnComp_arg1_0)) (let rec _lh_dfs_LH_P2_1_6 = (fun _lh_span_tree_LH_P2_0_1 _lh_span_tree_LH_P2_1_1 _lh_span_tree_arg1_1 span_tree_1 -> 
    (`LH_P2(_lh_span_tree_LH_P2_0_1, _lh_span_tree_LH_P2_1_1))) in
    (let rec _lh_dfs_LH_P2_0_6 = (`LH_N) in
      (fun _lh_dfs_arg1_9 _lh_dfs_arg3_7 -> 
        (((_lh_dfs_arg3_7 _lh_dfs_LH_P2_0_6) _lh_dfs_LH_P2_1_6) _lh_dfs_arg1_9))))) _lh_stronglyConnComp_arg2_0))));;
let rec dfs_lh__d1_d3__d0 _lh_dfs_arg1_1_0 _lh_dfs_arg2_4 _lh_dfs_arg3_8 =
  ((_lh_dfs_arg2_4 _lh_dfs_arg1_1_0) _lh_dfs_arg3_8);;
let rec inList_lh__d2__d0 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList_lh__d2__d0 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList_lh__d7__d6 _lh_inList_arg1_3 _lh_inList_arg2_3 =
  (match _lh_inList_arg2_3 with
    | `LH_C(_lh_inList_LH_C_0_3, _lh_inList_LH_C_1_3) -> 
      (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_3) then
        true
      else
        ((inList_lh__d7__d6 _lh_inList_arg1_3) _lh_inList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec dfs_lh__d2_d1__d6 _lh_dfs_arg1_1_5 _lh_dfs_arg2_8 _lh_dfs_arg3_1_3 =
  ((_lh_dfs_arg2_8 _lh_dfs_arg1_1_5) _lh_dfs_arg3_1_3);;
let rec mappend_lh__d6__d0 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (let rec _lh_span_tree_LH_C_1_0 = ((mappend_lh__d6__d0 t_1) ys_0) in
        (let rec _lh_span_tree_LH_C_0_0 = h_1 in
          (fun _lh_span_tree_LH_P2_0_2 _lh_span_tree_LH_P2_1_2 _lh_span_tree_arg1_2 span_tree_2 -> 
            (if ((inList_lh__d7__d6 _lh_span_tree_LH_C_0_0) _lh_span_tree_LH_P2_0_2) then
              (((span_tree_2 _lh_span_tree_arg1_2) (`LH_P2(_lh_span_tree_LH_P2_0_2, _lh_span_tree_LH_P2_1_2))) _lh_span_tree_LH_C_1_0)
            else
              (let rec _lh_matchIdent_1 = (((dfs_lh__d2_d1__d6 _lh_span_tree_arg1_2) (let rec _lh_dfs_LH_P2_1_7 = (`LH_N) in
                (let rec _lh_dfs_LH_P2_0_7 = (`LH_C(_lh_span_tree_LH_C_0_0, _lh_span_tree_LH_P2_0_2)) in
                  (fun _lh_dfs_arg1_1_1 _lh_dfs_arg3_9 -> 
                    (((_lh_dfs_arg3_9 _lh_dfs_LH_P2_0_7) _lh_dfs_LH_P2_1_7) _lh_dfs_arg1_1_1))))) (_lh_span_tree_arg1_2 _lh_span_tree_LH_C_0_0)) in
                (match _lh_matchIdent_1 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_3, _lh_span_tree_LH_P2_1_3) -> 
                    (((span_tree_2 _lh_span_tree_arg1_2) (`LH_P2(_lh_span_tree_LH_P2_0_3, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_0, _lh_span_tree_LH_P2_1_3)), _lh_span_tree_LH_P2_1_2))))) _lh_span_tree_LH_C_1_0)
                  | _ -> 
                    (failwith "error")))))))
    | `LH_N -> 
      ys_0);;
let rec dfs_lh__d1_d6__d0 _lh_dfs_arg1_1_2 _lh_dfs_arg2_5 _lh_dfs_arg3_1_0 =
  ((_lh_dfs_arg2_5 _lh_dfs_arg1_1_2) _lh_dfs_arg3_1_0);;
let rec dfs_lh__d1_d5__d0 _lh_dfs_arg1_1_3 _lh_dfs_arg2_6 _lh_dfs_arg3_1_1 =
  ((_lh_dfs_arg2_6 _lh_dfs_arg1_1_3) _lh_dfs_arg3_1_1);;
let rec dfs_lh__d9__d0 _lh_dfs_arg1_1_6 _lh_dfs_arg2_9 _lh_dfs_arg3_1_4 =
  ((_lh_dfs_arg2_9 _lh_dfs_arg1_1_6) _lh_dfs_arg3_1_4);;
let rec inList_lh__d7__d4 _lh_inList_arg1_7 _lh_inList_arg2_7 =
  (match _lh_inList_arg2_7 with
    | `LH_C(_lh_inList_LH_C_0_7, _lh_inList_LH_C_1_7) -> 
      (if (_lh_inList_arg1_7 = _lh_inList_LH_C_0_7) then
        true
      else
        ((inList_lh__d7__d4 _lh_inList_arg1_7) _lh_inList_LH_C_1_7))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec dfs_lh__d2_d1__d4 _lh_dfs_arg1_3 _lh_dfs_arg2_3 _lh_dfs_arg3_3 =
  ((_lh_dfs_arg2_3 _lh_dfs_arg1_3) _lh_dfs_arg3_3);;
let rec mappend_lh__d4__d0 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_3, t_3) -> 
      (let rec _lh_span_tree_LH_C_1_1 = ((mappend_lh__d4__d0 t_3) ys_2) in
        (let rec _lh_span_tree_LH_C_0_1 = h_3 in
          (fun _lh_span_tree_LH_P2_0_4 _lh_span_tree_LH_P2_1_4 _lh_span_tree_arg1_3 span_tree_3 -> 
            (if ((inList_lh__d7__d4 _lh_span_tree_LH_C_0_1) _lh_span_tree_LH_P2_0_4) then
              (((span_tree_3 _lh_span_tree_arg1_3) (`LH_P2(_lh_span_tree_LH_P2_0_4, _lh_span_tree_LH_P2_1_4))) _lh_span_tree_LH_C_1_1)
            else
              (let rec _lh_matchIdent_2 = (((dfs_lh__d2_d1__d4 _lh_span_tree_arg1_3) (let rec _lh_dfs_LH_P2_1_8 = (`LH_N) in
                (let rec _lh_dfs_LH_P2_0_8 = (`LH_C(_lh_span_tree_LH_C_0_1, _lh_span_tree_LH_P2_0_4)) in
                  (fun _lh_dfs_arg1_1_7 _lh_dfs_arg3_1_5 -> 
                    (((_lh_dfs_arg3_1_5 _lh_dfs_LH_P2_0_8) _lh_dfs_LH_P2_1_8) _lh_dfs_arg1_1_7))))) (_lh_span_tree_arg1_3 _lh_span_tree_LH_C_0_1)) in
                (match _lh_matchIdent_2 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_5, _lh_span_tree_LH_P2_1_5) -> 
                    (((span_tree_3 _lh_span_tree_arg1_3) (`LH_P2(_lh_span_tree_LH_P2_0_5, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_1, _lh_span_tree_LH_P2_1_5)), _lh_span_tree_LH_P2_1_4))))) _lh_span_tree_LH_C_1_1)
                  | _ -> 
                    (failwith "error")))))))
    | `LH_N -> 
      ys_2);;
let rec inList_lh__d7__d5 _lh_inList_arg1_1_4 _lh_inList_arg2_1_4 =
  (match _lh_inList_arg2_1_4 with
    | `LH_C(_lh_inList_LH_C_0_1_4, _lh_inList_LH_C_1_1_4) -> 
      (if (_lh_inList_arg1_1_4 = _lh_inList_LH_C_0_1_4) then
        true
      else
        ((inList_lh__d7__d5 _lh_inList_arg1_1_4) _lh_inList_LH_C_1_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec dfs_lh__d2_d1__d5 _lh_dfs_arg1_1 _lh_dfs_arg2_1 _lh_dfs_arg3_1 =
  ((_lh_dfs_arg2_1 _lh_dfs_arg1_1) _lh_dfs_arg3_1);;
let rec mappend_lh__d5__d0 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_4, t_4) -> 
      (let rec _lh_span_tree_LH_C_1_2 = ((mappend_lh__d5__d0 t_4) ys_3) in
        (let rec _lh_span_tree_LH_C_0_2 = h_4 in
          (fun _lh_span_tree_LH_P2_0_6 _lh_span_tree_LH_P2_1_6 _lh_span_tree_arg1_4 span_tree_4 -> 
            (if ((inList_lh__d7__d5 _lh_span_tree_LH_C_0_2) _lh_span_tree_LH_P2_0_6) then
              (((span_tree_4 _lh_span_tree_arg1_4) (`LH_P2(_lh_span_tree_LH_P2_0_6, _lh_span_tree_LH_P2_1_6))) _lh_span_tree_LH_C_1_2)
            else
              (let rec _lh_matchIdent_3 = (((dfs_lh__d2_d1__d5 _lh_span_tree_arg1_4) (let rec _lh_dfs_LH_P2_1_9 = (`LH_N) in
                (let rec _lh_dfs_LH_P2_0_9 = (`LH_C(_lh_span_tree_LH_C_0_2, _lh_span_tree_LH_P2_0_6)) in
                  (fun _lh_dfs_arg1_1_9 _lh_dfs_arg3_1_7 -> 
                    (((_lh_dfs_arg3_1_7 _lh_dfs_LH_P2_0_9) _lh_dfs_LH_P2_1_9) _lh_dfs_arg1_1_9))))) (_lh_span_tree_arg1_4 _lh_span_tree_LH_C_0_2)) in
                (match _lh_matchIdent_3 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_7, _lh_span_tree_LH_P2_1_7) -> 
                    (((span_tree_4 _lh_span_tree_arg1_4) (`LH_P2(_lh_span_tree_LH_P2_0_7, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_2, _lh_span_tree_LH_P2_1_7)), _lh_span_tree_LH_P2_1_6))))) _lh_span_tree_LH_C_1_2)
                  | _ -> 
                    (failwith "error")))))))
    | `LH_N -> 
      ys_3);;
let rec dfs_lh__d0__d0 _lh_dfs_arg1_2_0 _lh_dfs_arg2_1_1 _lh_dfs_arg3_1_8 =
  ((_lh_dfs_arg2_1_1 _lh_dfs_arg1_2_0) _lh_dfs_arg3_1_8);;
let rec inList_lh__d6__d0 _lh_inList_arg1_6 _lh_inList_arg2_6 =
  (match _lh_inList_arg2_6 with
    | `LH_C(_lh_inList_LH_C_0_6, _lh_inList_LH_C_1_6) -> 
      (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_6) then
        true
      else
        ((inList_lh__d6__d0 _lh_inList_arg1_6) _lh_inList_LH_C_1_6))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec dfs_lh__d2_d1__d0 _lh_dfs_arg1_5_2 _lh_dfs_arg2_1_4 _lh_dfs_arg3_4_2 =
  ((_lh_dfs_arg2_1_4 _lh_dfs_arg1_5_2) _lh_dfs_arg3_4_2);;
let rec inList_lh__d7__d0 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh__d7__d0 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d0__d0 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_7, t_6) -> 
      (let rec _lh_span_tree_LH_C_1_4 = ((mappend_lh__d0__d0 t_6) ys_5) in
        (let rec _lh_span_tree_LH_C_0_4 = h_7 in
          (fun _lh_span_tree_LH_P2_0_1_0 _lh_span_tree_LH_P2_1_1_0 _lh_span_tree_arg1_6 span_tree_6 -> 
            (if ((inList_lh__d7__d0 _lh_span_tree_LH_C_0_4) _lh_span_tree_LH_P2_0_1_0) then
              (((span_tree_6 _lh_span_tree_arg1_6) (`LH_P2(_lh_span_tree_LH_P2_0_1_0, _lh_span_tree_LH_P2_1_1_0))) _lh_span_tree_LH_C_1_4)
            else
              (let rec _lh_matchIdent_1_2 = (((dfs_lh__d2_d1__d0 _lh_span_tree_arg1_6) (let rec _lh_dfs_LH_P2_1_4_7 = (`LH_N) in
                (let rec _lh_dfs_LH_P2_0_4_7 = (`LH_C(_lh_span_tree_LH_C_0_4, _lh_span_tree_LH_P2_0_1_0)) in
                  (fun _lh_dfs_arg1_5_5 _lh_dfs_arg3_4_5 -> 
                    (((_lh_dfs_arg3_4_5 _lh_dfs_LH_P2_0_4_7) _lh_dfs_LH_P2_1_4_7) _lh_dfs_arg1_5_5))))) (_lh_span_tree_arg1_6 _lh_span_tree_LH_C_0_4)) in
                (match _lh_matchIdent_1_2 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_1_1, _lh_span_tree_LH_P2_1_1_1) -> 
                    (((span_tree_6 _lh_span_tree_arg1_6) (`LH_P2(_lh_span_tree_LH_P2_0_1_1, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_4, _lh_span_tree_LH_P2_1_1_1)), _lh_span_tree_LH_P2_1_1_0))))) _lh_span_tree_LH_C_1_4)
                  | _ -> 
                    (failwith "error")))))))
    | `LH_N -> 
      ys_5);;
let rec dfs_lh__d1_d9__d0 _lh_dfs_arg1_5_6 _lh_dfs_arg2_1_6 _lh_dfs_arg3_4_6 =
  ((_lh_dfs_arg2_1_6 _lh_dfs_arg1_5_6) _lh_dfs_arg3_4_6);;
let rec dfs_lh__d5__d0 _lh_dfs_arg1_5_8 _lh_dfs_arg2_1_8 _lh_dfs_arg3_4_8 =
  ((_lh_dfs_arg2_1_8 _lh_dfs_arg1_5_8) _lh_dfs_arg3_4_8);;
let rec dfs_lh__d1__d0 _lh_dfs_arg1_5_9 _lh_dfs_arg2_1_9 _lh_dfs_arg3_4_9 =
  ((_lh_dfs_arg2_1_9 _lh_dfs_arg1_5_9) _lh_dfs_arg3_4_9);;
let rec dfs_lh__d6__d0 _lh_dfs_arg1_6_0 _lh_dfs_arg2_2_0 _lh_dfs_arg3_5_0 =
  ((_lh_dfs_arg2_2_0 _lh_dfs_arg1_6_0) _lh_dfs_arg3_5_0);;
let rec dfs_lh__d7__d0 _lh_dfs_arg1_6_2 _lh_dfs_arg2_2_2 _lh_dfs_arg3_5_2 =
  ((_lh_dfs_arg2_2_2 _lh_dfs_arg1_6_2) _lh_dfs_arg3_5_2);;
let rec dfs_lh__d2_d0__d0 _lh_dfs_arg1_6_3 _lh_dfs_arg2_2_3 _lh_dfs_arg3_5_3 =
  ((_lh_dfs_arg2_2_3 _lh_dfs_arg1_6_3) _lh_dfs_arg3_5_3);;
let rec dfs_lh__d1_d4__d0 _lh_dfs_arg1_6_5 _lh_dfs_arg2_2_5 _lh_dfs_arg3_5_5 =
  ((_lh_dfs_arg2_2_5 _lh_dfs_arg1_6_5) _lh_dfs_arg3_5_5);;
let rec inList_lh__d7__d3 _lh_inList_arg1_1_3 _lh_inList_arg2_1_3 =
  (match _lh_inList_arg2_1_3 with
    | `LH_C(_lh_inList_LH_C_0_1_3, _lh_inList_LH_C_1_1_3) -> 
      (if (_lh_inList_arg1_1_3 = _lh_inList_LH_C_0_1_3) then
        true
      else
        ((inList_lh__d7__d3 _lh_inList_arg1_1_3) _lh_inList_LH_C_1_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec dfs_lh__d2_d1__d3 _lh_dfs_arg1_5_7 _lh_dfs_arg2_1_7 _lh_dfs_arg3_4_7 =
  ((_lh_dfs_arg2_1_7 _lh_dfs_arg1_5_7) _lh_dfs_arg3_4_7);;
let rec mappend_lh__d3__d0 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_8, t_7) -> 
      (let rec _lh_span_tree_LH_C_1_5 = ((mappend_lh__d3__d0 t_7) ys_6) in
        (let rec _lh_span_tree_LH_C_0_5 = h_8 in
          (fun _lh_span_tree_LH_P2_0_1_2 _lh_span_tree_LH_P2_1_1_2 _lh_span_tree_arg1_7 span_tree_7 -> 
            (if ((inList_lh__d7__d3 _lh_span_tree_LH_C_0_5) _lh_span_tree_LH_P2_0_1_2) then
              (((span_tree_7 _lh_span_tree_arg1_7) (`LH_P2(_lh_span_tree_LH_P2_0_1_2, _lh_span_tree_LH_P2_1_1_2))) _lh_span_tree_LH_C_1_5)
            else
              (let rec _lh_matchIdent_1_3 = (((dfs_lh__d2_d1__d3 _lh_span_tree_arg1_7) (let rec _lh_dfs_LH_P2_1_4_8 = (`LH_N) in
                (let rec _lh_dfs_LH_P2_0_4_8 = (`LH_C(_lh_span_tree_LH_C_0_5, _lh_span_tree_LH_P2_0_1_2)) in
                  (fun _lh_dfs_arg1_6_6 _lh_dfs_arg3_5_6 -> 
                    (((_lh_dfs_arg3_5_6 _lh_dfs_LH_P2_0_4_8) _lh_dfs_LH_P2_1_4_8) _lh_dfs_arg1_6_6))))) (_lh_span_tree_arg1_7 _lh_span_tree_LH_C_0_5)) in
                (match _lh_matchIdent_1_3 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_1_3, _lh_span_tree_LH_P2_1_1_3) -> 
                    (((span_tree_7 _lh_span_tree_arg1_7) (`LH_P2(_lh_span_tree_LH_P2_0_1_3, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_5, _lh_span_tree_LH_P2_1_1_3)), _lh_span_tree_LH_P2_1_1_2))))) _lh_span_tree_LH_C_1_5)
                  | _ -> 
                    (failwith "error")))))))
    | `LH_N -> 
      ys_6);;
let rec dfs_lh__d2__d0 _lh_dfs_arg1_6_7 _lh_dfs_arg2_2_6 _lh_dfs_arg3_5_7 =
  ((_lh_dfs_arg2_2_6 _lh_dfs_arg1_6_7) _lh_dfs_arg3_5_7);;
let rec inList_lh__d1__d0 _lh_inList_arg1_8 _lh_inList_arg2_8 =
  (match _lh_inList_arg2_8 with
    | `LH_C(_lh_inList_LH_C_0_8, _lh_inList_LH_C_1_8) -> 
      (if (_lh_inList_arg1_8 = _lh_inList_LH_C_0_8) then
        true
      else
        ((inList_lh__d1__d0 _lh_inList_arg1_8) _lh_inList_LH_C_1_8))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList_lh__d5__d0 _lh_inList_arg1_9 _lh_inList_arg2_9 =
  (match _lh_inList_arg2_9 with
    | `LH_C(_lh_inList_LH_C_0_9, _lh_inList_LH_C_1_9) -> 
      (if (_lh_inList_arg1_9 = _lh_inList_LH_C_0_9) then
        true
      else
        ((inList_lh__d5__d0 _lh_inList_arg1_9) _lh_inList_LH_C_1_9))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList_lh__d3__d0 _lh_inList_arg1_1_1 _lh_inList_arg2_1_1 =
  (match _lh_inList_arg2_1_1 with
    | `LH_C(_lh_inList_LH_C_0_1_1, _lh_inList_LH_C_1_1_1) -> 
      (if (_lh_inList_arg1_1_1 = _lh_inList_LH_C_0_1_1) then
        true
      else
        ((inList_lh__d3__d0 _lh_inList_arg1_1_1) _lh_inList_LH_C_1_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec dfs_lh__d8__d0 _lh_dfs_arg1_6_9 _lh_dfs_arg2_2_8 _lh_dfs_arg3_5_9 =
  ((_lh_dfs_arg2_2_8 _lh_dfs_arg1_6_9) _lh_dfs_arg3_5_9);;
let rec inList_lh__d0__d0 _lh_inList_arg1_1_2 _lh_inList_arg2_1_2 =
  (match _lh_inList_arg2_1_2 with
    | `LH_C(_lh_inList_LH_C_0_1_2, _lh_inList_LH_C_1_1_2) -> 
      (if (_lh_inList_arg1_1_2 = _lh_inList_LH_C_0_1_2) then
        true
      else
        ((inList_lh__d0__d0 _lh_inList_arg1_1_2) _lh_inList_LH_C_1_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec dfs_lh__d1_d8__d0 _lh_dfs_arg1_7_0 _lh_dfs_arg2_2_9 _lh_dfs_arg3_6_0 =
  ((_lh_dfs_arg2_2_9 _lh_dfs_arg1_7_0) _lh_dfs_arg3_6_0);;
let rec dfs_lh__d2_d1__d2 _lh_dfs_arg1_0 _lh_dfs_arg2_0 _lh_dfs_arg3_0 =
  ((_lh_dfs_arg2_0 _lh_dfs_arg1_0) _lh_dfs_arg3_0);;
let rec inList_lh__d7__d2 _lh_inList_arg1_2 _lh_inList_arg2_2 =
  (match _lh_inList_arg2_2 with
    | `LH_C(_lh_inList_LH_C_0_2, _lh_inList_LH_C_1_2) -> 
      (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_2) then
        true
      else
        ((inList_lh__d7__d2 _lh_inList_arg1_2) _lh_inList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2__d0 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_9, t_8) -> 
      (let rec _lh_span_tree_LH_C_1_6 = ((mappend_lh__d2__d0 t_8) ys_7) in
        (let rec _lh_span_tree_LH_C_0_6 = h_9 in
          (fun _lh_span_tree_LH_P2_0_1_4 _lh_span_tree_LH_P2_1_1_4 _lh_span_tree_arg1_8 span_tree_8 -> 
            (if ((inList_lh__d7__d2 _lh_span_tree_LH_C_0_6) _lh_span_tree_LH_P2_0_1_4) then
              (((span_tree_8 _lh_span_tree_arg1_8) (`LH_P2(_lh_span_tree_LH_P2_0_1_4, _lh_span_tree_LH_P2_1_1_4))) _lh_span_tree_LH_C_1_6)
            else
              (let rec _lh_matchIdent_1_4 = (((dfs_lh__d2_d1__d2 _lh_span_tree_arg1_8) (let rec _lh_dfs_LH_P2_1_4_9 = (`LH_N) in
                (let rec _lh_dfs_LH_P2_0_4_9 = (`LH_C(_lh_span_tree_LH_C_0_6, _lh_span_tree_LH_P2_0_1_4)) in
                  (fun _lh_dfs_arg1_7_1 _lh_dfs_arg3_6_1 -> 
                    (((_lh_dfs_arg3_6_1 _lh_dfs_LH_P2_0_4_9) _lh_dfs_LH_P2_1_4_9) _lh_dfs_arg1_7_1))))) (_lh_span_tree_arg1_8 _lh_span_tree_LH_C_0_6)) in
                (match _lh_matchIdent_1_4 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_1_5, _lh_span_tree_LH_P2_1_1_5) -> 
                    (((span_tree_8 _lh_span_tree_arg1_8) (`LH_P2(_lh_span_tree_LH_P2_0_1_5, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_6, _lh_span_tree_LH_P2_1_1_5)), _lh_span_tree_LH_P2_1_1_4))))) _lh_span_tree_LH_C_1_6)
                  | _ -> 
                    (failwith "error")))))))
    | `LH_N -> 
      ys_7);;
let rec dfs_lh__d1_d2__d0 _lh_dfs_arg1_7_2 _lh_dfs_arg2_3_0 _lh_dfs_arg3_6_2 =
  ((_lh_dfs_arg2_3_0 _lh_dfs_arg1_7_2) _lh_dfs_arg3_6_2);;
let rec dfs_lh__d4__d0 _lh_dfs_arg1_7_3 _lh_dfs_arg2_3_1 _lh_dfs_arg3_6_3 =
  ((_lh_dfs_arg2_3_1 _lh_dfs_arg1_7_3) _lh_dfs_arg3_6_3);;
let rec testScc_nofib_lh__d0__d0 _lh_testScc_nofib_arg1_0 =
  (let rec a_0 = 1 in
    (let rec b_0 = 2 in
      (let rec c_0 = 3 in
        (let rec d_0 = 4 in
          (let rec f_1 = 5 in
            (let rec g_0 = 6 in
              (let rec h_5 = 7 in
                (let rec vertices_0 = (let rec _lh_dfs_LH_C_1_1 = (let rec _lh_dfs_LH_C_1_2 = (let rec _lh_dfs_LH_C_1_3 = (let rec _lh_dfs_LH_C_1_4 = (let rec _lh_dfs_LH_C_1_5 = (let rec _lh_dfs_LH_C_1_6 = (let rec _lh_dfs_LH_C_1_7 = (fun _lh_dfs_LH_P2_0_1_0 _lh_dfs_LH_P2_1_1_0 _lh_dfs_arg1_2_2 -> 
                  (let rec _lh_snd_LH_P2_1_1 = _lh_dfs_LH_P2_1_1_0 in
                    _lh_snd_LH_P2_1_1)) in
                  (let rec _lh_dfs_LH_C_0_1 = h_5 in
                    (fun _lh_dfs_LH_P2_0_1_1 _lh_dfs_LH_P2_1_1_1 _lh_dfs_arg1_2_3 -> 
                      (if ((inList_lh__d2__d0 _lh_dfs_LH_C_0_1) _lh_dfs_LH_P2_0_1_1) then
                        (((dfs_lh__d9__d0 _lh_dfs_arg1_2_3) (let rec _lh_dfs_LH_P2_1_1_2 = _lh_dfs_LH_P2_1_1_1 in
                          (let rec _lh_dfs_LH_P2_0_1_2 = _lh_dfs_LH_P2_0_1_1 in
                            (fun _lh_dfs_arg1_2_4 _lh_dfs_arg3_2_0 -> 
                              (((_lh_dfs_arg3_2_0 _lh_dfs_LH_P2_0_1_2) _lh_dfs_LH_P2_1_1_2) _lh_dfs_arg1_2_4))))) _lh_dfs_LH_C_1_7)
                      else
                        (let rec _lh_matchIdent_4 = (((dfs_lh__d1_d5__d0 _lh_dfs_arg1_2_3) (let rec _lh_dfs_LH_P2_1_1_3 = (`LH_N) in
                          (let rec _lh_dfs_LH_P2_0_1_3 = (`LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_P2_0_1_1)) in
                            (fun _lh_dfs_arg1_2_5 _lh_dfs_arg3_2_1 -> 
                              (((_lh_dfs_arg3_2_1 _lh_dfs_LH_P2_0_1_3) _lh_dfs_LH_P2_1_1_3) _lh_dfs_arg1_2_5))))) (_lh_dfs_arg1_2_3 _lh_dfs_LH_C_0_1)) in
                          (match _lh_matchIdent_4 with
                            | `LH_P2(_lh_dfs_LH_P2_0_1_4, _lh_dfs_LH_P2_1_1_4) -> 
                              (((dfs_lh__d1_d8__d0 _lh_dfs_arg1_2_3) (let rec _lh_dfs_LH_P2_1_1_5 = ((mappend_lh__d6__d0 (`LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_P2_1_1_4))) _lh_dfs_LH_P2_1_1_1) in
                                (let rec _lh_dfs_LH_P2_0_1_5 = _lh_dfs_LH_P2_0_1_4 in
                                  (fun _lh_dfs_arg1_2_6 _lh_dfs_arg3_2_2 -> 
                                    (((_lh_dfs_arg3_2_2 _lh_dfs_LH_P2_0_1_5) _lh_dfs_LH_P2_1_1_5) _lh_dfs_arg1_2_6))))) _lh_dfs_LH_C_1_7)
                            | _ -> 
                              (failwith "error"))))))) in
                  (let rec _lh_dfs_LH_C_0_2 = g_0 in
                    (fun _lh_dfs_LH_P2_0_1_6 _lh_dfs_LH_P2_1_1_6 _lh_dfs_arg1_2_7 -> 
                      (if ((inList_lh__d6__d0 _lh_dfs_LH_C_0_2) _lh_dfs_LH_P2_0_1_6) then
                        (((dfs_lh__d1_d9__d0 _lh_dfs_arg1_2_7) (let rec _lh_dfs_LH_P2_1_1_7 = _lh_dfs_LH_P2_1_1_6 in
                          (let rec _lh_dfs_LH_P2_0_1_7 = _lh_dfs_LH_P2_0_1_6 in
                            (fun _lh_dfs_arg1_2_8 _lh_dfs_arg3_2_3 -> 
                              (((_lh_dfs_arg3_2_3 _lh_dfs_LH_P2_0_1_7) _lh_dfs_LH_P2_1_1_7) _lh_dfs_arg1_2_8))))) _lh_dfs_LH_C_1_6)
                      else
                        (let rec _lh_matchIdent_5 = (((dfs_lh__d2_d0__d0 _lh_dfs_arg1_2_7) (let rec _lh_dfs_LH_P2_1_1_8 = (`LH_N) in
                          (let rec _lh_dfs_LH_P2_0_1_8 = (`LH_C(_lh_dfs_LH_C_0_2, _lh_dfs_LH_P2_0_1_6)) in
                            (fun _lh_dfs_arg1_2_9 _lh_dfs_arg3_2_4 -> 
                              (((_lh_dfs_arg3_2_4 _lh_dfs_LH_P2_0_1_8) _lh_dfs_LH_P2_1_1_8) _lh_dfs_arg1_2_9))))) (_lh_dfs_arg1_2_7 _lh_dfs_LH_C_0_2)) in
                          (match _lh_matchIdent_5 with
                            | `LH_P2(_lh_dfs_LH_P2_0_1_9, _lh_dfs_LH_P2_1_1_9) -> 
                              (((dfs_lh__d0__d0 _lh_dfs_arg1_2_7) (let rec _lh_dfs_LH_P2_1_2_0 = ((mappend_lh__d0__d0 (`LH_C(_lh_dfs_LH_C_0_2, _lh_dfs_LH_P2_1_1_9))) _lh_dfs_LH_P2_1_1_6) in
                                (let rec _lh_dfs_LH_P2_0_2_0 = _lh_dfs_LH_P2_0_1_9 in
                                  (fun _lh_dfs_arg1_3_0 _lh_dfs_arg3_2_5 -> 
                                    (((_lh_dfs_arg3_2_5 _lh_dfs_LH_P2_0_2_0) _lh_dfs_LH_P2_1_2_0) _lh_dfs_arg1_3_0))))) _lh_dfs_LH_C_1_6)
                            | _ -> 
                              (failwith "error"))))))) in
                  (let rec _lh_dfs_LH_C_0_3 = f_1 in
                    (fun _lh_dfs_LH_P2_0_2_1 _lh_dfs_LH_P2_1_2_1 _lh_dfs_arg1_3_1 -> 
                      (if ((inList_lh__d0__d0 _lh_dfs_LH_C_0_3) _lh_dfs_LH_P2_0_2_1) then
                        (((dfs_lh__d1__d0 _lh_dfs_arg1_3_1) (let rec _lh_dfs_LH_P2_1_2_2 = _lh_dfs_LH_P2_1_2_1 in
                          (let rec _lh_dfs_LH_P2_0_2_2 = _lh_dfs_LH_P2_0_2_1 in
                            (fun _lh_dfs_arg1_3_2 _lh_dfs_arg3_2_6 -> 
                              (((_lh_dfs_arg3_2_6 _lh_dfs_LH_P2_0_2_2) _lh_dfs_LH_P2_1_2_2) _lh_dfs_arg1_3_2))))) _lh_dfs_LH_C_1_5)
                      else
                        (let rec _lh_matchIdent_6 = (((dfs_lh__d2__d0 _lh_dfs_arg1_3_1) (let rec _lh_dfs_LH_P2_1_2_3 = (`LH_N) in
                          (let rec _lh_dfs_LH_P2_0_2_3 = (`LH_C(_lh_dfs_LH_C_0_3, _lh_dfs_LH_P2_0_2_1)) in
                            (fun _lh_dfs_arg1_3_3 _lh_dfs_arg3_2_7 -> 
                              (((_lh_dfs_arg3_2_7 _lh_dfs_LH_P2_0_2_3) _lh_dfs_LH_P2_1_2_3) _lh_dfs_arg1_3_3))))) (_lh_dfs_arg1_3_1 _lh_dfs_LH_C_0_3)) in
                          (match _lh_matchIdent_6 with
                            | `LH_P2(_lh_dfs_LH_P2_0_2_4, _lh_dfs_LH_P2_1_2_4) -> 
                              (((dfs_lh__d3__d0 _lh_dfs_arg1_3_1) (let rec _lh_dfs_LH_P2_1_2_5 = ((mappend_lh__d1__d0 (`LH_C(_lh_dfs_LH_C_0_3, _lh_dfs_LH_P2_1_2_4))) _lh_dfs_LH_P2_1_2_1) in
                                (let rec _lh_dfs_LH_P2_0_2_5 = _lh_dfs_LH_P2_0_2_4 in
                                  (fun _lh_dfs_arg1_3_4 _lh_dfs_arg3_2_8 -> 
                                    (((_lh_dfs_arg3_2_8 _lh_dfs_LH_P2_0_2_5) _lh_dfs_LH_P2_1_2_5) _lh_dfs_arg1_3_4))))) _lh_dfs_LH_C_1_5)
                            | _ -> 
                              (failwith "error"))))))) in
                  (let rec _lh_dfs_LH_C_0_4 = d_0 in
                    (fun _lh_dfs_LH_P2_0_2_6 _lh_dfs_LH_P2_1_2_6 _lh_dfs_arg1_3_5 -> 
                      (if ((inList_lh__d1__d0 _lh_dfs_LH_C_0_4) _lh_dfs_LH_P2_0_2_6) then
                        (((dfs_lh__d4__d0 _lh_dfs_arg1_3_5) (let rec _lh_dfs_LH_P2_1_2_7 = _lh_dfs_LH_P2_1_2_6 in
                          (let rec _lh_dfs_LH_P2_0_2_7 = _lh_dfs_LH_P2_0_2_6 in
                            (fun _lh_dfs_arg1_3_6 _lh_dfs_arg3_2_9 -> 
                              (((_lh_dfs_arg3_2_9 _lh_dfs_LH_P2_0_2_7) _lh_dfs_LH_P2_1_2_7) _lh_dfs_arg1_3_6))))) _lh_dfs_LH_C_1_4)
                      else
                        (let rec _lh_matchIdent_7 = (((dfs_lh__d5__d0 _lh_dfs_arg1_3_5) (let rec _lh_dfs_LH_P2_1_2_8 = (`LH_N) in
                          (let rec _lh_dfs_LH_P2_0_2_8 = (`LH_C(_lh_dfs_LH_C_0_4, _lh_dfs_LH_P2_0_2_6)) in
                            (fun _lh_dfs_arg1_3_7 _lh_dfs_arg3_3_0 -> 
                              (((_lh_dfs_arg3_3_0 _lh_dfs_LH_P2_0_2_8) _lh_dfs_LH_P2_1_2_8) _lh_dfs_arg1_3_7))))) (_lh_dfs_arg1_3_5 _lh_dfs_LH_C_0_4)) in
                          (match _lh_matchIdent_7 with
                            | `LH_P2(_lh_dfs_LH_P2_0_2_9, _lh_dfs_LH_P2_1_2_9) -> 
                              (((dfs_lh__d6__d0 _lh_dfs_arg1_3_5) (let rec _lh_dfs_LH_P2_1_3_0 = ((mappend_lh__d2__d0 (`LH_C(_lh_dfs_LH_C_0_4, _lh_dfs_LH_P2_1_2_9))) _lh_dfs_LH_P2_1_2_6) in
                                (let rec _lh_dfs_LH_P2_0_3_0 = _lh_dfs_LH_P2_0_2_9 in
                                  (fun _lh_dfs_arg1_3_8 _lh_dfs_arg3_3_1 -> 
                                    (((_lh_dfs_arg3_3_1 _lh_dfs_LH_P2_0_3_0) _lh_dfs_LH_P2_1_3_0) _lh_dfs_arg1_3_8))))) _lh_dfs_LH_C_1_4)
                            | _ -> 
                              (failwith "error"))))))) in
                  (let rec _lh_dfs_LH_C_0_5 = c_0 in
                    (fun _lh_dfs_LH_P2_0_3_1 _lh_dfs_LH_P2_1_3_1 _lh_dfs_arg1_3_9 -> 
                      (if ((inList_lh__d3__d0 _lh_dfs_LH_C_0_5) _lh_dfs_LH_P2_0_3_1) then
                        (((dfs_lh__d7__d0 _lh_dfs_arg1_3_9) (let rec _lh_dfs_LH_P2_1_3_2 = _lh_dfs_LH_P2_1_3_1 in
                          (let rec _lh_dfs_LH_P2_0_3_2 = _lh_dfs_LH_P2_0_3_1 in
                            (fun _lh_dfs_arg1_4_0 _lh_dfs_arg3_3_2 -> 
                              (((_lh_dfs_arg3_3_2 _lh_dfs_LH_P2_0_3_2) _lh_dfs_LH_P2_1_3_2) _lh_dfs_arg1_4_0))))) _lh_dfs_LH_C_1_3)
                      else
                        (let rec _lh_matchIdent_8 = (((dfs_lh__d8__d0 _lh_dfs_arg1_3_9) (let rec _lh_dfs_LH_P2_1_3_3 = (`LH_N) in
                          (let rec _lh_dfs_LH_P2_0_3_3 = (`LH_C(_lh_dfs_LH_C_0_5, _lh_dfs_LH_P2_0_3_1)) in
                            (fun _lh_dfs_arg1_4_1 _lh_dfs_arg3_3_3 -> 
                              (((_lh_dfs_arg3_3_3 _lh_dfs_LH_P2_0_3_3) _lh_dfs_LH_P2_1_3_3) _lh_dfs_arg1_4_1))))) (_lh_dfs_arg1_3_9 _lh_dfs_LH_C_0_5)) in
                          (match _lh_matchIdent_8 with
                            | `LH_P2(_lh_dfs_LH_P2_0_3_4, _lh_dfs_LH_P2_1_3_4) -> 
                              (((dfs_lh__d1_d0__d0 _lh_dfs_arg1_3_9) (let rec _lh_dfs_LH_P2_1_3_5 = ((mappend_lh__d3__d0 (`LH_C(_lh_dfs_LH_C_0_5, _lh_dfs_LH_P2_1_3_4))) _lh_dfs_LH_P2_1_3_1) in
                                (let rec _lh_dfs_LH_P2_0_3_5 = _lh_dfs_LH_P2_0_3_4 in
                                  (fun _lh_dfs_arg1_4_2 _lh_dfs_arg3_3_4 -> 
                                    (((_lh_dfs_arg3_3_4 _lh_dfs_LH_P2_0_3_5) _lh_dfs_LH_P2_1_3_5) _lh_dfs_arg1_4_2))))) _lh_dfs_LH_C_1_3)
                            | _ -> 
                              (failwith "error"))))))) in
                  (let rec _lh_dfs_LH_C_0_6 = b_0 in
                    (fun _lh_dfs_LH_P2_0_3_6 _lh_dfs_LH_P2_1_3_6 _lh_dfs_arg1_4_3 -> 
                      (if ((inList_lh__d4__d0 _lh_dfs_LH_C_0_6) _lh_dfs_LH_P2_0_3_6) then
                        (((dfs_lh__d1_d1__d0 _lh_dfs_arg1_4_3) (let rec _lh_dfs_LH_P2_1_3_7 = _lh_dfs_LH_P2_1_3_6 in
                          (let rec _lh_dfs_LH_P2_0_3_7 = _lh_dfs_LH_P2_0_3_6 in
                            (fun _lh_dfs_arg1_4_4 _lh_dfs_arg3_3_5 -> 
                              (((_lh_dfs_arg3_3_5 _lh_dfs_LH_P2_0_3_7) _lh_dfs_LH_P2_1_3_7) _lh_dfs_arg1_4_4))))) _lh_dfs_LH_C_1_2)
                      else
                        (let rec _lh_matchIdent_9 = (((dfs_lh__d1_d2__d0 _lh_dfs_arg1_4_3) (let rec _lh_dfs_LH_P2_1_3_8 = (`LH_N) in
                          (let rec _lh_dfs_LH_P2_0_3_8 = (`LH_C(_lh_dfs_LH_C_0_6, _lh_dfs_LH_P2_0_3_6)) in
                            (fun _lh_dfs_arg1_4_5 _lh_dfs_arg3_3_6 -> 
                              (((_lh_dfs_arg3_3_6 _lh_dfs_LH_P2_0_3_8) _lh_dfs_LH_P2_1_3_8) _lh_dfs_arg1_4_5))))) (_lh_dfs_arg1_4_3 _lh_dfs_LH_C_0_6)) in
                          (match _lh_matchIdent_9 with
                            | `LH_P2(_lh_dfs_LH_P2_0_3_9, _lh_dfs_LH_P2_1_3_9) -> 
                              (((dfs_lh__d1_d3__d0 _lh_dfs_arg1_4_3) (let rec _lh_dfs_LH_P2_1_4_0 = ((mappend_lh__d4__d0 (`LH_C(_lh_dfs_LH_C_0_6, _lh_dfs_LH_P2_1_3_9))) _lh_dfs_LH_P2_1_3_6) in
                                (let rec _lh_dfs_LH_P2_0_4_0 = _lh_dfs_LH_P2_0_3_9 in
                                  (fun _lh_dfs_arg1_4_6 _lh_dfs_arg3_3_7 -> 
                                    (((_lh_dfs_arg3_3_7 _lh_dfs_LH_P2_0_4_0) _lh_dfs_LH_P2_1_4_0) _lh_dfs_arg1_4_6))))) _lh_dfs_LH_C_1_2)
                            | _ -> 
                              (failwith "error"))))))) in
                  (let rec _lh_dfs_LH_C_0_7 = a_0 in
                    (fun _lh_dfs_LH_P2_0_4_1 _lh_dfs_LH_P2_1_4_1 _lh_dfs_arg1_4_7 -> 
                      (if ((inList_lh__d5__d0 _lh_dfs_LH_C_0_7) _lh_dfs_LH_P2_0_4_1) then
                        (((dfs_lh__d1_d4__d0 _lh_dfs_arg1_4_7) (let rec _lh_dfs_LH_P2_1_4_2 = _lh_dfs_LH_P2_1_4_1 in
                          (let rec _lh_dfs_LH_P2_0_4_2 = _lh_dfs_LH_P2_0_4_1 in
                            (fun _lh_dfs_arg1_4_8 _lh_dfs_arg3_3_8 -> 
                              (((_lh_dfs_arg3_3_8 _lh_dfs_LH_P2_0_4_2) _lh_dfs_LH_P2_1_4_2) _lh_dfs_arg1_4_8))))) _lh_dfs_LH_C_1_1)
                      else
                        (let rec _lh_matchIdent_1_0 = (((dfs_lh__d1_d6__d0 _lh_dfs_arg1_4_7) (let rec _lh_dfs_LH_P2_1_4_3 = (`LH_N) in
                          (let rec _lh_dfs_LH_P2_0_4_3 = (`LH_C(_lh_dfs_LH_C_0_7, _lh_dfs_LH_P2_0_4_1)) in
                            (fun _lh_dfs_arg1_4_9 _lh_dfs_arg3_3_9 -> 
                              (((_lh_dfs_arg3_3_9 _lh_dfs_LH_P2_0_4_3) _lh_dfs_LH_P2_1_4_3) _lh_dfs_arg1_4_9))))) (_lh_dfs_arg1_4_7 _lh_dfs_LH_C_0_7)) in
                          (match _lh_matchIdent_1_0 with
                            | `LH_P2(_lh_dfs_LH_P2_0_4_4, _lh_dfs_LH_P2_1_4_4) -> 
                              (((dfs_lh__d1_d7__d0 _lh_dfs_arg1_4_7) (let rec _lh_dfs_LH_P2_1_4_5 = ((mappend_lh__d5__d0 (`LH_C(_lh_dfs_LH_C_0_7, _lh_dfs_LH_P2_1_4_4))) _lh_dfs_LH_P2_1_4_1) in
                                (let rec _lh_dfs_LH_P2_0_4_5 = _lh_dfs_LH_P2_0_4_4 in
                                  (fun _lh_dfs_arg1_5_0 _lh_dfs_arg3_4_0 -> 
                                    (((_lh_dfs_arg3_4_0 _lh_dfs_LH_P2_0_4_5) _lh_dfs_LH_P2_1_4_5) _lh_dfs_arg1_5_0))))) _lh_dfs_LH_C_1_1)
                            | _ -> 
                              (failwith "error"))))))) in
                  (let rec edges_0 = (`LH_C((`LH_P2(b_0, a_0)), (`LH_C((`LH_P2(c_0, b_0)), (`LH_C((`LH_P2(c_0, d_0)), (`LH_C((`LH_P2(c_0, h_5)), (`LH_C((`LH_P2(d_0, c_0)), (`LH_C((`LH_P2(f_1, a_0)), (`LH_C((`LH_P2(f_1, g_0)), (`LH_C((`LH_P2(f_1, h_5)), (`LH_C((`LH_P2(g_0, f_1)), (`LH_C((`LH_P2(h_5, g_0)), (`LH_N))))))))))))))))))))) in
                    ((stronglyConnComp_lh__d0__d0 edges_0) vertices_0))))))))));;
end;;

