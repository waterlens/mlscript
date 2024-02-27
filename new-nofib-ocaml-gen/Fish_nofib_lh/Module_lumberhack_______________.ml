

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh__d3 xs_2 ys_3 =
  (xs_2 ys_3);;
let rec length_lh__d1 ls_0 =
  (ls_0 99);;
let rec mappend_lh__d2 xs_8 ys_2_7 =
  (xs_8 ys_2_7);;
let rec mappend_lh__d8 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((mappend_lh__d8 t_0) ys_1) in
        (let rec h_1 = h_0 in
          (fun ys_2 -> 
            (let rec t_2 = ((mappend_lh__d2 t_1) ys_2) in
              (let rec h_2 = h_1 in
                (fun _lh_dummy_0 -> 
                  (1 + (length_lh__d1 t_2))))))))
    | `LH_N -> 
      ys_1);;
let rec mappend_lh__d7 xs_7 ys_2_6 =
  (xs_7 ys_2_6);;
let rec mappend_lh__d5 xs_9 ys_2_8 =
  (match xs_9 with
    | `LH_C(h_2_6, t_2_6) -> 
      (let rec t_2_7 = ((mappend_lh__d5 t_2_6) ys_2_8) in
        (let rec h_2_7 = h_2_6 in
          (fun ys_2_9 -> 
            (`LH_C(h_2_7, ((mappend_lh__d7 t_2_7) ys_2_9))))))
    | `LH_N -> 
      ys_2_8);;
let rec mappend_lh__d9 xs_1_6 ys_3_8 =
  (xs_1_6 ys_3_8);;
let rec mappend_lh__d6 xs_1_1 ys_3_2 =
  (match xs_1_1 with
    | `LH_C(h_3_0, t_3_0) -> 
      (let rec t_3_1 = ((mappend_lh__d6 t_3_0) ys_3_2) in
        (let rec h_3_1 = h_3_0 in
          (fun ys_3_3 -> 
            (`LH_C(h_3_1, ((mappend_lh__d9 t_3_1) ys_3_3))))))
    | `LH_N -> 
      ys_3_2);;
let rec mappend_lh__d1_d1 xs_1_2 ys_3_4 =
  (xs_1_2 ys_3_4);;
let rec mappend_lh__d1_d2 xs_1_9 ys_4_2 =
  (xs_1_9 ys_4_2);;
let rec mappend_lh__d1_d0 xs_6 ys_2_4 =
  (match xs_6 with
    | `LH_C(h_2_4, t_2_4) -> 
      (let rec t_2_5 = ((mappend_lh__d1_d0 t_2_4) ys_2_4) in
        (let rec h_2_5 = h_2_4 in
          (fun ys_2_5 -> 
            (`LH_C(h_2_5, ((mappend_lh__d1_d1 t_2_5) ys_2_5))))))
    | `LH_N -> 
      ys_2_4);;
let rec showFourTupleofInt_lh__d1 _lh_showFourTupleofInt_arg1_0 =
  (match _lh_showFourTupleofInt_arg1_0 with
    | `LH_P4(_lh_showFourTupleofInt_LH_P4_0_0, _lh_showFourTupleofInt_LH_P4_1_0, _lh_showFourTupleofInt_LH_P4_2_0, _lh_showFourTupleofInt_LH_P4_3_0) -> 
      ((mappend_lh__d8 ((mappend_lh__d1_d1 ((mappend_lh__d1_d0 ((mappend_lh__d7 ((mappend_lh__d5 ((mappend_lh__d9 ((mappend_lh__d6 ((mappend_lh__d1_d2 (let rec t_3 = (fun ys_4 -> 
        ys_4) in
        (let rec h_3 = '(' in
          (fun ys_5 -> 
            (`LH_C(h_3, ((mappend_lh__d1_d2 t_3) ys_5))))))) (string_of_int _lh_showFourTupleofInt_LH_P4_0_0))) (let rec t_4 = (fun ys_6 -> 
        ys_6) in
        (let rec h_4 = ',' in
          (fun ys_7 -> 
            (`LH_C(h_4, ((mappend_lh__d9 t_4) ys_7)))))))) (string_of_int _lh_showFourTupleofInt_LH_P4_1_0))) (let rec t_5 = (fun ys_8 -> 
        ys_8) in
        (let rec h_5 = ',' in
          (fun ys_9 -> 
            (`LH_C(h_5, ((mappend_lh__d7 t_5) ys_9)))))))) (string_of_int _lh_showFourTupleofInt_LH_P4_2_0))) (let rec t_6 = (fun ys_1_0 -> 
        ys_1_0) in
        (let rec h_6 = ',' in
          (fun ys_1_1 -> 
            (`LH_C(h_6, ((mappend_lh__d1_d1 t_6) ys_1_1)))))))) (string_of_int _lh_showFourTupleofInt_LH_P4_3_0))) (let rec t_7 = (fun ys_1_2 -> 
        ys_1_2) in
        (let rec h_7 = ')' in
          (fun ys_1_3 -> 
            (let rec t_8 = ((mappend_lh__d2 t_7) ys_1_3) in
              (let rec h_8 = h_7 in
                (fun _lh_dummy_1 -> 
                  (1 + (length_lh__d1 t_8)))))))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1 xs_3 ys_1_4 =
  (xs_3 ys_1_4);;
let rec mappend_lh__d4 xs_1_3 ys_3_5 =
  (xs_1_3 ys_3_5);;
let rec mappend_lh__d1_d6 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend_lh__d1_d8 xs_4 ys_1_5 =
  (match xs_4 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_lh__d1_d8 t_9) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend_lh__d1_d9 xs_5 ys_1_6 =
  (match xs_5 with
    | `LH_C(h_1_0, t_1_0) -> 
      (let rec t_1_1 = ((mappend_lh__d1_d9 t_1_0) ys_1_6) in
        (let rec h_1_1 = h_1_0 in
          (fun ys_1_7 -> 
            (let rec t_1_2 = ((mappend_lh__d4 t_1_1) ys_1_7) in
              (let rec h_1_2 = h_1_1 in
                (fun _lh_dummy_2 -> 
                  (1 + (length_lh__d1 t_1_2))))))))
    | `LH_N -> 
      ys_1_6);;
let rec mappend_lh__d1_d7 xs_1_8 ys_4_1 =
  (xs_1_8 ys_4_1);;
let rec mappend_lh__d1_d4 xs_1_0 ys_3_0 =
  (match xs_1_0 with
    | `LH_C(h_2_8, t_2_8) -> 
      (let rec t_2_9 = ((mappend_lh__d1_d4 t_2_8) ys_3_0) in
        (let rec h_2_9 = h_2_8 in
          (fun ys_3_1 -> 
            (`LH_C(h_2_9, ((mappend_lh__d1_d7 t_2_9) ys_3_1))))))
    | `LH_N -> 
      ys_3_0);;
let rec mappend_lh__d1_d5 xs_1_7 ys_3_9 =
  (match xs_1_7 with
    | `LH_C(h_3_4, t_3_4) -> 
      (let rec t_3_5 = ((mappend_lh__d1_d5 t_3_4) ys_3_9) in
        (let rec h_3_5 = h_3_4 in
          (fun ys_4_0 -> 
            (`LH_C(h_3_5, ((mappend_lh__d1_d6 t_3_5) ys_4_0))))))
    | `LH_N -> 
      ys_3_9);;
let rec mappend_lh__d2_d0 xs_1_4 ys_3_6 =
  (match xs_1_4 with
    | `LH_C(h_3_2, t_3_2) -> 
      (`LH_C(h_3_2, ((mappend_lh__d2_d0 t_3_2) ys_3_6)))
    | `LH_N -> 
      ys_3_6);;
let rec mappend_lh__d1_d3 xs_1_5 ys_3_7 =
  (xs_1_5 ys_3_7);;
let rec showFourTupleofInt_lh__d2 _lh_showFourTupleofInt_arg1_1 =
  (match _lh_showFourTupleofInt_arg1_1 with
    | `LH_P4(_lh_showFourTupleofInt_LH_P4_0_1, _lh_showFourTupleofInt_LH_P4_1_1, _lh_showFourTupleofInt_LH_P4_2_1, _lh_showFourTupleofInt_LH_P4_3_1) -> 
      ((mappend_lh__d1_d9 ((mappend_lh__d2_d0 ((mappend_lh__d1_d8 ((mappend_lh__d1_d6 ((mappend_lh__d1_d5 ((mappend_lh__d1_d7 ((mappend_lh__d1_d4 ((mappend_lh__d1_d3 (let rec t_3_6 = (fun ys_4_3 -> 
        ys_4_3) in
        (let rec h_3_6 = '(' in
          (fun ys_4_4 -> 
            (`LH_C(h_3_6, ((mappend_lh__d1_d3 t_3_6) ys_4_4))))))) (string_of_int _lh_showFourTupleofInt_LH_P4_0_1))) (let rec t_3_7 = (fun ys_4_5 -> 
        ys_4_5) in
        (let rec h_3_7 = ',' in
          (fun ys_4_6 -> 
            (`LH_C(h_3_7, ((mappend_lh__d1_d7 t_3_7) ys_4_6)))))))) (string_of_int _lh_showFourTupleofInt_LH_P4_1_1))) (let rec t_3_8 = (fun ys_4_7 -> 
        ys_4_7) in
        (let rec h_3_8 = ',' in
          (fun ys_4_8 -> 
            (`LH_C(h_3_8, ((mappend_lh__d1_d6 t_3_8) ys_4_8)))))))) (string_of_int _lh_showFourTupleofInt_LH_P4_2_1))) (`LH_C(',', (`LH_N))))) (string_of_int _lh_showFourTupleofInt_LH_P4_3_1))) (let rec t_3_9 = (fun ys_4_9 -> 
        ys_4_9) in
        (let rec h_3_9 = ')' in
          (fun ys_5_0 -> 
            (let rec t_4_0 = ((mappend_lh__d4 t_3_9) ys_5_0) in
              (let rec h_4_0 = h_3_9 in
                (fun _lh_dummy_1_2 -> 
                  (1 + (length_lh__d1 t_4_0)))))))))
    | _ -> 
      (failwith "error"));;
let rec fmt_lh__d1 _lh_fmt_arg1_0 =
  (match _lh_fmt_arg1_0 with
    | `LH_N -> 
      (let rec t_1_3 = (let rec t_1_4 = (fun _lh_dummy_3 -> 
        0) in
        (let rec h_1_3 = ']' in
          (fun _lh_dummy_4 -> 
            (1 + (length_lh__d1 t_1_4))))) in
        (let rec h_1_4 = '[' in
          (fun _lh_dummy_5 -> 
            (1 + (length_lh__d1 t_1_3)))))
    | `LH_C(_lh_fmt_LH_C_0_0, _lh_fmt_LH_C_1_0) -> 
      (let rec showl_0 = (fun _lh_showl_arg1_0 _lh_showl_arg2_0 -> 
        (match _lh_showl_arg1_0 with
          | `LH_N -> 
            (let rec t_1_5 = _lh_showl_arg2_0 in
              (let rec h_1_5 = ']' in
                (fun _lh_dummy_6 -> 
                  (1 + (length_lh__d1 t_1_5)))))
          | `LH_C(_lh_showl_LH_C_0_0, _lh_showl_LH_C_1_0) -> 
            ((fun _lh_funcomp_x_0 -> 
              ((fun _lh_funcomp_x_1 -> 
                ((fun s_0 -> 
                  ((mappend_lh__d1 (let rec t_1_6 = (let rec t_1_7 = (fun ys_1_8 -> 
                    ys_1_8) in
                    (let rec h_1_6 = '|' in
                      (fun ys_1_9 -> 
                        (let rec t_1_8 = ((mappend_lh__d1 t_1_7) ys_1_9) in
                          (let rec h_1_7 = h_1_6 in
                            (fun _lh_dummy_7 -> 
                              (1 + (length_lh__d1 t_1_8)))))))) in
                    (let rec h_1_8 = ',' in
                      (fun ys_2_0 -> 
                        (let rec t_1_9 = ((mappend_lh__d1 t_1_6) ys_2_0) in
                          (let rec h_1_9 = h_1_8 in
                            (fun _lh_dummy_8 -> 
                              (1 + (length_lh__d1 t_1_9))))))))) s_0)) ((fun s_1 -> 
                  ((mappend_lh__d4 (showFourTupleofInt_lh__d2 _lh_showl_LH_C_0_0)) s_1)) _lh_funcomp_x_1))) ((showl_0 _lh_showl_LH_C_1_0) _lh_funcomp_x_0))) _lh_showl_arg2_0)
          | _ -> 
            (failwith "error"))) in
        ((fun _lh_funcomp_x_2 -> 
          ((fun _lh_funcomp_x_3 -> 
            ((fun s_2 -> 
              ((mappend_lh__d3 (let rec t_2_0 = (let rec t_2_1 = (fun ys_2_1 -> 
                ys_2_1) in
                (let rec h_2_0 = '|' in
                  (fun ys_2_2 -> 
                    (let rec t_2_2 = ((mappend_lh__d3 t_2_1) ys_2_2) in
                      (let rec h_2_1 = h_2_0 in
                        (fun _lh_dummy_9 -> 
                          (1 + (length_lh__d1 t_2_2)))))))) in
                (let rec h_2_2 = '[' in
                  (fun ys_2_3 -> 
                    (let rec t_2_3 = ((mappend_lh__d3 t_2_0) ys_2_3) in
                      (let rec h_2_3 = h_2_2 in
                        (fun _lh_dummy_1_0 -> 
                          (1 + (length_lh__d1 t_2_3))))))))) s_2)) ((fun s_3 -> 
              ((mappend_lh__d2 (showFourTupleofInt_lh__d1 _lh_fmt_LH_C_0_0)) s_3)) _lh_funcomp_x_3))) ((showl_0 _lh_fmt_LH_C_1_0) _lh_funcomp_x_2))) (fun _lh_dummy_1_1 -> 
          0)))
    | _ -> 
      (failwith "error"));;
let rec vec_sub_lh__d4 _lh_vec_sub_arg1_5 _lh_vec_sub_arg2_1_2 =
  (_lh_vec_sub_arg1_5 _lh_vec_sub_arg2_1_2);;
