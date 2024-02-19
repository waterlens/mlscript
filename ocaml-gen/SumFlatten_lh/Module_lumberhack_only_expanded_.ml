

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec sum2_lh__d2 _lh_sum2_arg1_0 =
  (let rec k_0 = _lh_sum2_arg1_0 in
    (k_0 99));;
let rec append2_lh__d1 _lh_append2_arg1_0 _lh_append2_arg2_0 _lh_append2_arg3_0 =
  (let rec _lh_matchIdent_1 = _lh_append2_arg1_0 in
    (match _lh_matchIdent_1 with
      | `LH_N -> 
        (_lh_append2_arg2_0 _lh_append2_arg3_0)
      | `LH_C(_lh_append2_LH_C_0_0, _lh_append2_LH_C_1_0) -> 
        (let rec tt_0 = ((append2_lh__d1 _lh_append2_LH_C_1_0) _lh_append2_arg2_0) in
          (let rec hh_0 = _lh_append2_LH_C_0_0 in
            (hh_0 + (sum2_lh__d2 tt_0))))
      | _ -> 
        (failwith "error")));;
let rec flatten2_lh__d1 _lh_flatten2_arg1_0 _lh_flatten2_arg2_0 =
  (let rec _lh_matchIdent_4 = _lh_flatten2_arg1_0 in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        0
      | `LH_C(_lh_flatten2_LH_C_0_0, _lh_flatten2_LH_C_1_0) -> 
        (((append2_lh__d1 _lh_flatten2_LH_C_0_0) (flatten2_lh__d1 _lh_flatten2_LH_C_1_0)) _lh_flatten2_arg2_0)
      | _ -> 
        (failwith "error")));;
let rec sum2_lh__d1 _lh_sum2_arg1_1 =
  (let rec k_1 = _lh_sum2_arg1_1 in
    (k_1 99));;
let rec testManual_lh__d1 _lh_testManual_arg1_0 =
  (sum2_lh__d1 (flatten2_lh__d1 _lh_testManual_arg1_0));;
let rec append_lh__d1 _lh_append_arg1_0 _lh_append_arg2_0 =
  (let rec _lh_matchIdent_0 = _lh_append_arg1_0 in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        _lh_append_arg2_0
      | `LH_C(_lh_append_LH_C_0_0, _lh_append_LH_C_1_0) -> 
        (`LH_C(_lh_append_LH_C_0_0, ((append_lh__d1 _lh_append_LH_C_1_0) _lh_append_arg2_0)))
      | _ -> 
        (failwith "error")));;
let rec flatten_lh__d1 _lh_flatten_arg1_0 =
  (let rec _lh_matchIdent_3 = _lh_flatten_arg1_0 in
    (match _lh_matchIdent_3 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_flatten_LH_C_0_0, _lh_flatten_LH_C_1_0) -> 
        ((append_lh__d1 _lh_flatten_LH_C_0_0) (flatten_lh__d1 _lh_flatten_LH_C_1_0))
      | _ -> 
        (failwith "error")));;
let rec summ_lh__d1 _lh_summ_arg1_0 =
  (let rec _lh_matchIdent_2 = _lh_summ_arg1_0 in
    (match _lh_matchIdent_2 with
      | `LH_N -> 
        0
      | `LH_C(_lh_summ_LH_C_0_0, _lh_summ_LH_C_1_0) -> 
        (_lh_summ_LH_C_0_0 + (summ_lh__d1 _lh_summ_LH_C_1_0))
      | _ -> 
        (failwith "error")));;
let rec testSumFlatten_lh__d1 _lh_testSumFlatten_arg1_0 =
  (summ_lh__d1 (flatten_lh__d1 _lh_testSumFlatten_arg1_0));;
let rec enumFromTo_lh__d2 a_2 b_2 =
  (if (a_2 <= b_2) then
    (`LH_C(a_2, ((enumFromTo_lh__d2 (a_2 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo_lh__d1 a_3 b_3 =
  (if (a_3 <= b_3) then
    (`LH_C(a_3, ((enumFromTo_lh__d1 (a_3 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo_lh__d4 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d4 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec enumFromTo_lh__d3 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo_lh__d3 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
end;;

