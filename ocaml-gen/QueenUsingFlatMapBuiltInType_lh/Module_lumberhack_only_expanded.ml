

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec append__d0 _lh_append_arg1_2 _lh_append_arg2_2 =
  (match _lh_append_arg1_2 with
    | `LH_N -> 
      _lh_append_arg2_2
    | `LH_C(_lh_append_LH_C_0_2, _lh_append_LH_C_1_2) -> 
      (`LH_C(_lh_append_LH_C_0_2, ((append__d0 _lh_append_LH_C_1_2) _lh_append_arg2_2)))
    | _ -> 
      (failwith "error"));;
let rec append__d1 _lh_append_arg1_1 _lh_append_arg2_1 =
  (match _lh_append_arg1_1 with
    | `LH_N -> 
      _lh_append_arg2_1
    | `LH_C(_lh_append_LH_C_0_1, _lh_append_LH_C_1_1) -> 
      (`LH_C(_lh_append_LH_C_0_1, ((append__d1 _lh_append_LH_C_1_1) _lh_append_arg2_1)))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_5 b_4 =
  (if (a_5 <= b_4) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_4)))
  else
    (`LH_N));;
let rec length__d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length__d0 t_2_2))
    | `LH_N -> 
      0);;
let rec safe__d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_1 =
  (match _lh_safe_arg3_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_1, _lh_safe_LH_C_1_1) -> 
      ((((_lh_safe_arg1_1 <> _lh_safe_LH_C_0_1) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 + _lh_safe_arg2_1))) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 - _lh_safe_arg2_1))) && (((safe__d0 _lh_safe_arg1_1) (_lh_safe_arg2_1 + 1)) _lh_safe_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec flatMap__d0 _lh_flatMap_arg1_1 _lh_flatMap_arg2_1 =
  (match _lh_flatMap_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_1, _lh_flatMap_LH_C_1_1) -> 
      ((append__d0 (_lh_flatMap_arg1_1 _lh_flatMap_LH_C_0_1)) ((flatMap__d0 _lh_flatMap_arg1_1) _lh_flatMap_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and flatMap__d1 _lh_flatMap_arg1_2 _lh_flatMap_arg2_2 =
  (match _lh_flatMap_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_2, _lh_flatMap_LH_C_1_2) -> 
      ((append__d1 (_lh_flatMap_arg1_2 _lh_flatMap_LH_C_0_2)) ((flatMap__d1 _lh_flatMap_arg1_2) _lh_flatMap_LH_C_1_2))
    | _ -> 
      (failwith "error"))
and gen__d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      ((flatMap__d0 (fun b_3 -> 
        ((flatMap__d1 (fun q_1 -> 
          (if (((safe__d0 q_1) 1) b_3) then
            (`LH_C((`LH_C(q_1, b_3)), (`LH_N)))
          else
            (`LH_N)))) ((enumFromTo__d0 1) _lh_gen_arg2_1)))) ((gen__d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1)))
and nsoln__d0 _lh_nsoln_arg1_1 =
  (length__d0 ((gen__d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and testQueenUsingFlatMapBuiltInType__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1 =
  (nsoln__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1);;
end;;

