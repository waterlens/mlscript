(*
touch ./Mandel2_nofib.mli && ocamlc ./Mandel2_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Mandel2_nofib.ml -o "./Mandel2_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Mandel2_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
let rec down_d0 =
  (`LH_P2(0, 1));;
let rec down_d1 =
  (`LH_P2(0, 1));;
let rec equalp_d0 _lh_equalp_arg1_2 _lh_equalp_arg2_2 =
  (match _lh_equalp_arg1_2 with
    | `LH_P2(_lh_equalp_LH_P2_0_4, _lh_equalp_LH_P2_1_4) -> 
      (match _lh_equalp_arg2_2 with
        | `LH_P2(_lh_equalp_LH_P2_0_5, _lh_equalp_LH_P2_1_5) -> 
          ((_lh_equalp_LH_P2_0_4 = _lh_equalp_LH_P2_0_5) && (_lh_equalp_LH_P2_1_4 = _lh_equalp_LH_P2_1_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec equalp_d1 _lh_equalp_arg1_3 _lh_equalp_arg2_3 =
  (match _lh_equalp_arg1_3 with
    | `LH_P2(_lh_equalp_LH_P2_0_6, _lh_equalp_LH_P2_1_6) -> 
      (match _lh_equalp_arg2_3 with
        | `LH_P2(_lh_equalp_LH_P2_0_7, _lh_equalp_LH_P2_1_7) -> 
          ((_lh_equalp_LH_P2_0_6 = _lh_equalp_LH_P2_0_7) && (_lh_equalp_LH_P2_1_6 = _lh_equalp_LH_P2_1_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec equalp_d2 _lh_equalp_arg1_4 _lh_equalp_arg2_4 =
  (match _lh_equalp_arg1_4 with
    | `LH_P2(_lh_equalp_LH_P2_0_8, _lh_equalp_LH_P2_1_8) -> 
      (match _lh_equalp_arg2_4 with
        | `LH_P2(_lh_equalp_LH_P2_0_9, _lh_equalp_LH_P2_1_9) -> 
          ((_lh_equalp_LH_P2_0_8 = _lh_equalp_LH_P2_0_9) && (_lh_equalp_LH_P2_1_8 = _lh_equalp_LH_P2_1_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec equalp_d3 _lh_equalp_arg1_1 _lh_equalp_arg2_1 =
  (match _lh_equalp_arg1_1 with
    | `LH_P2(_lh_equalp_LH_P2_0_2, _lh_equalp_LH_P2_1_2) -> 
      (match _lh_equalp_arg2_1 with
        | `LH_P2(_lh_equalp_LH_P2_0_3, _lh_equalp_LH_P2_1_3) -> 
          ((_lh_equalp_LH_P2_0_2 = _lh_equalp_LH_P2_0_3) && (_lh_equalp_LH_P2_1_2 = _lh_equalp_LH_P2_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec finite_d0 _lh_finite_arg1_1 =
  (match _lh_finite_arg1_1 with
    | `Leaf(_lh_finite_Leaf_0_1) -> 
      (_lh_finite_Leaf_0_1 = _lh_finite_Leaf_0_1)
    | `NS(_lh_finite_NS_0_1, _lh_finite_NS_1_1) -> 
      ((finite_d0 _lh_finite_NS_0_1) && (finite_d0 _lh_finite_NS_1_1))
    | `EW(_lh_finite_EW_0_1, _lh_finite_EW_1_1) -> 
      ((finite_d0 _lh_finite_EW_0_1) && (finite_d0 _lh_finite_EW_1_1))
    | _ -> 
      (failwith "error"));;
let rec left_d0 =
  (`LH_P2((0 - 1), 0));;
let rec left_d1 =
  (`LH_P2((0 - 1), 0));;
let rec length_d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length_d0 t_2_2))
    | `LH_N -> 
      0);;
let rec max_d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec m_d0 =
  20;;
let rec m_d1 =
  20;;
let rec m_d2 =
  20;;
let rec m_d3 =
  20;;
let rec m_d4 =
  20;;
let rec m_d5 =
  20;;
let rec new_x_d0 _lh_new_x_arg1_4 _lh_new_x_arg2_4 _lh_new_x_arg3_4 =
  (((_lh_new_x_arg1_4 *. _lh_new_x_arg1_4) -. (_lh_new_x_arg2_4 *. _lh_new_x_arg2_4)) +. _lh_new_x_arg3_4);;
let rec new_x_d1 _lh_new_x_arg1_6 _lh_new_x_arg2_6 _lh_new_x_arg3_6 =
  (((_lh_new_x_arg1_6 *. _lh_new_x_arg1_6) -. (_lh_new_x_arg2_6 *. _lh_new_x_arg2_6)) +. _lh_new_x_arg3_6);;
let rec new_x_d2 _lh_new_x_arg1_1 _lh_new_x_arg2_1 _lh_new_x_arg3_1 =
  (((_lh_new_x_arg1_1 *. _lh_new_x_arg1_1) -. (_lh_new_x_arg2_1 *. _lh_new_x_arg2_1)) +. _lh_new_x_arg3_1);;
let rec new_x_d3 _lh_new_x_arg1_5 _lh_new_x_arg2_5 _lh_new_x_arg3_5 =
  (((_lh_new_x_arg1_5 *. _lh_new_x_arg1_5) -. (_lh_new_x_arg2_5 *. _lh_new_x_arg2_5)) +. _lh_new_x_arg3_5);;
let rec new_x_d4 _lh_new_x_arg1_2 _lh_new_x_arg2_2 _lh_new_x_arg3_2 =
  (((_lh_new_x_arg1_2 *. _lh_new_x_arg1_2) -. (_lh_new_x_arg2_2 *. _lh_new_x_arg2_2)) +. _lh_new_x_arg3_2);;
let rec new_x_d5 _lh_new_x_arg1_3 _lh_new_x_arg2_3 _lh_new_x_arg3_3 =
  (((_lh_new_x_arg1_3 *. _lh_new_x_arg1_3) -. (_lh_new_x_arg2_3 *. _lh_new_x_arg2_3)) +. _lh_new_x_arg3_3);;
let rec new_y_d0 _lh_new_y_arg1_4 _lh_new_y_arg2_4 _lh_new_y_arg3_4 =
  (((2.0 *. _lh_new_y_arg1_4) *. _lh_new_y_arg2_4) +. _lh_new_y_arg3_4);;
let rec new_y_d1 _lh_new_y_arg1_6 _lh_new_y_arg2_6 _lh_new_y_arg3_6 =
  (((2.0 *. _lh_new_y_arg1_6) *. _lh_new_y_arg2_6) +. _lh_new_y_arg3_6);;
let rec new_y_d2 _lh_new_y_arg1_1 _lh_new_y_arg2_1 _lh_new_y_arg3_1 =
  (((2.0 *. _lh_new_y_arg1_1) *. _lh_new_y_arg2_1) +. _lh_new_y_arg3_1);;
let rec new_y_d3 _lh_new_y_arg1_3 _lh_new_y_arg2_3 _lh_new_y_arg3_3 =
  (((2.0 *. _lh_new_y_arg1_3) *. _lh_new_y_arg2_3) +. _lh_new_y_arg3_3);;
let rec new_y_d4 _lh_new_y_arg1_2 _lh_new_y_arg2_2 _lh_new_y_arg3_2 =
  (((2.0 *. _lh_new_y_arg1_2) *. _lh_new_y_arg2_2) +. _lh_new_y_arg3_2);;
let rec new_y_d5 _lh_new_y_arg1_5 _lh_new_y_arg2_5 _lh_new_y_arg3_5 =
  (((2.0 *. _lh_new_y_arg1_5) *. _lh_new_y_arg2_5) +. _lh_new_y_arg3_5);;
let rec num_cols_d0 =
  26;;
let rec num_cols_d1 =
  26;;
let rec num_cols_d2 =
  26;;
let rec num_cols_d3 =
  26;;
let rec num_cols_d4 =
  26;;
let rec num_cols_d5 =
  26;;
let rec pmn_d0 =
  (0.0 -. 2.25);;
let rec pmn_d1 =
  (0.0 -. 2.25);;
let rec pmn_d1_d0 =
  (0.0 -. 2.25);;
let rec pmn_d1_d1 =
  (0.0 -. 2.25);;
let rec pmn_d2 =
  (0.0 -. 2.25);;
let rec pmn_d3 =
  (0.0 -. 2.25);;
let rec pmn_d4 =
  (0.0 -. 2.25);;
let rec pmn_d5 =
  (0.0 -. 2.25);;
let rec pmn_d6 =
  (0.0 -. 2.25);;
let rec pmn_d7 =
  (0.0 -. 2.25);;
let rec pmn_d8 =
  (0.0 -. 2.25);;
let rec pmn_d9 =
  (0.0 -. 2.25);;
let rec pmx_d0 =
  0.75;;
let rec pmx_d1 =
  0.75;;
let rec pmx_d2 =
  0.75;;
let rec pmx_d3 =
  0.75;;
let rec pmx_d4 =
  0.75;;
let rec pmx_d5 =
  0.75;;
let rec qmn_d0 =
  (0.0 -. 1.5);;
let rec qmn_d1 =
  (0.0 -. 1.5);;
let rec qmn_d1_d0 =
  (0.0 -. 1.5);;
let rec qmn_d1_d1 =
  (0.0 -. 1.5);;
let rec qmn_d2 =
  (0.0 -. 1.5);;
let rec qmn_d3 =
  (0.0 -. 1.5);;
let rec qmn_d4 =
  (0.0 -. 1.5);;
let rec qmn_d5 =
  (0.0 -. 1.5);;
let rec qmn_d6 =
  (0.0 -. 1.5);;
let rec qmn_d7 =
  (0.0 -. 1.5);;
let rec qmn_d8 =
  (0.0 -. 1.5);;
let rec qmn_d9 =
  (0.0 -. 1.5);;
let rec qmx_d0 =
  1.5;;
let rec qmx_d1 =
  1.5;;
let rec qmx_d2 =
  1.5;;
let rec qmx_d3 =
  1.5;;
let rec qmx_d4 =
  1.5;;
let rec qmx_d5 =
  1.5;;
let rec radius_d0 _lh_radius_arg1_2 _lh_radius_arg2_2 =
  ((_lh_radius_arg1_2 *. _lh_radius_arg1_2) +. (_lh_radius_arg2_2 *. _lh_radius_arg2_2));;
let rec radius_d1 _lh_radius_arg1_3 _lh_radius_arg2_3 =
  ((_lh_radius_arg1_3 *. _lh_radius_arg1_3) +. (_lh_radius_arg2_3 *. _lh_radius_arg2_3));;
let rec radius_d2 _lh_radius_arg1_5 _lh_radius_arg2_5 =
  ((_lh_radius_arg1_5 *. _lh_radius_arg1_5) +. (_lh_radius_arg2_5 *. _lh_radius_arg2_5));;
let rec radius_d3 _lh_radius_arg1_4 _lh_radius_arg2_4 =
  ((_lh_radius_arg1_4 *. _lh_radius_arg1_4) +. (_lh_radius_arg2_4 *. _lh_radius_arg2_4));;
let rec radius_d4 _lh_radius_arg1_1 _lh_radius_arg2_1 =
  ((_lh_radius_arg1_1 *. _lh_radius_arg1_1) +. (_lh_radius_arg2_1 *. _lh_radius_arg2_1));;
let rec radius_d5 _lh_radius_arg1_6 _lh_radius_arg2_6 =
  ((_lh_radius_arg1_6 *. _lh_radius_arg1_6) +. (_lh_radius_arg2_6 *. _lh_radius_arg2_6));;
let rec right_d0 =
  (`LH_P2(1, 0));;
let rec right_d1 =
  (`LH_P2(1, 0));;
let rec size_d0 =
  200;;
let rec size_d1 =
  200;;
let rec size_d1_d0 =
  200;;
let rec size_d1_d1 =
  200;;
let rec size_d1_d2 =
  200;;
let rec size_d2 =
  200;;
let rec size_d3 =
  200;;
let rec size_d4 =
  200;;
let rec size_d5 =
  200;;
let rec size_d6 =
  200;;
let rec size_d7 =
  200;;
let rec size_d8 =
  200;;
let rec size_d9 =
  200;;
let rec strEq_d0 _lh_strEq_arg1_1 _lh_strEq_arg2_1 =
  (match _lh_strEq_arg1_1 with
    | `LH_C(_lh_strEq_LH_C_0_3, _lh_strEq_LH_C_1_3) -> 
      (let rec _lh_matchIdent_4 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_4 with
          | `LH_C(_lh_strEq_LH_C_0_4, _lh_strEq_LH_C_1_4) -> 
            (if (_lh_strEq_LH_C_0_3 = _lh_strEq_LH_C_0_4) then
              ((strEq_d0 _lh_strEq_LH_C_1_3) _lh_strEq_LH_C_1_4)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_5 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_5 with
          | `LH_C(_lh_strEq_LH_C_0_5, _lh_strEq_LH_C_1_5) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec up_d0 =
  (`LH_P2(0, (0 - 1)));;
let rec build_tree_d0 _lh_build_tree_arg1_1 _lh_build_tree_arg2_1 =
  (match _lh_build_tree_arg1_1 with
    | `LH_P2(_lh_build_tree_LH_P2_0_2, _lh_build_tree_LH_P2_1_2) -> 
      (match _lh_build_tree_arg2_1 with
        | `LH_P2(_lh_build_tree_LH_P2_0_3, _lh_build_tree_LH_P2_1_3) -> 
          (let rec rec_col_1 = ((check_perim_d0 (`LH_P2(_lh_build_tree_LH_P2_0_2, _lh_build_tree_LH_P2_1_2))) (`LH_P2(_lh_build_tree_LH_P2_0_3, _lh_build_tree_LH_P2_1_3))) in
            (let rec split_1 = (if ((_lh_build_tree_LH_P2_0_3 - _lh_build_tree_LH_P2_0_2) >= (_lh_build_tree_LH_P2_1_3 - _lh_build_tree_LH_P2_1_2)) then
              (`LH_C('N', (`LH_C('S', (`LH_N)))))
            else
              (`LH_C('E', (`LH_C('W', (`LH_N)))))) in
              (let rec split_x_1 = ((_lh_build_tree_LH_P2_0_3 + _lh_build_tree_LH_P2_0_2) / 2) in
                (let rec split_y_1 = ((_lh_build_tree_LH_P2_1_3 + _lh_build_tree_LH_P2_1_2) / 2) in
                  (let rec nsp1_1 = (`LH_P2(_lh_build_tree_LH_P2_0_2, _lh_build_tree_LH_P2_1_2)) in
                    (let rec nsp2_1 = (`LH_P2(split_x_1, _lh_build_tree_LH_P2_1_3)) in
                      (let rec nsp3_1 = (`LH_P2((split_x_1 + 1), _lh_build_tree_LH_P2_1_2)) in
                        (let rec nsp4_1 = (`LH_P2(_lh_build_tree_LH_P2_0_3, _lh_build_tree_LH_P2_1_3)) in
                          (let rec ewp1_1 = (`LH_P2(_lh_build_tree_LH_P2_0_2, _lh_build_tree_LH_P2_1_2)) in
                            (let rec ewp2_1 = (`LH_P2(_lh_build_tree_LH_P2_0_3, split_y_1)) in
                              (let rec ewp3_1 = (`LH_P2(_lh_build_tree_LH_P2_0_2, (split_y_1 + 1))) in
                                (let rec ewp4_1 = (`LH_P2(_lh_build_tree_LH_P2_0_3, _lh_build_tree_LH_P2_1_3)) in
                                  (if (rec_col_1 != (0 - 1)) then
                                    (`Leaf(rec_col_1))
                                  else
                                    (if ((strEq_d0 split_1) (`LH_C('N', (`LH_C('S', (`LH_N)))))) then
                                      (`NS(((build_tree_d0 nsp1_1) nsp2_1), ((build_tree_d0 nsp3_1) nsp4_1)))
                                    else
                                      (`EW(((build_tree_d0 ewp1_1) ewp2_1), ((build_tree_d0 ewp3_1) ewp4_1)))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and check_perim_d0 _lh_check_perim_arg1_1 _lh_check_perim_arg2_1 =
  (match _lh_check_perim_arg1_1 with
    | `LH_P2(_lh_check_perim_LH_P2_0_4, _lh_check_perim_LH_P2_1_4) -> 
      (match _lh_check_perim_arg2_1 with
        | `LH_P2(_lh_check_perim_LH_P2_0_5, _lh_check_perim_LH_P2_1_5) -> 
          (let rec col1_1 = (point_colour_d0 (`LH_P2(_lh_check_perim_LH_P2_0_4, _lh_check_perim_LH_P2_1_4))) in
            (let rec col2_1 = (point_colour_d1 (`LH_P2(_lh_check_perim_LH_P2_0_5, _lh_check_perim_LH_P2_1_4))) in
              (let rec col3_1 = (point_colour_d2 (`LH_P2(_lh_check_perim_LH_P2_0_5, _lh_check_perim_LH_P2_1_5))) in
                (let rec col4_1 = (point_colour_d3 (`LH_P2(_lh_check_perim_LH_P2_0_4, _lh_check_perim_LH_P2_1_5))) in
                  (let rec corners_diff_1 = (if (col1_1 = col2_1) then
                    (if (col1_1 = col3_1) then
                      (if (col1_1 = col4_1) then
                        false
                      else
                        true)
                    else
                      true)
                  else
                    true) in
                    (let rec check_line_1 = (fun xcyc_1 xdyd_1 -> 
                      (let rec _lh_matchIdent_6 = xcyc_1 in
                        (match _lh_matchIdent_6 with
                          | `LH_P2(_lh_check_perim_LH_P2_0_6, _lh_check_perim_LH_P2_1_6) -> 
                            (let rec _lh_matchIdent_7 = xdyd_1 in
                              (match _lh_matchIdent_7 with
                                | `LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7) -> 
                                  (let rec finished_1 = (if ((equalp_d0 (`LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7))) right_d0) then
                                    (_lh_check_perim_LH_P2_0_6 >= _lh_check_perim_LH_P2_0_5)
                                  else
                                    (if ((equalp_d1 (`LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7))) down_d0) then
                                      (_lh_check_perim_LH_P2_1_6 <= _lh_check_perim_LH_P2_1_5)
                                    else
                                      (if ((equalp_d2 (`LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7))) left_d0) then
                                        (_lh_check_perim_LH_P2_0_6 <= _lh_check_perim_LH_P2_0_4)
                                      else
                                        (_lh_check_perim_LH_P2_1_6 >= _lh_check_perim_LH_P2_1_4)))) in
                                    (if finished_1 then
                                      true
                                    else
                                      (if ((point_colour_d4 (`LH_P2(_lh_check_perim_LH_P2_0_6, _lh_check_perim_LH_P2_1_6))) != col1_1) then
                                        false
                                      else
                                        ((check_line_1 (`LH_P2((_lh_check_perim_LH_P2_0_6 + _lh_check_perim_LH_P2_0_7), (_lh_check_perim_LH_P2_1_6 + _lh_check_perim_LH_P2_1_7)))) (`LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7))))))
                                | _ -> 
                                  (failwith "error")))
                          | _ -> 
                            (failwith "error")))) in
                      (let rec check_sides_1 = (if ((check_line_1 (`LH_P2((_lh_check_perim_LH_P2_0_4 + 1), _lh_check_perim_LH_P2_1_4))) right_d1) then
                        (if ((check_line_1 (`LH_P2(_lh_check_perim_LH_P2_0_5, (_lh_check_perim_LH_P2_1_4 + 1)))) down_d1) then
                          (if ((check_line_1 (`LH_P2((_lh_check_perim_LH_P2_0_5 - 1), _lh_check_perim_LH_P2_1_5))) left_d1) then
                            (if ((check_line_1 (`LH_P2(_lh_check_perim_LH_P2_0_4, (_lh_check_perim_LH_P2_1_5 - 1)))) up_d0) then
                              col1_1
                            else
                              (0 - 1))
                          else
                            (0 - 1))
                        else
                          (0 - 1))
                      else
                        (0 - 1)) in
                        (if ((equalp_d3 (`LH_P2(_lh_check_perim_LH_P2_0_4, _lh_check_perim_LH_P2_1_4))) (`LH_P2(_lh_check_perim_LH_P2_0_5, _lh_check_perim_LH_P2_1_5))) then
                          (point_colour_d5 (`LH_P2(_lh_check_perim_LH_P2_0_4, _lh_check_perim_LH_P2_1_4)))
                        else
                          (if corners_diff_1 then
                            (0 - 1)
                          else
                            check_sides_1)))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and check_radius_d0 _lh_check_radius_arg1_1 _lh_check_radius_arg2_1 _lh_check_radius_arg3_1 _lh_check_radius_arg4_1 _lh_check_radius_arg5_1 =
  (let rec xn_1 = (((new_x_d0 _lh_check_radius_arg4_1) _lh_check_radius_arg5_1) _lh_check_radius_arg1_1) in
    (let rec yn_1 = (((new_y_d0 _lh_check_radius_arg4_1) _lh_check_radius_arg5_1) _lh_check_radius_arg2_1) in
      (let rec r_1 = ((radius_d0 xn_1) yn_1) in
        (let rec kp_1 = (_lh_check_radius_arg3_1 + 1) in
          (if (kp_1 = num_cols_d0) then
            0
          else
            (if (r_1 > (float_of_int m_d0)) then
              kp_1
            else
              (((((check_radius_d0 _lh_check_radius_arg1_1) _lh_check_radius_arg2_1) kp_1) xn_1) yn_1)))))))
and check_radius_d1 _lh_check_radius_arg1_2 _lh_check_radius_arg2_2 _lh_check_radius_arg3_2 _lh_check_radius_arg4_2 _lh_check_radius_arg5_2 =
  (let rec xn_2 = (((new_x_d1 _lh_check_radius_arg4_2) _lh_check_radius_arg5_2) _lh_check_radius_arg1_2) in
    (let rec yn_2 = (((new_y_d1 _lh_check_radius_arg4_2) _lh_check_radius_arg5_2) _lh_check_radius_arg2_2) in
      (let rec r_2 = ((radius_d1 xn_2) yn_2) in
        (let rec kp_2 = (_lh_check_radius_arg3_2 + 1) in
          (if (kp_2 = num_cols_d1) then
            0
          else
            (if (r_2 > (float_of_int m_d1)) then
              kp_2
            else
              (((((check_radius_d1 _lh_check_radius_arg1_2) _lh_check_radius_arg2_2) kp_2) xn_2) yn_2)))))))
and check_radius_d2 _lh_check_radius_arg1_6 _lh_check_radius_arg2_6 _lh_check_radius_arg3_6 _lh_check_radius_arg4_6 _lh_check_radius_arg5_6 =
  (let rec xn_6 = (((new_x_d2 _lh_check_radius_arg4_6) _lh_check_radius_arg5_6) _lh_check_radius_arg1_6) in
    (let rec yn_6 = (((new_y_d2 _lh_check_radius_arg4_6) _lh_check_radius_arg5_6) _lh_check_radius_arg2_6) in
      (let rec r_6 = ((radius_d2 xn_6) yn_6) in
        (let rec kp_6 = (_lh_check_radius_arg3_6 + 1) in
          (if (kp_6 = num_cols_d2) then
            0
          else
            (if (r_6 > (float_of_int m_d2)) then
              kp_6
            else
              (((((check_radius_d2 _lh_check_radius_arg1_6) _lh_check_radius_arg2_6) kp_6) xn_6) yn_6)))))))
and check_radius_d3 _lh_check_radius_arg1_3 _lh_check_radius_arg2_3 _lh_check_radius_arg3_3 _lh_check_radius_arg4_3 _lh_check_radius_arg5_3 =
  (let rec xn_3 = (((new_x_d3 _lh_check_radius_arg4_3) _lh_check_radius_arg5_3) _lh_check_radius_arg1_3) in
    (let rec yn_3 = (((new_y_d3 _lh_check_radius_arg4_3) _lh_check_radius_arg5_3) _lh_check_radius_arg2_3) in
      (let rec r_3 = ((radius_d3 xn_3) yn_3) in
        (let rec kp_3 = (_lh_check_radius_arg3_3 + 1) in
          (if (kp_3 = num_cols_d3) then
            0
          else
            (if (r_3 > (float_of_int m_d3)) then
              kp_3
            else
              (((((check_radius_d3 _lh_check_radius_arg1_3) _lh_check_radius_arg2_3) kp_3) xn_3) yn_3)))))))
and check_radius_d4 _lh_check_radius_arg1_4 _lh_check_radius_arg2_4 _lh_check_radius_arg3_4 _lh_check_radius_arg4_4 _lh_check_radius_arg5_4 =
  (let rec xn_4 = (((new_x_d4 _lh_check_radius_arg4_4) _lh_check_radius_arg5_4) _lh_check_radius_arg1_4) in
    (let rec yn_4 = (((new_y_d4 _lh_check_radius_arg4_4) _lh_check_radius_arg5_4) _lh_check_radius_arg2_4) in
      (let rec r_4 = ((radius_d4 xn_4) yn_4) in
        (let rec kp_4 = (_lh_check_radius_arg3_4 + 1) in
          (if (kp_4 = num_cols_d4) then
            0
          else
            (if (r_4 > (float_of_int m_d4)) then
              kp_4
            else
              (((((check_radius_d4 _lh_check_radius_arg1_4) _lh_check_radius_arg2_4) kp_4) xn_4) yn_4)))))))
and check_radius_d5 _lh_check_radius_arg1_5 _lh_check_radius_arg2_5 _lh_check_radius_arg3_5 _lh_check_radius_arg4_5 _lh_check_radius_arg5_5 =
  (let rec xn_5 = (((new_x_d5 _lh_check_radius_arg4_5) _lh_check_radius_arg5_5) _lh_check_radius_arg1_5) in
    (let rec yn_5 = (((new_y_d5 _lh_check_radius_arg4_5) _lh_check_radius_arg5_5) _lh_check_radius_arg2_5) in
      (let rec r_5 = ((radius_d5 xn_5) yn_5) in
        (let rec kp_5 = (_lh_check_radius_arg3_5 + 1) in
          (if (kp_5 = num_cols_d5) then
            0
          else
            (if (r_5 > (float_of_int m_d5)) then
              kp_5
            else
              (((((check_radius_d5 _lh_check_radius_arg1_5) _lh_check_radius_arg2_5) kp_5) xn_5) yn_5)))))))
and delta_p_d0 =
  ((pmx_d0 -. pmn_d0) /. (float_of_int (size_d0 - 1)))
and delta_p_d1 =
  ((pmx_d1 -. pmn_d2) /. (float_of_int (size_d2 - 1)))
and delta_p_d2 =
  ((pmx_d2 -. pmn_d4) /. (float_of_int (size_d4 - 1)))
and delta_p_d3 =
  ((pmx_d3 -. pmn_d6) /. (float_of_int (size_d6 - 1)))
and delta_p_d4 =
  ((pmx_d4 -. pmn_d8) /. (float_of_int (size_d8 - 1)))
and delta_p_d5 =
  ((pmx_d5 -. pmn_d1_d0) /. (float_of_int (size_d1_d0 - 1)))
and delta_q_d0 =
  ((qmx_d0 -. qmn_d0) /. (float_of_int (size_d1 - 1)))
and delta_q_d1 =
  ((qmx_d1 -. qmn_d2) /. (float_of_int (size_d3 - 1)))
and delta_q_d2 =
  ((qmx_d2 -. qmn_d4) /. (float_of_int (size_d5 - 1)))
and delta_q_d3 =
  ((qmx_d3 -. qmn_d6) /. (float_of_int (size_d7 - 1)))
and delta_q_d4 =
  ((qmx_d4 -. qmn_d8) /. (float_of_int (size_d9 - 1)))
and delta_q_d5 =
  ((qmx_d5 -. qmn_d1_d0) /. (float_of_int (size_d1_d1 - 1)))
and np_d0 _lh_np_arg1_1 =
  (pmn_d1 +. ((float_of_int _lh_np_arg1_1) *. delta_p_d0))
and np_d1 _lh_np_arg1_6 =
  (pmn_d3 +. ((float_of_int _lh_np_arg1_6) *. delta_p_d1))
and np_d2 _lh_np_arg1_2 =
  (pmn_d5 +. ((float_of_int _lh_np_arg1_2) *. delta_p_d2))
and np_d3 _lh_np_arg1_3 =
  (pmn_d7 +. ((float_of_int _lh_np_arg1_3) *. delta_p_d3))
and np_d4 _lh_np_arg1_4 =
  (pmn_d9 +. ((float_of_int _lh_np_arg1_4) *. delta_p_d4))
and np_d5 _lh_np_arg1_5 =
  (pmn_d1_d1 +. ((float_of_int _lh_np_arg1_5) *. delta_p_d5))
and nq_d0 _lh_nq_arg1_4 =
  (qmn_d1 +. ((float_of_int _lh_nq_arg1_4) *. delta_q_d0))
and nq_d1 _lh_nq_arg1_2 =
  (qmn_d3 +. ((float_of_int _lh_nq_arg1_2) *. delta_q_d1))
and nq_d2 _lh_nq_arg1_6 =
  (qmn_d5 +. ((float_of_int _lh_nq_arg1_6) *. delta_q_d2))
and nq_d3 _lh_nq_arg1_5 =
  (qmn_d7 +. ((float_of_int _lh_nq_arg1_5) *. delta_q_d3))
and nq_d4 _lh_nq_arg1_3 =
  (qmn_d9 +. ((float_of_int _lh_nq_arg1_3) *. delta_q_d4))
and nq_d5 _lh_nq_arg1_1 =
  (qmn_d1_d1 +. ((float_of_int _lh_nq_arg1_1) *. delta_q_d5))
and point_colour_d0 _lh_point_colour_arg1_2 =
  (match _lh_point_colour_arg1_2 with
    | `LH_P2(_lh_point_colour_LH_P2_0_2, _lh_point_colour_LH_P2_1_2) -> 
      (((((check_radius_d0 (np_d0 _lh_point_colour_LH_P2_0_2)) (nq_d0 _lh_point_colour_LH_P2_1_2)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"))
and point_colour_d1 _lh_point_colour_arg1_6 =
  (match _lh_point_colour_arg1_6 with
    | `LH_P2(_lh_point_colour_LH_P2_0_6, _lh_point_colour_LH_P2_1_6) -> 
      (((((check_radius_d1 (np_d1 _lh_point_colour_LH_P2_0_6)) (nq_d1 _lh_point_colour_LH_P2_1_6)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"))
and point_colour_d2 _lh_point_colour_arg1_5 =
  (match _lh_point_colour_arg1_5 with
    | `LH_P2(_lh_point_colour_LH_P2_0_5, _lh_point_colour_LH_P2_1_5) -> 
      (((((check_radius_d2 (np_d2 _lh_point_colour_LH_P2_0_5)) (nq_d2 _lh_point_colour_LH_P2_1_5)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"))
and point_colour_d3 _lh_point_colour_arg1_4 =
  (match _lh_point_colour_arg1_4 with
    | `LH_P2(_lh_point_colour_LH_P2_0_4, _lh_point_colour_LH_P2_1_4) -> 
      (((((check_radius_d3 (np_d3 _lh_point_colour_LH_P2_0_4)) (nq_d3 _lh_point_colour_LH_P2_1_4)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"))
and point_colour_d4 _lh_point_colour_arg1_3 =
  (match _lh_point_colour_arg1_3 with
    | `LH_P2(_lh_point_colour_LH_P2_0_3, _lh_point_colour_LH_P2_1_3) -> 
      (((((check_radius_d4 (np_d4 _lh_point_colour_LH_P2_0_3)) (nq_d4 _lh_point_colour_LH_P2_1_3)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"))
and point_colour_d5 _lh_point_colour_arg1_1 =
  (match _lh_point_colour_arg1_1 with
    | `LH_P2(_lh_point_colour_LH_P2_0_1, _lh_point_colour_LH_P2_1_1) -> 
      (((((check_radius_d5 (np_d5 _lh_point_colour_LH_P2_0_1)) (nq_d5 _lh_point_colour_LH_P2_1_1)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"))
and testMandel2_nofib_d0 _lh_testMandel2_nofib_arg1_1 =
  (let rec size'_1 = ((max_d0 (length_d0 _lh_testMandel2_nofib_arg1_1)) size_d1_d2) in
    (let rec tree_1 = ((build_tree_d0 (`LH_P2(0, 0))) (`LH_P2(size'_1, (size'_1 / 2)))) in
      (finite_d0 tree_1)));;

(* lumberhack *)
let rec down_d0_d0 =
  (let rec _lh_equalp_LH_P2_0_1_0 = 0 in
    (let rec _lh_equalp_LH_P2_1_1_0 = 1 in
      (fun _lh_equalp_LH_P2_0_1_1 _lh_equalp_LH_P2_1_1_1 -> 
        ((_lh_equalp_LH_P2_0_1_1 = _lh_equalp_LH_P2_0_1_0) && (_lh_equalp_LH_P2_1_1_1 = _lh_equalp_LH_P2_1_1_0)))));;
let rec down_d1_d0 =
  (`LH_P2(0, 1));;
let rec equalp_d0_d0 _lh_equalp_arg1_2 _lh_equalp_arg2_3 =
  (match _lh_equalp_arg1_2 with
    | `LH_P2(_lh_equalp_LH_P2_0_8, _lh_equalp_LH_P2_1_8) -> 
      ((_lh_equalp_arg2_3 _lh_equalp_LH_P2_0_8) _lh_equalp_LH_P2_1_8)
    | _ -> 
      (failwith "error"));;
let rec equalp_d1_d0 _lh_equalp_arg1_3 _lh_equalp_arg2_4 =
  (match _lh_equalp_arg1_3 with
    | `LH_P2(_lh_equalp_LH_P2_0_9, _lh_equalp_LH_P2_1_9) -> 
      ((_lh_equalp_arg2_4 _lh_equalp_LH_P2_0_9) _lh_equalp_LH_P2_1_9)
    | _ -> 
      (failwith "error"));;
let rec equalp_d2_d0 _lh_equalp_arg1_0 _lh_equalp_arg2_1 =
  (match _lh_equalp_arg1_0 with
    | `LH_P2(_lh_equalp_LH_P2_0_5, _lh_equalp_LH_P2_1_5) -> 
      ((_lh_equalp_arg2_1 _lh_equalp_LH_P2_0_5) _lh_equalp_LH_P2_1_5)
    | _ -> 
      (failwith "error"));;
let rec equalp_d3_d0 _lh_equalp_arg1_1 _lh_equalp_arg2_2 =
  (_lh_equalp_arg1_1 _lh_equalp_arg2_2);;
let rec finite_d0_d0 _lh_finite_arg1_0 =
  (match _lh_finite_arg1_0 with
    | `Leaf(_lh_finite_Leaf_0_0) -> 
      (_lh_finite_Leaf_0_0 = _lh_finite_Leaf_0_0)
    | `NS(_lh_finite_NS_0_0, _lh_finite_NS_1_0) -> 
      ((finite_d0_d0 _lh_finite_NS_0_0) && (finite_d0_d0 _lh_finite_NS_1_0))
    | `EW(_lh_finite_EW_0_0, _lh_finite_EW_1_0) -> 
      ((finite_d0_d0 _lh_finite_EW_0_0) && (finite_d0_d0 _lh_finite_EW_1_0))
    | _ -> 
      (failwith "error"));;
let rec left_d0_d0 =
  (let rec _lh_equalp_LH_P2_0_6 = (0 - 1) in
    (let rec _lh_equalp_LH_P2_1_6 = 0 in
      (fun _lh_equalp_LH_P2_0_7 _lh_equalp_LH_P2_1_7 -> 
        ((_lh_equalp_LH_P2_0_7 = _lh_equalp_LH_P2_0_6) && (_lh_equalp_LH_P2_1_7 = _lh_equalp_LH_P2_1_6)))));;
let rec left_d1_d0 =
  (`LH_P2((0 - 1), 0));;
let rec length_d0_d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_d0_d0 t_0))
    | `LH_N -> 
      0);;
let rec max_d0_d0 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec m_d0_d0 =
  20;;
let rec m_d1_d0 =
  20;;
let rec m_d2_d0 =
  20;;
let rec m_d3_d0 =
  20;;
let rec m_d4_d0 =
  20;;
let rec m_d5_d0 =
  20;;
let rec new_x_d0_d0 _lh_new_x_arg1_3 _lh_new_x_arg2_3 _lh_new_x_arg3_3 =
  (((_lh_new_x_arg1_3 *. _lh_new_x_arg1_3) -. (_lh_new_x_arg2_3 *. _lh_new_x_arg2_3)) +. _lh_new_x_arg3_3);;
let rec new_x_d1_d0 _lh_new_x_arg1_5 _lh_new_x_arg2_5 _lh_new_x_arg3_5 =
  (((_lh_new_x_arg1_5 *. _lh_new_x_arg1_5) -. (_lh_new_x_arg2_5 *. _lh_new_x_arg2_5)) +. _lh_new_x_arg3_5);;
let rec new_x_d2_d0 _lh_new_x_arg1_1 _lh_new_x_arg2_1 _lh_new_x_arg3_1 =
  (((_lh_new_x_arg1_1 *. _lh_new_x_arg1_1) -. (_lh_new_x_arg2_1 *. _lh_new_x_arg2_1)) +. _lh_new_x_arg3_1);;
let rec new_x_d3_d0 _lh_new_x_arg1_2 _lh_new_x_arg2_2 _lh_new_x_arg3_2 =
  (((_lh_new_x_arg1_2 *. _lh_new_x_arg1_2) -. (_lh_new_x_arg2_2 *. _lh_new_x_arg2_2)) +. _lh_new_x_arg3_2);;
let rec new_x_d4_d0 _lh_new_x_arg1_4 _lh_new_x_arg2_4 _lh_new_x_arg3_4 =
  (((_lh_new_x_arg1_4 *. _lh_new_x_arg1_4) -. (_lh_new_x_arg2_4 *. _lh_new_x_arg2_4)) +. _lh_new_x_arg3_4);;
let rec new_x_d5_d0 _lh_new_x_arg1_0 _lh_new_x_arg2_0 _lh_new_x_arg3_0 =
  (((_lh_new_x_arg1_0 *. _lh_new_x_arg1_0) -. (_lh_new_x_arg2_0 *. _lh_new_x_arg2_0)) +. _lh_new_x_arg3_0);;
let rec new_y_d0_d0 _lh_new_y_arg1_3 _lh_new_y_arg2_3 _lh_new_y_arg3_3 =
  (((2.0 *. _lh_new_y_arg1_3) *. _lh_new_y_arg2_3) +. _lh_new_y_arg3_3);;
let rec new_y_d1_d0 _lh_new_y_arg1_5 _lh_new_y_arg2_5 _lh_new_y_arg3_5 =
  (((2.0 *. _lh_new_y_arg1_5) *. _lh_new_y_arg2_5) +. _lh_new_y_arg3_5);;
let rec new_y_d2_d0 _lh_new_y_arg1_2 _lh_new_y_arg2_2 _lh_new_y_arg3_2 =
  (((2.0 *. _lh_new_y_arg1_2) *. _lh_new_y_arg2_2) +. _lh_new_y_arg3_2);;
let rec new_y_d3_d0 _lh_new_y_arg1_1 _lh_new_y_arg2_1 _lh_new_y_arg3_1 =
  (((2.0 *. _lh_new_y_arg1_1) *. _lh_new_y_arg2_1) +. _lh_new_y_arg3_1);;
let rec new_y_d4_d0 _lh_new_y_arg1_4 _lh_new_y_arg2_4 _lh_new_y_arg3_4 =
  (((2.0 *. _lh_new_y_arg1_4) *. _lh_new_y_arg2_4) +. _lh_new_y_arg3_4);;
let rec new_y_d5_d0 _lh_new_y_arg1_0 _lh_new_y_arg2_0 _lh_new_y_arg3_0 =
  (((2.0 *. _lh_new_y_arg1_0) *. _lh_new_y_arg2_0) +. _lh_new_y_arg3_0);;
let rec num_cols_d0_d0 =
  26;;
let rec num_cols_d1_d0 =
  26;;
let rec num_cols_d2_d0 =
  26;;
let rec num_cols_d3_d0 =
  26;;
let rec num_cols_d4_d0 =
  26;;
let rec num_cols_d5_d0 =
  26;;
let rec pmn_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d1_d0 =
  (0.0 -. 2.25);;
let rec pmn_d1_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d1_d1_d0 =
  (0.0 -. 2.25);;
let rec pmn_d2_d0 =
  (0.0 -. 2.25);;
let rec pmn_d3_d0 =
  (0.0 -. 2.25);;
let rec pmn_d4_d0 =
  (0.0 -. 2.25);;
let rec pmn_d5_d0 =
  (0.0 -. 2.25);;
let rec pmn_d6_d0 =
  (0.0 -. 2.25);;
let rec pmn_d7_d0 =
  (0.0 -. 2.25);;
let rec pmn_d8_d0 =
  (0.0 -. 2.25);;
let rec pmn_d9_d0 =
  (0.0 -. 2.25);;
let rec pmx_d0_d0 =
  0.75;;
let rec pmx_d1_d0 =
  0.75;;
let rec pmx_d2_d0 =
  0.75;;
let rec pmx_d3_d0 =
  0.75;;
let rec pmx_d4_d0 =
  0.75;;
let rec pmx_d5_d0 =
  0.75;;
let rec point_colour_d0_d0 _lh_point_colour_arg1_3 =
  (_lh_point_colour_arg1_3 99);;
let rec point_colour_d1_d0 _lh_point_colour_arg1_2 =
  (_lh_point_colour_arg1_2 99);;
let rec point_colour_d2_d0 _lh_point_colour_arg1_5 =
  (_lh_point_colour_arg1_5 99);;
let rec point_colour_d3_d0 _lh_point_colour_arg1_0 =
  (_lh_point_colour_arg1_0 99);;
let rec point_colour_d5_d0 _lh_point_colour_arg1_4 =
  (_lh_point_colour_arg1_4 99);;
let rec qmn_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d1_d0 =
  (0.0 -. 1.5);;
let rec qmn_d1_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d1_d1_d0 =
  (0.0 -. 1.5);;
let rec qmn_d2_d0 =
  (0.0 -. 1.5);;
let rec qmn_d3_d0 =
  (0.0 -. 1.5);;
let rec qmn_d4_d0 =
  (0.0 -. 1.5);;
let rec qmn_d5_d0 =
  (0.0 -. 1.5);;
let rec qmn_d6_d0 =
  (0.0 -. 1.5);;
let rec qmn_d7_d0 =
  (0.0 -. 1.5);;
let rec qmn_d8_d0 =
  (0.0 -. 1.5);;
let rec qmn_d9_d0 =
  (0.0 -. 1.5);;
let rec qmx_d0_d0 =
  1.5;;
let rec qmx_d1_d0 =
  1.5;;
let rec qmx_d2_d0 =
  1.5;;
let rec qmx_d3_d0 =
  1.5;;
let rec qmx_d4_d0 =
  1.5;;
let rec qmx_d5_d0 =
  1.5;;
let rec radius_d0_d0 _lh_radius_arg1_1 _lh_radius_arg2_1 =
  ((_lh_radius_arg1_1 *. _lh_radius_arg1_1) +. (_lh_radius_arg2_1 *. _lh_radius_arg2_1));;
let rec radius_d1_d0 _lh_radius_arg1_4 _lh_radius_arg2_4 =
  ((_lh_radius_arg1_4 *. _lh_radius_arg1_4) +. (_lh_radius_arg2_4 *. _lh_radius_arg2_4));;
let rec radius_d2_d0 _lh_radius_arg1_3 _lh_radius_arg2_3 =
  ((_lh_radius_arg1_3 *. _lh_radius_arg1_3) +. (_lh_radius_arg2_3 *. _lh_radius_arg2_3));;
let rec radius_d3_d0 _lh_radius_arg1_5 _lh_radius_arg2_5 =
  ((_lh_radius_arg1_5 *. _lh_radius_arg1_5) +. (_lh_radius_arg2_5 *. _lh_radius_arg2_5));;
let rec radius_d4_d0 _lh_radius_arg1_2 _lh_radius_arg2_2 =
  ((_lh_radius_arg1_2 *. _lh_radius_arg1_2) +. (_lh_radius_arg2_2 *. _lh_radius_arg2_2));;
let rec radius_d5_d0 _lh_radius_arg1_0 _lh_radius_arg2_0 =
  ((_lh_radius_arg1_0 *. _lh_radius_arg1_0) +. (_lh_radius_arg2_0 *. _lh_radius_arg2_0));;
let rec right_d0_d0 =
  (let rec _lh_equalp_LH_P2_0_0 = 1 in
    (let rec _lh_equalp_LH_P2_1_0 = 0 in
      (fun _lh_equalp_LH_P2_0_1 _lh_equalp_LH_P2_1_1 -> 
        ((_lh_equalp_LH_P2_0_1 = _lh_equalp_LH_P2_0_0) && (_lh_equalp_LH_P2_1_1 = _lh_equalp_LH_P2_1_0)))));;
let rec right_d1_d0 =
  (`LH_P2(1, 0));;
let rec size_d0_d0 =
  200;;
let rec size_d1_d0 =
  200;;
let rec size_d1_d0_d0 =
  200;;
let rec size_d1_d1_d0 =
  200;;
let rec size_d1_d2_d0 =
  200;;
let rec size_d2_d0 =
  200;;
let rec size_d3_d0 =
  200;;
let rec size_d4_d0 =
  200;;
let rec size_d5_d0 =
  200;;
let rec size_d6_d0 =
  200;;
let rec size_d7_d0 =
  200;;
let rec size_d8_d0 =
  200;;
let rec size_d9_d0 =
  200;;
let rec strEq_d0_d0 _lh_strEq_arg1_0 _lh_strEq_arg2_0 =
  (match _lh_strEq_arg1_0 with
    | `LH_C(_lh_strEq_LH_C_0_0, _lh_strEq_LH_C_1_0) -> 
      (let rec _lh_matchIdent_2 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_2 with
          | `LH_C(_lh_strEq_LH_C_0_1, _lh_strEq_LH_C_1_1) -> 
            (if (_lh_strEq_LH_C_0_0 = _lh_strEq_LH_C_0_1) then
              ((strEq_d0_d0 _lh_strEq_LH_C_1_0) _lh_strEq_LH_C_1_1)
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
let rec up_d0_d0 =
  (`LH_P2(0, (0 - 1)));;
let rec build_tree_d0_d0 _lh_build_tree_arg1_0 _lh_build_tree_arg2_0 =
  (match _lh_build_tree_arg1_0 with
    | `LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0) -> 
      (match _lh_build_tree_arg2_0 with
        | `LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1) -> 
          (let rec rec_col_0 = ((check_perim_d0_d0 (`LH_P2(_lh_build_tree_LH_P2_0_0, _lh_build_tree_LH_P2_1_0))) (`LH_P2(_lh_build_tree_LH_P2_0_1, _lh_build_tree_LH_P2_1_1))) in
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
                                  (if (rec_col_0 != (0 - 1)) then
                                    (`Leaf(rec_col_0))
                                  else
                                    (if ((strEq_d0_d0 split_0) (`LH_C('N', (`LH_C('S', (`LH_N)))))) then
                                      (`NS(((build_tree_d0_d0 nsp1_0) nsp2_0), ((build_tree_d0_d0 nsp3_0) nsp4_0)))
                                    else
                                      (`EW(((build_tree_d0_d0 ewp1_0) ewp2_0), ((build_tree_d0_d0 ewp3_0) ewp4_0)))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and check_perim_d0_d0 _lh_check_perim_arg1_0 _lh_check_perim_arg2_0 =
  (match _lh_check_perim_arg1_0 with
    | `LH_P2(_lh_check_perim_LH_P2_0_0, _lh_check_perim_LH_P2_1_0) -> 
      (match _lh_check_perim_arg2_0 with
        | `LH_P2(_lh_check_perim_LH_P2_0_1, _lh_check_perim_LH_P2_1_1) -> 
          (let rec col1_0 = (point_colour_d0_d0 (let rec _lh_point_colour_LH_P2_0_0 = _lh_check_perim_LH_P2_0_0 in
            (let rec _lh_point_colour_LH_P2_1_0 = _lh_check_perim_LH_P2_1_0 in
              (fun _lh_dummy_0 -> 
                (((((check_radius_d0_d0 (np_d0_d0 _lh_point_colour_LH_P2_0_0)) (nq_d0_d0 _lh_point_colour_LH_P2_1_0)) 0) 0.0) 0.0))))) in
            (let rec col2_0 = (point_colour_d1_d0 (let rec _lh_point_colour_LH_P2_0_1 = _lh_check_perim_LH_P2_0_1 in
              (let rec _lh_point_colour_LH_P2_1_1 = _lh_check_perim_LH_P2_1_0 in
                (fun _lh_dummy_1 -> 
                  (((((check_radius_d1_d0 (np_d1_d0 _lh_point_colour_LH_P2_0_1)) (nq_d1_d0 _lh_point_colour_LH_P2_1_1)) 0) 0.0) 0.0))))) in
              (let rec col3_0 = (point_colour_d2_d0 (let rec _lh_point_colour_LH_P2_0_2 = _lh_check_perim_LH_P2_0_1 in
                (let rec _lh_point_colour_LH_P2_1_2 = _lh_check_perim_LH_P2_1_1 in
                  (fun _lh_dummy_2 -> 
                    (((((check_radius_d2_d0 (np_d2_d0 _lh_point_colour_LH_P2_0_2)) (nq_d2_d0 _lh_point_colour_LH_P2_1_2)) 0) 0.0) 0.0))))) in
                (let rec col4_0 = (point_colour_d3_d0 (let rec _lh_point_colour_LH_P2_0_3 = _lh_check_perim_LH_P2_0_0 in
                  (let rec _lh_point_colour_LH_P2_1_3 = _lh_check_perim_LH_P2_1_1 in
                    (fun _lh_dummy_3 -> 
                      (((((check_radius_d3_d0 (np_d3_d0 _lh_point_colour_LH_P2_0_3)) (nq_d3_d0 _lh_point_colour_LH_P2_1_3)) 0) 0.0) 0.0))))) in
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
                                  (let rec finished_0 = (if ((equalp_d0_d0 (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))) right_d0_d0) then
                                    (_lh_check_perim_LH_P2_0_2 >= _lh_check_perim_LH_P2_0_1)
                                  else
                                    (if ((equalp_d1_d0 (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))) down_d0_d0) then
                                      (_lh_check_perim_LH_P2_1_2 <= _lh_check_perim_LH_P2_1_1)
                                    else
                                      (if ((equalp_d2_d0 (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))) left_d0_d0) then
                                        (_lh_check_perim_LH_P2_0_2 <= _lh_check_perim_LH_P2_0_0)
                                      else
                                        (_lh_check_perim_LH_P2_1_2 >= _lh_check_perim_LH_P2_1_0)))) in
                                    (if finished_0 then
                                      true
                                    else
                                      (if ((point_colour_d4_d0 (`LH_P2(_lh_check_perim_LH_P2_0_2, _lh_check_perim_LH_P2_1_2))) != col1_0) then
                                        false
                                      else
                                        ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_2 + _lh_check_perim_LH_P2_0_3), (_lh_check_perim_LH_P2_1_2 + _lh_check_perim_LH_P2_1_3)))) (`LH_P2(_lh_check_perim_LH_P2_0_3, _lh_check_perim_LH_P2_1_3))))))
                                | _ -> 
                                  (failwith "error")))
                          | _ -> 
                            (failwith "error")))) in
                      (let rec check_sides_0 = (if ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_0 + 1), _lh_check_perim_LH_P2_1_0))) right_d1_d0) then
                        (if ((check_line_0 (`LH_P2(_lh_check_perim_LH_P2_0_1, (_lh_check_perim_LH_P2_1_0 + 1)))) down_d1_d0) then
                          (if ((check_line_0 (`LH_P2((_lh_check_perim_LH_P2_0_1 - 1), _lh_check_perim_LH_P2_1_1))) left_d1_d0) then
                            (if ((check_line_0 (`LH_P2(_lh_check_perim_LH_P2_0_0, (_lh_check_perim_LH_P2_1_1 - 1)))) up_d0_d0) then
                              col1_0
                            else
                              (0 - 1))
                          else
                            (0 - 1))
                        else
                          (0 - 1))
                      else
                        (0 - 1)) in
                        (if ((equalp_d3_d0 (let rec _lh_equalp_LH_P2_0_2 = _lh_check_perim_LH_P2_0_0 in
                          (let rec _lh_equalp_LH_P2_1_2 = _lh_check_perim_LH_P2_1_0 in
                            (fun _lh_equalp_arg2_0 -> 
                              ((_lh_equalp_arg2_0 _lh_equalp_LH_P2_0_2) _lh_equalp_LH_P2_1_2))))) (let rec _lh_equalp_LH_P2_0_3 = _lh_check_perim_LH_P2_0_1 in
                          (let rec _lh_equalp_LH_P2_1_3 = _lh_check_perim_LH_P2_1_1 in
                            (fun _lh_equalp_LH_P2_0_4 _lh_equalp_LH_P2_1_4 -> 
                              ((_lh_equalp_LH_P2_0_4 = _lh_equalp_LH_P2_0_3) && (_lh_equalp_LH_P2_1_4 = _lh_equalp_LH_P2_1_3)))))) then
                          (point_colour_d5_d0 (let rec _lh_point_colour_LH_P2_0_4 = _lh_check_perim_LH_P2_0_0 in
                            (let rec _lh_point_colour_LH_P2_1_4 = _lh_check_perim_LH_P2_1_0 in
                              (fun _lh_dummy_4 -> 
                                (((((check_radius_d5_d0 (np_d5_d0 _lh_point_colour_LH_P2_0_4)) (nq_d5_d0 _lh_point_colour_LH_P2_1_4)) 0) 0.0) 0.0)))))
                        else
                          (if corners_diff_0 then
                            (0 - 1)
                          else
                            check_sides_0)))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and check_radius_d0_d0 _lh_check_radius_arg1_1 _lh_check_radius_arg2_1 _lh_check_radius_arg3_1 _lh_check_radius_arg4_1 _lh_check_radius_arg5_1 =
  (let rec xn_1 = (((new_x_d0_d0 _lh_check_radius_arg4_1) _lh_check_radius_arg5_1) _lh_check_radius_arg1_1) in
    (let rec yn_1 = (((new_y_d0_d0 _lh_check_radius_arg4_1) _lh_check_radius_arg5_1) _lh_check_radius_arg2_1) in
      (let rec r_1 = ((radius_d0_d0 xn_1) yn_1) in
        (let rec kp_1 = (_lh_check_radius_arg3_1 + 1) in
          (if (kp_1 = num_cols_d0_d0) then
            0
          else
            (if (r_1 > (float_of_int m_d0_d0)) then
              kp_1
            else
              (((((check_radius_d0_d0 _lh_check_radius_arg1_1) _lh_check_radius_arg2_1) kp_1) xn_1) yn_1)))))))
and check_radius_d1_d0 _lh_check_radius_arg1_0 _lh_check_radius_arg2_0 _lh_check_radius_arg3_0 _lh_check_radius_arg4_0 _lh_check_radius_arg5_0 =
  (let rec xn_0 = (((new_x_d1_d0 _lh_check_radius_arg4_0) _lh_check_radius_arg5_0) _lh_check_radius_arg1_0) in
    (let rec yn_0 = (((new_y_d1_d0 _lh_check_radius_arg4_0) _lh_check_radius_arg5_0) _lh_check_radius_arg2_0) in
      (let rec r_0 = ((radius_d1_d0 xn_0) yn_0) in
        (let rec kp_0 = (_lh_check_radius_arg3_0 + 1) in
          (if (kp_0 = num_cols_d1_d0) then
            0
          else
            (if (r_0 > (float_of_int m_d1_d0)) then
              kp_0
            else
              (((((check_radius_d1_d0 _lh_check_radius_arg1_0) _lh_check_radius_arg2_0) kp_0) xn_0) yn_0)))))))
and check_radius_d2_d0 _lh_check_radius_arg1_3 _lh_check_radius_arg2_3 _lh_check_radius_arg3_3 _lh_check_radius_arg4_3 _lh_check_radius_arg5_3 =
  (let rec xn_3 = (((new_x_d2_d0 _lh_check_radius_arg4_3) _lh_check_radius_arg5_3) _lh_check_radius_arg1_3) in
    (let rec yn_3 = (((new_y_d2_d0 _lh_check_radius_arg4_3) _lh_check_radius_arg5_3) _lh_check_radius_arg2_3) in
      (let rec r_3 = ((radius_d2_d0 xn_3) yn_3) in
        (let rec kp_3 = (_lh_check_radius_arg3_3 + 1) in
          (if (kp_3 = num_cols_d2_d0) then
            0
          else
            (if (r_3 > (float_of_int m_d2_d0)) then
              kp_3
            else
              (((((check_radius_d2_d0 _lh_check_radius_arg1_3) _lh_check_radius_arg2_3) kp_3) xn_3) yn_3)))))))
and check_radius_d3_d0 _lh_check_radius_arg1_5 _lh_check_radius_arg2_5 _lh_check_radius_arg3_5 _lh_check_radius_arg4_5 _lh_check_radius_arg5_5 =
  (let rec xn_5 = (((new_x_d3_d0 _lh_check_radius_arg4_5) _lh_check_radius_arg5_5) _lh_check_radius_arg1_5) in
    (let rec yn_5 = (((new_y_d3_d0 _lh_check_radius_arg4_5) _lh_check_radius_arg5_5) _lh_check_radius_arg2_5) in
      (let rec r_5 = ((radius_d3_d0 xn_5) yn_5) in
        (let rec kp_5 = (_lh_check_radius_arg3_5 + 1) in
          (if (kp_5 = num_cols_d3_d0) then
            0
          else
            (if (r_5 > (float_of_int m_d3_d0)) then
              kp_5
            else
              (((((check_radius_d3_d0 _lh_check_radius_arg1_5) _lh_check_radius_arg2_5) kp_5) xn_5) yn_5)))))))
and check_radius_d4_d0 _lh_check_radius_arg1_4 _lh_check_radius_arg2_4 _lh_check_radius_arg3_4 _lh_check_radius_arg4_4 _lh_check_radius_arg5_4 =
  (let rec xn_4 = (((new_x_d4_d0 _lh_check_radius_arg4_4) _lh_check_radius_arg5_4) _lh_check_radius_arg1_4) in
    (let rec yn_4 = (((new_y_d4_d0 _lh_check_radius_arg4_4) _lh_check_radius_arg5_4) _lh_check_radius_arg2_4) in
      (let rec r_4 = ((radius_d4_d0 xn_4) yn_4) in
        (let rec kp_4 = (_lh_check_radius_arg3_4 + 1) in
          (if (kp_4 = num_cols_d4_d0) then
            0
          else
            (if (r_4 > (float_of_int m_d4_d0)) then
              kp_4
            else
              (((((check_radius_d4_d0 _lh_check_radius_arg1_4) _lh_check_radius_arg2_4) kp_4) xn_4) yn_4)))))))
and check_radius_d5_d0 _lh_check_radius_arg1_2 _lh_check_radius_arg2_2 _lh_check_radius_arg3_2 _lh_check_radius_arg4_2 _lh_check_radius_arg5_2 =
  (let rec xn_2 = (((new_x_d5_d0 _lh_check_radius_arg4_2) _lh_check_radius_arg5_2) _lh_check_radius_arg1_2) in
    (let rec yn_2 = (((new_y_d5_d0 _lh_check_radius_arg4_2) _lh_check_radius_arg5_2) _lh_check_radius_arg2_2) in
      (let rec r_2 = ((radius_d5_d0 xn_2) yn_2) in
        (let rec kp_2 = (_lh_check_radius_arg3_2 + 1) in
          (if (kp_2 = num_cols_d5_d0) then
            0
          else
            (if (r_2 > (float_of_int m_d5_d0)) then
              kp_2
            else
              (((((check_radius_d5_d0 _lh_check_radius_arg1_2) _lh_check_radius_arg2_2) kp_2) xn_2) yn_2)))))))
and delta_p_d0_d0 =
  ((pmx_d0_d0 -. pmn_d0_d0) /. (float_of_int (size_d0_d0 - 1)))
and delta_p_d1_d0 =
  ((pmx_d1_d0 -. pmn_d2_d0) /. (float_of_int (size_d2_d0 - 1)))
and delta_p_d2_d0 =
  ((pmx_d2_d0 -. pmn_d4_d0) /. (float_of_int (size_d4_d0 - 1)))
and delta_p_d3_d0 =
  ((pmx_d3_d0 -. pmn_d6_d0) /. (float_of_int (size_d6_d0 - 1)))
and delta_p_d4_d0 =
  ((pmx_d4_d0 -. pmn_d8_d0) /. (float_of_int (size_d8_d0 - 1)))
and delta_p_d5_d0 =
  ((pmx_d5_d0 -. pmn_d1_d0_d0) /. (float_of_int (size_d1_d0_d0 - 1)))
and delta_q_d0_d0 =
  ((qmx_d0_d0 -. qmn_d0_d0) /. (float_of_int (size_d1_d0 - 1)))
and delta_q_d1_d0 =
  ((qmx_d1_d0 -. qmn_d2_d0) /. (float_of_int (size_d3_d0 - 1)))
and delta_q_d2_d0 =
  ((qmx_d2_d0 -. qmn_d4_d0) /. (float_of_int (size_d5_d0 - 1)))
and delta_q_d3_d0 =
  ((qmx_d3_d0 -. qmn_d6_d0) /. (float_of_int (size_d7_d0 - 1)))
and delta_q_d4_d0 =
  ((qmx_d4_d0 -. qmn_d8_d0) /. (float_of_int (size_d9_d0 - 1)))
and delta_q_d5_d0 =
  ((qmx_d5_d0 -. qmn_d1_d0_d0) /. (float_of_int (size_d1_d1_d0 - 1)))
and np_d0_d0 _lh_np_arg1_0 =
  (pmn_d1_d0 +. ((float_of_int _lh_np_arg1_0) *. delta_p_d0_d0))
and np_d1_d0 _lh_np_arg1_2 =
  (pmn_d3_d0 +. ((float_of_int _lh_np_arg1_2) *. delta_p_d1_d0))
and np_d2_d0 _lh_np_arg1_5 =
  (pmn_d5_d0 +. ((float_of_int _lh_np_arg1_5) *. delta_p_d2_d0))
and np_d3_d0 _lh_np_arg1_1 =
  (pmn_d7_d0 +. ((float_of_int _lh_np_arg1_1) *. delta_p_d3_d0))
and np_d4_d0 _lh_np_arg1_4 =
  (pmn_d9_d0 +. ((float_of_int _lh_np_arg1_4) *. delta_p_d4_d0))
and np_d5_d0 _lh_np_arg1_3 =
  (pmn_d1_d1_d0 +. ((float_of_int _lh_np_arg1_3) *. delta_p_d5_d0))
and nq_d0_d0 _lh_nq_arg1_4 =
  (qmn_d1_d0 +. ((float_of_int _lh_nq_arg1_4) *. delta_q_d0_d0))
and nq_d1_d0 _lh_nq_arg1_1 =
  (qmn_d3_d0 +. ((float_of_int _lh_nq_arg1_1) *. delta_q_d1_d0))
and nq_d2_d0 _lh_nq_arg1_2 =
  (qmn_d5_d0 +. ((float_of_int _lh_nq_arg1_2) *. delta_q_d2_d0))
and nq_d3_d0 _lh_nq_arg1_5 =
  (qmn_d7_d0 +. ((float_of_int _lh_nq_arg1_5) *. delta_q_d3_d0))
and nq_d4_d0 _lh_nq_arg1_0 =
  (qmn_d9_d0 +. ((float_of_int _lh_nq_arg1_0) *. delta_q_d4_d0))
and nq_d5_d0 _lh_nq_arg1_3 =
  (qmn_d1_d1_d0 +. ((float_of_int _lh_nq_arg1_3) *. delta_q_d5_d0))
and point_colour_d4_d0 _lh_point_colour_arg1_1 =
  (match _lh_point_colour_arg1_1 with
    | `LH_P2(_lh_point_colour_LH_P2_0_5, _lh_point_colour_LH_P2_1_5) -> 
      (((((check_radius_d4_d0 (np_d4_d0 _lh_point_colour_LH_P2_0_5)) (nq_d4_d0 _lh_point_colour_LH_P2_1_5)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"))
and testMandel2_nofib_d0_d0 _lh_testMandel2_nofib_arg1_0 =
  (let rec size'_0 = ((max_d0_d0 (length_d0_d0 _lh_testMandel2_nofib_arg1_0)) size_d1_d2_d0) in
    (let rec tree_0 = ((build_tree_d0_d0 (`LH_P2(0, 0))) (`LH_P2(size'_0, (size'_0 / 2)))) in
      (finite_d0_d0 tree_0)));;

(* lumberhack_pop_out *)
let rec down_d0_d0_d0 _lh_equalp_LH_P2_0_1_9 _lh_equalp_LH_P2_1_1_9 =
  (let rec _lh_equalp_LH_P2_0_1_8 = 0 in
    (let rec _lh_equalp_LH_P2_1_1_8 = 1 in
      ((_lh_equalp_LH_P2_0_1_9 = _lh_equalp_LH_P2_0_1_8) && (_lh_equalp_LH_P2_1_1_9 = _lh_equalp_LH_P2_1_1_8))));;
let rec down_d1_d0_d0 =
  (`LH_P2(0, 1));;
let rec equalp_d0_d0_d0 _lh_equalp_arg1_4 _lh_equalp_arg2_5 =
  (match _lh_equalp_arg1_4 with
    | `LH_P2(_lh_equalp_LH_P2_0_1_2, _lh_equalp_LH_P2_1_1_2) -> 
      ((_lh_equalp_arg2_5 _lh_equalp_LH_P2_0_1_2) _lh_equalp_LH_P2_1_1_2)
    | _ -> 
      (failwith "error"));;
let rec equalp_d1_d0_d0 _lh_equalp_arg1_5 _lh_equalp_arg2_6 =
  (match _lh_equalp_arg1_5 with
    | `LH_P2(_lh_equalp_LH_P2_0_1_3, _lh_equalp_LH_P2_1_1_3) -> 
      ((_lh_equalp_arg2_6 _lh_equalp_LH_P2_0_1_3) _lh_equalp_LH_P2_1_1_3)
    | _ -> 
      (failwith "error"));;
let rec equalp_d2_d0_d0 _lh_equalp_arg1_7 _lh_equalp_arg2_8 =
  (match _lh_equalp_arg1_7 with
    | `LH_P2(_lh_equalp_LH_P2_0_2_0, _lh_equalp_LH_P2_1_2_0) -> 
      ((_lh_equalp_arg2_8 _lh_equalp_LH_P2_0_2_0) _lh_equalp_LH_P2_1_2_0)
    | _ -> 
      (failwith "error"));;
let rec equalp_d3_d0_d0 _lh_equalp_arg1_6 _lh_equalp_arg2_7 =
  (_lh_equalp_arg1_6 _lh_equalp_arg2_7);;
let rec finite_d0_d0_d0 _lh_finite_arg1_1 =
  (match _lh_finite_arg1_1 with
    | `Leaf(_lh_finite_Leaf_0_1) -> 
      (_lh_finite_Leaf_0_1 = _lh_finite_Leaf_0_1)
    | `NS(_lh_finite_NS_0_1, _lh_finite_NS_1_1) -> 
      ((finite_d0_d0_d0 _lh_finite_NS_0_1) && (finite_d0_d0_d0 _lh_finite_NS_1_1))
    | `EW(_lh_finite_EW_0_1, _lh_finite_EW_1_1) -> 
      ((finite_d0_d0_d0 _lh_finite_EW_0_1) && (finite_d0_d0_d0 _lh_finite_EW_1_1))
    | _ -> 
      (failwith "error"));;
let rec left_d0_d0_d0 _lh_equalp_LH_P2_0_1_7 _lh_equalp_LH_P2_1_1_7 =
  (let rec _lh_equalp_LH_P2_0_1_6 = (0 - 1) in
    (let rec _lh_equalp_LH_P2_1_1_6 = 0 in
      ((_lh_equalp_LH_P2_0_1_7 = _lh_equalp_LH_P2_0_1_6) && (_lh_equalp_LH_P2_1_1_7 = _lh_equalp_LH_P2_1_1_6))));;
let rec left_d1_d0_d0 =
  (`LH_P2((0 - 1), 0));;
let rec length_d0_d0_d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_d0_d0_d0 t_1))
    | `LH_N -> 
      0);;
let rec max_d0_d0_d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec m_d0_d0_d0 =
  20;;
let rec m_d1_d0_d0 =
  20;;
let rec m_d2_d0_d0 =
  20;;
let rec m_d3_d0_d0 =
  20;;
let rec m_d4_d0_d0 =
  20;;
let rec m_d5_d0_d0 =
  20;;
let rec new_x_d0_d0_d0 _lh_new_x_arg1_1_0 _lh_new_x_arg2_1_0 _lh_new_x_arg3_1_0 =
  (((_lh_new_x_arg1_1_0 *. _lh_new_x_arg1_1_0) -. (_lh_new_x_arg2_1_0 *. _lh_new_x_arg2_1_0)) +. _lh_new_x_arg3_1_0);;
let rec new_x_d1_d0_d0 _lh_new_x_arg1_8 _lh_new_x_arg2_8 _lh_new_x_arg3_8 =
  (((_lh_new_x_arg1_8 *. _lh_new_x_arg1_8) -. (_lh_new_x_arg2_8 *. _lh_new_x_arg2_8)) +. _lh_new_x_arg3_8);;
let rec new_x_d2_d0_d0 _lh_new_x_arg1_7 _lh_new_x_arg2_7 _lh_new_x_arg3_7 =
  (((_lh_new_x_arg1_7 *. _lh_new_x_arg1_7) -. (_lh_new_x_arg2_7 *. _lh_new_x_arg2_7)) +. _lh_new_x_arg3_7);;
let rec new_x_d3_d0_d0 _lh_new_x_arg1_9 _lh_new_x_arg2_9 _lh_new_x_arg3_9 =
  (((_lh_new_x_arg1_9 *. _lh_new_x_arg1_9) -. (_lh_new_x_arg2_9 *. _lh_new_x_arg2_9)) +. _lh_new_x_arg3_9);;
let rec new_x_d4_d0_d0 _lh_new_x_arg1_1_1 _lh_new_x_arg2_1_1 _lh_new_x_arg3_1_1 =
  (((_lh_new_x_arg1_1_1 *. _lh_new_x_arg1_1_1) -. (_lh_new_x_arg2_1_1 *. _lh_new_x_arg2_1_1)) +. _lh_new_x_arg3_1_1);;
let rec new_x_d5_d0_d0 _lh_new_x_arg1_6 _lh_new_x_arg2_6 _lh_new_x_arg3_6 =
  (((_lh_new_x_arg1_6 *. _lh_new_x_arg1_6) -. (_lh_new_x_arg2_6 *. _lh_new_x_arg2_6)) +. _lh_new_x_arg3_6);;
let rec new_y_d0_d0_d0 _lh_new_y_arg1_9 _lh_new_y_arg2_9 _lh_new_y_arg3_9 =
  (((2.0 *. _lh_new_y_arg1_9) *. _lh_new_y_arg2_9) +. _lh_new_y_arg3_9);;
let rec new_y_d1_d0_d0 _lh_new_y_arg1_8 _lh_new_y_arg2_8 _lh_new_y_arg3_8 =
  (((2.0 *. _lh_new_y_arg1_8) *. _lh_new_y_arg2_8) +. _lh_new_y_arg3_8);;
let rec new_y_d2_d0_d0 _lh_new_y_arg1_1_0 _lh_new_y_arg2_1_0 _lh_new_y_arg3_1_0 =
  (((2.0 *. _lh_new_y_arg1_1_0) *. _lh_new_y_arg2_1_0) +. _lh_new_y_arg3_1_0);;
let rec new_y_d3_d0_d0 _lh_new_y_arg1_7 _lh_new_y_arg2_7 _lh_new_y_arg3_7 =
  (((2.0 *. _lh_new_y_arg1_7) *. _lh_new_y_arg2_7) +. _lh_new_y_arg3_7);;
let rec new_y_d4_d0_d0 _lh_new_y_arg1_1_1 _lh_new_y_arg2_1_1 _lh_new_y_arg3_1_1 =
  (((2.0 *. _lh_new_y_arg1_1_1) *. _lh_new_y_arg2_1_1) +. _lh_new_y_arg3_1_1);;
let rec new_y_d5_d0_d0 _lh_new_y_arg1_6 _lh_new_y_arg2_6 _lh_new_y_arg3_6 =
  (((2.0 *. _lh_new_y_arg1_6) *. _lh_new_y_arg2_6) +. _lh_new_y_arg3_6);;
let rec num_cols_d0_d0_d0 =
  26;;
let rec num_cols_d1_d0_d0 =
  26;;
let rec num_cols_d2_d0_d0 =
  26;;
let rec num_cols_d3_d0_d0 =
  26;;
let rec num_cols_d4_d0_d0 =
  26;;
let rec num_cols_d5_d0_d0 =
  26;;
let rec pmn_d0_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d1_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d1_d0_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d1_d1_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d2_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d3_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d4_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d5_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d6_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d7_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d8_d0_d0 =
  (0.0 -. 2.25);;
let rec pmn_d9_d0_d0 =
  (0.0 -. 2.25);;
let rec pmx_d0_d0_d0 =
  0.75;;
let rec pmx_d1_d0_d0 =
  0.75;;
let rec pmx_d2_d0_d0 =
  0.75;;
let rec pmx_d3_d0_d0 =
  0.75;;
let rec pmx_d4_d0_d0 =
  0.75;;
let rec pmx_d5_d0_d0 =
  0.75;;
let rec point_colour_d0_d0_d0 _lh_point_colour_arg1_6 =
  (_lh_point_colour_arg1_6 99);;
let rec point_colour_d1_d0_d0 _lh_point_colour_arg1_1_0 =
  (_lh_point_colour_arg1_1_0 99);;
let rec point_colour_d2_d0_d0 _lh_point_colour_arg1_8 =
  (_lh_point_colour_arg1_8 99);;
let rec point_colour_d3_d0_d0 _lh_point_colour_arg1_7 =
  (_lh_point_colour_arg1_7 99);;
let rec point_colour_d5_d0_d0 _lh_point_colour_arg1_9 =
  (_lh_point_colour_arg1_9 99);;
let rec qmn_d0_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d1_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d1_d0_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d1_d1_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d2_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d3_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d4_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d5_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d6_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d7_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d8_d0_d0 =
  (0.0 -. 1.5);;
let rec qmn_d9_d0_d0 =
  (0.0 -. 1.5);;
let rec qmx_d0_d0_d0 =
  1.5;;
let rec qmx_d1_d0_d0 =
  1.5;;
let rec qmx_d2_d0_d0 =
  1.5;;
let rec qmx_d3_d0_d0 =
  1.5;;
let rec qmx_d4_d0_d0 =
  1.5;;
let rec qmx_d5_d0_d0 =
  1.5;;
let rec radius_d0_d0_d0 _lh_radius_arg1_6 _lh_radius_arg2_6 =
  ((_lh_radius_arg1_6 *. _lh_radius_arg1_6) +. (_lh_radius_arg2_6 *. _lh_radius_arg2_6));;
let rec radius_d1_d0_d0 _lh_radius_arg1_8 _lh_radius_arg2_8 =
  ((_lh_radius_arg1_8 *. _lh_radius_arg1_8) +. (_lh_radius_arg2_8 *. _lh_radius_arg2_8));;
let rec radius_d2_d0_d0 _lh_radius_arg1_9 _lh_radius_arg2_9 =
  ((_lh_radius_arg1_9 *. _lh_radius_arg1_9) +. (_lh_radius_arg2_9 *. _lh_radius_arg2_9));;
let rec radius_d3_d0_d0 _lh_radius_arg1_7 _lh_radius_arg2_7 =
  ((_lh_radius_arg1_7 *. _lh_radius_arg1_7) +. (_lh_radius_arg2_7 *. _lh_radius_arg2_7));;
let rec radius_d4_d0_d0 _lh_radius_arg1_1_1 _lh_radius_arg2_1_1 =
  ((_lh_radius_arg1_1_1 *. _lh_radius_arg1_1_1) +. (_lh_radius_arg2_1_1 *. _lh_radius_arg2_1_1));;
let rec radius_d5_d0_d0 _lh_radius_arg1_1_0 _lh_radius_arg2_1_0 =
  ((_lh_radius_arg1_1_0 *. _lh_radius_arg1_1_0) +. (_lh_radius_arg2_1_0 *. _lh_radius_arg2_1_0));;
let rec right_d0_d0_d0 _lh_equalp_LH_P2_0_1_5 _lh_equalp_LH_P2_1_1_5 =
  (let rec _lh_equalp_LH_P2_0_1_4 = 1 in
    (let rec _lh_equalp_LH_P2_1_1_4 = 0 in
      ((_lh_equalp_LH_P2_0_1_5 = _lh_equalp_LH_P2_0_1_4) && (_lh_equalp_LH_P2_1_1_5 = _lh_equalp_LH_P2_1_1_4))));;
let rec right_d1_d0_d0 =
  (`LH_P2(1, 0));;
let rec size_d0_d0_d0 =
  200;;
let rec size_d1_d0_d0 =
  200;;
let rec size_d1_d0_d0_d0 =
  200;;
let rec size_d1_d1_d0_d0 =
  200;;
let rec size_d1_d2_d0_d0 =
  200;;
let rec size_d2_d0_d0 =
  200;;
let rec size_d3_d0_d0 =
  200;;
let rec size_d4_d0_d0 =
  200;;
let rec size_d5_d0_d0 =
  200;;
let rec size_d6_d0_d0 =
  200;;
let rec size_d7_d0_d0 =
  200;;
let rec size_d8_d0_d0 =
  200;;
let rec size_d9_d0_d0 =
  200;;
let rec strEq_d0_d0_d0 _lh_strEq_arg1_1 _lh_strEq_arg2_1 =
  (match _lh_strEq_arg1_1 with
    | `LH_C(_lh_strEq_LH_C_0_3, _lh_strEq_LH_C_1_3) -> 
      (let rec _lh_matchIdent_4 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_4 with
          | `LH_C(_lh_strEq_LH_C_0_4, _lh_strEq_LH_C_1_4) -> 
            (if (_lh_strEq_LH_C_0_3 = _lh_strEq_LH_C_0_4) then
              ((strEq_d0_d0_d0 _lh_strEq_LH_C_1_3) _lh_strEq_LH_C_1_4)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_5 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_5 with
          | `LH_C(_lh_strEq_LH_C_0_5, _lh_strEq_LH_C_1_5) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec up_d0_d0_d0 =
  (`LH_P2(0, (0 - 1)));;
let rec build_tree_d0_d0_d0 _lh_build_tree_arg1_1 _lh_build_tree_arg2_1 =
  (match _lh_build_tree_arg1_1 with
    | `LH_P2(_lh_build_tree_LH_P2_0_2, _lh_build_tree_LH_P2_1_2) -> 
      (match _lh_build_tree_arg2_1 with
        | `LH_P2(_lh_build_tree_LH_P2_0_3, _lh_build_tree_LH_P2_1_3) -> 
          (let rec rec_col_1 = ((check_perim_d0_d0_d0 (`LH_P2(_lh_build_tree_LH_P2_0_2, _lh_build_tree_LH_P2_1_2))) (`LH_P2(_lh_build_tree_LH_P2_0_3, _lh_build_tree_LH_P2_1_3))) in
            (let rec split_1 = (if ((_lh_build_tree_LH_P2_0_3 - _lh_build_tree_LH_P2_0_2) >= (_lh_build_tree_LH_P2_1_3 - _lh_build_tree_LH_P2_1_2)) then
              (`LH_C('N', (`LH_C('S', (`LH_N)))))
            else
              (`LH_C('E', (`LH_C('W', (`LH_N)))))) in
              (let rec split_x_1 = ((_lh_build_tree_LH_P2_0_3 + _lh_build_tree_LH_P2_0_2) / 2) in
                (let rec split_y_1 = ((_lh_build_tree_LH_P2_1_3 + _lh_build_tree_LH_P2_1_2) / 2) in
                  (let rec nsp1_1 = (`LH_P2(_lh_build_tree_LH_P2_0_2, _lh_build_tree_LH_P2_1_2)) in
                    (let rec nsp2_1 = (`LH_P2(split_x_1, _lh_build_tree_LH_P2_1_3)) in
                      (let rec nsp3_1 = (`LH_P2((split_x_1 + 1), _lh_build_tree_LH_P2_1_2)) in
                        (let rec nsp4_1 = (`LH_P2(_lh_build_tree_LH_P2_0_3, _lh_build_tree_LH_P2_1_3)) in
                          (let rec ewp1_1 = (`LH_P2(_lh_build_tree_LH_P2_0_2, _lh_build_tree_LH_P2_1_2)) in
                            (let rec ewp2_1 = (`LH_P2(_lh_build_tree_LH_P2_0_3, split_y_1)) in
                              (let rec ewp3_1 = (`LH_P2(_lh_build_tree_LH_P2_0_2, (split_y_1 + 1))) in
                                (let rec ewp4_1 = (`LH_P2(_lh_build_tree_LH_P2_0_3, _lh_build_tree_LH_P2_1_3)) in
                                  (if (rec_col_1 != (0 - 1)) then
                                    (`Leaf(rec_col_1))
                                  else
                                    (if ((strEq_d0_d0_d0 split_1) (`LH_C('N', (`LH_C('S', (`LH_N)))))) then
                                      (`NS(((build_tree_d0_d0_d0 nsp1_1) nsp2_1), ((build_tree_d0_d0_d0 nsp3_1) nsp4_1)))
                                    else
                                      (`EW(((build_tree_d0_d0_d0 ewp1_1) ewp2_1), ((build_tree_d0_d0_d0 ewp3_1) ewp4_1)))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and check_perim_d0_d0_d0 _lh_check_perim_arg1_1 _lh_check_perim_arg2_1 =
  (match _lh_check_perim_arg1_1 with
    | `LH_P2(_lh_check_perim_LH_P2_0_4, _lh_check_perim_LH_P2_1_4) -> 
      (match _lh_check_perim_arg2_1 with
        | `LH_P2(_lh_check_perim_LH_P2_0_5, _lh_check_perim_LH_P2_1_5) -> 
          (let rec col1_1 = (point_colour_d0_d0_d0 (let rec _lh_point_colour_LH_P2_0_6 = _lh_check_perim_LH_P2_0_4 in
            (let rec _lh_point_colour_LH_P2_1_6 = _lh_check_perim_LH_P2_1_4 in
              (fun _lh_dummy_5 -> 
                (((((check_radius_d0_d0_d0 (np_d0_d0_d0 _lh_point_colour_LH_P2_0_6)) (nq_d0_d0_d0 _lh_point_colour_LH_P2_1_6)) 0) 0.0) 0.0))))) in
            (let rec col2_1 = (point_colour_d1_d0_d0 (let rec _lh_point_colour_LH_P2_0_7 = _lh_check_perim_LH_P2_0_5 in
              (let rec _lh_point_colour_LH_P2_1_7 = _lh_check_perim_LH_P2_1_4 in
                (fun _lh_dummy_6 -> 
                  (((((check_radius_d1_d0_d0 (np_d1_d0_d0 _lh_point_colour_LH_P2_0_7)) (nq_d1_d0_d0 _lh_point_colour_LH_P2_1_7)) 0) 0.0) 0.0))))) in
              (let rec col3_1 = (point_colour_d2_d0_d0 (let rec _lh_point_colour_LH_P2_0_8 = _lh_check_perim_LH_P2_0_5 in
                (let rec _lh_point_colour_LH_P2_1_8 = _lh_check_perim_LH_P2_1_5 in
                  (fun _lh_dummy_7 -> 
                    (((((check_radius_d2_d0_d0 (np_d2_d0_d0 _lh_point_colour_LH_P2_0_8)) (nq_d2_d0_d0 _lh_point_colour_LH_P2_1_8)) 0) 0.0) 0.0))))) in
                (let rec col4_1 = (point_colour_d3_d0_d0 (let rec _lh_point_colour_LH_P2_0_9 = _lh_check_perim_LH_P2_0_4 in
                  (let rec _lh_point_colour_LH_P2_1_9 = _lh_check_perim_LH_P2_1_5 in
                    (fun _lh_dummy_8 -> 
                      (((((check_radius_d3_d0_d0 (np_d3_d0_d0 _lh_point_colour_LH_P2_0_9)) (nq_d3_d0_d0 _lh_point_colour_LH_P2_1_9)) 0) 0.0) 0.0))))) in
                  (let rec corners_diff_1 = (if (col1_1 = col2_1) then
                    (if (col1_1 = col3_1) then
                      (if (col1_1 = col4_1) then
                        false
                      else
                        true)
                    else
                      true)
                  else
                    true) in
                    (let rec check_line_1 = (fun xcyc_1 xdyd_1 -> 
                      (let rec _lh_matchIdent_6 = xcyc_1 in
                        (match _lh_matchIdent_6 with
                          | `LH_P2(_lh_check_perim_LH_P2_0_6, _lh_check_perim_LH_P2_1_6) -> 
                            (let rec _lh_matchIdent_7 = xdyd_1 in
                              (match _lh_matchIdent_7 with
                                | `LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7) -> 
                                  (let rec finished_1 = (if ((equalp_d0_d0_d0 (`LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7))) right_d0_d0_d0) then
                                    (_lh_check_perim_LH_P2_0_6 >= _lh_check_perim_LH_P2_0_5)
                                  else
                                    (if ((equalp_d1_d0_d0 (`LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7))) down_d0_d0_d0) then
                                      (_lh_check_perim_LH_P2_1_6 <= _lh_check_perim_LH_P2_1_5)
                                    else
                                      (if ((equalp_d2_d0_d0 (`LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7))) left_d0_d0_d0) then
                                        (_lh_check_perim_LH_P2_0_6 <= _lh_check_perim_LH_P2_0_4)
                                      else
                                        (_lh_check_perim_LH_P2_1_6 >= _lh_check_perim_LH_P2_1_4)))) in
                                    (if finished_1 then
                                      true
                                    else
                                      (if ((point_colour_d4_d0_d0 (`LH_P2(_lh_check_perim_LH_P2_0_6, _lh_check_perim_LH_P2_1_6))) != col1_1) then
                                        false
                                      else
                                        ((check_line_1 (`LH_P2((_lh_check_perim_LH_P2_0_6 + _lh_check_perim_LH_P2_0_7), (_lh_check_perim_LH_P2_1_6 + _lh_check_perim_LH_P2_1_7)))) (`LH_P2(_lh_check_perim_LH_P2_0_7, _lh_check_perim_LH_P2_1_7))))))
                                | _ -> 
                                  (failwith "error")))
                          | _ -> 
                            (failwith "error")))) in
                      (let rec check_sides_1 = (if ((check_line_1 (`LH_P2((_lh_check_perim_LH_P2_0_4 + 1), _lh_check_perim_LH_P2_1_4))) right_d1_d0_d0) then
                        (if ((check_line_1 (`LH_P2(_lh_check_perim_LH_P2_0_5, (_lh_check_perim_LH_P2_1_4 + 1)))) down_d1_d0_d0) then
                          (if ((check_line_1 (`LH_P2((_lh_check_perim_LH_P2_0_5 - 1), _lh_check_perim_LH_P2_1_5))) left_d1_d0_d0) then
                            (if ((check_line_1 (`LH_P2(_lh_check_perim_LH_P2_0_4, (_lh_check_perim_LH_P2_1_5 - 1)))) up_d0_d0_d0) then
                              col1_1
                            else
                              (0 - 1))
                          else
                            (0 - 1))
                        else
                          (0 - 1))
                      else
                        (0 - 1)) in
                        (if ((equalp_d3_d0_d0 (let rec _lh_equalp_LH_P2_0_2_1 = _lh_check_perim_LH_P2_0_4 in
                          (let rec _lh_equalp_LH_P2_1_2_1 = _lh_check_perim_LH_P2_1_4 in
                            (fun _lh_equalp_arg2_9 -> 
                              ((_lh_equalp_arg2_9 _lh_equalp_LH_P2_0_2_1) _lh_equalp_LH_P2_1_2_1))))) (let rec _lh_equalp_LH_P2_0_2_2 = _lh_check_perim_LH_P2_0_5 in
                          (let rec _lh_equalp_LH_P2_1_2_2 = _lh_check_perim_LH_P2_1_5 in
                            (fun _lh_equalp_LH_P2_0_2_3 _lh_equalp_LH_P2_1_2_3 -> 
                              ((_lh_equalp_LH_P2_0_2_3 = _lh_equalp_LH_P2_0_2_2) && (_lh_equalp_LH_P2_1_2_3 = _lh_equalp_LH_P2_1_2_2)))))) then
                          (point_colour_d5_d0_d0 (let rec _lh_point_colour_LH_P2_0_1_0 = _lh_check_perim_LH_P2_0_4 in
                            (let rec _lh_point_colour_LH_P2_1_1_0 = _lh_check_perim_LH_P2_1_4 in
                              (fun _lh_dummy_9 -> 
                                (((((check_radius_d5_d0_d0 (np_d5_d0_d0 _lh_point_colour_LH_P2_0_1_0)) (nq_d5_d0_d0 _lh_point_colour_LH_P2_1_1_0)) 0) 0.0) 0.0)))))
                        else
                          (if corners_diff_1 then
                            (0 - 1)
                          else
                            check_sides_1)))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and check_radius_d0_d0_d0 _lh_check_radius_arg1_1_1 _lh_check_radius_arg2_1_1 _lh_check_radius_arg3_1_1 _lh_check_radius_arg4_1_1 _lh_check_radius_arg5_1_1 =
  (let rec xn_1_1 = (((new_x_d0_d0_d0 _lh_check_radius_arg4_1_1) _lh_check_radius_arg5_1_1) _lh_check_radius_arg1_1_1) in
    (let rec yn_1_1 = (((new_y_d0_d0_d0 _lh_check_radius_arg4_1_1) _lh_check_radius_arg5_1_1) _lh_check_radius_arg2_1_1) in
      (let rec r_1_1 = ((radius_d0_d0_d0 xn_1_1) yn_1_1) in
        (let rec kp_1_1 = (_lh_check_radius_arg3_1_1 + 1) in
          (if (kp_1_1 = num_cols_d0_d0_d0) then
            0
          else
            (if (r_1_1 > (float_of_int m_d0_d0_d0)) then
              kp_1_1
            else
              (((((check_radius_d0_d0_d0 _lh_check_radius_arg1_1_1) _lh_check_radius_arg2_1_1) kp_1_1) xn_1_1) yn_1_1)))))))
and check_radius_d1_d0_d0 _lh_check_radius_arg1_7 _lh_check_radius_arg2_7 _lh_check_radius_arg3_7 _lh_check_radius_arg4_7 _lh_check_radius_arg5_7 =
  (let rec xn_7 = (((new_x_d1_d0_d0 _lh_check_radius_arg4_7) _lh_check_radius_arg5_7) _lh_check_radius_arg1_7) in
    (let rec yn_7 = (((new_y_d1_d0_d0 _lh_check_radius_arg4_7) _lh_check_radius_arg5_7) _lh_check_radius_arg2_7) in
      (let rec r_7 = ((radius_d1_d0_d0 xn_7) yn_7) in
        (let rec kp_7 = (_lh_check_radius_arg3_7 + 1) in
          (if (kp_7 = num_cols_d1_d0_d0) then
            0
          else
            (if (r_7 > (float_of_int m_d1_d0_d0)) then
              kp_7
            else
              (((((check_radius_d1_d0_d0 _lh_check_radius_arg1_7) _lh_check_radius_arg2_7) kp_7) xn_7) yn_7)))))))
and check_radius_d2_d0_d0 _lh_check_radius_arg1_6 _lh_check_radius_arg2_6 _lh_check_radius_arg3_6 _lh_check_radius_arg4_6 _lh_check_radius_arg5_6 =
  (let rec xn_6 = (((new_x_d2_d0_d0 _lh_check_radius_arg4_6) _lh_check_radius_arg5_6) _lh_check_radius_arg1_6) in
    (let rec yn_6 = (((new_y_d2_d0_d0 _lh_check_radius_arg4_6) _lh_check_radius_arg5_6) _lh_check_radius_arg2_6) in
      (let rec r_6 = ((radius_d2_d0_d0 xn_6) yn_6) in
        (let rec kp_6 = (_lh_check_radius_arg3_6 + 1) in
          (if (kp_6 = num_cols_d2_d0_d0) then
            0
          else
            (if (r_6 > (float_of_int m_d2_d0_d0)) then
              kp_6
            else
              (((((check_radius_d2_d0_d0 _lh_check_radius_arg1_6) _lh_check_radius_arg2_6) kp_6) xn_6) yn_6)))))))
and check_radius_d3_d0_d0 _lh_check_radius_arg1_9 _lh_check_radius_arg2_9 _lh_check_radius_arg3_9 _lh_check_radius_arg4_9 _lh_check_radius_arg5_9 =
  (let rec xn_9 = (((new_x_d3_d0_d0 _lh_check_radius_arg4_9) _lh_check_radius_arg5_9) _lh_check_radius_arg1_9) in
    (let rec yn_9 = (((new_y_d3_d0_d0 _lh_check_radius_arg4_9) _lh_check_radius_arg5_9) _lh_check_radius_arg2_9) in
      (let rec r_9 = ((radius_d3_d0_d0 xn_9) yn_9) in
        (let rec kp_9 = (_lh_check_radius_arg3_9 + 1) in
          (if (kp_9 = num_cols_d3_d0_d0) then
            0
          else
            (if (r_9 > (float_of_int m_d3_d0_d0)) then
              kp_9
            else
              (((((check_radius_d3_d0_d0 _lh_check_radius_arg1_9) _lh_check_radius_arg2_9) kp_9) xn_9) yn_9)))))))
and check_radius_d4_d0_d0 _lh_check_radius_arg1_1_0 _lh_check_radius_arg2_1_0 _lh_check_radius_arg3_1_0 _lh_check_radius_arg4_1_0 _lh_check_radius_arg5_1_0 =
  (let rec xn_1_0 = (((new_x_d4_d0_d0 _lh_check_radius_arg4_1_0) _lh_check_radius_arg5_1_0) _lh_check_radius_arg1_1_0) in
    (let rec yn_1_0 = (((new_y_d4_d0_d0 _lh_check_radius_arg4_1_0) _lh_check_radius_arg5_1_0) _lh_check_radius_arg2_1_0) in
      (let rec r_1_0 = ((radius_d4_d0_d0 xn_1_0) yn_1_0) in
        (let rec kp_1_0 = (_lh_check_radius_arg3_1_0 + 1) in
          (if (kp_1_0 = num_cols_d4_d0_d0) then
            0
          else
            (if (r_1_0 > (float_of_int m_d4_d0_d0)) then
              kp_1_0
            else
              (((((check_radius_d4_d0_d0 _lh_check_radius_arg1_1_0) _lh_check_radius_arg2_1_0) kp_1_0) xn_1_0) yn_1_0)))))))
and check_radius_d5_d0_d0 _lh_check_radius_arg1_8 _lh_check_radius_arg2_8 _lh_check_radius_arg3_8 _lh_check_radius_arg4_8 _lh_check_radius_arg5_8 =
  (let rec xn_8 = (((new_x_d5_d0_d0 _lh_check_radius_arg4_8) _lh_check_radius_arg5_8) _lh_check_radius_arg1_8) in
    (let rec yn_8 = (((new_y_d5_d0_d0 _lh_check_radius_arg4_8) _lh_check_radius_arg5_8) _lh_check_radius_arg2_8) in
      (let rec r_8 = ((radius_d5_d0_d0 xn_8) yn_8) in
        (let rec kp_8 = (_lh_check_radius_arg3_8 + 1) in
          (if (kp_8 = num_cols_d5_d0_d0) then
            0
          else
            (if (r_8 > (float_of_int m_d5_d0_d0)) then
              kp_8
            else
              (((((check_radius_d5_d0_d0 _lh_check_radius_arg1_8) _lh_check_radius_arg2_8) kp_8) xn_8) yn_8)))))))
and delta_p_d0_d0_d0 =
  ((pmx_d0_d0_d0 -. pmn_d0_d0_d0) /. (float_of_int (size_d0_d0_d0 - 1)))
and delta_p_d1_d0_d0 =
  ((pmx_d1_d0_d0 -. pmn_d2_d0_d0) /. (float_of_int (size_d2_d0_d0 - 1)))
and delta_p_d2_d0_d0 =
  ((pmx_d2_d0_d0 -. pmn_d4_d0_d0) /. (float_of_int (size_d4_d0_d0 - 1)))
and delta_p_d3_d0_d0 =
  ((pmx_d3_d0_d0 -. pmn_d6_d0_d0) /. (float_of_int (size_d6_d0_d0 - 1)))
and delta_p_d4_d0_d0 =
  ((pmx_d4_d0_d0 -. pmn_d8_d0_d0) /. (float_of_int (size_d8_d0_d0 - 1)))
and delta_p_d5_d0_d0 =
  ((pmx_d5_d0_d0 -. pmn_d1_d0_d0_d0) /. (float_of_int (size_d1_d0_d0_d0 - 1)))
and delta_q_d0_d0_d0 =
  ((qmx_d0_d0_d0 -. qmn_d0_d0_d0) /. (float_of_int (size_d1_d0_d0 - 1)))
and delta_q_d1_d0_d0 =
  ((qmx_d1_d0_d0 -. qmn_d2_d0_d0) /. (float_of_int (size_d3_d0_d0 - 1)))
and delta_q_d2_d0_d0 =
  ((qmx_d2_d0_d0 -. qmn_d4_d0_d0) /. (float_of_int (size_d5_d0_d0 - 1)))
and delta_q_d3_d0_d0 =
  ((qmx_d3_d0_d0 -. qmn_d6_d0_d0) /. (float_of_int (size_d7_d0_d0 - 1)))
and delta_q_d4_d0_d0 =
  ((qmx_d4_d0_d0 -. qmn_d8_d0_d0) /. (float_of_int (size_d9_d0_d0 - 1)))
and delta_q_d5_d0_d0 =
  ((qmx_d5_d0_d0 -. qmn_d1_d0_d0_d0) /. (float_of_int (size_d1_d1_d0_d0 - 1)))
and np_d0_d0_d0 _lh_np_arg1_8 =
  (pmn_d1_d0_d0 +. ((float_of_int _lh_np_arg1_8) *. delta_p_d0_d0_d0))
and np_d1_d0_d0 _lh_np_arg1_6 =
  (pmn_d3_d0_d0 +. ((float_of_int _lh_np_arg1_6) *. delta_p_d1_d0_d0))
and np_d2_d0_d0 _lh_np_arg1_1_1 =
  (pmn_d5_d0_d0 +. ((float_of_int _lh_np_arg1_1_1) *. delta_p_d2_d0_d0))
and np_d3_d0_d0 _lh_np_arg1_9 =
  (pmn_d7_d0_d0 +. ((float_of_int _lh_np_arg1_9) *. delta_p_d3_d0_d0))
and np_d4_d0_d0 _lh_np_arg1_7 =
  (pmn_d9_d0_d0 +. ((float_of_int _lh_np_arg1_7) *. delta_p_d4_d0_d0))
and np_d5_d0_d0 _lh_np_arg1_1_0 =
  (pmn_d1_d1_d0_d0 +. ((float_of_int _lh_np_arg1_1_0) *. delta_p_d5_d0_d0))
and nq_d0_d0_d0 _lh_nq_arg1_7 =
  (qmn_d1_d0_d0 +. ((float_of_int _lh_nq_arg1_7) *. delta_q_d0_d0_d0))
and nq_d1_d0_d0 _lh_nq_arg1_9 =
  (qmn_d3_d0_d0 +. ((float_of_int _lh_nq_arg1_9) *. delta_q_d1_d0_d0))
and nq_d2_d0_d0 _lh_nq_arg1_1_0 =
  (qmn_d5_d0_d0 +. ((float_of_int _lh_nq_arg1_1_0) *. delta_q_d2_d0_d0))
and nq_d3_d0_d0 _lh_nq_arg1_6 =
  (qmn_d7_d0_d0 +. ((float_of_int _lh_nq_arg1_6) *. delta_q_d3_d0_d0))
and nq_d4_d0_d0 _lh_nq_arg1_8 =
  (qmn_d9_d0_d0 +. ((float_of_int _lh_nq_arg1_8) *. delta_q_d4_d0_d0))
and nq_d5_d0_d0 _lh_nq_arg1_1_1 =
  (qmn_d1_d1_d0_d0 +. ((float_of_int _lh_nq_arg1_1_1) *. delta_q_d5_d0_d0))
and point_colour_d4_d0_d0 _lh_point_colour_arg1_1_1 =
  (match _lh_point_colour_arg1_1_1 with
    | `LH_P2(_lh_point_colour_LH_P2_0_1_1, _lh_point_colour_LH_P2_1_1_1) -> 
      (((((check_radius_d4_d0_d0 (np_d4_d0_d0 _lh_point_colour_LH_P2_0_1_1)) (nq_d4_d0_d0 _lh_point_colour_LH_P2_1_1_1)) 0) 0.0) 0.0)
    | _ -> 
      (failwith "error"))
and testMandel2_nofib_d0_d0_d0 _lh_testMandel2_nofib_arg1_1 =
  (let rec size'_1 = ((max_d0_d0_d0 (length_d0_d0_d0 _lh_testMandel2_nofib_arg1_1)) size_d1_d2_d0_d0) in
    (let rec tree_1 = ((build_tree_d0_d0_d0 (`LH_P2(0, 0))) (`LH_P2(size'_1, (size'_1 / 2)))) in
      (finite_d0_d0_d0 tree_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Mandel2_nofib" (fun () -> ignore ((testMandel2_nofib_d0 (`LH_C(5, (`LH_N))))));
  Bench.Test.create ~name:"lumberhack_Mandel2_nofib" (fun () -> ignore ((testMandel2_nofib_d0_d0 (`LH_C(5, (`LH_N))))));
  Bench.Test.create ~name:"lumberhack_pop_out_Mandel2_nofib" (fun () -> ignore ((testMandel2_nofib_d0_d0_d0 (`LH_C(5, (`LH_N))))));
])
