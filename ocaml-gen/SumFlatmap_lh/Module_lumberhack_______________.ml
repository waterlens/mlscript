

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh__d1 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec summ_lh__d1 _lh_summ_arg1_0 _lh_summ_arg2_0 =
  (_lh_summ_arg2_0 _lh_summ_arg1_0);;
let rec flatMap_lh__d1 _lh_flatMap_arg1_0 _lh_flatMap_arg2_0 =
  (match _lh_flatMap_arg2_0 with
    | `LH_N -> 
      (fun _lh_summ_arg1_1 -> 
        _lh_summ_arg1_1)
    | `LH_C(_lh_flatMap_LH_C_0_0, _lh_flatMap_LH_C_1_0) -> 
      ((mappend_lh__d1 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap_lh__d1 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec testSumFlatmap_lh__d1 _lh_testSumFlatmap_arg1_0 =
  ((summ_lh__d1 0) ((flatMap_lh__d1 (fun a_1 -> 
    (let rec t_0 = (let rec t_1 = (fun ys_1 -> 
      ys_1) in
      (let rec h_0 = a_1 in
        (fun ys_2 -> 
          (let rec _lh_summ_LH_C_1_0 = ((mappend_lh__d1 t_1) ys_2) in
            (let rec _lh_summ_LH_C_0_0 = h_0 in
              (fun _lh_summ_arg1_2 -> 
                ((summ_lh__d1 (_lh_summ_arg1_2 + _lh_summ_LH_C_0_0)) _lh_summ_LH_C_1_0))))))) in
      (let rec h_1 = a_1 in
        (fun ys_3 -> 
          (let rec _lh_summ_LH_C_1_1 = ((mappend_lh__d1 t_0) ys_3) in
            (let rec _lh_summ_LH_C_0_1 = h_1 in
              (fun _lh_summ_arg1_3 -> 
                ((summ_lh__d1 (_lh_summ_arg1_3 + _lh_summ_LH_C_0_1)) _lh_summ_LH_C_1_1))))))))) ((enumFromTo_lh__d1 1) _lh_testSumFlatmap_arg1_0)));;
let run () = 1 + (Obj.magic ((testSumFlatmap_lh__d1 100000)));
end;;

