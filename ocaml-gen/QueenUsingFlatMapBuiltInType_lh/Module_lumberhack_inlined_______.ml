

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec length_lh__d1 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh__d1 t_0))
    | `LH_N -> 
      0);;
let rec safe_lh__d1 _lh_safe_arg1_0 _lh_safe_arg2_0 _lh_safe_arg3_0 =
  (match _lh_safe_arg3_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_0, _lh_safe_LH_C_1_0) -> 
      ((((_lh_safe_arg1_0 <> _lh_safe_LH_C_0_0) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 + _lh_safe_arg2_0))) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 - _lh_safe_arg2_0))) && (((safe_lh__d1 _lh_safe_arg1_0) (_lh_safe_arg2_0 + 1)) _lh_safe_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d1 a_0 b_1 =
  (if (a_0 <= b_1) then
    (let rec _lh_flatMap_LH_C_1_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_1) in
      (let rec _lh_flatMap_LH_C_0_0 = a_0 in
        (fun _lh_flatMap_arg1_0 -> 
          ((_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0) (_lh_flatMap_LH_C_1_0 _lh_flatMap_arg1_0)))))
  else
    (fun _lh_flatMap_arg1_1 _lh_append_arg2_6 -> 
      _lh_append_arg2_6));;
let rec flatMap_lh__d2 _lh_flatMap_arg1_3 _lh_flatMap_arg2_1 =
  (match _lh_flatMap_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_1, _lh_flatMap_LH_C_1_1) -> 
      ((_lh_flatMap_arg1_3 _lh_flatMap_LH_C_0_1) ((flatMap_lh__d2 _lh_flatMap_arg1_3) _lh_flatMap_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec gen_lh__d1 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      ((flatMap_lh__d2 (fun b_0 -> 
        (((enumFromTo_lh__d1 1) _lh_gen_arg2_0) (fun q_0 -> 
          (if (((safe_lh__d1 q_0) 1) b_0) then
            (let rec _lh_append_LH_C_1_0 = (fun _lh_append_arg2_1 -> 
              _lh_append_arg2_1) in
              (let rec _lh_append_LH_C_0_0 = (`LH_C(q_0, b_0)) in
                (fun _lh_append_arg2_2 -> 
                  (let rec _lh_append_LH_C_1_1 = (_lh_append_LH_C_1_0 _lh_append_arg2_2) in
                    (let rec _lh_append_LH_C_0_1 = _lh_append_LH_C_0_0 in
                      (fun _lh_append_arg2_3 -> 
                        (`LH_C(_lh_append_LH_C_0_1, (_lh_append_LH_C_1_1 _lh_append_arg2_3)))))))))
          else
            (fun _lh_append_arg2_4 -> 
              _lh_append_arg2_4)))))) ((gen_lh__d1 (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0)));;
let rec nsoln_lh__d1 _lh_nsoln_arg1_0 =
  (length_lh__d1 ((gen_lh__d1 _lh_nsoln_arg1_0) _lh_nsoln_arg1_0));;
let rec testQueenUsingFlatMapBuiltInType_lh__d1 _lh_testQueenUsingFlatMapBuiltInType_arg1_0 =
  (nsoln_lh__d1 _lh_testQueenUsingFlatMapBuiltInType_arg1_0);;
let run () = 1 + (Obj.magic ((testQueenUsingFlatMapBuiltInType_lh__d1 11)));
end;;

