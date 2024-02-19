

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec sum_lh__d1 _lh_sum_arg1_0 =
  (match _lh_sum_arg1_0 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_0, _lh_sum_LH_C_1_0) -> 
      (_lh_sum_LH_C_0_0 + (sum_lh__d1 _lh_sum_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d1 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec testSumMapEnumBuiltInType_lh__d1 _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum_lh__d1 ((map_lh__d1 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo_lh__d1 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;
end;;

