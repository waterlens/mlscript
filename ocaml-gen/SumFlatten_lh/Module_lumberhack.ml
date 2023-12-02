

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec enumFromTo__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo__d0 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec enumFromTo__d2 a_3 b_3 =
  (if (a_3 <= b_3) then
    (`LH_C(a_3, ((enumFromTo__d2 (a_3 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo__d3 a_2 b_2 =
  (if (a_2 <= b_2) then
    (`LH_C(a_2, ((enumFromTo__d3 (a_2 + 1)) b_2)))
  else
    (`LH_N));;
let rec sum2__d0 _lh_sum2_arg1_1 =
  (let rec k_1 = _lh_sum2_arg1_1 in
    (k_1 99));;
let rec sum2__d1 _lh_sum2_arg1_0 =
  (let rec k_0 = _lh_sum2_arg1_0 in
    (k_0 99));;
let rec summ__d0 _lh_summ_arg1_0 =
  (let rec _lh_matchIdent_3 = _lh_summ_arg1_0 in
    (_lh_matchIdent_3 99));;
let rec append2__d0 _lh_append2_arg1_0 _lh_append2_arg2_0 _lh_append2_arg3_0 =
  (let rec _lh_matchIdent_4 = _lh_append2_arg1_0 in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        (_lh_append2_arg2_0 _lh_append2_arg3_0)
      | `LH_C(_lh_append2_LH_C_0_0, _lh_append2_LH_C_1_0) -> 
        (let rec tt_0 = ((append2__d0 _lh_append2_LH_C_1_0) _lh_append2_arg2_0) in
          (let rec hh_0 = _lh_append2_LH_C_0_0 in
            (hh_0 + (sum2__d0 tt_0))))
      | _ -> 
        (failwith "error")))
and append__d0 _lh_append_arg1_0 _lh_append_arg2_0 =
  (let rec _lh_matchIdent_1 = _lh_append_arg1_0 in
    (match _lh_matchIdent_1 with
      | `LH_N -> 
        _lh_append_arg2_0
      | `LH_C(_lh_append_LH_C_0_0, _lh_append_LH_C_1_0) -> 
        (let rec _lh_summ_LH_C_1_0 = ((append__d0 _lh_append_LH_C_1_0) _lh_append_arg2_0) in
          (let rec _lh_summ_LH_C_0_0 = _lh_append_LH_C_0_0 in
            (fun _lh_dummy_0 -> 
              (_lh_summ_LH_C_0_0 + (summ__d0 _lh_summ_LH_C_1_0)))))
      | _ -> 
        (failwith "error")))
and flatten2__d0 _lh_flatten2_arg1_0 _lh_flatten2_arg2_0 =
  (let rec _lh_matchIdent_0 = _lh_flatten2_arg1_0 in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        0
      | `LH_C(_lh_flatten2_LH_C_0_0, _lh_flatten2_LH_C_1_0) -> 
        (((append2__d0 _lh_flatten2_LH_C_0_0) (flatten2__d0 _lh_flatten2_LH_C_1_0)) _lh_flatten2_arg2_0)
      | _ -> 
        (failwith "error")))
and flatten__d0 _lh_flatten_arg1_0 =
  (let rec _lh_matchIdent_2 = _lh_flatten_arg1_0 in
    (match _lh_matchIdent_2 with
      | `LH_N -> 
        (fun _lh_dummy_1 -> 
          0)
      | `LH_C(_lh_flatten_LH_C_0_0, _lh_flatten_LH_C_1_0) -> 
        ((append__d0 _lh_flatten_LH_C_0_0) (flatten__d0 _lh_flatten_LH_C_1_0))
      | _ -> 
        (failwith "error")))
and testSumFlatten__d0 _lh_testSumFlatten_arg1_0 =
  (summ__d0 (flatten__d0 _lh_testSumFlatten_arg1_0));;
end;;

