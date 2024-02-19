

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec map_lh__d1 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_1 h_1), ((map_lh__d1 f_1) t_1)))
    | `LH_N -> 
      (`LH_N));;
let rec find_lh__d1 _lh_find_arg1_0 _lh_find_arg2_0 =
  (match _lh_find_arg2_0 with
    | `LH_N -> 
      (`LH_P2(false, (`ERROR)))
    | `LH_C(_lh_find_LH_C_0_0, _lh_find_LH_C_1_0) -> 
      (match _lh_find_LH_C_0_0 with
        | `LH_P2(_lh_find_LH_P2_0_0, _lh_find_LH_P2_1_0) -> 
          (if (_lh_find_arg1_0 = _lh_find_LH_P2_0_0) then
            (`LH_P2(true, _lh_find_LH_P2_1_0))
          else
            ((find_lh__d1 _lh_find_arg1_0) _lh_find_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec apply_subst_lh__d1 _lh_apply_subst_arg1_1 _lh_apply_subst_arg2_1 =
  (match _lh_apply_subst_arg2_1 with
    | `Var(_lh_apply_subst_Var_0_1) -> 
      (let rec _lh_matchIdent_7 = ((find_lh__d1 _lh_apply_subst_Var_0_1) _lh_apply_subst_arg1_1) in
        (match _lh_matchIdent_7 with
          | `LH_P2(_lh_apply_subst_LH_P2_0_1, _lh_apply_subst_LH_P2_1_1) -> 
            (if _lh_apply_subst_LH_P2_0_1 then
              _lh_apply_subst_LH_P2_1_1
            else
              (`Var(_lh_apply_subst_Var_0_1)))
          | _ -> 
            (failwith "error")))
    | `Fun(_lh_apply_subst_Fun_0_1, _lh_apply_subst_Fun_1_1, _lh_apply_subst_Fun_2_1) -> 
      (`Fun(_lh_apply_subst_Fun_0_1, ((map_lh__d1 (apply_subst_lh__d1 _lh_apply_subst_arg1_1)) _lh_apply_subst_Fun_1_1), _lh_apply_subst_Fun_2_1))
    | _ -> 
      (failwith "error"));;
let rec termEq_lh__d7 _lh_termEq_arg1_1 _lh_termEq_arg2_1 =
  (match _lh_termEq_arg1_1 with
    | `Var(_lh_termEq_Var_0_2) -> 
      (match _lh_termEq_arg2_1 with
        | `Var(_lh_termEq_Var_0_3) -> 
          (_lh_termEq_Var_0_2 = _lh_termEq_Var_0_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_2, _lh_termEq_Fun_1_2, _lh_termEq_Fun_2_2) -> 
      (match _lh_termEq_arg2_1 with
        | `Fun(_lh_termEq_Fun_0_3, _lh_termEq_Fun_1_3, _lh_termEq_Fun_2_3) -> 
          ((_lh_termEq_Fun_0_2 = _lh_termEq_Fun_0_3) && ((termLsEq_lh__d7 _lh_termEq_Fun_1_2) _lh_termEq_Fun_1_3))
        | _ -> 
          false)
    | _ -> 
      false)
and
termLsEq_lh__d7 _lh_termLsEq_arg1_0 _lh_termLsEq_arg2_0 =
  (match _lh_termLsEq_arg1_0 with
    | `LH_C(_lh_termLsEq_LH_C_0_0, _lh_termLsEq_LH_C_1_0) -> 
      (match _lh_termLsEq_arg2_0 with
        | `LH_C(_lh_termLsEq_LH_C_0_1, _lh_termLsEq_LH_C_1_1) -> 
          (if ((termEq_lh__d7 _lh_termLsEq_LH_C_0_0) _lh_termLsEq_LH_C_0_1) then
            ((termLsEq_lh__d7 _lh_termLsEq_LH_C_1_0) _lh_termLsEq_LH_C_1_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec termInList_lh__d7 _lh_termInList_arg1_1 _lh_termInList_arg2_1 =
  (match _lh_termInList_arg2_1 with
    | `LH_C(_lh_termInList_LH_C_0_1, _lh_termInList_LH_C_1_1) -> 
      (if ((termEq_lh__d7 _lh_termInList_arg1_1) _lh_termInList_LH_C_0_1) then
        true
      else
        ((termInList_lh__d7 _lh_termInList_arg1_1) _lh_termInList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec termEq_lh__d8 _lh_termEq_arg1_0 _lh_termEq_arg2_0 =
  (match _lh_termEq_arg1_0 with
    | `Var(_lh_termEq_Var_0_0) -> 
      (match _lh_termEq_arg2_0 with
        | `Var(_lh_termEq_Var_0_1) -> 
          (_lh_termEq_Var_0_0 = _lh_termEq_Var_0_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_0, _lh_termEq_Fun_1_0, _lh_termEq_Fun_2_0) -> 
      (match _lh_termEq_arg2_0 with
        | `Fun(_lh_termEq_Fun_0_1, _lh_termEq_Fun_1_1, _lh_termEq_Fun_2_1) -> 
          ((_lh_termEq_Fun_0_0 = _lh_termEq_Fun_0_1) && ((termLsEq_lh__d7 _lh_termEq_Fun_1_0) _lh_termEq_Fun_1_1))
        | _ -> 
          false)
    | _ -> 
      false);;
let rec termInList_lh__d8 _lh_termInList_arg1_0 _lh_termInList_arg2_0 =
  (match _lh_termInList_arg2_0 with
    | `LH_C(_lh_termInList_LH_C_0_0, _lh_termInList_LH_C_1_0) -> 
      (if ((termEq_lh__d8 _lh_termInList_arg1_0) _lh_termInList_LH_C_0_0) then
        true
      else
        ((termInList_lh__d8 _lh_termInList_arg1_0) _lh_termInList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec truep_lh__d2 _lh_truep_arg1_0 _lh_truep_arg2_0 =
  (match _lh_truep_arg1_0 with
    | `Fun(_lh_truep_Fun_0_0, _lh_truep_Fun_1_0, _lh_truep_Fun_2_0) -> 
      (match _lh_truep_Fun_0_0 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList_lh__d7 _lh_truep_arg1_0) _lh_truep_arg2_0))
    | _ -> 
      ((termInList_lh__d8 _lh_truep_arg1_0) _lh_truep_arg2_0));;
let rec termEq_lh__d1 _lh_termEq_arg1_7 _lh_termEq_arg2_7 =
  (match _lh_termEq_arg1_7 with
    | `Var(_lh_termEq_Var_0_1_4) -> 
      (match _lh_termEq_arg2_7 with
        | `Var(_lh_termEq_Var_0_1_5) -> 
          (_lh_termEq_Var_0_1_4 = _lh_termEq_Var_0_1_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_4, _lh_termEq_Fun_1_1_4, _lh_termEq_Fun_2_1_4) -> 
      (match _lh_termEq_arg2_7 with
        | `Fun(_lh_termEq_Fun_0_1_5, _lh_termEq_Fun_1_1_5, _lh_termEq_Fun_2_1_5) -> 
          ((_lh_termEq_Fun_0_1_4 = _lh_termEq_Fun_0_1_5) && ((termLsEq_lh__d1 _lh_termEq_Fun_1_1_4) _lh_termEq_Fun_1_1_5))
        | _ -> 
          false)
    | _ -> 
      false)
and
termLsEq_lh__d1 _lh_termLsEq_arg1_6 _lh_termLsEq_arg2_6 =
  (match _lh_termLsEq_arg1_6 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_2, _lh_termLsEq_LH_C_1_1_2) -> 
      (match _lh_termLsEq_arg2_6 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_3, _lh_termLsEq_LH_C_1_1_3) -> 
          (if ((termEq_lh__d1 _lh_termLsEq_LH_C_0_1_2) _lh_termLsEq_LH_C_0_1_3) then
            ((termLsEq_lh__d1 _lh_termLsEq_LH_C_1_1_2) _lh_termLsEq_LH_C_1_1_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_6 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec termInList_lh__d1 _lh_termInList_arg1_7 _lh_termInList_arg2_7 =
  (match _lh_termInList_arg2_7 with
    | `LH_C(_lh_termInList_LH_C_0_7, _lh_termInList_LH_C_1_7) -> 
      (if ((termEq_lh__d1 _lh_termInList_arg1_7) _lh_termInList_LH_C_0_7) then
        true
      else
        ((termInList_lh__d1 _lh_termInList_arg1_7) _lh_termInList_LH_C_1_7))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec termEq_lh__d2 _lh_termEq_arg1_6 _lh_termEq_arg2_6 =
  (match _lh_termEq_arg1_6 with
    | `Var(_lh_termEq_Var_0_1_2) -> 
      (match _lh_termEq_arg2_6 with
        | `Var(_lh_termEq_Var_0_1_3) -> 
          (_lh_termEq_Var_0_1_2 = _lh_termEq_Var_0_1_3)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_2, _lh_termEq_Fun_1_1_2, _lh_termEq_Fun_2_1_2) -> 
      (match _lh_termEq_arg2_6 with
        | `Fun(_lh_termEq_Fun_0_1_3, _lh_termEq_Fun_1_1_3, _lh_termEq_Fun_2_1_3) -> 
          ((_lh_termEq_Fun_0_1_2 = _lh_termEq_Fun_0_1_3) && ((termLsEq_lh__d2 _lh_termEq_Fun_1_1_2) _lh_termEq_Fun_1_1_3))
        | _ -> 
          false)
    | _ -> 
      false)
and
termLsEq_lh__d2 _lh_termLsEq_arg1_5 _lh_termLsEq_arg2_5 =
  (match _lh_termLsEq_arg1_5 with
    | `LH_C(_lh_termLsEq_LH_C_0_1_0, _lh_termLsEq_LH_C_1_1_0) -> 
      (match _lh_termLsEq_arg2_5 with
        | `LH_C(_lh_termLsEq_LH_C_0_1_1, _lh_termLsEq_LH_C_1_1_1) -> 
          (if ((termEq_lh__d2 _lh_termLsEq_LH_C_0_1_0) _lh_termLsEq_LH_C_0_1_1) then
            ((termLsEq_lh__d2 _lh_termLsEq_LH_C_1_1_0) _lh_termLsEq_LH_C_1_1_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_5 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec termInList_lh__d2 _lh_termInList_arg1_6 _lh_termInList_arg2_6 =
  (match _lh_termInList_arg2_6 with
    | `LH_C(_lh_termInList_LH_C_0_6, _lh_termInList_LH_C_1_6) -> 
      (if ((termEq_lh__d2 _lh_termInList_arg1_6) _lh_termInList_LH_C_0_6) then
        true
      else
        ((termInList_lh__d2 _lh_termInList_arg1_6) _lh_termInList_LH_C_1_6))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec falsep_lh__d1 _lh_falsep_arg1_1 _lh_falsep_arg2_1 =
  (match _lh_falsep_arg1_1 with
    | `Fun(_lh_falsep_Fun_0_1, _lh_falsep_Fun_1_1, _lh_falsep_Fun_2_1) -> 
      (match _lh_falsep_Fun_0_1 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList_lh__d1 _lh_falsep_arg1_1) _lh_falsep_arg2_1))
    | _ -> 
      ((termInList_lh__d2 _lh_falsep_arg1_1) _lh_falsep_arg2_1));;
let rec termEq_lh__d4 _lh_termEq_arg1_4 _lh_termEq_arg2_4 =
  (match _lh_termEq_arg1_4 with
    | `Var(_lh_termEq_Var_0_8) -> 
      (match _lh_termEq_arg2_4 with
        | `Var(_lh_termEq_Var_0_9) -> 
          (_lh_termEq_Var_0_8 = _lh_termEq_Var_0_9)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_8, _lh_termEq_Fun_1_8, _lh_termEq_Fun_2_8) -> 
      (match _lh_termEq_arg2_4 with
        | `Fun(_lh_termEq_Fun_0_9, _lh_termEq_Fun_1_9, _lh_termEq_Fun_2_9) -> 
          ((_lh_termEq_Fun_0_8 = _lh_termEq_Fun_0_9) && ((termLsEq_lh__d4 _lh_termEq_Fun_1_8) _lh_termEq_Fun_1_9))
        | _ -> 
          false)
    | _ -> 
      false)
and
termLsEq_lh__d4 _lh_termLsEq_arg1_3 _lh_termLsEq_arg2_3 =
  (match _lh_termLsEq_arg1_3 with
    | `LH_C(_lh_termLsEq_LH_C_0_6, _lh_termLsEq_LH_C_1_6) -> 
      (match _lh_termLsEq_arg2_3 with
        | `LH_C(_lh_termLsEq_LH_C_0_7, _lh_termLsEq_LH_C_1_7) -> 
          (if ((termEq_lh__d4 _lh_termLsEq_LH_C_0_6) _lh_termLsEq_LH_C_0_7) then
            ((termLsEq_lh__d4 _lh_termLsEq_LH_C_1_6) _lh_termLsEq_LH_C_1_7)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_3 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec termInList_lh__d4 _lh_termInList_arg1_4 _lh_termInList_arg2_4 =
  (match _lh_termInList_arg2_4 with
    | `LH_C(_lh_termInList_LH_C_0_4, _lh_termInList_LH_C_1_4) -> 
      (if ((termEq_lh__d4 _lh_termInList_arg1_4) _lh_termInList_LH_C_0_4) then
        true
      else
        ((termInList_lh__d4 _lh_termInList_arg1_4) _lh_termInList_LH_C_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec termEq_lh__d3 _lh_termEq_arg1_5 _lh_termEq_arg2_5 =
  (match _lh_termEq_arg1_5 with
    | `Var(_lh_termEq_Var_0_1_0) -> 
      (match _lh_termEq_arg2_5 with
        | `Var(_lh_termEq_Var_0_1_1) -> 
          (_lh_termEq_Var_0_1_0 = _lh_termEq_Var_0_1_1)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_1_0, _lh_termEq_Fun_1_1_0, _lh_termEq_Fun_2_1_0) -> 
      (match _lh_termEq_arg2_5 with
        | `Fun(_lh_termEq_Fun_0_1_1, _lh_termEq_Fun_1_1_1, _lh_termEq_Fun_2_1_1) -> 
          ((_lh_termEq_Fun_0_1_0 = _lh_termEq_Fun_0_1_1) && ((termLsEq_lh__d3 _lh_termEq_Fun_1_1_0) _lh_termEq_Fun_1_1_1))
        | _ -> 
          false)
    | _ -> 
      false)
and
termLsEq_lh__d3 _lh_termLsEq_arg1_4 _lh_termLsEq_arg2_4 =
  (match _lh_termLsEq_arg1_4 with
    | `LH_C(_lh_termLsEq_LH_C_0_8, _lh_termLsEq_LH_C_1_8) -> 
      (match _lh_termLsEq_arg2_4 with
        | `LH_C(_lh_termLsEq_LH_C_0_9, _lh_termLsEq_LH_C_1_9) -> 
          (if ((termEq_lh__d3 _lh_termLsEq_LH_C_0_8) _lh_termLsEq_LH_C_0_9) then
            ((termLsEq_lh__d3 _lh_termLsEq_LH_C_1_8) _lh_termLsEq_LH_C_1_9)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_4 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec termInList_lh__d3 _lh_termInList_arg1_5 _lh_termInList_arg2_5 =
  (match _lh_termInList_arg2_5 with
    | `LH_C(_lh_termInList_LH_C_0_5, _lh_termInList_LH_C_1_5) -> 
      (if ((termEq_lh__d3 _lh_termInList_arg1_5) _lh_termInList_LH_C_0_5) then
        true
      else
        ((termInList_lh__d3 _lh_termInList_arg1_5) _lh_termInList_LH_C_1_5))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec truep_lh__d1 _lh_truep_arg1_1 _lh_truep_arg2_1 =
  (match _lh_truep_arg1_1 with
    | `Fun(_lh_truep_Fun_0_1, _lh_truep_Fun_1_1, _lh_truep_Fun_2_1) -> 
      (match _lh_truep_Fun_0_1 with
        | `TRUE -> 
          true
        | _ -> 
          ((termInList_lh__d3 _lh_truep_arg1_1) _lh_truep_arg2_1))
    | _ -> 
      ((termInList_lh__d4 _lh_truep_arg1_1) _lh_truep_arg2_1));;
let rec termEq_lh__d5 _lh_termEq_arg1_3 _lh_termEq_arg2_3 =
  (match _lh_termEq_arg1_3 with
    | `Var(_lh_termEq_Var_0_6) -> 
      (match _lh_termEq_arg2_3 with
        | `Var(_lh_termEq_Var_0_7) -> 
          (_lh_termEq_Var_0_6 = _lh_termEq_Var_0_7)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_6, _lh_termEq_Fun_1_6, _lh_termEq_Fun_2_6) -> 
      (match _lh_termEq_arg2_3 with
        | `Fun(_lh_termEq_Fun_0_7, _lh_termEq_Fun_1_7, _lh_termEq_Fun_2_7) -> 
          ((_lh_termEq_Fun_0_6 = _lh_termEq_Fun_0_7) && ((termLsEq_lh__d5 _lh_termEq_Fun_1_6) _lh_termEq_Fun_1_7))
        | _ -> 
          false)
    | _ -> 
      false)
and
termLsEq_lh__d5 _lh_termLsEq_arg1_2 _lh_termLsEq_arg2_2 =
  (match _lh_termLsEq_arg1_2 with
    | `LH_C(_lh_termLsEq_LH_C_0_4, _lh_termLsEq_LH_C_1_4) -> 
      (match _lh_termLsEq_arg2_2 with
        | `LH_C(_lh_termLsEq_LH_C_0_5, _lh_termLsEq_LH_C_1_5) -> 
          (if ((termEq_lh__d5 _lh_termLsEq_LH_C_0_4) _lh_termLsEq_LH_C_0_5) then
            ((termLsEq_lh__d5 _lh_termLsEq_LH_C_1_4) _lh_termLsEq_LH_C_1_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec termInList_lh__d5 _lh_termInList_arg1_3 _lh_termInList_arg2_3 =
  (match _lh_termInList_arg2_3 with
    | `LH_C(_lh_termInList_LH_C_0_3, _lh_termInList_LH_C_1_3) -> 
      (if ((termEq_lh__d5 _lh_termInList_arg1_3) _lh_termInList_LH_C_0_3) then
        true
      else
        ((termInList_lh__d5 _lh_termInList_arg1_3) _lh_termInList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec termEq_lh__d6 _lh_termEq_arg1_2 _lh_termEq_arg2_2 =
  (match _lh_termEq_arg1_2 with
    | `Var(_lh_termEq_Var_0_4) -> 
      (match _lh_termEq_arg2_2 with
        | `Var(_lh_termEq_Var_0_5) -> 
          (_lh_termEq_Var_0_4 = _lh_termEq_Var_0_5)
        | _ -> 
          false)
    | `Fun(_lh_termEq_Fun_0_4, _lh_termEq_Fun_1_4, _lh_termEq_Fun_2_4) -> 
      (match _lh_termEq_arg2_2 with
        | `Fun(_lh_termEq_Fun_0_5, _lh_termEq_Fun_1_5, _lh_termEq_Fun_2_5) -> 
          ((_lh_termEq_Fun_0_4 = _lh_termEq_Fun_0_5) && ((termLsEq_lh__d6 _lh_termEq_Fun_1_4) _lh_termEq_Fun_1_5))
        | _ -> 
          false)
    | _ -> 
      false)
and
termLsEq_lh__d6 _lh_termLsEq_arg1_1 _lh_termLsEq_arg2_1 =
  (match _lh_termLsEq_arg1_1 with
    | `LH_C(_lh_termLsEq_LH_C_0_2, _lh_termLsEq_LH_C_1_2) -> 
      (match _lh_termLsEq_arg2_1 with
        | `LH_C(_lh_termLsEq_LH_C_0_3, _lh_termLsEq_LH_C_1_3) -> 
          (if ((termEq_lh__d6 _lh_termLsEq_LH_C_0_2) _lh_termLsEq_LH_C_0_3) then
            ((termLsEq_lh__d6 _lh_termLsEq_LH_C_1_2) _lh_termLsEq_LH_C_1_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | `LH_N -> 
      (match _lh_termLsEq_arg2_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec termInList_lh__d6 _lh_termInList_arg1_2 _lh_termInList_arg2_2 =
  (match _lh_termInList_arg2_2 with
    | `LH_C(_lh_termInList_LH_C_0_2, _lh_termInList_LH_C_1_2) -> 
      (if ((termEq_lh__d6 _lh_termInList_arg1_2) _lh_termInList_LH_C_0_2) then
        true
      else
        ((termInList_lh__d6 _lh_termInList_arg1_2) _lh_termInList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec falsep_lh__d2 _lh_falsep_arg1_0 _lh_falsep_arg2_0 =
  (match _lh_falsep_arg1_0 with
    | `Fun(_lh_falsep_Fun_0_0, _lh_falsep_Fun_1_0, _lh_falsep_Fun_2_0) -> 
      (match _lh_falsep_Fun_0_0 with
        | `FALSE -> 
          true
        | _ -> 
          ((termInList_lh__d5 _lh_falsep_arg1_0) _lh_falsep_arg2_0))
    | _ -> 
      ((termInList_lh__d6 _lh_falsep_arg1_0) _lh_falsep_arg2_0));;
let rec tautologyp_lh__d1 _lh_tautologyp_arg1_0 _lh_tautologyp_arg2_0 _lh_tautologyp_arg3_0 =
  (if ((truep_lh__d2 _lh_tautologyp_arg1_0) _lh_tautologyp_arg2_0) then
    true
  else
    (if ((falsep_lh__d1 _lh_tautologyp_arg1_0) _lh_tautologyp_arg3_0) then
      false
    else
      (let rec _lh_matchIdent_6 = _lh_tautologyp_arg1_0 in
        (match _lh_matchIdent_6 with
          | `Fun(_lh_tautologyp_Fun_0_0, _lh_tautologyp_Fun_1_0, _lh_tautologyp_Fun_2_0) -> 
            (match _lh_tautologyp_Fun_0_0 with
              | `IF -> 
                (match _lh_tautologyp_Fun_1_0 with
                  | `LH_C(_lh_tautologyp_LH_C_0_0, _lh_tautologyp_LH_C_1_0) -> 
                    (match _lh_tautologyp_LH_C_1_0 with
                      | `LH_C(_lh_tautologyp_LH_C_0_1, _lh_tautologyp_LH_C_1_1) -> 
                        (match _lh_tautologyp_LH_C_1_1 with
                          | `LH_C(_lh_tautologyp_LH_C_0_2, _lh_tautologyp_LH_C_1_2) -> 
                            (match _lh_tautologyp_LH_C_1_2 with
                              | `LH_N -> 
                                (if ((truep_lh__d1 _lh_tautologyp_LH_C_0_0) _lh_tautologyp_arg2_0) then
                                  (((tautologyp_lh__d1 _lh_tautologyp_LH_C_0_1) _lh_tautologyp_arg2_0) _lh_tautologyp_arg3_0)
                                else
                                  (if ((falsep_lh__d2 _lh_tautologyp_LH_C_0_0) _lh_tautologyp_arg3_0) then
                                    (((tautologyp_lh__d1 _lh_tautologyp_LH_C_0_2) _lh_tautologyp_arg2_0) _lh_tautologyp_arg3_0)
                                  else
                                    ((((tautologyp_lh__d1 _lh_tautologyp_LH_C_0_1) (`LH_C(_lh_tautologyp_LH_C_0_0, _lh_tautologyp_arg2_0))) _lh_tautologyp_arg3_0) && (((tautologyp_lh__d1 _lh_tautologyp_LH_C_0_2) _lh_tautologyp_arg2_0) (`LH_C(_lh_tautologyp_LH_C_0_0, _lh_tautologyp_arg3_0))))))
                              | _ -> 
                                false)
                          | _ -> 
                            false)
                      | _ -> 
                        false)
                  | _ -> 
                    false)
              | _ -> 
                false)
          | _ -> 
            false))));;
let rec one_way_unify1_lh__d1 _lh_one_way_unify1_arg1_0 _lh_one_way_unify1_arg2_0 _lh_one_way_unify1_arg3_0 =
  (match _lh_one_way_unify1_arg2_0 with
    | `Var(_lh_one_way_unify1_Var_0_0) -> 
      (let rec _lh_matchIdent_2 = ((find_lh__d1 _lh_one_way_unify1_Var_0_0) _lh_one_way_unify1_arg3_0) in
        (match _lh_matchIdent_2 with
          | `LH_P2(_lh_one_way_unify1_LH_P2_0_0, _lh_one_way_unify1_LH_P2_1_0) -> 
            (if _lh_one_way_unify1_LH_P2_0_0 then
              (`LH_P2(((termEq_lh__d8 _lh_one_way_unify1_arg1_0) _lh_one_way_unify1_LH_P2_1_0), _lh_one_way_unify1_arg3_0))
            else
              (`LH_P2(true, (`LH_C((`LH_P2(_lh_one_way_unify1_Var_0_0, _lh_one_way_unify1_arg1_0)), _lh_one_way_unify1_arg3_0)))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (match _lh_one_way_unify1_arg1_0 with
        | `Fun(_lh_one_way_unify1_Fun_0_0, _lh_one_way_unify1_Fun_1_0, _lh_one_way_unify1_Fun_2_0) -> 
          (match _lh_one_way_unify1_arg2_0 with
            | `Fun(_lh_one_way_unify1_Fun_0_1, _lh_one_way_unify1_Fun_1_1, _lh_one_way_unify1_Fun_2_1) -> 
              (if (_lh_one_way_unify1_Fun_0_0 = _lh_one_way_unify1_Fun_0_1) then
                (((one_way_unify1_lst_lh__d1 _lh_one_way_unify1_Fun_1_0) _lh_one_way_unify1_Fun_1_1) _lh_one_way_unify1_arg3_0)
              else
                (`LH_P2(false, (`LH_N))))
            | _ -> 
              (`LH_P2(false, (`LH_N))))
        | _ -> 
          (`LH_P2(false, (`LH_N)))))
and
one_way_unify1_lst_lh__d1 _lh_one_way_unify1_lst_arg1_0 _lh_one_way_unify1_lst_arg2_0 _lh_one_way_unify1_lst_arg3_0 =
  (match _lh_one_way_unify1_lst_arg1_0 with
    | `LH_N -> 
      (match _lh_one_way_unify1_lst_arg2_0 with
        | `LH_N -> 
          (`LH_P2(true, _lh_one_way_unify1_lst_arg3_0))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | `LH_C(_lh_one_way_unify1_lst_LH_C_0_0, _lh_one_way_unify1_lst_LH_C_1_0) -> 
      (match _lh_one_way_unify1_lst_arg2_0 with
        | `LH_C(_lh_one_way_unify1_lst_LH_C_0_1, _lh_one_way_unify1_lst_LH_C_1_1) -> 
          (let rec _lh_matchIdent_0 = (((one_way_unify1_lh__d1 _lh_one_way_unify1_lst_LH_C_0_0) _lh_one_way_unify1_lst_LH_C_0_1) _lh_one_way_unify1_lst_arg3_0) in
            (match _lh_matchIdent_0 with
              | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_0, _lh_one_way_unify1_lst_LH_P2_1_0) -> 
                (let rec _lh_matchIdent_1 = (((one_way_unify1_lst_lh__d1 _lh_one_way_unify1_lst_LH_C_1_0) _lh_one_way_unify1_lst_LH_C_1_1) _lh_one_way_unify1_lst_LH_P2_1_0) in
                  (match _lh_matchIdent_1 with
                    | `LH_P2(_lh_one_way_unify1_lst_LH_P2_0_1, _lh_one_way_unify1_lst_LH_P2_1_1) -> 
                      (`LH_P2((_lh_one_way_unify1_lst_LH_P2_0_0 && _lh_one_way_unify1_lst_LH_P2_0_1), _lh_one_way_unify1_lst_LH_P2_1_1))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (`LH_P2(false, (`LH_N))))
    | _ -> 
      (`LH_P2(false, (`LH_N))));;
let rec one_way_unify_lh__d1 _lh_one_way_unify_arg1_0 _lh_one_way_unify_arg2_0 =
  (((one_way_unify1_lh__d1 _lh_one_way_unify_arg1_0) _lh_one_way_unify_arg2_0) (`LH_N));;
let rec map_lh__d2 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d2 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec apply_subst_lh__d2 _lh_apply_subst_arg1_0 _lh_apply_subst_arg2_0 =
  (match _lh_apply_subst_arg2_0 with
    | `Var(_lh_apply_subst_Var_0_0) -> 
      (let rec _lh_matchIdent_3 = ((find_lh__d1 _lh_apply_subst_Var_0_0) _lh_apply_subst_arg1_0) in
        (match _lh_matchIdent_3 with
          | `LH_P2(_lh_apply_subst_LH_P2_0_0, _lh_apply_subst_LH_P2_1_0) -> 
            (if _lh_apply_subst_LH_P2_0_0 then
              _lh_apply_subst_LH_P2_1_0
            else
              (`Var(_lh_apply_subst_Var_0_0)))
          | _ -> 
            (failwith "error")))
    | `Fun(_lh_apply_subst_Fun_0_0, _lh_apply_subst_Fun_1_0, _lh_apply_subst_Fun_2_0) -> 
      (`Fun(_lh_apply_subst_Fun_0_0, ((map_lh__d2 (apply_subst_lh__d2 _lh_apply_subst_arg1_0)) _lh_apply_subst_Fun_1_0), _lh_apply_subst_Fun_2_0))
    | _ -> 
      (failwith "error"));;
let rec rewrite_lh__d1 _lh_rewrite_arg1_0 =
  (match _lh_rewrite_arg1_0 with
    | `Var(_lh_rewrite_Var_0_0) -> 
      (`Var(_lh_rewrite_Var_0_0))
    | `Fun(_lh_rewrite_Fun_0_0, _lh_rewrite_Fun_1_0, _lh_rewrite_Fun_2_0) -> 
      ((rewrite_with_lemmas_lh__d1 (`Fun(_lh_rewrite_Fun_0_0, ((map_lh__d2 rewrite_lh__d1) _lh_rewrite_Fun_1_0), _lh_rewrite_Fun_2_0))) _lh_rewrite_Fun_2_0)
    | _ -> 
      (failwith "error"))
and
rewrite_with_lemmas_helper_lh__d1 _lh_rewrite_with_lemmas_helper_arg1_0 _lh_rewrite_with_lemmas_helper_arg2_0 =
  (let rec _lh_matchIdent_4 = _lh_rewrite_with_lemmas_helper_arg2_0 in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        _lh_rewrite_with_lemmas_helper_arg1_0
      | `LH_C(_lh_rewrite_with_lemmas_helper_LH_C_0_0, _lh_rewrite_with_lemmas_helper_LH_C_1_0) -> 
        (match _lh_rewrite_with_lemmas_helper_LH_C_0_0 with
          | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_0, _lh_rewrite_with_lemmas_helper_LH_P2_1_0) -> 
            (let rec _lh_matchIdent_5 = ((one_way_unify_lh__d1 _lh_rewrite_with_lemmas_helper_arg1_0) _lh_rewrite_with_lemmas_helper_LH_P2_0_0) in
              (match _lh_matchIdent_5 with
                | `LH_P2(_lh_rewrite_with_lemmas_helper_LH_P2_0_1, _lh_rewrite_with_lemmas_helper_LH_P2_1_1) -> 
                  (if _lh_rewrite_with_lemmas_helper_LH_P2_0_1 then
                    (rewrite_lh__d1 ((apply_subst_lh__d2 _lh_rewrite_with_lemmas_helper_LH_P2_1_1) _lh_rewrite_with_lemmas_helper_LH_P2_1_0))
                  else
                    ((rewrite_with_lemmas_helper_lh__d1 _lh_rewrite_with_lemmas_helper_arg1_0) _lh_rewrite_with_lemmas_helper_LH_C_1_0))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and
rewrite_with_lemmas_lh__d1 _lh_rewrite_with_lemmas_arg1_0 _lh_rewrite_with_lemmas_arg2_0 =
  ((rewrite_with_lemmas_helper_lh__d1 _lh_rewrite_with_lemmas_arg1_0) (Lazy.force _lh_rewrite_with_lemmas_arg2_0));;
let rec tautp_lh__d1 _lh_tautp_arg1_0 =
  (((tautologyp_lh__d1 (rewrite_lh__d1 _lh_tautp_arg1_0)) (`LH_N)) (`LH_N));;
let rec test0_lh__d1 _lh_test0_arg1_0 =
  let rec boyerTrue_0 = (`Fun((`TRUE), (`LH_N), (lazy (`LH_N))))
  and append_0 = (fun _lh_append_arg1_0 _lh_append_arg2_0 -> 
    (`Fun((`APPEND), (`LH_C(_lh_append_arg1_0, (`LH_C(_lh_append_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((append_0 ((append_0 x_0) y_0)) z_0), ((append_0 x_0) ((append_0 y_0) z_0)))), (`LH_N)))))))
  and difference_0 = (fun _lh_difference_arg1_0 _lh_difference_arg2_0 -> 
    (`Fun((`DIFFERENCE), (`LH_C(_lh_difference_arg1_0, (`LH_C(_lh_difference_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((difference_0 x_0) x_0), zero_0)), (`LH_C((`LH_P2(((difference_0 ((plus_0 x_0) y_0)) x_0), y_0)), (`LH_C((`LH_P2(((difference_0 ((plus_0 y_0) x_0)) x_0), y_0)), (`LH_C((`LH_P2(((difference_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)), ((difference_0 y_0) z_0))), (`LH_C((`LH_P2(((difference_0 ((plus_0 y_0) ((plus_0 x_0) z_0))) x_0), ((plus_0 y_0) z_0))), (`LH_C((`LH_P2(((difference_0 (add1_0 ((plus_0 y_0) z_0))) z_0), (add1_0 y_0))), (`LH_C((`LH_P2(((difference_0 (add1_0 (add1_0 x_0))) two_0), x_0)), (`LH_N)))))))))))))))))))
  and listp_0 = (fun _lh_listp_arg1_0 -> 
    (`Fun((`LISTP), (`LH_C(_lh_listp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((listp_0 x_0), ((or__0 (nilp_0 x_0)) (consp_0 x_0)))), (`LH_N)))))))
  and iff_0 = (fun _lh_iff_arg1_0 _lh_iff_arg2_0 -> 
    (`Fun((`IFF), (`LH_C(_lh_iff_arg1_0, (`LH_C(_lh_iff_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((iff_0 x_0) y_0), ((and__0 ((implies_0 x_0) y_0)) ((implies_0 y_0) x_0)))), (`LH_N)))))))
  and z_0 = (`Var((`Z)))
  and remainder_0 = (fun _lh_remainder_arg1_0 _lh_remainder_arg2_0 -> 
    (`Fun((`REMAINDER), (`LH_C(_lh_remainder_arg1_0, (`LH_C(_lh_remainder_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((remainder_0 x_0) one_0), zero_0)), (`LH_C((`LH_P2(((remainder_0 x_0) x_0), zero_0)), (`LH_C((`LH_P2(((remainder_0 ((times_0 x_0) y_0)) x_0), zero_0)), (`LH_C((`LH_P2(((remainder_0 ((times_0 x_0) y_0)) y_0), zero_0)), (`LH_N)))))))))))))
  and nlistp_0 = (fun _lh_nlistp_arg1_0 -> 
    (`Fun((`NLISTP), (`LH_C(_lh_nlistp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((nlistp_0 x_0), (not__0 (listp_0 x_0)))), (`LH_N)))))))
  and and__0 = (fun _lh_and__arg1_0 _lh_and__arg2_0 -> 
    (`Fun((`AND), (`LH_C(_lh_and__arg1_0, (`LH_C(_lh_and__arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((and__0 x_0) y_0), (((if__0 x_0) (((if__0 y_0) boyerTrue_0) boyerFalse_0)) boyerFalse_0))), (`LH_N)))))))
  and implies_0 = (fun _lh_implies_arg1_0 _lh_implies_arg2_0 -> 
    (`Fun((`IMPLIES), (`LH_C(_lh_implies_arg1_0, (`LH_C(_lh_implies_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((implies_0 x_0) y_0), (((if__0 x_0) (((if__0 y_0) boyerTrue_0) boyerFalse_0)) boyerTrue_0))), (`LH_N)))))))
  and equal_0 = (fun _lh_equal_arg1_0 _lh_equal_arg2_0 -> 
    (`Fun((`EQUAL), (`LH_C(_lh_equal_arg1_0, (`LH_C(_lh_equal_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((equal_0 ((plus_0 x_0) y_0)) zero_0), ((and__0 (zerop_0 x_0)) (zerop_0 y_0)))), (`LH_C((`LH_P2(((equal_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)), ((equal_0 y_0) z_0))), (`LH_C((`LH_P2(((equal_0 zero_0) ((difference_0 x_0) y_0)), (not__0 ((lessp_0 y_0) x_0)))), (`LH_C((`LH_P2(((equal_0 x_0) ((difference_0 x_0) y_0)), ((or__0 ((equal_0 x_0) zero_0)) (zerop_0 y_0)))), (`LH_C((`LH_P2(((equal_0 ((times_0 x_0) y_0)) zero_0), ((or__0 (zerop_0 x_0)) (zerop_0 y_0)))), (`LH_C((`LH_P2(((equal_0 ((append_0 x_0) y_0)) ((append_0 x_0) z_0)), ((equal_0 y_0) z_0))), (`LH_C((`LH_P2(((equal_0 y_0) ((times_0 x_0) y_0)), ((or__0 ((equal_0 y_0) zero_0)) ((equal_0 x_0) one_0)))), (`LH_C((`LH_P2(((equal_0 x_0) ((times_0 x_0) y_0)), ((or__0 ((equal_0 x_0) zero_0)) ((equal_0 y_0) one_0)))), (`LH_C((`LH_P2(((equal_0 ((times_0 x_0) y_0)) one_0), ((and__0 ((equal_0 x_0) one_0)) ((equal_0 y_0) one_0)))), (`LH_C((`LH_P2(((equal_0 ((difference_0 x_0) y_0)) ((difference_0 z_0) y_0)), (((if__0 ((lessp_0 x_0) y_0)) (not__0 ((lessp_0 y_0) z_0))) (((if__0 ((lessp_0 z_0) y_0)) (not__0 ((lessp_0 y_0) x_0))) ((equal_0 x_0) z_0))))), (`LH_C((`LH_P2(((equal_0 ((lessp_0 x_0) y_0)) z_0), (((if__0 ((lessp_0 x_0) y_0)) ((equal_0 boyerTrue_0) z_0)) ((equal_0 boyerFalse_0) z_0)))), (`LH_N)))))))))))))))))))))))))))
  and divides_0 = (fun _lh_divides_arg1_0 _lh_divides_arg2_0 -> 
    (`Fun((`DIVIDES), (`LH_C(_lh_divides_arg1_0, (`LH_C(_lh_divides_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((divides_0 x_0) y_0), (zerop_0 ((remainder_0 y_0) x_0)))), (`LH_N)))))))
  and b_0 = (`Var((`B)))
  and lesseqp_0 = (fun _lh_lesseqp_arg1_0 _lh_lesseqp_arg2_0 -> 
    (`Fun((`LESSEQP), (`LH_C(_lh_lesseqp_arg1_0, (`LH_C(_lh_lesseqp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lesseqp_0 x_0) y_0), (not__0 ((lessp_0 y_0) x_0)))), (`LH_N)))))))
  and exp__0 = (fun _lh_exp__arg1_0 _lh_exp__arg2_0 -> 
    (`Fun((`EXP), (`LH_C(_lh_exp__arg1_0, (`LH_C(_lh_exp__arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((exp__0 x_0) ((plus_0 y_0) z_0)), ((times_0 ((exp__0 x_0) y_0)) ((exp__0 x_0) z_0)))), (`LH_C((`LH_P2(((exp__0 x_0) ((times_0 y_0) z_0)), ((exp__0 ((exp__0 x_0) y_0)) z_0))), (`LH_N)))))))))
  and lessp_0 = (fun _lh_lessp_arg1_0 _lh_lessp_arg2_0 -> 
    (`Fun((`LESSP), (`LH_C(_lh_lessp_arg1_0, (`LH_C(_lh_lessp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((lessp_0 ((remainder_0 x_0) y_0)) y_0), (not__0 (zerop_0 y_0)))), (`LH_C((`LH_P2(((lessp_0 ((quotient_0 x_0) y_0)) x_0), ((and__0 (not__0 (zerop_0 x_0))) ((lessp_0 one_0) y_0)))), (`LH_C((`LH_P2(((lessp_0 ((plus_0 x_0) y_0)) ((plus_0 x_0) z_0)), ((lessp_0 y_0) z_0))), (`LH_C((`LH_P2(((lessp_0 ((times_0 x_0) z_0)) ((times_0 y_0) z_0)), ((and__0 (not__0 (zerop_0 z_0))) ((lessp_0 x_0) y_0)))), (`LH_C((`LH_P2(((lessp_0 y_0) ((plus_0 x_0) y_0)), (not__0 (zerop_0 x_0)))), (`LH_N)))))))))))))))
  and reverse__0 = (fun _lh_reverse__arg1_0 -> 
    (`Fun((`REVERSE), (`LH_C(_lh_reverse__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((reverse__0 ((append_0 x_0) y_0)), ((append_0 (reverse__0 y_0)) (reverse__0 x_0)))), (`LH_N)))))))
  and zerop_0 = (fun _lh_zerop_arg1_0 -> 
    (`Fun((`ZEROP), (`LH_C(_lh_zerop_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((zerop_0 x_0), ((equal_0 x_0) zero_0))), (`LH_N)))))))
  and zero_0 = (`Fun((`ZERO), (`LH_N), (lazy (`LH_N))))
  and u_0 = (`Var((`U)))
  and times_0 = (fun _lh_times_arg1_0 _lh_times_arg2_0 -> 
    (`Fun((`TIMES), (`LH_C(_lh_times_arg1_0, (`LH_C(_lh_times_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((times_0 x_0) ((plus_0 y_0) z_0)), ((plus_0 ((times_0 x_0) y_0)) ((times_0 x_0) z_0)))), (`LH_C((`LH_P2(((times_0 ((times_0 x_0) y_0)) z_0), ((times_0 x_0) ((times_0 y_0) z_0)))), (`LH_C((`LH_P2(((times_0 x_0) ((difference_0 y_0) z_0)), ((difference_0 ((times_0 y_0) x_0)) ((times_0 z_0) x_0)))), (`LH_C((`LH_P2(((times_0 x_0) (add1_0 y_0)), ((plus_0 x_0) ((times_0 x_0) y_0)))), (`LH_N)))))))))))))
  and one_0 = (`Fun((`ONE), (`LH_N), (lazy (`LH_C((`LH_P2(one_0, (add1_0 zero_0))), (`LH_N))))))
  and plus_0 = (fun _lh_plus_arg1_0 _lh_plus_arg2_0 -> 
    (`Fun((`PLUS), (`LH_C(_lh_plus_arg1_0, (`LH_C(_lh_plus_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((plus_0 ((plus_0 x_0) y_0)) z_0), ((plus_0 x_0) ((plus_0 y_0) z_0)))), (`LH_C((`LH_P2(((plus_0 ((remainder_0 x_0) y_0)) ((times_0 y_0) ((quotient_0 x_0) y_0))), x_0)), (`LH_C((`LH_P2(((plus_0 x_0) (add1_0 y_0)), (add1_0 ((plus_0 x_0) y_0)))), (`LH_N)))))))))))
  and a_0 = (`Var((`A)))
  and if__0 = (fun _lh_if__arg1_0 _lh_if__arg2_0 _lh_if__arg3_0 -> 
    (`Fun((`IF), (`LH_C(_lh_if__arg1_0, (`LH_C(_lh_if__arg2_0, (`LH_C(_lh_if__arg3_0, (`LH_N))))))), (lazy (`LH_C((`LH_P2((((if__0 (((if__0 x_0) y_0) z_0)) u_0) w_0), (((if__0 x_0) (((if__0 y_0) u_0) w_0)) (((if__0 z_0) u_0) w_0)))), (`LH_N)))))))
  and w_0 = (`Var((`W)))
  and nil_0 = (`Fun((`NIL), (`LH_N), (lazy (`LH_N))))
  and x_0 = (`Var((`X)))
  and odd__0 = (fun _lh_odd__arg1_0 -> 
    (`Fun((`ODD), (`LH_C(_lh_odd__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((odd__0 x_0), (even__0 (sub1_0 x_0)))), (`LH_N)))))))
  and y_0 = (`Var((`Y)))
  and greatereqp_0 = (fun _lh_greatereqp_arg1_0 _lh_greatereqp_arg2_0 -> 
    (`Fun((`GREATEREQP), (`LH_C(_lh_greatereqp_arg1_0, (`LH_C(_lh_greatereqp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greatereqp_0 x_0) y_0), (not__0 ((lessp_0 x_0) y_0)))), (`LH_N)))))))
  and not__0 = (fun _lh_not__arg1_0 -> 
    (`Fun((`NOT), (`LH_C(_lh_not__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((not__0 x_0), (((if__0 x_0) boyerFalse_0) boyerTrue_0))), (`LH_N)))))))
  and member_0 = (fun _lh_member_arg1_0 _lh_member_arg2_0 -> 
    (`Fun((`MEMBER), (`LH_C(_lh_member_arg1_0, (`LH_C(_lh_member_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((member_0 x_0) ((append_0 y_0) z_0)), ((or__0 ((member_0 x_0) y_0)) ((member_0 x_0) z_0)))), (`LH_C((`LH_P2(((member_0 x_0) (reverse__0 y_0)), ((member_0 x_0) y_0))), (`LH_N)))))))))
  and d_0 = (`Var((`D)))
  and c_0 = (`Var((`C)))
  and consp_0 = (fun _lh_consp_arg1_0 -> 
    (`Fun((`CONSP), (`LH_C(_lh_consp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((consp_0 ((cons_0 x_0) y_0)), boyerTrue_0)), (`LH_N)))))))
  and nilp_0 = (fun _lh_nilp_arg1_0 -> 
    (`Fun((`NILP), (`LH_C(_lh_nilp_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((nilp_0 x_0), ((equal_0 x_0) nil_0))), (`LH_N)))))))
  and f_2 = (fun _lh_f_arg1_0 -> 
    (`Fun((`F), (`LH_C(_lh_f_arg1_0, (`LH_N))), (lazy (`LH_N)))))
  and two_0 = (`Fun((`TWO), (`LH_N), (lazy (`LH_C((`LH_P2(two_0, (add1_0 one_0))), (`LH_N))))))
  and sub1_0 = (fun _lh_sub1_arg1_0 -> 
    (`Fun((`SUB1), (`LH_C(_lh_sub1_arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((sub1_0 (add1_0 x_0)), x_0)), (`LH_N)))))))
  and add1_0 = (fun _lh_add1_arg1_0 -> 
    (`Fun((`ADD1), (`LH_C(_lh_add1_arg1_0, (`LH_N))), (lazy (`LH_N)))))
  and greaterp_0 = (fun _lh_greaterp_arg1_0 _lh_greaterp_arg2_0 -> 
    (`Fun((`GREATERP), (`LH_C(_lh_greaterp_arg1_0, (`LH_C(_lh_greaterp_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((greaterp_0 x_0) y_0), ((lessp_0 y_0) x_0))), (`LH_N)))))))
  and or__0 = (fun _lh_or__arg1_0 _lh_or__arg2_0 -> 
    (`Fun((`OR), (`LH_C(_lh_or__arg1_0, (`LH_C(_lh_or__arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((or__0 x_0) y_0), (((if__0 x_0) boyerTrue_0) (((if__0 y_0) boyerTrue_0) boyerFalse_0)))), (`LH_N)))))))
  and length__0 = (fun _lh_length__arg1_0 -> 
    (`Fun((`LENGTH), (`LH_C(_lh_length__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((length__0 (reverse__0 x_0)), (length__0 x_0))), (`LH_C((`LH_P2((length__0 ((cons_0 x_0) ((cons_0 y_0) ((cons_0 z_0) ((cons_0 u_0) w_0))))), ((plus_0 four_0) (length__0 w_0)))), (`LH_N)))))))))
  and boyerFalse_0 = (`Fun((`FALSE), (`LH_N), (lazy (`LH_N))))
  and four_0 = (`Fun((`FOUR), (`LH_N), (lazy (`LH_C((`LH_P2(four_0, (add1_0 (add1_0 two_0)))), (`LH_N))))))
  and cons_0 = (fun _lh_cons_arg1_0 _lh_cons_arg2_0 -> 
    (`Fun((`CONS), (`LH_C(_lh_cons_arg1_0, (`LH_C(_lh_cons_arg2_0, (`LH_N))))), (lazy (`LH_N)))))
  and quotient_0 = (fun _lh_quotient_arg1_0 _lh_quotient_arg2_0 -> 
    (`Fun((`QUOTIENT), (`LH_C(_lh_quotient_arg1_0, (`LH_C(_lh_quotient_arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((quotient_0 ((plus_0 x_0) ((plus_0 x_0) y_0))) two_0), ((plus_0 x_0) ((quotient_0 y_0) two_0)))), (`LH_C((`LH_P2(((quotient_0 ((times_0 y_0) x_0)) y_0), (((if__0 (zerop_0 y_0)) zero_0) x_0))), (`LH_N)))))))))
  and gcd__0 = (fun _lh_gcd__arg1_0 _lh_gcd__arg2_0 -> 
    (`Fun((`GCD), (`LH_C(_lh_gcd__arg1_0, (`LH_C(_lh_gcd__arg2_0, (`LH_N))))), (lazy (`LH_C((`LH_P2(((gcd__0 x_0) y_0), ((gcd__0 y_0) x_0))), (`LH_C((`LH_P2(((gcd__0 ((times_0 x_0) z_0)) ((times_0 y_0) z_0)), ((times_0 z_0) ((gcd__0 x_0) y_0)))), (`LH_N)))))))))
  and even__0 = (fun _lh_even__arg1_0 -> 
    (`Fun((`EVEN), (`LH_C(_lh_even__arg1_0, (`LH_N))), (lazy (`LH_C((`LH_P2((even__0 x_0), (((if__0 (zerop_0 x_0)) boyerTrue_0) (odd__0 (sub1_0 x_0))))), (`LH_N)))))))
  in (let rec subst0_0 = (`LH_C((`LH_P2((`X), (f_2 ((plus_0 ((plus_0 a_0) b_0)) ((plus_0 c_0) zero_0))))), (`LH_C((`LH_P2((`Y), (f_2 ((times_0 ((times_0 a_0) b_0)) ((plus_0 c_0) d_0))))), (`LH_C((`LH_P2((`Z), (f_2 (reverse__0 ((append_0 ((append_0 a_0) b_0)) nil_0))))), (`LH_C((`LH_P2((`U), ((equal_0 ((plus_0 a_0) b_0)) ((difference_0 x_0) y_0)))), (`LH_C((`LH_P2((`W), ((lessp_0 ((remainder_0 a_0) b_0)) ((member_0 a_0) (length__0 b_0))))), (`LH_N))))))))))) in
    (let rec theorem_0 = ((implies_0 ((and__0 ((implies_0 _lh_test0_arg1_0) y_0)) ((and__0 ((implies_0 y_0) z_0)) ((and__0 ((implies_0 z_0) u_0)) ((implies_0 u_0) w_0))))) ((implies_0 x_0) w_0)) in
      (tautp_lh__d1 ((apply_subst_lh__d1 subst0_0) theorem_0))));;
let rec replicate_lh__d1 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 = 0) then
    (`LH_N)
  else
    (`LH_C(_lh_replicate_arg2_0, ((replicate_lh__d1 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0))));;
let rec all_lh__d1 _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh__d1 _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec testBoyer_nofib_lh__d1 _lh_testBoyer_nofib_arg1_0 =
  ((all_lh__d1 test0_lh__d1) ((replicate_lh__d1 _lh_testBoyer_nofib_arg1_0) (`Var((`X)))));;
end;;

