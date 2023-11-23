

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec enumFromTo__d0 a_6 b_2 =
  (if (a_6 <= b_2) then
    (`LH_C(a_6, ((enumFromTo__d0 (a_6 + 1)) b_2)))
  else
    (`LH_N));;
let rec mappend__d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_1_9, t_2_1) -> 
      (`LH_C(h_1_9, ((mappend__d0 t_2_1) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec sum__d0 _lh_sum_arg1_1 _lh_sum_arg2_1 =
  (match _lh_sum_arg2_1 with
    | `LH_N -> 
      _lh_sum_arg1_1
    | `LH_C(_lh_sum_LH_C_0_1, _lh_sum_LH_C_1_1) -> 
      ((sum__d0 (_lh_sum_arg1_1 + _lh_sum_LH_C_0_1)) _lh_sum_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec flatMap__d0 _lh_flatMap_arg1_1 _lh_flatMap_arg2_1 =
  (match _lh_flatMap_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_1, _lh_flatMap_LH_C_1_1) -> 
      ((mappend__d0 (_lh_flatMap_arg1_1 _lh_flatMap_LH_C_0_1)) ((flatMap__d0 _lh_flatMap_arg1_1) _lh_flatMap_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and testSumFlatmapEnum__d0 _lh_testSumFlatmapEnum_arg1_1 =
  ((sum__d0 0) ((flatMap__d0 (fun a_7 -> 
    (`LH_C(a_7, (`LH_C(a_7, (`LH_N))))))) ((enumFromTo__d0 1) _lh_testSumFlatmapEnum_arg1_1)));;
end;;

