

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec down__d0 =
  (let rec _lh_equalp_LH_P2_1_2 = 1 in
    (let rec _lh_equalp_LH_P2_0_2 = 0 in
      (fun _lh_equalp_LH_P2_0_3 _lh_equalp_LH_P2_1_3 -> 
        ((_lh_equalp_LH_P2_0_3 = _lh_equalp_LH_P2_0_2) && (_lh_equalp_LH_P2_1_3 = _lh_equalp_LH_P2_1_2)))));;
let rec down__d1 =
  (`LH_P2(0, 1));;
let rec equalp__d0 _lh_equalp_arg1_1 _lh_equalp_arg2_1 =
  (match _lh_equalp_arg1_1 with
    | `LH_P2(_lh_equalp_LH_P2_0_4, _lh_equalp_LH_P2_1_4) -> 
      ((_lh_equalp_arg2_1 _lh_equalp_LH_P2_0_4) _lh_equalp_LH_P2_1_4)
    | _ -> 
      (failwith "error"));;
let rec equalp__d1 _lh_equalp_arg1_2 _lh_equalp_arg2_2 =
  (match _lh_equalp_arg1_2 with
    | `LH_P2(_lh_equalp_LH_P2_0_5, _lh_equalp_LH_P2_1_5) -> 
      ((_lh_equalp_arg2_2 _lh_equalp_LH_P2_0_5) _lh_equalp_LH_P2_1_5)
    | _ -> 
      (failwith "error"));;
let rec equalp__d2 _lh_equalp_arg1_3 _lh_equalp_arg2_4 =
  (match _lh_equalp_arg1_3 with
    | `LH_P2(_lh_equalp_LH_P2_0_1_1, _lh_equalp_LH_P2_1_1_1) -> 
      ((_lh_equalp_arg2_4 _lh_equalp_LH_P2_0_1_1) _lh_equalp_LH_P2_1_1_1)
    | _ -> 
      (failwith "error"));;
let rec equalp__d3 _lh_equalp_arg1_0 _lh_equalp_arg2_0 =
  (_lh_equalp_arg1_0 _lh_equalp_arg2_0);;
let rec finite__d0 _lh_finite_arg1_0 =
  (match _lh_finite_arg1_0 with
    | `Leaf(_lh_finite_Leaf_0_0) -> 
      (_lh_finite_Leaf_0_0 = _lh_finite_Leaf_0_0)
    | `NS(_lh_finite_NS_0_0, _lh_finite_NS_1_0) -> 
      ((finite__d0 _lh_finite_NS_0_0) && (finite__d0 _lh_finite_NS_1_0))
    | `EW(_lh_finite_EW_0_0, _lh_finite_EW_1_0) -> 
      ((finite__d0 _lh_finite_EW_0_0) && (finite__d0 _lh_finite_EW_1_0))
    | _ -> 
      (failwith "error"));;
let rec left__d0 =
  (let rec _lh_equalp_LH_P2_1_9 = 0 in
    (let rec _lh_equalp_LH_P2_0_9 = (0 - 1) in
      (fun _lh_equalp_LH_P2_0_1_0 _lh_equalp_LH_P2_1_1_0 -> 
        ((_lh_equalp_LH_P2_0_1_0 = _lh_equalp_LH_P2_0_9) && (_lh_equalp_LH_P2_1_1_0 = _lh_equalp_LH_P2_1_9)))));;
let rec left__d1 =
  (`LH_P2((0 - 1), 0));;
