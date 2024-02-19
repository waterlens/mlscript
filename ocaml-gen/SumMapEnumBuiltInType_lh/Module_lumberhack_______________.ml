

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end) = struct
let rec sum_lh__d1 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec map_lh__d1 f_2 ls_0 =
  (ls_0 f_2);;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_0 -> 
          (let rec _lh_sum_LH_C_1_0 = ((map_lh__d1 f_0) t_0) in
            (let rec _lh_sum_LH_C_0_0 = (f_0 h_0) in
              (fun _lh_dummy_0 -> 
                (_lh_sum_LH_C_0_0 + (sum_lh__d1 _lh_sum_LH_C_1_0))))))))
  else
    (fun f_1 _lh_dummy_1 -> 
      0));;
let rec testSumMapEnumBuiltInType_lh__d1 _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum_lh__d1 ((map_lh__d1 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo_lh__d1 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;
end;;

