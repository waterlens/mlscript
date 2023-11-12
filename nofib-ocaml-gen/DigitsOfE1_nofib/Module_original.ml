
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec abs__d0 _lh_abs_arg1_2 =
  (if (_lh_abs_arg1_2 < 0) then
    (0 - _lh_abs_arg1_2)
  else
    _lh_abs_arg1_2);;
let rec abs__d1 _lh_abs_arg1_1 =
  (if (_lh_abs_arg1_1 < 0) then
    (0 - _lh_abs_arg1_1)
  else
    _lh_abs_arg1_1);;
let rec aux__d0 _lh_aux_arg1_1 =
  (lazy (`LH_C(1, (lazy (`LH_C(_lh_aux_arg1_1, (lazy (`LH_C(1, (aux__d0 (_lh_aux_arg1_1 + 2)))))))))));;
let rec signum__d0 _lh_signum_arg1_1 =
  (match _lh_signum_arg1_1 with
    | 0 -> 
      0
    | _ -> 
      (if (_lh_signum_arg1_1 > 0) then
        1
      else
        (0 - 1)));;
let rec signum__d1 _lh_signum_arg1_2 =
  (match _lh_signum_arg1_2 with
    | 0 -> 
      0
    | _ -> 
      (if (_lh_signum_arg1_2 > 0) then
        1
      else
        (0 - 1)));;
let rec eContFrac__d0 =
  (lazy (`LH_C(2, (aux__d0 2))))
and ratTrans__d0 _lh_ratTrans_arg1_1 _lh_ratTrans_arg2_1 =
  (match _lh_ratTrans_arg1_1 with
    | `LH_P4(_lh_ratTrans_LH_P4_0_1, _lh_ratTrans_LH_P4_1_1, _lh_ratTrans_LH_P4_2_1, _lh_ratTrans_LH_P4_3_1) -> 
      (let rec _lh_matchIdent_2 = (Lazy.force _lh_ratTrans_arg2_1) in
        (match _lh_matchIdent_2 with
          | `LH_N -> 
            (failwith "error")
          | `LH_C(_lh_ratTrans_LH_C_0_1, _lh_ratTrans_LH_C_1_1) -> 
            (if (_lh_ratTrans_LH_P4_3_1 = 0) then
              ((ratTrans__d0 (`LH_P4(_lh_ratTrans_LH_P4_1_1, (_lh_ratTrans_LH_P4_0_1 + (_lh_ratTrans_LH_C_0_1 * _lh_ratTrans_LH_P4_1_1)), _lh_ratTrans_LH_P4_3_1, (_lh_ratTrans_LH_P4_2_1 + (_lh_ratTrans_LH_C_0_1 * _lh_ratTrans_LH_P4_3_1))))) _lh_ratTrans_LH_C_1_1)
            else
              (let rec q_1 = (_lh_ratTrans_LH_P4_1_1 / _lh_ratTrans_LH_P4_3_1) in
                (if (((((signum__d0 _lh_ratTrans_LH_P4_2_1) = (signum__d1 _lh_ratTrans_LH_P4_3_1)) || ((abs__d0 _lh_ratTrans_LH_P4_2_1) < (abs__d1 _lh_ratTrans_LH_P4_3_1))) && (((_lh_ratTrans_LH_P4_2_1 + _lh_ratTrans_LH_P4_3_1) * q_1) <= (_lh_ratTrans_LH_P4_0_1 + _lh_ratTrans_LH_P4_1_1))) && ((((_lh_ratTrans_LH_P4_2_1 + _lh_ratTrans_LH_P4_3_1) * q_1) + (_lh_ratTrans_LH_P4_2_1 + _lh_ratTrans_LH_P4_3_1)) > (_lh_ratTrans_LH_P4_0_1 + _lh_ratTrans_LH_P4_1_1))) then
                  (lazy (`LH_C(q_1, ((ratTrans__d0 (`LH_P4(_lh_ratTrans_LH_P4_2_1, _lh_ratTrans_LH_P4_3_1, (_lh_ratTrans_LH_P4_0_1 - (q_1 * _lh_ratTrans_LH_P4_2_1)), (_lh_ratTrans_LH_P4_1_1 - (q_1 * _lh_ratTrans_LH_P4_3_1))))) (lazy (`LH_C(_lh_ratTrans_LH_C_0_1, _lh_ratTrans_LH_C_1_1)))))))
                else
                  ((ratTrans__d0 (`LH_P4(_lh_ratTrans_LH_P4_1_1, (_lh_ratTrans_LH_P4_0_1 + (_lh_ratTrans_LH_C_0_1 * _lh_ratTrans_LH_P4_1_1)), _lh_ratTrans_LH_P4_3_1, (_lh_ratTrans_LH_P4_2_1 + (_lh_ratTrans_LH_C_0_1 * _lh_ratTrans_LH_P4_3_1))))) _lh_ratTrans_LH_C_1_1))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and takeDigits__d0 _lh_takeDigits_arg1_1 _lh_takeDigits_arg2_1 =
  (if (_lh_takeDigits_arg1_1 > 0) then
    (let rec _lh_matchIdent_3 = (Lazy.force _lh_takeDigits_arg2_1) in
      (match _lh_matchIdent_3 with
        | `LH_N -> 
          (failwith "error")
        | `LH_C(_lh_takeDigits_LH_C_0_1, _lh_takeDigits_LH_C_1_1) -> 
          (`LH_C(_lh_takeDigits_LH_C_0_1, ((takeDigits__d0 (_lh_takeDigits_arg1_1 - 1)) ((ratTrans__d0 (`LH_P4(10, 0, 0, 1))) _lh_takeDigits_LH_C_1_1))))
        | _ -> 
          (failwith "error")))
  else
    (`LH_N))
and testDigitsOfE1_nofib__d0 _lh_testDigitsOfE1_nofib_arg1_1 =
  ((takeDigits__d0 _lh_testDigitsOfE1_nofib_arg1_1) eContFrac__d0);;
end;;

