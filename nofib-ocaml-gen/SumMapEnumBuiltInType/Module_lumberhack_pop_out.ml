

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec map__d0 f_2 ls_0 =
  (ls_0 f_2);;
let rec sum__d0 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec enumFromTo__d0 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec _lh_sum_LH_C_1_0 = ((map__d0 _lh_popOutId_0_0) t_0) in
          (let rec _lh_sum_LH_C_0_0 = (_lh_popOutId_0_0 h_0) in
            (_lh_sum_LH_C_0_0 + (sum__d0 _lh_sum_LH_C_1_0))))))
  else
    0)
and testSumMapEnumBuiltInType__d0 _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;
end;;