let rec vec_add_lh__d4 _lh_vec_add_arg1_1 _lh_vec_add_arg2_1 =
  (match _lh_vec_add_arg1_1 with
    | `LH_P2(_lh_vec_add_LH_P2_0_0, _lh_vec_add_LH_P2_1_0) -> 
      (match _lh_vec_add_arg2_1 with
        | `LH_P2(_lh_vec_add_LH_P2_0_1, _lh_vec_add_LH_P2_1_1) -> 
          (let rec _lh_vec_add_LH_P2_1_2 = (_lh_vec_add_LH_P2_1_0 + _lh_vec_add_LH_P2_1_1) in
            (let rec _lh_vec_add_LH_P2_0_2 = (_lh_vec_add_LH_P2_0_0 + _lh_vec_add_LH_P2_0_1) in
              (fun _lh_vec_add_arg2_2 -> 
                (match _lh_vec_add_arg2_2 with
                  | `LH_P2(_lh_vec_add_LH_P2_0_3, _lh_vec_add_LH_P2_1_3) -> 
                    (let rec _lh_vec_add_LH_P2_1_4 = (_lh_vec_add_LH_P2_1_2 + _lh_vec_add_LH_P2_1_3) in
                      (let rec _lh_vec_add_LH_P2_0_4 = (_lh_vec_add_LH_P2_0_2 + _lh_vec_add_LH_P2_0_3) in
                        (fun _lh_vec_add_arg2_3 -> 
                          (match _lh_vec_add_arg2_3 with
                            | `LH_P2(_lh_vec_add_LH_P2_0_5, _lh_vec_add_LH_P2_1_5) -> 
                              (`LH_P2((_lh_vec_add_LH_P2_0_4 + _lh_vec_add_LH_P2_0_5), (_lh_vec_add_LH_P2_1_4 + _lh_vec_add_LH_P2_1_5)))
                            | _ -> 
                              (failwith "error")))))
                  | _ -> 
                    (failwith "error")))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rot_lh__d4 _lh_rot_arg1_1 _lh_rot_arg2_1 _lh_rot_arg3_1 _lh_rot_arg4_1 =
  (((_lh_rot_arg1_1 ((vec_add_lh__d4 _lh_rot_arg2_1) _lh_rot_arg3_1)) _lh_rot_arg4_1) ((vec_sub_lh__d4 (let rec _lh_vec_sub_LH_P2_1_2 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_2 = 0 in
      (fun _lh_vec_sub_arg2_1 -> 
        (match _lh_vec_sub_arg2_1 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_3, _lh_vec_sub_LH_P2_1_3) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_2 - _lh_vec_sub_LH_P2_0_3), (_lh_vec_sub_LH_P2_1_2 - _lh_vec_sub_LH_P2_1_3)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_1));;
let rec scale_vec2_lh__d1 _lh_scale_vec2_arg1_0 _lh_scale_vec2_arg2_0 _lh_scale_vec2_arg3_0 =
  (match _lh_scale_vec2_arg1_0 with
    | `LH_P2(_lh_scale_vec2_LH_P2_0_0, _lh_scale_vec2_LH_P2_1_0) -> 
      (`LH_P2(((_lh_scale_vec2_LH_P2_0_0 * _lh_scale_vec2_arg2_0) / _lh_scale_vec2_arg3_0), ((_lh_scale_vec2_LH_P2_1_0 * _lh_scale_vec2_arg2_0) / _lh_scale_vec2_arg3_0)))
    | _ -> 
      (failwith "error"));;
let rec vec_add_lh__d7 _lh_vec_add_arg1_2 _lh_vec_add_arg2_4 =
  (match _lh_vec_add_arg1_2 with
    | `LH_P2(_lh_vec_add_LH_P2_0_6, _lh_vec_add_LH_P2_1_6) -> 
      (match _lh_vec_add_arg2_4 with
        | `LH_P2(_lh_vec_add_LH_P2_0_7, _lh_vec_add_LH_P2_1_7) -> 
          (`LH_P2((_lh_vec_add_LH_P2_0_6 + _lh_vec_add_LH_P2_0_7), (_lh_vec_add_LH_P2_1_6 + _lh_vec_add_LH_P2_1_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec beside_lh__d2 _lh_beside_arg1_1 _lh_beside_arg2_1 _lh_beside_arg3_1 _lh_beside_arg4_1 _lh_beside_arg5_1 _lh_beside_arg6_1 _lh_beside_arg7_1 =
  ((mappend_lh__d2_d0 (((_lh_beside_arg3_1 _lh_beside_arg5_1) (((scale_vec2_lh__d1 _lh_beside_arg6_1) _lh_beside_arg1_1) (_lh_beside_arg1_1 + _lh_beside_arg2_1))) _lh_beside_arg7_1)) (((_lh_beside_arg4_1 ((vec_add_lh__d7 _lh_beside_arg5_1) (((scale_vec2_lh__d1 _lh_beside_arg6_1) _lh_beside_arg1_1) (_lh_beside_arg1_1 + _lh_beside_arg2_1)))) (((scale_vec2_lh__d1 _lh_beside_arg6_1) _lh_beside_arg2_1) (_lh_beside_arg2_1 + _lh_beside_arg1_1))) _lh_beside_arg7_1));;
let rec above_lh__d1 _lh_above_arg1_0 _lh_above_arg2_0 _lh_above_arg3_0 _lh_above_arg4_0 _lh_above_arg5_0 _lh_above_arg6_0 _lh_above_arg7_0 =
  ((mappend_lh__d2_d0 (((_lh_above_arg3_0 ((vec_add_lh__d7 _lh_above_arg5_0) (((scale_vec2_lh__d1 _lh_above_arg7_0) _lh_above_arg2_0) (_lh_above_arg1_0 + _lh_above_arg2_0)))) _lh_above_arg6_0) (((scale_vec2_lh__d1 _lh_above_arg7_0) _lh_above_arg1_0) (_lh_above_arg2_0 + _lh_above_arg1_0)))) (((_lh_above_arg4_0 _lh_above_arg5_0) _lh_above_arg6_0) (((scale_vec2_lh__d1 _lh_above_arg7_0) _lh_above_arg2_0) (_lh_above_arg1_0 + _lh_above_arg2_0))));;
let rec beside_lh__d1 _lh_beside_arg1_0 _lh_beside_arg2_0 _lh_beside_arg3_0 _lh_beside_arg4_0 _lh_beside_arg5_0 _lh_beside_arg6_0 _lh_beside_arg7_0 =
  ((mappend_lh__d2_d0 (((_lh_beside_arg3_0 _lh_beside_arg5_0) (((scale_vec2_lh__d1 _lh_beside_arg6_0) _lh_beside_arg1_0) (_lh_beside_arg1_0 + _lh_beside_arg2_0))) _lh_beside_arg7_0)) (((_lh_beside_arg4_0 ((vec_add_lh__d7 _lh_beside_arg5_0) (((scale_vec2_lh__d1 _lh_beside_arg6_0) _lh_beside_arg1_0) (_lh_beside_arg1_0 + _lh_beside_arg2_0)))) (((scale_vec2_lh__d1 _lh_beside_arg6_0) _lh_beside_arg2_0) (_lh_beside_arg2_0 + _lh_beside_arg1_0))) _lh_beside_arg7_0));;
let rec quartet_lh__d1 _lh_quartet_arg1_1 _lh_quartet_arg2_1 _lh_quartet_arg3_1 _lh_quartet_arg4_1 =
  ((((above_lh__d1 1) 1) ((((beside_lh__d1 1) 1) _lh_quartet_arg1_1) _lh_quartet_arg2_1)) ((((beside_lh__d2 1) 1) _lh_quartet_arg3_1) _lh_quartet_arg4_1));;
let rec vec_sub_lh__d1 _lh_vec_sub_arg1_4 _lh_vec_sub_arg2_1_1 =
  (_lh_vec_sub_arg1_4 _lh_vec_sub_arg2_1_1);;
let rec vec_add_lh__d1 _lh_vec_add_arg1_3 _lh_vec_add_arg2_5 =
  (match _lh_vec_add_arg1_3 with
    | `LH_P2(_lh_vec_add_LH_P2_0_8, _lh_vec_add_LH_P2_1_8) -> 
      (match _lh_vec_add_arg2_5 with
        | `LH_P2(_lh_vec_add_LH_P2_0_9, _lh_vec_add_LH_P2_1_9) -> 
          (`LH_P2((_lh_vec_add_LH_P2_0_8 + _lh_vec_add_LH_P2_0_9), (_lh_vec_add_LH_P2_1_8 + _lh_vec_add_LH_P2_1_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rot_lh__d1 _lh_rot_arg1_3 _lh_rot_arg2_3 _lh_rot_arg3_3 _lh_rot_arg4_3 =
  (((_lh_rot_arg1_3 ((vec_add_lh__d1 _lh_rot_arg2_3) _lh_rot_arg3_3)) _lh_rot_arg4_3) ((vec_sub_lh__d1 (let rec _lh_vec_sub_LH_P2_1_6 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_6 = 0 in
      (fun _lh_vec_sub_arg2_5 -> 
        (match _lh_vec_sub_arg2_5 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_7, _lh_vec_sub_LH_P2_1_7) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_6 - _lh_vec_sub_LH_P2_0_7), (_lh_vec_sub_LH_P2_1_6 - _lh_vec_sub_LH_P2_1_7)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_3));;
let rec vec_sub_lh__d3 _lh_vec_sub_arg1_3 _lh_vec_sub_arg2_1_0 =
  (_lh_vec_sub_arg1_3 _lh_vec_sub_arg2_1_0);;
let rec vec_add_lh__d3 _lh_vec_add_arg1_4 _lh_vec_add_arg2_6 =
  (_lh_vec_add_arg1_4 _lh_vec_add_arg2_6);;
let rec rot_lh__d3 _lh_rot_arg1_0 _lh_rot_arg2_0 _lh_rot_arg3_0 _lh_rot_arg4_0 =
  (((_lh_rot_arg1_0 ((vec_add_lh__d3 _lh_rot_arg2_0) _lh_rot_arg3_0)) _lh_rot_arg4_0) ((vec_sub_lh__d3 (let rec _lh_vec_sub_LH_P2_1_0 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_0 = 0 in
      (fun _lh_vec_sub_arg2_0 -> 
        (match _lh_vec_sub_arg2_0 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_1, _lh_vec_sub_LH_P2_1_1) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_0 - _lh_vec_sub_LH_P2_0_1), (_lh_vec_sub_LH_P2_1_0 - _lh_vec_sub_LH_P2_1_1)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_0));;
let rec vec_add_lh__d6 _lh_vec_add_arg1_6 _lh_vec_add_arg2_8 =
  (match _lh_vec_add_arg1_6 with
    | `LH_P2(_lh_vec_add_LH_P2_0_1_0, _lh_vec_add_LH_P2_1_1_0) -> 
      (match _lh_vec_add_arg2_8 with
        | `LH_P2(_lh_vec_add_LH_P2_0_1_1, _lh_vec_add_LH_P2_1_1_1) -> 
          (let rec _lh_vec_add_LH_P2_1_1_2 = (_lh_vec_add_LH_P2_1_1_0 + _lh_vec_add_LH_P2_1_1_1) in
            (let rec _lh_vec_add_LH_P2_0_1_2 = (_lh_vec_add_LH_P2_0_1_0 + _lh_vec_add_LH_P2_0_1_1) in
              (fun _lh_vec_add_arg2_9 -> 
                (match _lh_vec_add_arg2_9 with
                  | `LH_P2(_lh_vec_add_LH_P2_0_1_3, _lh_vec_add_LH_P2_1_1_3) -> 
                    (`LH_P2((_lh_vec_add_LH_P2_0_1_2 + _lh_vec_add_LH_P2_0_1_3), (_lh_vec_add_LH_P2_1_1_2 + _lh_vec_add_LH_P2_1_1_3)))
                  | _ -> 
                    (failwith "error")))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vec_sub_lh__d6 _lh_vec_sub_arg1_1 _lh_vec_sub_arg2_3 =
  (_lh_vec_sub_arg1_1 _lh_vec_sub_arg2_3);;
let rec rot_lh__d6 _lh_rot_arg1_7 _lh_rot_arg2_7 _lh_rot_arg3_7 _lh_rot_arg4_7 =
  (((_lh_rot_arg1_7 ((vec_add_lh__d6 _lh_rot_arg2_7) _lh_rot_arg3_7)) _lh_rot_arg4_7) ((vec_sub_lh__d6 (let rec _lh_vec_sub_LH_P2_1_1_4 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_1_4 = 0 in
      (fun _lh_vec_sub_arg2_1_3 -> 
        (match _lh_vec_sub_arg2_1_3 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_1_5, _lh_vec_sub_LH_P2_1_1_5) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_1_4 - _lh_vec_sub_LH_P2_0_1_5), (_lh_vec_sub_LH_P2_1_1_4 - _lh_vec_sub_LH_P2_1_1_5)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_7));;
let rec vec_sub_lh__d2 _lh_vec_sub_arg1_6 _lh_vec_sub_arg2_1_5 =
  (_lh_vec_sub_arg1_6 _lh_vec_sub_arg2_1_5);;
let rec vec_add_lh__d2 _lh_vec_add_arg1_0 _lh_vec_add_arg2_0 =
  (_lh_vec_add_arg1_0 _lh_vec_add_arg2_0);;
let rec rot_lh__d2 _lh_rot_arg1_8 _lh_rot_arg2_8 _lh_rot_arg3_8 _lh_rot_arg4_8 =
  (((_lh_rot_arg1_8 ((vec_add_lh__d2 _lh_rot_arg2_8) _lh_rot_arg3_8)) _lh_rot_arg4_8) ((vec_sub_lh__d2 (let rec _lh_vec_sub_LH_P2_1_1_6 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_1_6 = 0 in
      (fun _lh_vec_sub_arg2_1_4 -> 
        (match _lh_vec_sub_arg2_1_4 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_1_7, _lh_vec_sub_LH_P2_1_1_7) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_1_6 - _lh_vec_sub_LH_P2_0_1_7), (_lh_vec_sub_LH_P2_1_1_6 - _lh_vec_sub_LH_P2_1_1_7)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_8));;
let rec vec_add_lh__d5 _lh_vec_add_arg1_5 _lh_vec_add_arg2_7 =
  (_lh_vec_add_arg1_5 _lh_vec_add_arg2_7);;
let rec vec_sub_lh__d5 _lh_vec_sub_arg1_2 _lh_vec_sub_arg2_6 =
  (_lh_vec_sub_arg1_2 _lh_vec_sub_arg2_6);;
let rec rot_lh__d5 _lh_rot_arg1_9 _lh_rot_arg2_9 _lh_rot_arg3_9 _lh_rot_arg4_9 =
  (((_lh_rot_arg1_9 ((vec_add_lh__d5 _lh_rot_arg2_9) _lh_rot_arg3_9)) _lh_rot_arg4_9) ((vec_sub_lh__d5 (let rec _lh_vec_sub_LH_P2_1_1_8 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_1_8 = 0 in
      (fun _lh_vec_sub_arg2_1_6 -> 
        (match _lh_vec_sub_arg2_1_6 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_1_9, _lh_vec_sub_LH_P2_1_1_9) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_1_8 - _lh_vec_sub_LH_P2_0_1_9), (_lh_vec_sub_LH_P2_1_1_8 - _lh_vec_sub_LH_P2_1_1_9)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_9));;
let rec cycle'_lh__d1 _lh_cycle'_arg1_0 =
  ((((quartet_lh__d1 _lh_cycle'_arg1_0) (rot_lh__d4 (rot_lh__d3 (rot_lh__d5 _lh_cycle'_arg1_0)))) (rot_lh__d1 _lh_cycle'_arg1_0)) (rot_lh__d6 (rot_lh__d2 _lh_cycle'_arg1_0)));;
let rec quartet_lh__d4 _lh_quartet_arg1_2 _lh_quartet_arg2_2 _lh_quartet_arg3_2 _lh_quartet_arg4_2 =
  ((((above_lh__d1 1) 1) ((((beside_lh__d2 1) 1) _lh_quartet_arg1_2) _lh_quartet_arg2_2)) ((((beside_lh__d2 1) 1) _lh_quartet_arg3_2) _lh_quartet_arg4_2));;
let rec vec_sub_lh__d7 _lh_vec_sub_arg1_0 _lh_vec_sub_arg2_2 =
  (_lh_vec_sub_arg1_0 _lh_vec_sub_arg2_2);;
let rec rot_lh__d1_d0 _lh_rot_arg1_4 _lh_rot_arg2_4 _lh_rot_arg3_4 _lh_rot_arg4_4 =
  (((_lh_rot_arg1_4 ((vec_add_lh__d7 _lh_rot_arg2_4) _lh_rot_arg3_4)) _lh_rot_arg4_4) ((vec_sub_lh__d7 (let rec _lh_vec_sub_LH_P2_1_8 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_8 = 0 in
      (fun _lh_vec_sub_arg2_7 -> 
        (match _lh_vec_sub_arg2_7 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_9, _lh_vec_sub_LH_P2_1_9) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_8 - _lh_vec_sub_LH_P2_0_9), (_lh_vec_sub_LH_P2_1_8 - _lh_vec_sub_LH_P2_1_9)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_4));;
let rec grid_lh__d1 _lh_grid_arg1_2_4_4 _lh_grid_arg2_2_4_4 _lh_grid_arg3_0 _lh_grid_arg4_2_4_4 _lh_grid_arg5_2_4_4 _lh_grid_arg6_2_4_4 =
  (let rec _lh_listcomp_fun_2_4_4 = (fun _lh_listcomp_fun_para_0 -> 
    ((((((_lh_listcomp_fun_para_0 _lh_grid_arg1_2_4_4) _lh_grid_arg2_2_4_4) _lh_grid_arg4_2_4_4) _lh_grid_arg5_2_4_4) _lh_grid_arg6_2_4_4) _lh_listcomp_fun_2_4_4)) in
    (_lh_listcomp_fun_2_4_4 _lh_grid_arg3_0));;
let rec tile_to_grid_lh__d1 _lh_tile_to_grid_arg1_0 =
  (((grid_lh__d1 16) 16) _lh_tile_to_grid_arg1_0);;
let rec tup2_lh__d1 _lh_tup2_arg1_0 _lh_tup2_arg2_0 =
  (match _lh_tup2_arg1_0 with
    | `LH_P2(_lh_tup2_LH_P2_0_0, _lh_tup2_LH_P2_1_0) -> 
      (match _lh_tup2_arg2_0 with
        | `LH_P2(_lh_tup2_LH_P2_0_1, _lh_tup2_LH_P2_1_1) -> 
          (`LH_P4(_lh_tup2_LH_P2_0_0, _lh_tup2_LH_P2_1_0, _lh_tup2_LH_P2_0_1, _lh_tup2_LH_P2_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec p_tile_lh__d1 =
  (let rec _lh_listcomp_fun_ls_t_1_8_0 = (let rec _lh_listcomp_fun_ls_t_1_8_1 = (let rec _lh_listcomp_fun_ls_t_1_8_2 = (let rec _lh_listcomp_fun_ls_t_1_8_3 = (let rec _lh_listcomp_fun_ls_t_1_8_4 = (let rec _lh_listcomp_fun_ls_t_1_8_5 = (let rec _lh_listcomp_fun_ls_t_1_8_6 = (let rec _lh_listcomp_fun_ls_t_1_8_7 = (let rec _lh_listcomp_fun_ls_t_1_8_8 = (let rec _lh_listcomp_fun_ls_t_1_8_9 = (let rec _lh_listcomp_fun_ls_t_1_9_0 = (let rec _lh_listcomp_fun_ls_t_1_9_1 = (let rec _lh_listcomp_fun_ls_t_1_9_2 = (let rec _lh_listcomp_fun_ls_t_1_9_3 = (let rec _lh_listcomp_fun_ls_t_1_9_4 = (let rec _lh_listcomp_fun_ls_t_1_9_5 = (let rec _lh_listcomp_fun_ls_t_1_9_6 = (let rec _lh_listcomp_fun_ls_t_1_9_7 = (let rec _lh_listcomp_fun_ls_t_1_9_8 = (let rec _lh_listcomp_fun_ls_t_1_9_9 = (let rec _lh_listcomp_fun_ls_t_2_0_0 = (let rec _lh_listcomp_fun_ls_t_2_0_1 = (let rec _lh_listcomp_fun_ls_t_2_0_2 = (let rec _lh_listcomp_fun_ls_t_2_0_3 = (let rec _lh_listcomp_fun_ls_t_2_0_4 = (let rec _lh_listcomp_fun_ls_t_2_0_5 = (let rec _lh_listcomp_fun_ls_t_2_0_6 = (let rec _lh_listcomp_fun_ls_t_2_0_7 = (let rec _lh_listcomp_fun_ls_t_2_0_8 = (let rec _lh_listcomp_fun_ls_t_2_0_9 = (fun _lh_grid_arg1_1_8_3 _lh_grid_arg2_1_8_3 _lh_grid_arg4_1_8_3 _lh_grid_arg5_1_8_3 _lh_grid_arg6_1_8_3 _lh_listcomp_fun_1_8_3 -> 
    (`LH_N)) in
    (let rec _lh_listcomp_fun_ls_h_9_0 = (let rec _lh_grid_LH_P4_3_9_0 = 2 in
      (let rec _lh_grid_LH_P4_2_9_0 = 16 in
        (let rec _lh_grid_LH_P4_1_9_0 = 2 in
          (let rec _lh_grid_LH_P4_0_9_0 = 14 in
            (fun _lh_grid_arg1_1_8_4 _lh_grid_arg2_1_8_4 _lh_grid_arg4_1_8_4 _lh_grid_arg5_1_8_4 _lh_grid_arg6_1_8_4 _lh_listcomp_fun_ls_t_2_1_0 _lh_listcomp_fun_1_8_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_8_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_8_4) _lh_grid_LH_P4_0_9_0) _lh_grid_arg1_1_8_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_8_4) _lh_grid_LH_P4_1_9_0) _lh_grid_arg2_1_8_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_8_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_8_4) _lh_grid_LH_P4_2_9_0) _lh_grid_arg1_1_8_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_8_4) _lh_grid_LH_P4_3_9_0) _lh_grid_arg2_1_8_4))), (_lh_listcomp_fun_1_8_4 _lh_listcomp_fun_ls_t_2_1_0)))))))) in
      (fun _lh_grid_arg1_1_8_5 _lh_grid_arg2_1_8_5 _lh_grid_arg4_1_8_5 _lh_grid_arg5_1_8_5 _lh_grid_arg6_1_8_5 _lh_listcomp_fun_1_8_5 -> 
        (((((((_lh_listcomp_fun_ls_h_9_0 _lh_grid_arg1_1_8_5) _lh_grid_arg2_1_8_5) _lh_grid_arg4_1_8_5) _lh_grid_arg5_1_8_5) _lh_grid_arg6_1_8_5) _lh_listcomp_fun_ls_t_2_0_9) _lh_listcomp_fun_1_8_5)))) in
    (let rec _lh_listcomp_fun_ls_h_9_1 = (let rec _lh_grid_LH_P4_3_9_1 = 2 in
      (let rec _lh_grid_LH_P4_2_9_1 = 14 in
        (let rec _lh_grid_LH_P4_1_9_1 = 0 in
          (let rec _lh_grid_LH_P4_0_9_1 = 11 in
            (fun _lh_grid_arg1_1_8_6 _lh_grid_arg2_1_8_6 _lh_grid_arg4_1_8_6 _lh_grid_arg5_1_8_6 _lh_grid_arg6_1_8_6 _lh_listcomp_fun_ls_t_2_1_1 _lh_listcomp_fun_1_8_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_8_6) (((scale_vec2_lh__d1 _lh_grid_arg5_1_8_6) _lh_grid_LH_P4_0_9_1) _lh_grid_arg1_1_8_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_8_6) _lh_grid_LH_P4_1_9_1) _lh_grid_arg2_1_8_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_8_6) (((scale_vec2_lh__d1 _lh_grid_arg5_1_8_6) _lh_grid_LH_P4_2_9_1) _lh_grid_arg1_1_8_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_8_6) _lh_grid_LH_P4_3_9_1) _lh_grid_arg2_1_8_6))), (_lh_listcomp_fun_1_8_6 _lh_listcomp_fun_ls_t_2_1_1)))))))) in
      (fun _lh_grid_arg1_1_8_7 _lh_grid_arg2_1_8_7 _lh_grid_arg4_1_8_7 _lh_grid_arg5_1_8_7 _lh_grid_arg6_1_8_7 _lh_listcomp_fun_1_8_7 -> 
        (((((((_lh_listcomp_fun_ls_h_9_1 _lh_grid_arg1_1_8_7) _lh_grid_arg2_1_8_7) _lh_grid_arg4_1_8_7) _lh_grid_arg5_1_8_7) _lh_grid_arg6_1_8_7) _lh_listcomp_fun_ls_t_2_0_8) _lh_listcomp_fun_1_8_7)))) in
    (let rec _lh_listcomp_fun_ls_h_9_2 = (let rec _lh_grid_LH_P4_3_9_2 = 4 in
      (let rec _lh_grid_LH_P4_2_9_2 = 16 in
        (let rec _lh_grid_LH_P4_1_9_2 = 5 in
          (let rec _lh_grid_LH_P4_0_9_2 = 13 in
            (fun _lh_grid_arg1_1_8_8 _lh_grid_arg2_1_8_8 _lh_grid_arg4_1_8_8 _lh_grid_arg5_1_8_8 _lh_grid_arg6_1_8_8 _lh_listcomp_fun_ls_t_2_1_2 _lh_listcomp_fun_1_8_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_8_8) (((scale_vec2_lh__d1 _lh_grid_arg5_1_8_8) _lh_grid_LH_P4_0_9_2) _lh_grid_arg1_1_8_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_8_8) _lh_grid_LH_P4_1_9_2) _lh_grid_arg2_1_8_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_8_8) (((scale_vec2_lh__d1 _lh_grid_arg5_1_8_8) _lh_grid_LH_P4_2_9_2) _lh_grid_arg1_1_8_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_8_8) _lh_grid_LH_P4_3_9_2) _lh_grid_arg2_1_8_8))), (_lh_listcomp_fun_1_8_8 _lh_listcomp_fun_ls_t_2_1_2)))))))) in
      (fun _lh_grid_arg1_1_8_9 _lh_grid_arg2_1_8_9 _lh_grid_arg4_1_8_9 _lh_grid_arg5_1_8_9 _lh_grid_arg6_1_8_9 _lh_listcomp_fun_1_8_9 -> 
        (((((((_lh_listcomp_fun_ls_h_9_2 _lh_grid_arg1_1_8_9) _lh_grid_arg2_1_8_9) _lh_grid_arg4_1_8_9) _lh_grid_arg5_1_8_9) _lh_grid_arg6_1_8_9) _lh_listcomp_fun_ls_t_2_0_7) _lh_listcomp_fun_1_8_9)))) in
    (let rec _lh_listcomp_fun_ls_h_9_3 = (let rec _lh_grid_LH_P4_3_9_3 = 5 in
      (let rec _lh_grid_LH_P4_2_9_3 = 13 in
        (let rec _lh_grid_LH_P4_1_9_3 = 4 in
          (let rec _lh_grid_LH_P4_0_9_3 = 10 in
            (fun _lh_grid_arg1_1_9_0 _lh_grid_arg2_1_9_0 _lh_grid_arg4_1_9_0 _lh_grid_arg5_1_9_0 _lh_grid_arg6_1_9_0 _lh_listcomp_fun_ls_t_2_1_3 _lh_listcomp_fun_1_9_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_0) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_0) _lh_grid_LH_P4_0_9_3) _lh_grid_arg1_1_9_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_0) _lh_grid_LH_P4_1_9_3) _lh_grid_arg2_1_9_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_0) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_0) _lh_grid_LH_P4_2_9_3) _lh_grid_arg1_1_9_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_0) _lh_grid_LH_P4_3_9_3) _lh_grid_arg2_1_9_0))), (_lh_listcomp_fun_1_9_0 _lh_listcomp_fun_ls_t_2_1_3)))))))) in
      (fun _lh_grid_arg1_1_9_1 _lh_grid_arg2_1_9_1 _lh_grid_arg4_1_9_1 _lh_grid_arg5_1_9_1 _lh_grid_arg6_1_9_1 _lh_listcomp_fun_1_9_1 -> 
        (((((((_lh_listcomp_fun_ls_h_9_3 _lh_grid_arg1_1_9_1) _lh_grid_arg2_1_9_1) _lh_grid_arg4_1_9_1) _lh_grid_arg5_1_9_1) _lh_grid_arg6_1_9_1) _lh_listcomp_fun_ls_t_2_0_6) _lh_listcomp_fun_1_9_1)))) in
    (let rec _lh_listcomp_fun_ls_h_9_4 = (let rec _lh_grid_LH_P4_3_9_4 = 6 in
      (let rec _lh_grid_LH_P4_2_9_4 = 16 in
        (let rec _lh_grid_LH_P4_1_9_4 = 7 in
          (let rec _lh_grid_LH_P4_0_9_4 = 12 in
            (fun _lh_grid_arg1_1_9_2 _lh_grid_arg2_1_9_2 _lh_grid_arg4_1_9_2 _lh_grid_arg5_1_9_2 _lh_grid_arg6_1_9_2 _lh_listcomp_fun_ls_t_2_1_4 _lh_listcomp_fun_1_9_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_2) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_2) _lh_grid_LH_P4_0_9_4) _lh_grid_arg1_1_9_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_2) _lh_grid_LH_P4_1_9_4) _lh_grid_arg2_1_9_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_2) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_2) _lh_grid_LH_P4_2_9_4) _lh_grid_arg1_1_9_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_2) _lh_grid_LH_P4_3_9_4) _lh_grid_arg2_1_9_2))), (_lh_listcomp_fun_1_9_2 _lh_listcomp_fun_ls_t_2_1_4)))))))) in
      (fun _lh_grid_arg1_1_9_3 _lh_grid_arg2_1_9_3 _lh_grid_arg4_1_9_3 _lh_grid_arg5_1_9_3 _lh_grid_arg6_1_9_3 _lh_listcomp_fun_1_9_3 -> 
        (((((((_lh_listcomp_fun_ls_h_9_4 _lh_grid_arg1_1_9_3) _lh_grid_arg2_1_9_3) _lh_grid_arg4_1_9_3) _lh_grid_arg5_1_9_3) _lh_grid_arg6_1_9_3) _lh_listcomp_fun_ls_t_2_0_5) _lh_listcomp_fun_1_9_3)))) in
    (let rec _lh_listcomp_fun_ls_h_9_5 = (let rec _lh_grid_LH_P4_3_9_5 = 7 in
      (let rec _lh_grid_LH_P4_2_9_5 = 12 in
        (let rec _lh_grid_LH_P4_1_9_5 = 6 in
          (let rec _lh_grid_LH_P4_0_9_5 = 9 in
            (fun _lh_grid_arg1_1_9_4 _lh_grid_arg2_1_9_4 _lh_grid_arg4_1_9_4 _lh_grid_arg5_1_9_4 _lh_grid_arg6_1_9_4 _lh_listcomp_fun_ls_t_2_1_5 _lh_listcomp_fun_1_9_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_4) _lh_grid_LH_P4_0_9_5) _lh_grid_arg1_1_9_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_4) _lh_grid_LH_P4_1_9_5) _lh_grid_arg2_1_9_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_4) _lh_grid_LH_P4_2_9_5) _lh_grid_arg1_1_9_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_4) _lh_grid_LH_P4_3_9_5) _lh_grid_arg2_1_9_4))), (_lh_listcomp_fun_1_9_4 _lh_listcomp_fun_ls_t_2_1_5)))))))) in
      (fun _lh_grid_arg1_1_9_5 _lh_grid_arg2_1_9_5 _lh_grid_arg4_1_9_5 _lh_grid_arg5_1_9_5 _lh_grid_arg6_1_9_5 _lh_listcomp_fun_1_9_5 -> 
        (((((((_lh_listcomp_fun_ls_h_9_5 _lh_grid_arg1_1_9_5) _lh_grid_arg2_1_9_5) _lh_grid_arg4_1_9_5) _lh_grid_arg5_1_9_5) _lh_grid_arg6_1_9_5) _lh_listcomp_fun_ls_t_2_0_4) _lh_listcomp_fun_1_9_5)))) in
    (let rec _lh_listcomp_fun_ls_h_9_6 = (let rec _lh_grid_LH_P4_3_9_6 = 8 in
      (let rec _lh_grid_LH_P4_2_9_6 = 16 in
        (let rec _lh_grid_LH_P4_1_9_6 = 9 in
          (let rec _lh_grid_LH_P4_0_9_6 = 12 in
            (fun _lh_grid_arg1_1_9_6 _lh_grid_arg2_1_9_6 _lh_grid_arg4_1_9_6 _lh_grid_arg5_1_9_6 _lh_grid_arg6_1_9_6 _lh_listcomp_fun_ls_t_2_1_6 _lh_listcomp_fun_1_9_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_6) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_6) _lh_grid_LH_P4_0_9_6) _lh_grid_arg1_1_9_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_6) _lh_grid_LH_P4_1_9_6) _lh_grid_arg2_1_9_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_6) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_6) _lh_grid_LH_P4_2_9_6) _lh_grid_arg1_1_9_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_6) _lh_grid_LH_P4_3_9_6) _lh_grid_arg2_1_9_6))), (_lh_listcomp_fun_1_9_6 _lh_listcomp_fun_ls_t_2_1_6)))))))) in
      (fun _lh_grid_arg1_1_9_7 _lh_grid_arg2_1_9_7 _lh_grid_arg4_1_9_7 _lh_grid_arg5_1_9_7 _lh_grid_arg6_1_9_7 _lh_listcomp_fun_1_9_7 -> 
        (((((((_lh_listcomp_fun_ls_h_9_6 _lh_grid_arg1_1_9_7) _lh_grid_arg2_1_9_7) _lh_grid_arg4_1_9_7) _lh_grid_arg5_1_9_7) _lh_grid_arg6_1_9_7) _lh_listcomp_fun_ls_t_2_0_3) _lh_listcomp_fun_1_9_7)))) in
    (let rec _lh_listcomp_fun_ls_h_9_7 = (let rec _lh_grid_LH_P4_3_9_7 = 9 in
      (let rec _lh_grid_LH_P4_2_9_7 = 12 in
        (let rec _lh_grid_LH_P4_1_9_7 = 8 in
          (let rec _lh_grid_LH_P4_0_9_7 = 8 in
            (fun _lh_grid_arg1_1_9_8 _lh_grid_arg2_1_9_8 _lh_grid_arg4_1_9_8 _lh_grid_arg5_1_9_8 _lh_grid_arg6_1_9_8 _lh_listcomp_fun_ls_t_2_1_7 _lh_listcomp_fun_1_9_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_8) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_8) _lh_grid_LH_P4_0_9_7) _lh_grid_arg1_1_9_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_8) _lh_grid_LH_P4_1_9_7) _lh_grid_arg2_1_9_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9_8) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9_8) _lh_grid_LH_P4_2_9_7) _lh_grid_arg1_1_9_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9_8) _lh_grid_LH_P4_3_9_7) _lh_grid_arg2_1_9_8))), (_lh_listcomp_fun_1_9_8 _lh_listcomp_fun_ls_t_2_1_7)))))))) in
      (fun _lh_grid_arg1_1_9_9 _lh_grid_arg2_1_9_9 _lh_grid_arg4_1_9_9 _lh_grid_arg5_1_9_9 _lh_grid_arg6_1_9_9 _lh_listcomp_fun_1_9_9 -> 
        (((((((_lh_listcomp_fun_ls_h_9_7 _lh_grid_arg1_1_9_9) _lh_grid_arg2_1_9_9) _lh_grid_arg4_1_9_9) _lh_grid_arg5_1_9_9) _lh_grid_arg6_1_9_9) _lh_listcomp_fun_ls_t_2_0_2) _lh_listcomp_fun_1_9_9)))) in
    (let rec _lh_listcomp_fun_ls_h_9_8 = (let rec _lh_grid_LH_P4_3_9_8 = 10 in
      (let rec _lh_grid_LH_P4_2_9_8 = 16 in
        (let rec _lh_grid_LH_P4_1_9_8 = 12 in
          (let rec _lh_grid_LH_P4_0_9_8 = 8 in
            (fun _lh_grid_arg1_2_0_0 _lh_grid_arg2_2_0_0 _lh_grid_arg4_2_0_0 _lh_grid_arg5_2_0_0 _lh_grid_arg6_2_0_0 _lh_listcomp_fun_ls_t_2_1_8 _lh_listcomp_fun_2_0_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_0) _lh_grid_LH_P4_0_9_8) _lh_grid_arg1_2_0_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_0) _lh_grid_LH_P4_1_9_8) _lh_grid_arg2_2_0_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_0) _lh_grid_LH_P4_2_9_8) _lh_grid_arg1_2_0_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_0) _lh_grid_LH_P4_3_9_8) _lh_grid_arg2_2_0_0))), (_lh_listcomp_fun_2_0_0 _lh_listcomp_fun_ls_t_2_1_8)))))))) in
      (fun _lh_grid_arg1_2_0_1 _lh_grid_arg2_2_0_1 _lh_grid_arg4_2_0_1 _lh_grid_arg5_2_0_1 _lh_grid_arg6_2_0_1 _lh_listcomp_fun_2_0_1 -> 
        (((((((_lh_listcomp_fun_ls_h_9_8 _lh_grid_arg1_2_0_1) _lh_grid_arg2_2_0_1) _lh_grid_arg4_2_0_1) _lh_grid_arg5_2_0_1) _lh_grid_arg6_2_0_1) _lh_listcomp_fun_ls_t_2_0_1) _lh_listcomp_fun_2_0_1)))) in
    (let rec _lh_listcomp_fun_ls_h_9_9 = (let rec _lh_grid_LH_P4_3_9_9 = 15 in
      (let rec _lh_grid_LH_P4_2_9_9 = 16 in
        (let rec _lh_grid_LH_P4_1_9_9 = 16 in
          (let rec _lh_grid_LH_P4_0_9_9 = 14 in
            (fun _lh_grid_arg1_2_0_2 _lh_grid_arg2_2_0_2 _lh_grid_arg4_2_0_2 _lh_grid_arg5_2_0_2 _lh_grid_arg6_2_0_2 _lh_listcomp_fun_ls_t_2_1_9 _lh_listcomp_fun_2_0_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_2) _lh_grid_LH_P4_0_9_9) _lh_grid_arg1_2_0_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_2) _lh_grid_LH_P4_1_9_9) _lh_grid_arg2_2_0_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_2) _lh_grid_LH_P4_2_9_9) _lh_grid_arg1_2_0_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_2) _lh_grid_LH_P4_3_9_9) _lh_grid_arg2_2_0_2))), (_lh_listcomp_fun_2_0_2 _lh_listcomp_fun_ls_t_2_1_9)))))))) in
      (fun _lh_grid_arg1_2_0_3 _lh_grid_arg2_2_0_3 _lh_grid_arg4_2_0_3 _lh_grid_arg5_2_0_3 _lh_grid_arg6_2_0_3 _lh_listcomp_fun_2_0_3 -> 
        (((((((_lh_listcomp_fun_ls_h_9_9 _lh_grid_arg1_2_0_3) _lh_grid_arg2_2_0_3) _lh_grid_arg4_2_0_3) _lh_grid_arg5_2_0_3) _lh_grid_arg6_2_0_3) _lh_listcomp_fun_ls_t_2_0_0) _lh_listcomp_fun_2_0_3)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_0 = (let rec _lh_grid_LH_P4_3_1_0_0 = 14 in
      (let rec _lh_grid_LH_P4_2_1_0_0 = 16 in
        (let rec _lh_grid_LH_P4_1_1_0_0 = 15 in
          (let rec _lh_grid_LH_P4_0_1_0_0 = 13 in
            (fun _lh_grid_arg1_2_0_4 _lh_grid_arg2_2_0_4 _lh_grid_arg4_2_0_4 _lh_grid_arg5_2_0_4 _lh_grid_arg6_2_0_4 _lh_listcomp_fun_ls_t_2_2_0 _lh_listcomp_fun_2_0_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_4) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_4) _lh_grid_LH_P4_0_1_0_0) _lh_grid_arg1_2_0_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_4) _lh_grid_LH_P4_1_1_0_0) _lh_grid_arg2_2_0_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_4) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_4) _lh_grid_LH_P4_2_1_0_0) _lh_grid_arg1_2_0_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_4) _lh_grid_LH_P4_3_1_0_0) _lh_grid_arg2_2_0_4))), (_lh_listcomp_fun_2_0_4 _lh_listcomp_fun_ls_t_2_2_0)))))))) in
      (fun _lh_grid_arg1_2_0_5 _lh_grid_arg2_2_0_5 _lh_grid_arg4_2_0_5 _lh_grid_arg5_2_0_5 _lh_grid_arg6_2_0_5 _lh_listcomp_fun_2_0_5 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_0 _lh_grid_arg1_2_0_5) _lh_grid_arg2_2_0_5) _lh_grid_arg4_2_0_5) _lh_grid_arg5_2_0_5) _lh_grid_arg6_2_0_5) _lh_listcomp_fun_ls_t_1_9_9) _lh_listcomp_fun_2_0_5)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_1 = (let rec _lh_grid_LH_P4_3_1_0_1 = 15 in
      (let rec _lh_grid_LH_P4_2_1_0_1 = 13 in
        (let rec _lh_grid_LH_P4_1_1_0_1 = 16 in
          (let rec _lh_grid_LH_P4_0_1_0_1 = 12 in
            (fun _lh_grid_arg1_2_0_6 _lh_grid_arg2_2_0_6 _lh_grid_arg4_2_0_6 _lh_grid_arg5_2_0_6 _lh_grid_arg6_2_0_6 _lh_listcomp_fun_ls_t_2_2_1 _lh_listcomp_fun_2_0_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_6) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_6) _lh_grid_LH_P4_0_1_0_1) _lh_grid_arg1_2_0_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_6) _lh_grid_LH_P4_1_1_0_1) _lh_grid_arg2_2_0_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_6) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_6) _lh_grid_LH_P4_2_1_0_1) _lh_grid_arg1_2_0_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_6) _lh_grid_LH_P4_3_1_0_1) _lh_grid_arg2_2_0_6))), (_lh_listcomp_fun_2_0_6 _lh_listcomp_fun_ls_t_2_2_1)))))))) in
      (fun _lh_grid_arg1_2_0_7 _lh_grid_arg2_2_0_7 _lh_grid_arg4_2_0_7 _lh_grid_arg5_2_0_7 _lh_grid_arg6_2_0_7 _lh_listcomp_fun_2_0_7 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_1 _lh_grid_arg1_2_0_7) _lh_grid_arg2_2_0_7) _lh_grid_arg4_2_0_7) _lh_grid_arg5_2_0_7) _lh_grid_arg6_2_0_7) _lh_listcomp_fun_ls_t_1_9_8) _lh_listcomp_fun_2_0_7)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_2 = (let rec _lh_grid_LH_P4_3_1_0_2 = 13 in
      (let rec _lh_grid_LH_P4_2_1_0_2 = 16 in
        (let rec _lh_grid_LH_P4_1_1_0_2 = 14 in
          (let rec _lh_grid_LH_P4_0_1_0_2 = 12 in
            (fun _lh_grid_arg1_2_0_8 _lh_grid_arg2_2_0_8 _lh_grid_arg4_2_0_8 _lh_grid_arg5_2_0_8 _lh_grid_arg6_2_0_8 _lh_listcomp_fun_ls_t_2_2_2 _lh_listcomp_fun_2_0_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_8) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_8) _lh_grid_LH_P4_0_1_0_2) _lh_grid_arg1_2_0_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_8) _lh_grid_LH_P4_1_1_0_2) _lh_grid_arg2_2_0_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_0_8) (((scale_vec2_lh__d1 _lh_grid_arg5_2_0_8) _lh_grid_LH_P4_2_1_0_2) _lh_grid_arg1_2_0_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_0_8) _lh_grid_LH_P4_3_1_0_2) _lh_grid_arg2_2_0_8))), (_lh_listcomp_fun_2_0_8 _lh_listcomp_fun_ls_t_2_2_2)))))))) in
      (fun _lh_grid_arg1_2_0_9 _lh_grid_arg2_2_0_9 _lh_grid_arg4_2_0_9 _lh_grid_arg5_2_0_9 _lh_grid_arg6_2_0_9 _lh_listcomp_fun_2_0_9 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_2 _lh_grid_arg1_2_0_9) _lh_grid_arg2_2_0_9) _lh_grid_arg4_2_0_9) _lh_grid_arg5_2_0_9) _lh_grid_arg6_2_0_9) _lh_listcomp_fun_ls_t_1_9_7) _lh_listcomp_fun_2_0_9)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_3 = (let rec _lh_grid_LH_P4_3_1_0_3 = 14 in
      (let rec _lh_grid_LH_P4_2_1_0_3 = 12 in
        (let rec _lh_grid_LH_P4_1_1_0_3 = 16 in
          (let rec _lh_grid_LH_P4_0_1_0_3 = 10 in
            (fun _lh_grid_arg1_2_1_0 _lh_grid_arg2_2_1_0 _lh_grid_arg4_2_1_0 _lh_grid_arg5_2_1_0 _lh_grid_arg6_2_1_0 _lh_listcomp_fun_ls_t_2_2_3 _lh_listcomp_fun_2_1_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_0) _lh_grid_LH_P4_0_1_0_3) _lh_grid_arg1_2_1_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_0) _lh_grid_LH_P4_1_1_0_3) _lh_grid_arg2_2_1_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_0) _lh_grid_LH_P4_2_1_0_3) _lh_grid_arg1_2_1_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_0) _lh_grid_LH_P4_3_1_0_3) _lh_grid_arg2_2_1_0))), (_lh_listcomp_fun_2_1_0 _lh_listcomp_fun_ls_t_2_2_3)))))))) in
      (fun _lh_grid_arg1_2_1_1 _lh_grid_arg2_2_1_1 _lh_grid_arg4_2_1_1 _lh_grid_arg5_2_1_1 _lh_grid_arg6_2_1_1 _lh_listcomp_fun_2_1_1 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_3 _lh_grid_arg1_2_1_1) _lh_grid_arg2_2_1_1) _lh_grid_arg4_2_1_1) _lh_grid_arg5_2_1_1) _lh_grid_arg6_2_1_1) _lh_listcomp_fun_ls_t_1_9_6) _lh_listcomp_fun_2_1_1)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_4 = (let rec _lh_grid_LH_P4_3_1_0_4 = 12 in
      (let rec _lh_grid_LH_P4_2_1_0_4 = 16 in
        (let rec _lh_grid_LH_P4_1_1_0_4 = 12 in
          (let rec _lh_grid_LH_P4_0_1_0_4 = 12 in
            (fun _lh_grid_arg1_2_1_2 _lh_grid_arg2_2_1_2 _lh_grid_arg4_2_1_2 _lh_grid_arg5_2_1_2 _lh_grid_arg6_2_1_2 _lh_listcomp_fun_ls_t_2_2_4 _lh_listcomp_fun_2_1_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_2) _lh_grid_LH_P4_0_1_0_4) _lh_grid_arg1_2_1_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_2) _lh_grid_LH_P4_1_1_0_4) _lh_grid_arg2_2_1_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_2) _lh_grid_LH_P4_2_1_0_4) _lh_grid_arg1_2_1_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_2) _lh_grid_LH_P4_3_1_0_4) _lh_grid_arg2_2_1_2))), (_lh_listcomp_fun_2_1_2 _lh_listcomp_fun_ls_t_2_2_4)))))))) in
      (fun _lh_grid_arg1_2_1_3 _lh_grid_arg2_2_1_3 _lh_grid_arg4_2_1_3 _lh_grid_arg5_2_1_3 _lh_grid_arg6_2_1_3 _lh_listcomp_fun_2_1_3 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_4 _lh_grid_arg1_2_1_3) _lh_grid_arg2_2_1_3) _lh_grid_arg4_2_1_3) _lh_grid_arg5_2_1_3) _lh_grid_arg6_2_1_3) _lh_listcomp_fun_ls_t_1_9_5) _lh_listcomp_fun_2_1_3)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_5 = (let rec _lh_grid_LH_P4_3_1_0_5 = 12 in
      (let rec _lh_grid_LH_P4_2_1_0_5 = 12 in
        (let rec _lh_grid_LH_P4_1_1_0_5 = 16 in
          (let rec _lh_grid_LH_P4_0_1_0_5 = 8 in
            (fun _lh_grid_arg1_2_1_4 _lh_grid_arg2_2_1_4 _lh_grid_arg4_2_1_4 _lh_grid_arg5_2_1_4 _lh_grid_arg6_2_1_4 _lh_listcomp_fun_ls_t_2_2_5 _lh_listcomp_fun_2_1_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_4) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_4) _lh_grid_LH_P4_0_1_0_5) _lh_grid_arg1_2_1_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_4) _lh_grid_LH_P4_1_1_0_5) _lh_grid_arg2_2_1_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_4) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_4) _lh_grid_LH_P4_2_1_0_5) _lh_grid_arg1_2_1_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_4) _lh_grid_LH_P4_3_1_0_5) _lh_grid_arg2_2_1_4))), (_lh_listcomp_fun_2_1_4 _lh_listcomp_fun_ls_t_2_2_5)))))))) in
      (fun _lh_grid_arg1_2_1_5 _lh_grid_arg2_2_1_5 _lh_grid_arg4_2_1_5 _lh_grid_arg5_2_1_5 _lh_grid_arg6_2_1_5 _lh_listcomp_fun_2_1_5 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_5 _lh_grid_arg1_2_1_5) _lh_grid_arg2_2_1_5) _lh_grid_arg4_2_1_5) _lh_grid_arg5_2_1_5) _lh_grid_arg6_2_1_5) _lh_listcomp_fun_ls_t_1_9_4) _lh_listcomp_fun_2_1_5)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_6 = (let rec _lh_grid_LH_P4_3_1_0_6 = 16 in
      (let rec _lh_grid_LH_P4_2_1_0_6 = 8 in
        (let rec _lh_grid_LH_P4_1_1_0_6 = 15 in
          (let rec _lh_grid_LH_P4_0_1_0_6 = 6 in
            (fun _lh_grid_arg1_2_1_6 _lh_grid_arg2_2_1_6 _lh_grid_arg4_2_1_6 _lh_grid_arg5_2_1_6 _lh_grid_arg6_2_1_6 _lh_listcomp_fun_ls_t_2_2_6 _lh_listcomp_fun_2_1_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_6) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_6) _lh_grid_LH_P4_0_1_0_6) _lh_grid_arg1_2_1_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_6) _lh_grid_LH_P4_1_1_0_6) _lh_grid_arg2_2_1_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_6) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_6) _lh_grid_LH_P4_2_1_0_6) _lh_grid_arg1_2_1_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_6) _lh_grid_LH_P4_3_1_0_6) _lh_grid_arg2_2_1_6))), (_lh_listcomp_fun_2_1_6 _lh_listcomp_fun_ls_t_2_2_6)))))))) in
      (fun _lh_grid_arg1_2_1_7 _lh_grid_arg2_2_1_7 _lh_grid_arg4_2_1_7 _lh_grid_arg5_2_1_7 _lh_grid_arg6_2_1_7 _lh_listcomp_fun_2_1_7 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_6 _lh_grid_arg1_2_1_7) _lh_grid_arg2_2_1_7) _lh_grid_arg4_2_1_7) _lh_grid_arg5_2_1_7) _lh_grid_arg6_2_1_7) _lh_listcomp_fun_ls_t_1_9_3) _lh_listcomp_fun_2_1_7)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_7 = (let rec _lh_grid_LH_P4_3_1_0_7 = 15 in
      (let rec _lh_grid_LH_P4_2_1_0_7 = 6 in
        (let rec _lh_grid_LH_P4_1_1_0_7 = 16 in
          (let rec _lh_grid_LH_P4_0_1_0_7 = 0 in
            (fun _lh_grid_arg1_2_1_8 _lh_grid_arg2_2_1_8 _lh_grid_arg4_2_1_8 _lh_grid_arg5_2_1_8 _lh_grid_arg6_2_1_8 _lh_listcomp_fun_ls_t_2_2_7 _lh_listcomp_fun_2_1_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_8) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_8) _lh_grid_LH_P4_0_1_0_7) _lh_grid_arg1_2_1_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_8) _lh_grid_LH_P4_1_1_0_7) _lh_grid_arg2_2_1_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1_8) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1_8) _lh_grid_LH_P4_2_1_0_7) _lh_grid_arg1_2_1_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1_8) _lh_grid_LH_P4_3_1_0_7) _lh_grid_arg2_2_1_8))), (_lh_listcomp_fun_2_1_8 _lh_listcomp_fun_ls_t_2_2_7)))))))) in
      (fun _lh_grid_arg1_2_1_9 _lh_grid_arg2_2_1_9 _lh_grid_arg4_2_1_9 _lh_grid_arg5_2_1_9 _lh_grid_arg6_2_1_9 _lh_listcomp_fun_2_1_9 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_7 _lh_grid_arg1_2_1_9) _lh_grid_arg2_2_1_9) _lh_grid_arg4_2_1_9) _lh_grid_arg5_2_1_9) _lh_grid_arg6_2_1_9) _lh_listcomp_fun_ls_t_1_9_2) _lh_listcomp_fun_2_1_9)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_8 = (let rec _lh_grid_LH_P4_3_1_0_8 = 16 in
      (let rec _lh_grid_LH_P4_2_1_0_8 = 0 in
        (let rec _lh_grid_LH_P4_1_1_0_8 = 13 in
          (let rec _lh_grid_LH_P4_0_1_0_8 = 4 in
            (fun _lh_grid_arg1_2_2_0 _lh_grid_arg2_2_2_0 _lh_grid_arg4_2_2_0 _lh_grid_arg5_2_2_0 _lh_grid_arg6_2_2_0 _lh_listcomp_fun_ls_t_2_2_8 _lh_listcomp_fun_2_2_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_0) _lh_grid_LH_P4_0_1_0_8) _lh_grid_arg1_2_2_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_0) _lh_grid_LH_P4_1_1_0_8) _lh_grid_arg2_2_2_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_0) _lh_grid_LH_P4_2_1_0_8) _lh_grid_arg1_2_2_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_0) _lh_grid_LH_P4_3_1_0_8) _lh_grid_arg2_2_2_0))), (_lh_listcomp_fun_2_2_0 _lh_listcomp_fun_ls_t_2_2_8)))))))) in
      (fun _lh_grid_arg1_2_2_1 _lh_grid_arg2_2_2_1 _lh_grid_arg4_2_2_1 _lh_grid_arg5_2_2_1 _lh_grid_arg6_2_2_1 _lh_listcomp_fun_2_2_1 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_8 _lh_grid_arg1_2_2_1) _lh_grid_arg2_2_2_1) _lh_grid_arg4_2_2_1) _lh_grid_arg5_2_2_1) _lh_grid_arg6_2_2_1) _lh_listcomp_fun_ls_t_1_9_1) _lh_listcomp_fun_2_2_1)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0_9 = (let rec _lh_grid_LH_P4_3_1_0_9 = 13 in
      (let rec _lh_grid_LH_P4_2_1_0_9 = 4 in
        (let rec _lh_grid_LH_P4_1_1_0_9 = 8 in
          (let rec _lh_grid_LH_P4_0_1_0_9 = 8 in
            (fun _lh_grid_arg1_2_2_2 _lh_grid_arg2_2_2_2 _lh_grid_arg4_2_2_2 _lh_grid_arg5_2_2_2 _lh_grid_arg6_2_2_2 _lh_listcomp_fun_ls_t_2_2_9 _lh_listcomp_fun_2_2_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_2) _lh_grid_LH_P4_0_1_0_9) _lh_grid_arg1_2_2_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_2) _lh_grid_LH_P4_1_1_0_9) _lh_grid_arg2_2_2_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_2) _lh_grid_LH_P4_2_1_0_9) _lh_grid_arg1_2_2_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_2) _lh_grid_LH_P4_3_1_0_9) _lh_grid_arg2_2_2_2))), (_lh_listcomp_fun_2_2_2 _lh_listcomp_fun_ls_t_2_2_9)))))))) in
      (fun _lh_grid_arg1_2_2_3 _lh_grid_arg2_2_2_3 _lh_grid_arg4_2_2_3 _lh_grid_arg5_2_2_3 _lh_grid_arg6_2_2_3 _lh_listcomp_fun_2_2_3 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0_9 _lh_grid_arg1_2_2_3) _lh_grid_arg2_2_2_3) _lh_grid_arg4_2_2_3) _lh_grid_arg5_2_2_3) _lh_grid_arg6_2_2_3) _lh_listcomp_fun_ls_t_1_9_0) _lh_listcomp_fun_2_2_3)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_0 = (let rec _lh_grid_LH_P4_3_1_1_0 = 8 in
      (let rec _lh_grid_LH_P4_2_1_1_0 = 8 in
        (let rec _lh_grid_LH_P4_1_1_1_0 = 6 in
          (let rec _lh_grid_LH_P4_0_1_1_0 = 9 in
            (fun _lh_grid_arg1_2_2_4 _lh_grid_arg2_2_2_4 _lh_grid_arg4_2_2_4 _lh_grid_arg5_2_2_4 _lh_grid_arg6_2_2_4 _lh_listcomp_fun_ls_t_2_3_0 _lh_listcomp_fun_2_2_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_4) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_4) _lh_grid_LH_P4_0_1_1_0) _lh_grid_arg1_2_2_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_4) _lh_grid_LH_P4_1_1_1_0) _lh_grid_arg2_2_2_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_4) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_4) _lh_grid_LH_P4_2_1_1_0) _lh_grid_arg1_2_2_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_4) _lh_grid_LH_P4_3_1_1_0) _lh_grid_arg2_2_2_4))), (_lh_listcomp_fun_2_2_4 _lh_listcomp_fun_ls_t_2_3_0)))))))) in
      (fun _lh_grid_arg1_2_2_5 _lh_grid_arg2_2_2_5 _lh_grid_arg4_2_2_5 _lh_grid_arg5_2_2_5 _lh_grid_arg6_2_2_5 _lh_listcomp_fun_2_2_5 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_0 _lh_grid_arg1_2_2_5) _lh_grid_arg2_2_2_5) _lh_grid_arg4_2_2_5) _lh_grid_arg5_2_2_5) _lh_grid_arg6_2_2_5) _lh_listcomp_fun_ls_t_1_8_9) _lh_listcomp_fun_2_2_5)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_1 = (let rec _lh_grid_LH_P4_3_1_1_1 = 6 in
      (let rec _lh_grid_LH_P4_2_1_1_1 = 9 in
        (let rec _lh_grid_LH_P4_1_1_1_1 = 4 in
          (let rec _lh_grid_LH_P4_0_1_1_1 = 10 in
            (fun _lh_grid_arg1_2_2_6 _lh_grid_arg2_2_2_6 _lh_grid_arg4_2_2_6 _lh_grid_arg5_2_2_6 _lh_grid_arg6_2_2_6 _lh_listcomp_fun_ls_t_2_3_1 _lh_listcomp_fun_2_2_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_6) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_6) _lh_grid_LH_P4_0_1_1_1) _lh_grid_arg1_2_2_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_6) _lh_grid_LH_P4_1_1_1_1) _lh_grid_arg2_2_2_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_6) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_6) _lh_grid_LH_P4_2_1_1_1) _lh_grid_arg1_2_2_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_6) _lh_grid_LH_P4_3_1_1_1) _lh_grid_arg2_2_2_6))), (_lh_listcomp_fun_2_2_6 _lh_listcomp_fun_ls_t_2_3_1)))))))) in
      (fun _lh_grid_arg1_2_2_7 _lh_grid_arg2_2_2_7 _lh_grid_arg4_2_2_7 _lh_grid_arg5_2_2_7 _lh_grid_arg6_2_2_7 _lh_listcomp_fun_2_2_7 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_1 _lh_grid_arg1_2_2_7) _lh_grid_arg2_2_2_7) _lh_grid_arg4_2_2_7) _lh_grid_arg5_2_2_7) _lh_grid_arg6_2_2_7) _lh_listcomp_fun_ls_t_1_8_8) _lh_listcomp_fun_2_2_7)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_2 = (let rec _lh_grid_LH_P4_3_1_1_2 = 4 in
      (let rec _lh_grid_LH_P4_2_1_1_2 = 10 in
        (let rec _lh_grid_LH_P4_1_1_1_2 = 0 in
          (let rec _lh_grid_LH_P4_0_1_1_2 = 11 in
            (fun _lh_grid_arg1_2_2_8 _lh_grid_arg2_2_2_8 _lh_grid_arg4_2_2_8 _lh_grid_arg5_2_2_8 _lh_grid_arg6_2_2_8 _lh_listcomp_fun_ls_t_2_3_2 _lh_listcomp_fun_2_2_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_8) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_8) _lh_grid_LH_P4_0_1_1_2) _lh_grid_arg1_2_2_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_8) _lh_grid_LH_P4_1_1_1_2) _lh_grid_arg2_2_2_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_2_8) (((scale_vec2_lh__d1 _lh_grid_arg5_2_2_8) _lh_grid_LH_P4_2_1_1_2) _lh_grid_arg1_2_2_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_2_8) _lh_grid_LH_P4_3_1_1_2) _lh_grid_arg2_2_2_8))), (_lh_listcomp_fun_2_2_8 _lh_listcomp_fun_ls_t_2_3_2)))))))) in
      (fun _lh_grid_arg1_2_2_9 _lh_grid_arg2_2_2_9 _lh_grid_arg4_2_2_9 _lh_grid_arg5_2_2_9 _lh_grid_arg6_2_2_9 _lh_listcomp_fun_2_2_9 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_2 _lh_grid_arg1_2_2_9) _lh_grid_arg2_2_2_9) _lh_grid_arg4_2_2_9) _lh_grid_arg5_2_2_9) _lh_grid_arg6_2_2_9) _lh_listcomp_fun_ls_t_1_8_7) _lh_listcomp_fun_2_2_9)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_3 = (let rec _lh_grid_LH_P4_3_1_1_3 = 5 in
      (let rec _lh_grid_LH_P4_2_1_1_3 = 4 in
        (let rec _lh_grid_LH_P4_1_1_1_3 = 6 in
          (let rec _lh_grid_LH_P4_0_1_1_3 = 7 in
            (fun _lh_grid_arg1_2_3_0 _lh_grid_arg2_2_3_0 _lh_grid_arg4_2_3_0 _lh_grid_arg5_2_3_0 _lh_grid_arg6_2_3_0 _lh_listcomp_fun_ls_t_2_3_3 _lh_listcomp_fun_2_3_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_0) _lh_grid_LH_P4_0_1_1_3) _lh_grid_arg1_2_3_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_0) _lh_grid_LH_P4_1_1_1_3) _lh_grid_arg2_2_3_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_0) _lh_grid_LH_P4_2_1_1_3) _lh_grid_arg1_2_3_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_0) _lh_grid_LH_P4_3_1_1_3) _lh_grid_arg2_2_3_0))), (_lh_listcomp_fun_2_3_0 _lh_listcomp_fun_ls_t_2_3_3)))))))) in
      (fun _lh_grid_arg1_2_3_1 _lh_grid_arg2_2_3_1 _lh_grid_arg4_2_3_1 _lh_grid_arg5_2_3_1 _lh_grid_arg6_2_3_1 _lh_listcomp_fun_2_3_1 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_3 _lh_grid_arg1_2_3_1) _lh_grid_arg2_2_3_1) _lh_grid_arg4_2_3_1) _lh_grid_arg5_2_3_1) _lh_grid_arg6_2_3_1) _lh_listcomp_fun_ls_t_1_8_6) _lh_listcomp_fun_2_3_1)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_4 = (let rec _lh_grid_LH_P4_3_1_1_4 = 6 in
      (let rec _lh_grid_LH_P4_2_1_1_4 = 7 in
        (let rec _lh_grid_LH_P4_1_1_1_4 = 10 in
          (let rec _lh_grid_LH_P4_0_1_1_4 = 4 in
            (fun _lh_grid_arg1_2_3_2 _lh_grid_arg2_2_3_2 _lh_grid_arg4_2_3_2 _lh_grid_arg5_2_3_2 _lh_grid_arg6_2_3_2 _lh_listcomp_fun_ls_t_2_3_4 _lh_listcomp_fun_2_3_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_2) _lh_grid_LH_P4_0_1_1_4) _lh_grid_arg1_2_3_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_2) _lh_grid_LH_P4_1_1_1_4) _lh_grid_arg2_2_3_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_2) _lh_grid_LH_P4_2_1_1_4) _lh_grid_arg1_2_3_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_2) _lh_grid_LH_P4_3_1_1_4) _lh_grid_arg2_2_3_2))), (_lh_listcomp_fun_2_3_2 _lh_listcomp_fun_ls_t_2_3_4)))))))) in
      (fun _lh_grid_arg1_2_3_3 _lh_grid_arg2_2_3_3 _lh_grid_arg4_2_3_3 _lh_grid_arg5_2_3_3 _lh_grid_arg6_2_3_3 _lh_listcomp_fun_2_3_3 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_4 _lh_grid_arg1_2_3_3) _lh_grid_arg2_2_3_3) _lh_grid_arg4_2_3_3) _lh_grid_arg5_2_3_3) _lh_grid_arg6_2_3_3) _lh_listcomp_fun_ls_t_1_8_5) _lh_listcomp_fun_2_3_3)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_5 = (let rec _lh_grid_LH_P4_3_1_1_5 = 10 in
      (let rec _lh_grid_LH_P4_2_1_1_5 = 4 in
        (let rec _lh_grid_LH_P4_1_1_1_5 = 5 in
          (let rec _lh_grid_LH_P4_0_1_1_5 = 4 in
            (fun _lh_grid_arg1_2_3_4 _lh_grid_arg2_2_3_4 _lh_grid_arg4_2_3_4 _lh_grid_arg5_2_3_4 _lh_grid_arg6_2_3_4 _lh_listcomp_fun_ls_t_2_3_5 _lh_listcomp_fun_2_3_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_4) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_4) _lh_grid_LH_P4_0_1_1_5) _lh_grid_arg1_2_3_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_4) _lh_grid_LH_P4_1_1_1_5) _lh_grid_arg2_2_3_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_4) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_4) _lh_grid_LH_P4_2_1_1_5) _lh_grid_arg1_2_3_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_4) _lh_grid_LH_P4_3_1_1_5) _lh_grid_arg2_2_3_4))), (_lh_listcomp_fun_2_3_4 _lh_listcomp_fun_ls_t_2_3_5)))))))) in
      (fun _lh_grid_arg1_2_3_5 _lh_grid_arg2_2_3_5 _lh_grid_arg4_2_3_5 _lh_grid_arg5_2_3_5 _lh_grid_arg6_2_3_5 _lh_listcomp_fun_2_3_5 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_5 _lh_grid_arg1_2_3_5) _lh_grid_arg2_2_3_5) _lh_grid_arg4_2_3_5) _lh_grid_arg5_2_3_5) _lh_grid_arg6_2_3_5) _lh_listcomp_fun_ls_t_1_8_4) _lh_listcomp_fun_2_3_5)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_6 = (let rec _lh_grid_LH_P4_3_1_1_6 = 4 in
      (let rec _lh_grid_LH_P4_2_1_1_6 = 4 in
        (let rec _lh_grid_LH_P4_1_1_1_6 = 0 in
          (let rec _lh_grid_LH_P4_0_1_1_6 = 6 in
            (fun _lh_grid_arg1_2_3_6 _lh_grid_arg2_2_3_6 _lh_grid_arg4_2_3_6 _lh_grid_arg5_2_3_6 _lh_grid_arg6_2_3_6 _lh_listcomp_fun_ls_t_2_3_6 _lh_listcomp_fun_2_3_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_6) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_6) _lh_grid_LH_P4_0_1_1_6) _lh_grid_arg1_2_3_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_6) _lh_grid_LH_P4_1_1_1_6) _lh_grid_arg2_2_3_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_6) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_6) _lh_grid_LH_P4_2_1_1_6) _lh_grid_arg1_2_3_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_6) _lh_grid_LH_P4_3_1_1_6) _lh_grid_arg2_2_3_6))), (_lh_listcomp_fun_2_3_6 _lh_listcomp_fun_ls_t_2_3_6)))))))) in
      (fun _lh_grid_arg1_2_3_7 _lh_grid_arg2_2_3_7 _lh_grid_arg4_2_3_7 _lh_grid_arg5_2_3_7 _lh_grid_arg6_2_3_7 _lh_listcomp_fun_2_3_7 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_6 _lh_grid_arg1_2_3_7) _lh_grid_arg2_2_3_7) _lh_grid_arg4_2_3_7) _lh_grid_arg5_2_3_7) _lh_grid_arg6_2_3_7) _lh_listcomp_fun_ls_t_1_8_3) _lh_listcomp_fun_2_3_7)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_7 = (let rec _lh_grid_LH_P4_3_1_1_7 = 3 in
      (let rec _lh_grid_LH_P4_2_1_1_7 = 0 in
        (let rec _lh_grid_LH_P4_1_1_1_7 = 8 in
          (let rec _lh_grid_LH_P4_0_1_1_7 = 0 in
            (fun _lh_grid_arg1_2_3_8 _lh_grid_arg2_2_3_8 _lh_grid_arg4_2_3_8 _lh_grid_arg5_2_3_8 _lh_grid_arg6_2_3_8 _lh_listcomp_fun_ls_t_2_3_7 _lh_listcomp_fun_2_3_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_8) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_8) _lh_grid_LH_P4_0_1_1_7) _lh_grid_arg1_2_3_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_8) _lh_grid_LH_P4_1_1_1_7) _lh_grid_arg2_2_3_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3_8) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3_8) _lh_grid_LH_P4_2_1_1_7) _lh_grid_arg1_2_3_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3_8) _lh_grid_LH_P4_3_1_1_7) _lh_grid_arg2_2_3_8))), (_lh_listcomp_fun_2_3_8 _lh_listcomp_fun_ls_t_2_3_7)))))))) in
      (fun _lh_grid_arg1_2_3_9 _lh_grid_arg2_2_3_9 _lh_grid_arg4_2_3_9 _lh_grid_arg5_2_3_9 _lh_grid_arg6_2_3_9 _lh_listcomp_fun_2_3_9 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_7 _lh_grid_arg1_2_3_9) _lh_grid_arg2_2_3_9) _lh_grid_arg4_2_3_9) _lh_grid_arg5_2_3_9) _lh_grid_arg6_2_3_9) _lh_listcomp_fun_ls_t_1_8_2) _lh_listcomp_fun_2_3_9)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_8 = (let rec _lh_grid_LH_P4_3_1_1_8 = 8 in
      (let rec _lh_grid_LH_P4_2_1_1_8 = 0 in
        (let rec _lh_grid_LH_P4_1_1_1_8 = 4 in
          (let rec _lh_grid_LH_P4_0_1_1_8 = 3 in
            (fun _lh_grid_arg1_2_4_0 _lh_grid_arg2_2_4_0 _lh_grid_arg4_2_4_0 _lh_grid_arg5_2_4_0 _lh_grid_arg6_2_4_0 _lh_listcomp_fun_ls_t_2_3_8 _lh_listcomp_fun_2_4_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_4_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_4_0) _lh_grid_LH_P4_0_1_1_8) _lh_grid_arg1_2_4_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_4_0) _lh_grid_LH_P4_1_1_1_8) _lh_grid_arg2_2_4_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_4_0) (((scale_vec2_lh__d1 _lh_grid_arg5_2_4_0) _lh_grid_LH_P4_2_1_1_8) _lh_grid_arg1_2_4_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_4_0) _lh_grid_LH_P4_3_1_1_8) _lh_grid_arg2_2_4_0))), (_lh_listcomp_fun_2_4_0 _lh_listcomp_fun_ls_t_2_3_8)))))))) in
      (fun _lh_grid_arg1_2_4_1 _lh_grid_arg2_2_4_1 _lh_grid_arg4_2_4_1 _lh_grid_arg5_2_4_1 _lh_grid_arg6_2_4_1 _lh_listcomp_fun_2_4_1 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_8 _lh_grid_arg1_2_4_1) _lh_grid_arg2_2_4_1) _lh_grid_arg4_2_4_1) _lh_grid_arg5_2_4_1) _lh_grid_arg6_2_4_1) _lh_listcomp_fun_ls_t_1_8_1) _lh_listcomp_fun_2_4_1)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1_9 = (let rec _lh_grid_LH_P4_3_1_1_9 = 4 in
      (let rec _lh_grid_LH_P4_2_1_1_9 = 3 in
        (let rec _lh_grid_LH_P4_1_1_1_9 = 3 in
          (let rec _lh_grid_LH_P4_0_1_1_9 = 0 in
            (fun _lh_grid_arg1_2_4_2 _lh_grid_arg2_2_4_2 _lh_grid_arg4_2_4_2 _lh_grid_arg5_2_4_2 _lh_grid_arg6_2_4_2 _lh_listcomp_fun_ls_t_2_3_9 _lh_listcomp_fun_2_4_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_4_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_4_2) _lh_grid_LH_P4_0_1_1_9) _lh_grid_arg1_2_4_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_4_2) _lh_grid_LH_P4_1_1_1_9) _lh_grid_arg2_2_4_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_4_2) (((scale_vec2_lh__d1 _lh_grid_arg5_2_4_2) _lh_grid_LH_P4_2_1_1_9) _lh_grid_arg1_2_4_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_4_2) _lh_grid_LH_P4_3_1_1_9) _lh_grid_arg2_2_4_2))), (_lh_listcomp_fun_2_4_2 _lh_listcomp_fun_ls_t_2_3_9)))))))) in
      (fun _lh_grid_arg1_2_4_3 _lh_grid_arg2_2_4_3 _lh_grid_arg4_2_4_3 _lh_grid_arg5_2_4_3 _lh_grid_arg6_2_4_3 _lh_listcomp_fun_2_4_3 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1_9 _lh_grid_arg1_2_4_3) _lh_grid_arg2_2_4_3) _lh_grid_arg4_2_4_3) _lh_grid_arg5_2_4_3) _lh_grid_arg6_2_4_3) _lh_listcomp_fun_ls_t_1_8_0) _lh_listcomp_fun_2_4_3))));;
let rec p_lh__d1 _lh_p_arg1_0 =
  ((tile_to_grid_lh__d1 p_tile_lh__d1) _lh_p_arg1_0);;
let rec s_tile_lh__d1 =
  (let rec _lh_listcomp_fun_ls_t_1_2_4 = (let rec _lh_listcomp_fun_ls_t_1_2_5 = (let rec _lh_listcomp_fun_ls_t_1_2_6 = (let rec _lh_listcomp_fun_ls_t_1_2_7 = (let rec _lh_listcomp_fun_ls_t_1_2_8 = (let rec _lh_listcomp_fun_ls_t_1_2_9 = (let rec _lh_listcomp_fun_ls_t_1_3_0 = (let rec _lh_listcomp_fun_ls_t_1_3_1 = (let rec _lh_listcomp_fun_ls_t_1_3_2 = (let rec _lh_listcomp_fun_ls_t_1_3_3 = (let rec _lh_listcomp_fun_ls_t_1_3_4 = (let rec _lh_listcomp_fun_ls_t_1_3_5 = (let rec _lh_listcomp_fun_ls_t_1_3_6 = (let rec _lh_listcomp_fun_ls_t_1_3_7 = (let rec _lh_listcomp_fun_ls_t_1_3_8 = (let rec _lh_listcomp_fun_ls_t_1_3_9 = (let rec _lh_listcomp_fun_ls_t_1_4_0 = (let rec _lh_listcomp_fun_ls_t_1_4_1 = (let rec _lh_listcomp_fun_ls_t_1_4_2 = (let rec _lh_listcomp_fun_ls_t_1_4_3 = (let rec _lh_listcomp_fun_ls_t_1_4_4 = (let rec _lh_listcomp_fun_ls_t_1_4_5 = (let rec _lh_listcomp_fun_ls_t_1_4_6 = (let rec _lh_listcomp_fun_ls_t_1_4_7 = (let rec _lh_listcomp_fun_ls_t_1_4_8 = (let rec _lh_listcomp_fun_ls_t_1_4_9 = (let rec _lh_listcomp_fun_ls_t_1_5_0 = (let rec _lh_listcomp_fun_ls_t_1_5_1 = (fun _lh_grid_arg1_1_2_6 _lh_grid_arg2_1_2_6 _lh_grid_arg4_1_2_6 _lh_grid_arg5_1_2_6 _lh_grid_arg6_1_2_6 _lh_listcomp_fun_1_2_6 -> 
    (`LH_N)) in
    (let rec _lh_listcomp_fun_ls_h_6_2 = (let rec _lh_grid_LH_P4_3_6_2 = 5 in
      (let rec _lh_grid_LH_P4_2_6_2 = 15 in
        (let rec _lh_grid_LH_P4_1_6_2 = 8 in
          (let rec _lh_grid_LH_P4_0_6_2 = 15 in
            (fun _lh_grid_arg1_1_2_7 _lh_grid_arg2_1_2_7 _lh_grid_arg4_1_2_7 _lh_grid_arg5_1_2_7 _lh_grid_arg6_1_2_7 _lh_listcomp_fun_ls_t_1_5_2 _lh_listcomp_fun_1_2_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_7) _lh_grid_LH_P4_0_6_2) _lh_grid_arg1_1_2_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_7) _lh_grid_LH_P4_1_6_2) _lh_grid_arg2_1_2_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_7) _lh_grid_LH_P4_2_6_2) _lh_grid_arg1_1_2_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_7) _lh_grid_LH_P4_3_6_2) _lh_grid_arg2_1_2_7))), (_lh_listcomp_fun_1_2_7 _lh_listcomp_fun_ls_t_1_5_2)))))))) in
      (fun _lh_grid_arg1_1_2_8 _lh_grid_arg2_1_2_8 _lh_grid_arg4_1_2_8 _lh_grid_arg5_1_2_8 _lh_grid_arg6_1_2_8 _lh_listcomp_fun_1_2_8 -> 
        (((((((_lh_listcomp_fun_ls_h_6_2 _lh_grid_arg1_1_2_8) _lh_grid_arg2_1_2_8) _lh_grid_arg4_1_2_8) _lh_grid_arg5_1_2_8) _lh_grid_arg6_1_2_8) _lh_listcomp_fun_ls_t_1_5_1) _lh_listcomp_fun_1_2_8)))) in
    (let rec _lh_listcomp_fun_ls_h_6_3 = (let rec _lh_grid_LH_P4_3_6_3 = 8 in
      (let rec _lh_grid_LH_P4_2_6_3 = 15 in
        (let rec _lh_grid_LH_P4_1_6_3 = 7 in
          (let rec _lh_grid_LH_P4_0_6_3 = 13 in
            (fun _lh_grid_arg1_1_2_9 _lh_grid_arg2_1_2_9 _lh_grid_arg4_1_2_9 _lh_grid_arg5_1_2_9 _lh_grid_arg6_1_2_9 _lh_listcomp_fun_ls_t_1_5_3 _lh_listcomp_fun_1_2_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_9) _lh_grid_LH_P4_0_6_3) _lh_grid_arg1_1_2_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_9) _lh_grid_LH_P4_1_6_3) _lh_grid_arg2_1_2_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_9) _lh_grid_LH_P4_2_6_3) _lh_grid_arg1_1_2_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_9) _lh_grid_LH_P4_3_6_3) _lh_grid_arg2_1_2_9))), (_lh_listcomp_fun_1_2_9 _lh_listcomp_fun_ls_t_1_5_3)))))))) in
      (fun _lh_grid_arg1_1_3_0 _lh_grid_arg2_1_3_0 _lh_grid_arg4_1_3_0 _lh_grid_arg5_1_3_0 _lh_grid_arg6_1_3_0 _lh_listcomp_fun_1_3_0 -> 
        (((((((_lh_listcomp_fun_ls_h_6_3 _lh_grid_arg1_1_3_0) _lh_grid_arg2_1_3_0) _lh_grid_arg4_1_3_0) _lh_grid_arg5_1_3_0) _lh_grid_arg6_1_3_0) _lh_listcomp_fun_ls_t_1_5_0) _lh_listcomp_fun_1_3_0)))) in
    (let rec _lh_listcomp_fun_ls_h_6_4 = (let rec _lh_grid_LH_P4_3_6_4 = 7 in
      (let rec _lh_grid_LH_P4_2_6_4 = 13 in
        (let rec _lh_grid_LH_P4_1_6_4 = 5 in
          (let rec _lh_grid_LH_P4_0_6_4 = 15 in
            (fun _lh_grid_arg1_1_3_1 _lh_grid_arg2_1_3_1 _lh_grid_arg4_1_3_1 _lh_grid_arg5_1_3_1 _lh_grid_arg6_1_3_1 _lh_listcomp_fun_ls_t_1_5_4 _lh_listcomp_fun_1_3_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_1) _lh_grid_LH_P4_0_6_4) _lh_grid_arg1_1_3_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_1) _lh_grid_LH_P4_1_6_4) _lh_grid_arg2_1_3_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_1) _lh_grid_LH_P4_2_6_4) _lh_grid_arg1_1_3_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_1) _lh_grid_LH_P4_3_6_4) _lh_grid_arg2_1_3_1))), (_lh_listcomp_fun_1_3_1 _lh_listcomp_fun_ls_t_1_5_4)))))))) in
      (fun _lh_grid_arg1_1_3_2 _lh_grid_arg2_1_3_2 _lh_grid_arg4_1_3_2 _lh_grid_arg5_1_3_2 _lh_grid_arg6_1_3_2 _lh_listcomp_fun_1_3_2 -> 
        (((((((_lh_listcomp_fun_ls_h_6_4 _lh_grid_arg1_1_3_2) _lh_grid_arg2_1_3_2) _lh_grid_arg4_1_3_2) _lh_grid_arg5_1_3_2) _lh_grid_arg6_1_3_2) _lh_listcomp_fun_ls_t_1_4_9) _lh_listcomp_fun_1_3_2)))) in
    (let rec _lh_listcomp_fun_ls_h_6_5 = (let rec _lh_grid_LH_P4_3_6_5 = 4 in
      (let rec _lh_grid_LH_P4_2_6_5 = 12 in
        (let rec _lh_grid_LH_P4_1_6_5 = 7 in
          (let rec _lh_grid_LH_P4_0_6_5 = 12 in
            (fun _lh_grid_arg1_1_3_3 _lh_grid_arg2_1_3_3 _lh_grid_arg4_1_3_3 _lh_grid_arg5_1_3_3 _lh_grid_arg6_1_3_3 _lh_listcomp_fun_ls_t_1_5_5 _lh_listcomp_fun_1_3_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_3) _lh_grid_LH_P4_0_6_5) _lh_grid_arg1_1_3_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_3) _lh_grid_LH_P4_1_6_5) _lh_grid_arg2_1_3_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_3) _lh_grid_LH_P4_2_6_5) _lh_grid_arg1_1_3_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_3) _lh_grid_LH_P4_3_6_5) _lh_grid_arg2_1_3_3))), (_lh_listcomp_fun_1_3_3 _lh_listcomp_fun_ls_t_1_5_5)))))))) in
      (fun _lh_grid_arg1_1_3_4 _lh_grid_arg2_1_3_4 _lh_grid_arg4_1_3_4 _lh_grid_arg5_1_3_4 _lh_grid_arg6_1_3_4 _lh_listcomp_fun_1_3_4 -> 
        (((((((_lh_listcomp_fun_ls_h_6_5 _lh_grid_arg1_1_3_4) _lh_grid_arg2_1_3_4) _lh_grid_arg4_1_3_4) _lh_grid_arg5_1_3_4) _lh_grid_arg6_1_3_4) _lh_listcomp_fun_ls_t_1_4_8) _lh_listcomp_fun_1_3_4)))) in
    (let rec _lh_listcomp_fun_ls_h_6_6 = (let rec _lh_grid_LH_P4_3_6_6 = 7 in
      (let rec _lh_grid_LH_P4_2_6_6 = 12 in
        (let rec _lh_grid_LH_P4_1_6_6 = 6 in
          (let rec _lh_grid_LH_P4_0_6_6 = 10 in
            (fun _lh_grid_arg1_1_3_5 _lh_grid_arg2_1_3_5 _lh_grid_arg4_1_3_5 _lh_grid_arg5_1_3_5 _lh_grid_arg6_1_3_5 _lh_listcomp_fun_ls_t_1_5_6 _lh_listcomp_fun_1_3_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_5) _lh_grid_LH_P4_0_6_6) _lh_grid_arg1_1_3_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_5) _lh_grid_LH_P4_1_6_6) _lh_grid_arg2_1_3_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_5) _lh_grid_LH_P4_2_6_6) _lh_grid_arg1_1_3_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_5) _lh_grid_LH_P4_3_6_6) _lh_grid_arg2_1_3_5))), (_lh_listcomp_fun_1_3_5 _lh_listcomp_fun_ls_t_1_5_6)))))))) in
      (fun _lh_grid_arg1_1_3_6 _lh_grid_arg2_1_3_6 _lh_grid_arg4_1_3_6 _lh_grid_arg5_1_3_6 _lh_grid_arg6_1_3_6 _lh_listcomp_fun_1_3_6 -> 
        (((((((_lh_listcomp_fun_ls_h_6_6 _lh_grid_arg1_1_3_6) _lh_grid_arg2_1_3_6) _lh_grid_arg4_1_3_6) _lh_grid_arg5_1_3_6) _lh_grid_arg6_1_3_6) _lh_listcomp_fun_ls_t_1_4_7) _lh_listcomp_fun_1_3_6)))) in
    (let rec _lh_listcomp_fun_ls_h_6_7 = (let rec _lh_grid_LH_P4_3_6_7 = 6 in
      (let rec _lh_grid_LH_P4_2_6_7 = 10 in
        (let rec _lh_grid_LH_P4_1_6_7 = 4 in
          (let rec _lh_grid_LH_P4_0_6_7 = 12 in
            (fun _lh_grid_arg1_1_3_7 _lh_grid_arg2_1_3_7 _lh_grid_arg4_1_3_7 _lh_grid_arg5_1_3_7 _lh_grid_arg6_1_3_7 _lh_listcomp_fun_ls_t_1_5_7 _lh_listcomp_fun_1_3_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_7) _lh_grid_LH_P4_0_6_7) _lh_grid_arg1_1_3_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_7) _lh_grid_LH_P4_1_6_7) _lh_grid_arg2_1_3_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_7) _lh_grid_LH_P4_2_6_7) _lh_grid_arg1_1_3_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_7) _lh_grid_LH_P4_3_6_7) _lh_grid_arg2_1_3_7))), (_lh_listcomp_fun_1_3_7 _lh_listcomp_fun_ls_t_1_5_7)))))))) in
      (fun _lh_grid_arg1_1_3_8 _lh_grid_arg2_1_3_8 _lh_grid_arg4_1_3_8 _lh_grid_arg5_1_3_8 _lh_grid_arg6_1_3_8 _lh_listcomp_fun_1_3_8 -> 
        (((((((_lh_listcomp_fun_ls_h_6_7 _lh_grid_arg1_1_3_8) _lh_grid_arg2_1_3_8) _lh_grid_arg4_1_3_8) _lh_grid_arg5_1_3_8) _lh_grid_arg6_1_3_8) _lh_listcomp_fun_ls_t_1_4_6) _lh_listcomp_fun_1_3_8)))) in
    (let rec _lh_listcomp_fun_ls_h_6_8 = (let rec _lh_grid_LH_P4_3_6_8 = 10 in
      (let rec _lh_grid_LH_P4_2_6_8 = 11 in
        (let rec _lh_grid_LH_P4_1_6_8 = 16 in
          (let rec _lh_grid_LH_P4_0_6_8 = 10 in
            (fun _lh_grid_arg1_1_3_9 _lh_grid_arg2_1_3_9 _lh_grid_arg4_1_3_9 _lh_grid_arg5_1_3_9 _lh_grid_arg6_1_3_9 _lh_listcomp_fun_ls_t_1_5_8 _lh_listcomp_fun_1_3_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_9) _lh_grid_LH_P4_0_6_8) _lh_grid_arg1_1_3_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_9) _lh_grid_LH_P4_1_6_8) _lh_grid_arg2_1_3_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3_9) _lh_grid_LH_P4_2_6_8) _lh_grid_arg1_1_3_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3_9) _lh_grid_LH_P4_3_6_8) _lh_grid_arg2_1_3_9))), (_lh_listcomp_fun_1_3_9 _lh_listcomp_fun_ls_t_1_5_8)))))))) in
      (fun _lh_grid_arg1_1_4_0 _lh_grid_arg2_1_4_0 _lh_grid_arg4_1_4_0 _lh_grid_arg5_1_4_0 _lh_grid_arg6_1_4_0 _lh_listcomp_fun_1_4_0 -> 
        (((((((_lh_listcomp_fun_ls_h_6_8 _lh_grid_arg1_1_4_0) _lh_grid_arg2_1_4_0) _lh_grid_arg4_1_4_0) _lh_grid_arg5_1_4_0) _lh_grid_arg6_1_4_0) _lh_listcomp_fun_ls_t_1_4_5) _lh_listcomp_fun_1_4_0)))) in
    (let rec _lh_listcomp_fun_ls_h_6_9 = (let rec _lh_grid_LH_P4_3_6_9 = 8 in
      (let rec _lh_grid_LH_P4_2_6_9 = 16 in
        (let rec _lh_grid_LH_P4_1_6_9 = 9 in
          (let rec _lh_grid_LH_P4_0_6_9 = 15 in
            (fun _lh_grid_arg1_1_4_1 _lh_grid_arg2_1_4_1 _lh_grid_arg4_1_4_1 _lh_grid_arg5_1_4_1 _lh_grid_arg6_1_4_1 _lh_listcomp_fun_ls_t_1_5_9 _lh_listcomp_fun_1_4_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_1) _lh_grid_LH_P4_0_6_9) _lh_grid_arg1_1_4_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_1) _lh_grid_LH_P4_1_6_9) _lh_grid_arg2_1_4_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_1) _lh_grid_LH_P4_2_6_9) _lh_grid_arg1_1_4_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_1) _lh_grid_LH_P4_3_6_9) _lh_grid_arg2_1_4_1))), (_lh_listcomp_fun_1_4_1 _lh_listcomp_fun_ls_t_1_5_9)))))))) in
      (fun _lh_grid_arg1_1_4_2 _lh_grid_arg2_1_4_2 _lh_grid_arg4_1_4_2 _lh_grid_arg5_1_4_2 _lh_grid_arg6_1_4_2 _lh_listcomp_fun_1_4_2 -> 
        (((((((_lh_listcomp_fun_ls_h_6_9 _lh_grid_arg1_1_4_2) _lh_grid_arg2_1_4_2) _lh_grid_arg4_1_4_2) _lh_grid_arg5_1_4_2) _lh_grid_arg6_1_4_2) _lh_listcomp_fun_ls_t_1_4_4) _lh_listcomp_fun_1_4_2)))) in
    (let rec _lh_listcomp_fun_ls_h_7_0 = (let rec _lh_grid_LH_P4_3_7_0 = 9 in
      (let rec _lh_grid_LH_P4_2_7_0 = 15 in
        (let rec _lh_grid_LH_P4_1_7_0 = 11 in
          (let rec _lh_grid_LH_P4_0_7_0 = 14 in
            (fun _lh_grid_arg1_1_4_3 _lh_grid_arg2_1_4_3 _lh_grid_arg4_1_4_3 _lh_grid_arg5_1_4_3 _lh_grid_arg6_1_4_3 _lh_listcomp_fun_ls_t_1_6_0 _lh_listcomp_fun_1_4_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_3) _lh_grid_LH_P4_0_7_0) _lh_grid_arg1_1_4_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_3) _lh_grid_LH_P4_1_7_0) _lh_grid_arg2_1_4_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_3) _lh_grid_LH_P4_2_7_0) _lh_grid_arg1_1_4_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_3) _lh_grid_LH_P4_3_7_0) _lh_grid_arg2_1_4_3))), (_lh_listcomp_fun_1_4_3 _lh_listcomp_fun_ls_t_1_6_0)))))))) in
      (fun _lh_grid_arg1_1_4_4 _lh_grid_arg2_1_4_4 _lh_grid_arg4_1_4_4 _lh_grid_arg5_1_4_4 _lh_grid_arg6_1_4_4 _lh_listcomp_fun_1_4_4 -> 
        (((((((_lh_listcomp_fun_ls_h_7_0 _lh_grid_arg1_1_4_4) _lh_grid_arg2_1_4_4) _lh_grid_arg4_1_4_4) _lh_grid_arg5_1_4_4) _lh_grid_arg6_1_4_4) _lh_listcomp_fun_ls_t_1_4_3) _lh_listcomp_fun_1_4_4)))) in
    (let rec _lh_listcomp_fun_ls_h_7_1 = (let rec _lh_grid_LH_P4_3_7_1 = 11 in
      (let rec _lh_grid_LH_P4_2_7_1 = 14 in
        (let rec _lh_grid_LH_P4_1_7_1 = 13 in
          (let rec _lh_grid_LH_P4_0_7_1 = 13 in
            (fun _lh_grid_arg1_1_4_5 _lh_grid_arg2_1_4_5 _lh_grid_arg4_1_4_5 _lh_grid_arg5_1_4_5 _lh_grid_arg6_1_4_5 _lh_listcomp_fun_ls_t_1_6_1 _lh_listcomp_fun_1_4_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_5) _lh_grid_LH_P4_0_7_1) _lh_grid_arg1_1_4_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_5) _lh_grid_LH_P4_1_7_1) _lh_grid_arg2_1_4_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_5) _lh_grid_LH_P4_2_7_1) _lh_grid_arg1_1_4_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_5) _lh_grid_LH_P4_3_7_1) _lh_grid_arg2_1_4_5))), (_lh_listcomp_fun_1_4_5 _lh_listcomp_fun_ls_t_1_6_1)))))))) in
      (fun _lh_grid_arg1_1_4_6 _lh_grid_arg2_1_4_6 _lh_grid_arg4_1_4_6 _lh_grid_arg5_1_4_6 _lh_grid_arg6_1_4_6 _lh_listcomp_fun_1_4_6 -> 
        (((((((_lh_listcomp_fun_ls_h_7_1 _lh_grid_arg1_1_4_6) _lh_grid_arg2_1_4_6) _lh_grid_arg4_1_4_6) _lh_grid_arg5_1_4_6) _lh_grid_arg6_1_4_6) _lh_listcomp_fun_ls_t_1_4_2) _lh_listcomp_fun_1_4_6)))) in
    (let rec _lh_listcomp_fun_ls_h_7_2 = (let rec _lh_grid_LH_P4_3_7_2 = 13 in
      (let rec _lh_grid_LH_P4_2_7_2 = 13 in
        (let rec _lh_grid_LH_P4_1_7_2 = 16 in
          (let rec _lh_grid_LH_P4_0_7_2 = 12 in
            (fun _lh_grid_arg1_1_4_7 _lh_grid_arg2_1_4_7 _lh_grid_arg4_1_4_7 _lh_grid_arg5_1_4_7 _lh_grid_arg6_1_4_7 _lh_listcomp_fun_ls_t_1_6_2 _lh_listcomp_fun_1_4_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_7) _lh_grid_LH_P4_0_7_2) _lh_grid_arg1_1_4_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_7) _lh_grid_LH_P4_1_7_2) _lh_grid_arg2_1_4_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_7) _lh_grid_LH_P4_2_7_2) _lh_grid_arg1_1_4_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_7) _lh_grid_LH_P4_3_7_2) _lh_grid_arg2_1_4_7))), (_lh_listcomp_fun_1_4_7 _lh_listcomp_fun_ls_t_1_6_2)))))))) in
      (fun _lh_grid_arg1_1_4_8 _lh_grid_arg2_1_4_8 _lh_grid_arg4_1_4_8 _lh_grid_arg5_1_4_8 _lh_grid_arg6_1_4_8 _lh_listcomp_fun_1_4_8 -> 
        (((((((_lh_listcomp_fun_ls_h_7_2 _lh_grid_arg1_1_4_8) _lh_grid_arg2_1_4_8) _lh_grid_arg4_1_4_8) _lh_grid_arg5_1_4_8) _lh_grid_arg6_1_4_8) _lh_listcomp_fun_ls_t_1_4_1) _lh_listcomp_fun_1_4_8)))) in
    (let rec _lh_listcomp_fun_ls_h_7_3 = (let rec _lh_grid_LH_P4_3_7_3 = 16 in
      (let rec _lh_grid_LH_P4_2_7_3 = 8 in
        (let rec _lh_grid_LH_P4_1_7_3 = 13 in
          (let rec _lh_grid_LH_P4_0_7_3 = 7 in
            (fun _lh_grid_arg1_1_4_9 _lh_grid_arg2_1_4_9 _lh_grid_arg4_1_4_9 _lh_grid_arg5_1_4_9 _lh_grid_arg6_1_4_9 _lh_listcomp_fun_ls_t_1_6_3 _lh_listcomp_fun_1_4_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_9) _lh_grid_LH_P4_0_7_3) _lh_grid_arg1_1_4_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_9) _lh_grid_LH_P4_1_7_3) _lh_grid_arg2_1_4_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_4_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_4_9) _lh_grid_LH_P4_2_7_3) _lh_grid_arg1_1_4_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_4_9) _lh_grid_LH_P4_3_7_3) _lh_grid_arg2_1_4_9))), (_lh_listcomp_fun_1_4_9 _lh_listcomp_fun_ls_t_1_6_3)))))))) in
      (fun _lh_grid_arg1_1_5_0 _lh_grid_arg2_1_5_0 _lh_grid_arg4_1_5_0 _lh_grid_arg5_1_5_0 _lh_grid_arg6_1_5_0 _lh_listcomp_fun_1_5_0 -> 
        (((((((_lh_listcomp_fun_ls_h_7_3 _lh_grid_arg1_1_5_0) _lh_grid_arg2_1_5_0) _lh_grid_arg4_1_5_0) _lh_grid_arg5_1_5_0) _lh_grid_arg6_1_5_0) _lh_listcomp_fun_ls_t_1_4_0) _lh_listcomp_fun_1_5_0)))) in
    (let rec _lh_listcomp_fun_ls_h_7_4 = (let rec _lh_grid_LH_P4_3_7_4 = 13 in
      (let rec _lh_grid_LH_P4_2_7_4 = 7 in
        (let rec _lh_grid_LH_P4_1_7_4 = 8 in
          (let rec _lh_grid_LH_P4_0_7_4 = 7 in
            (fun _lh_grid_arg1_1_5_1 _lh_grid_arg2_1_5_1 _lh_grid_arg4_1_5_1 _lh_grid_arg5_1_5_1 _lh_grid_arg6_1_5_1 _lh_listcomp_fun_ls_t_1_6_4 _lh_listcomp_fun_1_5_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_1) _lh_grid_LH_P4_0_7_4) _lh_grid_arg1_1_5_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_1) _lh_grid_LH_P4_1_7_4) _lh_grid_arg2_1_5_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_1) _lh_grid_LH_P4_2_7_4) _lh_grid_arg1_1_5_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_1) _lh_grid_LH_P4_3_7_4) _lh_grid_arg2_1_5_1))), (_lh_listcomp_fun_1_5_1 _lh_listcomp_fun_ls_t_1_6_4)))))))) in
      (fun _lh_grid_arg1_1_5_2 _lh_grid_arg2_1_5_2 _lh_grid_arg4_1_5_2 _lh_grid_arg5_1_5_2 _lh_grid_arg6_1_5_2 _lh_listcomp_fun_1_5_2 -> 
        (((((((_lh_listcomp_fun_ls_h_7_4 _lh_grid_arg1_1_5_2) _lh_grid_arg2_1_5_2) _lh_grid_arg4_1_5_2) _lh_grid_arg5_1_5_2) _lh_grid_arg6_1_5_2) _lh_listcomp_fun_ls_t_1_3_9) _lh_listcomp_fun_1_5_2)))) in
    (let rec _lh_listcomp_fun_ls_h_7_5 = (let rec _lh_grid_LH_P4_3_7_5 = 8 in
      (let rec _lh_grid_LH_P4_2_7_5 = 7 in
        (let rec _lh_grid_LH_P4_1_7_5 = 6 in
          (let rec _lh_grid_LH_P4_0_7_5 = 8 in
            (fun _lh_grid_arg1_1_5_3 _lh_grid_arg2_1_5_3 _lh_grid_arg4_1_5_3 _lh_grid_arg5_1_5_3 _lh_grid_arg6_1_5_3 _lh_listcomp_fun_ls_t_1_6_5 _lh_listcomp_fun_1_5_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_3) _lh_grid_LH_P4_0_7_5) _lh_grid_arg1_1_5_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_3) _lh_grid_LH_P4_1_7_5) _lh_grid_arg2_1_5_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_3) _lh_grid_LH_P4_2_7_5) _lh_grid_arg1_1_5_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_3) _lh_grid_LH_P4_3_7_5) _lh_grid_arg2_1_5_3))), (_lh_listcomp_fun_1_5_3 _lh_listcomp_fun_ls_t_1_6_5)))))))) in
      (fun _lh_grid_arg1_1_5_4 _lh_grid_arg2_1_5_4 _lh_grid_arg4_1_5_4 _lh_grid_arg5_1_5_4 _lh_grid_arg6_1_5_4 _lh_listcomp_fun_1_5_4 -> 
        (((((((_lh_listcomp_fun_ls_h_7_5 _lh_grid_arg1_1_5_4) _lh_grid_arg2_1_5_4) _lh_grid_arg4_1_5_4) _lh_grid_arg5_1_5_4) _lh_grid_arg6_1_5_4) _lh_listcomp_fun_ls_t_1_3_8) _lh_listcomp_fun_1_5_4)))) in
    (let rec _lh_listcomp_fun_ls_h_7_6 = (let rec _lh_grid_LH_P4_3_7_6 = 6 in
      (let rec _lh_grid_LH_P4_2_7_6 = 8 in
        (let rec _lh_grid_LH_P4_1_7_6 = 4 in
          (let rec _lh_grid_LH_P4_0_7_6 = 10 in
            (fun _lh_grid_arg1_1_5_5 _lh_grid_arg2_1_5_5 _lh_grid_arg4_1_5_5 _lh_grid_arg5_1_5_5 _lh_grid_arg6_1_5_5 _lh_listcomp_fun_ls_t_1_6_6 _lh_listcomp_fun_1_5_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_5) _lh_grid_LH_P4_0_7_6) _lh_grid_arg1_1_5_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_5) _lh_grid_LH_P4_1_7_6) _lh_grid_arg2_1_5_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_5) _lh_grid_LH_P4_2_7_6) _lh_grid_arg1_1_5_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_5) _lh_grid_LH_P4_3_7_6) _lh_grid_arg2_1_5_5))), (_lh_listcomp_fun_1_5_5 _lh_listcomp_fun_ls_t_1_6_6)))))))) in
      (fun _lh_grid_arg1_1_5_6 _lh_grid_arg2_1_5_6 _lh_grid_arg4_1_5_6 _lh_grid_arg5_1_5_6 _lh_grid_arg6_1_5_6 _lh_listcomp_fun_1_5_6 -> 
        (((((((_lh_listcomp_fun_ls_h_7_6 _lh_grid_arg1_1_5_6) _lh_grid_arg2_1_5_6) _lh_grid_arg4_1_5_6) _lh_grid_arg5_1_5_6) _lh_grid_arg6_1_5_6) _lh_listcomp_fun_ls_t_1_3_7) _lh_listcomp_fun_1_5_6)))) in
    (let rec _lh_listcomp_fun_ls_h_7_7 = (let rec _lh_grid_LH_P4_3_7_7 = 4 in
      (let rec _lh_grid_LH_P4_2_7_7 = 10 in
        (let rec _lh_grid_LH_P4_1_7_7 = 0 in
          (let rec _lh_grid_LH_P4_0_7_7 = 16 in
            (fun _lh_grid_arg1_1_5_7 _lh_grid_arg2_1_5_7 _lh_grid_arg4_1_5_7 _lh_grid_arg5_1_5_7 _lh_grid_arg6_1_5_7 _lh_listcomp_fun_ls_t_1_6_7 _lh_listcomp_fun_1_5_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_7) _lh_grid_LH_P4_0_7_7) _lh_grid_arg1_1_5_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_7) _lh_grid_LH_P4_1_7_7) _lh_grid_arg2_1_5_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_7) _lh_grid_LH_P4_2_7_7) _lh_grid_arg1_1_5_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_7) _lh_grid_LH_P4_3_7_7) _lh_grid_arg2_1_5_7))), (_lh_listcomp_fun_1_5_7 _lh_listcomp_fun_ls_t_1_6_7)))))))) in
      (fun _lh_grid_arg1_1_5_8 _lh_grid_arg2_1_5_8 _lh_grid_arg4_1_5_8 _lh_grid_arg5_1_5_8 _lh_grid_arg6_1_5_8 _lh_listcomp_fun_1_5_8 -> 
        (((((((_lh_listcomp_fun_ls_h_7_7 _lh_grid_arg1_1_5_8) _lh_grid_arg2_1_5_8) _lh_grid_arg4_1_5_8) _lh_grid_arg5_1_5_8) _lh_grid_arg6_1_5_8) _lh_listcomp_fun_ls_t_1_3_6) _lh_listcomp_fun_1_5_8)))) in
    (let rec _lh_listcomp_fun_ls_h_7_8 = (let rec _lh_grid_LH_P4_3_7_8 = 10 in
      (let rec _lh_grid_LH_P4_2_7_8 = 16 in
        (let rec _lh_grid_LH_P4_1_7_8 = 9 in
          (let rec _lh_grid_LH_P4_0_7_8 = 15 in
            (fun _lh_grid_arg1_1_5_9 _lh_grid_arg2_1_5_9 _lh_grid_arg4_1_5_9 _lh_grid_arg5_1_5_9 _lh_grid_arg6_1_5_9 _lh_listcomp_fun_ls_t_1_6_8 _lh_listcomp_fun_1_5_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_9) _lh_grid_LH_P4_0_7_8) _lh_grid_arg1_1_5_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_9) _lh_grid_LH_P4_1_7_8) _lh_grid_arg2_1_5_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5_9) _lh_grid_LH_P4_2_7_8) _lh_grid_arg1_1_5_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5_9) _lh_grid_LH_P4_3_7_8) _lh_grid_arg2_1_5_9))), (_lh_listcomp_fun_1_5_9 _lh_listcomp_fun_ls_t_1_6_8)))))))) in
      (fun _lh_grid_arg1_1_6_0 _lh_grid_arg2_1_6_0 _lh_grid_arg4_1_6_0 _lh_grid_arg5_1_6_0 _lh_grid_arg6_1_6_0 _lh_listcomp_fun_1_6_0 -> 
        (((((((_lh_listcomp_fun_ls_h_7_8 _lh_grid_arg1_1_6_0) _lh_grid_arg2_1_6_0) _lh_grid_arg4_1_6_0) _lh_grid_arg5_1_6_0) _lh_grid_arg6_1_6_0) _lh_listcomp_fun_ls_t_1_3_5) _lh_listcomp_fun_1_6_0)))) in
    (let rec _lh_listcomp_fun_ls_h_7_9 = (let rec _lh_grid_LH_P4_3_7_9 = 12 in
      (let rec _lh_grid_LH_P4_2_7_9 = 16 in
        (let rec _lh_grid_LH_P4_1_7_9 = 11 in
          (let rec _lh_grid_LH_P4_0_7_9 = 14 in
            (fun _lh_grid_arg1_1_6_1 _lh_grid_arg2_1_6_1 _lh_grid_arg4_1_6_1 _lh_grid_arg5_1_6_1 _lh_grid_arg6_1_6_1 _lh_listcomp_fun_ls_t_1_6_9 _lh_listcomp_fun_1_6_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_1) _lh_grid_LH_P4_0_7_9) _lh_grid_arg1_1_6_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_1) _lh_grid_LH_P4_1_7_9) _lh_grid_arg2_1_6_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_1) _lh_grid_LH_P4_2_7_9) _lh_grid_arg1_1_6_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_1) _lh_grid_LH_P4_3_7_9) _lh_grid_arg2_1_6_1))), (_lh_listcomp_fun_1_6_1 _lh_listcomp_fun_ls_t_1_6_9)))))))) in
      (fun _lh_grid_arg1_1_6_2 _lh_grid_arg2_1_6_2 _lh_grid_arg4_1_6_2 _lh_grid_arg5_1_6_2 _lh_grid_arg6_1_6_2 _lh_listcomp_fun_1_6_2 -> 
        (((((((_lh_listcomp_fun_ls_h_7_9 _lh_grid_arg1_1_6_2) _lh_grid_arg2_1_6_2) _lh_grid_arg4_1_6_2) _lh_grid_arg5_1_6_2) _lh_grid_arg6_1_6_2) _lh_listcomp_fun_ls_t_1_3_4) _lh_listcomp_fun_1_6_2)))) in
    (let rec _lh_listcomp_fun_ls_h_8_0 = (let rec _lh_grid_LH_P4_3_8_0 = 14 in
      (let rec _lh_grid_LH_P4_2_8_0 = 16 in
        (let rec _lh_grid_LH_P4_1_8_0 = 13 in
          (let rec _lh_grid_LH_P4_0_8_0 = 13 in
            (fun _lh_grid_arg1_1_6_3 _lh_grid_arg2_1_6_3 _lh_grid_arg4_1_6_3 _lh_grid_arg5_1_6_3 _lh_grid_arg6_1_6_3 _lh_listcomp_fun_ls_t_1_7_0 _lh_listcomp_fun_1_6_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_3) _lh_grid_LH_P4_0_8_0) _lh_grid_arg1_1_6_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_3) _lh_grid_LH_P4_1_8_0) _lh_grid_arg2_1_6_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_3) _lh_grid_LH_P4_2_8_0) _lh_grid_arg1_1_6_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_3) _lh_grid_LH_P4_3_8_0) _lh_grid_arg2_1_6_3))), (_lh_listcomp_fun_1_6_3 _lh_listcomp_fun_ls_t_1_7_0)))))))) in
      (fun _lh_grid_arg1_1_6_4 _lh_grid_arg2_1_6_4 _lh_grid_arg4_1_6_4 _lh_grid_arg5_1_6_4 _lh_grid_arg6_1_6_4 _lh_listcomp_fun_1_6_4 -> 
        (((((((_lh_listcomp_fun_ls_h_8_0 _lh_grid_arg1_1_6_4) _lh_grid_arg2_1_6_4) _lh_grid_arg4_1_6_4) _lh_grid_arg5_1_6_4) _lh_grid_arg6_1_6_4) _lh_listcomp_fun_ls_t_1_3_3) _lh_listcomp_fun_1_6_4)))) in
    (let rec _lh_listcomp_fun_ls_h_8_1 = (let rec _lh_grid_LH_P4_3_8_1 = 13 in
      (let rec _lh_grid_LH_P4_2_8_1 = 7 in
        (let rec _lh_grid_LH_P4_1_8_1 = 14 in
          (let rec _lh_grid_LH_P4_0_8_1 = 0 in
            (fun _lh_grid_arg1_1_6_5 _lh_grid_arg2_1_6_5 _lh_grid_arg4_1_6_5 _lh_grid_arg5_1_6_5 _lh_grid_arg6_1_6_5 _lh_listcomp_fun_ls_t_1_7_1 _lh_listcomp_fun_1_6_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_5) _lh_grid_LH_P4_0_8_1) _lh_grid_arg1_1_6_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_5) _lh_grid_LH_P4_1_8_1) _lh_grid_arg2_1_6_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_5) _lh_grid_LH_P4_2_8_1) _lh_grid_arg1_1_6_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_5) _lh_grid_LH_P4_3_8_1) _lh_grid_arg2_1_6_5))), (_lh_listcomp_fun_1_6_5 _lh_listcomp_fun_ls_t_1_7_1)))))))) in
      (fun _lh_grid_arg1_1_6_6 _lh_grid_arg2_1_6_6 _lh_grid_arg4_1_6_6 _lh_grid_arg5_1_6_6 _lh_grid_arg6_1_6_6 _lh_listcomp_fun_1_6_6 -> 
        (((((((_lh_listcomp_fun_ls_h_8_1 _lh_grid_arg1_1_6_6) _lh_grid_arg2_1_6_6) _lh_grid_arg4_1_6_6) _lh_grid_arg5_1_6_6) _lh_grid_arg6_1_6_6) _lh_listcomp_fun_ls_t_1_3_2) _lh_listcomp_fun_1_6_6)))) in
    (let rec _lh_listcomp_fun_ls_h_8_2 = (let rec _lh_grid_LH_P4_3_8_2 = 10 in
      (let rec _lh_grid_LH_P4_2_8_2 = 7 in
        (let rec _lh_grid_LH_P4_1_8_2 = 12 in
          (let rec _lh_grid_LH_P4_0_8_2 = 0 in
            (fun _lh_grid_arg1_1_6_7 _lh_grid_arg2_1_6_7 _lh_grid_arg4_1_6_7 _lh_grid_arg5_1_6_7 _lh_grid_arg6_1_6_7 _lh_listcomp_fun_ls_t_1_7_2 _lh_listcomp_fun_1_6_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_7) _lh_grid_LH_P4_0_8_2) _lh_grid_arg1_1_6_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_7) _lh_grid_LH_P4_1_8_2) _lh_grid_arg2_1_6_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_7) _lh_grid_LH_P4_2_8_2) _lh_grid_arg1_1_6_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_7) _lh_grid_LH_P4_3_8_2) _lh_grid_arg2_1_6_7))), (_lh_listcomp_fun_1_6_7 _lh_listcomp_fun_ls_t_1_7_2)))))))) in
      (fun _lh_grid_arg1_1_6_8 _lh_grid_arg2_1_6_8 _lh_grid_arg4_1_6_8 _lh_grid_arg5_1_6_8 _lh_grid_arg6_1_6_8 _lh_listcomp_fun_1_6_8 -> 
        (((((((_lh_listcomp_fun_ls_h_8_2 _lh_grid_arg1_1_6_8) _lh_grid_arg2_1_6_8) _lh_grid_arg4_1_6_8) _lh_grid_arg5_1_6_8) _lh_grid_arg6_1_6_8) _lh_listcomp_fun_ls_t_1_3_1) _lh_listcomp_fun_1_6_8)))) in
    (let rec _lh_listcomp_fun_ls_h_8_3 = (let rec _lh_grid_LH_P4_3_8_3 = 8 in
      (let rec _lh_grid_LH_P4_2_8_3 = 7 in
        (let rec _lh_grid_LH_P4_1_8_3 = 10 in
          (let rec _lh_grid_LH_P4_0_8_3 = 0 in
            (fun _lh_grid_arg1_1_6_9 _lh_grid_arg2_1_6_9 _lh_grid_arg4_1_6_9 _lh_grid_arg5_1_6_9 _lh_grid_arg6_1_6_9 _lh_listcomp_fun_ls_t_1_7_3 _lh_listcomp_fun_1_6_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_9) _lh_grid_LH_P4_0_8_3) _lh_grid_arg1_1_6_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_9) _lh_grid_LH_P4_1_8_3) _lh_grid_arg2_1_6_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_6_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_6_9) _lh_grid_LH_P4_2_8_3) _lh_grid_arg1_1_6_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_6_9) _lh_grid_LH_P4_3_8_3) _lh_grid_arg2_1_6_9))), (_lh_listcomp_fun_1_6_9 _lh_listcomp_fun_ls_t_1_7_3)))))))) in
      (fun _lh_grid_arg1_1_7_0 _lh_grid_arg2_1_7_0 _lh_grid_arg4_1_7_0 _lh_grid_arg5_1_7_0 _lh_grid_arg6_1_7_0 _lh_listcomp_fun_1_7_0 -> 
        (((((((_lh_listcomp_fun_ls_h_8_3 _lh_grid_arg1_1_7_0) _lh_grid_arg2_1_7_0) _lh_grid_arg4_1_7_0) _lh_grid_arg5_1_7_0) _lh_grid_arg6_1_7_0) _lh_listcomp_fun_ls_t_1_3_0) _lh_listcomp_fun_1_7_0)))) in
    (let rec _lh_listcomp_fun_ls_h_8_4 = (let rec _lh_grid_LH_P4_3_8_4 = 6 in
      (let rec _lh_grid_LH_P4_2_8_4 = 8 in
        (let rec _lh_grid_LH_P4_1_8_4 = 8 in
          (let rec _lh_grid_LH_P4_0_8_4 = 0 in
            (fun _lh_grid_arg1_1_7_1 _lh_grid_arg2_1_7_1 _lh_grid_arg4_1_7_1 _lh_grid_arg5_1_7_1 _lh_grid_arg6_1_7_1 _lh_listcomp_fun_ls_t_1_7_4 _lh_listcomp_fun_1_7_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_1) _lh_grid_LH_P4_0_8_4) _lh_grid_arg1_1_7_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_1) _lh_grid_LH_P4_1_8_4) _lh_grid_arg2_1_7_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_1) _lh_grid_LH_P4_2_8_4) _lh_grid_arg1_1_7_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_1) _lh_grid_LH_P4_3_8_4) _lh_grid_arg2_1_7_1))), (_lh_listcomp_fun_1_7_1 _lh_listcomp_fun_ls_t_1_7_4)))))))) in
      (fun _lh_grid_arg1_1_7_2 _lh_grid_arg2_1_7_2 _lh_grid_arg4_1_7_2 _lh_grid_arg5_1_7_2 _lh_grid_arg6_1_7_2 _lh_listcomp_fun_1_7_2 -> 
        (((((((_lh_listcomp_fun_ls_h_8_4 _lh_grid_arg1_1_7_2) _lh_grid_arg2_1_7_2) _lh_grid_arg4_1_7_2) _lh_grid_arg5_1_7_2) _lh_grid_arg6_1_7_2) _lh_listcomp_fun_ls_t_1_2_9) _lh_listcomp_fun_1_7_2)))) in
    (let rec _lh_listcomp_fun_ls_h_8_5 = (let rec _lh_grid_LH_P4_3_8_5 = 4 in
      (let rec _lh_grid_LH_P4_2_8_5 = 7 in
        (let rec _lh_grid_LH_P4_1_8_5 = 6 in
          (let rec _lh_grid_LH_P4_0_8_5 = 0 in
            (fun _lh_grid_arg1_1_7_3 _lh_grid_arg2_1_7_3 _lh_grid_arg4_1_7_3 _lh_grid_arg5_1_7_3 _lh_grid_arg6_1_7_3 _lh_listcomp_fun_ls_t_1_7_5 _lh_listcomp_fun_1_7_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_3) _lh_grid_LH_P4_0_8_5) _lh_grid_arg1_1_7_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_3) _lh_grid_LH_P4_1_8_5) _lh_grid_arg2_1_7_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_3) _lh_grid_LH_P4_2_8_5) _lh_grid_arg1_1_7_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_3) _lh_grid_LH_P4_3_8_5) _lh_grid_arg2_1_7_3))), (_lh_listcomp_fun_1_7_3 _lh_listcomp_fun_ls_t_1_7_5)))))))) in
      (fun _lh_grid_arg1_1_7_4 _lh_grid_arg2_1_7_4 _lh_grid_arg4_1_7_4 _lh_grid_arg5_1_7_4 _lh_grid_arg6_1_7_4 _lh_listcomp_fun_1_7_4 -> 
        (((((((_lh_listcomp_fun_ls_h_8_5 _lh_grid_arg1_1_7_4) _lh_grid_arg2_1_7_4) _lh_grid_arg4_1_7_4) _lh_grid_arg5_1_7_4) _lh_grid_arg6_1_7_4) _lh_listcomp_fun_ls_t_1_2_8) _lh_listcomp_fun_1_7_4)))) in
    (let rec _lh_listcomp_fun_ls_h_8_6 = (let rec _lh_grid_LH_P4_3_8_6 = 1 in
      (let rec _lh_grid_LH_P4_2_8_6 = 2 in
        (let rec _lh_grid_LH_P4_1_8_6 = 4 in
          (let rec _lh_grid_LH_P4_0_8_6 = 0 in
            (fun _lh_grid_arg1_1_7_5 _lh_grid_arg2_1_7_5 _lh_grid_arg4_1_7_5 _lh_grid_arg5_1_7_5 _lh_grid_arg6_1_7_5 _lh_listcomp_fun_ls_t_1_7_6 _lh_listcomp_fun_1_7_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_5) _lh_grid_LH_P4_0_8_6) _lh_grid_arg1_1_7_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_5) _lh_grid_LH_P4_1_8_6) _lh_grid_arg2_1_7_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_5) _lh_grid_LH_P4_2_8_6) _lh_grid_arg1_1_7_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_5) _lh_grid_LH_P4_3_8_6) _lh_grid_arg2_1_7_5))), (_lh_listcomp_fun_1_7_5 _lh_listcomp_fun_ls_t_1_7_6)))))))) in
      (fun _lh_grid_arg1_1_7_6 _lh_grid_arg2_1_7_6 _lh_grid_arg4_1_7_6 _lh_grid_arg5_1_7_6 _lh_grid_arg6_1_7_6 _lh_listcomp_fun_1_7_6 -> 
        (((((((_lh_listcomp_fun_ls_h_8_6 _lh_grid_arg1_1_7_6) _lh_grid_arg2_1_7_6) _lh_grid_arg4_1_7_6) _lh_grid_arg5_1_7_6) _lh_grid_arg6_1_7_6) _lh_listcomp_fun_ls_t_1_2_7) _lh_listcomp_fun_1_7_6)))) in
    (let rec _lh_listcomp_fun_ls_h_8_7 = (let rec _lh_grid_LH_P4_3_8_7 = 0 in
      (let rec _lh_grid_LH_P4_2_8_7 = 16 in
        (let rec _lh_grid_LH_P4_1_8_7 = 2 in
          (let rec _lh_grid_LH_P4_0_8_7 = 8 in
            (fun _lh_grid_arg1_1_7_7 _lh_grid_arg2_1_7_7 _lh_grid_arg4_1_7_7 _lh_grid_arg5_1_7_7 _lh_grid_arg6_1_7_7 _lh_listcomp_fun_ls_t_1_7_7 _lh_listcomp_fun_1_7_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_7) _lh_grid_LH_P4_0_8_7) _lh_grid_arg1_1_7_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_7) _lh_grid_LH_P4_1_8_7) _lh_grid_arg2_1_7_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_7) _lh_grid_LH_P4_2_8_7) _lh_grid_arg1_1_7_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_7) _lh_grid_LH_P4_3_8_7) _lh_grid_arg2_1_7_7))), (_lh_listcomp_fun_1_7_7 _lh_listcomp_fun_ls_t_1_7_7)))))))) in
      (fun _lh_grid_arg1_1_7_8 _lh_grid_arg2_1_7_8 _lh_grid_arg4_1_7_8 _lh_grid_arg5_1_7_8 _lh_grid_arg6_1_7_8 _lh_listcomp_fun_1_7_8 -> 
        (((((((_lh_listcomp_fun_ls_h_8_7 _lh_grid_arg1_1_7_8) _lh_grid_arg2_1_7_8) _lh_grid_arg4_1_7_8) _lh_grid_arg5_1_7_8) _lh_grid_arg6_1_7_8) _lh_listcomp_fun_ls_t_1_2_6) _lh_listcomp_fun_1_7_8)))) in
    (let rec _lh_listcomp_fun_ls_h_8_8 = (let rec _lh_grid_LH_P4_3_8_8 = 2 in
      (let rec _lh_grid_LH_P4_2_8_8 = 8 in
        (let rec _lh_grid_LH_P4_1_8_8 = 2 in
          (let rec _lh_grid_LH_P4_0_8_8 = 4 in
            (fun _lh_grid_arg1_1_7_9 _lh_grid_arg2_1_7_9 _lh_grid_arg4_1_7_9 _lh_grid_arg5_1_7_9 _lh_grid_arg6_1_7_9 _lh_listcomp_fun_ls_t_1_7_8 _lh_listcomp_fun_1_7_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_9) _lh_grid_LH_P4_0_8_8) _lh_grid_arg1_1_7_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_9) _lh_grid_LH_P4_1_8_8) _lh_grid_arg2_1_7_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7_9) _lh_grid_LH_P4_2_8_8) _lh_grid_arg1_1_7_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7_9) _lh_grid_LH_P4_3_8_8) _lh_grid_arg2_1_7_9))), (_lh_listcomp_fun_1_7_9 _lh_listcomp_fun_ls_t_1_7_8)))))))) in
      (fun _lh_grid_arg1_1_8_0 _lh_grid_arg2_1_8_0 _lh_grid_arg4_1_8_0 _lh_grid_arg5_1_8_0 _lh_grid_arg6_1_8_0 _lh_listcomp_fun_1_8_0 -> 
        (((((((_lh_listcomp_fun_ls_h_8_8 _lh_grid_arg1_1_8_0) _lh_grid_arg2_1_8_0) _lh_grid_arg4_1_8_0) _lh_grid_arg5_1_8_0) _lh_grid_arg6_1_8_0) _lh_listcomp_fun_ls_t_1_2_5) _lh_listcomp_fun_1_8_0)))) in
    (let rec _lh_listcomp_fun_ls_h_8_9 = (let rec _lh_grid_LH_P4_3_8_9 = 2 in
      (let rec _lh_grid_LH_P4_2_8_9 = 4 in
        (let rec _lh_grid_LH_P4_1_8_9 = 0 in
          (let rec _lh_grid_LH_P4_0_8_9 = 0 in
            (fun _lh_grid_arg1_1_8_1 _lh_grid_arg2_1_8_1 _lh_grid_arg4_1_8_1 _lh_grid_arg5_1_8_1 _lh_grid_arg6_1_8_1 _lh_listcomp_fun_ls_t_1_7_9 _lh_listcomp_fun_1_8_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_8_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_8_1) _lh_grid_LH_P4_0_8_9) _lh_grid_arg1_1_8_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_8_1) _lh_grid_LH_P4_1_8_9) _lh_grid_arg2_1_8_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_8_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_8_1) _lh_grid_LH_P4_2_8_9) _lh_grid_arg1_1_8_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_8_1) _lh_grid_LH_P4_3_8_9) _lh_grid_arg2_1_8_1))), (_lh_listcomp_fun_1_8_1 _lh_listcomp_fun_ls_t_1_7_9)))))))) in
      (fun _lh_grid_arg1_1_8_2 _lh_grid_arg2_1_8_2 _lh_grid_arg4_1_8_2 _lh_grid_arg5_1_8_2 _lh_grid_arg6_1_8_2 _lh_listcomp_fun_1_8_2 -> 
        (((((((_lh_listcomp_fun_ls_h_8_9 _lh_grid_arg1_1_8_2) _lh_grid_arg2_1_8_2) _lh_grid_arg4_1_8_2) _lh_grid_arg5_1_8_2) _lh_grid_arg6_1_8_2) _lh_listcomp_fun_ls_t_1_2_4) _lh_listcomp_fun_1_8_2))));;
