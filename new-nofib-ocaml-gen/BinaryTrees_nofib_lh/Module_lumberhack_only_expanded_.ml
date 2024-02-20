

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d1 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec minN_lh__d1 =
  4;;
let rec make_lh__d2 _lh_make_arg1_2 _lh_make_arg2_2 =
  (match _lh_make_arg2_2 with
    | 0 -> 
      (`Node(_lh_make_arg1_2, (`Nil), (`Nil)))
    | _ -> 
      (let rec i2_2 = (2 * _lh_make_arg1_2) in
        (let rec d2_2 = (_lh_make_arg2_2 - 1) in
          (`Node(_lh_make_arg1_2, ((make_lh__d2 (i2_2 - 1)) d2_2), ((make_lh__d2 i2_2) d2_2))))));;
let rec minN_lh__d2 =
  4;;
let rec map_lh__d1 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d1 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec check'_lh__d2 _lh_check'_arg1_2 _lh_check'_arg2_2 _lh_check'_arg3_2 =
  (match _lh_check'_arg3_2 with
    | `Nil -> 
      _lh_check'_arg2_2
    | `Node(_lh_check'_Node_0_2, _lh_check'_Node_1_2, _lh_check'_Node_2_2) -> 
      (((check'_lh__d2 (not _lh_check'_arg1_2)) (((check'_lh__d2 _lh_check'_arg1_2) (if _lh_check'_arg1_2 then
        (_lh_check'_arg2_2 + _lh_check'_Node_0_2)
      else
        (_lh_check'_arg2_2 - _lh_check'_Node_0_2))) _lh_check'_Node_1_2)) _lh_check'_Node_2_2)
    | _ -> 
      (failwith "error"));;
let rec check_lh__d2 _lh_check_arg1_2 =
  (((check'_lh__d2 true) 0) _lh_check_arg1_2);;
let rec make_lh__d1 _lh_make_arg1_3 _lh_make_arg2_3 =
  (match _lh_make_arg2_3 with
    | 0 -> 
      (`Node(_lh_make_arg1_3, (`Nil), (`Nil)))
    | _ -> 
      (let rec i2_3 = (2 * _lh_make_arg1_3) in
        (let rec d2_3 = (_lh_make_arg2_3 - 1) in
          (`Node(_lh_make_arg1_3, ((make_lh__d1 (i2_3 - 1)) d2_3), ((make_lh__d1 i2_3) d2_3))))));;
let rec check'_lh__d1 _lh_check'_arg1_3 _lh_check'_arg2_3 _lh_check'_arg3_3 =
  (match _lh_check'_arg3_3 with
    | `Nil -> 
      _lh_check'_arg2_3
    | `Node(_lh_check'_Node_0_3, _lh_check'_Node_1_3, _lh_check'_Node_2_3) -> 
      (((check'_lh__d1 (not _lh_check'_arg1_3)) (((check'_lh__d1 _lh_check'_arg1_3) (if _lh_check'_arg1_3 then
        (_lh_check'_arg2_3 + _lh_check'_Node_0_3)
      else
        (_lh_check'_arg2_3 - _lh_check'_Node_0_3))) _lh_check'_Node_1_3)) _lh_check'_Node_2_3)
    | _ -> 
      (failwith "error"));;
let rec check_lh__d1 _lh_check_arg1_3 =
  (((check'_lh__d1 true) 0) _lh_check_arg1_3);;
let rec minN_lh__d3 =
  4;;
let rec check'_lh__d4 _lh_check'_arg1_0 _lh_check'_arg2_0 _lh_check'_arg3_0 =
  (match _lh_check'_arg3_0 with
    | `Nil -> 
      _lh_check'_arg2_0
    | `Node(_lh_check'_Node_0_0, _lh_check'_Node_1_0, _lh_check'_Node_2_0) -> 
      (((check'_lh__d4 (not _lh_check'_arg1_0)) (((check'_lh__d4 _lh_check'_arg1_0) (if _lh_check'_arg1_0 then
        (_lh_check'_arg2_0 + _lh_check'_Node_0_0)
      else
        (_lh_check'_arg2_0 - _lh_check'_Node_0_0))) _lh_check'_Node_1_0)) _lh_check'_Node_2_0)
    | _ -> 
      (failwith "error"));;
let rec check_lh__d4 _lh_check_arg1_0 =
  (((check'_lh__d4 true) 0) _lh_check_arg1_0);;
let rec check'_lh__d3 _lh_check'_arg1_1 _lh_check'_arg2_1 _lh_check'_arg3_1 =
  (match _lh_check'_arg3_1 with
    | `Nil -> 
      _lh_check'_arg2_1
    | `Node(_lh_check'_Node_0_1, _lh_check'_Node_1_1, _lh_check'_Node_2_1) -> 
      (((check'_lh__d3 (not _lh_check'_arg1_1)) (((check'_lh__d3 _lh_check'_arg1_1) (if _lh_check'_arg1_1 then
        (_lh_check'_arg2_1 + _lh_check'_Node_0_1)
      else
        (_lh_check'_arg2_1 - _lh_check'_Node_0_1))) _lh_check'_Node_1_1)) _lh_check'_Node_2_1)
    | _ -> 
      (failwith "error"));;
let rec check_lh__d3 _lh_check_arg1_1 =
  (((check'_lh__d3 true) 0) _lh_check_arg1_1);;
let rec make_lh__d3 _lh_make_arg1_1 _lh_make_arg2_1 =
  (match _lh_make_arg2_1 with
    | 0 -> 
      (`Node(_lh_make_arg1_1, (`Nil), (`Nil)))
    | _ -> 
      (let rec i2_1 = (2 * _lh_make_arg1_1) in
        (let rec d2_1 = (_lh_make_arg2_1 - 1) in
          (`Node(_lh_make_arg1_1, ((make_lh__d3 (i2_1 - 1)) d2_1), ((make_lh__d3 i2_1) d2_1))))));;
let rec make_lh__d4 _lh_make_arg1_0 _lh_make_arg2_0 =
  (match _lh_make_arg2_0 with
    | 0 -> 
      (`Node(_lh_make_arg1_0, (`Nil), (`Nil)))
    | _ -> 
      (let rec i2_0 = (2 * _lh_make_arg1_0) in
        (let rec d2_0 = (_lh_make_arg2_0 - 1) in
          (`Node(_lh_make_arg1_0, ((make_lh__d4 (i2_0 - 1)) d2_0), ((make_lh__d4 i2_0) d2_0))))));;
let rec sumT_lh__d1 _lh_sumT_arg1_0 _lh_sumT_arg2_0 _lh_sumT_arg3_0 =
  (match _lh_sumT_arg2_0 with
    | 0 -> 
      _lh_sumT_arg3_0
    | _ -> 
      (((sumT_lh__d1 _lh_sumT_arg1_0) (_lh_sumT_arg2_0 - 1)) (((check_lh__d4 ((make_lh__d3 _lh_sumT_arg2_0) _lh_sumT_arg1_0)) + (check_lh__d3 ((make_lh__d4 (0 - _lh_sumT_arg2_0)) _lh_sumT_arg1_0))) + _lh_sumT_arg3_0)));;
let rec bit_lh__d1 _lh_bit_arg1_0 =
  (if (_lh_bit_arg1_0 > 0) then
    (2 * (bit_lh__d1 (_lh_bit_arg1_0 - 1)))
  else
    1);;
let rec depth_lh__d1 _lh_depth_arg1_0 _lh_depth_arg2_0 =
  (if (_lh_depth_arg1_0 <= _lh_depth_arg2_0) then
    (let rec n_0 = (bit_lh__d1 ((_lh_depth_arg2_0 - _lh_depth_arg1_0) + minN_lh__d3)) in
      (let rec s_0 = (((sumT_lh__d1 _lh_depth_arg1_0) n_0) 0) in
        (let rec rest_0 = ((depth_lh__d1 (_lh_depth_arg1_0 + 2)) _lh_depth_arg2_0) in
          (`LH_C((`LH_P3((2 * n_0), _lh_depth_arg1_0, s_0)), rest_0)))))
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
                (match _lh_matchIdent_0 with
                  | `LH_P3(_lh_testBinaryTrees_nofib_LH_P3_0_0, _lh_testBinaryTrees_nofib_LH_P3_1_0, _lh_testBinaryTrees_nofib_LH_P3_2_0) -> 
                    ((mappend_lh__d1 (string_of_int _lh_testBinaryTrees_nofib_LH_P3_0_0)) (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))
                  | _ -> 
                    (failwith "error"))))) vs_0), (check_lh__d2 long_0))))))));;
end;;

