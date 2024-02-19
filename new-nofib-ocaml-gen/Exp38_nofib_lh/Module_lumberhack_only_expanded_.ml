

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec natPlus_lh__d1 _lh_natPlus_arg1_0 _lh_natPlus_arg2_0 =
  (match _lh_natPlus_arg1_0 with
    | `Z -> 
      _lh_natPlus_arg2_0
    | `S(_lh_natPlus_S_0_0) -> 
      (`S(((natPlus_lh__d1 _lh_natPlus_S_0_0) _lh_natPlus_arg2_0)))
    | _ -> 
      (failwith "error"));;
let rec natMult_lh__d1 _lh_natMult_arg1_0 _lh_natMult_arg2_0 =
  (match _lh_natMult_arg2_0 with
    | `Z -> 
      (`Z)
    | `S(_lh_natMult_S_0_0) -> 
      ((natPlus_lh__d1 ((natMult_lh__d1 _lh_natMult_arg1_0) _lh_natMult_S_0_0)) _lh_natMult_arg1_0)
    | _ -> 
      (failwith "error"));;
let rec p_lh__d1 _lh_p_arg1_0 _lh_p_arg2_0 =
  (match _lh_p_arg2_0 with
    | `Z -> 
      (`S((`Z)))
    | `S(_lh_p_S_0_0) -> 
      ((natMult_lh__d1 _lh_p_arg1_0) ((p_lh__d1 _lh_p_arg1_0) _lh_p_S_0_0))
    | _ -> 
      (failwith "error"));;
let rec fromInteger_lh__d1 _lh_fromInteger_arg1_1 =
  (if (_lh_fromInteger_arg1_1 < 1) then
    (`Z)
  else
    (`S((fromInteger_lh__d1 (_lh_fromInteger_arg1_1 - 1)))));;
let rec int_lh__d1 _lh_int_arg1_0 =
  (match _lh_int_arg1_0 with
    | `Z -> 
      0
    | `S(_lh_int_S_0_0) -> 
      (1 + (int_lh__d1 _lh_int_S_0_0))
    | _ -> 
      (failwith "error"));;
let rec fromInteger_lh__d2 _lh_fromInteger_arg1_0 =
  (if (_lh_fromInteger_arg1_0 < 1) then
    (`Z)
  else
    (`S((fromInteger_lh__d2 (_lh_fromInteger_arg1_0 - 1)))));;
let rec testExp38_nofib_lh__d1 _lh_testExp38_nofib_arg1_0 =
  (int_lh__d1 ((p_lh__d1 (fromInteger_lh__d2 3)) (fromInteger_lh__d1 _lh_testExp38_nofib_arg1_0)));;
end;;