let rec s_lh__d1 _lh_s_arg1_0 =
  ((tile_to_grid_lh__d1 s_tile_lh__d1) _lh_s_arg1_0);;
let rec q_tile_lh__d1 =
  (let rec _lh_listcomp_fun_ls_t_0 = (let rec _lh_listcomp_fun_ls_t_1 = (let rec _lh_listcomp_fun_ls_t_2 = (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (let rec _lh_listcomp_fun_ls_t_6 = (let rec _lh_listcomp_fun_ls_t_7 = (let rec _lh_listcomp_fun_ls_t_8 = (let rec _lh_listcomp_fun_ls_t_9 = (let rec _lh_listcomp_fun_ls_t_1_0 = (let rec _lh_listcomp_fun_ls_t_1_1 = (let rec _lh_listcomp_fun_ls_t_1_2 = (let rec _lh_listcomp_fun_ls_t_1_3 = (let rec _lh_listcomp_fun_ls_t_1_4 = (let rec _lh_listcomp_fun_ls_t_1_5 = (let rec _lh_listcomp_fun_ls_t_1_6 = (let rec _lh_listcomp_fun_ls_t_1_7 = (let rec _lh_listcomp_fun_ls_t_1_8 = (let rec _lh_listcomp_fun_ls_t_1_9 = (let rec _lh_listcomp_fun_ls_t_2_0 = (let rec _lh_listcomp_fun_ls_t_2_1 = (let rec _lh_listcomp_fun_ls_t_2_2 = (let rec _lh_listcomp_fun_ls_t_2_3 = (let rec _lh_listcomp_fun_ls_t_2_4 = (let rec _lh_listcomp_fun_ls_t_2_5 = (let rec _lh_listcomp_fun_ls_t_2_6 = (let rec _lh_listcomp_fun_ls_t_2_7 = (let rec _lh_listcomp_fun_ls_t_2_8 = (let rec _lh_listcomp_fun_ls_t_2_9 = (let rec _lh_listcomp_fun_ls_t_3_0 = (let rec _lh_listcomp_fun_ls_t_3_1 = (let rec _lh_listcomp_fun_ls_t_3_2 = (let rec _lh_listcomp_fun_ls_t_3_3 = (let rec _lh_listcomp_fun_ls_t_3_4 = (let rec _lh_listcomp_fun_ls_t_3_5 = (let rec _lh_listcomp_fun_ls_t_3_6 = (fun _lh_grid_arg1_0 _lh_grid_arg2_0 _lh_grid_arg4_0 _lh_grid_arg5_0 _lh_grid_arg6_0 _lh_listcomp_fun_0 -> 
    (`LH_N)) in
    (let rec _lh_listcomp_fun_ls_h_0 = (let rec _lh_grid_LH_P4_3_0 = 16 in
      (let rec _lh_grid_LH_P4_2_0 = 0 in
        (let rec _lh_grid_LH_P4_1_0 = 12 in
          (let rec _lh_grid_LH_P4_0_0 = 0 in
            (fun _lh_grid_arg1_1 _lh_grid_arg2_1 _lh_grid_arg4_1 _lh_grid_arg5_1 _lh_grid_arg6_1 _lh_listcomp_fun_ls_t_3_7 _lh_listcomp_fun_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1) _lh_grid_LH_P4_0_0) _lh_grid_arg1_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1) _lh_grid_LH_P4_1_0) _lh_grid_arg2_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1) _lh_grid_LH_P4_2_0) _lh_grid_arg1_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1) _lh_grid_LH_P4_3_0) _lh_grid_arg2_1))), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_3_7)))))))) in
      (fun _lh_grid_arg1_2 _lh_grid_arg2_2 _lh_grid_arg4_2 _lh_grid_arg5_2 _lh_grid_arg6_2 _lh_listcomp_fun_2 -> 
        (((((((_lh_listcomp_fun_ls_h_0 _lh_grid_arg1_2) _lh_grid_arg2_2) _lh_grid_arg4_2) _lh_grid_arg5_2) _lh_grid_arg6_2) _lh_listcomp_fun_ls_t_3_6) _lh_listcomp_fun_2)))) in
    (let rec _lh_listcomp_fun_ls_h_1 = (let rec _lh_grid_LH_P4_3_1 = 8 in
      (let rec _lh_grid_LH_P4_2_1 = 0 in
        (let rec _lh_grid_LH_P4_1_1 = 0 in
          (let rec _lh_grid_LH_P4_0_1 = 0 in
            (fun _lh_grid_arg1_3 _lh_grid_arg2_3 _lh_grid_arg4_3 _lh_grid_arg5_3 _lh_grid_arg6_3 _lh_listcomp_fun_ls_t_3_8 _lh_listcomp_fun_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3) (((scale_vec2_lh__d1 _lh_grid_arg5_3) _lh_grid_LH_P4_0_1) _lh_grid_arg1_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_3) _lh_grid_LH_P4_1_1) _lh_grid_arg2_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3) (((scale_vec2_lh__d1 _lh_grid_arg5_3) _lh_grid_LH_P4_2_1) _lh_grid_arg1_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_3) _lh_grid_LH_P4_3_1) _lh_grid_arg2_3))), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3_8)))))))) in
      (fun _lh_grid_arg1_4 _lh_grid_arg2_4 _lh_grid_arg4_4 _lh_grid_arg5_4 _lh_grid_arg6_4 _lh_listcomp_fun_4 -> 
        (((((((_lh_listcomp_fun_ls_h_1 _lh_grid_arg1_4) _lh_grid_arg2_4) _lh_grid_arg4_4) _lh_grid_arg5_4) _lh_grid_arg6_4) _lh_listcomp_fun_ls_t_3_5) _lh_listcomp_fun_4)))) in
    (let rec _lh_listcomp_fun_ls_h_2 = (let rec _lh_grid_LH_P4_3_2 = 0 in
      (let rec _lh_grid_LH_P4_2_2 = 16 in
        (let rec _lh_grid_LH_P4_1_2 = 0 in
          (let rec _lh_grid_LH_P4_0_2 = 12 in
            (fun _lh_grid_arg1_5 _lh_grid_arg2_5 _lh_grid_arg4_5 _lh_grid_arg5_5 _lh_grid_arg6_5 _lh_listcomp_fun_ls_t_3_9 _lh_listcomp_fun_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5) (((scale_vec2_lh__d1 _lh_grid_arg5_5) _lh_grid_LH_P4_0_2) _lh_grid_arg1_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_5) _lh_grid_LH_P4_1_2) _lh_grid_arg2_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5) (((scale_vec2_lh__d1 _lh_grid_arg5_5) _lh_grid_LH_P4_2_2) _lh_grid_arg1_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_5) _lh_grid_LH_P4_3_2) _lh_grid_arg2_5))), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3_9)))))))) in
      (fun _lh_grid_arg1_6 _lh_grid_arg2_6 _lh_grid_arg4_6 _lh_grid_arg5_6 _lh_grid_arg6_6 _lh_listcomp_fun_6 -> 
        (((((((_lh_listcomp_fun_ls_h_2 _lh_grid_arg1_6) _lh_grid_arg2_6) _lh_grid_arg4_6) _lh_grid_arg5_6) _lh_grid_arg6_6) _lh_listcomp_fun_ls_t_3_4) _lh_listcomp_fun_6)))) in
    (let rec _lh_listcomp_fun_ls_h_3 = (let rec _lh_grid_LH_P4_3_3 = 0 in
      (let rec _lh_grid_LH_P4_2_3 = 8 in
        (let rec _lh_grid_LH_P4_1_3 = 0 in
          (let rec _lh_grid_LH_P4_0_3 = 0 in
            (fun _lh_grid_arg1_7 _lh_grid_arg2_7 _lh_grid_arg4_7 _lh_grid_arg5_7 _lh_grid_arg6_7 _lh_listcomp_fun_ls_t_4_0 _lh_listcomp_fun_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7) (((scale_vec2_lh__d1 _lh_grid_arg5_7) _lh_grid_LH_P4_0_3) _lh_grid_arg1_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_7) _lh_grid_LH_P4_1_3) _lh_grid_arg2_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7) (((scale_vec2_lh__d1 _lh_grid_arg5_7) _lh_grid_LH_P4_2_3) _lh_grid_arg1_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_7) _lh_grid_LH_P4_3_3) _lh_grid_arg2_7))), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_4_0)))))))) in
      (fun _lh_grid_arg1_8 _lh_grid_arg2_8 _lh_grid_arg4_8 _lh_grid_arg5_8 _lh_grid_arg6_8 _lh_listcomp_fun_8 -> 
        (((((((_lh_listcomp_fun_ls_h_3 _lh_grid_arg1_8) _lh_grid_arg2_8) _lh_grid_arg4_8) _lh_grid_arg5_8) _lh_grid_arg6_8) _lh_listcomp_fun_ls_t_3_3) _lh_listcomp_fun_8)))) in
    (let rec _lh_listcomp_fun_ls_h_4 = (let rec _lh_grid_LH_P4_3_4 = 2 in
      (let rec _lh_grid_LH_P4_2_4 = 16 in
        (let rec _lh_grid_LH_P4_1_4 = 0 in
          (let rec _lh_grid_LH_P4_0_4 = 15 in
            (fun _lh_grid_arg1_9 _lh_grid_arg2_9 _lh_grid_arg4_9 _lh_grid_arg5_9 _lh_grid_arg6_9 _lh_listcomp_fun_ls_t_4_1 _lh_listcomp_fun_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9) (((scale_vec2_lh__d1 _lh_grid_arg5_9) _lh_grid_LH_P4_0_4) _lh_grid_arg1_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_9) _lh_grid_LH_P4_1_4) _lh_grid_arg2_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9) (((scale_vec2_lh__d1 _lh_grid_arg5_9) _lh_grid_LH_P4_2_4) _lh_grid_arg1_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_9) _lh_grid_LH_P4_3_4) _lh_grid_arg2_9))), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_4_1)))))))) in
      (fun _lh_grid_arg1_1_0 _lh_grid_arg2_1_0 _lh_grid_arg4_1_0 _lh_grid_arg5_1_0 _lh_grid_arg6_1_0 _lh_listcomp_fun_1_0 -> 
        (((((((_lh_listcomp_fun_ls_h_4 _lh_grid_arg1_1_0) _lh_grid_arg2_1_0) _lh_grid_arg4_1_0) _lh_grid_arg5_1_0) _lh_grid_arg6_1_0) _lh_listcomp_fun_ls_t_3_2) _lh_listcomp_fun_1_0)))) in
    (let rec _lh_listcomp_fun_ls_h_5 = (let rec _lh_grid_LH_P4_3_5 = 4 in
      (let rec _lh_grid_LH_P4_2_5 = 16 in
        (let rec _lh_grid_LH_P4_1_5 = 0 in
          (let rec _lh_grid_LH_P4_0_5 = 14 in
            (fun _lh_grid_arg1_1_1 _lh_grid_arg2_1_1 _lh_grid_arg4_1_1 _lh_grid_arg5_1_1 _lh_grid_arg6_1_1 _lh_listcomp_fun_ls_t_4_2 _lh_listcomp_fun_1_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1) _lh_grid_LH_P4_0_5) _lh_grid_arg1_1_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1) _lh_grid_LH_P4_1_5) _lh_grid_arg2_1_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1) _lh_grid_LH_P4_2_5) _lh_grid_arg1_1_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1) _lh_grid_LH_P4_3_5) _lh_grid_arg2_1_1))), (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_4_2)))))))) in
      (fun _lh_grid_arg1_1_2 _lh_grid_arg2_1_2 _lh_grid_arg4_1_2 _lh_grid_arg5_1_2 _lh_grid_arg6_1_2 _lh_listcomp_fun_1_2 -> 
        (((((((_lh_listcomp_fun_ls_h_5 _lh_grid_arg1_1_2) _lh_grid_arg2_1_2) _lh_grid_arg4_1_2) _lh_grid_arg5_1_2) _lh_grid_arg6_1_2) _lh_listcomp_fun_ls_t_3_1) _lh_listcomp_fun_1_2)))) in
    (let rec _lh_listcomp_fun_ls_h_6 = (let rec _lh_grid_LH_P4_3_6 = 6 in
      (let rec _lh_grid_LH_P4_2_6 = 16 in
        (let rec _lh_grid_LH_P4_1_6 = 0 in
          (let rec _lh_grid_LH_P4_0_6 = 13 in
            (fun _lh_grid_arg1_1_3 _lh_grid_arg2_1_3 _lh_grid_arg4_1_3 _lh_grid_arg5_1_3 _lh_grid_arg6_1_3 _lh_listcomp_fun_ls_t_4_3 _lh_listcomp_fun_1_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3) _lh_grid_LH_P4_0_6) _lh_grid_arg1_1_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3) _lh_grid_LH_P4_1_6) _lh_grid_arg2_1_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_3) (((scale_vec2_lh__d1 _lh_grid_arg5_1_3) _lh_grid_LH_P4_2_6) _lh_grid_arg1_1_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_3) _lh_grid_LH_P4_3_6) _lh_grid_arg2_1_3))), (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_4_3)))))))) in
      (fun _lh_grid_arg1_1_4 _lh_grid_arg2_1_4 _lh_grid_arg4_1_4 _lh_grid_arg5_1_4 _lh_grid_arg6_1_4 _lh_listcomp_fun_1_4 -> 
        (((((((_lh_listcomp_fun_ls_h_6 _lh_grid_arg1_1_4) _lh_grid_arg2_1_4) _lh_grid_arg4_1_4) _lh_grid_arg5_1_4) _lh_grid_arg6_1_4) _lh_listcomp_fun_ls_t_3_0) _lh_listcomp_fun_1_4)))) in
    (let rec _lh_listcomp_fun_ls_h_7 = (let rec _lh_grid_LH_P4_3_7 = 16 in
      (let rec _lh_grid_LH_P4_2_7 = 16 in
        (let rec _lh_grid_LH_P4_1_7 = 10 in
          (let rec _lh_grid_LH_P4_0_7 = 15 in
            (fun _lh_grid_arg1_1_5 _lh_grid_arg2_1_5 _lh_grid_arg4_1_5 _lh_grid_arg5_1_5 _lh_grid_arg6_1_5 _lh_listcomp_fun_ls_t_4_4 _lh_listcomp_fun_1_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5) _lh_grid_LH_P4_0_7) _lh_grid_arg1_1_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5) _lh_grid_LH_P4_1_7) _lh_grid_arg2_1_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_5) (((scale_vec2_lh__d1 _lh_grid_arg5_1_5) _lh_grid_LH_P4_2_7) _lh_grid_arg1_1_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_5) _lh_grid_LH_P4_3_7) _lh_grid_arg2_1_5))), (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_4_4)))))))) in
      (fun _lh_grid_arg1_1_6 _lh_grid_arg2_1_6 _lh_grid_arg4_1_6 _lh_grid_arg5_1_6 _lh_grid_arg6_1_6 _lh_listcomp_fun_1_6 -> 
        (((((((_lh_listcomp_fun_ls_h_7 _lh_grid_arg1_1_6) _lh_grid_arg2_1_6) _lh_grid_arg4_1_6) _lh_grid_arg5_1_6) _lh_grid_arg6_1_6) _lh_listcomp_fun_ls_t_2_9) _lh_listcomp_fun_1_6)))) in
    (let rec _lh_listcomp_fun_ls_h_8 = (let rec _lh_grid_LH_P4_3_8 = 10 in
      (let rec _lh_grid_LH_P4_2_8 = 15 in
        (let rec _lh_grid_LH_P4_1_8 = 8 in
          (let rec _lh_grid_LH_P4_0_8 = 16 in
            (fun _lh_grid_arg1_1_7 _lh_grid_arg2_1_7 _lh_grid_arg4_1_7 _lh_grid_arg5_1_7 _lh_grid_arg6_1_7 _lh_listcomp_fun_ls_t_4_5 _lh_listcomp_fun_1_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7) _lh_grid_LH_P4_0_8) _lh_grid_arg1_1_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7) _lh_grid_LH_P4_1_8) _lh_grid_arg2_1_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_7) (((scale_vec2_lh__d1 _lh_grid_arg5_1_7) _lh_grid_LH_P4_2_8) _lh_grid_arg1_1_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_7) _lh_grid_LH_P4_3_8) _lh_grid_arg2_1_7))), (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_4_5)))))))) in
      (fun _lh_grid_arg1_1_8 _lh_grid_arg2_1_8 _lh_grid_arg4_1_8 _lh_grid_arg5_1_8 _lh_grid_arg6_1_8 _lh_listcomp_fun_1_8 -> 
        (((((((_lh_listcomp_fun_ls_h_8 _lh_grid_arg1_1_8) _lh_grid_arg2_1_8) _lh_grid_arg4_1_8) _lh_grid_arg5_1_8) _lh_grid_arg6_1_8) _lh_listcomp_fun_ls_t_2_8) _lh_listcomp_fun_1_8)))) in
    (let rec _lh_listcomp_fun_ls_h_9 = (let rec _lh_grid_LH_P4_3_9 = 8 in
      (let rec _lh_grid_LH_P4_2_9 = 16 in
        (let rec _lh_grid_LH_P4_1_9 = 4 in
          (let rec _lh_grid_LH_P4_0_9 = 13 in
            (fun _lh_grid_arg1_1_9 _lh_grid_arg2_1_9 _lh_grid_arg4_1_9 _lh_grid_arg5_1_9 _lh_grid_arg6_1_9 _lh_listcomp_fun_ls_t_4_6 _lh_listcomp_fun_1_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9) _lh_grid_LH_P4_0_9) _lh_grid_arg1_1_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9) _lh_grid_LH_P4_1_9) _lh_grid_arg2_1_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_9) (((scale_vec2_lh__d1 _lh_grid_arg5_1_9) _lh_grid_LH_P4_2_9) _lh_grid_arg1_1_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_9) _lh_grid_LH_P4_3_9) _lh_grid_arg2_1_9))), (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_4_6)))))))) in
      (fun _lh_grid_arg1_2_0 _lh_grid_arg2_2_0 _lh_grid_arg4_2_0 _lh_grid_arg5_2_0 _lh_grid_arg6_2_0 _lh_listcomp_fun_2_0 -> 
        (((((((_lh_listcomp_fun_ls_h_9 _lh_grid_arg1_2_0) _lh_grid_arg2_2_0) _lh_grid_arg4_2_0) _lh_grid_arg5_2_0) _lh_grid_arg6_2_0) _lh_listcomp_fun_ls_t_2_7) _lh_listcomp_fun_2_0)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0 = (let rec _lh_grid_LH_P4_3_1_0 = 4 in
      (let rec _lh_grid_LH_P4_2_1_0 = 13 in
        (let rec _lh_grid_LH_P4_1_1_0 = 0 in
          (let rec _lh_grid_LH_P4_0_1_0 = 12 in
            (fun _lh_grid_arg1_2_1 _lh_grid_arg2_2_1 _lh_grid_arg4_2_1 _lh_grid_arg5_2_1 _lh_grid_arg6_2_1 _lh_listcomp_fun_ls_t_4_7 _lh_listcomp_fun_2_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1) _lh_grid_LH_P4_0_1_0) _lh_grid_arg1_2_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1) _lh_grid_LH_P4_1_1_0) _lh_grid_arg2_2_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_1) (((scale_vec2_lh__d1 _lh_grid_arg5_2_1) _lh_grid_LH_P4_2_1_0) _lh_grid_arg1_2_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_1) _lh_grid_LH_P4_3_1_0) _lh_grid_arg2_2_1))), (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_4_7)))))))) in
      (fun _lh_grid_arg1_2_2 _lh_grid_arg2_2_2 _lh_grid_arg4_2_2 _lh_grid_arg5_2_2 _lh_grid_arg6_2_2 _lh_listcomp_fun_2_2 -> 
        (((((((_lh_listcomp_fun_ls_h_1_0 _lh_grid_arg1_2_2) _lh_grid_arg2_2_2) _lh_grid_arg4_2_2) _lh_grid_arg5_2_2) _lh_grid_arg6_2_2) _lh_listcomp_fun_ls_t_2_6) _lh_listcomp_fun_2_2)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1 = (let rec _lh_grid_LH_P4_3_1_1 = 11 in
      (let rec _lh_grid_LH_P4_2_1_1 = 14 in
        (let rec _lh_grid_LH_P4_1_1_1 = 0 in
          (let rec _lh_grid_LH_P4_0_1_1 = 10 in
            (fun _lh_grid_arg1_2_3 _lh_grid_arg2_2_3 _lh_grid_arg4_2_3 _lh_grid_arg5_2_3 _lh_grid_arg6_2_3 _lh_listcomp_fun_ls_t_4_8 _lh_listcomp_fun_2_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3) _lh_grid_LH_P4_0_1_1) _lh_grid_arg1_2_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3) _lh_grid_LH_P4_1_1_1) _lh_grid_arg2_2_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_3) (((scale_vec2_lh__d1 _lh_grid_arg5_2_3) _lh_grid_LH_P4_2_1_1) _lh_grid_arg1_2_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_3) _lh_grid_LH_P4_3_1_1) _lh_grid_arg2_2_3))), (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_4_8)))))))) in
      (fun _lh_grid_arg1_2_4 _lh_grid_arg2_2_4 _lh_grid_arg4_2_4 _lh_grid_arg5_2_4 _lh_grid_arg6_2_4 _lh_listcomp_fun_2_4 -> 
        (((((((_lh_listcomp_fun_ls_h_1_1 _lh_grid_arg1_2_4) _lh_grid_arg2_2_4) _lh_grid_arg4_2_4) _lh_grid_arg5_2_4) _lh_grid_arg6_2_4) _lh_listcomp_fun_ls_t_2_5) _lh_listcomp_fun_2_4)))) in
    (let rec _lh_listcomp_fun_ls_h_1_2 = (let rec _lh_grid_LH_P4_3_1_2 = 8 in
      (let rec _lh_grid_LH_P4_2_1_2 = 8 in
        (let rec _lh_grid_LH_P4_1_1_2 = 5 in
          (let rec _lh_grid_LH_P4_0_1_2 = 8 in
            (fun _lh_grid_arg1_2_5 _lh_grid_arg2_2_5 _lh_grid_arg4_2_5 _lh_grid_arg5_2_5 _lh_grid_arg6_2_5 _lh_listcomp_fun_ls_t_4_9 _lh_listcomp_fun_2_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_5) (((scale_vec2_lh__d1 _lh_grid_arg5_2_5) _lh_grid_LH_P4_0_1_2) _lh_grid_arg1_2_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_5) _lh_grid_LH_P4_1_1_2) _lh_grid_arg2_2_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_5) (((scale_vec2_lh__d1 _lh_grid_arg5_2_5) _lh_grid_LH_P4_2_1_2) _lh_grid_arg1_2_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_5) _lh_grid_LH_P4_3_1_2) _lh_grid_arg2_2_5))), (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_4_9)))))))) in
      (fun _lh_grid_arg1_2_6 _lh_grid_arg2_2_6 _lh_grid_arg4_2_6 _lh_grid_arg5_2_6 _lh_grid_arg6_2_6 _lh_listcomp_fun_2_6 -> 
        (((((((_lh_listcomp_fun_ls_h_1_2 _lh_grid_arg1_2_6) _lh_grid_arg2_2_6) _lh_grid_arg4_2_6) _lh_grid_arg5_2_6) _lh_grid_arg6_2_6) _lh_listcomp_fun_ls_t_2_4) _lh_listcomp_fun_2_6)))) in
    (let rec _lh_listcomp_fun_ls_h_1_3 = (let rec _lh_grid_LH_P4_3_1_3 = 5 in
      (let rec _lh_grid_LH_P4_2_1_3 = 8 in
        (let rec _lh_grid_LH_P4_1_1_3 = 0 in
          (let rec _lh_grid_LH_P4_0_1_3 = 6 in
            (fun _lh_grid_arg1_2_7 _lh_grid_arg2_2_7 _lh_grid_arg4_2_7 _lh_grid_arg5_2_7 _lh_grid_arg6_2_7 _lh_listcomp_fun_ls_t_5_0 _lh_listcomp_fun_2_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_7) (((scale_vec2_lh__d1 _lh_grid_arg5_2_7) _lh_grid_LH_P4_0_1_3) _lh_grid_arg1_2_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_7) _lh_grid_LH_P4_1_1_3) _lh_grid_arg2_2_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_7) (((scale_vec2_lh__d1 _lh_grid_arg5_2_7) _lh_grid_LH_P4_2_1_3) _lh_grid_arg1_2_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_7) _lh_grid_LH_P4_3_1_3) _lh_grid_arg2_2_7))), (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_5_0)))))))) in
      (fun _lh_grid_arg1_2_8 _lh_grid_arg2_2_8 _lh_grid_arg4_2_8 _lh_grid_arg5_2_8 _lh_grid_arg6_2_8 _lh_listcomp_fun_2_8 -> 
        (((((((_lh_listcomp_fun_ls_h_1_3 _lh_grid_arg1_2_8) _lh_grid_arg2_2_8) _lh_grid_arg4_2_8) _lh_grid_arg5_2_8) _lh_grid_arg6_2_8) _lh_listcomp_fun_ls_t_2_3) _lh_listcomp_fun_2_8)))) in
    (let rec _lh_listcomp_fun_ls_h_1_4 = (let rec _lh_grid_LH_P4_3_1_4 = 7 in
      (let rec _lh_grid_LH_P4_2_1_4 = 6 in
        (let rec _lh_grid_LH_P4_1_1_4 = 5 in
          (let rec _lh_grid_LH_P4_0_1_4 = 6 in
            (fun _lh_grid_arg1_2_9 _lh_grid_arg2_2_9 _lh_grid_arg4_2_9 _lh_grid_arg5_2_9 _lh_grid_arg6_2_9 _lh_listcomp_fun_ls_t_5_1 _lh_listcomp_fun_2_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_9) (((scale_vec2_lh__d1 _lh_grid_arg5_2_9) _lh_grid_LH_P4_0_1_4) _lh_grid_arg1_2_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_9) _lh_grid_LH_P4_1_1_4) _lh_grid_arg2_2_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_2_9) (((scale_vec2_lh__d1 _lh_grid_arg5_2_9) _lh_grid_LH_P4_2_1_4) _lh_grid_arg1_2_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_2_9) _lh_grid_LH_P4_3_1_4) _lh_grid_arg2_2_9))), (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_5_1)))))))) in
      (fun _lh_grid_arg1_3_0 _lh_grid_arg2_3_0 _lh_grid_arg4_3_0 _lh_grid_arg5_3_0 _lh_grid_arg6_3_0 _lh_listcomp_fun_3_0 -> 
        (((((((_lh_listcomp_fun_ls_h_1_4 _lh_grid_arg1_3_0) _lh_grid_arg2_3_0) _lh_grid_arg4_3_0) _lh_grid_arg5_3_0) _lh_grid_arg6_3_0) _lh_listcomp_fun_ls_t_2_2) _lh_listcomp_fun_3_0)))) in
    (let rec _lh_listcomp_fun_ls_h_1_5 = (let rec _lh_grid_LH_P4_3_1_5 = 5 in
      (let rec _lh_grid_LH_P4_2_1_5 = 6 in
        (let rec _lh_grid_LH_P4_1_1_5 = 0 in
          (let rec _lh_grid_LH_P4_0_1_5 = 4 in
            (fun _lh_grid_arg1_3_1 _lh_grid_arg2_3_1 _lh_grid_arg4_3_1 _lh_grid_arg5_3_1 _lh_grid_arg6_3_1 _lh_listcomp_fun_ls_t_5_2 _lh_listcomp_fun_3_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_1) (((scale_vec2_lh__d1 _lh_grid_arg5_3_1) _lh_grid_LH_P4_0_1_5) _lh_grid_arg1_3_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_1) _lh_grid_LH_P4_1_1_5) _lh_grid_arg2_3_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_1) (((scale_vec2_lh__d1 _lh_grid_arg5_3_1) _lh_grid_LH_P4_2_1_5) _lh_grid_arg1_3_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_1) _lh_grid_LH_P4_3_1_5) _lh_grid_arg2_3_1))), (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_5_2)))))))) in
      (fun _lh_grid_arg1_3_2 _lh_grid_arg2_3_2 _lh_grid_arg4_3_2 _lh_grid_arg5_3_2 _lh_grid_arg6_3_2 _lh_listcomp_fun_3_2 -> 
        (((((((_lh_listcomp_fun_ls_h_1_5 _lh_grid_arg1_3_2) _lh_grid_arg2_3_2) _lh_grid_arg4_3_2) _lh_grid_arg5_3_2) _lh_grid_arg6_3_2) _lh_listcomp_fun_ls_t_2_1) _lh_listcomp_fun_3_2)))) in
    (let rec _lh_listcomp_fun_ls_h_1_6 = (let rec _lh_grid_LH_P4_3_1_6 = 7 in
      (let rec _lh_grid_LH_P4_2_1_6 = 4 in
        (let rec _lh_grid_LH_P4_1_1_6 = 5 in
          (let rec _lh_grid_LH_P4_0_1_6 = 4 in
            (fun _lh_grid_arg1_3_3 _lh_grid_arg2_3_3 _lh_grid_arg4_3_3 _lh_grid_arg5_3_3 _lh_grid_arg6_3_3 _lh_listcomp_fun_ls_t_5_3 _lh_listcomp_fun_3_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_3) (((scale_vec2_lh__d1 _lh_grid_arg5_3_3) _lh_grid_LH_P4_0_1_6) _lh_grid_arg1_3_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_3) _lh_grid_LH_P4_1_1_6) _lh_grid_arg2_3_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_3) (((scale_vec2_lh__d1 _lh_grid_arg5_3_3) _lh_grid_LH_P4_2_1_6) _lh_grid_arg1_3_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_3) _lh_grid_LH_P4_3_1_6) _lh_grid_arg2_3_3))), (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_5_3)))))))) in
      (fun _lh_grid_arg1_3_4 _lh_grid_arg2_3_4 _lh_grid_arg4_3_4 _lh_grid_arg5_3_4 _lh_grid_arg6_3_4 _lh_listcomp_fun_3_4 -> 
        (((((((_lh_listcomp_fun_ls_h_1_6 _lh_grid_arg1_3_4) _lh_grid_arg2_3_4) _lh_grid_arg4_3_4) _lh_grid_arg5_3_4) _lh_grid_arg6_3_4) _lh_listcomp_fun_ls_t_2_0) _lh_listcomp_fun_3_4)))) in
    (let rec _lh_listcomp_fun_ls_h_1_7 = (let rec _lh_grid_LH_P4_3_1_7 = 5 in
      (let rec _lh_grid_LH_P4_2_1_7 = 4 in
        (let rec _lh_grid_LH_P4_1_1_7 = 0 in
          (let rec _lh_grid_LH_P4_0_1_7 = 2 in
            (fun _lh_grid_arg1_3_5 _lh_grid_arg2_3_5 _lh_grid_arg4_3_5 _lh_grid_arg5_3_5 _lh_grid_arg6_3_5 _lh_listcomp_fun_ls_t_5_4 _lh_listcomp_fun_3_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_5) (((scale_vec2_lh__d1 _lh_grid_arg5_3_5) _lh_grid_LH_P4_0_1_7) _lh_grid_arg1_3_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_5) _lh_grid_LH_P4_1_1_7) _lh_grid_arg2_3_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_5) (((scale_vec2_lh__d1 _lh_grid_arg5_3_5) _lh_grid_LH_P4_2_1_7) _lh_grid_arg1_3_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_5) _lh_grid_LH_P4_3_1_7) _lh_grid_arg2_3_5))), (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_5_4)))))))) in
      (fun _lh_grid_arg1_3_6 _lh_grid_arg2_3_6 _lh_grid_arg4_3_6 _lh_grid_arg5_3_6 _lh_grid_arg6_3_6 _lh_listcomp_fun_3_6 -> 
        (((((((_lh_listcomp_fun_ls_h_1_7 _lh_grid_arg1_3_6) _lh_grid_arg2_3_6) _lh_grid_arg4_3_6) _lh_grid_arg5_3_6) _lh_grid_arg6_3_6) _lh_listcomp_fun_ls_t_1_9) _lh_listcomp_fun_3_6)))) in
    (let rec _lh_listcomp_fun_ls_h_1_8 = (let rec _lh_grid_LH_P4_3_1_8 = 10 in
      (let rec _lh_grid_LH_P4_2_1_8 = 10 in
        (let rec _lh_grid_LH_P4_1_1_8 = 12 in
          (let rec _lh_grid_LH_P4_0_1_8 = 12 in
            (fun _lh_grid_arg1_3_7 _lh_grid_arg2_3_7 _lh_grid_arg4_3_7 _lh_grid_arg5_3_7 _lh_grid_arg6_3_7 _lh_listcomp_fun_ls_t_5_5 _lh_listcomp_fun_3_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_7) (((scale_vec2_lh__d1 _lh_grid_arg5_3_7) _lh_grid_LH_P4_0_1_8) _lh_grid_arg1_3_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_7) _lh_grid_LH_P4_1_1_8) _lh_grid_arg2_3_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_7) (((scale_vec2_lh__d1 _lh_grid_arg5_3_7) _lh_grid_LH_P4_2_1_8) _lh_grid_arg1_3_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_7) _lh_grid_LH_P4_3_1_8) _lh_grid_arg2_3_7))), (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_5_5)))))))) in
      (fun _lh_grid_arg1_3_8 _lh_grid_arg2_3_8 _lh_grid_arg4_3_8 _lh_grid_arg5_3_8 _lh_grid_arg6_3_8 _lh_listcomp_fun_3_8 -> 
        (((((((_lh_listcomp_fun_ls_h_1_8 _lh_grid_arg1_3_8) _lh_grid_arg2_3_8) _lh_grid_arg4_3_8) _lh_grid_arg5_3_8) _lh_grid_arg6_3_8) _lh_listcomp_fun_ls_t_1_8) _lh_listcomp_fun_3_8)))) in
    (let rec _lh_listcomp_fun_ls_h_1_9 = (let rec _lh_grid_LH_P4_3_1_9 = 12 in
      (let rec _lh_grid_LH_P4_2_1_9 = 12 in
        (let rec _lh_grid_LH_P4_1_1_9 = 12 in
          (let rec _lh_grid_LH_P4_0_1_9 = 8 in
            (fun _lh_grid_arg1_3_9 _lh_grid_arg2_3_9 _lh_grid_arg4_3_9 _lh_grid_arg5_3_9 _lh_grid_arg6_3_9 _lh_listcomp_fun_ls_t_5_6 _lh_listcomp_fun_3_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_9) (((scale_vec2_lh__d1 _lh_grid_arg5_3_9) _lh_grid_LH_P4_0_1_9) _lh_grid_arg1_3_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_9) _lh_grid_LH_P4_1_1_9) _lh_grid_arg2_3_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_3_9) (((scale_vec2_lh__d1 _lh_grid_arg5_3_9) _lh_grid_LH_P4_2_1_9) _lh_grid_arg1_3_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_3_9) _lh_grid_LH_P4_3_1_9) _lh_grid_arg2_3_9))), (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_5_6)))))))) in
      (fun _lh_grid_arg1_4_0 _lh_grid_arg2_4_0 _lh_grid_arg4_4_0 _lh_grid_arg5_4_0 _lh_grid_arg6_4_0 _lh_listcomp_fun_4_0 -> 
        (((((((_lh_listcomp_fun_ls_h_1_9 _lh_grid_arg1_4_0) _lh_grid_arg2_4_0) _lh_grid_arg4_4_0) _lh_grid_arg5_4_0) _lh_grid_arg6_4_0) _lh_listcomp_fun_ls_t_1_7) _lh_listcomp_fun_4_0)))) in
    (let rec _lh_listcomp_fun_ls_h_2_0 = (let rec _lh_grid_LH_P4_3_2_0 = 12 in
      (let rec _lh_grid_LH_P4_2_2_0 = 8 in
        (let rec _lh_grid_LH_P4_1_2_0 = 10 in
          (let rec _lh_grid_LH_P4_0_2_0 = 10 in
            (fun _lh_grid_arg1_4_1 _lh_grid_arg2_4_1 _lh_grid_arg4_4_1 _lh_grid_arg5_4_1 _lh_grid_arg6_4_1 _lh_listcomp_fun_ls_t_5_7 _lh_listcomp_fun_4_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_1) (((scale_vec2_lh__d1 _lh_grid_arg5_4_1) _lh_grid_LH_P4_0_2_0) _lh_grid_arg1_4_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_1) _lh_grid_LH_P4_1_2_0) _lh_grid_arg2_4_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_1) (((scale_vec2_lh__d1 _lh_grid_arg5_4_1) _lh_grid_LH_P4_2_2_0) _lh_grid_arg1_4_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_1) _lh_grid_LH_P4_3_2_0) _lh_grid_arg2_4_1))), (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_5_7)))))))) in
      (fun _lh_grid_arg1_4_2 _lh_grid_arg2_4_2 _lh_grid_arg4_4_2 _lh_grid_arg5_4_2 _lh_grid_arg6_4_2 _lh_listcomp_fun_4_2 -> 
        (((((((_lh_listcomp_fun_ls_h_2_0 _lh_grid_arg1_4_2) _lh_grid_arg2_4_2) _lh_grid_arg4_4_2) _lh_grid_arg5_4_2) _lh_grid_arg6_4_2) _lh_listcomp_fun_ls_t_1_6) _lh_listcomp_fun_4_2)))) in
    (let rec _lh_listcomp_fun_ls_h_2_1 = (let rec _lh_grid_LH_P4_3_2_1 = 13 in
      (let rec _lh_grid_LH_P4_2_2_1 = 9 in
        (let rec _lh_grid_LH_P4_1_2_1 = 15 in
          (let rec _lh_grid_LH_P4_0_2_1 = 11 in
            (fun _lh_grid_arg1_4_3 _lh_grid_arg2_4_3 _lh_grid_arg4_4_3 _lh_grid_arg5_4_3 _lh_grid_arg6_4_3 _lh_listcomp_fun_ls_t_5_8 _lh_listcomp_fun_4_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_3) (((scale_vec2_lh__d1 _lh_grid_arg5_4_3) _lh_grid_LH_P4_0_2_1) _lh_grid_arg1_4_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_3) _lh_grid_LH_P4_1_2_1) _lh_grid_arg2_4_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_3) (((scale_vec2_lh__d1 _lh_grid_arg5_4_3) _lh_grid_LH_P4_2_2_1) _lh_grid_arg1_4_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_3) _lh_grid_LH_P4_3_2_1) _lh_grid_arg2_4_3))), (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_5_8)))))))) in
      (fun _lh_grid_arg1_4_4 _lh_grid_arg2_4_4 _lh_grid_arg4_4_4 _lh_grid_arg5_4_4 _lh_grid_arg6_4_4 _lh_listcomp_fun_4_4 -> 
        (((((((_lh_listcomp_fun_ls_h_2_1 _lh_grid_arg1_4_4) _lh_grid_arg2_4_4) _lh_grid_arg4_4_4) _lh_grid_arg5_4_4) _lh_grid_arg6_4_4) _lh_listcomp_fun_ls_t_1_5) _lh_listcomp_fun_4_4)))) in
    (let rec _lh_listcomp_fun_ls_h_2_2 = (let rec _lh_grid_LH_P4_3_2_2 = 15 in
      (let rec _lh_grid_LH_P4_2_2_2 = 11 in
        (let rec _lh_grid_LH_P4_1_2_2 = 15 in
          (let rec _lh_grid_LH_P4_0_2_2 = 8 in
            (fun _lh_grid_arg1_4_5 _lh_grid_arg2_4_5 _lh_grid_arg4_4_5 _lh_grid_arg5_4_5 _lh_grid_arg6_4_5 _lh_listcomp_fun_ls_t_5_9 _lh_listcomp_fun_4_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_5) (((scale_vec2_lh__d1 _lh_grid_arg5_4_5) _lh_grid_LH_P4_0_2_2) _lh_grid_arg1_4_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_5) _lh_grid_LH_P4_1_2_2) _lh_grid_arg2_4_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_5) (((scale_vec2_lh__d1 _lh_grid_arg5_4_5) _lh_grid_LH_P4_2_2_2) _lh_grid_arg1_4_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_5) _lh_grid_LH_P4_3_2_2) _lh_grid_arg2_4_5))), (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_5_9)))))))) in
      (fun _lh_grid_arg1_4_6 _lh_grid_arg2_4_6 _lh_grid_arg4_4_6 _lh_grid_arg5_4_6 _lh_grid_arg6_4_6 _lh_listcomp_fun_4_6 -> 
        (((((((_lh_listcomp_fun_ls_h_2_2 _lh_grid_arg1_4_6) _lh_grid_arg2_4_6) _lh_grid_arg4_4_6) _lh_grid_arg5_4_6) _lh_grid_arg6_4_6) _lh_listcomp_fun_ls_t_1_4) _lh_listcomp_fun_4_6)))) in
    (let rec _lh_listcomp_fun_ls_h_2_3 = (let rec _lh_grid_LH_P4_3_2_3 = 15 in
      (let rec _lh_grid_LH_P4_2_2_3 = 8 in
        (let rec _lh_grid_LH_P4_1_2_3 = 13 in
          (let rec _lh_grid_LH_P4_0_2_3 = 9 in
            (fun _lh_grid_arg1_4_7 _lh_grid_arg2_4_7 _lh_grid_arg4_4_7 _lh_grid_arg5_4_7 _lh_grid_arg6_4_7 _lh_listcomp_fun_ls_t_6_0 _lh_listcomp_fun_4_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_7) (((scale_vec2_lh__d1 _lh_grid_arg5_4_7) _lh_grid_LH_P4_0_2_3) _lh_grid_arg1_4_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_7) _lh_grid_LH_P4_1_2_3) _lh_grid_arg2_4_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_7) (((scale_vec2_lh__d1 _lh_grid_arg5_4_7) _lh_grid_LH_P4_2_2_3) _lh_grid_arg1_4_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_7) _lh_grid_LH_P4_3_2_3) _lh_grid_arg2_4_7))), (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_6_0)))))))) in
      (fun _lh_grid_arg1_4_8 _lh_grid_arg2_4_8 _lh_grid_arg4_4_8 _lh_grid_arg5_4_8 _lh_grid_arg6_4_8 _lh_listcomp_fun_4_8 -> 
        (((((((_lh_listcomp_fun_ls_h_2_3 _lh_grid_arg1_4_8) _lh_grid_arg2_4_8) _lh_grid_arg4_4_8) _lh_grid_arg5_4_8) _lh_grid_arg6_4_8) _lh_listcomp_fun_ls_t_1_3) _lh_listcomp_fun_4_8)))) in
    (let rec _lh_listcomp_fun_ls_h_2_4 = (let rec _lh_grid_LH_P4_3_2_4 = 11 in
      (let rec _lh_grid_LH_P4_2_2_4 = 7 in
        (let rec _lh_grid_LH_P4_1_2_4 = 10 in
          (let rec _lh_grid_LH_P4_0_2_4 = 0 in
            (fun _lh_grid_arg1_4_9 _lh_grid_arg2_4_9 _lh_grid_arg4_4_9 _lh_grid_arg5_4_9 _lh_grid_arg6_4_9 _lh_listcomp_fun_ls_t_6_1 _lh_listcomp_fun_4_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_9) (((scale_vec2_lh__d1 _lh_grid_arg5_4_9) _lh_grid_LH_P4_0_2_4) _lh_grid_arg1_4_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_9) _lh_grid_LH_P4_1_2_4) _lh_grid_arg2_4_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_4_9) (((scale_vec2_lh__d1 _lh_grid_arg5_4_9) _lh_grid_LH_P4_2_2_4) _lh_grid_arg1_4_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_4_9) _lh_grid_LH_P4_3_2_4) _lh_grid_arg2_4_9))), (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_6_1)))))))) in
      (fun _lh_grid_arg1_5_0 _lh_grid_arg2_5_0 _lh_grid_arg4_5_0 _lh_grid_arg5_5_0 _lh_grid_arg6_5_0 _lh_listcomp_fun_5_0 -> 
        (((((((_lh_listcomp_fun_ls_h_2_4 _lh_grid_arg1_5_0) _lh_grid_arg2_5_0) _lh_grid_arg4_5_0) _lh_grid_arg5_5_0) _lh_grid_arg6_5_0) _lh_listcomp_fun_ls_t_1_2) _lh_listcomp_fun_5_0)))) in
    (let rec _lh_listcomp_fun_ls_h_2_5 = (let rec _lh_grid_LH_P4_3_2_5 = 15 in
      (let rec _lh_grid_LH_P4_2_2_5 = 7 in
        (let rec _lh_grid_LH_P4_1_2_5 = 16 in
          (let rec _lh_grid_LH_P4_0_2_5 = 6 in
            (fun _lh_grid_arg1_5_1 _lh_grid_arg2_5_1 _lh_grid_arg4_5_1 _lh_grid_arg5_5_1 _lh_grid_arg6_5_1 _lh_listcomp_fun_ls_t_6_2 _lh_listcomp_fun_5_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_1) (((scale_vec2_lh__d1 _lh_grid_arg5_5_1) _lh_grid_LH_P4_0_2_5) _lh_grid_arg1_5_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_1) _lh_grid_LH_P4_1_2_5) _lh_grid_arg2_5_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_1) (((scale_vec2_lh__d1 _lh_grid_arg5_5_1) _lh_grid_LH_P4_2_2_5) _lh_grid_arg1_5_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_1) _lh_grid_LH_P4_3_2_5) _lh_grid_arg2_5_1))), (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_6_2)))))))) in
      (fun _lh_grid_arg1_5_2 _lh_grid_arg2_5_2 _lh_grid_arg4_5_2 _lh_grid_arg5_5_2 _lh_grid_arg6_5_2 _lh_listcomp_fun_5_2 -> 
        (((((((_lh_listcomp_fun_ls_h_2_5 _lh_grid_arg1_5_2) _lh_grid_arg2_5_2) _lh_grid_arg4_5_2) _lh_grid_arg5_5_2) _lh_grid_arg6_5_2) _lh_listcomp_fun_ls_t_1_1) _lh_listcomp_fun_5_2)))) in
    (let rec _lh_listcomp_fun_ls_h_2_6 = (let rec _lh_grid_LH_P4_3_2_6 = 14 in
      (let rec _lh_grid_LH_P4_2_2_6 = 5 in
        (let rec _lh_grid_LH_P4_1_2_6 = 16 in
          (let rec _lh_grid_LH_P4_0_2_6 = 4 in
            (fun _lh_grid_arg1_5_3 _lh_grid_arg2_5_3 _lh_grid_arg4_5_3 _lh_grid_arg5_5_3 _lh_grid_arg6_5_3 _lh_listcomp_fun_ls_t_6_3 _lh_listcomp_fun_5_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_3) (((scale_vec2_lh__d1 _lh_grid_arg5_5_3) _lh_grid_LH_P4_0_2_6) _lh_grid_arg1_5_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_3) _lh_grid_LH_P4_1_2_6) _lh_grid_arg2_5_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_3) (((scale_vec2_lh__d1 _lh_grid_arg5_5_3) _lh_grid_LH_P4_2_2_6) _lh_grid_arg1_5_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_3) _lh_grid_LH_P4_3_2_6) _lh_grid_arg2_5_3))), (_lh_listcomp_fun_5_3 _lh_listcomp_fun_ls_t_6_3)))))))) in
      (fun _lh_grid_arg1_5_4 _lh_grid_arg2_5_4 _lh_grid_arg4_5_4 _lh_grid_arg5_5_4 _lh_grid_arg6_5_4 _lh_listcomp_fun_5_4 -> 
        (((((((_lh_listcomp_fun_ls_h_2_6 _lh_grid_arg1_5_4) _lh_grid_arg2_5_4) _lh_grid_arg4_5_4) _lh_grid_arg5_5_4) _lh_grid_arg6_5_4) _lh_listcomp_fun_ls_t_1_0) _lh_listcomp_fun_5_4)))) in
    (let rec _lh_listcomp_fun_ls_h_2_7 = (let rec _lh_grid_LH_P4_3_2_7 = 13 in
      (let rec _lh_grid_LH_P4_2_2_7 = 3 in
        (let rec _lh_grid_LH_P4_1_2_7 = 16 in
          (let rec _lh_grid_LH_P4_0_2_7 = 2 in
            (fun _lh_grid_arg1_5_5 _lh_grid_arg2_5_5 _lh_grid_arg4_5_5 _lh_grid_arg5_5_5 _lh_grid_arg6_5_5 _lh_listcomp_fun_ls_t_6_4 _lh_listcomp_fun_5_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_5) (((scale_vec2_lh__d1 _lh_grid_arg5_5_5) _lh_grid_LH_P4_0_2_7) _lh_grid_arg1_5_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_5) _lh_grid_LH_P4_1_2_7) _lh_grid_arg2_5_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_5) (((scale_vec2_lh__d1 _lh_grid_arg5_5_5) _lh_grid_LH_P4_2_2_7) _lh_grid_arg1_5_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_5) _lh_grid_LH_P4_3_2_7) _lh_grid_arg2_5_5))), (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_6_4)))))))) in
      (fun _lh_grid_arg1_5_6 _lh_grid_arg2_5_6 _lh_grid_arg4_5_6 _lh_grid_arg5_5_6 _lh_grid_arg6_5_6 _lh_listcomp_fun_5_6 -> 
        (((((((_lh_listcomp_fun_ls_h_2_7 _lh_grid_arg1_5_6) _lh_grid_arg2_5_6) _lh_grid_arg4_5_6) _lh_grid_arg5_5_6) _lh_grid_arg6_5_6) _lh_listcomp_fun_ls_t_9) _lh_listcomp_fun_5_6)))) in
    (let rec _lh_listcomp_fun_ls_h_2_8 = (let rec _lh_grid_LH_P4_3_2_8 = 16 in
      (let rec _lh_grid_LH_P4_2_2_8 = 8 in
        (let rec _lh_grid_LH_P4_1_2_8 = 15 in
          (let rec _lh_grid_LH_P4_0_2_8 = 7 in
            (fun _lh_grid_arg1_5_7 _lh_grid_arg2_5_7 _lh_grid_arg4_5_7 _lh_grid_arg5_5_7 _lh_grid_arg6_5_7 _lh_listcomp_fun_ls_t_6_5 _lh_listcomp_fun_5_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_7) (((scale_vec2_lh__d1 _lh_grid_arg5_5_7) _lh_grid_LH_P4_0_2_8) _lh_grid_arg1_5_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_7) _lh_grid_LH_P4_1_2_8) _lh_grid_arg2_5_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_7) (((scale_vec2_lh__d1 _lh_grid_arg5_5_7) _lh_grid_LH_P4_2_2_8) _lh_grid_arg1_5_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_7) _lh_grid_LH_P4_3_2_8) _lh_grid_arg2_5_7))), (_lh_listcomp_fun_5_7 _lh_listcomp_fun_ls_t_6_5)))))))) in
      (fun _lh_grid_arg1_5_8 _lh_grid_arg2_5_8 _lh_grid_arg4_5_8 _lh_grid_arg5_5_8 _lh_grid_arg6_5_8 _lh_listcomp_fun_5_8 -> 
        (((((((_lh_listcomp_fun_ls_h_2_8 _lh_grid_arg1_5_8) _lh_grid_arg2_5_8) _lh_grid_arg4_5_8) _lh_grid_arg5_5_8) _lh_grid_arg6_5_8) _lh_listcomp_fun_ls_t_8) _lh_listcomp_fun_5_8)))) in
    (let rec _lh_listcomp_fun_ls_h_2_9 = (let rec _lh_grid_LH_P4_3_2_9 = 15 in
      (let rec _lh_grid_LH_P4_2_2_9 = 7 in
        (let rec _lh_grid_LH_P4_1_2_9 = 14 in
          (let rec _lh_grid_LH_P4_0_2_9 = 5 in
            (fun _lh_grid_arg1_5_9 _lh_grid_arg2_5_9 _lh_grid_arg4_5_9 _lh_grid_arg5_5_9 _lh_grid_arg6_5_9 _lh_listcomp_fun_ls_t_6_6 _lh_listcomp_fun_5_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_9) (((scale_vec2_lh__d1 _lh_grid_arg5_5_9) _lh_grid_LH_P4_0_2_9) _lh_grid_arg1_5_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_9) _lh_grid_LH_P4_1_2_9) _lh_grid_arg2_5_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_5_9) (((scale_vec2_lh__d1 _lh_grid_arg5_5_9) _lh_grid_LH_P4_2_2_9) _lh_grid_arg1_5_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_5_9) _lh_grid_LH_P4_3_2_9) _lh_grid_arg2_5_9))), (_lh_listcomp_fun_5_9 _lh_listcomp_fun_ls_t_6_6)))))))) in
      (fun _lh_grid_arg1_6_0 _lh_grid_arg2_6_0 _lh_grid_arg4_6_0 _lh_grid_arg5_6_0 _lh_grid_arg6_6_0 _lh_listcomp_fun_6_0 -> 
        (((((((_lh_listcomp_fun_ls_h_2_9 _lh_grid_arg1_6_0) _lh_grid_arg2_6_0) _lh_grid_arg4_6_0) _lh_grid_arg5_6_0) _lh_grid_arg6_6_0) _lh_listcomp_fun_ls_t_7) _lh_listcomp_fun_6_0)))) in
    (let rec _lh_listcomp_fun_ls_h_3_0 = (let rec _lh_grid_LH_P4_3_3_0 = 14 in
      (let rec _lh_grid_LH_P4_2_3_0 = 5 in
        (let rec _lh_grid_LH_P4_1_3_0 = 13 in
          (let rec _lh_grid_LH_P4_0_3_0 = 3 in
            (fun _lh_grid_arg1_6_1 _lh_grid_arg2_6_1 _lh_grid_arg4_6_1 _lh_grid_arg5_6_1 _lh_grid_arg6_6_1 _lh_listcomp_fun_ls_t_6_7 _lh_listcomp_fun_6_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_1) (((scale_vec2_lh__d1 _lh_grid_arg5_6_1) _lh_grid_LH_P4_0_3_0) _lh_grid_arg1_6_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_1) _lh_grid_LH_P4_1_3_0) _lh_grid_arg2_6_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_1) (((scale_vec2_lh__d1 _lh_grid_arg5_6_1) _lh_grid_LH_P4_2_3_0) _lh_grid_arg1_6_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_1) _lh_grid_LH_P4_3_3_0) _lh_grid_arg2_6_1))), (_lh_listcomp_fun_6_1 _lh_listcomp_fun_ls_t_6_7)))))))) in
      (fun _lh_grid_arg1_6_2 _lh_grid_arg2_6_2 _lh_grid_arg4_6_2 _lh_grid_arg5_6_2 _lh_grid_arg6_6_2 _lh_listcomp_fun_6_2 -> 
        (((((((_lh_listcomp_fun_ls_h_3_0 _lh_grid_arg1_6_2) _lh_grid_arg2_6_2) _lh_grid_arg4_6_2) _lh_grid_arg5_6_2) _lh_grid_arg6_6_2) _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_6_2)))) in
    (let rec _lh_listcomp_fun_ls_h_3_1 = (let rec _lh_grid_LH_P4_3_3_1 = 13 in
      (let rec _lh_grid_LH_P4_2_3_1 = 3 in
        (let rec _lh_grid_LH_P4_1_3_1 = 12 in
          (let rec _lh_grid_LH_P4_0_3_1 = 0 in
            (fun _lh_grid_arg1_6_3 _lh_grid_arg2_6_3 _lh_grid_arg4_6_3 _lh_grid_arg5_6_3 _lh_grid_arg6_6_3 _lh_listcomp_fun_ls_t_6_8 _lh_listcomp_fun_6_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_3) (((scale_vec2_lh__d1 _lh_grid_arg5_6_3) _lh_grid_LH_P4_0_3_1) _lh_grid_arg1_6_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_3) _lh_grid_LH_P4_1_3_1) _lh_grid_arg2_6_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_3) (((scale_vec2_lh__d1 _lh_grid_arg5_6_3) _lh_grid_LH_P4_2_3_1) _lh_grid_arg1_6_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_3) _lh_grid_LH_P4_3_3_1) _lh_grid_arg2_6_3))), (_lh_listcomp_fun_6_3 _lh_listcomp_fun_ls_t_6_8)))))))) in
      (fun _lh_grid_arg1_6_4 _lh_grid_arg2_6_4 _lh_grid_arg4_6_4 _lh_grid_arg5_6_4 _lh_grid_arg6_6_4 _lh_listcomp_fun_6_4 -> 
        (((((((_lh_listcomp_fun_ls_h_3_1 _lh_grid_arg1_6_4) _lh_grid_arg2_6_4) _lh_grid_arg4_6_4) _lh_grid_arg5_6_4) _lh_grid_arg6_6_4) _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_6_4)))) in
    (let rec _lh_listcomp_fun_ls_h_3_2 = (let rec _lh_grid_LH_P4_3_3_2 = 16 in
      (let rec _lh_grid_LH_P4_2_3_2 = 16 in
        (let rec _lh_grid_LH_P4_1_3_2 = 10 in
          (let rec _lh_grid_LH_P4_0_3_2 = 12 in
            (fun _lh_grid_arg1_6_5 _lh_grid_arg2_6_5 _lh_grid_arg4_6_5 _lh_grid_arg5_6_5 _lh_grid_arg6_6_5 _lh_listcomp_fun_ls_t_6_9 _lh_listcomp_fun_6_5 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_5) (((scale_vec2_lh__d1 _lh_grid_arg5_6_5) _lh_grid_LH_P4_0_3_2) _lh_grid_arg1_6_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_5) _lh_grid_LH_P4_1_3_2) _lh_grid_arg2_6_5))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_5) (((scale_vec2_lh__d1 _lh_grid_arg5_6_5) _lh_grid_LH_P4_2_3_2) _lh_grid_arg1_6_5))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_5) _lh_grid_LH_P4_3_3_2) _lh_grid_arg2_6_5))), (_lh_listcomp_fun_6_5 _lh_listcomp_fun_ls_t_6_9)))))))) in
      (fun _lh_grid_arg1_6_6 _lh_grid_arg2_6_6 _lh_grid_arg4_6_6 _lh_grid_arg5_6_6 _lh_grid_arg6_6_6 _lh_listcomp_fun_6_6 -> 
        (((((((_lh_listcomp_fun_ls_h_3_2 _lh_grid_arg1_6_6) _lh_grid_arg2_6_6) _lh_grid_arg4_6_6) _lh_grid_arg5_6_6) _lh_grid_arg6_6_6) _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_6_6)))) in
    (let rec _lh_listcomp_fun_ls_h_3_3 = (let rec _lh_grid_LH_P4_3_3_3 = 10 in
      (let rec _lh_grid_LH_P4_2_3_3 = 12 in
        (let rec _lh_grid_LH_P4_1_3_3 = 8 in
          (let rec _lh_grid_LH_P4_0_3_3 = 8 in
            (fun _lh_grid_arg1_6_7 _lh_grid_arg2_6_7 _lh_grid_arg4_6_7 _lh_grid_arg5_6_7 _lh_grid_arg6_6_7 _lh_listcomp_fun_ls_t_7_0 _lh_listcomp_fun_6_7 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_7) (((scale_vec2_lh__d1 _lh_grid_arg5_6_7) _lh_grid_LH_P4_0_3_3) _lh_grid_arg1_6_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_7) _lh_grid_LH_P4_1_3_3) _lh_grid_arg2_6_7))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_7) (((scale_vec2_lh__d1 _lh_grid_arg5_6_7) _lh_grid_LH_P4_2_3_3) _lh_grid_arg1_6_7))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_7) _lh_grid_LH_P4_3_3_3) _lh_grid_arg2_6_7))), (_lh_listcomp_fun_6_7 _lh_listcomp_fun_ls_t_7_0)))))))) in
      (fun _lh_grid_arg1_6_8 _lh_grid_arg2_6_8 _lh_grid_arg4_6_8 _lh_grid_arg5_6_8 _lh_grid_arg6_6_8 _lh_listcomp_fun_6_8 -> 
        (((((((_lh_listcomp_fun_ls_h_3_3 _lh_grid_arg1_6_8) _lh_grid_arg2_6_8) _lh_grid_arg4_6_8) _lh_grid_arg5_6_8) _lh_grid_arg6_6_8) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_6_8)))) in
    (let rec _lh_listcomp_fun_ls_h_3_4 = (let rec _lh_grid_LH_P4_3_3_4 = 8 in
      (let rec _lh_grid_LH_P4_2_3_4 = 8 in
        (let rec _lh_grid_LH_P4_1_3_4 = 7 in
          (let rec _lh_grid_LH_P4_0_3_4 = 6 in
            (fun _lh_grid_arg1_6_9 _lh_grid_arg2_6_9 _lh_grid_arg4_6_9 _lh_grid_arg5_6_9 _lh_grid_arg6_6_9 _lh_listcomp_fun_ls_t_7_1 _lh_listcomp_fun_6_9 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_9) (((scale_vec2_lh__d1 _lh_grid_arg5_6_9) _lh_grid_LH_P4_0_3_4) _lh_grid_arg1_6_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_9) _lh_grid_LH_P4_1_3_4) _lh_grid_arg2_6_9))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_6_9) (((scale_vec2_lh__d1 _lh_grid_arg5_6_9) _lh_grid_LH_P4_2_3_4) _lh_grid_arg1_6_9))) (((scale_vec2_lh__d1 _lh_grid_arg6_6_9) _lh_grid_LH_P4_3_3_4) _lh_grid_arg2_6_9))), (_lh_listcomp_fun_6_9 _lh_listcomp_fun_ls_t_7_1)))))))) in
      (fun _lh_grid_arg1_7_0 _lh_grid_arg2_7_0 _lh_grid_arg4_7_0 _lh_grid_arg5_7_0 _lh_grid_arg6_7_0 _lh_listcomp_fun_7_0 -> 
        (((((((_lh_listcomp_fun_ls_h_3_4 _lh_grid_arg1_7_0) _lh_grid_arg2_7_0) _lh_grid_arg4_7_0) _lh_grid_arg5_7_0) _lh_grid_arg6_7_0) _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_7_0)))) in
    (let rec _lh_listcomp_fun_ls_h_3_5 = (let rec _lh_grid_LH_P4_3_3_5 = 7 in
      (let rec _lh_grid_LH_P4_2_3_5 = 6 in
        (let rec _lh_grid_LH_P4_1_3_5 = 7 in
          (let rec _lh_grid_LH_P4_0_3_5 = 4 in
            (fun _lh_grid_arg1_7_1 _lh_grid_arg2_7_1 _lh_grid_arg4_7_1 _lh_grid_arg5_7_1 _lh_grid_arg6_7_1 _lh_listcomp_fun_ls_t_7_2 _lh_listcomp_fun_7_1 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7_1) (((scale_vec2_lh__d1 _lh_grid_arg5_7_1) _lh_grid_LH_P4_0_3_5) _lh_grid_arg1_7_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_7_1) _lh_grid_LH_P4_1_3_5) _lh_grid_arg2_7_1))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7_1) (((scale_vec2_lh__d1 _lh_grid_arg5_7_1) _lh_grid_LH_P4_2_3_5) _lh_grid_arg1_7_1))) (((scale_vec2_lh__d1 _lh_grid_arg6_7_1) _lh_grid_LH_P4_3_3_5) _lh_grid_arg2_7_1))), (_lh_listcomp_fun_7_1 _lh_listcomp_fun_ls_t_7_2)))))))) in
      (fun _lh_grid_arg1_7_2 _lh_grid_arg2_7_2 _lh_grid_arg4_7_2 _lh_grid_arg5_7_2 _lh_grid_arg6_7_2 _lh_listcomp_fun_7_2 -> 
        (((((((_lh_listcomp_fun_ls_h_3_5 _lh_grid_arg1_7_2) _lh_grid_arg2_7_2) _lh_grid_arg4_7_2) _lh_grid_arg5_7_2) _lh_grid_arg6_7_2) _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_7_2)))) in
    (let rec _lh_listcomp_fun_ls_h_3_6 = (let rec _lh_grid_LH_P4_3_3_6 = 7 in
      (let rec _lh_grid_LH_P4_2_3_6 = 4 in
        (let rec _lh_grid_LH_P4_1_3_6 = 8 in
          (let rec _lh_grid_LH_P4_0_3_6 = 0 in
            (fun _lh_grid_arg1_7_3 _lh_grid_arg2_7_3 _lh_grid_arg4_7_3 _lh_grid_arg5_7_3 _lh_grid_arg6_7_3 _lh_listcomp_fun_ls_t_7_3 _lh_listcomp_fun_7_3 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7_3) (((scale_vec2_lh__d1 _lh_grid_arg5_7_3) _lh_grid_LH_P4_0_3_6) _lh_grid_arg1_7_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_7_3) _lh_grid_LH_P4_1_3_6) _lh_grid_arg2_7_3))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7_3) (((scale_vec2_lh__d1 _lh_grid_arg5_7_3) _lh_grid_LH_P4_2_3_6) _lh_grid_arg1_7_3))) (((scale_vec2_lh__d1 _lh_grid_arg6_7_3) _lh_grid_LH_P4_3_3_6) _lh_grid_arg2_7_3))), (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_7_3)))))))) in
      (fun _lh_grid_arg1_7_4 _lh_grid_arg2_7_4 _lh_grid_arg4_7_4 _lh_grid_arg5_7_4 _lh_grid_arg6_7_4 _lh_listcomp_fun_7_4 -> 
        (((((((_lh_listcomp_fun_ls_h_3_6 _lh_grid_arg1_7_4) _lh_grid_arg2_7_4) _lh_grid_arg4_7_4) _lh_grid_arg5_7_4) _lh_grid_arg6_7_4) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_7_4))));;
let rec q_lh__d1 _lh_q_arg1_0 =
  ((tile_to_grid_lh__d1 q_tile_lh__d1) _lh_q_arg1_0);;
let rec r_tile_lh__d1 =
  (let rec _lh_listcomp_fun_ls_t_7_4 = (let rec _lh_listcomp_fun_ls_t_7_5 = (let rec _lh_listcomp_fun_ls_t_7_6 = (let rec _lh_listcomp_fun_ls_t_7_7 = (let rec _lh_listcomp_fun_ls_t_7_8 = (let rec _lh_listcomp_fun_ls_t_7_9 = (let rec _lh_listcomp_fun_ls_t_8_0 = (let rec _lh_listcomp_fun_ls_t_8_1 = (let rec _lh_listcomp_fun_ls_t_8_2 = (let rec _lh_listcomp_fun_ls_t_8_3 = (let rec _lh_listcomp_fun_ls_t_8_4 = (let rec _lh_listcomp_fun_ls_t_8_5 = (let rec _lh_listcomp_fun_ls_t_8_6 = (let rec _lh_listcomp_fun_ls_t_8_7 = (let rec _lh_listcomp_fun_ls_t_8_8 = (let rec _lh_listcomp_fun_ls_t_8_9 = (let rec _lh_listcomp_fun_ls_t_9_0 = (let rec _lh_listcomp_fun_ls_t_9_1 = (let rec _lh_listcomp_fun_ls_t_9_2 = (let rec _lh_listcomp_fun_ls_t_9_3 = (let rec _lh_listcomp_fun_ls_t_9_4 = (let rec _lh_listcomp_fun_ls_t_9_5 = (let rec _lh_listcomp_fun_ls_t_9_6 = (let rec _lh_listcomp_fun_ls_t_9_7 = (let rec _lh_listcomp_fun_ls_t_9_8 = (fun _lh_grid_arg1_7_5 _lh_grid_arg2_7_5 _lh_grid_arg4_7_5 _lh_grid_arg5_7_5 _lh_grid_arg6_7_5 _lh_listcomp_fun_7_5 -> 
    (`LH_N)) in
    (let rec _lh_listcomp_fun_ls_h_3_7 = (let rec _lh_grid_LH_P4_3_3_7 = 14 in
      (let rec _lh_grid_LH_P4_2_3_7 = 16 in
        (let rec _lh_grid_LH_P4_1_3_7 = 15 in
          (let rec _lh_grid_LH_P4_0_3_7 = 15 in
            (fun _lh_grid_arg1_7_6 _lh_grid_arg2_7_6 _lh_grid_arg4_7_6 _lh_grid_arg5_7_6 _lh_grid_arg6_7_6 _lh_listcomp_fun_ls_t_9_9 _lh_listcomp_fun_7_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7_6) (((scale_vec2_lh__d1 _lh_grid_arg5_7_6) _lh_grid_LH_P4_0_3_7) _lh_grid_arg1_7_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_7_6) _lh_grid_LH_P4_1_3_7) _lh_grid_arg2_7_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7_6) (((scale_vec2_lh__d1 _lh_grid_arg5_7_6) _lh_grid_LH_P4_2_3_7) _lh_grid_arg1_7_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_7_6) _lh_grid_LH_P4_3_3_7) _lh_grid_arg2_7_6))), (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_9_9)))))))) in
      (fun _lh_grid_arg1_7_7 _lh_grid_arg2_7_7 _lh_grid_arg4_7_7 _lh_grid_arg5_7_7 _lh_grid_arg6_7_7 _lh_listcomp_fun_7_7 -> 
        (((((((_lh_listcomp_fun_ls_h_3_7 _lh_grid_arg1_7_7) _lh_grid_arg2_7_7) _lh_grid_arg4_7_7) _lh_grid_arg5_7_7) _lh_grid_arg6_7_7) _lh_listcomp_fun_ls_t_9_8) _lh_listcomp_fun_7_7)))) in
    (let rec _lh_listcomp_fun_ls_h_3_8 = (let rec _lh_grid_LH_P4_3_3_8 = 12 in
      (let rec _lh_grid_LH_P4_2_3_8 = 16 in
        (let rec _lh_grid_LH_P4_1_3_8 = 14 in
          (let rec _lh_grid_LH_P4_0_3_8 = 14 in
            (fun _lh_grid_arg1_7_8 _lh_grid_arg2_7_8 _lh_grid_arg4_7_8 _lh_grid_arg5_7_8 _lh_grid_arg6_7_8 _lh_listcomp_fun_ls_t_1_0_0 _lh_listcomp_fun_7_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7_8) (((scale_vec2_lh__d1 _lh_grid_arg5_7_8) _lh_grid_LH_P4_0_3_8) _lh_grid_arg1_7_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_7_8) _lh_grid_LH_P4_1_3_8) _lh_grid_arg2_7_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_7_8) (((scale_vec2_lh__d1 _lh_grid_arg5_7_8) _lh_grid_LH_P4_2_3_8) _lh_grid_arg1_7_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_7_8) _lh_grid_LH_P4_3_3_8) _lh_grid_arg2_7_8))), (_lh_listcomp_fun_7_8 _lh_listcomp_fun_ls_t_1_0_0)))))))) in
      (fun _lh_grid_arg1_7_9 _lh_grid_arg2_7_9 _lh_grid_arg4_7_9 _lh_grid_arg5_7_9 _lh_grid_arg6_7_9 _lh_listcomp_fun_7_9 -> 
        (((((((_lh_listcomp_fun_ls_h_3_8 _lh_grid_arg1_7_9) _lh_grid_arg2_7_9) _lh_grid_arg4_7_9) _lh_grid_arg5_7_9) _lh_grid_arg6_7_9) _lh_listcomp_fun_ls_t_9_7) _lh_listcomp_fun_7_9)))) in
    (let rec _lh_listcomp_fun_ls_h_3_9 = (let rec _lh_grid_LH_P4_3_3_9 = 10 in
      (let rec _lh_grid_LH_P4_2_3_9 = 16 in
        (let rec _lh_grid_LH_P4_1_3_9 = 13 in
          (let rec _lh_grid_LH_P4_0_3_9 = 13 in
            (fun _lh_grid_arg1_8_0 _lh_grid_arg2_8_0 _lh_grid_arg4_8_0 _lh_grid_arg5_8_0 _lh_grid_arg6_8_0 _lh_listcomp_fun_ls_t_1_0_1 _lh_listcomp_fun_8_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_0) (((scale_vec2_lh__d1 _lh_grid_arg5_8_0) _lh_grid_LH_P4_0_3_9) _lh_grid_arg1_8_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_0) _lh_grid_LH_P4_1_3_9) _lh_grid_arg2_8_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_0) (((scale_vec2_lh__d1 _lh_grid_arg5_8_0) _lh_grid_LH_P4_2_3_9) _lh_grid_arg1_8_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_0) _lh_grid_LH_P4_3_3_9) _lh_grid_arg2_8_0))), (_lh_listcomp_fun_8_0 _lh_listcomp_fun_ls_t_1_0_1)))))))) in
      (fun _lh_grid_arg1_8_1 _lh_grid_arg2_8_1 _lh_grid_arg4_8_1 _lh_grid_arg5_8_1 _lh_grid_arg6_8_1 _lh_listcomp_fun_8_1 -> 
        (((((((_lh_listcomp_fun_ls_h_3_9 _lh_grid_arg1_8_1) _lh_grid_arg2_8_1) _lh_grid_arg4_8_1) _lh_grid_arg5_8_1) _lh_grid_arg6_8_1) _lh_listcomp_fun_ls_t_9_6) _lh_listcomp_fun_8_1)))) in
    (let rec _lh_listcomp_fun_ls_h_4_0 = (let rec _lh_grid_LH_P4_3_4_0 = 8 in
      (let rec _lh_grid_LH_P4_2_4_0 = 16 in
        (let rec _lh_grid_LH_P4_1_4_0 = 12 in
          (let rec _lh_grid_LH_P4_0_4_0 = 12 in
            (fun _lh_grid_arg1_8_2 _lh_grid_arg2_8_2 _lh_grid_arg4_8_2 _lh_grid_arg5_8_2 _lh_grid_arg6_8_2 _lh_listcomp_fun_ls_t_1_0_2 _lh_listcomp_fun_8_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_2) (((scale_vec2_lh__d1 _lh_grid_arg5_8_2) _lh_grid_LH_P4_0_4_0) _lh_grid_arg1_8_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_2) _lh_grid_LH_P4_1_4_0) _lh_grid_arg2_8_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_2) (((scale_vec2_lh__d1 _lh_grid_arg5_8_2) _lh_grid_LH_P4_2_4_0) _lh_grid_arg1_8_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_2) _lh_grid_LH_P4_3_4_0) _lh_grid_arg2_8_2))), (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_1_0_2)))))))) in
      (fun _lh_grid_arg1_8_3 _lh_grid_arg2_8_3 _lh_grid_arg4_8_3 _lh_grid_arg5_8_3 _lh_grid_arg6_8_3 _lh_listcomp_fun_8_3 -> 
        (((((((_lh_listcomp_fun_ls_h_4_0 _lh_grid_arg1_8_3) _lh_grid_arg2_8_3) _lh_grid_arg4_8_3) _lh_grid_arg5_8_3) _lh_grid_arg6_8_3) _lh_listcomp_fun_ls_t_9_5) _lh_listcomp_fun_8_3)))) in
    (let rec _lh_listcomp_fun_ls_h_4_1 = (let rec _lh_grid_LH_P4_3_4_1 = 12 in
      (let rec _lh_grid_LH_P4_2_4_1 = 12 in
        (let rec _lh_grid_LH_P4_1_4_1 = 16 in
          (let rec _lh_grid_LH_P4_0_4_1 = 11 in
            (fun _lh_grid_arg1_8_4 _lh_grid_arg2_8_4 _lh_grid_arg4_8_4 _lh_grid_arg5_8_4 _lh_grid_arg6_8_4 _lh_listcomp_fun_ls_t_1_0_3 _lh_listcomp_fun_8_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_4) (((scale_vec2_lh__d1 _lh_grid_arg5_8_4) _lh_grid_LH_P4_0_4_1) _lh_grid_arg1_8_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_4) _lh_grid_LH_P4_1_4_1) _lh_grid_arg2_8_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_4) (((scale_vec2_lh__d1 _lh_grid_arg5_8_4) _lh_grid_LH_P4_2_4_1) _lh_grid_arg1_8_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_4) _lh_grid_LH_P4_3_4_1) _lh_grid_arg2_8_4))), (_lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_1_0_3)))))))) in
      (fun _lh_grid_arg1_8_5 _lh_grid_arg2_8_5 _lh_grid_arg4_8_5 _lh_grid_arg5_8_5 _lh_grid_arg6_8_5 _lh_listcomp_fun_8_5 -> 
        (((((((_lh_listcomp_fun_ls_h_4_1 _lh_grid_arg1_8_5) _lh_grid_arg2_8_5) _lh_grid_arg4_8_5) _lh_grid_arg5_8_5) _lh_grid_arg6_8_5) _lh_listcomp_fun_ls_t_9_4) _lh_listcomp_fun_8_5)))) in
    (let rec _lh_listcomp_fun_ls_h_4_2 = (let rec _lh_grid_LH_P4_3_4_2 = 0 in
      (let rec _lh_grid_LH_P4_2_4_2 = 16 in
        (let rec _lh_grid_LH_P4_1_4_2 = 3 in
          (let rec _lh_grid_LH_P4_0_4_2 = 12 in
            (fun _lh_grid_arg1_8_6 _lh_grid_arg2_8_6 _lh_grid_arg4_8_6 _lh_grid_arg5_8_6 _lh_grid_arg6_8_6 _lh_listcomp_fun_ls_t_1_0_4 _lh_listcomp_fun_8_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_6) (((scale_vec2_lh__d1 _lh_grid_arg5_8_6) _lh_grid_LH_P4_0_4_2) _lh_grid_arg1_8_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_6) _lh_grid_LH_P4_1_4_2) _lh_grid_arg2_8_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_6) (((scale_vec2_lh__d1 _lh_grid_arg5_8_6) _lh_grid_LH_P4_2_4_2) _lh_grid_arg1_8_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_6) _lh_grid_LH_P4_3_4_2) _lh_grid_arg2_8_6))), (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_1_0_4)))))))) in
      (fun _lh_grid_arg1_8_7 _lh_grid_arg2_8_7 _lh_grid_arg4_8_7 _lh_grid_arg5_8_7 _lh_grid_arg6_8_7 _lh_listcomp_fun_8_7 -> 
        (((((((_lh_listcomp_fun_ls_h_4_2 _lh_grid_arg1_8_7) _lh_grid_arg2_8_7) _lh_grid_arg4_8_7) _lh_grid_arg5_8_7) _lh_grid_arg6_8_7) _lh_listcomp_fun_ls_t_9_3) _lh_listcomp_fun_8_7)))) in
    (let rec _lh_listcomp_fun_ls_h_4_3 = (let rec _lh_grid_LH_P4_3_4_3 = 3 in
      (let rec _lh_grid_LH_P4_2_4_3 = 12 in
        (let rec _lh_grid_LH_P4_1_4_3 = 5 in
          (let rec _lh_grid_LH_P4_0_4_3 = 5 in
            (fun _lh_grid_arg1_8_8 _lh_grid_arg2_8_8 _lh_grid_arg4_8_8 _lh_grid_arg5_8_8 _lh_grid_arg6_8_8 _lh_listcomp_fun_ls_t_1_0_5 _lh_listcomp_fun_8_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_8) (((scale_vec2_lh__d1 _lh_grid_arg5_8_8) _lh_grid_LH_P4_0_4_3) _lh_grid_arg1_8_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_8) _lh_grid_LH_P4_1_4_3) _lh_grid_arg2_8_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_8_8) (((scale_vec2_lh__d1 _lh_grid_arg5_8_8) _lh_grid_LH_P4_2_4_3) _lh_grid_arg1_8_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_8_8) _lh_grid_LH_P4_3_4_3) _lh_grid_arg2_8_8))), (_lh_listcomp_fun_8_8 _lh_listcomp_fun_ls_t_1_0_5)))))))) in
      (fun _lh_grid_arg1_8_9 _lh_grid_arg2_8_9 _lh_grid_arg4_8_9 _lh_grid_arg5_8_9 _lh_grid_arg6_8_9 _lh_listcomp_fun_8_9 -> 
        (((((((_lh_listcomp_fun_ls_h_4_3 _lh_grid_arg1_8_9) _lh_grid_arg2_8_9) _lh_grid_arg4_8_9) _lh_grid_arg5_8_9) _lh_grid_arg6_8_9) _lh_listcomp_fun_ls_t_9_2) _lh_listcomp_fun_8_9)))) in
    (let rec _lh_listcomp_fun_ls_h_4_4 = (let rec _lh_grid_LH_P4_3_4_4 = 0 in
      (let rec _lh_grid_LH_P4_2_4_4 = 12 in
        (let rec _lh_grid_LH_P4_1_4_4 = 2 in
          (let rec _lh_grid_LH_P4_0_4_4 = 8 in
            (fun _lh_grid_arg1_9_0 _lh_grid_arg2_9_0 _lh_grid_arg4_9_0 _lh_grid_arg5_9_0 _lh_grid_arg6_9_0 _lh_listcomp_fun_ls_t_1_0_6 _lh_listcomp_fun_9_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_0) (((scale_vec2_lh__d1 _lh_grid_arg5_9_0) _lh_grid_LH_P4_0_4_4) _lh_grid_arg1_9_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_0) _lh_grid_LH_P4_1_4_4) _lh_grid_arg2_9_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_0) (((scale_vec2_lh__d1 _lh_grid_arg5_9_0) _lh_grid_LH_P4_2_4_4) _lh_grid_arg1_9_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_0) _lh_grid_LH_P4_3_4_4) _lh_grid_arg2_9_0))), (_lh_listcomp_fun_9_0 _lh_listcomp_fun_ls_t_1_0_6)))))))) in
      (fun _lh_grid_arg1_9_1 _lh_grid_arg2_9_1 _lh_grid_arg4_9_1 _lh_grid_arg5_9_1 _lh_grid_arg6_9_1 _lh_listcomp_fun_9_1 -> 
        (((((((_lh_listcomp_fun_ls_h_4_4 _lh_grid_arg1_9_1) _lh_grid_arg2_9_1) _lh_grid_arg4_9_1) _lh_grid_arg5_9_1) _lh_grid_arg6_9_1) _lh_listcomp_fun_ls_t_9_1) _lh_listcomp_fun_9_1)))) in
    (let rec _lh_listcomp_fun_ls_h_4_5 = (let rec _lh_grid_LH_P4_3_4_5 = 2 in
      (let rec _lh_grid_LH_P4_2_4_5 = 8 in
        (let rec _lh_grid_LH_P4_1_4_5 = 3 in
          (let rec _lh_grid_LH_P4_0_4_5 = 3 in
            (fun _lh_grid_arg1_9_2 _lh_grid_arg2_9_2 _lh_grid_arg4_9_2 _lh_grid_arg5_9_2 _lh_grid_arg6_9_2 _lh_listcomp_fun_ls_t_1_0_7 _lh_listcomp_fun_9_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_2) (((scale_vec2_lh__d1 _lh_grid_arg5_9_2) _lh_grid_LH_P4_0_4_5) _lh_grid_arg1_9_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_2) _lh_grid_LH_P4_1_4_5) _lh_grid_arg2_9_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_2) (((scale_vec2_lh__d1 _lh_grid_arg5_9_2) _lh_grid_LH_P4_2_4_5) _lh_grid_arg1_9_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_2) _lh_grid_LH_P4_3_4_5) _lh_grid_arg2_9_2))), (_lh_listcomp_fun_9_2 _lh_listcomp_fun_ls_t_1_0_7)))))))) in
      (fun _lh_grid_arg1_9_3 _lh_grid_arg2_9_3 _lh_grid_arg4_9_3 _lh_grid_arg5_9_3 _lh_grid_arg6_9_3 _lh_listcomp_fun_9_3 -> 
        (((((((_lh_listcomp_fun_ls_h_4_5 _lh_grid_arg1_9_3) _lh_grid_arg2_9_3) _lh_grid_arg4_9_3) _lh_grid_arg5_9_3) _lh_grid_arg6_9_3) _lh_listcomp_fun_ls_t_9_0) _lh_listcomp_fun_9_3)))) in
    (let rec _lh_listcomp_fun_ls_h_4_6 = (let rec _lh_grid_LH_P4_3_4_6 = 0 in
      (let rec _lh_grid_LH_P4_2_4_6 = 8 in
        (let rec _lh_grid_LH_P4_1_4_6 = 2 in
          (let rec _lh_grid_LH_P4_0_4_6 = 2 in
            (fun _lh_grid_arg1_9_4 _lh_grid_arg2_9_4 _lh_grid_arg4_9_4 _lh_grid_arg5_9_4 _lh_grid_arg6_9_4 _lh_listcomp_fun_ls_t_1_0_8 _lh_listcomp_fun_9_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_4) (((scale_vec2_lh__d1 _lh_grid_arg5_9_4) _lh_grid_LH_P4_0_4_6) _lh_grid_arg1_9_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_4) _lh_grid_LH_P4_1_4_6) _lh_grid_arg2_9_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_4) (((scale_vec2_lh__d1 _lh_grid_arg5_9_4) _lh_grid_LH_P4_2_4_6) _lh_grid_arg1_9_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_4) _lh_grid_LH_P4_3_4_6) _lh_grid_arg2_9_4))), (_lh_listcomp_fun_9_4 _lh_listcomp_fun_ls_t_1_0_8)))))))) in
      (fun _lh_grid_arg1_9_5 _lh_grid_arg2_9_5 _lh_grid_arg4_9_5 _lh_grid_arg5_9_5 _lh_grid_arg6_9_5 _lh_listcomp_fun_9_5 -> 
        (((((((_lh_listcomp_fun_ls_h_4_6 _lh_grid_arg1_9_5) _lh_grid_arg2_9_5) _lh_grid_arg4_9_5) _lh_grid_arg5_9_5) _lh_grid_arg6_9_5) _lh_listcomp_fun_ls_t_8_9) _lh_listcomp_fun_9_5)))) in
    (let rec _lh_listcomp_fun_ls_h_4_7 = (let rec _lh_grid_LH_P4_3_4_7 = 0 in
      (let rec _lh_grid_LH_P4_2_4_7 = 4 in
        (let rec _lh_grid_LH_P4_1_4_7 = 1 in
          (let rec _lh_grid_LH_P4_0_4_7 = 1 in
            (fun _lh_grid_arg1_9_6 _lh_grid_arg2_9_6 _lh_grid_arg4_9_6 _lh_grid_arg5_9_6 _lh_grid_arg6_9_6 _lh_listcomp_fun_ls_t_1_0_9 _lh_listcomp_fun_9_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_6) (((scale_vec2_lh__d1 _lh_grid_arg5_9_6) _lh_grid_LH_P4_0_4_7) _lh_grid_arg1_9_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_6) _lh_grid_LH_P4_1_4_7) _lh_grid_arg2_9_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_6) (((scale_vec2_lh__d1 _lh_grid_arg5_9_6) _lh_grid_LH_P4_2_4_7) _lh_grid_arg1_9_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_6) _lh_grid_LH_P4_3_4_7) _lh_grid_arg2_9_6))), (_lh_listcomp_fun_9_6 _lh_listcomp_fun_ls_t_1_0_9)))))))) in
      (fun _lh_grid_arg1_9_7 _lh_grid_arg2_9_7 _lh_grid_arg4_9_7 _lh_grid_arg5_9_7 _lh_grid_arg6_9_7 _lh_listcomp_fun_9_7 -> 
        (((((((_lh_listcomp_fun_ls_h_4_7 _lh_grid_arg1_9_7) _lh_grid_arg2_9_7) _lh_grid_arg4_9_7) _lh_grid_arg5_9_7) _lh_grid_arg6_9_7) _lh_listcomp_fun_ls_t_8_8) _lh_listcomp_fun_9_7)))) in
    (let rec _lh_listcomp_fun_ls_h_4_8 = (let rec _lh_grid_LH_P4_3_4_8 = 16 in
      (let rec _lh_grid_LH_P4_2_4_8 = 11 in
        (let rec _lh_grid_LH_P4_1_4_8 = 12 in
          (let rec _lh_grid_LH_P4_0_4_8 = 12 in
            (fun _lh_grid_arg1_9_8 _lh_grid_arg2_9_8 _lh_grid_arg4_9_8 _lh_grid_arg5_9_8 _lh_grid_arg6_9_8 _lh_listcomp_fun_ls_t_1_1_0 _lh_listcomp_fun_9_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_8) (((scale_vec2_lh__d1 _lh_grid_arg5_9_8) _lh_grid_LH_P4_0_4_8) _lh_grid_arg1_9_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_8) _lh_grid_LH_P4_1_4_8) _lh_grid_arg2_9_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_9_8) (((scale_vec2_lh__d1 _lh_grid_arg5_9_8) _lh_grid_LH_P4_2_4_8) _lh_grid_arg1_9_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_9_8) _lh_grid_LH_P4_3_4_8) _lh_grid_arg2_9_8))), (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_1_1_0)))))))) in
      (fun _lh_grid_arg1_9_9 _lh_grid_arg2_9_9 _lh_grid_arg4_9_9 _lh_grid_arg5_9_9 _lh_grid_arg6_9_9 _lh_listcomp_fun_9_9 -> 
        (((((((_lh_listcomp_fun_ls_h_4_8 _lh_grid_arg1_9_9) _lh_grid_arg2_9_9) _lh_grid_arg4_9_9) _lh_grid_arg5_9_9) _lh_grid_arg6_9_9) _lh_listcomp_fun_ls_t_8_7) _lh_listcomp_fun_9_9)))) in
    (let rec _lh_listcomp_fun_ls_h_4_9 = (let rec _lh_grid_LH_P4_3_4_9 = 12 in
      (let rec _lh_grid_LH_P4_2_4_9 = 12 in
        (let rec _lh_grid_LH_P4_1_4_9 = 8 in
          (let rec _lh_grid_LH_P4_0_4_9 = 16 in
            (fun _lh_grid_arg1_1_0_0 _lh_grid_arg2_1_0_0 _lh_grid_arg4_1_0_0 _lh_grid_arg5_1_0_0 _lh_grid_arg6_1_0_0 _lh_listcomp_fun_ls_t_1_1_1 _lh_listcomp_fun_1_0_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_0) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_0) _lh_grid_LH_P4_0_4_9) _lh_grid_arg1_1_0_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_0) _lh_grid_LH_P4_1_4_9) _lh_grid_arg2_1_0_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_0) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_0) _lh_grid_LH_P4_2_4_9) _lh_grid_arg1_1_0_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_0) _lh_grid_LH_P4_3_4_9) _lh_grid_arg2_1_0_0))), (_lh_listcomp_fun_1_0_0 _lh_listcomp_fun_ls_t_1_1_1)))))))) in
      (fun _lh_grid_arg1_1_0_1 _lh_grid_arg2_1_0_1 _lh_grid_arg4_1_0_1 _lh_grid_arg5_1_0_1 _lh_grid_arg6_1_0_1 _lh_listcomp_fun_1_0_1 -> 
        (((((((_lh_listcomp_fun_ls_h_4_9 _lh_grid_arg1_1_0_1) _lh_grid_arg2_1_0_1) _lh_grid_arg4_1_0_1) _lh_grid_arg5_1_0_1) _lh_grid_arg6_1_0_1) _lh_listcomp_fun_ls_t_8_6) _lh_listcomp_fun_1_0_1)))) in
    (let rec _lh_listcomp_fun_ls_h_5_0 = (let rec _lh_grid_LH_P4_3_5_0 = 16 in
      (let rec _lh_grid_LH_P4_2_5_0 = 0 in
        (let rec _lh_grid_LH_P4_1_5_0 = 12 in
          (let rec _lh_grid_LH_P4_0_5_0 = 2 in
            (fun _lh_grid_arg1_1_0_2 _lh_grid_arg2_1_0_2 _lh_grid_arg4_1_0_2 _lh_grid_arg5_1_0_2 _lh_grid_arg6_1_0_2 _lh_listcomp_fun_ls_t_1_1_2 _lh_listcomp_fun_1_0_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_2) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_2) _lh_grid_LH_P4_0_5_0) _lh_grid_arg1_1_0_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_2) _lh_grid_LH_P4_1_5_0) _lh_grid_arg2_1_0_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_2) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_2) _lh_grid_LH_P4_2_5_0) _lh_grid_arg1_1_0_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_2) _lh_grid_LH_P4_3_5_0) _lh_grid_arg2_1_0_2))), (_lh_listcomp_fun_1_0_2 _lh_listcomp_fun_ls_t_1_1_2)))))))) in
      (fun _lh_grid_arg1_1_0_3 _lh_grid_arg2_1_0_3 _lh_grid_arg4_1_0_3 _lh_grid_arg5_1_0_3 _lh_grid_arg6_1_0_3 _lh_listcomp_fun_1_0_3 -> 
        (((((((_lh_listcomp_fun_ls_h_5_0 _lh_grid_arg1_1_0_3) _lh_grid_arg2_1_0_3) _lh_grid_arg4_1_0_3) _lh_grid_arg5_1_0_3) _lh_grid_arg6_1_0_3) _lh_listcomp_fun_ls_t_8_5) _lh_listcomp_fun_1_0_3)))) in
    (let rec _lh_listcomp_fun_ls_h_5_1 = (let rec _lh_grid_LH_P4_3_5_1 = 12 in
      (let rec _lh_grid_LH_P4_2_5_1 = 2 in
        (let rec _lh_grid_LH_P4_1_5_1 = 10 in
          (let rec _lh_grid_LH_P4_0_5_1 = 5 in
            (fun _lh_grid_arg1_1_0_4 _lh_grid_arg2_1_0_4 _lh_grid_arg4_1_0_4 _lh_grid_arg5_1_0_4 _lh_grid_arg6_1_0_4 _lh_listcomp_fun_ls_t_1_1_3 _lh_listcomp_fun_1_0_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_4) _lh_grid_LH_P4_0_5_1) _lh_grid_arg1_1_0_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_4) _lh_grid_LH_P4_1_5_1) _lh_grid_arg2_1_0_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_4) _lh_grid_LH_P4_2_5_1) _lh_grid_arg1_1_0_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_4) _lh_grid_LH_P4_3_5_1) _lh_grid_arg2_1_0_4))), (_lh_listcomp_fun_1_0_4 _lh_listcomp_fun_ls_t_1_1_3)))))))) in
      (fun _lh_grid_arg1_1_0_5 _lh_grid_arg2_1_0_5 _lh_grid_arg4_1_0_5 _lh_grid_arg5_1_0_5 _lh_grid_arg6_1_0_5 _lh_listcomp_fun_1_0_5 -> 
        (((((((_lh_listcomp_fun_ls_h_5_1 _lh_grid_arg1_1_0_5) _lh_grid_arg2_1_0_5) _lh_grid_arg4_1_0_5) _lh_grid_arg5_1_0_5) _lh_grid_arg6_1_0_5) _lh_listcomp_fun_ls_t_8_4) _lh_listcomp_fun_1_0_5)))) in
    (let rec _lh_listcomp_fun_ls_h_5_2 = (let rec _lh_grid_LH_P4_3_5_2 = 10 in
      (let rec _lh_grid_LH_P4_2_5_2 = 5 in
        (let rec _lh_grid_LH_P4_1_5_2 = 8 in
          (let rec _lh_grid_LH_P4_0_5_2 = 8 in
            (fun _lh_grid_arg1_1_0_6 _lh_grid_arg2_1_0_6 _lh_grid_arg4_1_0_6 _lh_grid_arg5_1_0_6 _lh_grid_arg6_1_0_6 _lh_listcomp_fun_ls_t_1_1_4 _lh_listcomp_fun_1_0_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_6) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_6) _lh_grid_LH_P4_0_5_2) _lh_grid_arg1_1_0_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_6) _lh_grid_LH_P4_1_5_2) _lh_grid_arg2_1_0_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_6) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_6) _lh_grid_LH_P4_2_5_2) _lh_grid_arg1_1_0_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_6) _lh_grid_LH_P4_3_5_2) _lh_grid_arg2_1_0_6))), (_lh_listcomp_fun_1_0_6 _lh_listcomp_fun_ls_t_1_1_4)))))))) in
      (fun _lh_grid_arg1_1_0_7 _lh_grid_arg2_1_0_7 _lh_grid_arg4_1_0_7 _lh_grid_arg5_1_0_7 _lh_grid_arg6_1_0_7 _lh_listcomp_fun_1_0_7 -> 
        (((((((_lh_listcomp_fun_ls_h_5_2 _lh_grid_arg1_1_0_7) _lh_grid_arg2_1_0_7) _lh_grid_arg4_1_0_7) _lh_grid_arg5_1_0_7) _lh_grid_arg6_1_0_7) _lh_listcomp_fun_ls_t_8_3) _lh_listcomp_fun_1_0_7)))) in
    (let rec _lh_listcomp_fun_ls_h_5_3 = (let rec _lh_grid_LH_P4_3_5_3 = 8 in
      (let rec _lh_grid_LH_P4_2_5_3 = 8 in
        (let rec _lh_grid_LH_P4_1_5_3 = 6 in
          (let rec _lh_grid_LH_P4_0_5_3 = 14 in
            (fun _lh_grid_arg1_1_0_8 _lh_grid_arg2_1_0_8 _lh_grid_arg4_1_0_8 _lh_grid_arg5_1_0_8 _lh_grid_arg6_1_0_8 _lh_listcomp_fun_ls_t_1_1_5 _lh_listcomp_fun_1_0_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_8) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_8) _lh_grid_LH_P4_0_5_3) _lh_grid_arg1_1_0_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_8) _lh_grid_LH_P4_1_5_3) _lh_grid_arg2_1_0_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_0_8) (((scale_vec2_lh__d1 _lh_grid_arg5_1_0_8) _lh_grid_LH_P4_2_5_3) _lh_grid_arg1_1_0_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_0_8) _lh_grid_LH_P4_3_5_3) _lh_grid_arg2_1_0_8))), (_lh_listcomp_fun_1_0_8 _lh_listcomp_fun_ls_t_1_1_5)))))))) in
      (fun _lh_grid_arg1_1_0_9 _lh_grid_arg2_1_0_9 _lh_grid_arg4_1_0_9 _lh_grid_arg5_1_0_9 _lh_grid_arg6_1_0_9 _lh_listcomp_fun_1_0_9 -> 
        (((((((_lh_listcomp_fun_ls_h_5_3 _lh_grid_arg1_1_0_9) _lh_grid_arg2_1_0_9) _lh_grid_arg4_1_0_9) _lh_grid_arg5_1_0_9) _lh_grid_arg6_1_0_9) _lh_listcomp_fun_ls_t_8_2) _lh_listcomp_fun_1_0_9)))) in
    (let rec _lh_listcomp_fun_ls_h_5_4 = (let rec _lh_grid_LH_P4_3_5_4 = 6 in
      (let rec _lh_grid_LH_P4_2_5_4 = 14 in
        (let rec _lh_grid_LH_P4_1_5_4 = 4 in
          (let rec _lh_grid_LH_P4_0_5_4 = 16 in
            (fun _lh_grid_arg1_1_1_0 _lh_grid_arg2_1_1_0 _lh_grid_arg4_1_1_0 _lh_grid_arg5_1_1_0 _lh_grid_arg6_1_1_0 _lh_listcomp_fun_ls_t_1_1_6 _lh_listcomp_fun_1_1_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_0) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_0) _lh_grid_LH_P4_0_5_4) _lh_grid_arg1_1_1_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_0) _lh_grid_LH_P4_1_5_4) _lh_grid_arg2_1_1_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_0) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_0) _lh_grid_LH_P4_2_5_4) _lh_grid_arg1_1_1_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_0) _lh_grid_LH_P4_3_5_4) _lh_grid_arg2_1_1_0))), (_lh_listcomp_fun_1_1_0 _lh_listcomp_fun_ls_t_1_1_6)))))))) in
      (fun _lh_grid_arg1_1_1_1 _lh_grid_arg2_1_1_1 _lh_grid_arg4_1_1_1 _lh_grid_arg5_1_1_1 _lh_grid_arg6_1_1_1 _lh_listcomp_fun_1_1_1 -> 
        (((((((_lh_listcomp_fun_ls_h_5_4 _lh_grid_arg1_1_1_1) _lh_grid_arg2_1_1_1) _lh_grid_arg4_1_1_1) _lh_grid_arg5_1_1_1) _lh_grid_arg6_1_1_1) _lh_listcomp_fun_ls_t_8_1) _lh_listcomp_fun_1_1_1)))) in
    (let rec _lh_listcomp_fun_ls_h_5_5 = (let rec _lh_grid_LH_P4_3_5_5 = 16 in
      (let rec _lh_grid_LH_P4_2_5_5 = 6 in
        (let rec _lh_grid_LH_P4_1_5_5 = 10 in
          (let rec _lh_grid_LH_P4_0_5_5 = 11 in
            (fun _lh_grid_arg1_1_1_2 _lh_grid_arg2_1_1_2 _lh_grid_arg4_1_1_2 _lh_grid_arg5_1_1_2 _lh_grid_arg6_1_1_2 _lh_listcomp_fun_ls_t_1_1_7 _lh_listcomp_fun_1_1_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_2) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_2) _lh_grid_LH_P4_0_5_5) _lh_grid_arg1_1_1_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_2) _lh_grid_LH_P4_1_5_5) _lh_grid_arg2_1_1_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_2) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_2) _lh_grid_LH_P4_2_5_5) _lh_grid_arg1_1_1_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_2) _lh_grid_LH_P4_3_5_5) _lh_grid_arg2_1_1_2))), (_lh_listcomp_fun_1_1_2 _lh_listcomp_fun_ls_t_1_1_7)))))))) in
      (fun _lh_grid_arg1_1_1_3 _lh_grid_arg2_1_1_3 _lh_grid_arg4_1_1_3 _lh_grid_arg5_1_1_3 _lh_grid_arg6_1_1_3 _lh_listcomp_fun_1_1_3 -> 
        (((((((_lh_listcomp_fun_ls_h_5_5 _lh_grid_arg1_1_1_3) _lh_grid_arg2_1_1_3) _lh_grid_arg4_1_1_3) _lh_grid_arg5_1_1_3) _lh_grid_arg6_1_1_3) _lh_listcomp_fun_ls_t_8_0) _lh_listcomp_fun_1_1_3)))) in
    (let rec _lh_listcomp_fun_ls_h_5_6 = (let rec _lh_grid_LH_P4_3_5_6 = 10 in
      (let rec _lh_grid_LH_P4_2_5_6 = 11 in
        (let rec _lh_grid_LH_P4_1_5_6 = 6 in
          (let rec _lh_grid_LH_P4_0_5_6 = 16 in
            (fun _lh_grid_arg1_1_1_4 _lh_grid_arg2_1_1_4 _lh_grid_arg4_1_1_4 _lh_grid_arg5_1_1_4 _lh_grid_arg6_1_1_4 _lh_listcomp_fun_ls_t_1_1_8 _lh_listcomp_fun_1_1_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_4) _lh_grid_LH_P4_0_5_6) _lh_grid_arg1_1_1_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_4) _lh_grid_LH_P4_1_5_6) _lh_grid_arg2_1_1_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_4) _lh_grid_LH_P4_2_5_6) _lh_grid_arg1_1_1_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_4) _lh_grid_LH_P4_3_5_6) _lh_grid_arg2_1_1_4))), (_lh_listcomp_fun_1_1_4 _lh_listcomp_fun_ls_t_1_1_8)))))))) in
      (fun _lh_grid_arg1_1_1_5 _lh_grid_arg2_1_1_5 _lh_grid_arg4_1_1_5 _lh_grid_arg5_1_1_5 _lh_grid_arg6_1_1_5 _lh_listcomp_fun_1_1_5 -> 
        (((((((_lh_listcomp_fun_ls_h_5_6 _lh_grid_arg1_1_1_5) _lh_grid_arg2_1_1_5) _lh_grid_arg4_1_1_5) _lh_grid_arg5_1_1_5) _lh_grid_arg6_1_1_5) _lh_listcomp_fun_ls_t_7_9) _lh_listcomp_fun_1_1_5)))) in
    (let rec _lh_listcomp_fun_ls_h_5_7 = (let rec _lh_grid_LH_P4_3_5_7 = 14 in
      (let rec _lh_grid_LH_P4_2_5_7 = 1 in
        (let rec _lh_grid_LH_P4_1_5_7 = 12 in
          (let rec _lh_grid_LH_P4_0_5_7 = 0 in
            (fun _lh_grid_arg1_1_1_6 _lh_grid_arg2_1_1_6 _lh_grid_arg4_1_1_6 _lh_grid_arg5_1_1_6 _lh_grid_arg6_1_1_6 _lh_listcomp_fun_ls_t_1_1_9 _lh_listcomp_fun_1_1_6 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_6) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_6) _lh_grid_LH_P4_0_5_7) _lh_grid_arg1_1_1_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_6) _lh_grid_LH_P4_1_5_7) _lh_grid_arg2_1_1_6))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_6) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_6) _lh_grid_LH_P4_2_5_7) _lh_grid_arg1_1_1_6))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_6) _lh_grid_LH_P4_3_5_7) _lh_grid_arg2_1_1_6))), (_lh_listcomp_fun_1_1_6 _lh_listcomp_fun_ls_t_1_1_9)))))))) in
      (fun _lh_grid_arg1_1_1_7 _lh_grid_arg2_1_1_7 _lh_grid_arg4_1_1_7 _lh_grid_arg5_1_1_7 _lh_grid_arg6_1_1_7 _lh_listcomp_fun_1_1_7 -> 
        (((((((_lh_listcomp_fun_ls_h_5_7 _lh_grid_arg1_1_1_7) _lh_grid_arg2_1_1_7) _lh_grid_arg4_1_1_7) _lh_grid_arg5_1_1_7) _lh_grid_arg6_1_1_7) _lh_listcomp_fun_ls_t_7_8) _lh_listcomp_fun_1_1_7)))) in
    (let rec _lh_listcomp_fun_ls_h_5_8 = (let rec _lh_grid_LH_P4_3_5_8 = 12 in
      (let rec _lh_grid_LH_P4_2_5_8 = 2 in
        (let rec _lh_grid_LH_P4_1_5_8 = 8 in
          (let rec _lh_grid_LH_P4_0_5_8 = 0 in
            (fun _lh_grid_arg1_1_1_8 _lh_grid_arg2_1_1_8 _lh_grid_arg4_1_1_8 _lh_grid_arg5_1_1_8 _lh_grid_arg6_1_1_8 _lh_listcomp_fun_ls_t_1_2_0 _lh_listcomp_fun_1_1_8 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_8) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_8) _lh_grid_LH_P4_0_5_8) _lh_grid_arg1_1_1_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_8) _lh_grid_LH_P4_1_5_8) _lh_grid_arg2_1_1_8))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_1_8) (((scale_vec2_lh__d1 _lh_grid_arg5_1_1_8) _lh_grid_LH_P4_2_5_8) _lh_grid_arg1_1_1_8))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_1_8) _lh_grid_LH_P4_3_5_8) _lh_grid_arg2_1_1_8))), (_lh_listcomp_fun_1_1_8 _lh_listcomp_fun_ls_t_1_2_0)))))))) in
      (fun _lh_grid_arg1_1_1_9 _lh_grid_arg2_1_1_9 _lh_grid_arg4_1_1_9 _lh_grid_arg5_1_1_9 _lh_grid_arg6_1_1_9 _lh_listcomp_fun_1_1_9 -> 
        (((((((_lh_listcomp_fun_ls_h_5_8 _lh_grid_arg1_1_1_9) _lh_grid_arg2_1_1_9) _lh_grid_arg4_1_1_9) _lh_grid_arg5_1_1_9) _lh_grid_arg6_1_1_9) _lh_listcomp_fun_ls_t_7_7) _lh_listcomp_fun_1_1_9)))) in
    (let rec _lh_listcomp_fun_ls_h_5_9 = (let rec _lh_grid_LH_P4_3_5_9 = 10 in
      (let rec _lh_grid_LH_P4_2_5_9 = 5 in
        (let rec _lh_grid_LH_P4_1_5_9 = 4 in
          (let rec _lh_grid_LH_P4_0_5_9 = 0 in
            (fun _lh_grid_arg1_1_2_0 _lh_grid_arg2_1_2_0 _lh_grid_arg4_1_2_0 _lh_grid_arg5_1_2_0 _lh_grid_arg6_1_2_0 _lh_listcomp_fun_ls_t_1_2_1 _lh_listcomp_fun_1_2_0 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_0) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_0) _lh_grid_LH_P4_0_5_9) _lh_grid_arg1_1_2_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_0) _lh_grid_LH_P4_1_5_9) _lh_grid_arg2_1_2_0))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_0) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_0) _lh_grid_LH_P4_2_5_9) _lh_grid_arg1_1_2_0))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_0) _lh_grid_LH_P4_3_5_9) _lh_grid_arg2_1_2_0))), (_lh_listcomp_fun_1_2_0 _lh_listcomp_fun_ls_t_1_2_1)))))))) in
      (fun _lh_grid_arg1_1_2_1 _lh_grid_arg2_1_2_1 _lh_grid_arg4_1_2_1 _lh_grid_arg5_1_2_1 _lh_grid_arg6_1_2_1 _lh_listcomp_fun_1_2_1 -> 
        (((((((_lh_listcomp_fun_ls_h_5_9 _lh_grid_arg1_1_2_1) _lh_grid_arg2_1_2_1) _lh_grid_arg4_1_2_1) _lh_grid_arg5_1_2_1) _lh_grid_arg6_1_2_1) _lh_listcomp_fun_ls_t_7_6) _lh_listcomp_fun_1_2_1)))) in
    (let rec _lh_listcomp_fun_ls_h_6_0 = (let rec _lh_grid_LH_P4_3_6_0 = 16 in
      (let rec _lh_grid_LH_P4_2_6_0 = 16 in
        (let rec _lh_grid_LH_P4_1_6_0 = 12 in
          (let rec _lh_grid_LH_P4_0_6_0 = 12 in
            (fun _lh_grid_arg1_1_2_2 _lh_grid_arg2_1_2_2 _lh_grid_arg4_1_2_2 _lh_grid_arg5_1_2_2 _lh_grid_arg6_1_2_2 _lh_listcomp_fun_ls_t_1_2_2 _lh_listcomp_fun_1_2_2 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_2) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_2) _lh_grid_LH_P4_0_6_0) _lh_grid_arg1_1_2_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_2) _lh_grid_LH_P4_1_6_0) _lh_grid_arg2_1_2_2))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_2) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_2) _lh_grid_LH_P4_2_6_0) _lh_grid_arg1_1_2_2))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_2) _lh_grid_LH_P4_3_6_0) _lh_grid_arg2_1_2_2))), (_lh_listcomp_fun_1_2_2 _lh_listcomp_fun_ls_t_1_2_2)))))))) in
      (fun _lh_grid_arg1_1_2_3 _lh_grid_arg2_1_2_3 _lh_grid_arg4_1_2_3 _lh_grid_arg5_1_2_3 _lh_grid_arg6_1_2_3 _lh_listcomp_fun_1_2_3 -> 
        (((((((_lh_listcomp_fun_ls_h_6_0 _lh_grid_arg1_1_2_3) _lh_grid_arg2_1_2_3) _lh_grid_arg4_1_2_3) _lh_grid_arg5_1_2_3) _lh_grid_arg6_1_2_3) _lh_listcomp_fun_ls_t_7_5) _lh_listcomp_fun_1_2_3)))) in
    (let rec _lh_listcomp_fun_ls_h_6_1 = (let rec _lh_grid_LH_P4_3_6_1 = 8 in
      (let rec _lh_grid_LH_P4_2_6_1 = 8 in
        (let rec _lh_grid_LH_P4_1_6_1 = 0 in
          (let rec _lh_grid_LH_P4_0_6_1 = 0 in
            (fun _lh_grid_arg1_1_2_4 _lh_grid_arg2_1_2_4 _lh_grid_arg4_1_2_4 _lh_grid_arg5_1_2_4 _lh_grid_arg6_1_2_4 _lh_listcomp_fun_ls_t_1_2_3 _lh_listcomp_fun_1_2_4 -> 
              (`LH_C(((tup2_lh__d1 ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_4) _lh_grid_LH_P4_0_6_1) _lh_grid_arg1_1_2_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_4) _lh_grid_LH_P4_1_6_1) _lh_grid_arg2_1_2_4))) ((vec_add_lh__d7 ((vec_add_lh__d7 _lh_grid_arg4_1_2_4) (((scale_vec2_lh__d1 _lh_grid_arg5_1_2_4) _lh_grid_LH_P4_2_6_1) _lh_grid_arg1_1_2_4))) (((scale_vec2_lh__d1 _lh_grid_arg6_1_2_4) _lh_grid_LH_P4_3_6_1) _lh_grid_arg2_1_2_4))), (_lh_listcomp_fun_1_2_4 _lh_listcomp_fun_ls_t_1_2_3)))))))) in
      (fun _lh_grid_arg1_1_2_5 _lh_grid_arg2_1_2_5 _lh_grid_arg4_1_2_5 _lh_grid_arg5_1_2_5 _lh_grid_arg6_1_2_5 _lh_listcomp_fun_1_2_5 -> 
        (((((((_lh_listcomp_fun_ls_h_6_1 _lh_grid_arg1_1_2_5) _lh_grid_arg2_1_2_5) _lh_grid_arg4_1_2_5) _lh_grid_arg5_1_2_5) _lh_grid_arg6_1_2_5) _lh_listcomp_fun_ls_t_7_4) _lh_listcomp_fun_1_2_5))));;
let rec r_lh__d1 _lh_r_arg1_0 =
  ((tile_to_grid_lh__d1 r_tile_lh__d1) _lh_r_arg1_0);;
let rec t_lh__d3 _lh_t_arg1_2 =
  (((((quartet_lh__d4 p_lh__d1) q_lh__d1) r_lh__d1) s_lh__d1) _lh_t_arg1_2);;
let rec nil_lh__d1 _lh_nil_arg1_0 _lh_nil_arg2_0 _lh_nil_arg3_0 =
  (`LH_N);;
let rec side1_lh__d4 _lh_side1_arg1_0 =
  (((((quartet_lh__d4 nil_lh__d1) nil_lh__d1) (rot_lh__d1_d0 t_lh__d3)) t_lh__d3) _lh_side1_arg1_0);;
let rec side1_lh__d3 _lh_side1_arg1_1 =
  (((((quartet_lh__d4 nil_lh__d1) nil_lh__d1) (rot_lh__d1_d0 t_lh__d3)) t_lh__d3) _lh_side1_arg1_1);;
let rec t_lh__d2 _lh_t_arg1_1 =
  (((((quartet_lh__d4 p_lh__d1) q_lh__d1) r_lh__d1) s_lh__d1) _lh_t_arg1_1);;
let rec side2_lh__d1 _lh_side2_arg1_0 =
  (((((quartet_lh__d4 side1_lh__d4) side1_lh__d3) (rot_lh__d1_d0 t_lh__d3)) t_lh__d2) _lh_side2_arg1_0);;
let rec quartet_lh__d2 _lh_quartet_arg1_3 _lh_quartet_arg2_3 _lh_quartet_arg3_3 _lh_quartet_arg4_3 =
  ((((above_lh__d1 1) 1) ((((beside_lh__d2 1) 1) _lh_quartet_arg1_3) _lh_quartet_arg2_3)) ((((beside_lh__d2 1) 1) _lh_quartet_arg3_3) _lh_quartet_arg4_3));;
let rec rot_lh__d7 _lh_rot_arg1_5 _lh_rot_arg2_5 _lh_rot_arg3_5 _lh_rot_arg4_5 =
  (((_lh_rot_arg1_5 ((vec_add_lh__d7 _lh_rot_arg2_5) _lh_rot_arg3_5)) _lh_rot_arg4_5) ((vec_sub_lh__d7 (let rec _lh_vec_sub_LH_P2_1_1_0 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_1_0 = 0 in
      (fun _lh_vec_sub_arg2_8 -> 
        (match _lh_vec_sub_arg2_8 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_1_1, _lh_vec_sub_LH_P2_1_1_1) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_1_0 - _lh_vec_sub_LH_P2_0_1_1), (_lh_vec_sub_LH_P2_1_1_0 - _lh_vec_sub_LH_P2_1_1_1)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_5));;
let rec rot_lh__d8 _lh_rot_arg1_6 _lh_rot_arg2_6 _lh_rot_arg3_6 _lh_rot_arg4_6 =
  (((_lh_rot_arg1_6 ((vec_add_lh__d7 _lh_rot_arg2_6) _lh_rot_arg3_6)) _lh_rot_arg4_6) ((vec_sub_lh__d7 (let rec _lh_vec_sub_LH_P2_1_1_2 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_1_2 = 0 in
      (fun _lh_vec_sub_arg2_9 -> 
        (match _lh_vec_sub_arg2_9 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_1_3, _lh_vec_sub_LH_P2_1_1_3) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_1_2 - _lh_vec_sub_LH_P2_0_1_3), (_lh_vec_sub_LH_P2_1_1_2 - _lh_vec_sub_LH_P2_1_1_3)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_6));;
let rec side2_lh__d2 _lh_side2_arg1_1 =
  (((((quartet_lh__d4 side1_lh__d4) side1_lh__d4) (rot_lh__d1_d0 t_lh__d3)) t_lh__d3) _lh_side2_arg1_1);;
let rec t_lh__d1 _lh_t_arg1_0 =
  (((((quartet_lh__d4 p_lh__d1) q_lh__d1) r_lh__d1) s_lh__d1) _lh_t_arg1_0);;
let rec u_lh__d1 _lh_u_arg1_0 =
  ((cycle'_lh__d1 (rot_lh__d1_d0 q_lh__d1)) _lh_u_arg1_0);;
let rec corner1_lh__d1 _lh_corner1_arg1_0 =
  (((((quartet_lh__d4 nil_lh__d1) nil_lh__d1) nil_lh__d1) u_lh__d1) _lh_corner1_arg1_0);;
let rec rot_lh__d9 _lh_rot_arg1_2 _lh_rot_arg2_2 _lh_rot_arg3_2 _lh_rot_arg4_2 =
  (((_lh_rot_arg1_2 ((vec_add_lh__d7 _lh_rot_arg2_2) _lh_rot_arg3_2)) _lh_rot_arg4_2) ((vec_sub_lh__d7 (let rec _lh_vec_sub_LH_P2_1_4 = 0 in
    (let rec _lh_vec_sub_LH_P2_0_4 = 0 in
      (fun _lh_vec_sub_arg2_4 -> 
        (match _lh_vec_sub_arg2_4 with
          | `LH_P2(_lh_vec_sub_LH_P2_0_5, _lh_vec_sub_LH_P2_1_5) -> 
            (`LH_P2((_lh_vec_sub_LH_P2_0_4 - _lh_vec_sub_LH_P2_0_5), (_lh_vec_sub_LH_P2_1_4 - _lh_vec_sub_LH_P2_1_5)))
          | _ -> 
            (failwith "error")))))) _lh_rot_arg3_2));;
let rec quartet_lh__d3 _lh_quartet_arg1_0 _lh_quartet_arg2_0 _lh_quartet_arg3_0 _lh_quartet_arg4_0 =
  ((((above_lh__d1 1) 1) ((((beside_lh__d2 1) 1) _lh_quartet_arg1_0) _lh_quartet_arg2_0)) ((((beside_lh__d2 1) 1) _lh_quartet_arg3_0) _lh_quartet_arg4_0));;
let rec side1_lh__d2 _lh_side1_arg1_2 =
  (((((quartet_lh__d4 nil_lh__d1) nil_lh__d1) (rot_lh__d1_d0 t_lh__d3)) t_lh__d3) _lh_side1_arg1_2);;
let rec side1_lh__d1 _lh_side1_arg1_3 =
  (((((quartet_lh__d4 nil_lh__d1) nil_lh__d1) (rot_lh__d1_d0 t_lh__d3)) t_lh__d3) _lh_side1_arg1_3);;
let rec corner2_lh__d1 _lh_corner2_arg1_0 =
  (((((quartet_lh__d3 corner1_lh__d1) side1_lh__d1) (rot_lh__d9 side1_lh__d2)) u_lh__d1) _lh_corner2_arg1_0);;
let rec pseudocorner_lh__d1 _lh_pseudocorner_arg1_0 =
  (((((quartet_lh__d2 corner2_lh__d1) side2_lh__d1) (rot_lh__d8 side2_lh__d2)) (rot_lh__d7 t_lh__d1)) _lh_pseudocorner_arg1_0);;
let rec pseudolimit_lh__d1 _lh_pseudolimit_arg1_0 =
  ((cycle'_lh__d1 pseudocorner_lh__d1) _lh_pseudolimit_arg1_0);;
let rec map_lh__d1 f_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_3_3, t_3_3) -> 
      (`LH_C((f_0 h_3_3), ((map_lh__d1 f_0) t_3_3)))
    | `LH_N -> 
      (`LH_N));;
let rec min_lh__d1 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec testFish_nofib_lh__d1 _lh_testFish_nofib_arg1_0 =
  ((map_lh__d1 (fun i_0 -> 
    (let rec n_0 = ((min_lh__d1 0) i_0) in
      (length_lh__d1 (fmt_lh__d1 (((pseudolimit_lh__d1 (`LH_P2(0, 0))) (`LH_P2((640 + n_0), 0))) (`LH_P2(0, (640 + n_0))))))))) ((enumFromTo_lh__d1 0) _lh_testFish_nofib_arg1_0));;
let run () = 1 + (Obj.magic ((testFish_nofib_lh__d1 30)));
end;;

