

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec append__d0 _lh_append_arg1_0 _lh_append_arg2_1 =
  (_lh_append_arg1_0 _lh_append_arg2_1);;
let rec append__d1 _lh_append_arg1_1 _lh_append_arg2_6 =
  (_lh_append_arg1_1 _lh_append_arg2_6);;
let rec flatMap__d1 _lh_flatMap_arg1_3 _lh_flatMap_arg2_1 =
  (_lh_flatMap_arg2_1 _lh_flatMap_arg1_3);;
let rec length__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length__d0 t_0))
    | `LH_N -> 
      0);;
let rec safe__d0 _lh_safe_arg1_0 _lh_safe_arg2_0 _lh_safe_arg3_0 =
  (match _lh_safe_arg3_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_0, _lh_safe_LH_C_1_0) -> 
      ((((_lh_safe_arg1_0 <> _lh_safe_LH_C_0_0) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 + _lh_safe_arg2_0))) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 - _lh_safe_arg2_0))) && (((safe__d0 _lh_safe_arg1_0) (_lh_safe_arg2_0 + 1)) _lh_safe_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_flatMap_LH_C_1_1 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec _lh_flatMap_LH_C_0_1 = a_0 in
        (fun _lh_flatMap_arg1_1 -> 
          ((append__d1 (_lh_flatMap_arg1_1 _lh_flatMap_LH_C_0_1)) ((flatMap__d1 _lh_flatMap_arg1_1) _lh_flatMap_LH_C_1_1)))))
  else
    (fun _lh_flatMap_arg1_2 _lh_append_arg2_0 -> 
      _lh_append_arg2_0))
and flatMap__d0 _lh_flatMap_arg1_0 _lh_flatMap_arg2_0 =
  (match _lh_flatMap_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_0, _lh_flatMap_LH_C_1_0) -> 
      ((append__d0 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap__d0 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0))
    | _ -> 
      (failwith "error"))
and gen__d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      ((flatMap__d0 (fun b_1 -> 
        ((flatMap__d1 (fun q_0 -> 
          (if (((safe__d0 q_0) 1) b_1) then
            (let rec _lh_append_LH_C_1_0 = (fun _lh_append_arg2_2 -> 
              _lh_append_arg2_2) in
              (let rec _lh_append_LH_C_0_0 = (`LH_C(q_0, b_1)) in
                (fun _lh_append_arg2_3 -> 
                  (let rec _lh_append_LH_C_1_1 = ((append__d1 _lh_append_LH_C_1_0) _lh_append_arg2_3) in
                    (let rec _lh_append_LH_C_0_1 = _lh_append_LH_C_0_0 in
                      (fun _lh_append_arg2_4 -> 
                        (`LH_C(_lh_append_LH_C_0_1, ((append__d0 _lh_append_LH_C_1_1) _lh_append_arg2_4)))))))))
          else
            (fun _lh_append_arg2_5 -> 
              _lh_append_arg2_5)))) ((enumFromTo__d0 1) _lh_gen_arg2_0)))) ((gen__d0 (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0)))
and nsoln__d0 _lh_nsoln_arg1_0 =
  (length__d0 ((gen__d0 _lh_nsoln_arg1_0) _lh_nsoln_arg1_0))
and testQueenUsingFlatMapBuiltInType__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_0 =
  (nsoln__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_0);;
end;;

