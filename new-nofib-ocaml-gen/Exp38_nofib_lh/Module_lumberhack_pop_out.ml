

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec fromInteger__d0 _lh_fromInteger_arg1_0 =
  (if (_lh_fromInteger_arg1_0 < 1) then
    (`Z)
  else
    (`S((fromInteger__d0 (_lh_fromInteger_arg1_0 - 1)))));;
let rec int__d0 _lh_int_arg1_0 =
  (match _lh_int_arg1_0 with
    | `Z -> 
      0
    | `S(_lh_int_S_0_0) -> 
      (1 + (int__d0 _lh_int_S_0_0))
    | _ -> 
      (failwith "error"));;
let rec natPlus__d0 _lh_natPlus_arg1_0 _lh_natPlus_arg2_0 =
  (match _lh_natPlus_arg1_0 with
    | `Z -> 
      _lh_natPlus_arg2_0
    | `S(_lh_natPlus_S_0_0) -> 
      (`S(((natPlus__d0 _lh_natPlus_S_0_0) _lh_natPlus_arg2_0)))
    | _ -> 
      (failwith "error"));;
let rec p__d0 _lh_p_arg1_2 _lh_p_arg2_0 =
  (_lh_p_arg2_0 _lh_p_arg1_2);;
let rec fromInteger__d1 _lh_fromInteger_arg1_1 _lh_popOutId_0_0 =
  (if (_lh_fromInteger_arg1_1 < 1) then
    (`S((`Z)))
  else
    (let rec _lh_p_S_0_0 = (fromInteger__d1 (_lh_fromInteger_arg1_1 - 1)) in
      ((natMult__d0 _lh_popOutId_0_0) ((p__d0 _lh_popOutId_0_0) _lh_p_S_0_0))))
and natMult__d0 _lh_natMult_arg1_0 _lh_natMult_arg2_0 =
  (match _lh_natMult_arg2_0 with
    | `Z -> 
      (`Z)
    | `S(_lh_natMult_S_0_0) -> 
      ((natPlus__d0 ((natMult__d0 _lh_natMult_arg1_0) _lh_natMult_S_0_0)) _lh_natMult_arg1_0)
    | _ -> 
      (failwith "error"))
and testExp38_nofib__d0 _lh_testExp38_nofib_arg1_0 =
  (int__d0 ((p__d0 (fromInteger__d0 3)) (fromInteger__d1 _lh_testExp38_nofib_arg1_0)));;
end;;

