

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec mappend__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec sum__d0 _lh_sum_arg1_1 _lh_sum_arg2_0 =
  (_lh_sum_arg2_0 _lh_sum_arg1_1);;
let rec flatMap__d0 _lh_flatMap_arg1_0 _lh_flatMap_arg2_0 =
  (match _lh_flatMap_arg2_0 with
    | `LH_N -> 
      (fun _lh_sum_arg1_0 -> 
        _lh_sum_arg1_0)
    | `LH_C(_lh_flatMap_LH_C_0_0, _lh_flatMap_LH_C_1_0) -> 
      ((mappend__d0 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap__d0 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0))
    | _ -> 
      (failwith "error"))
and testSumFlatmap__d0 _lh_testSumFlatmap_arg1_0 =
  ((sum__d0 0) ((flatMap__d0 (fun a_1 -> 
    (let rec t_0 = (let rec t_1 = (fun ys_1 -> 
      ys_1) in
      (let rec h_0 = a_1 in
        (fun ys_2 -> 
          (let rec _lh_sum_LH_C_1_0 = ((mappend__d0 t_1) ys_2) in
            (let rec _lh_sum_LH_C_0_0 = h_0 in
              (fun _lh_sum_arg1_2 -> 
                ((sum__d0 (_lh_sum_arg1_2 + _lh_sum_LH_C_0_0)) _lh_sum_LH_C_1_0))))))) in
      (let rec h_1 = a_1 in
        (fun ys_3 -> 
          (let rec _lh_sum_LH_C_1_1 = ((mappend__d0 t_0) ys_3) in
            (let rec _lh_sum_LH_C_0_1 = h_1 in
              (fun _lh_sum_arg1_3 -> 
                ((sum__d0 (_lh_sum_arg1_3 + _lh_sum_LH_C_0_1)) _lh_sum_LH_C_1_1))))))))) ((enumFromTo__d0 1) _lh_testSumFlatmap_arg1_0)));;
end;;