let rec length__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length__d0 t_0))
    | `LH_N -> 
      0);;
let rec m__d0 =
  20;;
let rec m__d1 =
  20;;
let rec m__d2 =
  20;;
let rec m__d3 =
  20;;
let rec m__d4 =
  20;;
let rec m__d5 =
  20;;
let rec max__d0 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec new_x__d0 _lh_new_x_arg1_0 _lh_new_x_arg2_0 _lh_new_x_arg3_0 =
  (((_lh_new_x_arg1_0 *. _lh_new_x_arg1_0) -. (_lh_new_x_arg2_0 *. _lh_new_x_arg2_0)) +. _lh_new_x_arg3_0);;
let rec new_x__d1 _lh_new_x_arg1_5 _lh_new_x_arg2_5 _lh_new_x_arg3_5 =
  (((_lh_new_x_arg1_5 *. _lh_new_x_arg1_5) -. (_lh_new_x_arg2_5 *. _lh_new_x_arg2_5)) +. _lh_new_x_arg3_5);;
let rec new_x__d2 _lh_new_x_arg1_3 _lh_new_x_arg2_3 _lh_new_x_arg3_3 =
  (((_lh_new_x_arg1_3 *. _lh_new_x_arg1_3) -. (_lh_new_x_arg2_3 *. _lh_new_x_arg2_3)) +. _lh_new_x_arg3_3);;
let rec new_x__d3 _lh_new_x_arg1_1 _lh_new_x_arg2_1 _lh_new_x_arg3_1 =
  (((_lh_new_x_arg1_1 *. _lh_new_x_arg1_1) -. (_lh_new_x_arg2_1 *. _lh_new_x_arg2_1)) +. _lh_new_x_arg3_1);;
let rec new_x__d4 _lh_new_x_arg1_4 _lh_new_x_arg2_4 _lh_new_x_arg3_4 =
  (((_lh_new_x_arg1_4 *. _lh_new_x_arg1_4) -. (_lh_new_x_arg2_4 *. _lh_new_x_arg2_4)) +. _lh_new_x_arg3_4);;
let rec new_x__d5 _lh_new_x_arg1_2 _lh_new_x_arg2_2 _lh_new_x_arg3_2 =
  (((_lh_new_x_arg1_2 *. _lh_new_x_arg1_2) -. (_lh_new_x_arg2_2 *. _lh_new_x_arg2_2)) +. _lh_new_x_arg3_2);;
let rec new_y__d0 _lh_new_y_arg1_5 _lh_new_y_arg2_5 _lh_new_y_arg3_5 =
  (((2.0 *. _lh_new_y_arg1_5) *. _lh_new_y_arg2_5) +. _lh_new_y_arg3_5);;
let rec new_y__d1 _lh_new_y_arg1_3 _lh_new_y_arg2_3 _lh_new_y_arg3_3 =
  (((2.0 *. _lh_new_y_arg1_3) *. _lh_new_y_arg2_3) +. _lh_new_y_arg3_3);;
let rec new_y__d2 _lh_new_y_arg1_0 _lh_new_y_arg2_0 _lh_new_y_arg3_0 =
  (((2.0 *. _lh_new_y_arg1_0) *. _lh_new_y_arg2_0) +. _lh_new_y_arg3_0);;
let rec new_y__d3 _lh_new_y_arg1_4 _lh_new_y_arg2_4 _lh_new_y_arg3_4 =
  (((2.0 *. _lh_new_y_arg1_4) *. _lh_new_y_arg2_4) +. _lh_new_y_arg3_4);;
let rec new_y__d4 _lh_new_y_arg1_1 _lh_new_y_arg2_1 _lh_new_y_arg3_1 =
  (((2.0 *. _lh_new_y_arg1_1) *. _lh_new_y_arg2_1) +. _lh_new_y_arg3_1);;
let rec new_y__d5 _lh_new_y_arg1_2 _lh_new_y_arg2_2 _lh_new_y_arg3_2 =
  (((2.0 *. _lh_new_y_arg1_2) *. _lh_new_y_arg2_2) +. _lh_new_y_arg3_2);;
let rec num_cols__d0 =
  26;;
let rec num_cols__d1 =
  26;;
let rec num_cols__d2 =
  26;;
let rec num_cols__d3 =
  26;;
let rec num_cols__d4 =
  26;;
let rec num_cols__d5 =
  26;;
let rec pmn__d0 =
  (0.0 -. 2.25);;
let rec pmn__d1 =
  (0.0 -. 2.25);;
let rec pmn__d1_d0 =
  (0.0 -. 2.25);;
let rec pmn__d1_d1 =
  (0.0 -. 2.25);;
let rec pmn__d2 =
  (0.0 -. 2.25);;
let rec pmn__d3 =
  (0.0 -. 2.25);;
let rec pmn__d4 =
  (0.0 -. 2.25);;
let rec pmn__d5 =
  (0.0 -. 2.25);;
let rec pmn__d6 =
  (0.0 -. 2.25);;
let rec pmn__d7 =
  (0.0 -. 2.25);;
let rec pmn__d8 =
  (0.0 -. 2.25);;
let rec pmn__d9 =
  (0.0 -. 2.25);;
let rec pmx__d0 =
  0.75;;
let rec pmx__d1 =
  0.75;;
let rec pmx__d2 =
  0.75;;
let rec pmx__d3 =
  0.75;;
let rec pmx__d4 =
  0.75;;
let rec pmx__d5 =
  0.75;;
let rec point_colour__d0 _lh_point_colour_arg1_1 =
  (_lh_point_colour_arg1_1 99);;
let rec point_colour__d1 _lh_point_colour_arg1_3 =
  (_lh_point_colour_arg1_3 99);;
let rec point_colour__d2 _lh_point_colour_arg1_5 =
  (_lh_point_colour_arg1_5 99);;
let rec point_colour__d3 _lh_point_colour_arg1_2 =
  (_lh_point_colour_arg1_2 99);;
let rec point_colour__d5 _lh_point_colour_arg1_0 =
  (_lh_point_colour_arg1_0 99);;
let rec qmn__d0 =
  (0.0 -. 1.5);;
let rec qmn__d1 =
  (0.0 -. 1.5);;
let rec qmn__d1_d0 =
  (0.0 -. 1.5);;
let rec qmn__d1_d1 =
  (0.0 -. 1.5);;
let rec qmn__d2 =
  (0.0 -. 1.5);;
let rec qmn__d3 =
  (0.0 -. 1.5);;
let rec qmn__d4 =
  (0.0 -. 1.5);;
let rec qmn__d5 =
  (0.0 -. 1.5);;
let rec qmn__d6 =
  (0.0 -. 1.5);;
let rec qmn__d7 =
  (0.0 -. 1.5);;
let rec qmn__d8 =
  (0.0 -. 1.5);;
let rec qmn__d9 =
  (0.0 -. 1.5);;
let rec qmx__d0 =
  1.5;;
let rec qmx__d1 =
  1.5;;
let rec qmx__d2 =
  1.5;;
let rec qmx__d3 =
  1.5;;
let rec qmx__d4 =
  1.5;;
let rec qmx__d5 =
  1.5;;
let rec radius__d0 _lh_radius_arg1_0 _lh_radius_arg2_0 =
  ((_lh_radius_arg1_0 *. _lh_radius_arg1_0) +. (_lh_radius_arg2_0 *. _lh_radius_arg2_0));;
let rec radius__d1 _lh_radius_arg1_5 _lh_radius_arg2_5 =
  ((_lh_radius_arg1_5 *. _lh_radius_arg1_5) +. (_lh_radius_arg2_5 *. _lh_radius_arg2_5));;
let rec radius__d2 _lh_radius_arg1_1 _lh_radius_arg2_1 =
  ((_lh_radius_arg1_1 *. _lh_radius_arg1_1) +. (_lh_radius_arg2_1 *. _lh_radius_arg2_1));;
let rec radius__d3 _lh_radius_arg1_4 _lh_radius_arg2_4 =
  ((_lh_radius_arg1_4 *. _lh_radius_arg1_4) +. (_lh_radius_arg2_4 *. _lh_radius_arg2_4));;
let rec radius__d4 _lh_radius_arg1_2 _lh_radius_arg2_2 =
  ((_lh_radius_arg1_2 *. _lh_radius_arg1_2) +. (_lh_radius_arg2_2 *. _lh_radius_arg2_2));;
let rec radius__d5 _lh_radius_arg1_3 _lh_radius_arg2_3 =
  ((_lh_radius_arg1_3 *. _lh_radius_arg1_3) +. (_lh_radius_arg2_3 *. _lh_radius_arg2_3));;
let rec right__d0 =
  (let rec _lh_equalp_LH_P2_1_0 = 0 in
    (let rec _lh_equalp_LH_P2_0_0 = 1 in
      (fun _lh_equalp_LH_P2_0_1 _lh_equalp_LH_P2_1_1 -> 
        ((_lh_equalp_LH_P2_0_1 = _lh_equalp_LH_P2_0_0) && (_lh_equalp_LH_P2_1_1 = _lh_equalp_LH_P2_1_0)))));;
let rec right__d1 =
  (`LH_P2(1, 0));;
