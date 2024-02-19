

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec signum_lh__d2 _lh_signum_arg1_0 =
  (match _lh_signum_arg1_0 with
    | 0 -> 
      0
    | _ -> 
      (if (_lh_signum_arg1_0 > 0) then
        1
      else
        (0 - 1)));;
let rec abs_lh__d2 _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 < 0) then
    (0 - _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec signum_lh__d1 _lh_signum_arg1_1 =
  (match _lh_signum_arg1_1 with
    | 0 -> 
      0
    | _ -> 
      (if (_lh_signum_arg1_1 > 0) then
        1
      else
        (0 - 1)));;
let rec abs_lh__d1 _lh_abs_arg1_1 =
  (if (_lh_abs_arg1_1 < 0) then
    (0 - _lh_abs_arg1_1)
  else
    _lh_abs_arg1_1);;
let rec ratTrans_lh__d1 _lh_ratTrans_arg1_0 _lh_ratTrans_arg2_0 =
  (match _lh_ratTrans_arg1_0 with
    | `LH_P4(_lh_ratTrans_LH_P4_0_0, _lh_ratTrans_LH_P4_1_0, _lh_ratTrans_LH_P4_2_0, _lh_ratTrans_LH_P4_3_0) -> 
      (let rec _lh_matchIdent_0 = (Lazy.force _lh_ratTrans_arg2_0) in
        (match _lh_matchIdent_0 with
          | `LH_N -> 
            (failwith "error")
          | `LH_C(_lh_ratTrans_LH_C_0_0, _lh_ratTrans_LH_C_1_0) -> 
            (if (_lh_ratTrans_LH_P4_3_0 = 0) then
              ((ratTrans_lh__d1 (`LH_P4(_lh_ratTrans_LH_P4_1_0, (_lh_ratTrans_LH_P4_0_0 + (_lh_ratTrans_LH_C_0_0 * _lh_ratTrans_LH_P4_1_0)), _lh_ratTrans_LH_P4_3_0, (_lh_ratTrans_LH_P4_2_0 + (_lh_ratTrans_LH_C_0_0 * _lh_ratTrans_LH_P4_3_0))))) _lh_ratTrans_LH_C_1_0)
            else
              (let rec q_0 = (_lh_ratTrans_LH_P4_1_0 / _lh_ratTrans_LH_P4_3_0) in
                (if (((((signum_lh__d1 _lh_ratTrans_LH_P4_2_0) = (signum_lh__d2 _lh_ratTrans_LH_P4_3_0)) || ((abs_lh__d2 _lh_ratTrans_LH_P4_2_0) < (abs_lh__d1 _lh_ratTrans_LH_P4_3_0))) && (((_lh_ratTrans_LH_P4_2_0 + _lh_ratTrans_LH_P4_3_0) * q_0) <= (_lh_ratTrans_LH_P4_0_0 + _lh_ratTrans_LH_P4_1_0))) && ((((_lh_ratTrans_LH_P4_2_0 + _lh_ratTrans_LH_P4_3_0) * q_0) + (_lh_ratTrans_LH_P4_2_0 + _lh_ratTrans_LH_P4_3_0)) > (_lh_ratTrans_LH_P4_0_0 + _lh_ratTrans_LH_P4_1_0))) then
                  (lazy (`LH_C(q_0, ((ratTrans_lh__d1 (`LH_P4(_lh_ratTrans_LH_P4_2_0, _lh_ratTrans_LH_P4_3_0, (_lh_ratTrans_LH_P4_0_0 - (q_0 * _lh_ratTrans_LH_P4_2_0)), (_lh_ratTrans_LH_P4_1_0 - (q_0 * _lh_ratTrans_LH_P4_3_0))))) (lazy (`LH_C(_lh_ratTrans_LH_C_0_0, _lh_ratTrans_LH_C_1_0)))))))
                else
                  ((ratTrans_lh__d1 (`LH_P4(_lh_ratTrans_LH_P4_1_0, (_lh_ratTrans_LH_P4_0_0 + (_lh_ratTrans_LH_C_0_0 * _lh_ratTrans_LH_P4_1_0)), _lh_ratTrans_LH_P4_3_0, (_lh_ratTrans_LH_P4_2_0 + (_lh_ratTrans_LH_C_0_0 * _lh_ratTrans_LH_P4_3_0))))) _lh_ratTrans_LH_C_1_0))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec takeDigits_lh__d1 _lh_takeDigits_arg1_0 _lh_takeDigits_arg2_0 =
  (if (_lh_takeDigits_arg1_0 > 0) then
    (let rec _lh_matchIdent_1 = (Lazy.force _lh_takeDigits_arg2_0) in
      (match _lh_matchIdent_1 with
        | `LH_N -> 
          (failwith "error")
        | `LH_C(_lh_takeDigits_LH_C_0_0, _lh_takeDigits_LH_C_1_0) -> 
          (`LH_C(_lh_takeDigits_LH_C_0_0, ((takeDigits_lh__d1 (_lh_takeDigits_arg1_0 - 1)) ((ratTrans_lh__d1 (`LH_P4(10, 0, 0, 1))) _lh_takeDigits_LH_C_1_0))))
        | _ -> 
          (failwith "error")))
  else
    (`LH_N));;
let rec aux_lh__d1 _lh_aux_arg1_0 =
  (lazy (`LH_C(1, (lazy (`LH_C(_lh_aux_arg1_0, (lazy (`LH_C(1, (aux_lh__d1 (_lh_aux_arg1_0 + 2)))))))))));;
let rec eContFrac_lh__d1 =
  (lazy (`LH_C(2, (aux_lh__d1 2))));;
let rec testDigitsOfE1_nofib_lh__d1 _lh_testDigitsOfE1_nofib_arg1_0 =
  ((takeDigits_lh__d1 _lh_testDigitsOfE1_nofib_arg1_0) eContFrac_lh__d1);;
end;;

