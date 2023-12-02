

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec append__d0 _lh_append_arg1_1 _lh_append_arg2_1 =
  (let rec _lh_matchIdent_5 = _lh_append_arg1_1 in
    (match _lh_matchIdent_5 with
      | `LH_N -> 
        _lh_append_arg2_1
      | `LH_C(_lh_append_LH_C_0_1, _lh_append_LH_C_1_1) -> 
        (`LH_C(_lh_append_LH_C_0_1, ((append__d0 _lh_append_LH_C_1_1) _lh_append_arg2_1)))
      | _ -> 
        (failwith "error")));;
let rec enumFromTo__d0 a_8 b_5 =
  (if (a_8 <= b_5) then
    (`LH_C(a_8, ((enumFromTo__d0 (a_8 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d1 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo__d2 a_7 b_4 =
  (if (a_7 <= b_4) then
    (`LH_C(a_7, ((enumFromTo__d2 (a_7 + 1)) b_4)))
  else
    (`LH_N));;
let rec enumFromTo__d3 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d3 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec sum2__d0 _lh_sum2_arg1_2 =
  (let rec k_2 = _lh_sum2_arg1_2 in
    (k_2 99));;
let rec sum2__d1 _lh_sum2_arg1_1 =
  (let rec k_1 = _lh_sum2_arg1_1 in
    (k_1 99));;
let rec summ__d0 _lh_summ_arg1_1 =
  (let rec _lh_matchIdent_8 = _lh_summ_arg1_1 in
    (match _lh_matchIdent_8 with
      | `LH_N -> 
        0
      | `LH_C(_lh_summ_LH_C_0_1, _lh_summ_LH_C_1_1) -> 
        (_lh_summ_LH_C_0_1 + (summ__d0 _lh_summ_LH_C_1_1))
      | _ -> 
        (failwith "error")));;
let rec append2__d0 _lh_append2_arg1_1 _lh_append2_arg2_1 _lh_append2_arg3_1 =
  (let rec _lh_matchIdent_6 = _lh_append2_arg1_1 in
    (match _lh_matchIdent_6 with
      | `LH_N -> 
        (_lh_append2_arg2_1 _lh_append2_arg3_1)
      | `LH_C(_lh_append2_LH_C_0_1, _lh_append2_LH_C_1_1) -> 
        (let rec tt_1 = ((append2__d0 _lh_append2_LH_C_1_1) _lh_append2_arg2_1) in
          (let rec hh_1 = _lh_append2_LH_C_0_1 in
            (hh_1 + (sum2__d0 tt_1))))
      | _ -> 
        (failwith "error")))
and flatten2__d0 _lh_flatten2_arg1_1 _lh_flatten2_arg2_1 =
  (let rec _lh_matchIdent_7 = _lh_flatten2_arg1_1 in
    (match _lh_matchIdent_7 with
      | `LH_N -> 
        0
      | `LH_C(_lh_flatten2_LH_C_0_1, _lh_flatten2_LH_C_1_1) -> 
        (((append2__d0 _lh_flatten2_LH_C_0_1) (flatten2__d0 _lh_flatten2_LH_C_1_1)) _lh_flatten2_arg2_1)
      | _ -> 
        (failwith "error")))
and flatten__d0 _lh_flatten_arg1_1 =
  (let rec _lh_matchIdent_9 = _lh_flatten_arg1_1 in
    (match _lh_matchIdent_9 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_flatten_LH_C_0_1, _lh_flatten_LH_C_1_1) -> 
        ((append__d0 _lh_flatten_LH_C_0_1) (flatten__d0 _lh_flatten_LH_C_1_1))
      | _ -> 
        (failwith "error")))
and testSumFlatten__d0 _lh_testSumFlatten_arg1_1 =
  (summ__d0 (flatten__d0 _lh_testSumFlatten_arg1_1));;
end;;

