
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec fromInteger__d0 _lh_fromInteger_arg1_1 =
  (if (_lh_fromInteger_arg1_1 < 1) then
    (`Z)
  else
    (`S((fromInteger__d0 (_lh_fromInteger_arg1_1 - 1)))));;
let rec fromInteger__d1 _lh_fromInteger_arg1_2 =
  (if (_lh_fromInteger_arg1_2 < 1) then
    (`Z)
  else
    (`S((fromInteger__d1 (_lh_fromInteger_arg1_2 - 1)))));;
let rec int__d0 _lh_int_arg1_1 =
  (match _lh_int_arg1_1 with
    | `Z -> 
      0
    | `S(_lh_int_S_0_1) -> 
      (1 + (int__d0 _lh_int_S_0_1))
    | _ -> 
      (failwith "error"));;
let rec natPlus__d0 _lh_natPlus_arg1_1 _lh_natPlus_arg2_1 =
  (match _lh_natPlus_arg1_1 with
    | `Z -> 
      _lh_natPlus_arg2_1
    | `S(_lh_natPlus_S_0_1) -> 
      (`S(((natPlus__d0 _lh_natPlus_S_0_1) _lh_natPlus_arg2_1)))
    | _ -> 
      (failwith "error"));;
let rec natMult__d0 _lh_natMult_arg1_1 _lh_natMult_arg2_1 =
  (match _lh_natMult_arg2_1 with
    | `Z -> 
      (`Z)
    | `S(_lh_natMult_S_0_1) -> 
      ((natPlus__d0 ((natMult__d0 _lh_natMult_arg1_1) _lh_natMult_S_0_1)) _lh_natMult_arg1_1)
    | _ -> 
      (failwith "error"))
and p__d0 _lh_p_arg1_1 _lh_p_arg2_1 =
  (match _lh_p_arg2_1 with
    | `Z -> 
      (`S((`Z)))
    | `S(_lh_p_S_0_1) -> 
      ((natMult__d0 _lh_p_arg1_1) ((p__d0 _lh_p_arg1_1) _lh_p_S_0_1))
    | _ -> 
      (failwith "error"))
and testExp38_nofib__d0 _lh_testExp38_nofib_arg1_1 =
  (int__d0 ((p__d0 (fromInteger__d0 3)) (fromInteger__d1 _lh_testExp38_nofib_arg1_1)));;
end;;

