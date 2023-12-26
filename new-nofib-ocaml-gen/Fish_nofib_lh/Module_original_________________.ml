
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________ = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec min_lh _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec length_lh ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_lh t_1))
    | `LH_N -> 
      0);;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec vec_add_lh _lh_vec_add_arg1_0 _lh_vec_add_arg2_0 =
  (match _lh_vec_add_arg1_0 with
    | `LH_P2(_lh_vec_add_LH_P2_0_0, _lh_vec_add_LH_P2_1_0) -> 
      (match _lh_vec_add_arg2_0 with
        | `LH_P2(_lh_vec_add_LH_P2_0_1, _lh_vec_add_LH_P2_1_1) -> 
          (`LH_P2((_lh_vec_add_LH_P2_0_0 + _lh_vec_add_LH_P2_0_1), (_lh_vec_add_LH_P2_1_0 + _lh_vec_add_LH_P2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vec_sub_lh _lh_vec_sub_arg1_0 _lh_vec_sub_arg2_0 =
  (match _lh_vec_sub_arg1_0 with
    | `LH_P2(_lh_vec_sub_LH_P2_0_0, _lh_vec_sub_LH_P2_1_0) -> 
      (match _lh_vec_sub_arg2_0 with
        | `LH_P2(_lh_vec_sub_LH_P2_0_1, _lh_vec_sub_LH_P2_1_1) -> 
          (`LH_P2((_lh_vec_sub_LH_P2_0_0 - _lh_vec_sub_LH_P2_0_1), (_lh_vec_sub_LH_P2_1_0 - _lh_vec_sub_LH_P2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rot_lh _lh_rot_arg1_0 _lh_rot_arg2_0 _lh_rot_arg3_0 _lh_rot_arg4_0 =
  (((_lh_rot_arg1_0 ((vec_add_lh _lh_rot_arg2_0) _lh_rot_arg3_0)) _lh_rot_arg4_0) ((vec_sub_lh (`LH_P2(0, 0))) _lh_rot_arg3_0));;
let rec scale_vec2_lh _lh_scale_vec2_arg1_0 _lh_scale_vec2_arg2_0 _lh_scale_vec2_arg3_0 =
  (match _lh_scale_vec2_arg1_0 with
    | `LH_P2(_lh_scale_vec2_LH_P2_0_0, _lh_scale_vec2_LH_P2_1_0) -> 
      (`LH_P2(((_lh_scale_vec2_LH_P2_0_0 * _lh_scale_vec2_arg2_0) / _lh_scale_vec2_arg3_0), ((_lh_scale_vec2_LH_P2_1_0 * _lh_scale_vec2_arg2_0) / _lh_scale_vec2_arg3_0)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh t_2) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec above_lh _lh_above_arg1_0 _lh_above_arg2_0 _lh_above_arg3_0 _lh_above_arg4_0 _lh_above_arg5_0 _lh_above_arg6_0 _lh_above_arg7_0 =
  ((mappend_lh (((_lh_above_arg3_0 ((vec_add_lh _lh_above_arg5_0) (((scale_vec2_lh _lh_above_arg7_0) _lh_above_arg2_0) (_lh_above_arg1_0 + _lh_above_arg2_0)))) _lh_above_arg6_0) (((scale_vec2_lh _lh_above_arg7_0) _lh_above_arg1_0) (_lh_above_arg2_0 + _lh_above_arg1_0)))) (((_lh_above_arg4_0 _lh_above_arg5_0) _lh_above_arg6_0) (((scale_vec2_lh _lh_above_arg7_0) _lh_above_arg2_0) (_lh_above_arg1_0 + _lh_above_arg2_0))));;
let rec beside_lh _lh_beside_arg1_0 _lh_beside_arg2_0 _lh_beside_arg3_0 _lh_beside_arg4_0 _lh_beside_arg5_0 _lh_beside_arg6_0 _lh_beside_arg7_0 =
  ((mappend_lh (((_lh_beside_arg3_0 _lh_beside_arg5_0) (((scale_vec2_lh _lh_beside_arg6_0) _lh_beside_arg1_0) (_lh_beside_arg1_0 + _lh_beside_arg2_0))) _lh_beside_arg7_0)) (((_lh_beside_arg4_0 ((vec_add_lh _lh_beside_arg5_0) (((scale_vec2_lh _lh_beside_arg6_0) _lh_beside_arg1_0) (_lh_beside_arg1_0 + _lh_beside_arg2_0)))) (((scale_vec2_lh _lh_beside_arg6_0) _lh_beside_arg2_0) (_lh_beside_arg2_0 + _lh_beside_arg1_0))) _lh_beside_arg7_0));;
let rec quartet_lh _lh_quartet_arg1_0 _lh_quartet_arg2_0 _lh_quartet_arg3_0 _lh_quartet_arg4_0 =
  ((((above_lh 1) 1) ((((beside_lh 1) 1) _lh_quartet_arg1_0) _lh_quartet_arg2_0)) ((((beside_lh 1) 1) _lh_quartet_arg3_0) _lh_quartet_arg4_0));;
let rec cycle'_lh _lh_cycle'_arg1_0 =
  ((((quartet_lh _lh_cycle'_arg1_0) (rot_lh (rot_lh (rot_lh _lh_cycle'_arg1_0)))) (rot_lh _lh_cycle'_arg1_0)) (rot_lh (rot_lh _lh_cycle'_arg1_0)));;
