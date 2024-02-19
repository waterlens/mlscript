

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______(LH_Dum: sig end) = struct
let rec enumFromTo_lh__d1 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec _lh_sum_LH_C_1_0 = (t_0 _lh_popOutId_0_0) in
          (let rec _lh_sum_LH_C_0_0 = (_lh_popOutId_0_0 h_0) in
            (_lh_sum_LH_C_0_0 + (_lh_sum_LH_C_1_0 99))))))
  else
    0);;
let rec testSumMapEnumBuiltInType_lh__d1 _lh_testSumMapEnumBuiltInType_arg1_0 =
  ((((enumFromTo_lh__d1 1) _lh_testSumMapEnumBuiltInType_arg1_0) (fun x_0 -> 
    (x_0 * x_0))) 99);;
end;;

