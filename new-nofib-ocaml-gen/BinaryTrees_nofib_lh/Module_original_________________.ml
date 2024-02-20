
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end) = struct
let rec make_lh _lh_make_arg1_0 _lh_make_arg2_0 =
  (match _lh_make_arg2_0 with
    | 0 -> 
      (`Node(_lh_make_arg1_0, (`Nil), (`Nil)))
    | _ -> 
      (let rec i2_0 = (2 * _lh_make_arg1_0) in
        (let rec d2_0 = (_lh_make_arg2_0 - 1) in
          (`Node(_lh_make_arg1_0, ((make_lh (i2_0 - 1)) d2_0), ((make_lh i2_0) d2_0))))));;
let rec max_lh _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec check'_lh _lh_check'_arg1_0 _lh_check'_arg2_0 _lh_check'_arg3_0 =
  (match _lh_check'_arg3_0 with
    | `Nil -> 
      _lh_check'_arg2_0
    | `Node(_lh_check'_Node_0_0, _lh_check'_Node_1_0, _lh_check'_Node_2_0) -> 
      (((check'_lh (not _lh_check'_arg1_0)) (((check'_lh _lh_check'_arg1_0) (if _lh_check'_arg1_0 then
        (_lh_check'_arg2_0 + _lh_check'_Node_0_0)
      else
        (_lh_check'_arg2_0 - _lh_check'_Node_0_0))) _lh_check'_Node_1_0)) _lh_check'_Node_2_0)
    | _ -> 
      (failwith "error"));;
let rec check_lh _lh_check_arg1_0 =
  (((check'_lh true) 0) _lh_check_arg1_0);;
let rec sumT_lh _lh_sumT_arg1_0 _lh_sumT_arg2_0 _lh_sumT_arg3_0 =
  (match _lh_sumT_arg2_0 with
    | 0 -> 
      _lh_sumT_arg3_0
    | _ -> 
      (((sumT_lh _lh_sumT_arg1_0) (_lh_sumT_arg2_0 - 1)) (((check_lh ((make_lh _lh_sumT_arg2_0) _lh_sumT_arg1_0)) + (check_lh ((make_lh (0 - _lh_sumT_arg2_0)) _lh_sumT_arg1_0))) + _lh_sumT_arg3_0)));;
let rec minN_lh =
  4;;
let rec bit_lh _lh_bit_arg1_0 =
  (if (_lh_bit_arg1_0 > 0) then
    (2 * (bit_lh (_lh_bit_arg1_0 - 1)))
  else
    1);;
let rec depth_lh _lh_depth_arg1_0 _lh_depth_arg2_0 =
  (if (_lh_depth_arg1_0 <= _lh_depth_arg2_0) then
    (let rec n_0 = (bit_lh ((_lh_depth_arg2_0 - _lh_depth_arg1_0) + minN_lh)) in
      (let rec s_0 = (((sumT_lh _lh_depth_arg1_0) n_0) 0) in
        (let rec rest_0 = ((depth_lh (_lh_depth_arg1_0 + 2)) _lh_depth_arg2_0) in
          (`LH_C((`LH_P3((2 * n_0), _lh_depth_arg1_0, s_0)), rest_0)))))
  else
    (`LH_N));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec testBinaryTrees_nofib_lh _lh_testBinaryTrees_nofib_arg1_0 =
  (let rec maxN_0 = ((max_lh (minN_lh + 2)) _lh_testBinaryTrees_nofib_arg1_0) in
    (let rec stretchN_0 = (maxN_0 + 1) in
      (let rec long_0 = ((make_lh 0) maxN_0) in
        (let rec c_0 = (check_lh ((make_lh 0) stretchN_0)) in
          (let rec vs_0 = ((depth_lh minN_lh) maxN_0) in
            (`LH_P2(((map_lh (fun m_d_i_0 -> 
              (let rec _lh_matchIdent_0 = m_d_i_0 in
                (match _lh_matchIdent_0 with
                  | `LH_P3(_lh_testBinaryTrees_nofib_LH_P3_0_0, _lh_testBinaryTrees_nofib_LH_P3_1_0, _lh_testBinaryTrees_nofib_LH_P3_2_0) -> 
                    ((mappend_lh (string_of_int _lh_testBinaryTrees_nofib_LH_P3_0_0)) (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))
                  | _ -> 
                    (failwith "error"))))) vs_0), (check_lh long_0))))))));;
end;;

