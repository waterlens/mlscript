

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec finite_lh _lh_finite_arg1_0 =
  (match _lh_finite_arg1_0 with
    | `Leaf(_lh_finite_Leaf_0_0) -> 
      (_lh_finite_Leaf_0_0 = _lh_finite_Leaf_0_0)
    | `NS(_lh_finite_NS_0_0, _lh_finite_NS_1_0) -> 
      ((finite_lh _lh_finite_NS_0_0) && (finite_lh _lh_finite_NS_1_0))
    | `EW(_lh_finite_EW_0_0, _lh_finite_EW_1_0) -> 
      ((finite_lh _lh_finite_EW_0_0) && (finite_lh _lh_finite_EW_1_0))
    | _ -> 
      (failwith "error"));;
let rec max_lh _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec length_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh t_0))
    | `LH_N -> 
      0);;
let rec size_lh =
  200;;
let rec right_lh =
  (`LH_P2(1, 0));;
let rec equalp_lh _lh_equalp_arg1_0 _lh_equalp_arg2_0 =
  (match _lh_equalp_arg1_0 with
    | `LH_P2(_lh_equalp_LH_P2_0_0, _lh_equalp_LH_P2_1_0) -> 
      (match _lh_equalp_arg2_0 with
        | `LH_P2(_lh_equalp_LH_P2_0_1, _lh_equalp_LH_P2_1_1) -> 
          ((_lh_equalp_LH_P2_0_0 = _lh_equalp_LH_P2_0_1) && (_lh_equalp_LH_P2_1_0 = _lh_equalp_LH_P2_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec up_lh =
  (`LH_P2(0, (0 - 1)));;
let rec down_lh =
  (`LH_P2(0, 1));;
let rec left_lh =
  (`LH_P2((0 - 1), 0));;
let rec m_lh =
  20;;
let rec num_cols_lh =
  26;;
let rec new_y_lh _lh_new_y_arg1_0 _lh_new_y_arg2_0 _lh_new_y_arg3_0 =
  (((2.0 *. _lh_new_y_arg1_0) *. _lh_new_y_arg2_0) +. _lh_new_y_arg3_0);;
let rec new_x_lh _lh_new_x_arg1_0 _lh_new_x_arg2_0 _lh_new_x_arg3_0 =
  (((_lh_new_x_arg1_0 *. _lh_new_x_arg1_0) -. (_lh_new_x_arg2_0 *. _lh_new_x_arg2_0)) +. _lh_new_x_arg3_0);;
let rec radius_lh _lh_radius_arg1_0 _lh_radius_arg2_0 =
  ((_lh_radius_arg1_0 *. _lh_radius_arg1_0) +. (_lh_radius_arg2_0 *. _lh_radius_arg2_0));;
let rec check_radius_lh _lh_check_radius_arg1_0 _lh_check_radius_arg2_0 _lh_check_radius_arg3_0 _lh_check_radius_arg4_0 _lh_check_radius_arg5_0 =
  (let rec xn_0 = (((new_x_lh _lh_check_radius_arg4_0) _lh_check_radius_arg5_0) _lh_check_radius_arg1_0) in
    (let rec yn_0 = (((new_y_lh _lh_check_radius_arg4_0) _lh_check_radius_arg5_0) _lh_check_radius_arg2_0) in
      (let rec r_0 = ((radius_lh xn_0) yn_0) in
        (let rec kp_0 = (_lh_check_radius_arg3_0 + 1) in
          (if (kp_0 = num_cols_lh) then
            0
          else
            (if (r_0 > (float_of_int m_lh)) then
              kp_0
            else
              (((((check_radius_lh _lh_check_radius_arg1_0) _lh_check_radius_arg2_0) kp_0) xn_0) yn_0)))))));;
let rec pmn_lh =
  (0.0 -. 2.25);;
let rec pmx_lh =
  0.75;;
let rec delta_p_lh =
  ((pmx_lh -. pmn_lh) /. (float_of_int (size_lh - 1)));;
let rec np_lh _lh_np_arg1_0 =
  (pmn_lh +. ((float_of_int _lh_np_arg1_0) *. delta_p_lh));;
let rec qmx_lh =
  1.5;;
let rec qmn_lh =
  (0.0 -. 1.5);;
let rec delta_q_lh =
  ((qmx_lh -. qmn_lh) /. (float_of_int (size_lh - 1)));;
let rec nq_lh _lh_nq_arg1_0 =
  (qmn_lh +. ((float_of_int _lh_nq_arg1_0) *. delta_q_lh));;
let rec point_colour_lh _lh_point_colour_arg1_0 =
  (match _lh_point_colour_arg1_0 with
    | `LH_P2(_lh_point_colour_LH_P2_0_0, _lh_point_colour_LH_P2_1_0) -> 
      (((((check_radius_lh (np_lh _lh_point_colour_LH_P2_0_0)) (nq_lh _lh_point_colour_LH_P2_1_0)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"));;
let rec check_perim_lh _lh_check_perim_arg1_0 _lh_check_perim_arg2_0 =
  (match _lh_check_perim_arg1_0 with
    | `LH_P2(_lh_check_perim_LH_P2_0_0, _lh_check_perim_LH_P2_1_0) -> 
      (match _lh_check_perim_arg2_0 with
        | `LH_P2(_lh_check_perim_LH_P2_0_1, _lh_check_perim_LH_P2_1_1) -> 
          (let rec col1_0 = (point_colour_lh (`LH_P2(_lh_check_perim_LH_P2_0_0, _lh_check_perim_LH_P2_1_0))) in
            (let rec col2_0 = (point_colour_lh (`LH_P2(_lh_check_perim_LH_P2_0_1, _lh_check_perim_LH_P2_1_0))) in
              (let rec col3_0 = (point_colour_lh (`LH_P2(_lh_check_perim_LH_P2_0_1, _lh_check_perim_LH_P2_1_1))) in
                (let rec col4_0 = (point_colour_lh (`LH_P2(_lh_check_perim_LH_P2_0_0, _lh_check_perim_LH_P2_1_1))) in
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
                      (let rec _lh_matchIdent_0 = xcyc_0 in
                        (match _lh_matchIdent_0 with
                          | `LH_P2(_lh_check_perim_LH_P2_0_2, _lh_check_perim_LH_P2_1_2) -> 
                            (let rec _lh_matchIdent_1 = xdyd_0 in
                              (match _lh_matchIdent_1 with
                                | `LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3) -> 
                                  (let rec finished_0 = (if ((equalp_lh (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))) right_lh) then
                                    (_lh_check_perim_LH_P2_0_2 >= _lh_check_perim_LH_P2_0_1)
                                  else
                                    (if ((equalp_lh (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))) down_lh) then
                                      (_lh_check_perim_LH_P2_1_2 <= _lh_check_perim_LH_P2_1_1)
                                    else
                                      (if ((equalp_lh (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))) left_lh) then
                                        (_lh_check_perim_LH_P2_0_2 <= _lh_check_perim_LH_P2_0_0)
                                      else
                                        (_lh_check_perim_LH_P2_1_2 >= _lh_check_perim_LH_P2_1_0)))) in
                                    (if finished_0 then
                                      true
                                    else
                                      (if ((point_colour_lh (`LH_P2(_lh_check_perim_LH_P2_0_2, _lh_check_perim_LH_P2_1_2))) <> col1_0) then
                                        false
                                      else
                                        ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_2 + _lh_check_perim_LH_P2_0_3), (_lh_check_perim_LH_P2_1_2 + _lh_check_perim_LH_P2_1_3)))) (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))))))
                                | _ -> 
                                  (failwith "error")))
                          | _ -> 
                            (failwith "error")))) in
                      (let rec check_sides_0 = (if ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_0 + 1), _lh_check_perim_LH_P2_1_0))) right_lh) then
                        (if ((check_line_0 (`LH_P2(_lh_check_perim_LH_P2_0_1, (_lh_check_perim_LH_P2_1_0 + 1)))) down_lh) then
                          (if ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_1 - 1), _lh_check_perim_LH_P2_1_1))) left_lh) then
                            (if ((check_line_0 (`LH_P2(_lh_check_perim_LH_P2_0_0, (_lh_check_perim_LH_P2_1_1 - 1)))) up_lh) then
                              col1_0
                            else
                              (0 - 1))
                          else
                            (0 - 1))
                        else
                          (0 - 1))
                      else
                        (0 - 1)) in
                        (if ((equalp_lh (`LH_P2(_lh_check_perim_LH_P2_0_0, _lh_check_perim_LH_P2_1_0))) (`LH_P2(_lh_check_perim_LH_P2_0_1, _lh_check_perim_LH_P2_1_1))) then
                          (point_colour_lh (`LH_P2(_lh_check_perim_LH_P2_0_0, _lh_check_perim_LH_P2_1_0)))
                        else
                          (if corners_diff_0 then
                            (0 - 1)
                          else
                            check_sides_0)))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec strEq_lh _lh_strEq_arg1_0 _lh_strEq_arg2_0 =
  (match _lh_strEq_arg1_0 with
    | `LH_C(_lh_strEq_LH_C_0_0, _lh_strEq_LH_C_1_0) -> 
      (let rec _lh_matchIdent_2 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_2 with
          | `LH_C(_lh_strEq_LH_C_0_1, _lh_strEq_LH_C_1_1) -> 
            (if (_lh_strEq_LH_C_0_0 = _lh_strEq_LH_C_0_1) then
              ((strEq_lh _lh_strEq_LH_C_1_0) _lh_strEq_LH_C_1_1)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_3 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_3 with
          | `LH_C(_lh_strEq_LH_C_0_2, _lh_strEq_LH_C_1_2) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec build_tree_lh _lh_build_tree_arg1_0 _lh_build_tree_arg2_0 =
  (match _lh_build_tree_arg1_0 with
    | `LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0) -> 
      (match _lh_build_tree_arg2_0 with
        | `LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1) -> 
          (let rec rec_col_0 = ((check_perim_lh (`LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0))) (`LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1))) in
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
                                    (if ((strEq_lh split_0) (`LH_C('N', (`LH_C('S', (`LH_N)))))) then
                                      (`NS(((build_tree_lh nsp1_0) nsp2_0), ((build_tree_lh nsp3_0) nsp4_0)))
                                    else
                                      (`EW(((build_tree_lh ewp1_0) ewp2_0), ((build_tree_lh ewp3_0) ewp4_0)))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec testMandel2_nofib_lh _lh_testMandel2_nofib_arg1_0 =
  (let rec size'_0 = ((max_lh (length_lh _lh_testMandel2_nofib_arg1_0)) size_lh) in
    (let rec tree_0 = ((build_tree_lh (`LH_P2(0, 0))) (`LH_P2(size'_0, (size'_0 / 2)))) in
      (finite_lh tree_0)));;
end;;

