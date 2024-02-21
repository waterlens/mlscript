

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec minN_lh__d1 =
  4;;
let rec check'_lh__d1 _lh_check'_arg1_9 _lh_check'_arg2_9 _lh_check'_arg3_1 =
  ((_lh_check'_arg3_1 _lh_check'_arg2_9) _lh_check'_arg1_9);;
let rec make_lh__d2 _lh_make_arg1_0 _lh_make_arg2_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match _lh_make_arg2_0 with
    | 0 -> 
      (let rec _lh_check'_Node_2_0 = (fun _lh_check'_arg2_1 _lh_check'_arg1_1 -> 
        _lh_check'_arg2_1) in
        (let rec _lh_check'_Node_1_0 = (fun _lh_check'_arg2_2 _lh_check'_arg1_2 -> 
          _lh_check'_arg2_2) in
          (let rec _lh_check'_Node_0_0 = _lh_make_arg1_0 in
            (((check'_lh__d1 (not _lh_popOutId_1_0)) (((check'_lh__d1 _lh_popOutId_1_0) (if _lh_popOutId_1_0 then
              (_lh_popOutId_0_0 + _lh_check'_Node_0_0)
            else
              (_lh_popOutId_0_0 - _lh_check'_Node_0_0))) _lh_check'_Node_1_0)) _lh_check'_Node_2_0))))
    | _ -> 
      (let rec i2_0 = (2 * _lh_make_arg1_0) in
        (let rec d2_0 = (_lh_make_arg2_0 - 1) in
          (let rec _lh_check'_Node_2_1 = ((make_lh__d2 i2_0) d2_0) in
            (let rec _lh_check'_Node_1_1 = ((make_lh__d2 (i2_0 - 1)) d2_0) in
              (let rec _lh_check'_Node_0_1 = _lh_make_arg1_0 in
                (((check'_lh__d1 (not _lh_popOutId_1_0)) (((check'_lh__d1 _lh_popOutId_1_0) (if _lh_popOutId_1_0 then
                  (_lh_popOutId_0_0 + _lh_check'_Node_0_1)
                else
                  (_lh_popOutId_0_0 - _lh_check'_Node_0_1))) _lh_check'_Node_1_1)) _lh_check'_Node_2_1)))))));;
let rec minN_lh__d2 =
  4;;
let rec map_lh__d1 f_0 ls_0 =
  (ls_0 f_0);;
let rec check'_lh__d2 _lh_check'_arg1_1_0 _lh_check'_arg2_1_0 _lh_check'_arg3_2 =
  ((_lh_check'_arg3_2 _lh_check'_arg2_1_0) _lh_check'_arg1_1_0);;
let rec check_lh__d2 _lh_check_arg1_3 =
  (((check'_lh__d2 true) 0) _lh_check_arg1_3);;
let rec make_lh__d1 _lh_make_arg1_1 _lh_make_arg2_1 _lh_popOutId_0_1 _lh_popOutId_1_1 =
  (match _lh_make_arg2_1 with
    | 0 -> 
      (let rec _lh_check'_Node_2_2 = (fun _lh_check'_arg2_5 _lh_check'_arg1_5 -> 
        _lh_check'_arg2_5) in
        (let rec _lh_check'_Node_1_2 = (fun _lh_check'_arg2_6 _lh_check'_arg1_6 -> 
          _lh_check'_arg2_6) in
          (let rec _lh_check'_Node_0_2 = _lh_make_arg1_1 in
            (((check'_lh__d2 (not _lh_popOutId_1_1)) (((check'_lh__d2 _lh_popOutId_1_1) (if _lh_popOutId_1_1 then
              (_lh_popOutId_0_1 + _lh_check'_Node_0_2)
            else
              (_lh_popOutId_0_1 - _lh_check'_Node_0_2))) _lh_check'_Node_1_2)) _lh_check'_Node_2_2))))
    | _ -> 
      (let rec i2_1 = (2 * _lh_make_arg1_1) in
        (let rec d2_1 = (_lh_make_arg2_1 - 1) in
          (let rec _lh_check'_Node_2_3 = ((make_lh__d1 i2_1) d2_1) in
            (let rec _lh_check'_Node_1_3 = ((make_lh__d1 (i2_1 - 1)) d2_1) in
              (let rec _lh_check'_Node_0_3 = _lh_make_arg1_1 in
                (((check'_lh__d2 (not _lh_popOutId_1_1)) (((check'_lh__d2 _lh_popOutId_1_1) (if _lh_popOutId_1_1 then
                  (_lh_popOutId_0_1 + _lh_check'_Node_0_3)
                else
                  (_lh_popOutId_0_1 - _lh_check'_Node_0_3))) _lh_check'_Node_1_3)) _lh_check'_Node_2_3)))))));;
let rec check_lh__d1 _lh_check_arg1_2 =
  (((check'_lh__d1 true) 0) _lh_check_arg1_2);;
let rec bit_lh__d1 _lh_bit_arg1_0 =
  (if (_lh_bit_arg1_0 > 0) then
    (2 * (bit_lh__d1 (_lh_bit_arg1_0 - 1)))
  else
    1);;
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d1 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec minN_lh__d3 =
  4;;
let rec check'_lh__d4 _lh_check'_arg1_0 _lh_check'_arg2_0 _lh_check'_arg3_0 =
  ((_lh_check'_arg3_0 _lh_check'_arg2_0) _lh_check'_arg1_0);;
let rec check_lh__d4 _lh_check_arg1_0 =
  (((check'_lh__d4 true) 0) _lh_check_arg1_0);;
let rec check'_lh__d3 _lh_check'_arg1_1_1 _lh_check'_arg2_1_1 _lh_check'_arg3_3 =
  ((_lh_check'_arg3_3 _lh_check'_arg2_1_1) _lh_check'_arg1_1_1);;
let rec check_lh__d3 _lh_check_arg1_1 =
  (((check'_lh__d3 true) 0) _lh_check_arg1_1);;
let rec make_lh__d3 _lh_make_arg1_2 _lh_make_arg2_2 _lh_popOutId_0_3 _lh_popOutId_1_2 =
  (match _lh_make_arg2_2 with
    | 0 -> 
      (let rec _lh_check'_Node_2_4 = (fun _lh_check'_arg2_1_2 _lh_check'_arg1_1_2 -> 
        _lh_check'_arg2_1_2) in
        (let rec _lh_check'_Node_1_4 = (fun _lh_check'_arg2_1_3 _lh_check'_arg1_1_3 -> 
          _lh_check'_arg2_1_3) in
          (let rec _lh_check'_Node_0_4 = _lh_make_arg1_2 in
            (((check'_lh__d4 (not _lh_popOutId_1_2)) (((check'_lh__d4 _lh_popOutId_1_2) (if _lh_popOutId_1_2 then
              (_lh_popOutId_0_3 + _lh_check'_Node_0_4)
            else
              (_lh_popOutId_0_3 - _lh_check'_Node_0_4))) _lh_check'_Node_1_4)) _lh_check'_Node_2_4))))
    | _ -> 
      (let rec i2_2 = (2 * _lh_make_arg1_2) in
        (let rec d2_2 = (_lh_make_arg2_2 - 1) in
          (let rec _lh_check'_Node_2_5 = ((make_lh__d3 i2_2) d2_2) in
            (let rec _lh_check'_Node_1_5 = ((make_lh__d3 (i2_2 - 1)) d2_2) in
              (let rec _lh_check'_Node_0_5 = _lh_make_arg1_2 in
                (((check'_lh__d4 (not _lh_popOutId_1_2)) (((check'_lh__d4 _lh_popOutId_1_2) (if _lh_popOutId_1_2 then
                  (_lh_popOutId_0_3 + _lh_check'_Node_0_5)
                else
                  (_lh_popOutId_0_3 - _lh_check'_Node_0_5))) _lh_check'_Node_1_5)) _lh_check'_Node_2_5)))))));;
let rec make_lh__d4 _lh_make_arg1_3 _lh_make_arg2_3 _lh_popOutId_0_4 _lh_popOutId_1_3 =
  (match _lh_make_arg2_3 with
    | 0 -> 
      (let rec _lh_check'_Node_2_6 = (fun _lh_check'_arg2_1_6 _lh_check'_arg1_1_6 -> 
        _lh_check'_arg2_1_6) in
        (let rec _lh_check'_Node_1_6 = (fun _lh_check'_arg2_1_7 _lh_check'_arg1_1_7 -> 
          _lh_check'_arg2_1_7) in
          (let rec _lh_check'_Node_0_6 = _lh_make_arg1_3 in
            (((check'_lh__d3 (not _lh_popOutId_1_3)) (((check'_lh__d3 _lh_popOutId_1_3) (if _lh_popOutId_1_3 then
              (_lh_popOutId_0_4 + _lh_check'_Node_0_6)
            else
              (_lh_popOutId_0_4 - _lh_check'_Node_0_6))) _lh_check'_Node_1_6)) _lh_check'_Node_2_6))))
    | _ -> 
      (let rec i2_3 = (2 * _lh_make_arg1_3) in
        (let rec d2_3 = (_lh_make_arg2_3 - 1) in
          (let rec _lh_check'_Node_2_7 = ((make_lh__d4 i2_3) d2_3) in
            (let rec _lh_check'_Node_1_7 = ((make_lh__d4 (i2_3 - 1)) d2_3) in
              (let rec _lh_check'_Node_0_7 = _lh_make_arg1_3 in
                (((check'_lh__d3 (not _lh_popOutId_1_3)) (((check'_lh__d3 _lh_popOutId_1_3) (if _lh_popOutId_1_3 then
                  (_lh_popOutId_0_4 + _lh_check'_Node_0_7)
                else
                  (_lh_popOutId_0_4 - _lh_check'_Node_0_7))) _lh_check'_Node_1_7)) _lh_check'_Node_2_7)))))));;
let rec sumT_lh__d1 _lh_sumT_arg1_0 _lh_sumT_arg2_0 _lh_sumT_arg3_0 =
  (match _lh_sumT_arg2_0 with
    | 0 -> 
      _lh_sumT_arg3_0
    | _ -> 
      (((sumT_lh__d1 _lh_sumT_arg1_0) (_lh_sumT_arg2_0 - 1)) (((check_lh__d4 ((make_lh__d3 _lh_sumT_arg2_0) _lh_sumT_arg1_0)) + (check_lh__d3 ((make_lh__d4 (0 - _lh_sumT_arg2_0)) _lh_sumT_arg1_0))) + _lh_sumT_arg3_0)));;
let rec depth_lh__d1 _lh_depth_arg1_0 _lh_depth_arg2_0 _lh_popOutId_0_2 =
  (if (_lh_depth_arg1_0 <= _lh_depth_arg2_0) then
    (let rec n_0 = (bit_lh__d1 ((_lh_depth_arg2_0 - _lh_depth_arg1_0) + minN_lh__d3)) in
      (let rec s_0 = (((sumT_lh__d1 _lh_depth_arg1_0) n_0) 0) in
        (let rec rest_0 = ((depth_lh__d1 (_lh_depth_arg1_0 + 2)) _lh_depth_arg2_0) in
          (let rec t_0 = rest_0 in
            (let rec h_0 = (let rec _lh_testBinaryTrees_nofib_LH_P3_2_0 = s_0 in
              (let rec _lh_testBinaryTrees_nofib_LH_P3_1_0 = _lh_depth_arg1_0 in
                (let rec _lh_testBinaryTrees_nofib_LH_P3_0_0 = (2 * n_0) in
                  (fun _lh_dummy_0 -> 
                    ((mappend_lh__d1 (string_of_int _lh_testBinaryTrees_nofib_LH_P3_0_0)) (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('s', (`LH_N)))))))))))))))))))) in
              (`LH_C((_lh_popOutId_0_2 h_0), ((map_lh__d1 _lh_popOutId_0_2) t_0))))))))
  else
    (`LH_N));;
let rec max_lh__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec testBinaryTrees_nofib_lh__d1 _lh_testBinaryTrees_nofib_arg1_0 =
  (let rec maxN_0 = ((max_lh__d1 (minN_lh__d1 + 2)) _lh_testBinaryTrees_nofib_arg1_0) in
    (let rec stretchN_0 = (maxN_0 + 1) in
      (let rec long_0 = ((make_lh__d1 0) maxN_0) in
        (let rec c_0 = (check_lh__d1 ((make_lh__d2 0) stretchN_0)) in
          (let rec vs_0 = ((depth_lh__d1 minN_lh__d2) maxN_0) in
            (`LH_P2(((map_lh__d1 (fun m_d_i_0 -> 
              (let rec _lh_matchIdent_0 = m_d_i_0 in
                (_lh_matchIdent_0 99)))) vs_0), (check_lh__d2 long_0))))))));;
let run () = 1 + (Obj.magic ((testBinaryTrees_nofib_lh__d1 14)));
end;;

