
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec sum_lh _lh_sum_arg1_0 =
  (match _lh_sum_arg1_0 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_0, _lh_sum_LH_C_1_0) -> 
      (_lh_sum_LH_C_0_0 + (sum_lh _lh_sum_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec testSumMapEnumBuiltInType_lh _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum_lh ((map_lh (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo_lh 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;
end;;