let rec size__d0 =
  200;;
let rec size__d1 =
  200;;
let rec size__d1_d0 =
  200;;
let rec size__d1_d1 =
  200;;
let rec size__d1_d2 =
  200;;
let rec size__d2 =
  200;;
let rec size__d3 =
  200;;
let rec size__d4 =
  200;;
let rec size__d5 =
  200;;
let rec size__d6 =
  200;;
let rec size__d7 =
  200;;
let rec size__d8 =
  200;;
let rec size__d9 =
  200;;
let rec strEq__d0 _lh_strEq_arg1_0 _lh_strEq_arg2_0 =
  (match _lh_strEq_arg1_0 with
    | `LH_C(_lh_strEq_LH_C_0_0, _lh_strEq_LH_C_1_0) -> 
      (let rec _lh_matchIdent_0 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_0 with
          | `LH_C(_lh_strEq_LH_C_0_1, _lh_strEq_LH_C_1_1) -> 
            (if (_lh_strEq_LH_C_0_0 = _lh_strEq_LH_C_0_1) then
              ((strEq__d0 _lh_strEq_LH_C_1_0) _lh_strEq_LH_C_1_1)
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
let rec up__d0 =
  (`LH_P2(0, (0 - 1)));;
let rec build_tree__d0 _lh_build_tree_arg1_0 _lh_build_tree_arg2_0 =
  (match _lh_build_tree_arg1_0 with
    | `LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0) -> 
      (match _lh_build_tree_arg2_0 with
        | `LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1) -> 
          (let rec rec_col_0 = ((check_perim__d0 (`LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0))) (`LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1))) in
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
                                    (if ((strEq__d0 split_0) (`LH_C('N', (`LH_C('S', (`LH_N)))))) then
                                      (`NS(((build_tree__d0 nsp1_0) nsp2_0), ((build_tree__d0 nsp3_0) nsp4_0)))
                                    else
                                      (`EW(((build_tree__d0 ewp1_0) ewp2_0), ((build_tree__d0 ewp3_0) ewp4_0)))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and check_perim__d0 _lh_check_perim_arg1_0 _lh_check_perim_arg2_0 =
  (match _lh_check_perim_arg1_0 with
    | `LH_P2(_lh_check_perim_LH_P2_0_0, _lh_check_perim_LH_P2_1_0) -> 
      (match _lh_check_perim_arg2_0 with
        | `LH_P2(_lh_check_perim_LH_P2_0_1, _lh_check_perim_LH_P2_1_1) -> 
          (let rec col1_0 = (point_colour__d0 (let rec _lh_point_colour_LH_P2_1_0 = _lh_check_perim_LH_P2_1_0 in
            (let rec _lh_point_colour_LH_P2_0_0 = _lh_check_perim_LH_P2_0_0 in
              (fun _lh_dummy_0 -> 
                (((((check_radius__d0 (np__d0 _lh_point_colour_LH_P2_0_0)) (nq__d0 _lh_point_colour_LH_P2_1_0)) 0) 0.0) 0.0))))) in
            (let rec col2_0 = (point_colour__d1 (let rec _lh_point_colour_LH_P2_1_1 = _lh_check_perim_LH_P2_1_0 in
              (let rec _lh_point_colour_LH_P2_0_1 = _lh_check_perim_LH_P2_0_1 in
                (fun _lh_dummy_1 -> 
                  (((((check_radius__d1 (np__d1 _lh_point_colour_LH_P2_0_1)) (nq__d1 _lh_point_colour_LH_P2_1_1)) 0) 0.0) 0.0))))) in
              (let rec col3_0 = (point_colour__d2 (let rec _lh_point_colour_LH_P2_1_2 = _lh_check_perim_LH_P2_1_1 in
                (let rec _lh_point_colour_LH_P2_0_2 = _lh_check_perim_LH_P2_0_1 in
                  (fun _lh_dummy_2 -> 
                    (((((check_radius__d2 (np__d2 _lh_point_colour_LH_P2_0_2)) (nq__d2 _lh_point_colour_LH_P2_1_2)) 0) 0.0) 0.0))))) in
                (let rec col4_0 = (point_colour__d3 (let rec _lh_point_colour_LH_P2_1_3 = _lh_check_perim_LH_P2_1_1 in
                  (let rec _lh_point_colour_LH_P2_0_3 = _lh_check_perim_LH_P2_0_0 in
                    (fun _lh_dummy_3 -> 
                      (((((check_radius__d3 (np__d3 _lh_point_colour_LH_P2_0_3)) (nq__d3 _lh_point_colour_LH_P2_1_3)) 0) 0.0) 0.0))))) in
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
                                  (let rec finished_0 = (if ((equalp__d0 (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))) right__d0) then
                                    (_lh_check_perim_LH_P2_0_2 >= _lh_check_perim_LH_P2_0_1)
                                  else
                                    (if ((equalp__d1 (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))) down__d0) then
                                      (_lh_check_perim_LH_P2_1_2 <= _lh_check_perim_LH_P2_1_1)
                                    else
                                      (if ((equalp__d2 (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))) left__d0) then
                                        (_lh_check_perim_LH_P2_0_2 <= _lh_check_perim_LH_P2_0_0)
                                      else
                                        (_lh_check_perim_LH_P2_1_2 >= _lh_check_perim_LH_P2_1_0)))) in
                                    (if finished_0 then
                                      true
                                    else
                                      (if ((point_colour__d4 (`LH_P2(_lh_check_perim_LH_P2_0_2, _lh_check_perim_LH_P2_1_2))) <> col1_0) then
                                        false
                                      else
                                        ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_2 + _lh_check_perim_LH_P2_0_3), (_lh_check_perim_LH_P2_1_2 + _lh_check_perim_LH_P2_1_3)))) (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))))))
                                | _ -> 
                                  (failwith "error")))
                          | _ -> 
                            (failwith "error")))) in
                      (let rec check_sides_0 = (if ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_0 + 1), _lh_check_perim_LH_P2_1_0))) right__d1) then
                        (if ((check_line_0 (`LH_P2(_lh_check_perim_LH_P2_0_1, (_lh_check_perim_LH_P2_1_0 + 1)))) down__d1) then
                          (if ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_1 - 1), _lh_check_perim_LH_P2_1_1))) left__d1) then
                            (if ((check_line_0 (`LH_P2(_lh_check_perim_LH_P2_0_0, (_lh_check_perim_LH_P2_1_1 - 1)))) up__d0) then
                              col1_0
                            else
                              (0 - 1))
                          else
                            (0 - 1))
                        else
                          (0 - 1))
                      else
                        (0 - 1)) in
                        (if ((equalp__d3 (let rec _lh_equalp_LH_P2_1_6 = _lh_check_perim_LH_P2_1_0 in
                          (let rec _lh_equalp_LH_P2_0_6 = _lh_check_perim_LH_P2_0_0 in
                            (fun _lh_equalp_arg2_3 -> 
                              ((_lh_equalp_arg2_3 _lh_equalp_LH_P2_0_6) _lh_equalp_LH_P2_1_6))))) (let rec _lh_equalp_LH_P2_1_7 = _lh_check_perim_LH_P2_1_1 in
                          (let rec _lh_equalp_LH_P2_0_7 = _lh_check_perim_LH_P2_0_1 in
                            (fun _lh_equalp_LH_P2_0_8 _lh_equalp_LH_P2_1_8 -> 
                              ((_lh_equalp_LH_P2_0_8 = _lh_equalp_LH_P2_0_7) && (_lh_equalp_LH_P2_1_8 = _lh_equalp_LH_P2_1_7)))))) then
                          (point_colour__d5 (let rec _lh_point_colour_LH_P2_1_4 = _lh_check_perim_LH_P2_1_0 in
                            (let rec _lh_point_colour_LH_P2_0_4 = _lh_check_perim_LH_P2_0_0 in
                              (fun _lh_dummy_4 -> 
                                (((((check_radius__d5 (np__d5 _lh_point_colour_LH_P2_0_4)) (nq__d5 _lh_point_colour_LH_P2_1_4)) 0) 0.0) 0.0)))))
                        else
                          (if corners_diff_0 then
                            (0 - 1)
                          else
                            check_sides_0)))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and check_radius__d0 _lh_check_radius_arg1_5 _lh_check_radius_arg2_5 _lh_check_radius_arg3_5 _lh_check_radius_arg4_5 _lh_check_radius_arg5_5 =
  (let rec xn_5 = (((new_x__d0 _lh_check_radius_arg4_5) _lh_check_radius_arg5_5) _lh_check_radius_arg1_5) in
    (let rec yn_5 = (((new_y__d0 _lh_check_radius_arg4_5) _lh_check_radius_arg5_5) _lh_check_radius_arg2_5) in
      (let rec r_5 = ((radius__d0 xn_5) yn_5) in
        (let rec kp_5 = (_lh_check_radius_arg3_5 + 1) in
          (if (kp_5 = num_cols__d0) then
            0
          else
            (if (r_5 > (float_of_int m__d0)) then
              kp_5
            else
              (((((check_radius__d0 _lh_check_radius_arg1_5) _lh_check_radius_arg2_5) kp_5) xn_5) yn_5)))))))
and check_radius__d1 _lh_check_radius_arg1_2 _lh_check_radius_arg2_2 _lh_check_radius_arg3_2 _lh_check_radius_arg4_2 _lh_check_radius_arg5_2 =
  (let rec xn_2 = (((new_x__d1 _lh_check_radius_arg4_2) _lh_check_radius_arg5_2) _lh_check_radius_arg1_2) in
    (let rec yn_2 = (((new_y__d1 _lh_check_radius_arg4_2) _lh_check_radius_arg5_2) _lh_check_radius_arg2_2) in
      (let rec r_2 = ((radius__d1 xn_2) yn_2) in
        (let rec kp_2 = (_lh_check_radius_arg3_2 + 1) in
          (if (kp_2 = num_cols__d1) then
            0
          else
            (if (r_2 > (float_of_int m__d1)) then
              kp_2
            else
              (((((check_radius__d1 _lh_check_radius_arg1_2) _lh_check_radius_arg2_2) kp_2) xn_2) yn_2)))))))
and check_radius__d2 _lh_check_radius_arg1_4 _lh_check_radius_arg2_4 _lh_check_radius_arg3_4 _lh_check_radius_arg4_4 _lh_check_radius_arg5_4 =
  (let rec xn_4 = (((new_x__d2 _lh_check_radius_arg4_4) _lh_check_radius_arg5_4) _lh_check_radius_arg1_4) in
    (let rec yn_4 = (((new_y__d2 _lh_check_radius_arg4_4) _lh_check_radius_arg5_4) _lh_check_radius_arg2_4) in
      (let rec r_4 = ((radius__d2 xn_4) yn_4) in
        (let rec kp_4 = (_lh_check_radius_arg3_4 + 1) in
          (if (kp_4 = num_cols__d2) then
            0
          else
            (if (r_4 > (float_of_int m__d2)) then
              kp_4
            else
              (((((check_radius__d2 _lh_check_radius_arg1_4) _lh_check_radius_arg2_4) kp_4) xn_4) yn_4)))))))
and check_radius__d3 _lh_check_radius_arg1_0 _lh_check_radius_arg2_0 _lh_check_radius_arg3_0 _lh_check_radius_arg4_0 _lh_check_radius_arg5_0 =
  (let rec xn_0 = (((new_x__d3 _lh_check_radius_arg4_0) _lh_check_radius_arg5_0) _lh_check_radius_arg1_0) in
    (let rec yn_0 = (((new_y__d3 _lh_check_radius_arg4_0) _lh_check_radius_arg5_0) _lh_check_radius_arg2_0) in
      (let rec r_0 = ((radius__d3 xn_0) yn_0) in
        (let rec kp_0 = (_lh_check_radius_arg3_0 + 1) in
          (if (kp_0 = num_cols__d3) then
            0
          else
            (if (r_0 > (float_of_int m__d3)) then
              kp_0
            else
              (((((check_radius__d3 _lh_check_radius_arg1_0) _lh_check_radius_arg2_0) kp_0) xn_0) yn_0)))))))
and check_radius__d4 _lh_check_radius_arg1_3 _lh_check_radius_arg2_3 _lh_check_radius_arg3_3 _lh_check_radius_arg4_3 _lh_check_radius_arg5_3 =
  (let rec xn_3 = (((new_x__d4 _lh_check_radius_arg4_3) _lh_check_radius_arg5_3) _lh_check_radius_arg1_3) in
    (let rec yn_3 = (((new_y__d4 _lh_check_radius_arg4_3) _lh_check_radius_arg5_3) _lh_check_radius_arg2_3) in
      (let rec r_3 = ((radius__d4 xn_3) yn_3) in
        (let rec kp_3 = (_lh_check_radius_arg3_3 + 1) in
          (if (kp_3 = num_cols__d4) then
            0
          else
            (if (r_3 > (float_of_int m__d4)) then
              kp_3
            else
              (((((check_radius__d4 _lh_check_radius_arg1_3) _lh_check_radius_arg2_3) kp_3) xn_3) yn_3)))))))
and check_radius__d5 _lh_check_radius_arg1_1 _lh_check_radius_arg2_1 _lh_check_radius_arg3_1 _lh_check_radius_arg4_1 _lh_check_radius_arg5_1 =
  (let rec xn_1 = (((new_x__d5 _lh_check_radius_arg4_1) _lh_check_radius_arg5_1) _lh_check_radius_arg1_1) in
    (let rec yn_1 = (((new_y__d5 _lh_check_radius_arg4_1) _lh_check_radius_arg5_1) _lh_check_radius_arg2_1) in
      (let rec r_1 = ((radius__d5 xn_1) yn_1) in
        (let rec kp_1 = (_lh_check_radius_arg3_1 + 1) in
          (if (kp_1 = num_cols__d5) then
            0
          else
            (if (r_1 > (float_of_int m__d5)) then
              kp_1
            else
              (((((check_radius__d5 _lh_check_radius_arg1_1) _lh_check_radius_arg2_1) kp_1) xn_1) yn_1)))))))
and delta_p__d0 =
  ((pmx__d0 -. pmn__d0) /. (float_of_int (size__d0 - 1)))
and delta_p__d1 =
  ((pmx__d1 -. pmn__d2) /. (float_of_int (size__d2 - 1)))
and delta_p__d2 =
  ((pmx__d2 -. pmn__d4) /. (float_of_int (size__d4 - 1)))
and delta_p__d3 =
  ((pmx__d3 -. pmn__d6) /. (float_of_int (size__d6 - 1)))
and delta_p__d4 =
  ((pmx__d4 -. pmn__d8) /. (float_of_int (size__d8 - 1)))
and delta_p__d5 =
  ((pmx__d5 -. pmn__d1_d0) /. (float_of_int (size__d1_d0 - 1)))
and delta_q__d0 =
  ((qmx__d0 -. qmn__d0) /. (float_of_int (size__d1 - 1)))
and delta_q__d1 =
  ((qmx__d1 -. qmn__d2) /. (float_of_int (size__d3 - 1)))
and delta_q__d2 =
  ((qmx__d2 -. qmn__d4) /. (float_of_int (size__d5 - 1)))
and delta_q__d3 =
  ((qmx__d3 -. qmn__d6) /. (float_of_int (size__d7 - 1)))
and delta_q__d4 =
  ((qmx__d4 -. qmn__d8) /. (float_of_int (size__d9 - 1)))
and delta_q__d5 =
  ((qmx__d5 -. qmn__d1_d0) /. (float_of_int (size__d1_d1 - 1)))
and np__d0 _lh_np_arg1_4 =
  (pmn__d1 +. ((float_of_int _lh_np_arg1_4) *. delta_p__d0))
and np__d1 _lh_np_arg1_0 =
  (pmn__d3 +. ((float_of_int _lh_np_arg1_0) *. delta_p__d1))
and np__d2 _lh_np_arg1_1 =
  (pmn__d5 +. ((float_of_int _lh_np_arg1_1) *. delta_p__d2))
and np__d3 _lh_np_arg1_3 =
  (pmn__d7 +. ((float_of_int _lh_np_arg1_3) *. delta_p__d3))
and np__d4 _lh_np_arg1_5 =
  (pmn__d9 +. ((float_of_int _lh_np_arg1_5) *. delta_p__d4))
and np__d5 _lh_np_arg1_2 =
  (pmn__d1_d1 +. ((float_of_int _lh_np_arg1_2) *. delta_p__d5))
and nq__d0 _lh_nq_arg1_1 =
  (qmn__d1 +. ((float_of_int _lh_nq_arg1_1) *. delta_q__d0))
and nq__d1 _lh_nq_arg1_4 =
  (qmn__d3 +. ((float_of_int _lh_nq_arg1_4) *. delta_q__d1))
and nq__d2 _lh_nq_arg1_0 =
  (qmn__d5 +. ((float_of_int _lh_nq_arg1_0) *. delta_q__d2))
and nq__d3 _lh_nq_arg1_5 =
  (qmn__d7 +. ((float_of_int _lh_nq_arg1_5) *. delta_q__d3))
and nq__d4 _lh_nq_arg1_2 =
  (qmn__d9 +. ((float_of_int _lh_nq_arg1_2) *. delta_q__d4))
and nq__d5 _lh_nq_arg1_3 =
  (qmn__d1_d1 +. ((float_of_int _lh_nq_arg1_3) *. delta_q__d5))
and point_colour__d4 _lh_point_colour_arg1_4 =
  (match _lh_point_colour_arg1_4 with
    | `LH_P2(_lh_point_colour_LH_P2_0_5, _lh_point_colour_LH_P2_1_5) -> 
      (((((check_radius__d4 (np__d4 _lh_point_colour_LH_P2_0_5)) (nq__d4 _lh_point_colour_LH_P2_1_5)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"))
and testMandel2_nofib__d0 _lh_testMandel2_nofib_arg1_0 =
  (let rec size'_0 = ((max__d0 (length__d0 _lh_testMandel2_nofib_arg1_0)) size__d1_d2) in
    (let rec tree_0 = ((build_tree__d0 (`LH_P2(0, 0))) (`LH_P2(size'_0, (size'_0 / 2)))) in
      (finite__d0 tree_0)));;
end;;