let rec tup2_lh _lh_tup2_arg1_0 _lh_tup2_arg2_0 =
  (match _lh_tup2_arg1_0 with
    | `LH_P2(_lh_tup2_LH_P2_0_0, _lh_tup2_LH_P2_1_0) -> 
      (match _lh_tup2_arg2_0 with
        | `LH_P2(_lh_tup2_LH_P2_0_1, _lh_tup2_LH_P2_1_1) -> 
          (`LH_P4(_lh_tup2_LH_P2_0_0, _lh_tup2_LH_P2_1_0, _lh_tup2_LH_P2_0_1, _lh_tup2_LH_P2_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec grid_lh _lh_grid_arg1_0 _lh_grid_arg2_0 _lh_grid_arg3_0 _lh_grid_arg4_0 _lh_grid_arg5_0 _lh_grid_arg6_0 =
  (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (match _lh_listcomp_fun_ls_h_0 with
          | `LH_P4(_lh_grid_LH_P4_0_0, _lh_grid_LH_P4_1_0, _lh_grid_LH_P4_2_0, _lh_grid_LH_P4_3_0) -> 
            (`LH_C(((tup2_lh ((vec_add_lh ((vec_add_lh _lh_grid_arg4_0) (((scale_vec2_lh _lh_grid_arg5_0) _lh_grid_LH_P4_0_0) _lh_grid_arg1_0))) (((scale_vec2_lh _lh_grid_arg6_0) _lh_grid_LH_P4_1_0) _lh_grid_arg2_0))) ((vec_add_lh ((vec_add_lh _lh_grid_arg4_0) (((scale_vec2_lh _lh_grid_arg5_0) _lh_grid_LH_P4_2_0) _lh_grid_arg1_0))) (((scale_vec2_lh _lh_grid_arg6_0) _lh_grid_LH_P4_3_0) _lh_grid_arg2_0))), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          | _ -> 
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 _lh_grid_arg3_0));;
let rec tile_to_grid_lh _lh_tile_to_grid_arg1_0 =
  (((grid_lh 16) 16) _lh_tile_to_grid_arg1_0);;
let rec r_tile_lh =
  (`LH_C((`LH_P4(0, 0, 8, 8)), (`LH_C((`LH_P4(12, 12, 16, 16)), (`LH_C((`LH_P4(0, 4, 5, 10)), (`LH_C((`LH_P4(0, 8, 2, 12)), (`LH_C((`LH_P4(0, 12, 1, 14)), (`LH_C((`LH_P4(16, 6, 11, 10)), (`LH_C((`LH_P4(11, 10, 6, 16)), (`LH_C((`LH_P4(16, 4, 14, 6)), (`LH_C((`LH_P4(14, 6, 8, 8)), (`LH_C((`LH_P4(8, 8, 5, 10)), (`LH_C((`LH_P4(5, 10, 2, 12)), (`LH_C((`LH_P4(2, 12, 0, 16)), (`LH_C((`LH_P4(16, 8, 12, 12)), (`LH_C((`LH_P4(12, 12, 11, 16)), (`LH_C((`LH_P4(1, 1, 4, 0)), (`LH_C((`LH_P4(2, 2, 8, 0)), (`LH_C((`LH_P4(3, 3, 8, 2)), (`LH_C((`LH_P4(8, 2, 12, 0)), (`LH_C((`LH_P4(5, 5, 12, 3)), (`LH_C((`LH_P4(12, 3, 16, 0)), (`LH_C((`LH_P4(11, 16, 12, 12)), (`LH_C((`LH_P4(12, 12, 16, 8)), (`LH_C((`LH_P4(13, 13, 16, 10)), (`LH_C((`LH_P4(14, 14, 16, 12)), (`LH_C((`LH_P4(15, 15, 16, 14)), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec r_lh _lh_r_arg1_0 =
  ((tile_to_grid_lh r_tile_lh) _lh_r_arg1_0);;
let rec q_tile_lh =
  (`LH_C((`LH_P4(0, 8, 4, 7)), (`LH_C((`LH_P4(4, 7, 6, 7)), (`LH_C((`LH_P4(6, 7, 8, 8)), (`LH_C((`LH_P4(8, 8, 12, 10)), (`LH_C((`LH_P4(12, 10, 16, 16)), (`LH_C((`LH_P4(0, 12, 3, 13)), (`LH_C((`LH_P4(3, 13, 5, 14)), (`LH_C((`LH_P4(5, 14, 7, 15)), (`LH_C((`LH_P4(7, 15, 8, 16)), (`LH_C((`LH_P4(2, 16, 3, 13)), (`LH_C((`LH_P4(4, 16, 5, 14)), (`LH_C((`LH_P4(6, 16, 7, 15)), (`LH_C((`LH_P4(0, 10, 7, 11)), (`LH_C((`LH_P4(9, 13, 8, 15)), (`LH_C((`LH_P4(8, 15, 11, 15)), (`LH_C((`LH_P4(11, 15, 9, 13)), (`LH_C((`LH_P4(10, 10, 8, 12)), (`LH_C((`LH_P4(8, 12, 12, 12)), (`LH_C((`LH_P4(12, 12, 10, 10)), (`LH_C((`LH_P4(2, 0, 4, 5)), (`LH_C((`LH_P4(4, 5, 4, 7)), (`LH_C((`LH_P4(4, 0, 6, 5)), (`LH_C((`LH_P4(6, 5, 6, 7)), (`LH_C((`LH_P4(6, 0, 8, 5)), (`LH_C((`LH_P4(8, 5, 8, 8)), (`LH_C((`LH_P4(10, 0, 14, 11)), (`LH_C((`LH_P4(12, 0, 13, 4)), (`LH_C((`LH_P4(13, 4, 16, 8)), (`LH_C((`LH_P4(16, 8, 15, 10)), (`LH_C((`LH_P4(15, 10, 16, 16)), (`LH_C((`LH_P4(13, 0, 16, 6)), (`LH_C((`LH_P4(14, 0, 16, 4)), (`LH_C((`LH_P4(15, 0, 16, 2)), (`LH_C((`LH_P4(0, 0, 8, 0)), (`LH_C((`LH_P4(12, 0, 16, 0)), (`LH_C((`LH_P4(0, 0, 0, 8)), (`LH_C((`LH_P4(0, 12, 0, 16)), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec q_lh _lh_q_arg1_0 =
  ((tile_to_grid_lh q_tile_lh) _lh_q_arg1_0);;
let rec s_tile_lh =
  (`LH_C((`LH_P4(0, 0, 4, 2)), (`LH_C((`LH_P4(4, 2, 8, 2)), (`LH_C((`LH_P4(8, 2, 16, 0)), (`LH_C((`LH_P4(0, 4, 2, 1)), (`LH_C((`LH_P4(0, 6, 7, 4)), (`LH_C((`LH_P4(0, 8, 8, 6)), (`LH_C((`LH_P4(0, 10, 7, 8)), (`LH_C((`LH_P4(0, 12, 7, 10)), (`LH_C((`LH_P4(0, 14, 7, 13)), (`LH_C((`LH_P4(13, 13, 16, 14)), (`LH_C((`LH_P4(14, 11, 16, 12)), (`LH_C((`LH_P4(15, 9, 16, 10)), (`LH_C((`LH_P4(16, 0, 10, 4)), (`LH_C((`LH_P4(10, 4, 8, 6)), (`LH_C((`LH_P4(8, 6, 7, 8)), (`LH_C((`LH_P4(7, 8, 7, 13)), (`LH_C((`LH_P4(7, 13, 8, 16)), (`LH_C((`LH_P4(12, 16, 13, 13)), (`LH_C((`LH_P4(13, 13, 14, 11)), (`LH_C((`LH_P4(14, 11, 15, 9)), (`LH_C((`LH_P4(15, 9, 16, 8)), (`LH_C((`LH_P4(10, 16, 11, 10)), (`LH_C((`LH_P4(12, 4, 10, 6)), (`LH_C((`LH_P4(10, 6, 12, 7)), (`LH_C((`LH_P4(12, 7, 12, 4)), (`LH_C((`LH_P4(15, 5, 13, 7)), (`LH_C((`LH_P4(13, 7, 15, 8)), (`LH_C((`LH_P4(15, 8, 15, 5)), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec s_lh _lh_s_arg1_0 =
  ((tile_to_grid_lh s_tile_lh) _lh_s_arg1_0);;
let rec p_tile_lh =
  (`LH_C((`LH_P4(0, 3, 3, 4)), (`LH_C((`LH_P4(3, 4, 0, 8)), (`LH_C((`LH_P4(0, 8, 0, 3)), (`LH_C((`LH_P4(6, 0, 4, 4)), (`LH_C((`LH_P4(4, 5, 4, 10)), (`LH_C((`LH_P4(4, 10, 7, 6)), (`LH_C((`LH_P4(7, 6, 4, 5)), (`LH_C((`LH_P4(11, 0, 10, 4)), (`LH_C((`LH_P4(10, 4, 9, 6)), (`LH_C((`LH_P4(9, 6, 8, 8)), (`LH_C((`LH_P4(8, 8, 4, 13)), (`LH_C((`LH_P4(4, 13, 0, 16)), (`LH_C((`LH_P4(0, 16, 6, 15)), (`LH_C((`LH_P4(6, 15, 8, 16)), (`LH_C((`LH_P4(8, 16, 12, 12)), (`LH_C((`LH_P4(12, 12, 16, 12)), (`LH_C((`LH_P4(10, 16, 12, 14)), (`LH_C((`LH_P4(12, 14, 16, 13)), (`LH_C((`LH_P4(12, 16, 13, 15)), (`LH_C((`LH_P4(13, 15, 16, 14)), (`LH_C((`LH_P4(14, 16, 16, 15)), (`LH_C((`LH_P4(8, 12, 16, 10)), (`LH_C((`LH_P4(8, 8, 12, 9)), (`LH_C((`LH_P4(12, 9, 16, 8)), (`LH_C((`LH_P4(9, 6, 12, 7)), (`LH_C((`LH_P4(12, 7, 16, 6)), (`LH_C((`LH_P4(10, 4, 13, 5)), (`LH_C((`LH_P4(13, 5, 16, 4)), (`LH_C((`LH_P4(11, 0, 14, 2)), (`LH_C((`LH_P4(14, 2, 16, 2)), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec p_lh _lh_p_arg1_0 =
  ((tile_to_grid_lh p_tile_lh) _lh_p_arg1_0);;
let rec t_lh _lh_t_arg1_0 =
  (((((quartet_lh p_lh) q_lh) r_lh) s_lh) _lh_t_arg1_0);;
let rec nil_lh _lh_nil_arg1_0 _lh_nil_arg2_0 _lh_nil_arg3_0 =
  (`LH_N);;
let rec side1_lh _lh_side1_arg1_0 =
  (((((quartet_lh nil_lh) nil_lh) (rot_lh t_lh)) t_lh) _lh_side1_arg1_0);;
let rec u_lh _lh_u_arg1_0 =
  ((cycle'_lh (rot_lh q_lh)) _lh_u_arg1_0);;
let rec corner1_lh _lh_corner1_arg1_0 =
  (((((quartet_lh nil_lh) nil_lh) nil_lh) u_lh) _lh_corner1_arg1_0);;
let rec corner2_lh _lh_corner2_arg1_0 =
  (((((quartet_lh corner1_lh) side1_lh) (rot_lh side1_lh)) u_lh) _lh_corner2_arg1_0);;
let rec side2_lh _lh_side2_arg1_0 =
  (((((quartet_lh side1_lh) side1_lh) (rot_lh t_lh)) t_lh) _lh_side2_arg1_0);;
let rec pseudocorner_lh _lh_pseudocorner_arg1_0 =
  (((((quartet_lh corner2_lh) side2_lh) (rot_lh side2_lh)) (rot_lh t_lh)) _lh_pseudocorner_arg1_0);;
let rec pseudolimit_lh _lh_pseudolimit_arg1_0 =
  ((cycle'_lh pseudocorner_lh) _lh_pseudolimit_arg1_0);;
let rec showFourTupleofInt_lh _lh_showFourTupleofInt_arg1_0 =
  (match _lh_showFourTupleofInt_arg1_0 with
    | `LH_P4(_lh_showFourTupleofInt_LH_P4_0_0, _lh_showFourTupleofInt_LH_P4_1_0, _lh_showFourTupleofInt_LH_P4_2_0, _lh_showFourTupleofInt_LH_P4_3_0) -> 
      ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('(', (`LH_N)))) (string_of_int _lh_showFourTupleofInt_LH_P4_0_0))) (`LH_C(',', (`LH_N))))) (string_of_int _lh_showFourTupleofInt_LH_P4_1_0))) (`LH_C(',', (`LH_N))))) (string_of_int _lh_showFourTupleofInt_LH_P4_2_0))) (`LH_C(',', (`LH_N))))) (string_of_int _lh_showFourTupleofInt_LH_P4_3_0))) (`LH_C(')', (`LH_N))))
    | _ -> 
      (failwith "error"));;
let rec fmt_lh _lh_fmt_arg1_0 =
  (match _lh_fmt_arg1_0 with
    | `LH_N -> 
      (`LH_C('[', (`LH_C(']', (`LH_N)))))
    | `LH_C(_lh_fmt_LH_C_0_0, _lh_fmt_LH_C_1_0) -> 
      (let rec showl_0 = (fun _lh_showl_arg1_0 _lh_showl_arg2_0 -> 
        (match _lh_showl_arg1_0 with
          | `LH_N -> 
            (`LH_C(']', _lh_showl_arg2_0))
          | `LH_C(_lh_showl_LH_C_0_0, _lh_showl_LH_C_1_0) -> 
            ((fun _lh_funcomp_x_0 -> 
              ((fun _lh_funcomp_x_1 -> 
                ((fun s_0 -> 
                  ((mappend_lh (`LH_C(',', (`LH_C('|', (`LH_N)))))) s_0)) ((fun s_1 -> 
                  ((mappend_lh (showFourTupleofInt_lh _lh_showl_LH_C_0_0)) s_1)) _lh_funcomp_x_1))) ((showl_0 _lh_showl_LH_C_1_0) _lh_funcomp_x_0))) _lh_showl_arg2_0)
          | _ -> 
            (failwith "error"))) in
        ((fun _lh_funcomp_x_2 -> 
          ((fun _lh_funcomp_x_3 -> 
            ((fun s_2 -> 
              ((mappend_lh (`LH_C('[', (`LH_C('|', (`LH_N)))))) s_2)) ((fun s_3 -> 
              ((mappend_lh (showFourTupleofInt_lh _lh_fmt_LH_C_0_0)) s_3)) _lh_funcomp_x_3))) ((showl_0 _lh_fmt_LH_C_1_0) _lh_funcomp_x_2))) (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec testFish_nofib_lh _lh_testFish_nofib_arg1_0 =
  ((map_lh (fun i_0 -> 
    (let rec n_0 = ((min_lh 0) i_0) in
      (length_lh (fmt_lh (((pseudolimit_lh (`LH_P2(0, 0))) (`LH_P2((640 + n_0), 0))) (`LH_P2(0, (640 + n_0))))))))) ((enumFromTo_lh 0) _lh_testFish_nofib_arg1_0));;
end;;

