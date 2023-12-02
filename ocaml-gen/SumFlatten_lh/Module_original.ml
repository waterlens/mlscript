
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec append_lh _lh_append_arg1_0 _lh_append_arg2_0 =
  (let rec _lh_matchIdent_3 = _lh_append_arg1_0 in
    (match _lh_matchIdent_3 with
      | `LH_N -> 
        _lh_append_arg2_0
      | `LH_C(_lh_append_LH_C_0_0, _lh_append_LH_C_1_0) -> 
        (`LH_C(_lh_append_LH_C_0_0, ((append_lh _lh_append_LH_C_1_0) _lh_append_arg2_0)))
      | _ -> 
        (failwith "error")));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec sum2_lh _lh_sum2_arg1_0 =
  (let rec k_0 = _lh_sum2_arg1_0 in
    (k_0 99));;
let rec summ_lh _lh_summ_arg1_0 =
  (let rec _lh_matchIdent_1 = _lh_summ_arg1_0 in
    (match _lh_matchIdent_1 with
      | `LH_N -> 
        0
      | `LH_C(_lh_summ_LH_C_0_0, _lh_summ_LH_C_1_0) -> 
        (_lh_summ_LH_C_0_0 + (summ_lh _lh_summ_LH_C_1_0))
      | _ -> 
        (failwith "error")));;
let rec append2_lh _lh_append2_arg1_0 _lh_append2_arg2_0 _lh_append2_arg3_0 =
  (let rec _lh_matchIdent_4 = _lh_append2_arg1_0 in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        (_lh_append2_arg2_0 _lh_append2_arg3_0)
      | `LH_C(_lh_append2_LH_C_0_0, _lh_append2_LH_C_1_0) -> 
        (let rec tt_0 = ((append2_lh _lh_append2_LH_C_1_0) _lh_append2_arg2_0) in
          (let rec hh_0 = _lh_append2_LH_C_0_0 in
            (hh_0 + (sum2_lh tt_0))))
      | _ -> 
        (failwith "error")))
and flatten2_lh _lh_flatten2_arg1_0 _lh_flatten2_arg2_0 =
  (let rec _lh_matchIdent_2 = _lh_flatten2_arg1_0 in
    (match _lh_matchIdent_2 with
      | `LH_N -> 
        0
      | `LH_C(_lh_flatten2_LH_C_0_0, _lh_flatten2_LH_C_1_0) -> 
        (((append2_lh _lh_flatten2_LH_C_0_0) (flatten2_lh _lh_flatten2_LH_C_1_0)) _lh_flatten2_arg2_0)
      | _ -> 
        (failwith "error")))
and flatten_lh _lh_flatten_arg1_0 =
  (let rec _lh_matchIdent_0 = _lh_flatten_arg1_0 in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_flatten_LH_C_0_0, _lh_flatten_LH_C_1_0) -> 
        ((append_lh _lh_flatten_LH_C_0_0) (flatten_lh _lh_flatten_LH_C_1_0))
      | _ -> 
        (failwith "error")))
and testManual_lh _lh_testManual_arg1_0 =
  (sum2_lh (flatten2_lh _lh_testManual_arg1_0))
and testSumFlatten_lh _lh_testSumFlatten_arg1_0 =
  (summ_lh (flatten_lh _lh_testSumFlatten_arg1_0));;
end;;

