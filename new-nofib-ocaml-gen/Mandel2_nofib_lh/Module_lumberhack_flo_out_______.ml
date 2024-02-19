

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______(LH_Dum: sig end) = struct
let rec finite_lh__d1 _lh_finite_arg1_0 =
  (match _lh_finite_arg1_0 with
    | `Leaf(_lh_finite_Leaf_0_0) -> 
      (_lh_finite_Leaf_0_0 = _lh_finite_Leaf_0_0)
    | `NS(_lh_finite_NS_0_0, _lh_finite_NS_1_0) -> 
      ((finite_lh__d1 _lh_finite_NS_0_0) && (finite_lh__d1 _lh_finite_NS_1_0))
    | `EW(_lh_finite_EW_0_0, _lh_finite_EW_1_0) -> 
      ((finite_lh__d1 _lh_finite_EW_0_0) && (finite_lh__d1 _lh_finite_EW_1_0))
    | _ -> 
      (failwith "error"));;
let rec length_lh__d1 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh__d1 t_0))
    | `LH_N -> 
      0);;
let rec strEq_lh__d1 _lh_strEq_arg1_0 _lh_strEq_arg2_0 =
  (match _lh_strEq_arg1_0 with
    | `LH_C(_lh_strEq_LH_C_0_0, _lh_strEq_LH_C_1_0) -> 
      (let rec _lh_matchIdent_0 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_0 with
          | `LH_C(_lh_strEq_LH_C_0_1, _lh_strEq_LH_C_1_1) -> 
            (if (_lh_strEq_LH_C_0_0 = _lh_strEq_LH_C_0_1) then
              ((strEq_lh__d1 _lh_strEq_LH_C_1_0) _lh_strEq_LH_C_1_1)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_1 with
          | `LH_C(_lh_strEq_LH_C_0_2, _lh_strEq_LH_C_1_2) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec right_lh__d1 =
  (`LH_P2(1, 0));;
let rec down_lh__d1 _lh_equalp_LH_P2_0_2 _lh_equalp_LH_P2_1_2 =
  (let rec _lh_equalp_LH_P2_1_3 = 1 in
    (let rec _lh_equalp_LH_P2_0_3 = 0 in
      ((_lh_equalp_LH_P2_0_2 = _lh_equalp_LH_P2_0_3) && (_lh_equalp_LH_P2_1_2 = _lh_equalp_LH_P2_1_3))));;
let rec size_lh__d1 =
  200;;
let rec qmx_lh__d1 =
  1.5;;
let rec qmn_lh__d1 =
  (0.0 -. 1.5);;
let rec delta_q_lh__d1 =
  ((qmx_lh__d1 -. qmn_lh__d1) /. (float_of_int (size_lh__d1 - 1)));;
let rec nq_lh__d2 _lh_nq_arg1_0 =
  (qmn_lh__d1 +. ((float_of_int _lh_nq_arg1_0) *. delta_q_lh__d1));;
let rec right_lh__d2 _lh_equalp_LH_P2_0_0 _lh_equalp_LH_P2_1_0 =
  (let rec _lh_equalp_LH_P2_1_1 = 0 in
    (let rec _lh_equalp_LH_P2_0_1 = 1 in
      ((_lh_equalp_LH_P2_0_0 = _lh_equalp_LH_P2_0_1) && (_lh_equalp_LH_P2_1_0 = _lh_equalp_LH_P2_1_1))));;
let rec new_x_lh__d2 _lh_new_x_arg1_0 _lh_new_x_arg2_0 _lh_new_x_arg3_0 =
  (((_lh_new_x_arg1_0 *. _lh_new_x_arg1_0) -. (_lh_new_x_arg2_0 *. _lh_new_x_arg2_0)) +. _lh_new_x_arg3_0);;
let rec num_cols_lh__d2 =
  26;;
let rec m_lh__d2 =
  20;;
let rec radius_lh__d2 _lh_radius_arg1_1 _lh_radius_arg2_1 =
  ((_lh_radius_arg1_1 *. _lh_radius_arg1_1) +. (_lh_radius_arg2_1 *. _lh_radius_arg2_1));;
let rec new_y_lh__d2 _lh_new_y_arg1_1 _lh_new_y_arg2_1 _lh_new_y_arg3_1 =
  (((2.0 *. _lh_new_y_arg1_1) *. _lh_new_y_arg2_1) +. _lh_new_y_arg3_1);;
let rec check_radius_lh__d3 _lh_check_radius_arg1_1 _lh_check_radius_arg2_1 _lh_check_radius_arg3_1 _lh_check_radius_arg4_1 _lh_check_radius_arg5_1 =
  (let rec xn_1 = (((new_x_lh__d2 _lh_check_radius_arg4_1) _lh_check_radius_arg5_1) _lh_check_radius_arg1_1) in
    (let rec yn_1 = (((new_y_lh__d2 _lh_check_radius_arg4_1) _lh_check_radius_arg5_1) _lh_check_radius_arg2_1) in
      (let rec r_1 = ((radius_lh__d2 xn_1) yn_1) in
        (let rec kp_1 = (_lh_check_radius_arg3_1 + 1) in
          (if (kp_1 = num_cols_lh__d2) then
            0
          else
            (if (r_1 > (float_of_int m_lh__d2)) then
              kp_1
            else
              (((((check_radius_lh__d3 _lh_check_radius_arg1_1) _lh_check_radius_arg2_1) kp_1) xn_1) yn_1)))))));;
let rec check_radius_lh__d2 _lh_check_radius_arg1_3 _lh_check_radius_arg2_3 _lh_check_radius_arg3_3 _lh_check_radius_arg4_3 _lh_check_radius_arg5_3 =
  (let rec xn_3 = (((new_x_lh__d2 _lh_check_radius_arg4_3) _lh_check_radius_arg5_3) _lh_check_radius_arg1_3) in
    (let rec yn_3 = (((new_y_lh__d2 _lh_check_radius_arg4_3) _lh_check_radius_arg5_3) _lh_check_radius_arg2_3) in
      (let rec r_3 = ((radius_lh__d2 xn_3) yn_3) in
        (let rec kp_3 = (_lh_check_radius_arg3_3 + 1) in
          (if (kp_3 = num_cols_lh__d2) then
            0
          else
            (if (r_3 > (float_of_int m_lh__d2)) then
              kp_3
            else
              (((((check_radius_lh__d2 _lh_check_radius_arg1_3) _lh_check_radius_arg2_3) kp_3) xn_3) yn_3)))))));;
let rec left_lh__d2 _lh_equalp_LH_P2_0_4 _lh_equalp_LH_P2_1_4 =
  (let rec _lh_equalp_LH_P2_1_5 = 0 in
    (let rec _lh_equalp_LH_P2_0_5 = (0 - 1) in
      ((_lh_equalp_LH_P2_0_4 = _lh_equalp_LH_P2_0_5) && (_lh_equalp_LH_P2_1_4 = _lh_equalp_LH_P2_1_5))));;
let rec up_lh__d1 =
  (`LH_P2(0, (0 - 1)));;
let rec pmn_lh__d1 =
  (0.0 -. 2.25);;
let rec pmx_lh__d1 =
  0.75;;
let rec delta_p_lh__d2 =
  ((pmx_lh__d1 -. pmn_lh__d1) /. (float_of_int (size_lh__d1 - 1)));;
let rec np_lh__d4 _lh_np_arg1_3 =
  (pmn_lh__d1 +. ((float_of_int _lh_np_arg1_3) *. delta_p_lh__d2));;
let rec nq_lh__d4 _lh_nq_arg1_3 =
  (qmn_lh__d1 +. ((float_of_int _lh_nq_arg1_3) *. delta_q_lh__d1));;
let rec check_radius_lh__d4 _lh_check_radius_arg1_2 _lh_check_radius_arg2_2 _lh_check_radius_arg3_2 _lh_check_radius_arg4_2 _lh_check_radius_arg5_2 =
  (let rec xn_2 = (((new_x_lh__d2 _lh_check_radius_arg4_2) _lh_check_radius_arg5_2) _lh_check_radius_arg1_2) in
    (let rec yn_2 = (((new_y_lh__d2 _lh_check_radius_arg4_2) _lh_check_radius_arg5_2) _lh_check_radius_arg2_2) in
      (let rec r_2 = ((radius_lh__d2 xn_2) yn_2) in
        (let rec kp_2 = (_lh_check_radius_arg3_2 + 1) in
          (if (kp_2 = num_cols_lh__d2) then
            0
          else
            (if (r_2 > (float_of_int m_lh__d2)) then
              kp_2
            else
              (((((check_radius_lh__d4 _lh_check_radius_arg1_2) _lh_check_radius_arg2_2) kp_2) xn_2) yn_2)))))));;
let rec point_colour_lh__d4 _lh_point_colour_arg1_4 =
  (match _lh_point_colour_arg1_4 with
    | `LH_P2(_lh_point_colour_LH_P2_0_0, _lh_point_colour_LH_P2_1_0) -> 
      (((((check_radius_lh__d4 (np_lh__d4 _lh_point_colour_LH_P2_0_0)) (nq_lh__d4 _lh_point_colour_LH_P2_1_0)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"));;
let rec num_cols_lh__d1 =
  26;;
let rec new_y_lh__d1 _lh_new_y_arg1_0 _lh_new_y_arg2_0 _lh_new_y_arg3_0 =
  (((2.0 *. _lh_new_y_arg1_0) *. _lh_new_y_arg2_0) +. _lh_new_y_arg3_0);;
let rec m_lh__d1 =
  20;;
let rec new_x_lh__d1 _lh_new_x_arg1_1 _lh_new_x_arg2_1 _lh_new_x_arg3_1 =
  (((_lh_new_x_arg1_1 *. _lh_new_x_arg1_1) -. (_lh_new_x_arg2_1 *. _lh_new_x_arg2_1)) +. _lh_new_x_arg3_1);;
let rec radius_lh__d1 _lh_radius_arg1_0 _lh_radius_arg2_0 =
  ((_lh_radius_arg1_0 *. _lh_radius_arg1_0) +. (_lh_radius_arg2_0 *. _lh_radius_arg2_0));;
let rec check_radius_lh__d1 _lh_check_radius_arg1_4 _lh_check_radius_arg2_4 _lh_check_radius_arg3_4 _lh_check_radius_arg4_4 _lh_check_radius_arg5_4 =
  (let rec xn_4 = (((new_x_lh__d1 _lh_check_radius_arg4_4) _lh_check_radius_arg5_4) _lh_check_radius_arg1_4) in
    (let rec yn_4 = (((new_y_lh__d1 _lh_check_radius_arg4_4) _lh_check_radius_arg5_4) _lh_check_radius_arg2_4) in
      (let rec r_4 = ((radius_lh__d1 xn_4) yn_4) in
        (let rec kp_4 = (_lh_check_radius_arg3_4 + 1) in
          (if (kp_4 = num_cols_lh__d1) then
            0
          else
            (if (r_4 > (float_of_int m_lh__d1)) then
              kp_4
            else
              (((((check_radius_lh__d1 _lh_check_radius_arg1_4) _lh_check_radius_arg2_4) kp_4) xn_4) yn_4)))))));;
let rec down_lh__d2 =
  (`LH_P2(0, 1));;
let rec np_lh__d6 _lh_np_arg1_4 =
  (pmn_lh__d1 +. ((float_of_int _lh_np_arg1_4) *. delta_p_lh__d2));;
let rec np_lh__d5 _lh_np_arg1_5 =
  (pmn_lh__d1 +. ((float_of_int _lh_np_arg1_5) *. delta_p_lh__d2));;
let rec np_lh__d2 _lh_np_arg1_0 =
  (pmn_lh__d1 +. ((float_of_int _lh_np_arg1_0) *. delta_p_lh__d2));;
let rec check_radius_lh__d5 _lh_check_radius_arg1_0 _lh_check_radius_arg2_0 _lh_check_radius_arg3_0 _lh_check_radius_arg4_0 _lh_check_radius_arg5_0 =
  (let rec xn_0 = (((new_x_lh__d2 _lh_check_radius_arg4_0) _lh_check_radius_arg5_0) _lh_check_radius_arg1_0) in
    (let rec yn_0 = (((new_y_lh__d2 _lh_check_radius_arg4_0) _lh_check_radius_arg5_0) _lh_check_radius_arg2_0) in
      (let rec r_0 = ((radius_lh__d2 xn_0) yn_0) in
        (let rec kp_0 = (_lh_check_radius_arg3_0 + 1) in
          (if (kp_0 = num_cols_lh__d2) then
            0
          else
            (if (r_0 > (float_of_int m_lh__d2)) then
              kp_0
            else
              (((((check_radius_lh__d5 _lh_check_radius_arg1_0) _lh_check_radius_arg2_0) kp_0) xn_0) yn_0)))))));;
let rec nq_lh__d3 _lh_nq_arg1_1 =
  (qmn_lh__d1 +. ((float_of_int _lh_nq_arg1_1) *. delta_q_lh__d1));;
let rec nq_lh__d5 _lh_nq_arg1_2 =
  (qmn_lh__d1 +. ((float_of_int _lh_nq_arg1_2) *. delta_q_lh__d1));;
let rec np_lh__d3 _lh_np_arg1_1 =
  (pmn_lh__d1 +. ((float_of_int _lh_np_arg1_1) *. delta_p_lh__d2));;
let rec nq_lh__d1 _lh_nq_arg1_4 =
  (qmn_lh__d1 +. ((float_of_int _lh_nq_arg1_4) *. delta_q_lh__d1));;
let rec delta_p_lh__d1 =
  ((pmx_lh__d1 -. pmn_lh__d1) /. (float_of_int (size_lh__d1 - 1)));;
let rec np_lh__d1 _lh_np_arg1_2 =
  (pmn_lh__d1 +. ((float_of_int _lh_np_arg1_2) *. delta_p_lh__d1));;
let rec check_radius_lh__d6 _lh_check_radius_arg1_5 _lh_check_radius_arg2_5 _lh_check_radius_arg3_5 _lh_check_radius_arg4_5 _lh_check_radius_arg5_5 =
  (let rec xn_5 = (((new_x_lh__d2 _lh_check_radius_arg4_5) _lh_check_radius_arg5_5) _lh_check_radius_arg1_5) in
    (let rec yn_5 = (((new_y_lh__d2 _lh_check_radius_arg4_5) _lh_check_radius_arg5_5) _lh_check_radius_arg2_5) in
      (let rec r_5 = ((radius_lh__d2 xn_5) yn_5) in
        (let rec kp_5 = (_lh_check_radius_arg3_5 + 1) in
          (if (kp_5 = num_cols_lh__d2) then
            0
          else
            (if (r_5 > (float_of_int m_lh__d2)) then
              kp_5
            else
              (((((check_radius_lh__d6 _lh_check_radius_arg1_5) _lh_check_radius_arg2_5) kp_5) xn_5) yn_5)))))));;
let rec nq_lh__d6 _lh_nq_arg1_5 =
  (qmn_lh__d1 +. ((float_of_int _lh_nq_arg1_5) *. delta_q_lh__d1));;
let rec left_lh__d1 =
  (`LH_P2((0 - 1), 0));;
let rec check_perim_lh__d1 _lh_check_perim_arg1_0 _lh_check_perim_arg2_0 =
  (match _lh_check_perim_arg1_0 with
    | `LH_P2(_lh_check_perim_LH_P2_0_0, _lh_check_perim_LH_P2_1_0) -> 
      (match _lh_check_perim_arg2_0 with
        | `LH_P2(_lh_check_perim_LH_P2_0_1, _lh_check_perim_LH_P2_1_1) -> 
          (let rec col1_0 = ((let rec _lh_point_colour_LH_P2_1_1 = _lh_check_perim_LH_P2_1_0 in
            (let rec _lh_point_colour_LH_P2_0_1 = _lh_check_perim_LH_P2_0_0 in
              (fun _lh_dummy_0 -> 
                (((((check_radius_lh__d2 (np_lh__d2 _lh_point_colour_LH_P2_0_1)) (nq_lh__d2 _lh_point_colour_LH_P2_1_1)) 0) 0.0) 0.0)))) 99) in
            (let rec col2_0 = ((let rec _lh_point_colour_LH_P2_1_2 = _lh_check_perim_LH_P2_1_0 in
              (let rec _lh_point_colour_LH_P2_0_2 = _lh_check_perim_LH_P2_0_1 in
                (fun _lh_dummy_1 -> 
                  (((((check_radius_lh__d5 (np_lh__d5 _lh_point_colour_LH_P2_0_2)) (nq_lh__d5 _lh_point_colour_LH_P2_1_2)) 0) 0.0) 0.0)))) 99) in
              (let rec col3_0 = ((let rec _lh_point_colour_LH_P2_1_3 = _lh_check_perim_LH_P2_1_1 in
                (let rec _lh_point_colour_LH_P2_0_3 = _lh_check_perim_LH_P2_0_1 in
                  (fun _lh_dummy_2 -> 
                    (((((check_radius_lh__d3 (np_lh__d3 _lh_point_colour_LH_P2_0_3)) (nq_lh__d3 _lh_point_colour_LH_P2_1_3)) 0) 0.0) 0.0)))) 99) in
                (let rec col4_0 = ((let rec _lh_point_colour_LH_P2_1_4 = _lh_check_perim_LH_P2_1_1 in
                  (let rec _lh_point_colour_LH_P2_0_4 = _lh_check_perim_LH_P2_0_0 in
                    (fun _lh_dummy_3 -> 
                      (((((check_radius_lh__d1 (np_lh__d1 _lh_point_colour_LH_P2_0_4)) (nq_lh__d1 _lh_point_colour_LH_P2_1_4)) 0) 0.0) 0.0)))) 99) in
                  (let rec corners_diff_0 = (if (col1_0 = col2_0) then
                    (if (col1_0 = col3_0) then
                      (if (col1_0 = col4_0) then
                        false
                      else
                        true)
                    else
                      true)
                  else
                    true) in
                    (let rec check_line_0 = (fun xcyc_0 xdyd_0 -> 
                      (let rec _lh_matchIdent_2 = xcyc_0 in
                        (match _lh_matchIdent_2 with
                          | `LH_P2(_lh_check_perim_LH_P2_0_2, _lh_check_perim_LH_P2_1_2) -> 
                            (let rec _lh_matchIdent_3 = xdyd_0 in
                              (match _lh_matchIdent_3 with
                                | `LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3) -> 
                                  (let rec finished_0 = (if (match (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3)) with
                                    | `LH_P2(_lh_equalp_LH_P2_0_9, _lh_equalp_LH_P2_1_9) -> 
                                      ((right_lh__d2 _lh_equalp_LH_P2_0_9) _lh_equalp_LH_P2_1_9)
                                    | _ -> 
                                      (failwith "error")) then
                                    (_lh_check_perim_LH_P2_0_2 >= _lh_check_perim_LH_P2_0_1)
                                  else
                                    (if (match (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3)) with
                                      | `LH_P2(_lh_equalp_LH_P2_0_1_0, _lh_equalp_LH_P2_1_1_0) -> 
                                        ((down_lh__d1 _lh_equalp_LH_P2_0_1_0) _lh_equalp_LH_P2_1_1_0)
                                      | _ -> 
                                        (failwith "error")) then
                                      (_lh_check_perim_LH_P2_1_2 <= _lh_check_perim_LH_P2_1_1)
                                    else
                                      (if (match (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3)) with
                                        | `LH_P2(_lh_equalp_LH_P2_0_1_1, _lh_equalp_LH_P2_1_1_1) -> 
                                          ((left_lh__d2 _lh_equalp_LH_P2_0_1_1) _lh_equalp_LH_P2_1_1_1)
                                        | _ -> 
                                          (failwith "error")) then
                                        (_lh_check_perim_LH_P2_0_2 <= _lh_check_perim_LH_P2_0_0)
                                      else
                                        (_lh_check_perim_LH_P2_1_2 >= _lh_check_perim_LH_P2_1_0)))) in
                                    (if finished_0 then
                                      true
                                    else
                                      (if ((point_colour_lh__d4 (`LH_P2(_lh_check_perim_LH_P2_0_2, _lh_check_perim_LH_P2_1_2))) <> col1_0) then
                                        false
                                      else
                                        ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_2 + _lh_check_perim_LH_P2_0_3), (_lh_check_perim_LH_P2_1_2 + _lh_check_perim_LH_P2_1_3)))) (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))))))
                                | _ -> 
                                  (failwith "error")))
                          | _ -> 
                            (failwith "error")))) in
                      (let rec check_sides_0 = (if ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_0 + 1), _lh_check_perim_LH_P2_1_0))) right_lh__d1) then
                        (if ((check_line_0 (`LH_P2(_lh_check_perim_LH_P2_0_1, (_lh_check_perim_LH_P2_1_0 + 1)))) down_lh__d2) then
                          (if ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_1 - 1), _lh_check_perim_LH_P2_1_1))) left_lh__d1) then
                            (if ((check_line_0 (`LH_P2(_lh_check_perim_LH_P2_0_0, (_lh_check_perim_LH_P2_1_1 - 1)))) up_lh__d1) then
                              col1_0
                            else
                              (0 - 1))
                          else
                            (0 - 1))
                        else
                          (0 - 1))
                      else
                        (0 - 1)) in
                        (if ((let rec _lh_equalp_LH_P2_1_1_2 = _lh_check_perim_LH_P2_1_0 in
                          (let rec _lh_equalp_LH_P2_0_1_2 = _lh_check_perim_LH_P2_0_0 in
                            (fun _lh_equalp_arg2_4 -> 
                              ((_lh_equalp_arg2_4 _lh_equalp_LH_P2_0_1_2) _lh_equalp_LH_P2_1_1_2)))) (let rec _lh_equalp_LH_P2_1_1_3 = _lh_check_perim_LH_P2_1_1 in
                          (let rec _lh_equalp_LH_P2_0_1_3 = _lh_check_perim_LH_P2_0_1 in
                            (fun _lh_equalp_LH_P2_0_1_4 _lh_equalp_LH_P2_1_1_4 -> 
                              ((_lh_equalp_LH_P2_0_1_4 = _lh_equalp_LH_P2_0_1_3) && (_lh_equalp_LH_P2_1_1_4 = _lh_equalp_LH_P2_1_1_3)))))) then
                          ((let rec _lh_point_colour_LH_P2_1_5 = _lh_check_perim_LH_P2_1_0 in
                            (let rec _lh_point_colour_LH_P2_0_5 = _lh_check_perim_LH_P2_0_0 in
                              (fun _lh_dummy_4 -> 
                                (((((check_radius_lh__d6 (np_lh__d6 _lh_point_colour_LH_P2_0_5)) (nq_lh__d6 _lh_point_colour_LH_P2_1_5)) 0) 0.0) 0.0)))) 99)
                        else
                          (if corners_diff_0 then
                            (0 - 1)
                          else
                            check_sides_0)))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec build_tree_lh__d1 _lh_build_tree_arg1_0 _lh_build_tree_arg2_0 =
  (match _lh_build_tree_arg1_0 with
    | `LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0) -> 
      (match _lh_build_tree_arg2_0 with
        | `LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1) -> 
          (let rec rec_col_0 = ((check_perim_lh__d1 (`LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0))) (`LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1))) in
            (let rec split_0 = (if ((_lh_build_tree_LH_P2_0_1 - _lh_build_tree_LH_P2_0_0) >= (_lh_build_tree_LH_P2_1_1 - _lh_build_tree_LH_P2_1_0)) then
              (`LH_C('N', (`LH_C('S', (`LH_N)))))
            else
              (`LH_C('E', (`LH_C('W', (`LH_N)))))) in
              (let rec split_x_0 = ((_lh_build_tree_LH_P2_0_1 + _lh_build_tree_LH_P2_0_0) / 2) in
                (let rec split_y_0 = ((_lh_build_tree_LH_P2_1_1 + _lh_build_tree_LH_P2_1_0) / 2) in
                  (let rec nsp1_0 = (`LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0)) in
                    (let rec nsp2_0 = (`LH_P2(split_x_0, _lh_build_tree_LH_P2_1_1)) in
                      (let rec nsp3_0 = (`LH_P2((split_x_0 + 1), _lh_build_tree_LH_P2_1_0)) in
                        (let rec nsp4_0 = (`LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1)) in
                          (let rec ewp1_0 = (`LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0)) in
                            (let rec ewp2_0 = (`LH_P2(_lh_build_tree_LH_P2_0_1, split_y_0)) in
                              (let rec ewp3_0 = (`LH_P2(_lh_build_tree_LH_P2_0_0, (split_y_0 + 1))) in
                                (let rec ewp4_0 = (`LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1)) in
                                  (if (rec_col_0 <> (0 - 1)) then
                                    (`Leaf(rec_col_0))
                                  else
                                    (if ((strEq_lh__d1 split_0) (`LH_C('N', (`LH_C('S', (`LH_N)))))) then
                                      (`NS(((build_tree_lh__d1 nsp1_0) nsp2_0), ((build_tree_lh__d1 nsp3_0) nsp4_0)))
                                    else
                                      (`EW(((build_tree_lh__d1 ewp1_0) ewp2_0), ((build_tree_lh__d1 ewp3_0) ewp4_0)))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec max_lh__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec testMandel2_nofib_lh__d1 _lh_testMandel2_nofib_arg1_0 =
  (let rec size'_0 = ((max_lh__d1 (length_lh__d1 _lh_testMandel2_nofib_arg1_0)) size_lh__d1) in
    (let rec tree_0 = ((build_tree_lh__d1 (`LH_P2(0, 0))) (`LH_P2(size'_0, (size'_0 / 2)))) in
      (finite_lh__d1 tree_0)));;
end;;

