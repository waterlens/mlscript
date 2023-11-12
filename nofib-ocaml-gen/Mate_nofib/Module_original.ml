
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec abs__d0 _lh_abs_arg1_1_1 =
  (if (_lh_abs_arg1_1_1 < 0) then
    (0 - _lh_abs_arg1_1_1)
  else
    _lh_abs_arg1_1_1);;
let rec abs__d1 _lh_abs_arg1_1_4 =
  (if (_lh_abs_arg1_1_4 < 0) then
    (0 - _lh_abs_arg1_1_4)
  else
    _lh_abs_arg1_1_4);;
let rec abs__d1_d0 _lh_abs_arg1_2 =
  (if (_lh_abs_arg1_2 < 0) then
    (0 - _lh_abs_arg1_2)
  else
    _lh_abs_arg1_2);;
let rec abs__d1_d1 _lh_abs_arg1_2_1 =
  (if (_lh_abs_arg1_2_1 < 0) then
    (0 - _lh_abs_arg1_2_1)
  else
    _lh_abs_arg1_2_1);;
let rec abs__d1_d2 _lh_abs_arg1_1 =
  (if (_lh_abs_arg1_1 < 0) then
    (0 - _lh_abs_arg1_1)
  else
    _lh_abs_arg1_1);;
let rec abs__d1_d3 _lh_abs_arg1_7 =
  (if (_lh_abs_arg1_7 < 0) then
    (0 - _lh_abs_arg1_7)
  else
    _lh_abs_arg1_7);;
let rec abs__d1_d4 _lh_abs_arg1_4 =
  (if (_lh_abs_arg1_4 < 0) then
    (0 - _lh_abs_arg1_4)
  else
    _lh_abs_arg1_4);;
let rec abs__d1_d5 _lh_abs_arg1_2_0 =
  (if (_lh_abs_arg1_2_0 < 0) then
    (0 - _lh_abs_arg1_2_0)
  else
    _lh_abs_arg1_2_0);;
let rec abs__d1_d6 _lh_abs_arg1_1_7 =
  (if (_lh_abs_arg1_1_7 < 0) then
    (0 - _lh_abs_arg1_1_7)
  else
    _lh_abs_arg1_1_7);;
let rec abs__d1_d7 _lh_abs_arg1_8 =
  (if (_lh_abs_arg1_8 < 0) then
    (0 - _lh_abs_arg1_8)
  else
    _lh_abs_arg1_8);;
let rec abs__d1_d8 _lh_abs_arg1_1_9 =
  (if (_lh_abs_arg1_1_9 < 0) then
    (0 - _lh_abs_arg1_1_9)
  else
    _lh_abs_arg1_1_9);;
let rec abs__d1_d9 _lh_abs_arg1_1_2 =
  (if (_lh_abs_arg1_1_2 < 0) then
    (0 - _lh_abs_arg1_1_2)
  else
    _lh_abs_arg1_1_2);;
let rec abs__d2 _lh_abs_arg1_6 =
  (if (_lh_abs_arg1_6 < 0) then
    (0 - _lh_abs_arg1_6)
  else
    _lh_abs_arg1_6);;
let rec abs__d2_d0 _lh_abs_arg1_1_6 =
  (if (_lh_abs_arg1_1_6 < 0) then
    (0 - _lh_abs_arg1_1_6)
  else
    _lh_abs_arg1_1_6);;
let rec abs__d3 _lh_abs_arg1_5 =
  (if (_lh_abs_arg1_5 < 0) then
    (0 - _lh_abs_arg1_5)
  else
    _lh_abs_arg1_5);;
let rec abs__d4 _lh_abs_arg1_1_5 =
  (if (_lh_abs_arg1_1_5 < 0) then
    (0 - _lh_abs_arg1_1_5)
  else
    _lh_abs_arg1_1_5);;
let rec abs__d5 _lh_abs_arg1_1_0 =
  (if (_lh_abs_arg1_1_0 < 0) then
    (0 - _lh_abs_arg1_1_0)
  else
    _lh_abs_arg1_1_0);;
let rec abs__d6 _lh_abs_arg1_1_8 =
  (if (_lh_abs_arg1_1_8 < 0) then
    (0 - _lh_abs_arg1_1_8)
  else
    _lh_abs_arg1_1_8);;
let rec abs__d7 _lh_abs_arg1_3 =
  (if (_lh_abs_arg1_3 < 0) then
    (0 - _lh_abs_arg1_3)
  else
    _lh_abs_arg1_3);;
let rec abs__d8 _lh_abs_arg1_1_3 =
  (if (_lh_abs_arg1_1_3 < 0) then
    (0 - _lh_abs_arg1_1_3)
  else
    _lh_abs_arg1_1_3);;
let rec abs__d9 _lh_abs_arg1_9 =
  (if (_lh_abs_arg1_9 < 0) then
    (0 - _lh_abs_arg1_9)
  else
    _lh_abs_arg1_9);;
let rec any__d0 _lh_any_arg1_2 _lh_any_arg2_2 =
  (match _lh_any_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_2, _lh_any_LH_C_1_2) -> 
      (if (_lh_any_arg1_2 _lh_any_LH_C_0_2) then
        true
      else
        ((any__d0 _lh_any_arg1_2) _lh_any_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec any__d1 _lh_any_arg1_3 _lh_any_arg2_3 =
  (match _lh_any_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_3, _lh_any_LH_C_1_3) -> 
      (if (_lh_any_arg1_3 _lh_any_LH_C_0_3) then
        true
      else
        ((any__d1 _lh_any_arg1_3) _lh_any_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec any__d2 _lh_any_arg1_1 _lh_any_arg2_1 =
  (match _lh_any_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_1, _lh_any_LH_C_1_1) -> 
      (if (_lh_any_arg1_1 _lh_any_LH_C_0_1) then
        true
      else
        ((any__d2 _lh_any_arg1_1) _lh_any_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec atIndex__d0 n_4_1 ls_8_0 =
  (if (n_4_1 < 0) then
    (failwith "error")
  else
    (match ls_8_0 with
      | `LH_C(h_1_5_7, t_1_5_9) -> 
        (if (n_4_1 = 0) then
          h_1_5_7
        else
          ((atIndex__d0 (n_4_1 - 1)) t_1_5_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1 n_7_9 ls_1_3_7 =
  (if (n_7_9 < 0) then
    (failwith "error")
  else
    (match ls_1_3_7 with
      | `LH_C(h_3_0_2, t_3_0_4) -> 
        (if (n_7_9 = 0) then
          h_3_0_2
        else
          ((atIndex__d1 (n_7_9 - 1)) t_3_0_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d0 n_2_8 ls_5_8 =
  (if (n_2_8 < 0) then
    (failwith "error")
  else
    (match ls_5_8 with
      | `LH_C(h_1_1_8, t_1_2_0) -> 
        (if (n_2_8 = 0) then
          h_1_1_8
        else
          ((atIndex__d1_d0 (n_2_8 - 1)) t_1_2_0))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d1 n_5_7 ls_1_0_8 =
  (if (n_5_7 < 0) then
    (failwith "error")
  else
    (match ls_1_0_8 with
      | `LH_C(h_2_2_8, t_2_3_0) -> 
        (if (n_5_7 = 0) then
          h_2_2_8
        else
          ((atIndex__d1_d1 (n_5_7 - 1)) t_2_3_0))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d2 n_5_3 ls_1_0_0 =
  (if (n_5_3 < 0) then
    (failwith "error")
  else
    (match ls_1_0_0 with
      | `LH_C(h_2_0_7, t_2_0_9) -> 
        (if (n_5_3 = 0) then
          h_2_0_7
        else
          ((atIndex__d1_d2 (n_5_3 - 1)) t_2_0_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d3 n_4_0 ls_7_9 =
  (if (n_4_0 < 0) then
    (failwith "error")
  else
    (match ls_7_9 with
      | `LH_C(h_1_5_6, t_1_5_8) -> 
        (if (n_4_0 = 0) then
          h_1_5_6
        else
          ((atIndex__d1_d3 (n_4_0 - 1)) t_1_5_8))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d4 n_8 ls_2_5 =
  (if (n_8 < 0) then
    (failwith "error")
  else
    (match ls_2_5 with
      | `LH_C(h_2_9, t_3_1) -> 
        (if (n_8 = 0) then
          h_2_9
        else
          ((atIndex__d1_d4 (n_8 - 1)) t_3_1))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d5 n_4_9 ls_9_4 =
  (if (n_4_9 < 0) then
    (failwith "error")
  else
    (match ls_9_4 with
      | `LH_C(h_1_9_5, t_1_9_7) -> 
        (if (n_4_9 = 0) then
          h_1_9_5
        else
          ((atIndex__d1_d5 (n_4_9 - 1)) t_1_9_7))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d6 n_3_3 ls_6_6 =
  (if (n_3_3 < 0) then
    (failwith "error")
  else
    (match ls_6_6 with
      | `LH_C(h_1_3_3, t_1_3_5) -> 
        (if (n_3_3 = 0) then
          h_1_3_3
        else
          ((atIndex__d1_d6 (n_3_3 - 1)) t_1_3_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d7 n_6_6 ls_1_2_1 =
  (if (n_6_6 < 0) then
    (failwith "error")
  else
    (match ls_1_2_1 with
      | `LH_C(h_2_7_5, t_2_7_7) -> 
        (if (n_6_6 = 0) then
          h_2_7_5
        else
          ((atIndex__d1_d7 (n_6_6 - 1)) t_2_7_7))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d8 n_4_5 ls_8_8 =
  (if (n_4_5 < 0) then
    (failwith "error")
  else
    (match ls_8_8 with
      | `LH_C(h_1_8_4, t_1_8_6) -> 
        (if (n_4_5 = 0) then
          h_1_8_4
        else
          ((atIndex__d1_d8 (n_4_5 - 1)) t_1_8_6))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1_d9 n_9 ls_2_7 =
  (if (n_9 < 0) then
    (failwith "error")
  else
    (match ls_2_7 with
      | `LH_C(h_3_4, t_3_6) -> 
        (if (n_9 = 0) then
          h_3_4
        else
          ((atIndex__d1_d9 (n_9 - 1)) t_3_6))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2 n_5_1 ls_9_8 =
  (if (n_5_1 < 0) then
    (failwith "error")
  else
    (match ls_9_8 with
      | `LH_C(h_2_0_1, t_2_0_3) -> 
        (if (n_5_1 = 0) then
          h_2_0_1
        else
          ((atIndex__d2 (n_5_1 - 1)) t_2_0_3))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d0 n_4_2 ls_8_2 =
  (if (n_4_2 < 0) then
    (failwith "error")
  else
    (match ls_8_2 with
      | `LH_C(h_1_6_7, t_1_6_9) -> 
        (if (n_4_2 = 0) then
          h_1_6_7
        else
          ((atIndex__d2_d0 (n_4_2 - 1)) t_1_6_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d1 n_5_9 ls_1_1_0 =
  (if (n_5_9 < 0) then
    (failwith "error")
  else
    (match ls_1_1_0 with
      | `LH_C(h_2_4_7, t_2_4_9) -> 
        (if (n_5_9 = 0) then
          h_2_4_7
        else
          ((atIndex__d2_d1 (n_5_9 - 1)) t_2_4_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d2 n_7 ls_2_4 =
  (if (n_7 < 0) then
    (failwith "error")
  else
    (match ls_2_4 with
      | `LH_C(h_2_7, t_2_9) -> 
        (if (n_7 = 0) then
          h_2_7
        else
          ((atIndex__d2_d2 (n_7 - 1)) t_2_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d3 n_5_5 ls_1_0_4 =
  (if (n_5_5 < 0) then
    (failwith "error")
  else
    (match ls_1_0_4 with
      | `LH_C(h_2_1_3, t_2_1_5) -> 
        (if (n_5_5 = 0) then
          h_2_1_3
        else
          ((atIndex__d2_d3 (n_5_5 - 1)) t_2_1_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d4 n_6_8 ls_1_2_3 =
  (if (n_6_8 < 0) then
    (failwith "error")
  else
    (match ls_1_2_3 with
      | `LH_C(h_2_7_7, t_2_7_9) -> 
        (if (n_6_8 = 0) then
          h_2_7_7
        else
          ((atIndex__d2_d4 (n_6_8 - 1)) t_2_7_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d5 n_3_1 ls_6_4 =
  (if (n_3_1 < 0) then
    (failwith "error")
  else
    (match ls_6_4 with
      | `LH_C(h_1_2_9, t_1_3_1) -> 
        (if (n_3_1 = 0) then
          h_1_2_9
        else
          ((atIndex__d2_d5 (n_3_1 - 1)) t_1_3_1))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d6 n_1_0 ls_2_8 =
  (if (n_1_0 < 0) then
    (failwith "error")
  else
    (match ls_2_8 with
      | `LH_C(h_3_6, t_3_8) -> 
        (if (n_1_0 = 0) then
          h_3_6
        else
          ((atIndex__d2_d6 (n_1_0 - 1)) t_3_8))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d7 n_2_6 ls_5_3 =
  (if (n_2_6 < 0) then
    (failwith "error")
  else
    (match ls_5_3 with
      | `LH_C(h_1_0_2, t_1_0_4) -> 
        (if (n_2_6 = 0) then
          h_1_0_2
        else
          ((atIndex__d2_d7 (n_2_6 - 1)) t_1_0_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d8 n_8_0 ls_1_3_9 =
  (if (n_8_0 < 0) then
    (failwith "error")
  else
    (match ls_1_3_9 with
      | `LH_C(h_3_0_4, t_3_0_6) -> 
        (if (n_8_0 = 0) then
          h_3_0_4
        else
          ((atIndex__d2_d8 (n_8_0 - 1)) t_3_0_6))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2_d9 n_2_1 ls_4_5 =
  (if (n_2_1 < 0) then
    (failwith "error")
  else
    (match ls_4_5 with
      | `LH_C(h_9_3, t_9_5) -> 
        (if (n_2_1 = 0) then
          h_9_3
        else
          ((atIndex__d2_d9 (n_2_1 - 1)) t_9_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d3 n_3_4 ls_6_7 =
  (if (n_3_4 < 0) then
    (failwith "error")
  else
    (match ls_6_7 with
      | `LH_C(h_1_3_4, t_1_3_6) -> 
        (if (n_3_4 = 0) then
          h_1_3_4
        else
          ((atIndex__d3 (n_3_4 - 1)) t_1_3_6))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d4 n_7_0 ls_1_2_6 =
  (if (n_7_0 < 0) then
    (failwith "error")
  else
    (match ls_1_2_6 with
      | `LH_C(h_2_8_3, t_2_8_5) -> 
        (if (n_7_0 = 0) then
          h_2_8_3
        else
          ((atIndex__d4 (n_7_0 - 1)) t_2_8_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d5 n_1_8 ls_4_2 =
  (if (n_1_8 < 0) then
    (failwith "error")
  else
    (match ls_4_2 with
      | `LH_C(h_8_8, t_9_0) -> 
        (if (n_1_8 = 0) then
          h_8_8
        else
          ((atIndex__d5 (n_1_8 - 1)) t_9_0))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d6 n_1_3 ls_3_7 =
  (if (n_1_3 < 0) then
    (failwith "error")
  else
    (match ls_3_7 with
      | `LH_C(h_7_7, t_7_9) -> 
        (if (n_1_3 = 0) then
          h_7_7
        else
          ((atIndex__d6 (n_1_3 - 1)) t_7_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d7 n_2_3 ls_4_7 =
  (if (n_2_3 < 0) then
    (failwith "error")
  else
    (match ls_4_7 with
      | `LH_C(h_9_5, t_9_7) -> 
        (if (n_2_3 = 0) then
          h_9_5
        else
          ((atIndex__d7 (n_2_3 - 1)) t_9_7))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d8 n_2_5 ls_5_2 =
  (if (n_2_5 < 0) then
    (failwith "error")
  else
    (match ls_5_2 with
      | `LH_C(h_9_9, t_1_0_1) -> 
        (if (n_2_5 = 0) then
          h_9_9
        else
          ((atIndex__d8 (n_2_5 - 1)) t_1_0_1))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d9 n_4_3 ls_8_4 =
  (if (n_4_3 < 0) then
    (failwith "error")
  else
    (match ls_8_4 with
      | `LH_C(h_1_7_2, t_1_7_4) -> 
        (if (n_4_3 = 0) then
          h_1_7_2
        else
          ((atIndex__d9 (n_4_3 - 1)) t_1_7_4))
      | `LH_N -> 
        (failwith "error")));;
let rec break__d0 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_2_0_5 = ((break__d0 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_2_0_5 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d1 _lh_break_arg1_2 _lh_break_arg2_2 =
  (match _lh_break_arg2_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_2, _lh_break_LH_C_1_2) -> 
      (if (_lh_break_arg1_2 _lh_break_LH_C_0_2) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_2, _lh_break_LH_C_1_2))))
      else
        (let rec _lh_matchIdent_2_7_0 = ((break__d1 _lh_break_arg1_2) _lh_break_LH_C_1_2) in
          (match _lh_matchIdent_2_7_0 with
            | `LH_P2(_lh_break_LH_P2_0_2, _lh_break_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_2, _lh_break_LH_P2_0_2)), _lh_break_LH_P2_1_2))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec colourOf__d0 _lh_colourOf_arg1_1_7 =
  (match _lh_colourOf_arg1_1_7 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_7, _lh_colourOf_LH_P2_1_1_7) -> 
      _lh_colourOf_LH_P2_0_1_7
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1 _lh_colourOf_arg1_2_0 =
  (match _lh_colourOf_arg1_2_0 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_0, _lh_colourOf_LH_P2_1_2_0) -> 
      _lh_colourOf_LH_P2_0_2_0
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d0 _lh_colourOf_arg1_1_1 =
  (match _lh_colourOf_arg1_1_1 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_1, _lh_colourOf_LH_P2_1_1_1) -> 
      _lh_colourOf_LH_P2_0_1_1
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d1 _lh_colourOf_arg1_1_2 =
  (match _lh_colourOf_arg1_1_2 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_2, _lh_colourOf_LH_P2_1_1_2) -> 
      _lh_colourOf_LH_P2_0_1_2
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d2 _lh_colourOf_arg1_9 =
  (match _lh_colourOf_arg1_9 with
    | `LH_P2(_lh_colourOf_LH_P2_0_9, _lh_colourOf_LH_P2_1_9) -> 
      _lh_colourOf_LH_P2_0_9
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d3 _lh_colourOf_arg1_1_6 =
  (match _lh_colourOf_arg1_1_6 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_6, _lh_colourOf_LH_P2_1_1_6) -> 
      _lh_colourOf_LH_P2_0_1_6
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d4 _lh_colourOf_arg1_5 =
  (match _lh_colourOf_arg1_5 with
    | `LH_P2(_lh_colourOf_LH_P2_0_5, _lh_colourOf_LH_P2_1_5) -> 
      _lh_colourOf_LH_P2_0_5
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d5 _lh_colourOf_arg1_3_0 =
  (match _lh_colourOf_arg1_3_0 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3_0, _lh_colourOf_LH_P2_1_3_0) -> 
      _lh_colourOf_LH_P2_0_3_0
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d6 _lh_colourOf_arg1_3_6 =
  (match _lh_colourOf_arg1_3_6 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3_6, _lh_colourOf_LH_P2_1_3_6) -> 
      _lh_colourOf_LH_P2_0_3_6
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d7 _lh_colourOf_arg1_1_9 =
  (match _lh_colourOf_arg1_1_9 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_9, _lh_colourOf_LH_P2_1_1_9) -> 
      _lh_colourOf_LH_P2_0_1_9
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d8 _lh_colourOf_arg1_4 =
  (match _lh_colourOf_arg1_4 with
    | `LH_P2(_lh_colourOf_LH_P2_0_4, _lh_colourOf_LH_P2_1_4) -> 
      _lh_colourOf_LH_P2_0_4
    | _ -> 
      (failwith "error"));;
let rec colourOf__d1_d9 _lh_colourOf_arg1_2_6 =
  (match _lh_colourOf_arg1_2_6 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_6, _lh_colourOf_LH_P2_1_2_6) -> 
      _lh_colourOf_LH_P2_0_2_6
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2 _lh_colourOf_arg1_2_8 =
  (match _lh_colourOf_arg1_2_8 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_8, _lh_colourOf_LH_P2_1_2_8) -> 
      _lh_colourOf_LH_P2_0_2_8
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d0 _lh_colourOf_arg1_6 =
  (match _lh_colourOf_arg1_6 with
    | `LH_P2(_lh_colourOf_LH_P2_0_6, _lh_colourOf_LH_P2_1_6) -> 
      _lh_colourOf_LH_P2_0_6
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d1 _lh_colourOf_arg1_2_5 =
  (match _lh_colourOf_arg1_2_5 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_5, _lh_colourOf_LH_P2_1_2_5) -> 
      _lh_colourOf_LH_P2_0_2_5
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d2 _lh_colourOf_arg1_7 =
  (match _lh_colourOf_arg1_7 with
    | `LH_P2(_lh_colourOf_LH_P2_0_7, _lh_colourOf_LH_P2_1_7) -> 
      _lh_colourOf_LH_P2_0_7
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d3 _lh_colourOf_arg1_3_4 =
  (match _lh_colourOf_arg1_3_4 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3_4, _lh_colourOf_LH_P2_1_3_4) -> 
      _lh_colourOf_LH_P2_0_3_4
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d4 _lh_colourOf_arg1_3_5 =
  (match _lh_colourOf_arg1_3_5 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3_5, _lh_colourOf_LH_P2_1_3_5) -> 
      _lh_colourOf_LH_P2_0_3_5
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d5 _lh_colourOf_arg1_2_1 =
  (match _lh_colourOf_arg1_2_1 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_1, _lh_colourOf_LH_P2_1_2_1) -> 
      _lh_colourOf_LH_P2_0_2_1
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d6 _lh_colourOf_arg1_1_3 =
  (match _lh_colourOf_arg1_1_3 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_3, _lh_colourOf_LH_P2_1_1_3) -> 
      _lh_colourOf_LH_P2_0_1_3
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d7 _lh_colourOf_arg1_1_8 =
  (match _lh_colourOf_arg1_1_8 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_8, _lh_colourOf_LH_P2_1_1_8) -> 
      _lh_colourOf_LH_P2_0_1_8
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d8 _lh_colourOf_arg1_2_4 =
  (match _lh_colourOf_arg1_2_4 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_4, _lh_colourOf_LH_P2_1_2_4) -> 
      _lh_colourOf_LH_P2_0_2_4
    | _ -> 
      (failwith "error"));;
let rec colourOf__d2_d9 _lh_colourOf_arg1_2_3 =
  (match _lh_colourOf_arg1_2_3 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_3, _lh_colourOf_LH_P2_1_2_3) -> 
      _lh_colourOf_LH_P2_0_2_3
    | _ -> 
      (failwith "error"));;
let rec colourOf__d3 _lh_colourOf_arg1_1 =
  (match _lh_colourOf_arg1_1 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1, _lh_colourOf_LH_P2_1_1) -> 
      _lh_colourOf_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec colourOf__d3_d0 _lh_colourOf_arg1_2_7 =
  (match _lh_colourOf_arg1_2_7 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_7, _lh_colourOf_LH_P2_1_2_7) -> 
      _lh_colourOf_LH_P2_0_2_7
    | _ -> 
      (failwith "error"));;
let rec colourOf__d3_d1 _lh_colourOf_arg1_2_2 =
  (match _lh_colourOf_arg1_2_2 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_2, _lh_colourOf_LH_P2_1_2_2) -> 
      _lh_colourOf_LH_P2_0_2_2
    | _ -> 
      (failwith "error"));;
let rec colourOf__d3_d2 _lh_colourOf_arg1_1_5 =
  (match _lh_colourOf_arg1_1_5 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_5, _lh_colourOf_LH_P2_1_1_5) -> 
      _lh_colourOf_LH_P2_0_1_5
    | _ -> 
      (failwith "error"));;
let rec colourOf__d3_d3 _lh_colourOf_arg1_3_8 =
  (match _lh_colourOf_arg1_3_8 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3_8, _lh_colourOf_LH_P2_1_3_8) -> 
      _lh_colourOf_LH_P2_0_3_8
    | _ -> 
      (failwith "error"));;
let rec colourOf__d3_d4 _lh_colourOf_arg1_1_0 =
  (match _lh_colourOf_arg1_1_0 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_0, _lh_colourOf_LH_P2_1_1_0) -> 
      _lh_colourOf_LH_P2_0_1_0
    | _ -> 
      (failwith "error"));;
let rec colourOf__d3_d5 _lh_colourOf_arg1_1_4 =
  (match _lh_colourOf_arg1_1_4 with
    | `LH_P2(_lh_colourOf_LH_P2_0_1_4, _lh_colourOf_LH_P2_1_1_4) -> 
      _lh_colourOf_LH_P2_0_1_4
    | _ -> 
      (failwith "error"));;
let rec colourOf__d3_d6 _lh_colourOf_arg1_2_9 =
  (match _lh_colourOf_arg1_2_9 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2_9, _lh_colourOf_LH_P2_1_2_9) -> 
      _lh_colourOf_LH_P2_0_2_9
    | _ -> 
      (failwith "error"));;
let rec colourOf__d3_d7 _lh_colourOf_arg1_8 =
  (match _lh_colourOf_arg1_8 with
    | `LH_P2(_lh_colourOf_LH_P2_0_8, _lh_colourOf_LH_P2_1_8) -> 
      _lh_colourOf_LH_P2_0_8
    | _ -> 
      (failwith "error"));;
let rec colourOf__d4 _lh_colourOf_arg1_3_2 =
  (match _lh_colourOf_arg1_3_2 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3_2, _lh_colourOf_LH_P2_1_3_2) -> 
      _lh_colourOf_LH_P2_0_3_2
    | _ -> 
      (failwith "error"));;
let rec colourOf__d5 _lh_colourOf_arg1_3_7 =
  (match _lh_colourOf_arg1_3_7 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3_7, _lh_colourOf_LH_P2_1_3_7) -> 
      _lh_colourOf_LH_P2_0_3_7
    | _ -> 
      (failwith "error"));;
let rec colourOf__d6 _lh_colourOf_arg1_2 =
  (match _lh_colourOf_arg1_2 with
    | `LH_P2(_lh_colourOf_LH_P2_0_2, _lh_colourOf_LH_P2_1_2) -> 
      _lh_colourOf_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec colourOf__d7 _lh_colourOf_arg1_3_1 =
  (match _lh_colourOf_arg1_3_1 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3_1, _lh_colourOf_LH_P2_1_3_1) -> 
      _lh_colourOf_LH_P2_0_3_1
    | _ -> 
      (failwith "error"));;
let rec colourOf__d8 _lh_colourOf_arg1_3 =
  (match _lh_colourOf_arg1_3 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3, _lh_colourOf_LH_P2_1_3) -> 
      _lh_colourOf_LH_P2_0_3
    | _ -> 
      (failwith "error"));;
let rec colourOf__d9 _lh_colourOf_arg1_3_3 =
  (match _lh_colourOf_arg1_3_3 with
    | `LH_P2(_lh_colourOf_LH_P2_0_3_3, _lh_colourOf_LH_P2_1_3_3) -> 
      _lh_colourOf_LH_P2_0_3_3
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d0 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile__d0 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec drop__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1))
      else
        ((drop__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d0 _lh_emptyAtAll_arg1_1 _lh_emptyAtAll_arg2_1 =
  (match _lh_emptyAtAll_arg1_1 with
    | `Board(_lh_emptyAtAll_Board_0_1, _lh_emptyAtAll_Board_1_1) -> 
      (let rec emptyAtAllAnd_1 = (fun b_6 ls_2_6 -> 
        (let rec _lh_matchIdent_5_5 = ls_2_6 in
          (match _lh_matchIdent_5_5 with
            | `LH_N -> 
              b_6
            | `LH_C(_lh_emptyAtAll_LH_C_0_1, _lh_emptyAtAll_LH_C_1_1) -> 
              (match _lh_emptyAtAll_LH_C_0_1 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_1, _lh_emptyAtAll_LH_P2_1_1) -> 
                  ((not (_lh_emptyAtAll_arg2_1 _lh_emptyAtAll_LH_P2_1_1)) && ((emptyAtAllAnd_1 b_6) _lh_emptyAtAll_LH_C_1_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_1 ((emptyAtAllAnd_1 true) _lh_emptyAtAll_Board_1_1)) _lh_emptyAtAll_Board_0_1))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d1 _lh_emptyAtAll_arg1_1_1 _lh_emptyAtAll_arg2_1_1 =
  (match _lh_emptyAtAll_arg1_1_1 with
    | `Board(_lh_emptyAtAll_Board_0_1_1, _lh_emptyAtAll_Board_1_1_1) -> 
      (let rec emptyAtAllAnd_1_1 = (fun b_2_3 ls_1_3_0 -> 
        (let rec _lh_matchIdent_2_6_9 = ls_1_3_0 in
          (match _lh_matchIdent_2_6_9 with
            | `LH_N -> 
              b_2_3
            | `LH_C(_lh_emptyAtAll_LH_C_0_1_1, _lh_emptyAtAll_LH_C_1_1_1) -> 
              (match _lh_emptyAtAll_LH_C_0_1_1 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_1_1, _lh_emptyAtAll_LH_P2_1_1_1) -> 
                  ((not (_lh_emptyAtAll_arg2_1_1 _lh_emptyAtAll_LH_P2_1_1_1)) && ((emptyAtAllAnd_1_1 b_2_3) _lh_emptyAtAll_LH_C_1_1_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_1_1 ((emptyAtAllAnd_1_1 true) _lh_emptyAtAll_Board_1_1_1)) _lh_emptyAtAll_Board_0_1_1))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d1_d0 _lh_emptyAtAll_arg1_1_2 _lh_emptyAtAll_arg2_1_2 =
  (match _lh_emptyAtAll_arg1_1_2 with
    | `Board(_lh_emptyAtAll_Board_0_1_2, _lh_emptyAtAll_Board_1_1_2) -> 
      (let rec emptyAtAllAnd_1_2 = (fun b_2_4 ls_1_4_0 -> 
        (let rec _lh_matchIdent_2_9_4 = ls_1_4_0 in
          (match _lh_matchIdent_2_9_4 with
            | `LH_N -> 
              b_2_4
            | `LH_C(_lh_emptyAtAll_LH_C_0_1_2, _lh_emptyAtAll_LH_C_1_1_2) -> 
              (match _lh_emptyAtAll_LH_C_0_1_2 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_1_2, _lh_emptyAtAll_LH_P2_1_1_2) -> 
                  ((not (_lh_emptyAtAll_arg2_1_2 _lh_emptyAtAll_LH_P2_1_1_2)) && ((emptyAtAllAnd_1_2 b_2_4) _lh_emptyAtAll_LH_C_1_1_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_1_2 ((emptyAtAllAnd_1_2 true) _lh_emptyAtAll_Board_1_1_2)) _lh_emptyAtAll_Board_0_1_2))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d1_d1 _lh_emptyAtAll_arg1_4 _lh_emptyAtAll_arg2_4 =
  (match _lh_emptyAtAll_arg1_4 with
    | `Board(_lh_emptyAtAll_Board_0_4, _lh_emptyAtAll_Board_1_4) -> 
      (let rec emptyAtAllAnd_4 = (fun b_1_1 ls_5_7 -> 
        (let rec _lh_matchIdent_1_2_6 = ls_5_7 in
          (match _lh_matchIdent_1_2_6 with
            | `LH_N -> 
              b_1_1
            | `LH_C(_lh_emptyAtAll_LH_C_0_4, _lh_emptyAtAll_LH_C_1_4) -> 
              (match _lh_emptyAtAll_LH_C_0_4 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_4, _lh_emptyAtAll_LH_P2_1_4) -> 
                  ((not (_lh_emptyAtAll_arg2_4 _lh_emptyAtAll_LH_P2_1_4)) && ((emptyAtAllAnd_4 b_1_1) _lh_emptyAtAll_LH_C_1_4))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_4 ((emptyAtAllAnd_4 true) _lh_emptyAtAll_Board_1_4)) _lh_emptyAtAll_Board_0_4))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d2 _lh_emptyAtAll_arg1_5 _lh_emptyAtAll_arg2_5 =
  (match _lh_emptyAtAll_arg1_5 with
    | `Board(_lh_emptyAtAll_Board_0_5, _lh_emptyAtAll_Board_1_5) -> 
      (let rec emptyAtAllAnd_5 = (fun b_1_4 ls_7_6 -> 
        (let rec _lh_matchIdent_1_6_4 = ls_7_6 in
          (match _lh_matchIdent_1_6_4 with
            | `LH_N -> 
              b_1_4
            | `LH_C(_lh_emptyAtAll_LH_C_0_5, _lh_emptyAtAll_LH_C_1_5) -> 
              (match _lh_emptyAtAll_LH_C_0_5 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_5, _lh_emptyAtAll_LH_P2_1_5) -> 
                  ((not (_lh_emptyAtAll_arg2_5 _lh_emptyAtAll_LH_P2_1_5)) && ((emptyAtAllAnd_5 b_1_4) _lh_emptyAtAll_LH_C_1_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_5 ((emptyAtAllAnd_5 true) _lh_emptyAtAll_Board_1_5)) _lh_emptyAtAll_Board_0_5))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d3 _lh_emptyAtAll_arg1_6 _lh_emptyAtAll_arg2_6 =
  (match _lh_emptyAtAll_arg1_6 with
    | `Board(_lh_emptyAtAll_Board_0_6, _lh_emptyAtAll_Board_1_6) -> 
      (let rec emptyAtAllAnd_6 = (fun b_1_5 ls_8_1 -> 
        (let rec _lh_matchIdent_1_6_7 = ls_8_1 in
          (match _lh_matchIdent_1_6_7 with
            | `LH_N -> 
              b_1_5
            | `LH_C(_lh_emptyAtAll_LH_C_0_6, _lh_emptyAtAll_LH_C_1_6) -> 
              (match _lh_emptyAtAll_LH_C_0_6 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_6, _lh_emptyAtAll_LH_P2_1_6) -> 
                  ((not (_lh_emptyAtAll_arg2_6 _lh_emptyAtAll_LH_P2_1_6)) && ((emptyAtAllAnd_6 b_1_5) _lh_emptyAtAll_LH_C_1_6))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_6 ((emptyAtAllAnd_6 true) _lh_emptyAtAll_Board_1_6)) _lh_emptyAtAll_Board_0_6))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d4 _lh_emptyAtAll_arg1_7 _lh_emptyAtAll_arg2_7 =
  (match _lh_emptyAtAll_arg1_7 with
    | `Board(_lh_emptyAtAll_Board_0_7, _lh_emptyAtAll_Board_1_7) -> 
      (let rec emptyAtAllAnd_7 = (fun b_1_6 ls_9_3 -> 
        (let rec _lh_matchIdent_1_9_4 = ls_9_3 in
          (match _lh_matchIdent_1_9_4 with
            | `LH_N -> 
              b_1_6
            | `LH_C(_lh_emptyAtAll_LH_C_0_7, _lh_emptyAtAll_LH_C_1_7) -> 
              (match _lh_emptyAtAll_LH_C_0_7 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_7, _lh_emptyAtAll_LH_P2_1_7) -> 
                  ((not (_lh_emptyAtAll_arg2_7 _lh_emptyAtAll_LH_P2_1_7)) && ((emptyAtAllAnd_7 b_1_6) _lh_emptyAtAll_LH_C_1_7))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_7 ((emptyAtAllAnd_7 true) _lh_emptyAtAll_Board_1_7)) _lh_emptyAtAll_Board_0_7))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d5 _lh_emptyAtAll_arg1_3 _lh_emptyAtAll_arg2_3 =
  (match _lh_emptyAtAll_arg1_3 with
    | `Board(_lh_emptyAtAll_Board_0_3, _lh_emptyAtAll_Board_1_3) -> 
      (let rec emptyAtAllAnd_3 = (fun b_1_0 ls_5_6 -> 
        (let rec _lh_matchIdent_1_2_5 = ls_5_6 in
          (match _lh_matchIdent_1_2_5 with
            | `LH_N -> 
              b_1_0
            | `LH_C(_lh_emptyAtAll_LH_C_0_3, _lh_emptyAtAll_LH_C_1_3) -> 
              (match _lh_emptyAtAll_LH_C_0_3 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_3, _lh_emptyAtAll_LH_P2_1_3) -> 
                  ((not (_lh_emptyAtAll_arg2_3 _lh_emptyAtAll_LH_P2_1_3)) && ((emptyAtAllAnd_3 b_1_0) _lh_emptyAtAll_LH_C_1_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_3 ((emptyAtAllAnd_3 true) _lh_emptyAtAll_Board_1_3)) _lh_emptyAtAll_Board_0_3))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d6 _lh_emptyAtAll_arg1_1_0 _lh_emptyAtAll_arg2_1_0 =
  (match _lh_emptyAtAll_arg1_1_0 with
    | `Board(_lh_emptyAtAll_Board_0_1_0, _lh_emptyAtAll_Board_1_1_0) -> 
      (let rec emptyAtAllAnd_1_0 = (fun b_2_1 ls_1_1_3 -> 
        (let rec _lh_matchIdent_2_4_4 = ls_1_1_3 in
          (match _lh_matchIdent_2_4_4 with
            | `LH_N -> 
              b_2_1
            | `LH_C(_lh_emptyAtAll_LH_C_0_1_0, _lh_emptyAtAll_LH_C_1_1_0) -> 
              (match _lh_emptyAtAll_LH_C_0_1_0 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_1_0, _lh_emptyAtAll_LH_P2_1_1_0) -> 
                  ((not (_lh_emptyAtAll_arg2_1_0 _lh_emptyAtAll_LH_P2_1_1_0)) && ((emptyAtAllAnd_1_0 b_2_1) _lh_emptyAtAll_LH_C_1_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_1_0 ((emptyAtAllAnd_1_0 true) _lh_emptyAtAll_Board_1_1_0)) _lh_emptyAtAll_Board_0_1_0))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d7 _lh_emptyAtAll_arg1_2 _lh_emptyAtAll_arg2_2 =
  (match _lh_emptyAtAll_arg1_2 with
    | `Board(_lh_emptyAtAll_Board_0_2, _lh_emptyAtAll_Board_1_2) -> 
      (let rec emptyAtAllAnd_2 = (fun b_9 ls_5_0 -> 
        (let rec _lh_matchIdent_1_1_8 = ls_5_0 in
          (match _lh_matchIdent_1_1_8 with
            | `LH_N -> 
              b_9
            | `LH_C(_lh_emptyAtAll_LH_C_0_2, _lh_emptyAtAll_LH_C_1_2) -> 
              (match _lh_emptyAtAll_LH_C_0_2 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_2, _lh_emptyAtAll_LH_P2_1_2) -> 
                  ((not (_lh_emptyAtAll_arg2_2 _lh_emptyAtAll_LH_P2_1_2)) && ((emptyAtAllAnd_2 b_9) _lh_emptyAtAll_LH_C_1_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_2 ((emptyAtAllAnd_2 true) _lh_emptyAtAll_Board_1_2)) _lh_emptyAtAll_Board_0_2))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d8 _lh_emptyAtAll_arg1_9 _lh_emptyAtAll_arg2_9 =
  (match _lh_emptyAtAll_arg1_9 with
    | `Board(_lh_emptyAtAll_Board_0_9, _lh_emptyAtAll_Board_1_9) -> 
      (let rec emptyAtAllAnd_9 = (fun b_1_8 ls_1_0_3 -> 
        (let rec _lh_matchIdent_2_2_5 = ls_1_0_3 in
          (match _lh_matchIdent_2_2_5 with
            | `LH_N -> 
              b_1_8
            | `LH_C(_lh_emptyAtAll_LH_C_0_9, _lh_emptyAtAll_LH_C_1_9) -> 
              (match _lh_emptyAtAll_LH_C_0_9 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_9, _lh_emptyAtAll_LH_P2_1_9) -> 
                  ((not (_lh_emptyAtAll_arg2_9 _lh_emptyAtAll_LH_P2_1_9)) && ((emptyAtAllAnd_9 b_1_8) _lh_emptyAtAll_LH_C_1_9))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_9 ((emptyAtAllAnd_9 true) _lh_emptyAtAll_Board_1_9)) _lh_emptyAtAll_Board_0_9))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll__d9 _lh_emptyAtAll_arg1_8 _lh_emptyAtAll_arg2_8 =
  (match _lh_emptyAtAll_arg1_8 with
    | `Board(_lh_emptyAtAll_Board_0_8, _lh_emptyAtAll_Board_1_8) -> 
      (let rec emptyAtAllAnd_8 = (fun b_1_7 ls_9_7 -> 
        (let rec _lh_matchIdent_2_0_2 = ls_9_7 in
          (match _lh_matchIdent_2_0_2 with
            | `LH_N -> 
              b_1_7
            | `LH_C(_lh_emptyAtAll_LH_C_0_8, _lh_emptyAtAll_LH_C_1_8) -> 
              (match _lh_emptyAtAll_LH_C_0_8 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_8, _lh_emptyAtAll_LH_P2_1_8) -> 
                  ((not (_lh_emptyAtAll_arg2_8 _lh_emptyAtAll_LH_P2_1_8)) && ((emptyAtAllAnd_8 b_1_7) _lh_emptyAtAll_LH_C_1_8))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_8 ((emptyAtAllAnd_8 true) _lh_emptyAtAll_Board_1_8)) _lh_emptyAtAll_Board_0_8))
    | _ -> 
      (failwith "error"));;
let rec emptyBoard__d0 =
  (`Board((`LH_N), (`LH_N)));;
let rec enumFromTo__d0 a_1_5 b_2_0 =
  (if (a_1_5 <= b_2_0) then
    (`LH_C(a_1_5, ((enumFromTo__d0 (a_1_5 + 1)) b_2_0)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_1_0 b_1_2 =
  (if (a_1_0 <= b_1_2) then
    (`LH_C(a_1_0, ((enumFromTo__d1 (a_1_0 + 1)) b_1_2)))
  else
    (`LH_N));;
let rec enumFromTo__d2 a_8 b_7 =
  (if (a_8 <= b_7) then
    (`LH_C(a_8, ((enumFromTo__d2 (a_8 + 1)) b_7)))
  else
    (`LH_N));;
let rec enumFromTo__d3 a_1_4 b_1_9 =
  (if (a_1_4 <= b_1_9) then
    (`LH_C(a_1_4, ((enumFromTo__d3 (a_1_4 + 1)) b_1_9)))
  else
    (`LH_N));;
let rec filter__d0 f_2_7 ls_1_1_2 =
  (match ls_1_1_2 with
    | `LH_C(h_2_6_4, t_2_6_6) -> 
      (if (f_2_7 h_2_6_4) then
        (`LH_C(h_2_6_4, ((filter__d0 f_2_7) t_2_6_6)))
      else
        ((filter__d0 f_2_7) t_2_6_6))
    | `LH_N -> 
      (`LH_N));;
let rec filter__d1 f_2_5 ls_1_0_6 =
  (match ls_1_0_6 with
    | `LH_C(h_2_2_0, t_2_2_2) -> 
      (if (f_2_5 h_2_2_0) then
        (`LH_C(h_2_2_0, ((filter__d1 f_2_5) t_2_2_2)))
      else
        ((filter__d1 f_2_5) t_2_2_2))
    | `LH_N -> 
      (`LH_N));;
let rec foldr__d0 f_1_6 i_4 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_9_6, t_9_8) -> 
      ((f_1_6 h_9_6) (((foldr__d0 f_1_6) i_4) t_9_8))
    | `LH_N -> 
      i_4);;
let rec foldr__d1 f_2_3 i_9 ls_9_5 =
  (match ls_9_5 with
    | `LH_C(h_1_9_8, t_2_0_0) -> 
      ((f_2_3 h_1_9_8) (((foldr__d1 f_2_3) i_9) t_2_0_0))
    | `LH_N -> 
      i_9);;
let rec foldr__d2 f_2_1 i_8 ls_9_1 =
  (match ls_9_1 with
    | `LH_C(h_1_8_7, t_1_8_9) -> 
      ((f_2_1 h_1_8_7) (((foldr__d2 f_2_1) i_8) t_1_8_9))
    | `LH_N -> 
      i_8);;
let rec foldr__d3 f_1_9 i_7 ls_6_9 =
  (match ls_6_9 with
    | `LH_C(h_1_3_5, t_1_3_7) -> 
      ((f_1_9 h_1_3_5) (((foldr__d3 f_1_9) i_7) t_1_3_7))
    | `LH_N -> 
      i_7);;
let rec foldr__d4 f_2_4 i_1_0 ls_1_0_2 =
  (match ls_1_0_2 with
    | `LH_C(h_2_0_8, t_2_1_0) -> 
      ((f_2_4 h_2_0_8) (((foldr__d4 f_2_4) i_1_0) t_2_1_0))
    | `LH_N -> 
      i_1_0);;
let rec foldr__d5 f_2_9 i_1_1 ls_1_3_8 =
  (match ls_1_3_8 with
    | `LH_C(h_3_0_3, t_3_0_5) -> 
      ((f_2_9 h_3_0_3) (((foldr__d5 f_2_9) i_1_1) t_3_0_5))
    | `LH_N -> 
      i_1_1);;
let rec foldr__d6 f_1_4 i_3 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_5_4, t_5_6) -> 
      ((f_1_4 h_5_4) (((foldr__d6 f_1_4) i_3) t_5_6))
    | `LH_N -> 
      i_3);;
let rec foldr__d7 f_1_8 i_6 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_1_1_9, t_1_2_1) -> 
      ((f_1_8 h_1_1_9) (((foldr__d7 f_1_8) i_6) t_1_2_1))
    | `LH_N -> 
      i_6);;
let rec foldr__d8 f_1_7 i_5 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_9_8, t_1_0_0) -> 
      ((f_1_7 h_9_8) (((foldr__d8 f_1_7) i_5) t_1_0_0))
    | `LH_N -> 
      i_5);;
let rec forcesColoured__d0 _lh_forcesColoured_arg1_3 _lh_forcesColoured_arg2_3 =
  (match _lh_forcesColoured_arg1_3 with
    | `White -> 
      (match _lh_forcesColoured_arg2_3 with
        | `Board(_lh_forcesColoured_Board_0_6, _lh_forcesColoured_Board_1_6) -> 
          _lh_forcesColoured_Board_0_6
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_forcesColoured_arg2_3 with
        | `Board(_lh_forcesColoured_Board_0_7, _lh_forcesColoured_Board_1_7) -> 
          _lh_forcesColoured_Board_1_7
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec forcesColoured__d1 _lh_forcesColoured_arg1_1 _lh_forcesColoured_arg2_1 =
  (match _lh_forcesColoured_arg1_1 with
    | `White -> 
      (match _lh_forcesColoured_arg2_1 with
        | `Board(_lh_forcesColoured_Board_0_2, _lh_forcesColoured_Board_1_2) -> 
          _lh_forcesColoured_Board_0_2
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_forcesColoured_arg2_1 with
        | `Board(_lh_forcesColoured_Board_0_3, _lh_forcesColoured_Board_1_3) -> 
          _lh_forcesColoured_Board_1_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec forcesColoured__d2 _lh_forcesColoured_arg1_4 _lh_forcesColoured_arg2_4 =
  (match _lh_forcesColoured_arg1_4 with
    | `White -> 
      (match _lh_forcesColoured_arg2_4 with
        | `Board(_lh_forcesColoured_Board_0_8, _lh_forcesColoured_Board_1_8) -> 
          _lh_forcesColoured_Board_0_8
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_forcesColoured_arg2_4 with
        | `Board(_lh_forcesColoured_Board_0_9, _lh_forcesColoured_Board_1_9) -> 
          _lh_forcesColoured_Board_1_9
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec forcesColoured__d3 _lh_forcesColoured_arg1_5 _lh_forcesColoured_arg2_5 =
  (match _lh_forcesColoured_arg1_5 with
    | `White -> 
      (match _lh_forcesColoured_arg2_5 with
        | `Board(_lh_forcesColoured_Board_0_1_0, _lh_forcesColoured_Board_1_1_0) -> 
          _lh_forcesColoured_Board_0_1_0
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_forcesColoured_arg2_5 with
        | `Board(_lh_forcesColoured_Board_0_1_1, _lh_forcesColoured_Board_1_1_1) -> 
          _lh_forcesColoured_Board_1_1_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec forcesColoured__d4 _lh_forcesColoured_arg1_2 _lh_forcesColoured_arg2_2 =
  (match _lh_forcesColoured_arg1_2 with
    | `White -> 
      (match _lh_forcesColoured_arg2_2 with
        | `Board(_lh_forcesColoured_Board_0_4, _lh_forcesColoured_Board_1_4) -> 
          _lh_forcesColoured_Board_0_4
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_forcesColoured_arg2_2 with
        | `Board(_lh_forcesColoured_Board_0_5, _lh_forcesColoured_Board_1_5) -> 
          _lh_forcesColoured_Board_1_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec head__d0 ls_1_2_4 =
  (match ls_1_2_4 with
    | `LH_C(h_2_8_0, t_2_8_2) -> 
      h_2_8_0
    | `LH_N -> 
      (failwith "error"));;
let rec isUpper__d0 _lh_isUpper_arg1_1 =
  (let rec _lh_matchIdent_8_5 = _lh_isUpper_arg1_1 in
    (match _lh_matchIdent_8_5 with
      | 'A' -> 
        true
      | 'B' -> 
        true
      | 'C' -> 
        true
      | 'D' -> 
        true
      | 'E' -> 
        true
      | 'F' -> 
        true
      | 'G' -> 
        true
      | 'H' -> 
        true
      | 'I' -> 
        true
      | 'J' -> 
        true
      | 'K' -> 
        true
      | 'L' -> 
        true
      | 'M' -> 
        true
      | 'N' -> 
        true
      | 'O' -> 
        true
      | 'P' -> 
        true
      | 'Q' -> 
        true
      | 'R' -> 
        true
      | 'S' -> 
        true
      | 'T' -> 
        true
      | 'U' -> 
        true
      | 'V' -> 
        true
      | 'W' -> 
        true
      | 'X' -> 
        true
      | 'Y' -> 
        true
      | 'Z' -> 
        true
      | _ -> 
        false));;
let rec kSq__d0 _lh_kSq_arg1_4 =
  (match _lh_kSq_arg1_4 with
    | `LH_C(_lh_kSq_LH_C_0_4, _lh_kSq_LH_C_1_4) -> 
      (match _lh_kSq_LH_C_0_4 with
        | `LH_P2(_lh_kSq_LH_P2_0_4, _lh_kSq_LH_P2_1_4) -> 
          (match _lh_kSq_LH_P2_0_4 with
            | `King -> 
              _lh_kSq_LH_P2_1_4
            | _ -> 
              (kSq__d0 _lh_kSq_LH_C_1_4))
        | _ -> 
          (kSq__d0 _lh_kSq_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec kSq__d1 _lh_kSq_arg1_3 =
  (match _lh_kSq_arg1_3 with
    | `LH_C(_lh_kSq_LH_C_0_3, _lh_kSq_LH_C_1_3) -> 
      (match _lh_kSq_LH_C_0_3 with
        | `LH_P2(_lh_kSq_LH_P2_0_3, _lh_kSq_LH_P2_1_3) -> 
          (match _lh_kSq_LH_P2_0_3 with
            | `King -> 
              _lh_kSq_LH_P2_1_3
            | _ -> 
              (kSq__d1 _lh_kSq_LH_C_1_3))
        | _ -> 
          (kSq__d1 _lh_kSq_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec kSq__d2 _lh_kSq_arg1_6 =
  (match _lh_kSq_arg1_6 with
    | `LH_C(_lh_kSq_LH_C_0_6, _lh_kSq_LH_C_1_6) -> 
      (match _lh_kSq_LH_C_0_6 with
        | `LH_P2(_lh_kSq_LH_P2_0_6, _lh_kSq_LH_P2_1_6) -> 
          (match _lh_kSq_LH_P2_0_6 with
            | `King -> 
              _lh_kSq_LH_P2_1_6
            | _ -> 
              (kSq__d2 _lh_kSq_LH_C_1_6))
        | _ -> 
          (kSq__d2 _lh_kSq_LH_C_1_6))
    | _ -> 
      (failwith "error"));;
let rec kSq__d3 _lh_kSq_arg1_5 =
  (match _lh_kSq_arg1_5 with
    | `LH_C(_lh_kSq_LH_C_0_5, _lh_kSq_LH_C_1_5) -> 
      (match _lh_kSq_LH_C_0_5 with
        | `LH_P2(_lh_kSq_LH_P2_0_5, _lh_kSq_LH_P2_1_5) -> 
          (match _lh_kSq_LH_P2_0_5 with
            | `King -> 
              _lh_kSq_LH_P2_1_5
            | _ -> 
              (kSq__d3 _lh_kSq_LH_C_1_5))
        | _ -> 
          (kSq__d3 _lh_kSq_LH_C_1_5))
    | _ -> 
      (failwith "error"));;
let rec kSq__d4 _lh_kSq_arg1_1 =
  (match _lh_kSq_arg1_1 with
    | `LH_C(_lh_kSq_LH_C_0_1, _lh_kSq_LH_C_1_1) -> 
      (match _lh_kSq_LH_C_0_1 with
        | `LH_P2(_lh_kSq_LH_P2_0_1, _lh_kSq_LH_P2_1_1) -> 
          (match _lh_kSq_LH_P2_0_1 with
            | `King -> 
              _lh_kSq_LH_P2_1_1
            | _ -> 
              (kSq__d4 _lh_kSq_LH_C_1_1))
        | _ -> 
          (kSq__d4 _lh_kSq_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec kSq__d5 _lh_kSq_arg1_2 =
  (match _lh_kSq_arg1_2 with
    | `LH_C(_lh_kSq_LH_C_0_2, _lh_kSq_LH_C_1_2) -> 
      (match _lh_kSq_LH_C_0_2 with
        | `LH_P2(_lh_kSq_LH_P2_0_2, _lh_kSq_LH_P2_1_2) -> 
          (match _lh_kSq_LH_P2_0_2 with
            | `King -> 
              _lh_kSq_LH_P2_1_2
            | _ -> 
              (kSq__d5 _lh_kSq_LH_C_1_2))
        | _ -> 
          (kSq__d5 _lh_kSq_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec kindToChar__d0 _lh_kindToChar_arg1_2_2 =
  (let rec _lh_matchIdent_1_4_9 = _lh_kindToChar_arg1_2_2 in
    (match _lh_matchIdent_1_4_9 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1 _lh_kindToChar_arg1_1_5 =
  (let rec _lh_matchIdent_9_7 = _lh_kindToChar_arg1_1_5 in
    (match _lh_matchIdent_9_7 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d0 _lh_kindToChar_arg1_2_7 =
  (let rec _lh_matchIdent_1_8_6 = _lh_kindToChar_arg1_2_7 in
    (match _lh_matchIdent_1_8_6 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d1 _lh_kindToChar_arg1_4 =
  (let rec _lh_matchIdent_6_2 = _lh_kindToChar_arg1_4 in
    (match _lh_matchIdent_6_2 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d2 _lh_kindToChar_arg1_3_0 =
  (let rec _lh_matchIdent_1_9_9 = _lh_kindToChar_arg1_3_0 in
    (match _lh_matchIdent_1_9_9 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d3 _lh_kindToChar_arg1_3_6 =
  (let rec _lh_matchIdent_2_3_9 = _lh_kindToChar_arg1_3_6 in
    (match _lh_matchIdent_2_3_9 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d4 _lh_kindToChar_arg1_3_8 =
  (let rec _lh_matchIdent_2_7_2 = _lh_kindToChar_arg1_3_8 in
    (match _lh_matchIdent_2_7_2 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d5 _lh_kindToChar_arg1_2_6 =
  (let rec _lh_matchIdent_1_8_1 = _lh_kindToChar_arg1_2_6 in
    (match _lh_matchIdent_1_8_1 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d6 _lh_kindToChar_arg1_2_0 =
  (let rec _lh_matchIdent_1_2_8 = _lh_kindToChar_arg1_2_0 in
    (match _lh_matchIdent_1_2_8 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d7 _lh_kindToChar_arg1_3_2 =
  (let rec _lh_matchIdent_2_2_3 = _lh_kindToChar_arg1_3_2 in
    (match _lh_matchIdent_2_2_3 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d8 _lh_kindToChar_arg1_1_1 =
  (let rec _lh_matchIdent_8_7 = _lh_kindToChar_arg1_1_1 in
    (match _lh_matchIdent_8_7 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d1_d9 _lh_kindToChar_arg1_3_3 =
  (let rec _lh_matchIdent_2_3_1 = _lh_kindToChar_arg1_3_3 in
    (match _lh_matchIdent_2_3_1 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2 _lh_kindToChar_arg1_1_6 =
  (let rec _lh_matchIdent_1_0_8 = _lh_kindToChar_arg1_1_6 in
    (match _lh_matchIdent_1_0_8 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d0 _lh_kindToChar_arg1_1_0 =
  (let rec _lh_matchIdent_8_4 = _lh_kindToChar_arg1_1_0 in
    (match _lh_matchIdent_8_4 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d1 _lh_kindToChar_arg1_1_9 =
  (let rec _lh_matchIdent_1_2_1 = _lh_kindToChar_arg1_1_9 in
    (match _lh_matchIdent_1_2_1 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d2 _lh_kindToChar_arg1_4_3 =
  (let rec _lh_matchIdent_2_8_5 = _lh_kindToChar_arg1_4_3 in
    (match _lh_matchIdent_2_8_5 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d3 _lh_kindToChar_arg1_1_4 =
  (let rec _lh_matchIdent_9_6 = _lh_kindToChar_arg1_1_4 in
    (match _lh_matchIdent_9_6 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d4 _lh_kindToChar_arg1_2 =
  (let rec _lh_matchIdent_5_2 = _lh_kindToChar_arg1_2 in
    (match _lh_matchIdent_5_2 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d5 _lh_kindToChar_arg1_3_4 =
  (let rec _lh_matchIdent_2_3_4 = _lh_kindToChar_arg1_3_4 in
    (match _lh_matchIdent_2_3_4 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d6 _lh_kindToChar_arg1_4_6 =
  (let rec _lh_matchIdent_2_9_5 = _lh_kindToChar_arg1_4_6 in
    (match _lh_matchIdent_2_9_5 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d7 _lh_kindToChar_arg1_1_8 =
  (let rec _lh_matchIdent_1_1_9 = _lh_kindToChar_arg1_1_8 in
    (match _lh_matchIdent_1_1_9 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d8 _lh_kindToChar_arg1_3 =
  (let rec _lh_matchIdent_5_3 = _lh_kindToChar_arg1_3 in
    (match _lh_matchIdent_5_3 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d2_d9 _lh_kindToChar_arg1_7 =
  (let rec _lh_matchIdent_7_2 = _lh_kindToChar_arg1_7 in
    (match _lh_matchIdent_7_2 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3 _lh_kindToChar_arg1_2_9 =
  (let rec _lh_matchIdent_1_9_7 = _lh_kindToChar_arg1_2_9 in
    (match _lh_matchIdent_1_9_7 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d0 _lh_kindToChar_arg1_4_2 =
  (let rec _lh_matchIdent_2_8_3 = _lh_kindToChar_arg1_4_2 in
    (match _lh_matchIdent_2_8_3 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d1 _lh_kindToChar_arg1_3_1 =
  (let rec _lh_matchIdent_2_1_4 = _lh_kindToChar_arg1_3_1 in
    (match _lh_matchIdent_2_1_4 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d2 _lh_kindToChar_arg1_1_7 =
  (let rec _lh_matchIdent_1_0_9 = _lh_kindToChar_arg1_1_7 in
    (match _lh_matchIdent_1_0_9 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d3 _lh_kindToChar_arg1_4_4 =
  (let rec _lh_matchIdent_2_8_6 = _lh_kindToChar_arg1_4_4 in
    (match _lh_matchIdent_2_8_6 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d4 _lh_kindToChar_arg1_4_7 =
  (let rec _lh_matchIdent_3_0_3 = _lh_kindToChar_arg1_4_7 in
    (match _lh_matchIdent_3_0_3 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d5 _lh_kindToChar_arg1_1 =
  (let rec _lh_matchIdent_4_9 = _lh_kindToChar_arg1_1 in
    (match _lh_matchIdent_4_9 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d6 _lh_kindToChar_arg1_4_5 =
  (let rec _lh_matchIdent_2_9_3 = _lh_kindToChar_arg1_4_5 in
    (match _lh_matchIdent_2_9_3 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d7 _lh_kindToChar_arg1_2_4 =
  (let rec _lh_matchIdent_1_6_8 = _lh_kindToChar_arg1_2_4 in
    (match _lh_matchIdent_1_6_8 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d8 _lh_kindToChar_arg1_2_1 =
  (let rec _lh_matchIdent_1_3_0 = _lh_kindToChar_arg1_2_1 in
    (match _lh_matchIdent_1_3_0 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d3_d9 _lh_kindToChar_arg1_3_7 =
  (let rec _lh_matchIdent_2_5_3 = _lh_kindToChar_arg1_3_7 in
    (match _lh_matchIdent_2_5_3 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d4 _lh_kindToChar_arg1_2_5 =
  (let rec _lh_matchIdent_1_6_9 = _lh_kindToChar_arg1_2_5 in
    (match _lh_matchIdent_1_6_9 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d4_d0 _lh_kindToChar_arg1_4_0 =
  (let rec _lh_matchIdent_2_7_7 = _lh_kindToChar_arg1_4_0 in
    (match _lh_matchIdent_2_7_7 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d4_d1 _lh_kindToChar_arg1_5 =
  (let rec _lh_matchIdent_6_3 = _lh_kindToChar_arg1_5 in
    (match _lh_matchIdent_6_3 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d4_d2 _lh_kindToChar_arg1_3_5 =
  (let rec _lh_matchIdent_2_3_7 = _lh_kindToChar_arg1_3_5 in
    (match _lh_matchIdent_2_3_7 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d4_d3 _lh_kindToChar_arg1_9 =
  (let rec _lh_matchIdent_7_5 = _lh_kindToChar_arg1_9 in
    (match _lh_matchIdent_7_5 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d4_d4 _lh_kindToChar_arg1_1_3 =
  (let rec _lh_matchIdent_9_3 = _lh_kindToChar_arg1_1_3 in
    (match _lh_matchIdent_9_3 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d4_d5 _lh_kindToChar_arg1_1_2 =
  (let rec _lh_matchIdent_9_1 = _lh_kindToChar_arg1_1_2 in
    (match _lh_matchIdent_9_1 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d4_d6 _lh_kindToChar_arg1_8 =
  (let rec _lh_matchIdent_7_3 = _lh_kindToChar_arg1_8 in
    (match _lh_matchIdent_7_3 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d5 _lh_kindToChar_arg1_6 =
  (let rec _lh_matchIdent_6_7 = _lh_kindToChar_arg1_6 in
    (match _lh_matchIdent_6_7 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d6 _lh_kindToChar_arg1_3_9 =
  (let rec _lh_matchIdent_2_7_6 = _lh_kindToChar_arg1_3_9 in
    (match _lh_matchIdent_2_7_6 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d7 _lh_kindToChar_arg1_4_1 =
  (let rec _lh_matchIdent_2_7_9 = _lh_kindToChar_arg1_4_1 in
    (match _lh_matchIdent_2_7_9 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d8 _lh_kindToChar_arg1_2_8 =
  (let rec _lh_matchIdent_1_8_8 = _lh_kindToChar_arg1_2_8 in
    (match _lh_matchIdent_1_8_8 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar__d9 _lh_kindToChar_arg1_2_3 =
  (let rec _lh_matchIdent_1_5_1 = _lh_kindToChar_arg1_2_3 in
    (match _lh_matchIdent_1_5_1 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec length__d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_3, t_2_5) -> 
      (1 + (length__d0 t_2_5))
    | `LH_N -> 
      0);;
let rec length__d1 ls_1_0_5 =
  (match ls_1_0_5 with
    | `LH_C(h_2_1_8, t_2_2_0) -> 
      (1 + (length__d1 t_2_2_0))
    | `LH_N -> 
      0);;
let rec length__d1_d0 ls_7_4 =
  (match ls_7_4 with
    | `LH_C(h_1_4_1, t_1_4_3) -> 
      (1 + (length__d1_d0 t_1_4_3))
    | `LH_N -> 
      0);;
let rec length__d1_d1 ls_1_2_0 =
  (match ls_1_2_0 with
    | `LH_C(h_2_7_3, t_2_7_5) -> 
      (1 + (length__d1_d1 t_2_7_5))
    | `LH_N -> 
      0);;
let rec length__d2 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_5_3, t_5_5) -> 
      (1 + (length__d2 t_5_5))
    | `LH_N -> 
      0);;
let rec length__d3 ls_8_7 =
  (match ls_8_7 with
    | `LH_C(h_1_7_8, t_1_8_0) -> 
      (1 + (length__d3 t_1_8_0))
    | `LH_N -> 
      0);;
let rec length__d4 ls_6_1 =
  (match ls_6_1 with
    | `LH_C(h_1_2_4, t_1_2_6) -> 
      (1 + (length__d4 t_1_2_6))
    | `LH_N -> 
      0);;
let rec length__d5 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_4_0, t_4_2) -> 
      (1 + (length__d5 t_4_2))
    | `LH_N -> 
      0);;
let rec length__d6 ls_1_3_4 =
  (match ls_1_3_4 with
    | `LH_C(h_2_9_3, t_2_9_5) -> 
      (1 + (length__d6 t_2_9_5))
    | `LH_N -> 
      0);;
let rec length__d7 ls_5_5 =
  (match ls_5_5 with
    | `LH_C(h_1_0_4, t_1_0_6) -> 
      (1 + (length__d7 t_1_0_6))
    | `LH_N -> 
      0);;
let rec length__d8 ls_1_3_5 =
  (match ls_1_3_5 with
    | `LH_C(h_2_9_4, t_2_9_6) -> 
      (1 + (length__d8 t_2_9_6))
    | `LH_N -> 
      0);;
let rec length__d9 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_6_8, t_7_0) -> 
      (1 + (length__d9 t_7_0))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_3 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C((f_1_3 h_4_5), ((map__d0 f_1_3) t_4_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_2_8 ls_1_1_7 =
  (match ls_1_1_7 with
    | `LH_C(h_2_6_8, t_2_7_0) -> 
      (`LH_C((f_2_8 h_2_6_8), ((map__d1 f_2_8) t_2_7_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_2_0 ls_8_5 =
  (match ls_8_5 with
    | `LH_C(h_1_7_3, t_1_7_5) -> 
      (`LH_C((f_2_0 h_1_7_3), ((map__d2 f_2_0) t_1_7_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_5 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_7_1, t_7_3) -> 
      (`LH_C((f_1_5 h_7_1), ((map__d3 f_1_5) t_7_3)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_2_2_9 ys_2_2_9 =
  (match xs_2_2_9 with
    | `LH_C(h_3_0_7, t_3_0_9) -> 
      (`LH_C(h_3_0_7, ((mappend__d0 t_3_0_9) ys_2_2_9)))
    | `LH_N -> 
      ys_2_2_9);;
let rec mappend__d1 xs_2_1_3 ys_2_1_3 =
  (match xs_2_1_3 with
    | `LH_C(h_2_8_6, t_2_8_8) -> 
      (`LH_C(h_2_8_6, ((mappend__d1 t_2_8_8) ys_2_1_3)))
    | `LH_N -> 
      ys_2_1_3);;
let rec mappend__d1_d0 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C(h_3_2, ((mappend__d1_d0 t_3_4) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d1_d0_d0 xs_1_3_1 ys_1_3_1 =
  (match xs_1_3_1 with
    | `LH_C(h_1_8_5, t_1_8_7) -> 
      (`LH_C(h_1_8_5, ((mappend__d1_d0_d0 t_1_8_7) ys_1_3_1)))
    | `LH_N -> 
      ys_1_3_1);;
let rec mappend__d1_d0_d1 xs_2_3_4 ys_2_3_4 =
  (match xs_2_3_4 with
    | `LH_C(h_3_1_3, t_3_1_5) -> 
      (`LH_C(h_3_1_3, ((mappend__d1_d0_d1 t_3_1_5) ys_2_3_4)))
    | `LH_N -> 
      ys_2_3_4);;
let rec mappend__d1_d0_d2 xs_1_6_0 ys_1_6_0 =
  (match xs_1_6_0 with
    | `LH_C(h_2_2_3, t_2_2_5) -> 
      (`LH_C(h_2_2_3, ((mappend__d1_d0_d2 t_2_2_5) ys_1_6_0)))
    | `LH_N -> 
      ys_1_6_0);;
let rec mappend__d1_d0_d3 xs_8_1 ys_8_1 =
  (match xs_8_1 with
    | `LH_C(h_1_1_7, t_1_1_9) -> 
      (`LH_C(h_1_1_7, ((mappend__d1_d0_d3 t_1_1_9) ys_8_1)))
    | `LH_N -> 
      ys_8_1);;
let rec mappend__d1_d0_d4 xs_1_9_5 ys_1_9_5 =
  (match xs_1_9_5 with
    | `LH_C(h_2_6_0, t_2_6_2) -> 
      (`LH_C(h_2_6_0, ((mappend__d1_d0_d4 t_2_6_2) ys_1_9_5)))
    | `LH_N -> 
      ys_1_9_5);;
let rec mappend__d1_d0_d5 xs_6_0 ys_6_0 =
  (match xs_6_0 with
    | `LH_C(h_8_7, t_8_9) -> 
      (`LH_C(h_8_7, ((mappend__d1_d0_d5 t_8_9) ys_6_0)))
    | `LH_N -> 
      ys_6_0);;
let rec mappend__d1_d0_d6 xs_1_3_0 ys_1_3_0 =
  (match xs_1_3_0 with
    | `LH_C(h_1_8_3, t_1_8_5) -> 
      (`LH_C(h_1_8_3, ((mappend__d1_d0_d6 t_1_8_5) ys_1_3_0)))
    | `LH_N -> 
      ys_1_3_0);;
let rec mappend__d1_d0_d7 xs_3_8 ys_3_8 =
  (match xs_3_8 with
    | `LH_C(h_6_0, t_6_2) -> 
      (`LH_C(h_6_0, ((mappend__d1_d0_d7 t_6_2) ys_3_8)))
    | `LH_N -> 
      ys_3_8);;
let rec mappend__d1_d0_d8 xs_1_6_8 ys_1_6_8 =
  (match xs_1_6_8 with
    | `LH_C(h_2_3_2, t_2_3_4) -> 
      (`LH_C(h_2_3_2, ((mappend__d1_d0_d8 t_2_3_4) ys_1_6_8)))
    | `LH_N -> 
      ys_1_6_8);;
let rec mappend__d1_d0_d9 xs_6_4 ys_6_4 =
  (match xs_6_4 with
    | `LH_C(h_9_4, t_9_6) -> 
      (`LH_C(h_9_4, ((mappend__d1_d0_d9 t_9_6) ys_6_4)))
    | `LH_N -> 
      ys_6_4);;
let rec mappend__d1_d1 xs_2_1_7 ys_2_1_7 =
  (match xs_2_1_7 with
    | `LH_C(h_2_9_0, t_2_9_2) -> 
      (`LH_C(h_2_9_0, ((mappend__d1_d1 t_2_9_2) ys_2_1_7)))
    | `LH_N -> 
      ys_2_1_7);;
let rec mappend__d1_d1_d0 xs_2_3_5 ys_2_3_5 =
  (match xs_2_3_5 with
    | `LH_C(h_3_1_4, t_3_1_6) -> 
      (`LH_C(h_3_1_4, ((mappend__d1_d1_d0 t_3_1_6) ys_2_3_5)))
    | `LH_N -> 
      ys_2_3_5);;
let rec mappend__d1_d1_d1 xs_1_6_3 ys_1_6_3 =
  (match xs_1_6_3 with
    | `LH_C(h_2_2_6, t_2_2_8) -> 
      (`LH_C(h_2_2_6, ((mappend__d1_d1_d1 t_2_2_8) ys_1_6_3)))
    | `LH_N -> 
      ys_1_6_3);;
let rec mappend__d1_d1_d2 xs_2_3_1 ys_2_3_1 =
  (match xs_2_3_1 with
    | `LH_C(h_3_1_0, t_3_1_2) -> 
      (`LH_C(h_3_1_0, ((mappend__d1_d1_d2 t_3_1_2) ys_2_3_1)))
    | `LH_N -> 
      ys_2_3_1);;
let rec mappend__d1_d1_d3 xs_1_6_6 ys_1_6_6 =
  (match xs_1_6_6 with
    | `LH_C(h_2_3_0, t_2_3_2) -> 
      (`LH_C(h_2_3_0, ((mappend__d1_d1_d3 t_2_3_2) ys_1_6_6)))
    | `LH_N -> 
      ys_1_6_6);;
let rec mappend__d1_d1_d4 xs_1_6_1 ys_1_6_1 =
  (match xs_1_6_1 with
    | `LH_C(h_2_2_4, t_2_2_6) -> 
      (`LH_C(h_2_2_4, ((mappend__d1_d1_d4 t_2_2_6) ys_1_6_1)))
    | `LH_N -> 
      ys_1_6_1);;
let rec mappend__d1_d1_d5 xs_1_1_9 ys_1_1_9 =
  (match xs_1_1_9 with
    | `LH_C(h_1_6_6, t_1_6_8) -> 
      (`LH_C(h_1_6_6, ((mappend__d1_d1_d5 t_1_6_8) ys_1_1_9)))
    | `LH_N -> 
      ys_1_1_9);;
let rec mappend__d1_d1_d6 xs_1_3_7 ys_1_3_7 =
  (match xs_1_3_7 with
    | `LH_C(h_1_9_2, t_1_9_4) -> 
      (`LH_C(h_1_9_2, ((mappend__d1_d1_d6 t_1_9_4) ys_1_3_7)))
    | `LH_N -> 
      ys_1_3_7);;
let rec mappend__d1_d1_d7 xs_4_5 ys_4_5 =
  (match xs_4_5 with
    | `LH_C(h_6_7, t_6_9) -> 
      (`LH_C(h_6_7, ((mappend__d1_d1_d7 t_6_9) ys_4_5)))
    | `LH_N -> 
      ys_4_5);;
let rec mappend__d1_d1_d8 xs_7_1 ys_7_1 =
  (match xs_7_1 with
    | `LH_C(h_1_0_7, t_1_0_9) -> 
      (`LH_C(h_1_0_7, ((mappend__d1_d1_d8 t_1_0_9) ys_7_1)))
    | `LH_N -> 
      ys_7_1);;
let rec mappend__d1_d1_d9 xs_1_1_8 ys_1_1_8 =
  (match xs_1_1_8 with
    | `LH_C(h_1_6_5, t_1_6_7) -> 
      (`LH_C(h_1_6_5, ((mappend__d1_d1_d9 t_1_6_7) ys_1_1_8)))
    | `LH_N -> 
      ys_1_1_8);;
let rec mappend__d1_d2 xs_1_5_0 ys_1_5_0 =
  (match xs_1_5_0 with
    | `LH_C(h_2_1_0, t_2_1_2) -> 
      (`LH_C(h_2_1_0, ((mappend__d1_d2 t_2_1_2) ys_1_5_0)))
    | `LH_N -> 
      ys_1_5_0);;
let rec mappend__d1_d2_d0 xs_2_2_3 ys_2_2_3 =
  (match xs_2_2_3 with
    | `LH_C(h_2_9_8, t_3_0_0) -> 
      (`LH_C(h_2_9_8, ((mappend__d1_d2_d0 t_3_0_0) ys_2_2_3)))
    | `LH_N -> 
      ys_2_2_3);;
let rec mappend__d1_d2_d1 xs_2_3_8 ys_2_3_8 =
  (match xs_2_3_8 with
    | `LH_C(h_3_1_7, t_3_1_9) -> 
      (`LH_C(h_3_1_7, ((mappend__d1_d2_d1 t_3_1_9) ys_2_3_8)))
    | `LH_N -> 
      ys_2_3_8);;
let rec mappend__d1_d2_d2 xs_2_2_8 ys_2_2_8 =
  (match xs_2_2_8 with
    | `LH_C(h_3_0_6, t_3_0_8) -> 
      (`LH_C(h_3_0_6, ((mappend__d1_d2_d2 t_3_0_8) ys_2_2_8)))
    | `LH_N -> 
      ys_2_2_8);;
let rec mappend__d1_d2_d3 xs_1_9_4 ys_1_9_4 =
  (match xs_1_9_4 with
    | `LH_C(h_2_5_9, t_2_6_1) -> 
      (`LH_C(h_2_5_9, ((mappend__d1_d2_d3 t_2_6_1) ys_1_9_4)))
    | `LH_N -> 
      ys_1_9_4);;
let rec mappend__d1_d2_d4 xs_1_0_9 ys_1_0_9 =
  (match xs_1_0_9 with
    | `LH_C(h_1_5_3, t_1_5_5) -> 
      (`LH_C(h_1_5_3, ((mappend__d1_d2_d4 t_1_5_5) ys_1_0_9)))
    | `LH_N -> 
      ys_1_0_9);;
let rec mappend__d1_d2_d5 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d1_d2_d5 t_2_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d1_d2_d6 xs_1_6_9 ys_1_6_9 =
  (match xs_1_6_9 with
    | `LH_C(h_2_3_3, t_2_3_5) -> 
      (`LH_C(h_2_3_3, ((mappend__d1_d2_d6 t_2_3_5) ys_1_6_9)))
    | `LH_N -> 
      ys_1_6_9);;
let rec mappend__d1_d2_d7 xs_4_6 ys_4_6 =
  (match xs_4_6 with
    | `LH_C(h_6_9, t_7_1) -> 
      (`LH_C(h_6_9, ((mappend__d1_d2_d7 t_7_1) ys_4_6)))
    | `LH_N -> 
      ys_4_6);;
let rec mappend__d1_d2_d8 xs_5_1 ys_5_1 =
  (match xs_5_1 with
    | `LH_C(h_7_6, t_7_8) -> 
      (`LH_C(h_7_6, ((mappend__d1_d2_d8 t_7_8) ys_5_1)))
    | `LH_N -> 
      ys_5_1);;
let rec mappend__d1_d2_d9 xs_6_1 ys_6_1 =
  (match xs_6_1 with
    | `LH_C(h_8_9, t_9_1) -> 
      (`LH_C(h_8_9, ((mappend__d1_d2_d9 t_9_1) ys_6_1)))
    | `LH_N -> 
      ys_6_1);;
let rec mappend__d1_d3 xs_4_4 ys_4_4 =
  (match xs_4_4 with
    | `LH_C(h_6_6, t_6_8) -> 
      (`LH_C(h_6_6, ((mappend__d1_d3 t_6_8) ys_4_4)))
    | `LH_N -> 
      ys_4_4);;
let rec mappend__d1_d3_d0 xs_1_7_1 ys_1_7_1 =
  (match xs_1_7_1 with
    | `LH_C(h_2_3_5, t_2_3_7) -> 
      (`LH_C(h_2_3_5, ((mappend__d1_d3_d0 t_2_3_7) ys_1_7_1)))
    | `LH_N -> 
      ys_1_7_1);;
let rec mappend__d1_d3_d1 xs_1_8_4 ys_1_8_4 =
  (match xs_1_8_4 with
    | `LH_C(h_2_5_0, t_2_5_2) -> 
      (`LH_C(h_2_5_0, ((mappend__d1_d3_d1 t_2_5_2) ys_1_8_4)))
    | `LH_N -> 
      ys_1_8_4);;
let rec mappend__d1_d3_d2 xs_1_8_7 ys_1_8_7 =
  (match xs_1_8_7 with
    | `LH_C(h_2_5_3, t_2_5_5) -> 
      (`LH_C(h_2_5_3, ((mappend__d1_d3_d2 t_2_5_5) ys_1_8_7)))
    | `LH_N -> 
      ys_1_8_7);;
let rec mappend__d1_d3_d3 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C(h_3_5, ((mappend__d1_d3_d3 t_3_7) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d1_d3_d4 xs_2_3_3 ys_2_3_3 =
  (match xs_2_3_3 with
    | `LH_C(h_3_1_2, t_3_1_4) -> 
      (`LH_C(h_3_1_2, ((mappend__d1_d3_d4 t_3_1_4) ys_2_3_3)))
    | `LH_N -> 
      ys_2_3_3);;
let rec mappend__d1_d3_d5 xs_1_0_1 ys_1_0_1 =
  (match xs_1_0_1 with
    | `LH_C(h_1_4_5, t_1_4_7) -> 
      (`LH_C(h_1_4_5, ((mappend__d1_d3_d5 t_1_4_7) ys_1_0_1)))
    | `LH_N -> 
      ys_1_0_1);;
let rec mappend__d1_d3_d6 xs_2_1_1 ys_2_1_1 =
  (match xs_2_1_1 with
    | `LH_C(h_2_8_4, t_2_8_6) -> 
      (`LH_C(h_2_8_4, ((mappend__d1_d3_d6 t_2_8_6) ys_2_1_1)))
    | `LH_N -> 
      ys_2_1_1);;
let rec mappend__d1_d3_d7 xs_1_1_0 ys_1_1_0 =
  (match xs_1_1_0 with
    | `LH_C(h_1_5_4, t_1_5_6) -> 
      (`LH_C(h_1_5_4, ((mappend__d1_d3_d7 t_1_5_6) ys_1_1_0)))
    | `LH_N -> 
      ys_1_1_0);;
let rec mappend__d1_d3_d8 xs_7_4 ys_7_4 =
  (match xs_7_4 with
    | `LH_C(h_1_1_0, t_1_1_2) -> 
      (`LH_C(h_1_1_0, ((mappend__d1_d3_d8 t_1_1_2) ys_7_4)))
    | `LH_N -> 
      ys_7_4);;
let rec mappend__d1_d3_d9 xs_1_4_5 ys_1_4_5 =
  (match xs_1_4_5 with
    | `LH_C(h_2_0_3, t_2_0_5) -> 
      (`LH_C(h_2_0_3, ((mappend__d1_d3_d9 t_2_0_5) ys_1_4_5)))
    | `LH_N -> 
      ys_1_4_5);;
let rec mappend__d1_d4 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_3, t_3_5) -> 
      (`LH_C(h_3_3, ((mappend__d1_d4 t_3_5) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d1_d4_d0 xs_1_3_2 ys_1_3_2 =
  (match xs_1_3_2 with
    | `LH_C(h_1_8_6, t_1_8_8) -> 
      (`LH_C(h_1_8_6, ((mappend__d1_d4_d0 t_1_8_8) ys_1_3_2)))
    | `LH_N -> 
      ys_1_3_2);;
let rec mappend__d1_d4_d1 xs_2_1_2 ys_2_1_2 =
  (match xs_2_1_2 with
    | `LH_C(h_2_8_5, t_2_8_7) -> 
      (`LH_C(h_2_8_5, ((mappend__d1_d4_d1 t_2_8_7) ys_2_1_2)))
    | `LH_N -> 
      ys_2_1_2);;
let rec mappend__d1_d4_d2 xs_2_1_8 ys_2_1_8 =
  (match xs_2_1_8 with
    | `LH_C(h_2_9_1, t_2_9_3) -> 
      (`LH_C(h_2_9_1, ((mappend__d1_d4_d2 t_2_9_3) ys_2_1_8)))
    | `LH_N -> 
      ys_2_1_8);;
let rec mappend__d1_d4_d3 xs_5_7 ys_5_7 =
  (match xs_5_7 with
    | `LH_C(h_8_3, t_8_5) -> 
      (`LH_C(h_8_3, ((mappend__d1_d4_d3 t_8_5) ys_5_7)))
    | `LH_N -> 
      ys_5_7);;
let rec mappend__d1_d4_d4 xs_8_6 ys_8_6 =
  (match xs_8_6 with
    | `LH_C(h_1_2_5, t_1_2_7) -> 
      (`LH_C(h_1_2_5, ((mappend__d1_d4_d4 t_1_2_7) ys_8_6)))
    | `LH_N -> 
      ys_8_6);;
let rec mappend__d1_d4_d5 xs_2_1_0 ys_2_1_0 =
  (match xs_2_1_0 with
    | `LH_C(h_2_8_1, t_2_8_3) -> 
      (`LH_C(h_2_8_1, ((mappend__d1_d4_d5 t_2_8_3) ys_2_1_0)))
    | `LH_N -> 
      ys_2_1_0);;
let rec mappend__d1_d4_d6 xs_2_1_9 ys_2_1_9 =
  (match xs_2_1_9 with
    | `LH_C(h_2_9_2, t_2_9_4) -> 
      (`LH_C(h_2_9_2, ((mappend__d1_d4_d6 t_2_9_4) ys_2_1_9)))
    | `LH_N -> 
      ys_2_1_9);;
let rec mappend__d1_d4_d7 xs_2_4_7 ys_2_4_7 =
  (match xs_2_4_7 with
    | `LH_C(h_3_2_6, t_3_2_8) -> 
      (`LH_C(h_3_2_6, ((mappend__d1_d4_d7 t_3_2_8) ys_2_4_7)))
    | `LH_N -> 
      ys_2_4_7);;
let rec mappend__d1_d4_d8 xs_9_0 ys_9_0 =
  (match xs_9_0 with
    | `LH_C(h_1_3_0, t_1_3_2) -> 
      (`LH_C(h_1_3_0, ((mappend__d1_d4_d8 t_1_3_2) ys_9_0)))
    | `LH_N -> 
      ys_9_0);;
let rec mappend__d1_d4_d9 xs_1_6_7 ys_1_6_7 =
  (match xs_1_6_7 with
    | `LH_C(h_2_3_1, t_2_3_3) -> 
      (`LH_C(h_2_3_1, ((mappend__d1_d4_d9 t_2_3_3) ys_1_6_7)))
    | `LH_N -> 
      ys_1_6_7);;
let rec mappend__d1_d5 xs_1_9_6 ys_1_9_6 =
  (match xs_1_9_6 with
    | `LH_C(h_2_6_1, t_2_6_3) -> 
      (`LH_C(h_2_6_1, ((mappend__d1_d5 t_2_6_3) ys_1_9_6)))
    | `LH_N -> 
      ys_1_9_6);;
let rec mappend__d1_d5_d0 xs_2_0_7 ys_2_0_7 =
  (match xs_2_0_7 with
    | `LH_C(h_2_7_6, t_2_7_8) -> 
      (`LH_C(h_2_7_6, ((mappend__d1_d5_d0 t_2_7_8) ys_2_0_7)))
    | `LH_N -> 
      ys_2_0_7);;
let rec mappend__d1_d5_d1 xs_1_8_8 ys_1_8_8 =
  (match xs_1_8_8 with
    | `LH_C(h_2_5_4, t_2_5_6) -> 
      (`LH_C(h_2_5_4, ((mappend__d1_d5_d1 t_2_5_6) ys_1_8_8)))
    | `LH_N -> 
      ys_1_8_8);;
let rec mappend__d1_d5_d2 xs_2_3_2 ys_2_3_2 =
  (match xs_2_3_2 with
    | `LH_C(h_3_1_1, t_3_1_3) -> 
      (`LH_C(h_3_1_1, ((mappend__d1_d5_d2 t_3_1_3) ys_2_3_2)))
    | `LH_N -> 
      ys_2_3_2);;
let rec mappend__d1_d5_d3 xs_8_5 ys_8_5 =
  (match xs_8_5 with
    | `LH_C(h_1_2_3, t_1_2_5) -> 
      (`LH_C(h_1_2_3, ((mappend__d1_d5_d3 t_1_2_5) ys_8_5)))
    | `LH_N -> 
      ys_8_5);;
let rec mappend__d1_d5_d4 xs_2_1_6 ys_2_1_6 =
  (match xs_2_1_6 with
    | `LH_C(h_2_8_9, t_2_9_1) -> 
      (`LH_C(h_2_8_9, ((mappend__d1_d5_d4 t_2_9_1) ys_2_1_6)))
    | `LH_N -> 
      ys_2_1_6);;
let rec mappend__d1_d5_d5 xs_9_2 ys_9_2 =
  (match xs_9_2 with
    | `LH_C(h_1_3_2, t_1_3_4) -> 
      (`LH_C(h_1_3_2, ((mappend__d1_d5_d5 t_1_3_4) ys_9_2)))
    | `LH_N -> 
      ys_9_2);;
let rec mappend__d1_d5_d6 xs_3_3 ys_3_3 =
  (match xs_3_3 with
    | `LH_C(h_5_5, t_5_7) -> 
      (`LH_C(h_5_5, ((mappend__d1_d5_d6 t_5_7) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend__d1_d5_d7 xs_1_9_9 ys_1_9_9 =
  (match xs_1_9_9 with
    | `LH_C(h_2_6_5, t_2_6_7) -> 
      (`LH_C(h_2_6_5, ((mappend__d1_d5_d7 t_2_6_7) ys_1_9_9)))
    | `LH_N -> 
      ys_1_9_9);;
let rec mappend__d1_d5_d8 xs_2_0_2 ys_2_0_2 =
  (match xs_2_0_2 with
    | `LH_C(h_2_6_9, t_2_7_1) -> 
      (`LH_C(h_2_6_9, ((mappend__d1_d5_d8 t_2_7_1) ys_2_0_2)))
    | `LH_N -> 
      ys_2_0_2);;
let rec mappend__d1_d5_d9 xs_7_3 ys_7_3 =
  (match xs_7_3 with
    | `LH_C(h_1_0_9, t_1_1_1) -> 
      (`LH_C(h_1_0_9, ((mappend__d1_d5_d9 t_1_1_1) ys_7_3)))
    | `LH_N -> 
      ys_7_3);;
let rec mappend__d1_d6 xs_2_4_9 ys_2_4_9 =
  (match xs_2_4_9 with
    | `LH_C(h_3_2_8, t_3_3_0) -> 
      (`LH_C(h_3_2_8, ((mappend__d1_d6 t_3_3_0) ys_2_4_9)))
    | `LH_N -> 
      ys_2_4_9);;
let rec mappend__d1_d6_d0 xs_1_5_9 ys_1_5_9 =
  (match xs_1_5_9 with
    | `LH_C(h_2_2_2, t_2_2_4) -> 
      (`LH_C(h_2_2_2, ((mappend__d1_d6_d0 t_2_2_4) ys_1_5_9)))
    | `LH_N -> 
      ys_1_5_9);;
let rec mappend__d1_d6_d1 xs_1_2_1 ys_1_2_1 =
  (match xs_1_2_1 with
    | `LH_C(h_1_7_0, t_1_7_2) -> 
      (`LH_C(h_1_7_0, ((mappend__d1_d6_d1 t_1_7_2) ys_1_2_1)))
    | `LH_N -> 
      ys_1_2_1);;
let rec mappend__d1_d6_d2 xs_1_8_1 ys_1_8_1 =
  (match xs_1_8_1 with
    | `LH_C(h_2_4_6, t_2_4_8) -> 
      (`LH_C(h_2_4_6, ((mappend__d1_d6_d2 t_2_4_8) ys_1_8_1)))
    | `LH_N -> 
      ys_1_8_1);;
let rec mappend__d1_d6_d3 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_4_9, t_5_1) -> 
      (`LH_C(h_4_9, ((mappend__d1_d6_d3 t_5_1) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d1_d6_d4 xs_2_0_8 ys_2_0_8 =
  (match xs_2_0_8 with
    | `LH_C(h_2_7_8, t_2_8_0) -> 
      (`LH_C(h_2_7_8, ((mappend__d1_d6_d4 t_2_8_0) ys_2_0_8)))
    | `LH_N -> 
      ys_2_0_8);;
let rec mappend__d1_d6_d5 xs_5_6 ys_5_6 =
  (match xs_5_6 with
    | `LH_C(h_8_2, t_8_4) -> 
      (`LH_C(h_8_2, ((mappend__d1_d6_d5 t_8_4) ys_5_6)))
    | `LH_N -> 
      ys_5_6);;
let rec mappend__d1_d6_d6 xs_2_3_6 ys_2_3_6 =
  (match xs_2_3_6 with
    | `LH_C(h_3_1_5, t_3_1_7) -> 
      (`LH_C(h_3_1_5, ((mappend__d1_d6_d6 t_3_1_7) ys_2_3_6)))
    | `LH_N -> 
      ys_2_3_6);;
let rec mappend__d1_d6_d7 xs_2_1_4 ys_2_1_4 =
  (match xs_2_1_4 with
    | `LH_C(h_2_8_7, t_2_8_9) -> 
      (`LH_C(h_2_8_7, ((mappend__d1_d6_d7 t_2_8_9) ys_2_1_4)))
    | `LH_N -> 
      ys_2_1_4);;
let rec mappend__d1_d6_d8 xs_1_2_0 ys_1_2_0 =
  (match xs_1_2_0 with
    | `LH_C(h_1_6_8, t_1_7_0) -> 
      (`LH_C(h_1_6_8, ((mappend__d1_d6_d8 t_1_7_0) ys_1_2_0)))
    | `LH_N -> 
      ys_1_2_0);;
let rec mappend__d1_d6_d9 xs_7_5 ys_7_5 =
  (match xs_7_5 with
    | `LH_C(h_1_1_1, t_1_1_3) -> 
      (`LH_C(h_1_1_1, ((mappend__d1_d6_d9 t_1_1_3) ys_7_5)))
    | `LH_N -> 
      ys_7_5);;
let rec mappend__d1_d7 xs_1_0_7 ys_1_0_7 =
  (match xs_1_0_7 with
    | `LH_C(h_1_5_1, t_1_5_3) -> 
      (`LH_C(h_1_5_1, ((mappend__d1_d7 t_1_5_3) ys_1_0_7)))
    | `LH_N -> 
      ys_1_0_7);;
let rec mappend__d1_d7_d0 xs_7_2 ys_7_2 =
  (match xs_7_2 with
    | `LH_C(h_1_0_8, t_1_1_0) -> 
      (`LH_C(h_1_0_8, ((mappend__d1_d7_d0 t_1_1_0) ys_7_2)))
    | `LH_N -> 
      ys_7_2);;
let rec mappend__d1_d7_d1 xs_4_2 ys_4_2 =
  (match xs_4_2 with
    | `LH_C(h_6_4, t_6_6) -> 
      (`LH_C(h_6_4, ((mappend__d1_d7_d1 t_6_6) ys_4_2)))
    | `LH_N -> 
      ys_4_2);;
let rec mappend__d1_d7_d2 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C(h_3_8, ((mappend__d1_d7_d2 t_4_0) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1_d7_d3 xs_1_6_4 ys_1_6_4 =
  (match xs_1_6_4 with
    | `LH_C(h_2_2_7, t_2_2_9) -> 
      (`LH_C(h_2_2_7, ((mappend__d1_d7_d3 t_2_2_9) ys_1_6_4)))
    | `LH_N -> 
      ys_1_6_4);;
let rec mappend__d1_d7_d4 xs_2_0_6 ys_2_0_6 =
  (match xs_2_0_6 with
    | `LH_C(h_2_7_4, t_2_7_6) -> 
      (`LH_C(h_2_7_4, ((mappend__d1_d7_d4 t_2_7_6) ys_2_0_6)))
    | `LH_N -> 
      ys_2_0_6);;
let rec mappend__d1_d7_d5 xs_1_1_4 ys_1_1_4 =
  (match xs_1_1_4 with
    | `LH_C(h_1_6_1, t_1_6_3) -> 
      (`LH_C(h_1_6_1, ((mappend__d1_d7_d5 t_1_6_3) ys_1_1_4)))
    | `LH_N -> 
      ys_1_1_4);;
let rec mappend__d1_d7_d6 xs_1_6_2 ys_1_6_2 =
  (match xs_1_6_2 with
    | `LH_C(h_2_2_5, t_2_2_7) -> 
      (`LH_C(h_2_2_5, ((mappend__d1_d7_d6 t_2_2_7) ys_1_6_2)))
    | `LH_N -> 
      ys_1_6_2);;
let rec mappend__d1_d7_d7 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d1_d7_d7 t_3_0) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d1_d7_d8 xs_7_0 ys_7_0 =
  (match xs_7_0 with
    | `LH_C(h_1_0_6, t_1_0_8) -> 
      (`LH_C(h_1_0_6, ((mappend__d1_d7_d8 t_1_0_8) ys_7_0)))
    | `LH_N -> 
      ys_7_0);;
let rec mappend__d1_d7_d9 xs_1_0_2 ys_1_0_2 =
  (match xs_1_0_2 with
    | `LH_C(h_1_4_6, t_1_4_8) -> 
      (`LH_C(h_1_4_6, ((mappend__d1_d7_d9 t_1_4_8) ys_1_0_2)))
    | `LH_N -> 
      ys_1_0_2);;
let rec mappend__d1_d8 xs_2_3_9 ys_2_3_9 =
  (match xs_2_3_9 with
    | `LH_C(h_3_1_8, t_3_2_0) -> 
      (`LH_C(h_3_1_8, ((mappend__d1_d8 t_3_2_0) ys_2_3_9)))
    | `LH_N -> 
      ys_2_3_9);;
let rec mappend__d1_d8_d0 xs_2_0_9 ys_2_0_9 =
  (match xs_2_0_9 with
    | `LH_C(h_2_7_9, t_2_8_1) -> 
      (`LH_C(h_2_7_9, ((mappend__d1_d8_d0 t_2_8_1) ys_2_0_9)))
    | `LH_N -> 
      ys_2_0_9);;
let rec mappend__d1_d8_d1 xs_1_5_6 ys_1_5_6 =
  (match xs_1_5_6 with
    | `LH_C(h_2_1_7, t_2_1_9) -> 
      (`LH_C(h_2_1_7, ((mappend__d1_d8_d1 t_2_1_9) ys_1_5_6)))
    | `LH_N -> 
      ys_1_5_6);;
let rec mappend__d1_d8_d2 xs_3_7 ys_3_7 =
  (match xs_3_7 with
    | `LH_C(h_5_9, t_6_1) -> 
      (`LH_C(h_5_9, ((mappend__d1_d8_d2 t_6_1) ys_3_7)))
    | `LH_N -> 
      ys_3_7);;
let rec mappend__d1_d8_d3 xs_3_9 ys_3_9 =
  (match xs_3_9 with
    | `LH_C(h_6_1, t_6_3) -> 
      (`LH_C(h_6_1, ((mappend__d1_d8_d3 t_6_3) ys_3_9)))
    | `LH_N -> 
      ys_3_9);;
let rec mappend__d1_d8_d4 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(h_4_6, t_4_8) -> 
      (`LH_C(h_4_6, ((mappend__d1_d8_d4 t_4_8) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d1_d8_d5 xs_1_8_0 ys_1_8_0 =
  (match xs_1_8_0 with
    | `LH_C(h_2_4_5, t_2_4_7) -> 
      (`LH_C(h_2_4_5, ((mappend__d1_d8_d5 t_2_4_7) ys_1_8_0)))
    | `LH_N -> 
      ys_1_8_0);;
let rec mappend__d1_d8_d6 xs_6_7 ys_6_7 =
  (match xs_6_7 with
    | `LH_C(h_1_0_1, t_1_0_3) -> 
      (`LH_C(h_1_0_1, ((mappend__d1_d8_d6 t_1_0_3) ys_6_7)))
    | `LH_N -> 
      ys_6_7);;
let rec mappend__d1_d8_d7 xs_1_2_7 ys_1_2_7 =
  (match xs_1_2_7 with
    | `LH_C(h_1_8_0, t_1_8_2) -> 
      (`LH_C(h_1_8_0, ((mappend__d1_d8_d7 t_1_8_2) ys_1_2_7)))
    | `LH_N -> 
      ys_1_2_7);;
let rec mappend__d1_d8_d8 xs_1_1_6 ys_1_1_6 =
  (match xs_1_1_6 with
    | `LH_C(h_1_6_3, t_1_6_5) -> 
      (`LH_C(h_1_6_3, ((mappend__d1_d8_d8 t_1_6_5) ys_1_1_6)))
    | `LH_N -> 
      ys_1_1_6);;
let rec mappend__d1_d8_d9 xs_7_7 ys_7_7 =
  (match xs_7_7 with
    | `LH_C(h_1_1_3, t_1_1_5) -> 
      (`LH_C(h_1_1_3, ((mappend__d1_d8_d9 t_1_1_5) ys_7_7)))
    | `LH_N -> 
      ys_7_7);;
let rec mappend__d1_d9 xs_6_6 ys_6_6 =
  (match xs_6_6 with
    | `LH_C(h_1_0_0, t_1_0_2) -> 
      (`LH_C(h_1_0_0, ((mappend__d1_d9 t_1_0_2) ys_6_6)))
    | `LH_N -> 
      ys_6_6);;
let rec mappend__d1_d9_d0 xs_2_4_5 ys_2_4_5 =
  (match xs_2_4_5 with
    | `LH_C(h_3_2_4, t_3_2_6) -> 
      (`LH_C(h_3_2_4, ((mappend__d1_d9_d0 t_3_2_6) ys_2_4_5)))
    | `LH_N -> 
      ys_2_4_5);;
let rec mappend__d1_d9_d1 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C(h_4_8, ((mappend__d1_d9_d1 t_5_0) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d1_d9_d2 xs_1_5_3 ys_1_5_3 =
  (match xs_1_5_3 with
    | `LH_C(h_2_1_4, t_2_1_6) -> 
      (`LH_C(h_2_1_4, ((mappend__d1_d9_d2 t_2_1_6) ys_1_5_3)))
    | `LH_N -> 
      ys_1_5_3);;
let rec mappend__d1_d9_d3 xs_1_2_4 ys_1_2_4 =
  (match xs_1_2_4 with
    | `LH_C(h_1_7_5, t_1_7_7) -> 
      (`LH_C(h_1_7_5, ((mappend__d1_d9_d3 t_1_7_7) ys_1_2_4)))
    | `LH_N -> 
      ys_1_2_4);;
let rec mappend__d1_d9_d4 xs_1_3_9 ys_1_3_9 =
  (match xs_1_3_9 with
    | `LH_C(h_1_9_4, t_1_9_6) -> 
      (`LH_C(h_1_9_4, ((mappend__d1_d9_d4 t_1_9_6) ys_1_3_9)))
    | `LH_N -> 
      ys_1_3_9);;
let rec mappend__d1_d9_d5 xs_2_0_0 ys_2_0_0 =
  (match xs_2_0_0 with
    | `LH_C(h_2_6_6, t_2_6_8) -> 
      (`LH_C(h_2_6_6, ((mappend__d1_d9_d5 t_2_6_8) ys_2_0_0)))
    | `LH_N -> 
      ys_2_0_0);;
let rec mappend__d1_d9_d6 xs_2_4_2 ys_2_4_2 =
  (match xs_2_4_2 with
    | `LH_C(h_3_2_1, t_3_2_3) -> 
      (`LH_C(h_3_2_1, ((mappend__d1_d9_d6 t_3_2_3) ys_2_4_2)))
    | `LH_N -> 
      ys_2_4_2);;
let rec mappend__d1_d9_d7 xs_1_7_9 ys_1_7_9 =
  (match xs_1_7_9 with
    | `LH_C(h_2_4_4, t_2_4_6) -> 
      (`LH_C(h_2_4_4, ((mappend__d1_d9_d7 t_2_4_6) ys_1_7_9)))
    | `LH_N -> 
      ys_1_7_9);;
let rec mappend__d1_d9_d8 xs_1_9_0 ys_1_9_0 =
  (match xs_1_9_0 with
    | `LH_C(h_2_5_6, t_2_5_8) -> 
      (`LH_C(h_2_5_6, ((mappend__d1_d9_d8 t_2_5_8) ys_1_9_0)))
    | `LH_N -> 
      ys_1_9_0);;
let rec mappend__d1_d9_d9 xs_1_4_9 ys_1_4_9 =
  (match xs_1_4_9 with
    | `LH_C(h_2_0_9, t_2_1_1) -> 
      (`LH_C(h_2_0_9, ((mappend__d1_d9_d9 t_2_1_1) ys_1_4_9)))
    | `LH_N -> 
      ys_1_4_9);;
let rec mappend__d2 xs_9_5 ys_9_5 =
  (match xs_9_5 with
    | `LH_C(h_1_3_8, t_1_4_0) -> 
      (`LH_C(h_1_3_8, ((mappend__d2 t_1_4_0) ys_9_5)))
    | `LH_N -> 
      ys_9_5);;
let rec mappend__d2_d0 xs_1_0_3 ys_1_0_3 =
  (match xs_1_0_3 with
    | `LH_C(h_1_4_7, t_1_4_9) -> 
      (`LH_C(h_1_4_7, ((mappend__d2_d0 t_1_4_9) ys_1_0_3)))
    | `LH_N -> 
      ys_1_0_3);;
let rec mappend__d2_d0_d0 xs_1_7_2 ys_1_7_2 =
  (match xs_1_7_2 with
    | `LH_C(h_2_3_6, t_2_3_8) -> 
      (`LH_C(h_2_3_6, ((mappend__d2_d0_d0 t_2_3_8) ys_1_7_2)))
    | `LH_N -> 
      ys_1_7_2);;
let rec mappend__d2_d0_d1 xs_1_5_2 ys_1_5_2 =
  (match xs_1_5_2 with
    | `LH_C(h_2_1_2, t_2_1_4) -> 
      (`LH_C(h_2_1_2, ((mappend__d2_d0_d1 t_2_1_4) ys_1_5_2)))
    | `LH_N -> 
      ys_1_5_2);;
let rec mappend__d2_d0_d2 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend__d2_d0_d2 t_2_7) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d2_d0_d3 xs_9_8 ys_9_8 =
  (match xs_9_8 with
    | `LH_C(h_1_4_2, t_1_4_4) -> 
      (`LH_C(h_1_4_2, ((mappend__d2_d0_d3 t_1_4_4) ys_9_8)))
    | `LH_N -> 
      ys_9_8);;
let rec mappend__d2_d0_d4 xs_2_3_7 ys_2_3_7 =
  (match xs_2_3_7 with
    | `LH_C(h_3_1_6, t_3_1_8) -> 
      (`LH_C(h_3_1_6, ((mappend__d2_d0_d4 t_3_1_8) ys_2_3_7)))
    | `LH_N -> 
      ys_2_3_7);;
let rec mappend__d2_d0_d5 xs_9_4 ys_9_4 =
  (match xs_9_4 with
    | `LH_C(h_1_3_7, t_1_3_9) -> 
      (`LH_C(h_1_3_7, ((mappend__d2_d0_d5 t_1_3_9) ys_9_4)))
    | `LH_N -> 
      ys_9_4);;
let rec mappend__d2_d0_d6 xs_6_5 ys_6_5 =
  (match xs_6_5 with
    | `LH_C(h_9_7, t_9_9) -> 
      (`LH_C(h_9_7, ((mappend__d2_d0_d6 t_9_9) ys_6_5)))
    | `LH_N -> 
      ys_6_5);;
let rec mappend__d2_d0_d7 xs_5_9 ys_5_9 =
  (match xs_5_9 with
    | `LH_C(h_8_6, t_8_8) -> 
      (`LH_C(h_8_6, ((mappend__d2_d0_d7 t_8_8) ys_5_9)))
    | `LH_N -> 
      ys_5_9);;
let rec mappend__d2_d0_d8 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d2_d0_d8 t_2_8) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d2_d0_d9 xs_5_0 ys_5_0 =
  (match xs_5_0 with
    | `LH_C(h_7_5, t_7_7) -> 
      (`LH_C(h_7_5, ((mappend__d2_d0_d9 t_7_7) ys_5_0)))
    | `LH_N -> 
      ys_5_0);;
let rec mappend__d2_d1 xs_1_8_2 ys_1_8_2 =
  (match xs_1_8_2 with
    | `LH_C(h_2_4_8, t_2_5_0) -> 
      (`LH_C(h_2_4_8, ((mappend__d2_d1 t_2_5_0) ys_1_8_2)))
    | `LH_N -> 
      ys_1_8_2);;
let rec mappend__d2_d1_d0 xs_8_7 ys_8_7 =
  (match xs_8_7 with
    | `LH_C(h_1_2_6, t_1_2_8) -> 
      (`LH_C(h_1_2_6, ((mappend__d2_d1_d0 t_1_2_8) ys_8_7)))
    | `LH_N -> 
      ys_8_7);;
let rec mappend__d2_d1_d1 xs_6_9 ys_6_9 =
  (match xs_6_9 with
    | `LH_C(h_1_0_5, t_1_0_7) -> 
      (`LH_C(h_1_0_5, ((mappend__d2_d1_d1 t_1_0_7) ys_6_9)))
    | `LH_N -> 
      ys_6_9);;
let rec mappend__d2_d1_d2 xs_4_3 ys_4_3 =
  (match xs_4_3 with
    | `LH_C(h_6_5, t_6_7) -> 
      (`LH_C(h_6_5, ((mappend__d2_d1_d2 t_6_7) ys_4_3)))
    | `LH_N -> 
      ys_4_3);;
let rec mappend__d2_d1_d3 xs_2_0_5 ys_2_0_5 =
  (match xs_2_0_5 with
    | `LH_C(h_2_7_2, t_2_7_4) -> 
      (`LH_C(h_2_7_2, ((mappend__d2_d1_d3 t_2_7_4) ys_2_0_5)))
    | `LH_N -> 
      ys_2_0_5);;
let rec mappend__d2_d1_d4 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C(h_3_1, ((mappend__d2_d1_d4 t_3_3) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d2_d1_d5 xs_2_4_3 ys_2_4_3 =
  (match xs_2_4_3 with
    | `LH_C(h_3_2_2, t_3_2_4) -> 
      (`LH_C(h_3_2_2, ((mappend__d2_d1_d5 t_3_2_4) ys_2_4_3)))
    | `LH_N -> 
      ys_2_4_3);;
let rec mappend__d2_d1_d6 xs_1_7_0 ys_1_7_0 =
  (match xs_1_7_0 with
    | `LH_C(h_2_3_4, t_2_3_6) -> 
      (`LH_C(h_2_3_4, ((mappend__d2_d1_d6 t_2_3_6) ys_1_7_0)))
    | `LH_N -> 
      ys_1_7_0);;
let rec mappend__d2_d1_d7 xs_1_8_6 ys_1_8_6 =
  (match xs_1_8_6 with
    | `LH_C(h_2_5_2, t_2_5_4) -> 
      (`LH_C(h_2_5_2, ((mappend__d2_d1_d7 t_2_5_4) ys_1_8_6)))
    | `LH_N -> 
      ys_1_8_6);;
let rec mappend__d2_d1_d8 xs_1_2_6 ys_1_2_6 =
  (match xs_1_2_6 with
    | `LH_C(h_1_7_9, t_1_8_1) -> 
      (`LH_C(h_1_7_9, ((mappend__d2_d1_d8 t_1_8_1) ys_1_2_6)))
    | `LH_N -> 
      ys_1_2_6);;
let rec mappend__d2_d1_d9 xs_5_5 ys_5_5 =
  (match xs_5_5 with
    | `LH_C(h_8_1, t_8_3) -> 
      (`LH_C(h_8_1, ((mappend__d2_d1_d9 t_8_3) ys_5_5)))
    | `LH_N -> 
      ys_5_5);;
let rec mappend__d2_d2 xs_1_0_6 ys_1_0_6 =
  (match xs_1_0_6 with
    | `LH_C(h_1_5_0, t_1_5_2) -> 
      (`LH_C(h_1_5_0, ((mappend__d2_d2 t_1_5_2) ys_1_0_6)))
    | `LH_N -> 
      ys_1_0_6);;
let rec mappend__d2_d2_d0 xs_8_9 ys_8_9 =
  (match xs_8_9 with
    | `LH_C(h_1_2_8, t_1_3_0) -> 
      (`LH_C(h_1_2_8, ((mappend__d2_d2_d0 t_1_3_0) ys_8_9)))
    | `LH_N -> 
      ys_8_9);;
let rec mappend__d2_d2_d1 xs_1_2_3 ys_1_2_3 =
  (match xs_1_2_3 with
    | `LH_C(h_1_7_4, t_1_7_6) -> 
      (`LH_C(h_1_7_4, ((mappend__d2_d2_d1 t_1_7_6) ys_1_2_3)))
    | `LH_N -> 
      ys_1_2_3);;
let rec mappend__d2_d2_d2 xs_1_7_8 ys_1_7_8 =
  (match xs_1_7_8 with
    | `LH_C(h_2_4_3, t_2_4_5) -> 
      (`LH_C(h_2_4_3, ((mappend__d2_d2_d2 t_2_4_5) ys_1_7_8)))
    | `LH_N -> 
      ys_1_7_8);;
let rec mappend__d2_d2_d3 xs_3_4 ys_3_4 =
  (match xs_3_4 with
    | `LH_C(h_5_6, t_5_8) -> 
      (`LH_C(h_5_6, ((mappend__d2_d2_d3 t_5_8) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend__d2_d2_d4 xs_8_3 ys_8_3 =
  (match xs_8_3 with
    | `LH_C(h_1_2_1, t_1_2_3) -> 
      (`LH_C(h_1_2_1, ((mappend__d2_d2_d4 t_1_2_3) ys_8_3)))
    | `LH_N -> 
      ys_8_3);;
let rec mappend__d2_d2_d5 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_5_0, t_5_2) -> 
      (`LH_C(h_5_0, ((mappend__d2_d2_d5 t_5_2) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d2_d2_d6 xs_5_4 ys_5_4 =
  (match xs_5_4 with
    | `LH_C(h_8_0, t_8_2) -> 
      (`LH_C(h_8_0, ((mappend__d2_d2_d6 t_8_2) ys_5_4)))
    | `LH_N -> 
      ys_5_4);;
let rec mappend__d2_d2_d7 xs_1_2_9 ys_1_2_9 =
  (match xs_1_2_9 with
    | `LH_C(h_1_8_2, t_1_8_4) -> 
      (`LH_C(h_1_8_2, ((mappend__d2_d2_d7 t_1_8_4) ys_1_2_9)))
    | `LH_N -> 
      ys_1_2_9);;
let rec mappend__d2_d2_d8 xs_2_3_0 ys_2_3_0 =
  (match xs_2_3_0 with
    | `LH_C(h_3_0_8, t_3_1_0) -> 
      (`LH_C(h_3_0_8, ((mappend__d2_d2_d8 t_3_1_0) ys_2_3_0)))
    | `LH_N -> 
      ys_2_3_0);;
let rec mappend__d2_d2_d9 xs_9_9 ys_9_9 =
  (match xs_9_9 with
    | `LH_C(h_1_4_3, t_1_4_5) -> 
      (`LH_C(h_1_4_3, ((mappend__d2_d2_d9 t_1_4_5) ys_9_9)))
    | `LH_N -> 
      ys_9_9);;
let rec mappend__d2_d3 xs_1_4_0 ys_1_4_0 =
  (match xs_1_4_0 with
    | `LH_C(h_1_9_6, t_1_9_8) -> 
      (`LH_C(h_1_9_6, ((mappend__d2_d3 t_1_9_8) ys_1_4_0)))
    | `LH_N -> 
      ys_1_4_0);;
let rec mappend__d2_d3_d0 xs_6_2 ys_6_2 =
  (match xs_6_2 with
    | `LH_C(h_9_1, t_9_3) -> 
      (`LH_C(h_9_1, ((mappend__d2_d3_d0 t_9_3) ys_6_2)))
    | `LH_N -> 
      ys_6_2);;
let rec mappend__d2_d3_d1 xs_8_2 ys_8_2 =
  (match xs_8_2 with
    | `LH_C(h_1_2_0, t_1_2_2) -> 
      (`LH_C(h_1_2_0, ((mappend__d2_d3_d1 t_1_2_2) ys_8_2)))
    | `LH_N -> 
      ys_8_2);;
let rec mappend__d2_d3_d2 xs_1_3_8 ys_1_3_8 =
  (match xs_1_3_8 with
    | `LH_C(h_1_9_3, t_1_9_5) -> 
      (`LH_C(h_1_9_3, ((mappend__d2_d3_d2 t_1_9_5) ys_1_3_8)))
    | `LH_N -> 
      ys_1_3_8);;
let rec mappend__d2_d3_d3 xs_1_9_2 ys_1_9_2 =
  (match xs_1_9_2 with
    | `LH_C(h_2_5_7, t_2_5_9) -> 
      (`LH_C(h_2_5_7, ((mappend__d2_d3_d3 t_2_5_9) ys_1_9_2)))
    | `LH_N -> 
      ys_1_9_2);;
let rec mappend__d2_d3_d4 xs_3_2 ys_3_2 =
  (match xs_3_2 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend__d2_d3_d4 t_5_4) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend__d2_d3_d5 xs_2_2_7 ys_2_2_7 =
  (match xs_2_2_7 with
    | `LH_C(h_3_0_5, t_3_0_7) -> 
      (`LH_C(h_3_0_5, ((mappend__d2_d3_d5 t_3_0_7) ys_2_2_7)))
    | `LH_N -> 
      ys_2_2_7);;
let rec mappend__d2_d3_d6 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(h_4_4, t_4_6) -> 
      (`LH_C(h_4_4, ((mappend__d2_d3_d6 t_4_6) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d2_d3_d7 xs_3_1 ys_3_1 =
  (match xs_3_1 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C(h_5_1, ((mappend__d2_d3_d7 t_5_3) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend__d2_d3_d8 xs_1_3_3 ys_1_3_3 =
  (match xs_1_3_3 with
    | `LH_C(h_1_8_8, t_1_9_0) -> 
      (`LH_C(h_1_8_8, ((mappend__d2_d3_d8 t_1_9_0) ys_1_3_3)))
    | `LH_N -> 
      ys_1_3_3);;
let rec mappend__d2_d4 xs_2_4_4 ys_2_4_4 =
  (match xs_2_4_4 with
    | `LH_C(h_3_2_3, t_3_2_5) -> 
      (`LH_C(h_3_2_3, ((mappend__d2_d4 t_3_2_5) ys_2_4_4)))
    | `LH_N -> 
      ys_2_4_4);;
let rec mappend__d2_d5 xs_4_0 ys_4_0 =
  (match xs_4_0 with
    | `LH_C(h_6_2, t_6_4) -> 
      (`LH_C(h_6_2, ((mappend__d2_d5 t_6_4) ys_4_0)))
    | `LH_N -> 
      ys_4_0);;
let rec mappend__d2_d6 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_4_2, t_4_4) -> 
      (`LH_C(h_4_2, ((mappend__d2_d6 t_4_4) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d2_d7 xs_1_4_3 ys_1_4_3 =
  (match xs_1_4_3 with
    | `LH_C(h_2_0_0, t_2_0_2) -> 
      (`LH_C(h_2_0_0, ((mappend__d2_d7 t_2_0_2) ys_1_4_3)))
    | `LH_N -> 
      ys_1_4_3);;
let rec mappend__d2_d8 xs_1_7_3 ys_1_7_3 =
  (match xs_1_7_3 with
    | `LH_C(h_2_3_7, t_2_3_9) -> 
      (`LH_C(h_2_3_7, ((mappend__d2_d8 t_2_3_9) ys_1_7_3)))
    | `LH_N -> 
      ys_1_7_3);;
let rec mappend__d2_d9 xs_9_3 ys_9_3 =
  (match xs_9_3 with
    | `LH_C(h_1_3_6, t_1_3_8) -> 
      (`LH_C(h_1_3_6, ((mappend__d2_d9 t_1_3_8) ys_9_3)))
    | `LH_N -> 
      ys_9_3);;
let rec mappend__d3 xs_2_0_4 ys_2_0_4 =
  (match xs_2_0_4 with
    | `LH_C(h_2_7_1, t_2_7_3) -> 
      (`LH_C(h_2_7_1, ((mappend__d3 t_2_7_3) ys_2_0_4)))
    | `LH_N -> 
      ys_2_0_4);;
let rec mappend__d3_d0 xs_5_3 ys_5_3 =
  (match xs_5_3 with
    | `LH_C(h_7_9, t_8_1) -> 
      (`LH_C(h_7_9, ((mappend__d3_d0 t_8_1) ys_5_3)))
    | `LH_N -> 
      ys_5_3);;
let rec mappend__d3_d1 xs_8_8 ys_8_8 =
  (match xs_8_8 with
    | `LH_C(h_1_2_7, t_1_2_9) -> 
      (`LH_C(h_1_2_7, ((mappend__d3_d1 t_1_2_9) ys_8_8)))
    | `LH_N -> 
      ys_8_8);;
let rec mappend__d3_d2 xs_1_6_5 ys_1_6_5 =
  (match xs_1_6_5 with
    | `LH_C(h_2_2_9, t_2_3_1) -> 
      (`LH_C(h_2_2_9, ((mappend__d3_d2 t_2_3_1) ys_1_6_5)))
    | `LH_N -> 
      ys_1_6_5);;
let rec mappend__d3_d3 xs_1_4_1 ys_1_4_1 =
  (match xs_1_4_1 with
    | `LH_C(h_1_9_7, t_1_9_9) -> 
      (`LH_C(h_1_9_7, ((mappend__d3_d3 t_1_9_9) ys_1_4_1)))
    | `LH_N -> 
      ys_1_4_1);;
let rec mappend__d3_d4 xs_1_0_0 ys_1_0_0 =
  (match xs_1_0_0 with
    | `LH_C(h_1_4_4, t_1_4_6) -> 
      (`LH_C(h_1_4_4, ((mappend__d3_d4 t_1_4_6) ys_1_0_0)))
    | `LH_N -> 
      ys_1_0_0);;
let rec mappend__d3_d5 xs_1_9_7 ys_1_9_7 =
  (match xs_1_9_7 with
    | `LH_C(h_2_6_2, t_2_6_4) -> 
      (`LH_C(h_2_6_2, ((mappend__d3_d5 t_2_6_4) ys_1_9_7)))
    | `LH_N -> 
      ys_1_9_7);;
let rec mappend__d3_d6 xs_1_2_5 ys_1_2_5 =
  (match xs_1_2_5 with
    | `LH_C(h_1_7_6, t_1_7_8) -> 
      (`LH_C(h_1_7_6, ((mappend__d3_d6 t_1_7_8) ys_1_2_5)))
    | `LH_N -> 
      ys_1_2_5);;
let rec mappend__d3_d7 xs_5_8 ys_5_8 =
  (match xs_5_8 with
    | `LH_C(h_8_4, t_8_6) -> 
      (`LH_C(h_8_4, ((mappend__d3_d7 t_8_6) ys_5_8)))
    | `LH_N -> 
      ys_5_8);;
let rec mappend__d3_d8 xs_1_4_8 ys_1_4_8 =
  (match xs_1_4_8 with
    | `LH_C(h_2_0_6, t_2_0_8) -> 
      (`LH_C(h_2_0_6, ((mappend__d3_d8 t_2_0_8) ys_1_4_8)))
    | `LH_N -> 
      ys_1_4_8);;
let rec mappend__d3_d9 xs_1_9_8 ys_1_9_8 =
  (match xs_1_9_8 with
    | `LH_C(h_2_6_3, t_2_6_5) -> 
      (`LH_C(h_2_6_3, ((mappend__d3_d9 t_2_6_5) ys_1_9_8)))
    | `LH_N -> 
      ys_1_9_8);;
let rec mappend__d4 xs_2_2_6 ys_2_2_6 =
  (match xs_2_2_6 with
    | `LH_C(h_3_0_1, t_3_0_3) -> 
      (`LH_C(h_3_0_1, ((mappend__d4 t_3_0_3) ys_2_2_6)))
    | `LH_N -> 
      ys_2_2_6);;
let rec mappend__d4_d0 xs_1_1_2 ys_1_1_2 =
  (match xs_1_1_2 with
    | `LH_C(h_1_5_9, t_1_6_1) -> 
      (`LH_C(h_1_5_9, ((mappend__d4_d0 t_1_6_1) ys_1_1_2)))
    | `LH_N -> 
      ys_1_1_2);;
let rec mappend__d4_d1 xs_7_6 ys_7_6 =
  (match xs_7_6 with
    | `LH_C(h_1_1_2, t_1_1_4) -> 
      (`LH_C(h_1_1_2, ((mappend__d4_d1 t_1_1_4) ys_7_6)))
    | `LH_N -> 
      ys_7_6);;
let rec mappend__d4_d2 xs_1_7_6 ys_1_7_6 =
  (match xs_1_7_6 with
    | `LH_C(h_2_4_1, t_2_4_3) -> 
      (`LH_C(h_2_4_1, ((mappend__d4_d2 t_2_4_3) ys_1_7_6)))
    | `LH_N -> 
      ys_1_7_6);;
let rec mappend__d4_d3 xs_7_9 ys_7_9 =
  (match xs_7_9 with
    | `LH_C(h_1_1_5, t_1_1_7) -> 
      (`LH_C(h_1_1_5, ((mappend__d4_d3 t_1_1_7) ys_7_9)))
    | `LH_N -> 
      ys_7_9);;
let rec mappend__d4_d4 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d4_d4 t_2_6) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d4_d5 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend__d4_d5 t_3_2) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d4_d6 xs_2_4_1 ys_2_4_1 =
  (match xs_2_4_1 with
    | `LH_C(h_3_2_0, t_3_2_2) -> 
      (`LH_C(h_3_2_0, ((mappend__d4_d6 t_3_2_2) ys_2_4_1)))
    | `LH_N -> 
      ys_2_4_1);;
let rec mappend__d4_d7 xs_2_2_0 ys_2_2_0 =
  (match xs_2_2_0 with
    | `LH_C(h_2_9_5, t_2_9_7) -> 
      (`LH_C(h_2_9_5, ((mappend__d4_d7 t_2_9_7) ys_2_2_0)))
    | `LH_N -> 
      ys_2_2_0);;
let rec mappend__d4_d8 xs_9_1 ys_9_1 =
  (match xs_9_1 with
    | `LH_C(h_1_3_1, t_1_3_3) -> 
      (`LH_C(h_1_3_1, ((mappend__d4_d8 t_1_3_3) ys_9_1)))
    | `LH_N -> 
      ys_9_1);;
let rec mappend__d4_d9 xs_1_1_1 ys_1_1_1 =
  (match xs_1_1_1 with
    | `LH_C(h_1_5_8, t_1_6_0) -> 
      (`LH_C(h_1_5_8, ((mappend__d4_d9 t_1_6_0) ys_1_1_1)))
    | `LH_N -> 
      ys_1_1_1);;
let rec mappend__d5 xs_1_4_2 ys_1_4_2 =
  (match xs_1_4_2 with
    | `LH_C(h_1_9_9, t_2_0_1) -> 
      (`LH_C(h_1_9_9, ((mappend__d5 t_2_0_1) ys_1_4_2)))
    | `LH_N -> 
      ys_1_4_2);;
let rec mappend__d5_d0 xs_2_2_4 ys_2_2_4 =
  (match xs_2_2_4 with
    | `LH_C(h_2_9_9, t_3_0_1) -> 
      (`LH_C(h_2_9_9, ((mappend__d5_d0 t_3_0_1) ys_2_2_4)))
    | `LH_N -> 
      ys_2_2_4);;
let rec mappend__d5_d1 xs_4_7 ys_4_7 =
  (match xs_4_7 with
    | `LH_C(h_7_0, t_7_2) -> 
      (`LH_C(h_7_0, ((mappend__d5_d1 t_7_2) ys_4_7)))
    | `LH_N -> 
      ys_4_7);;
let rec mappend__d5_d2 xs_1_1_5 ys_1_1_5 =
  (match xs_1_1_5 with
    | `LH_C(h_1_6_2, t_1_6_4) -> 
      (`LH_C(h_1_6_2, ((mappend__d5_d2 t_1_6_4) ys_1_1_5)))
    | `LH_N -> 
      ys_1_1_5);;
let rec mappend__d5_d3 xs_8_0 ys_8_0 =
  (match xs_8_0 with
    | `LH_C(h_1_1_6, t_1_1_8) -> 
      (`LH_C(h_1_1_6, ((mappend__d5_d3 t_1_1_8) ys_8_0)))
    | `LH_N -> 
      ys_8_0);;
let rec mappend__d5_d4 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend__d5_d4 t_3_9) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d5_d5 xs_4_8 ys_4_8 =
  (match xs_4_8 with
    | `LH_C(h_7_2, t_7_4) -> 
      (`LH_C(h_7_2, ((mappend__d5_d5 t_7_4) ys_4_8)))
    | `LH_N -> 
      ys_4_8);;
let rec mappend__d5_d6 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_4_3, t_4_5) -> 
      (`LH_C(h_4_3, ((mappend__d5_d6 t_4_5) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d5_d7 xs_1_4_6 ys_1_4_6 =
  (match xs_1_4_6 with
    | `LH_C(h_2_0_4, t_2_0_6) -> 
      (`LH_C(h_2_0_4, ((mappend__d5_d7 t_2_0_6) ys_1_4_6)))
    | `LH_N -> 
      ys_1_4_6);;
let rec mappend__d5_d8 xs_1_9_3 ys_1_9_3 =
  (match xs_1_9_3 with
    | `LH_C(h_2_5_8, t_2_6_0) -> 
      (`LH_C(h_2_5_8, ((mappend__d5_d8 t_2_6_0) ys_1_9_3)))
    | `LH_N -> 
      ys_1_9_3);;
let rec mappend__d5_d9 xs_6_8 ys_6_8 =
  (match xs_6_8 with
    | `LH_C(h_1_0_3, t_1_0_5) -> 
      (`LH_C(h_1_0_3, ((mappend__d5_d9 t_1_0_5) ys_6_8)))
    | `LH_N -> 
      ys_6_8);;
let rec mappend__d6 xs_1_8_9 ys_1_8_9 =
  (match xs_1_8_9 with
    | `LH_C(h_2_5_5, t_2_5_7) -> 
      (`LH_C(h_2_5_5, ((mappend__d6 t_2_5_7) ys_1_8_9)))
    | `LH_N -> 
      ys_1_8_9);;
let rec mappend__d6_d0 xs_1_5_4 ys_1_5_4 =
  (match xs_1_5_4 with
    | `LH_C(h_2_1_5, t_2_1_7) -> 
      (`LH_C(h_2_1_5, ((mappend__d6_d0 t_2_1_7) ys_1_5_4)))
    | `LH_N -> 
      ys_1_5_4);;
let rec mappend__d6_d1 xs_1_5_5 ys_1_5_5 =
  (match xs_1_5_5 with
    | `LH_C(h_2_1_6, t_2_1_8) -> 
      (`LH_C(h_2_1_6, ((mappend__d6_d1 t_2_1_8) ys_1_5_5)))
    | `LH_N -> 
      ys_1_5_5);;
let rec mappend__d6_d2 xs_2_4_0 ys_2_4_0 =
  (match xs_2_4_0 with
    | `LH_C(h_3_1_9, t_3_2_1) -> 
      (`LH_C(h_3_1_9, ((mappend__d6_d2 t_3_2_1) ys_2_4_0)))
    | `LH_N -> 
      ys_2_4_0);;
let rec mappend__d6_d3 xs_1_0_5 ys_1_0_5 =
  (match xs_1_0_5 with
    | `LH_C(h_1_4_9, t_1_5_1) -> 
      (`LH_C(h_1_4_9, ((mappend__d6_d3 t_1_5_1) ys_1_0_5)))
    | `LH_N -> 
      ys_1_0_5);;
let rec mappend__d6_d4 xs_2_1_5 ys_2_1_5 =
  (match xs_2_1_5 with
    | `LH_C(h_2_8_8, t_2_9_0) -> 
      (`LH_C(h_2_8_8, ((mappend__d6_d4 t_2_9_0) ys_2_1_5)))
    | `LH_N -> 
      ys_2_1_5);;
let rec mappend__d6_d5 xs_7_8 ys_7_8 =
  (match xs_7_8 with
    | `LH_C(h_1_1_4, t_1_1_6) -> 
      (`LH_C(h_1_1_4, ((mappend__d6_d5 t_1_1_6) ys_7_8)))
    | `LH_N -> 
      ys_7_8);;
let rec mappend__d6_d6 xs_8_4 ys_8_4 =
  (match xs_8_4 with
    | `LH_C(h_1_2_2, t_1_2_4) -> 
      (`LH_C(h_1_2_2, ((mappend__d6_d6 t_1_2_4) ys_8_4)))
    | `LH_N -> 
      ys_8_4);;
let rec mappend__d6_d7 xs_1_7_7 ys_1_7_7 =
  (match xs_1_7_7 with
    | `LH_C(h_2_4_2, t_2_4_4) -> 
      (`LH_C(h_2_4_2, ((mappend__d6_d7 t_2_4_4) ys_1_7_7)))
    | `LH_N -> 
      ys_1_7_7);;
let rec mappend__d6_d8 xs_9_6 ys_9_6 =
  (match xs_9_6 with
    | `LH_C(h_1_3_9, t_1_4_1) -> 
      (`LH_C(h_1_3_9, ((mappend__d6_d8 t_1_4_1) ys_9_6)))
    | `LH_N -> 
      ys_9_6);;
let rec mappend__d6_d9 xs_9_7 ys_9_7 =
  (match xs_9_7 with
    | `LH_C(h_1_4_0, t_1_4_2) -> 
      (`LH_C(h_1_4_0, ((mappend__d6_d9 t_1_4_2) ys_9_7)))
    | `LH_N -> 
      ys_9_7);;
let rec mappend__d7 xs_2_2_5 ys_2_2_5 =
  (match xs_2_2_5 with
    | `LH_C(h_3_0_0, t_3_0_2) -> 
      (`LH_C(h_3_0_0, ((mappend__d7 t_3_0_2) ys_2_2_5)))
    | `LH_N -> 
      ys_2_2_5);;
let rec mappend__d7_d0 xs_1_8_3 ys_1_8_3 =
  (match xs_1_8_3 with
    | `LH_C(h_2_4_9, t_2_5_1) -> 
      (`LH_C(h_2_4_9, ((mappend__d7_d0 t_2_5_1) ys_1_8_3)))
    | `LH_N -> 
      ys_1_8_3);;
let rec mappend__d7_d1 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C(h_4_1, ((mappend__d7_d1 t_4_3) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d7_d2 xs_2_4_6 ys_2_4_6 =
  (match xs_2_4_6 with
    | `LH_C(h_3_2_5, t_3_2_7) -> 
      (`LH_C(h_3_2_5, ((mappend__d7_d2 t_3_2_7) ys_2_4_6)))
    | `LH_N -> 
      ys_2_4_6);;
let rec mappend__d7_d3 xs_6_3 ys_6_3 =
  (match xs_6_3 with
    | `LH_C(h_9_2, t_9_4) -> 
      (`LH_C(h_9_2, ((mappend__d7_d3 t_9_4) ys_6_3)))
    | `LH_N -> 
      ys_6_3);;
let rec mappend__d7_d4 xs_1_5_7 ys_1_5_7 =
  (match xs_1_5_7 with
    | `LH_C(h_2_1_9, t_2_2_1) -> 
      (`LH_C(h_2_1_9, ((mappend__d7_d4 t_2_2_1) ys_1_5_7)))
    | `LH_N -> 
      ys_1_5_7);;
let rec mappend__d7_d5 xs_1_3_6 ys_1_3_6 =
  (match xs_1_3_6 with
    | `LH_C(h_1_9_1, t_1_9_3) -> 
      (`LH_C(h_1_9_1, ((mappend__d7_d5 t_1_9_3) ys_1_3_6)))
    | `LH_N -> 
      ys_1_3_6);;
let rec mappend__d7_d6 xs_1_7_4 ys_1_7_4 =
  (match xs_1_7_4 with
    | `LH_C(h_2_3_9, t_2_4_1) -> 
      (`LH_C(h_2_3_9, ((mappend__d7_d6 t_2_4_1) ys_1_7_4)))
    | `LH_N -> 
      ys_1_7_4);;
let rec mappend__d7_d7 xs_4_9 ys_4_9 =
  (match xs_4_9 with
    | `LH_C(h_7_3, t_7_5) -> 
      (`LH_C(h_7_3, ((mappend__d7_d7 t_7_5) ys_4_9)))
    | `LH_N -> 
      ys_4_9);;
let rec mappend__d7_d8 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C(h_4_7, ((mappend__d7_d8 t_4_9) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d7_d9 xs_2_0_1 ys_2_0_1 =
  (match xs_2_0_1 with
    | `LH_C(h_2_6_7, t_2_6_9) -> 
      (`LH_C(h_2_6_7, ((mappend__d7_d9 t_2_6_9) ys_2_0_1)))
    | `LH_N -> 
      ys_2_0_1);;
let rec mappend__d8 xs_1_5_1 ys_1_5_1 =
  (match xs_1_5_1 with
    | `LH_C(h_2_1_1, t_2_1_3) -> 
      (`LH_C(h_2_1_1, ((mappend__d8 t_2_1_3) ys_1_5_1)))
    | `LH_N -> 
      ys_1_5_1);;
let rec mappend__d8_d0 xs_1_2_8 ys_1_2_8 =
  (match xs_1_2_8 with
    | `LH_C(h_1_8_1, t_1_8_3) -> 
      (`LH_C(h_1_8_1, ((mappend__d8_d0 t_1_8_3) ys_1_2_8)))
    | `LH_N -> 
      ys_1_2_8);;
let rec mappend__d8_d1 xs_1_4_7 ys_1_4_7 =
  (match xs_1_4_7 with
    | `LH_C(h_2_0_5, t_2_0_7) -> 
      (`LH_C(h_2_0_5, ((mappend__d8_d1 t_2_0_7) ys_1_4_7)))
    | `LH_N -> 
      ys_1_4_7);;
let rec mappend__d8_d2 xs_3_5 ys_3_5 =
  (match xs_3_5 with
    | `LH_C(h_5_7, t_5_9) -> 
      (`LH_C(h_5_7, ((mappend__d8_d2 t_5_9) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec mappend__d8_d3 xs_2_4_8 ys_2_4_8 =
  (match xs_2_4_8 with
    | `LH_C(h_3_2_7, t_3_2_9) -> 
      (`LH_C(h_3_2_7, ((mappend__d8_d3 t_3_2_9) ys_2_4_8)))
    | `LH_N -> 
      ys_2_4_8);;
let rec mappend__d8_d4 xs_1_0_8 ys_1_0_8 =
  (match xs_1_0_8 with
    | `LH_C(h_1_5_2, t_1_5_4) -> 
      (`LH_C(h_1_5_2, ((mappend__d8_d4 t_1_5_4) ys_1_0_8)))
    | `LH_N -> 
      ys_1_0_8);;
let rec mappend__d8_d5 xs_1_7_5 ys_1_7_5 =
  (match xs_1_7_5 with
    | `LH_C(h_2_4_0, t_2_4_2) -> 
      (`LH_C(h_2_4_0, ((mappend__d8_d5 t_2_4_2) ys_1_7_5)))
    | `LH_N -> 
      ys_1_7_5);;
let rec mappend__d8_d6 xs_3_6 ys_3_6 =
  (match xs_3_6 with
    | `LH_C(h_5_8, t_6_0) -> 
      (`LH_C(h_5_8, ((mappend__d8_d6 t_6_0) ys_3_6)))
    | `LH_N -> 
      ys_3_6);;
let rec mappend__d8_d7 xs_2_2_1 ys_2_2_1 =
  (match xs_2_2_1 with
    | `LH_C(h_2_9_6, t_2_9_8) -> 
      (`LH_C(h_2_9_6, ((mappend__d8_d7 t_2_9_8) ys_2_2_1)))
    | `LH_N -> 
      ys_2_2_1);;
let rec mappend__d8_d8 xs_2_2_2 ys_2_2_2 =
  (match xs_2_2_2 with
    | `LH_C(h_2_9_7, t_2_9_9) -> 
      (`LH_C(h_2_9_7, ((mappend__d8_d8 t_2_9_9) ys_2_2_2)))
    | `LH_N -> 
      ys_2_2_2);;
let rec mappend__d8_d9 xs_1_0_4 ys_1_0_4 =
  (match xs_1_0_4 with
    | `LH_C(h_1_4_8, t_1_5_0) -> 
      (`LH_C(h_1_4_8, ((mappend__d8_d9 t_1_5_0) ys_1_0_4)))
    | `LH_N -> 
      ys_1_0_4);;
let rec mappend__d9 xs_1_5_8 ys_1_5_8 =
  (match xs_1_5_8 with
    | `LH_C(h_2_2_1, t_2_2_3) -> 
      (`LH_C(h_2_2_1, ((mappend__d9 t_2_2_3) ys_1_5_8)))
    | `LH_N -> 
      ys_1_5_8);;
let rec mappend__d9_d0 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend__d9_d0 t_4_1) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend__d9_d1 xs_5_2 ys_5_2 =
  (match xs_5_2 with
    | `LH_C(h_7_8, t_8_0) -> 
      (`LH_C(h_7_8, ((mappend__d9_d1 t_8_0) ys_5_2)))
    | `LH_N -> 
      ys_5_2);;
let rec mappend__d9_d2 xs_1_8_5 ys_1_8_5 =
  (match xs_1_8_5 with
    | `LH_C(h_2_5_1, t_2_5_3) -> 
      (`LH_C(h_2_5_1, ((mappend__d9_d2 t_2_5_3) ys_1_8_5)))
    | `LH_N -> 
      ys_1_8_5);;
let rec mappend__d9_d3 xs_4_1 ys_4_1 =
  (match xs_4_1 with
    | `LH_C(h_6_3, t_6_5) -> 
      (`LH_C(h_6_3, ((mappend__d9_d3 t_6_5) ys_4_1)))
    | `LH_N -> 
      ys_4_1);;
let rec mappend__d9_d4 xs_1_3_5 ys_1_3_5 =
  (match xs_1_3_5 with
    | `LH_C(h_1_8_9, t_1_9_1) -> 
      (`LH_C(h_1_8_9, ((mappend__d9_d4 t_1_9_1) ys_1_3_5)))
    | `LH_N -> 
      ys_1_3_5);;
let rec mappend__d9_d5 xs_1_1_3 ys_1_1_3 =
  (match xs_1_1_3 with
    | `LH_C(h_1_6_0, t_1_6_2) -> 
      (`LH_C(h_1_6_0, ((mappend__d9_d5 t_1_6_2) ys_1_1_3)))
    | `LH_N -> 
      ys_1_1_3);;
let rec mappend__d9_d6 xs_1_2_2 ys_1_2_2 =
  (match xs_1_2_2 with
    | `LH_C(h_1_7_1, t_1_7_3) -> 
      (`LH_C(h_1_7_1, ((mappend__d9_d6 t_1_7_3) ys_1_2_2)))
    | `LH_N -> 
      ys_1_2_2);;
let rec mappend__d9_d7 xs_1_4_4 ys_1_4_4 =
  (match xs_1_4_4 with
    | `LH_C(h_2_0_2, t_2_0_4) -> 
      (`LH_C(h_2_0_2, ((mappend__d9_d7 t_2_0_4) ys_1_4_4)))
    | `LH_N -> 
      ys_1_4_4);;
let rec mappend__d9_d8 xs_2_0_3 ys_2_0_3 =
  (match xs_2_0_3 with
    | `LH_C(h_2_7_0, t_2_7_2) -> 
      (`LH_C(h_2_7_0, ((mappend__d9_d8 t_2_7_2) ys_2_0_3)))
    | `LH_N -> 
      ys_2_0_3);;
let rec mappend__d9_d9 xs_1_1_7 ys_1_1_7 =
  (match xs_1_1_7 with
    | `LH_C(h_1_6_4, t_1_6_6) -> 
      (`LH_C(h_1_6_4, ((mappend__d9_d9 t_1_6_6) ys_1_1_7)))
    | `LH_N -> 
      ys_1_1_7);;
let rec max__d0 _lh_max_arg1_3 _lh_max_arg2_3 =
  (if (_lh_max_arg1_3 < _lh_max_arg2_3) then
    _lh_max_arg2_3
  else
    _lh_max_arg1_3);;
let rec max__d1 _lh_max_arg1_2 _lh_max_arg2_2 =
  (if (_lh_max_arg1_2 < _lh_max_arg2_2) then
    _lh_max_arg2_2
  else
    _lh_max_arg1_2);;
let rec max__d1_d0 _lh_max_arg1_5 _lh_max_arg2_5 =
  (if (_lh_max_arg1_5 < _lh_max_arg2_5) then
    _lh_max_arg2_5
  else
    _lh_max_arg1_5);;
let rec max__d1_d1 _lh_max_arg1_1_1 _lh_max_arg2_1_1 =
  (if (_lh_max_arg1_1_1 < _lh_max_arg2_1_1) then
    _lh_max_arg2_1_1
  else
    _lh_max_arg1_1_1);;
let rec max__d2 _lh_max_arg1_4 _lh_max_arg2_4 =
  (if (_lh_max_arg1_4 < _lh_max_arg2_4) then
    _lh_max_arg2_4
  else
    _lh_max_arg1_4);;
let rec max__d3 _lh_max_arg1_8 _lh_max_arg2_8 =
  (if (_lh_max_arg1_8 < _lh_max_arg2_8) then
    _lh_max_arg2_8
  else
    _lh_max_arg1_8);;
let rec max__d4 _lh_max_arg1_1_0 _lh_max_arg2_1_0 =
  (if (_lh_max_arg1_1_0 < _lh_max_arg2_1_0) then
    _lh_max_arg2_1_0
  else
    _lh_max_arg1_1_0);;
let rec max__d5 _lh_max_arg1_6 _lh_max_arg2_6 =
  (if (_lh_max_arg1_6 < _lh_max_arg2_6) then
    _lh_max_arg2_6
  else
    _lh_max_arg1_6);;
let rec max__d6 _lh_max_arg1_9 _lh_max_arg2_9 =
  (if (_lh_max_arg1_9 < _lh_max_arg2_9) then
    _lh_max_arg2_9
  else
    _lh_max_arg1_9);;
let rec max__d7 _lh_max_arg1_1_2 _lh_max_arg2_1_2 =
  (if (_lh_max_arg1_1_2 < _lh_max_arg2_1_2) then
    _lh_max_arg2_1_2
  else
    _lh_max_arg1_1_2);;
let rec max__d8 _lh_max_arg1_7 _lh_max_arg2_7 =
  (if (_lh_max_arg1_7 < _lh_max_arg2_7) then
    _lh_max_arg2_7
  else
    _lh_max_arg1_7);;
let rec max__d9 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 < _lh_max_arg2_1) then
    _lh_max_arg2_1
  else
    _lh_max_arg1_1);;
let rec maybe__d0 _lh_maybe_arg1_8 _lh_maybe_arg2_8 _lh_maybe_arg3_8 =
  (match _lh_maybe_arg3_8 with
    | `Nothing -> 
      _lh_maybe_arg1_8
    | `Just(_lh_maybe_Just_0_8) -> 
      (_lh_maybe_arg2_8 _lh_maybe_Just_0_8)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1 _lh_maybe_arg1_1_3 _lh_maybe_arg2_1_3 _lh_maybe_arg3_1_3 =
  (match _lh_maybe_arg3_1_3 with
    | `Nothing -> 
      _lh_maybe_arg1_1_3
    | `Just(_lh_maybe_Just_0_1_3) -> 
      (_lh_maybe_arg2_1_3 _lh_maybe_Just_0_1_3)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d0 _lh_maybe_arg1_1_6 _lh_maybe_arg2_1_6 _lh_maybe_arg3_1_6 =
  (match _lh_maybe_arg3_1_6 with
    | `Nothing -> 
      _lh_maybe_arg1_1_6
    | `Just(_lh_maybe_Just_0_1_6) -> 
      (_lh_maybe_arg2_1_6 _lh_maybe_Just_0_1_6)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d1 _lh_maybe_arg1_9 _lh_maybe_arg2_9 _lh_maybe_arg3_9 =
  (match _lh_maybe_arg3_9 with
    | `Nothing -> 
      _lh_maybe_arg1_9
    | `Just(_lh_maybe_Just_0_9) -> 
      (_lh_maybe_arg2_9 _lh_maybe_Just_0_9)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d2 _lh_maybe_arg1_6 _lh_maybe_arg2_6 _lh_maybe_arg3_6 =
  (match _lh_maybe_arg3_6 with
    | `Nothing -> 
      _lh_maybe_arg1_6
    | `Just(_lh_maybe_Just_0_6) -> 
      (_lh_maybe_arg2_6 _lh_maybe_Just_0_6)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d3 _lh_maybe_arg1_1_2 _lh_maybe_arg2_1_2 _lh_maybe_arg3_1_2 =
  (match _lh_maybe_arg3_1_2 with
    | `Nothing -> 
      _lh_maybe_arg1_1_2
    | `Just(_lh_maybe_Just_0_1_2) -> 
      (_lh_maybe_arg2_1_2 _lh_maybe_Just_0_1_2)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d4 _lh_maybe_arg1_5 _lh_maybe_arg2_5 _lh_maybe_arg3_5 =
  (match _lh_maybe_arg3_5 with
    | `Nothing -> 
      _lh_maybe_arg1_5
    | `Just(_lh_maybe_Just_0_5) -> 
      (_lh_maybe_arg2_5 _lh_maybe_Just_0_5)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d5 _lh_maybe_arg1_2_6 _lh_maybe_arg2_2_6 _lh_maybe_arg3_2_6 =
  (match _lh_maybe_arg3_2_6 with
    | `Nothing -> 
      _lh_maybe_arg1_2_6
    | `Just(_lh_maybe_Just_0_2_6) -> 
      (_lh_maybe_arg2_2_6 _lh_maybe_Just_0_2_6)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d6 _lh_maybe_arg1_2 _lh_maybe_arg2_2 _lh_maybe_arg3_2 =
  (match _lh_maybe_arg3_2 with
    | `Nothing -> 
      _lh_maybe_arg1_2
    | `Just(_lh_maybe_Just_0_2) -> 
      (_lh_maybe_arg2_2 _lh_maybe_Just_0_2)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d7 _lh_maybe_arg1_4 _lh_maybe_arg2_4 _lh_maybe_arg3_4 =
  (match _lh_maybe_arg3_4 with
    | `Nothing -> 
      _lh_maybe_arg1_4
    | `Just(_lh_maybe_Just_0_4) -> 
      (_lh_maybe_arg2_4 _lh_maybe_Just_0_4)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d8 _lh_maybe_arg1_3 _lh_maybe_arg2_3 _lh_maybe_arg3_3 =
  (match _lh_maybe_arg3_3 with
    | `Nothing -> 
      _lh_maybe_arg1_3
    | `Just(_lh_maybe_Just_0_3) -> 
      (_lh_maybe_arg2_3 _lh_maybe_Just_0_3)
    | _ -> 
      (failwith "error"));;
let rec maybe__d1_d9 _lh_maybe_arg1_1_8 _lh_maybe_arg2_1_8 _lh_maybe_arg3_1_8 =
  (match _lh_maybe_arg3_1_8 with
    | `Nothing -> 
      _lh_maybe_arg1_1_8
    | `Just(_lh_maybe_Just_0_1_8) -> 
      (_lh_maybe_arg2_1_8 _lh_maybe_Just_0_1_8)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2 _lh_maybe_arg1_3_4 _lh_maybe_arg2_3_4 _lh_maybe_arg3_3_4 =
  (match _lh_maybe_arg3_3_4 with
    | `Nothing -> 
      _lh_maybe_arg1_3_4
    | `Just(_lh_maybe_Just_0_3_4) -> 
      (_lh_maybe_arg2_3_4 _lh_maybe_Just_0_3_4)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d0 _lh_maybe_arg1_1 _lh_maybe_arg2_1 _lh_maybe_arg3_1 =
  (match _lh_maybe_arg3_1 with
    | `Nothing -> 
      _lh_maybe_arg1_1
    | `Just(_lh_maybe_Just_0_1) -> 
      (_lh_maybe_arg2_1 _lh_maybe_Just_0_1)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d1 _lh_maybe_arg1_3_0 _lh_maybe_arg2_3_0 _lh_maybe_arg3_3_0 =
  (match _lh_maybe_arg3_3_0 with
    | `Nothing -> 
      _lh_maybe_arg1_3_0
    | `Just(_lh_maybe_Just_0_3_0) -> 
      (_lh_maybe_arg2_3_0 _lh_maybe_Just_0_3_0)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d2 _lh_maybe_arg1_1_1 _lh_maybe_arg2_1_1 _lh_maybe_arg3_1_1 =
  (match _lh_maybe_arg3_1_1 with
    | `Nothing -> 
      _lh_maybe_arg1_1_1
    | `Just(_lh_maybe_Just_0_1_1) -> 
      (_lh_maybe_arg2_1_1 _lh_maybe_Just_0_1_1)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d3 _lh_maybe_arg1_1_4 _lh_maybe_arg2_1_4 _lh_maybe_arg3_1_4 =
  (match _lh_maybe_arg3_1_4 with
    | `Nothing -> 
      _lh_maybe_arg1_1_4
    | `Just(_lh_maybe_Just_0_1_4) -> 
      (_lh_maybe_arg2_1_4 _lh_maybe_Just_0_1_4)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d4 _lh_maybe_arg1_1_5 _lh_maybe_arg2_1_5 _lh_maybe_arg3_1_5 =
  (match _lh_maybe_arg3_1_5 with
    | `Nothing -> 
      _lh_maybe_arg1_1_5
    | `Just(_lh_maybe_Just_0_1_5) -> 
      (_lh_maybe_arg2_1_5 _lh_maybe_Just_0_1_5)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d5 _lh_maybe_arg1_3_3 _lh_maybe_arg2_3_3 _lh_maybe_arg3_3_3 =
  (match _lh_maybe_arg3_3_3 with
    | `Nothing -> 
      _lh_maybe_arg1_3_3
    | `Just(_lh_maybe_Just_0_3_3) -> 
      (_lh_maybe_arg2_3_3 _lh_maybe_Just_0_3_3)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d6 _lh_maybe_arg1_1_9 _lh_maybe_arg2_1_9 _lh_maybe_arg3_1_9 =
  (match _lh_maybe_arg3_1_9 with
    | `Nothing -> 
      _lh_maybe_arg1_1_9
    | `Just(_lh_maybe_Just_0_1_9) -> 
      (_lh_maybe_arg2_1_9 _lh_maybe_Just_0_1_9)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d7 _lh_maybe_arg1_2_8 _lh_maybe_arg2_2_8 _lh_maybe_arg3_2_8 =
  (match _lh_maybe_arg3_2_8 with
    | `Nothing -> 
      _lh_maybe_arg1_2_8
    | `Just(_lh_maybe_Just_0_2_8) -> 
      (_lh_maybe_arg2_2_8 _lh_maybe_Just_0_2_8)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d8 _lh_maybe_arg1_2_2 _lh_maybe_arg2_2_2 _lh_maybe_arg3_2_2 =
  (match _lh_maybe_arg3_2_2 with
    | `Nothing -> 
      _lh_maybe_arg1_2_2
    | `Just(_lh_maybe_Just_0_2_2) -> 
      (_lh_maybe_arg2_2_2 _lh_maybe_Just_0_2_2)
    | _ -> 
      (failwith "error"));;
let rec maybe__d2_d9 _lh_maybe_arg1_1_0 _lh_maybe_arg2_1_0 _lh_maybe_arg3_1_0 =
  (match _lh_maybe_arg3_1_0 with
    | `Nothing -> 
      _lh_maybe_arg1_1_0
    | `Just(_lh_maybe_Just_0_1_0) -> 
      (_lh_maybe_arg2_1_0 _lh_maybe_Just_0_1_0)
    | _ -> 
      (failwith "error"));;
let rec maybe__d3 _lh_maybe_arg1_3_2 _lh_maybe_arg2_3_2 _lh_maybe_arg3_3_2 =
  (match _lh_maybe_arg3_3_2 with
    | `Nothing -> 
      _lh_maybe_arg1_3_2
    | `Just(_lh_maybe_Just_0_3_2) -> 
      (_lh_maybe_arg2_3_2 _lh_maybe_Just_0_3_2)
    | _ -> 
      (failwith "error"));;
let rec maybe__d3_d0 _lh_maybe_arg1_3_1 _lh_maybe_arg2_3_1 _lh_maybe_arg3_3_1 =
  (match _lh_maybe_arg3_3_1 with
    | `Nothing -> 
      _lh_maybe_arg1_3_1
    | `Just(_lh_maybe_Just_0_3_1) -> 
      (_lh_maybe_arg2_3_1 _lh_maybe_Just_0_3_1)
    | _ -> 
      (failwith "error"));;
let rec maybe__d3_d1 _lh_maybe_arg1_1_7 _lh_maybe_arg2_1_7 _lh_maybe_arg3_1_7 =
  (match _lh_maybe_arg3_1_7 with
    | `Nothing -> 
      _lh_maybe_arg1_1_7
    | `Just(_lh_maybe_Just_0_1_7) -> 
      (_lh_maybe_arg2_1_7 _lh_maybe_Just_0_1_7)
    | _ -> 
      (failwith "error"));;
let rec maybe__d3_d2 _lh_maybe_arg1_2_5 _lh_maybe_arg2_2_5 _lh_maybe_arg3_2_5 =
  (match _lh_maybe_arg3_2_5 with
    | `Nothing -> 
      _lh_maybe_arg1_2_5
    | `Just(_lh_maybe_Just_0_2_5) -> 
      (_lh_maybe_arg2_2_5 _lh_maybe_Just_0_2_5)
    | _ -> 
      (failwith "error"));;
let rec maybe__d3_d3 _lh_maybe_arg1_2_3 _lh_maybe_arg2_2_3 _lh_maybe_arg3_2_3 =
  (match _lh_maybe_arg3_2_3 with
    | `Nothing -> 
      _lh_maybe_arg1_2_3
    | `Just(_lh_maybe_Just_0_2_3) -> 
      (_lh_maybe_arg2_2_3 _lh_maybe_Just_0_2_3)
    | _ -> 
      (failwith "error"));;
let rec maybe__d3_d4 _lh_maybe_arg1_2_0 _lh_maybe_arg2_2_0 _lh_maybe_arg3_2_0 =
  (match _lh_maybe_arg3_2_0 with
    | `Nothing -> 
      _lh_maybe_arg1_2_0
    | `Just(_lh_maybe_Just_0_2_0) -> 
      (_lh_maybe_arg2_2_0 _lh_maybe_Just_0_2_0)
    | _ -> 
      (failwith "error"));;
let rec maybe__d3_d5 _lh_maybe_arg1_2_9 _lh_maybe_arg2_2_9 _lh_maybe_arg3_2_9 =
  (match _lh_maybe_arg3_2_9 with
    | `Nothing -> 
      _lh_maybe_arg1_2_9
    | `Just(_lh_maybe_Just_0_2_9) -> 
      (_lh_maybe_arg2_2_9 _lh_maybe_Just_0_2_9)
    | _ -> 
      (failwith "error"));;
let rec maybe__d4 _lh_maybe_arg1_2_1 _lh_maybe_arg2_2_1 _lh_maybe_arg3_2_1 =
  (match _lh_maybe_arg3_2_1 with
    | `Nothing -> 
      _lh_maybe_arg1_2_1
    | `Just(_lh_maybe_Just_0_2_1) -> 
      (_lh_maybe_arg2_2_1 _lh_maybe_Just_0_2_1)
    | _ -> 
      (failwith "error"));;
let rec maybe__d5 _lh_maybe_arg1_2_4 _lh_maybe_arg2_2_4 _lh_maybe_arg3_2_4 =
  (match _lh_maybe_arg3_2_4 with
    | `Nothing -> 
      _lh_maybe_arg1_2_4
    | `Just(_lh_maybe_Just_0_2_4) -> 
      (_lh_maybe_arg2_2_4 _lh_maybe_Just_0_2_4)
    | _ -> 
      (failwith "error"));;
let rec maybe__d6 _lh_maybe_arg1_3_5 _lh_maybe_arg2_3_5 _lh_maybe_arg3_3_5 =
  (match _lh_maybe_arg3_3_5 with
    | `Nothing -> 
      _lh_maybe_arg1_3_5
    | `Just(_lh_maybe_Just_0_3_5) -> 
      (_lh_maybe_arg2_3_5 _lh_maybe_Just_0_3_5)
    | _ -> 
      (failwith "error"));;
let rec maybe__d7 _lh_maybe_arg1_3_6 _lh_maybe_arg2_3_6 _lh_maybe_arg3_3_6 =
  (match _lh_maybe_arg3_3_6 with
    | `Nothing -> 
      _lh_maybe_arg1_3_6
    | `Just(_lh_maybe_Just_0_3_6) -> 
      (_lh_maybe_arg2_3_6 _lh_maybe_Just_0_3_6)
    | _ -> 
      (failwith "error"));;
let rec maybe__d8 _lh_maybe_arg1_2_7 _lh_maybe_arg2_2_7 _lh_maybe_arg3_2_7 =
  (match _lh_maybe_arg3_2_7 with
    | `Nothing -> 
      _lh_maybe_arg1_2_7
    | `Just(_lh_maybe_Just_0_2_7) -> 
      (_lh_maybe_arg2_2_7 _lh_maybe_Just_0_2_7)
    | _ -> 
      (failwith "error"));;
let rec maybe__d9 _lh_maybe_arg1_7 _lh_maybe_arg2_7 _lh_maybe_arg3_7 =
  (match _lh_maybe_arg3_7 with
    | `Nothing -> 
      _lh_maybe_arg1_7
    | `Just(_lh_maybe_Just_0_7) -> 
      (_lh_maybe_arg2_7 _lh_maybe_Just_0_7)
    | _ -> 
      (failwith "error"));;
let rec min__d0 _lh_min_arg1_1_1 _lh_min_arg2_1_1 =
  (if (_lh_min_arg1_1_1 < _lh_min_arg2_1_1) then
    _lh_min_arg1_1_1
  else
    _lh_min_arg2_1_1);;
let rec min__d1 _lh_min_arg1_1_0 _lh_min_arg2_1_0 =
  (if (_lh_min_arg1_1_0 < _lh_min_arg2_1_0) then
    _lh_min_arg1_1_0
  else
    _lh_min_arg2_1_0);;
let rec min__d1_d0 _lh_min_arg1_9 _lh_min_arg2_9 =
  (if (_lh_min_arg1_9 < _lh_min_arg2_9) then
    _lh_min_arg1_9
  else
    _lh_min_arg2_9);;
let rec min__d1_d1 _lh_min_arg1_7 _lh_min_arg2_7 =
  (if (_lh_min_arg1_7 < _lh_min_arg2_7) then
    _lh_min_arg1_7
  else
    _lh_min_arg2_7);;
let rec min__d2 _lh_min_arg1_4 _lh_min_arg2_4 =
  (if (_lh_min_arg1_4 < _lh_min_arg2_4) then
    _lh_min_arg1_4
  else
    _lh_min_arg2_4);;
let rec min__d3 _lh_min_arg1_6 _lh_min_arg2_6 =
  (if (_lh_min_arg1_6 < _lh_min_arg2_6) then
    _lh_min_arg1_6
  else
    _lh_min_arg2_6);;
let rec min__d4 _lh_min_arg1_2 _lh_min_arg2_2 =
  (if (_lh_min_arg1_2 < _lh_min_arg2_2) then
    _lh_min_arg1_2
  else
    _lh_min_arg2_2);;
let rec min__d5 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 < _lh_min_arg2_1) then
    _lh_min_arg1_1
  else
    _lh_min_arg2_1);;
let rec min__d6 _lh_min_arg1_5 _lh_min_arg2_5 =
  (if (_lh_min_arg1_5 < _lh_min_arg2_5) then
    _lh_min_arg1_5
  else
    _lh_min_arg2_5);;
let rec min__d7 _lh_min_arg1_3 _lh_min_arg2_3 =
  (if (_lh_min_arg1_3 < _lh_min_arg2_3) then
    _lh_min_arg1_3
  else
    _lh_min_arg2_3);;
let rec min__d8 _lh_min_arg1_1_2 _lh_min_arg2_1_2 =
  (if (_lh_min_arg1_1_2 < _lh_min_arg2_1_2) then
    _lh_min_arg1_1_2
  else
    _lh_min_arg2_1_2);;
let rec min__d9 _lh_min_arg1_8 _lh_min_arg2_8 =
  (if (_lh_min_arg1_8 < _lh_min_arg2_8) then
    _lh_min_arg1_8
  else
    _lh_min_arg2_8);;
let rec null__d0 _lh_null_arg1_3 =
  (match _lh_null_arg1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_3, _lh_null_LH_C_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d2 _lh_null_arg1_4 =
  (match _lh_null_arg1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_4, _lh_null_LH_C_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d3 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec onboard__d0 _lh_onboard_arg1_3_4 =
  (match _lh_onboard_arg1_3_4 with
    | `LH_P2(_lh_onboard_LH_P2_0_3_4, _lh_onboard_LH_P2_1_3_4) -> 
      ((((1 <= _lh_onboard_LH_P2_0_3_4) && (_lh_onboard_LH_P2_0_3_4 <= 8)) && (1 <= _lh_onboard_LH_P2_1_3_4)) && (_lh_onboard_LH_P2_1_3_4 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1 _lh_onboard_arg1_3_5 =
  (match _lh_onboard_arg1_3_5 with
    | `LH_P2(_lh_onboard_LH_P2_0_3_5, _lh_onboard_LH_P2_1_3_5) -> 
      ((((1 <= _lh_onboard_LH_P2_0_3_5) && (_lh_onboard_LH_P2_0_3_5 <= 8)) && (1 <= _lh_onboard_LH_P2_1_3_5)) && (_lh_onboard_LH_P2_1_3_5 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d0 _lh_onboard_arg1_7 =
  (match _lh_onboard_arg1_7 with
    | `LH_P2(_lh_onboard_LH_P2_0_7, _lh_onboard_LH_P2_1_7) -> 
      ((((1 <= _lh_onboard_LH_P2_0_7) && (_lh_onboard_LH_P2_0_7 <= 8)) && (1 <= _lh_onboard_LH_P2_1_7)) && (_lh_onboard_LH_P2_1_7 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d1 _lh_onboard_arg1_2_5 =
  (match _lh_onboard_arg1_2_5 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_5, _lh_onboard_LH_P2_1_2_5) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_5) && (_lh_onboard_LH_P2_0_2_5 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_5)) && (_lh_onboard_LH_P2_1_2_5 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d2 _lh_onboard_arg1_2_4 =
  (match _lh_onboard_arg1_2_4 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_4, _lh_onboard_LH_P2_1_2_4) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_4) && (_lh_onboard_LH_P2_0_2_4 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_4)) && (_lh_onboard_LH_P2_1_2_4 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d3 _lh_onboard_arg1_1 =
  (match _lh_onboard_arg1_1 with
    | `LH_P2(_lh_onboard_LH_P2_0_1, _lh_onboard_LH_P2_1_1) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1) && (_lh_onboard_LH_P2_0_1 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1)) && (_lh_onboard_LH_P2_1_1 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d4 _lh_onboard_arg1_1_9 =
  (match _lh_onboard_arg1_1_9 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_9, _lh_onboard_LH_P2_1_1_9) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_9) && (_lh_onboard_LH_P2_0_1_9 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_9)) && (_lh_onboard_LH_P2_1_1_9 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d5 _lh_onboard_arg1_1_6 =
  (match _lh_onboard_arg1_1_6 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_6, _lh_onboard_LH_P2_1_1_6) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_6) && (_lh_onboard_LH_P2_0_1_6 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_6)) && (_lh_onboard_LH_P2_1_1_6 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d6 _lh_onboard_arg1_2_8 =
  (match _lh_onboard_arg1_2_8 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_8, _lh_onboard_LH_P2_1_2_8) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_8) && (_lh_onboard_LH_P2_0_2_8 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_8)) && (_lh_onboard_LH_P2_1_2_8 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d7 _lh_onboard_arg1_6 =
  (match _lh_onboard_arg1_6 with
    | `LH_P2(_lh_onboard_LH_P2_0_6, _lh_onboard_LH_P2_1_6) -> 
      ((((1 <= _lh_onboard_LH_P2_0_6) && (_lh_onboard_LH_P2_0_6 <= 8)) && (1 <= _lh_onboard_LH_P2_1_6)) && (_lh_onboard_LH_P2_1_6 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d8 _lh_onboard_arg1_1_2 =
  (match _lh_onboard_arg1_1_2 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_2, _lh_onboard_LH_P2_1_1_2) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_2) && (_lh_onboard_LH_P2_0_1_2 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_2)) && (_lh_onboard_LH_P2_1_1_2 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d1_d9 _lh_onboard_arg1_2_7 =
  (match _lh_onboard_arg1_2_7 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_7, _lh_onboard_LH_P2_1_2_7) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_7) && (_lh_onboard_LH_P2_0_2_7 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_7)) && (_lh_onboard_LH_P2_1_2_7 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2 _lh_onboard_arg1_3_3 =
  (match _lh_onboard_arg1_3_3 with
    | `LH_P2(_lh_onboard_LH_P2_0_3_3, _lh_onboard_LH_P2_1_3_3) -> 
      ((((1 <= _lh_onboard_LH_P2_0_3_3) && (_lh_onboard_LH_P2_0_3_3 <= 8)) && (1 <= _lh_onboard_LH_P2_1_3_3)) && (_lh_onboard_LH_P2_1_3_3 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d0 _lh_onboard_arg1_1_7 =
  (match _lh_onboard_arg1_1_7 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_7, _lh_onboard_LH_P2_1_1_7) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_7) && (_lh_onboard_LH_P2_0_1_7 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_7)) && (_lh_onboard_LH_P2_1_1_7 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d1 _lh_onboard_arg1_1_5 =
  (match _lh_onboard_arg1_1_5 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_5, _lh_onboard_LH_P2_1_1_5) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_5) && (_lh_onboard_LH_P2_0_1_5 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_5)) && (_lh_onboard_LH_P2_1_1_5 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d2 _lh_onboard_arg1_1_4 =
  (match _lh_onboard_arg1_1_4 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_4, _lh_onboard_LH_P2_1_1_4) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_4) && (_lh_onboard_LH_P2_0_1_4 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_4)) && (_lh_onboard_LH_P2_1_1_4 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d3 _lh_onboard_arg1_3_2 =
  (match _lh_onboard_arg1_3_2 with
    | `LH_P2(_lh_onboard_LH_P2_0_3_2, _lh_onboard_LH_P2_1_3_2) -> 
      ((((1 <= _lh_onboard_LH_P2_0_3_2) && (_lh_onboard_LH_P2_0_3_2 <= 8)) && (1 <= _lh_onboard_LH_P2_1_3_2)) && (_lh_onboard_LH_P2_1_3_2 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d4 _lh_onboard_arg1_1_3 =
  (match _lh_onboard_arg1_1_3 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_3, _lh_onboard_LH_P2_1_1_3) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_3) && (_lh_onboard_LH_P2_0_1_3 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_3)) && (_lh_onboard_LH_P2_1_1_3 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d5 _lh_onboard_arg1_3 =
  (match _lh_onboard_arg1_3 with
    | `LH_P2(_lh_onboard_LH_P2_0_3, _lh_onboard_LH_P2_1_3) -> 
      ((((1 <= _lh_onboard_LH_P2_0_3) && (_lh_onboard_LH_P2_0_3 <= 8)) && (1 <= _lh_onboard_LH_P2_1_3)) && (_lh_onboard_LH_P2_1_3 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d6 _lh_onboard_arg1_2_2 =
  (match _lh_onboard_arg1_2_2 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_2, _lh_onboard_LH_P2_1_2_2) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_2) && (_lh_onboard_LH_P2_0_2_2 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_2)) && (_lh_onboard_LH_P2_1_2_2 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d7 _lh_onboard_arg1_2_0 =
  (match _lh_onboard_arg1_2_0 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_0, _lh_onboard_LH_P2_1_2_0) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_0) && (_lh_onboard_LH_P2_0_2_0 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_0)) && (_lh_onboard_LH_P2_1_2_0 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d8 _lh_onboard_arg1_2 =
  (match _lh_onboard_arg1_2 with
    | `LH_P2(_lh_onboard_LH_P2_0_2, _lh_onboard_LH_P2_1_2) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2) && (_lh_onboard_LH_P2_0_2 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2)) && (_lh_onboard_LH_P2_1_2 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d2_d9 _lh_onboard_arg1_2_1 =
  (match _lh_onboard_arg1_2_1 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_1, _lh_onboard_LH_P2_1_2_1) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_1) && (_lh_onboard_LH_P2_0_2_1 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_1)) && (_lh_onboard_LH_P2_1_2_1 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d3 _lh_onboard_arg1_2_9 =
  (match _lh_onboard_arg1_2_9 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_9, _lh_onboard_LH_P2_1_2_9) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_9) && (_lh_onboard_LH_P2_0_2_9 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_9)) && (_lh_onboard_LH_P2_1_2_9 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d3_d0 _lh_onboard_arg1_9 =
  (match _lh_onboard_arg1_9 with
    | `LH_P2(_lh_onboard_LH_P2_0_9, _lh_onboard_LH_P2_1_9) -> 
      ((((1 <= _lh_onboard_LH_P2_0_9) && (_lh_onboard_LH_P2_0_9 <= 8)) && (1 <= _lh_onboard_LH_P2_1_9)) && (_lh_onboard_LH_P2_1_9 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d3_d1 _lh_onboard_arg1_5 =
  (match _lh_onboard_arg1_5 with
    | `LH_P2(_lh_onboard_LH_P2_0_5, _lh_onboard_LH_P2_1_5) -> 
      ((((1 <= _lh_onboard_LH_P2_0_5) && (_lh_onboard_LH_P2_0_5 <= 8)) && (1 <= _lh_onboard_LH_P2_1_5)) && (_lh_onboard_LH_P2_1_5 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d3_d2 _lh_onboard_arg1_8 =
  (match _lh_onboard_arg1_8 with
    | `LH_P2(_lh_onboard_LH_P2_0_8, _lh_onboard_LH_P2_1_8) -> 
      ((((1 <= _lh_onboard_LH_P2_0_8) && (_lh_onboard_LH_P2_0_8 <= 8)) && (1 <= _lh_onboard_LH_P2_1_8)) && (_lh_onboard_LH_P2_1_8 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d3_d3 _lh_onboard_arg1_3_6 =
  (match _lh_onboard_arg1_3_6 with
    | `LH_P2(_lh_onboard_LH_P2_0_3_6, _lh_onboard_LH_P2_1_3_6) -> 
      ((((1 <= _lh_onboard_LH_P2_0_3_6) && (_lh_onboard_LH_P2_0_3_6 <= 8)) && (1 <= _lh_onboard_LH_P2_1_3_6)) && (_lh_onboard_LH_P2_1_3_6 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d3_d4 _lh_onboard_arg1_4 =
  (match _lh_onboard_arg1_4 with
    | `LH_P2(_lh_onboard_LH_P2_0_4, _lh_onboard_LH_P2_1_4) -> 
      ((((1 <= _lh_onboard_LH_P2_0_4) && (_lh_onboard_LH_P2_0_4 <= 8)) && (1 <= _lh_onboard_LH_P2_1_4)) && (_lh_onboard_LH_P2_1_4 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d3_d5 _lh_onboard_arg1_1_1 =
  (match _lh_onboard_arg1_1_1 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_1, _lh_onboard_LH_P2_1_1_1) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_1) && (_lh_onboard_LH_P2_0_1_1 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_1)) && (_lh_onboard_LH_P2_1_1_1 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d4 _lh_onboard_arg1_3_1 =
  (match _lh_onboard_arg1_3_1 with
    | `LH_P2(_lh_onboard_LH_P2_0_3_1, _lh_onboard_LH_P2_1_3_1) -> 
      ((((1 <= _lh_onboard_LH_P2_0_3_1) && (_lh_onboard_LH_P2_0_3_1 <= 8)) && (1 <= _lh_onboard_LH_P2_1_3_1)) && (_lh_onboard_LH_P2_1_3_1 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d5 _lh_onboard_arg1_3_0 =
  (match _lh_onboard_arg1_3_0 with
    | `LH_P2(_lh_onboard_LH_P2_0_3_0, _lh_onboard_LH_P2_1_3_0) -> 
      ((((1 <= _lh_onboard_LH_P2_0_3_0) && (_lh_onboard_LH_P2_0_3_0 <= 8)) && (1 <= _lh_onboard_LH_P2_1_3_0)) && (_lh_onboard_LH_P2_1_3_0 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d6 _lh_onboard_arg1_1_8 =
  (match _lh_onboard_arg1_1_8 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_8, _lh_onboard_LH_P2_1_1_8) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_8) && (_lh_onboard_LH_P2_0_1_8 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_8)) && (_lh_onboard_LH_P2_1_1_8 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d7 _lh_onboard_arg1_2_3 =
  (match _lh_onboard_arg1_2_3 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_3, _lh_onboard_LH_P2_1_2_3) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_3) && (_lh_onboard_LH_P2_0_2_3 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_3)) && (_lh_onboard_LH_P2_1_2_3 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d8 _lh_onboard_arg1_2_6 =
  (match _lh_onboard_arg1_2_6 with
    | `LH_P2(_lh_onboard_LH_P2_0_2_6, _lh_onboard_LH_P2_1_2_6) -> 
      ((((1 <= _lh_onboard_LH_P2_0_2_6) && (_lh_onboard_LH_P2_0_2_6 <= 8)) && (1 <= _lh_onboard_LH_P2_1_2_6)) && (_lh_onboard_LH_P2_1_2_6 <= 8))
    | _ -> 
      (failwith "error"));;
let rec onboard__d9 _lh_onboard_arg1_1_0 =
  (match _lh_onboard_arg1_1_0 with
    | `LH_P2(_lh_onboard_LH_P2_0_1_0, _lh_onboard_LH_P2_1_1_0) -> 
      ((((1 <= _lh_onboard_LH_P2_0_1_0) && (_lh_onboard_LH_P2_0_1_0 <= 8)) && (1 <= _lh_onboard_LH_P2_1_1_0)) && (_lh_onboard_LH_P2_1_1_0 <= 8))
    | _ -> 
      (failwith "error"));;
let rec opponent__d0 _lh_opponent_arg1_3 =
  (match _lh_opponent_arg1_3 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec opponent__d1 _lh_opponent_arg1_6 =
  (match _lh_opponent_arg1_6 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec opponent__d2 _lh_opponent_arg1_2 =
  (match _lh_opponent_arg1_2 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec opponent__d3 _lh_opponent_arg1_7 =
  (match _lh_opponent_arg1_7 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec opponent__d4 _lh_opponent_arg1_5 =
  (match _lh_opponent_arg1_5 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec opponent__d5 _lh_opponent_arg1_4 =
  (match _lh_opponent_arg1_4 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec opponent__d6 _lh_opponent_arg1_8 =
  (match _lh_opponent_arg1_8 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec opponent__d7 _lh_opponent_arg1_1 =
  (match _lh_opponent_arg1_1 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d0 _lh_pieceAt_arg1_3 _lh_pieceAt_arg2_3 =
  (match _lh_pieceAt_arg1_3 with
    | `Board(_lh_pieceAt_Board_0_3, _lh_pieceAt_Board_1_3) -> 
      (let rec pieceAtWith_3 = (fun c_4 n_1_2 ls_3_4 -> 
        (let rec _lh_matchIdent_8_2 = ls_3_4 in
          (match _lh_matchIdent_8_2 with
            | `LH_N -> 
              n_1_2
            | `LH_C(_lh_pieceAt_LH_C_0_3, _lh_pieceAt_LH_C_1_3) -> 
              (match _lh_pieceAt_LH_C_0_3 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3, _lh_pieceAt_LH_P2_1_3) -> 
                  (if (_lh_pieceAt_LH_P2_1_3 = _lh_pieceAt_arg2_3) then
                    (`Just((`LH_P2(c_4, _lh_pieceAt_LH_P2_0_3))))
                  else
                    (((pieceAtWith_3 c_4) n_1_2) _lh_pieceAt_LH_C_1_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3 (`White)) (((pieceAtWith_3 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3)) _lh_pieceAt_Board_0_3))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1 _lh_pieceAt_arg1_1_2 _lh_pieceAt_arg2_1_2 =
  (match _lh_pieceAt_arg1_1_2 with
    | `Board(_lh_pieceAt_Board_0_1_2, _lh_pieceAt_Board_1_1_2) -> 
      (let rec pieceAtWith_1_2 = (fun c_1_3 n_2_7 ls_5_4 -> 
        (let rec _lh_matchIdent_1_2_3 = ls_5_4 in
          (match _lh_matchIdent_1_2_3 with
            | `LH_N -> 
              n_2_7
            | `LH_C(_lh_pieceAt_LH_C_0_1_2, _lh_pieceAt_LH_C_1_1_2) -> 
              (match _lh_pieceAt_LH_C_0_1_2 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_2, _lh_pieceAt_LH_P2_1_1_2) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_2 = _lh_pieceAt_arg2_1_2) then
                    (`Just((`LH_P2(c_1_3, _lh_pieceAt_LH_P2_0_1_2))))
                  else
                    (((pieceAtWith_1_2 c_1_3) n_2_7) _lh_pieceAt_LH_C_1_1_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_2 (`White)) (((pieceAtWith_1_2 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_2)) _lh_pieceAt_Board_0_1_2))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d0 _lh_pieceAt_arg1_2_2 _lh_pieceAt_arg2_2_2 =
  (match _lh_pieceAt_arg1_2_2 with
    | `Board(_lh_pieceAt_Board_0_2_2, _lh_pieceAt_Board_1_2_2) -> 
      (let rec pieceAtWith_2_2 = (fun c_2_3 n_4_7 ls_9_0 -> 
        (let rec _lh_matchIdent_1_9_0 = ls_9_0 in
          (match _lh_matchIdent_1_9_0 with
            | `LH_N -> 
              n_4_7
            | `LH_C(_lh_pieceAt_LH_C_0_2_2, _lh_pieceAt_LH_C_1_2_2) -> 
              (match _lh_pieceAt_LH_C_0_2_2 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_2, _lh_pieceAt_LH_P2_1_2_2) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_2 = _lh_pieceAt_arg2_2_2) then
                    (`Just((`LH_P2(c_2_3, _lh_pieceAt_LH_P2_0_2_2))))
                  else
                    (((pieceAtWith_2_2 c_2_3) n_4_7) _lh_pieceAt_LH_C_1_2_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_2 (`White)) (((pieceAtWith_2_2 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_2)) _lh_pieceAt_Board_0_2_2))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d1 _lh_pieceAt_arg1_2_0 _lh_pieceAt_arg2_2_0 =
  (match _lh_pieceAt_arg1_2_0 with
    | `Board(_lh_pieceAt_Board_0_2_0, _lh_pieceAt_Board_1_2_0) -> 
      (let rec pieceAtWith_2_0 = (fun c_2_1 n_3_9 ls_7_7 -> 
        (let rec _lh_matchIdent_1_6_5 = ls_7_7 in
          (match _lh_matchIdent_1_6_5 with
            | `LH_N -> 
              n_3_9
            | `LH_C(_lh_pieceAt_LH_C_0_2_0, _lh_pieceAt_LH_C_1_2_0) -> 
              (match _lh_pieceAt_LH_C_0_2_0 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_0, _lh_pieceAt_LH_P2_1_2_0) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_0 = _lh_pieceAt_arg2_2_0) then
                    (`Just((`LH_P2(c_2_1, _lh_pieceAt_LH_P2_0_2_0))))
                  else
                    (((pieceAtWith_2_0 c_2_1) n_3_9) _lh_pieceAt_LH_C_1_2_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_0 (`White)) (((pieceAtWith_2_0 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_0)) _lh_pieceAt_Board_0_2_0))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d2 _lh_pieceAt_arg1_1_6 _lh_pieceAt_arg2_1_6 =
  (match _lh_pieceAt_arg1_1_6 with
    | `Board(_lh_pieceAt_Board_0_1_6, _lh_pieceAt_Board_1_1_6) -> 
      (let rec pieceAtWith_1_6 = (fun c_1_7 n_3_5 ls_6_8 -> 
        (let rec _lh_matchIdent_1_4_0 = ls_6_8 in
          (match _lh_matchIdent_1_4_0 with
            | `LH_N -> 
              n_3_5
            | `LH_C(_lh_pieceAt_LH_C_0_1_6, _lh_pieceAt_LH_C_1_1_6) -> 
              (match _lh_pieceAt_LH_C_0_1_6 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_6, _lh_pieceAt_LH_P2_1_1_6) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_6 = _lh_pieceAt_arg2_1_6) then
                    (`Just((`LH_P2(c_1_7, _lh_pieceAt_LH_P2_0_1_6))))
                  else
                    (((pieceAtWith_1_6 c_1_7) n_3_5) _lh_pieceAt_LH_C_1_1_6))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_6 (`White)) (((pieceAtWith_1_6 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_6)) _lh_pieceAt_Board_0_1_6))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d3 _lh_pieceAt_arg1_3_3 _lh_pieceAt_arg2_3_3 =
  (match _lh_pieceAt_arg1_3_3 with
    | `Board(_lh_pieceAt_Board_0_3_3, _lh_pieceAt_Board_1_3_3) -> 
      (let rec pieceAtWith_3_3 = (fun c_3_4 n_6_4 ls_1_1_8 -> 
        (let rec _lh_matchIdent_2_5_1 = ls_1_1_8 in
          (match _lh_matchIdent_2_5_1 with
            | `LH_N -> 
              n_6_4
            | `LH_C(_lh_pieceAt_LH_C_0_3_3, _lh_pieceAt_LH_C_1_3_3) -> 
              (match _lh_pieceAt_LH_C_0_3_3 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_3, _lh_pieceAt_LH_P2_1_3_3) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_3 = _lh_pieceAt_arg2_3_3) then
                    (`Just((`LH_P2(c_3_4, _lh_pieceAt_LH_P2_0_3_3))))
                  else
                    (((pieceAtWith_3_3 c_3_4) n_6_4) _lh_pieceAt_LH_C_1_3_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_3 (`White)) (((pieceAtWith_3_3 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_3)) _lh_pieceAt_Board_0_3_3))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d4 _lh_pieceAt_arg1_2_1 _lh_pieceAt_arg2_2_1 =
  (match _lh_pieceAt_arg1_2_1 with
    | `Board(_lh_pieceAt_Board_0_2_1, _lh_pieceAt_Board_1_2_1) -> 
      (let rec pieceAtWith_2_1 = (fun c_2_2 n_4_6 ls_8_9 -> 
        (let rec _lh_matchIdent_1_8_9 = ls_8_9 in
          (match _lh_matchIdent_1_8_9 with
            | `LH_N -> 
              n_4_6
            | `LH_C(_lh_pieceAt_LH_C_0_2_1, _lh_pieceAt_LH_C_1_2_1) -> 
              (match _lh_pieceAt_LH_C_0_2_1 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_1, _lh_pieceAt_LH_P2_1_2_1) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_1 = _lh_pieceAt_arg2_2_1) then
                    (`Just((`LH_P2(c_2_2, _lh_pieceAt_LH_P2_0_2_1))))
                  else
                    (((pieceAtWith_2_1 c_2_2) n_4_6) _lh_pieceAt_LH_C_1_2_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_1 (`White)) (((pieceAtWith_2_1 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_1)) _lh_pieceAt_Board_0_2_1))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d5 _lh_pieceAt_arg1_1 _lh_pieceAt_arg2_1 =
  (match _lh_pieceAt_arg1_1 with
    | `Board(_lh_pieceAt_Board_0_1, _lh_pieceAt_Board_1_1) -> 
      (let rec pieceAtWith_1 = (fun c_2 n_6 ls_2_2 -> 
        (let rec _lh_matchIdent_4_8 = ls_2_2 in
          (match _lh_matchIdent_4_8 with
            | `LH_N -> 
              n_6
            | `LH_C(_lh_pieceAt_LH_C_0_1, _lh_pieceAt_LH_C_1_1) -> 
              (match _lh_pieceAt_LH_C_0_1 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1, _lh_pieceAt_LH_P2_1_1) -> 
                  (if (_lh_pieceAt_LH_P2_1_1 = _lh_pieceAt_arg2_1) then
                    (`Just((`LH_P2(c_2, _lh_pieceAt_LH_P2_0_1))))
                  else
                    (((pieceAtWith_1 c_2) n_6) _lh_pieceAt_LH_C_1_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1 (`White)) (((pieceAtWith_1 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1)) _lh_pieceAt_Board_0_1))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d6 _lh_pieceAt_arg1_2_6 _lh_pieceAt_arg2_2_6 =
  (match _lh_pieceAt_arg1_2_6 with
    | `Board(_lh_pieceAt_Board_0_2_6, _lh_pieceAt_Board_1_2_6) -> 
      (let rec pieceAtWith_2_6 = (fun c_2_7 n_5_4 ls_1_0_1 -> 
        (let rec _lh_matchIdent_2_1_2 = ls_1_0_1 in
          (match _lh_matchIdent_2_1_2 with
            | `LH_N -> 
              n_5_4
            | `LH_C(_lh_pieceAt_LH_C_0_2_6, _lh_pieceAt_LH_C_1_2_6) -> 
              (match _lh_pieceAt_LH_C_0_2_6 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_6, _lh_pieceAt_LH_P2_1_2_6) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_6 = _lh_pieceAt_arg2_2_6) then
                    (`Just((`LH_P2(c_2_7, _lh_pieceAt_LH_P2_0_2_6))))
                  else
                    (((pieceAtWith_2_6 c_2_7) n_5_4) _lh_pieceAt_LH_C_1_2_6))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_6 (`White)) (((pieceAtWith_2_6 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_6)) _lh_pieceAt_Board_0_2_6))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d7 _lh_pieceAt_arg1_3_1 _lh_pieceAt_arg2_3_1 =
  (match _lh_pieceAt_arg1_3_1 with
    | `Board(_lh_pieceAt_Board_0_3_1, _lh_pieceAt_Board_1_3_1) -> 
      (let rec pieceAtWith_3_1 = (fun c_3_2 n_6_2 ls_1_1_5 -> 
        (let rec _lh_matchIdent_2_4_6 = ls_1_1_5 in
          (match _lh_matchIdent_2_4_6 with
            | `LH_N -> 
              n_6_2
            | `LH_C(_lh_pieceAt_LH_C_0_3_1, _lh_pieceAt_LH_C_1_3_1) -> 
              (match _lh_pieceAt_LH_C_0_3_1 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_1, _lh_pieceAt_LH_P2_1_3_1) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_1 = _lh_pieceAt_arg2_3_1) then
                    (`Just((`LH_P2(c_3_2, _lh_pieceAt_LH_P2_0_3_1))))
                  else
                    (((pieceAtWith_3_1 c_3_2) n_6_2) _lh_pieceAt_LH_C_1_3_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_1 (`White)) (((pieceAtWith_3_1 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_1)) _lh_pieceAt_Board_0_3_1))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d8 _lh_pieceAt_arg1_3_2 _lh_pieceAt_arg2_3_2 =
  (match _lh_pieceAt_arg1_3_2 with
    | `Board(_lh_pieceAt_Board_0_3_2, _lh_pieceAt_Board_1_3_2) -> 
      (let rec pieceAtWith_3_2 = (fun c_3_3 n_6_3 ls_1_1_6 -> 
        (let rec _lh_matchIdent_2_4_7 = ls_1_1_6 in
          (match _lh_matchIdent_2_4_7 with
            | `LH_N -> 
              n_6_3
            | `LH_C(_lh_pieceAt_LH_C_0_3_2, _lh_pieceAt_LH_C_1_3_2) -> 
              (match _lh_pieceAt_LH_C_0_3_2 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_2, _lh_pieceAt_LH_P2_1_3_2) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_2 = _lh_pieceAt_arg2_3_2) then
                    (`Just((`LH_P2(c_3_3, _lh_pieceAt_LH_P2_0_3_2))))
                  else
                    (((pieceAtWith_3_2 c_3_3) n_6_3) _lh_pieceAt_LH_C_1_3_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_2 (`White)) (((pieceAtWith_3_2 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_2)) _lh_pieceAt_Board_0_3_2))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d1_d9 _lh_pieceAt_arg1_4 _lh_pieceAt_arg2_4 =
  (match _lh_pieceAt_arg1_4 with
    | `Board(_lh_pieceAt_Board_0_4, _lh_pieceAt_Board_1_4) -> 
      (let rec pieceAtWith_4 = (fun c_5 n_1_4 ls_3_8 -> 
        (let rec _lh_matchIdent_9_0 = ls_3_8 in
          (match _lh_matchIdent_9_0 with
            | `LH_N -> 
              n_1_4
            | `LH_C(_lh_pieceAt_LH_C_0_4, _lh_pieceAt_LH_C_1_4) -> 
              (match _lh_pieceAt_LH_C_0_4 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_4, _lh_pieceAt_LH_P2_1_4) -> 
                  (if (_lh_pieceAt_LH_P2_1_4 = _lh_pieceAt_arg2_4) then
                    (`Just((`LH_P2(c_5, _lh_pieceAt_LH_P2_0_4))))
                  else
                    (((pieceAtWith_4 c_5) n_1_4) _lh_pieceAt_LH_C_1_4))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_4 (`White)) (((pieceAtWith_4 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_4)) _lh_pieceAt_Board_0_4))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2 _lh_pieceAt_arg1_2_8 _lh_pieceAt_arg2_2_8 =
  (match _lh_pieceAt_arg1_2_8 with
    | `Board(_lh_pieceAt_Board_0_2_8, _lh_pieceAt_Board_1_2_8) -> 
      (let rec pieceAtWith_2_8 = (fun c_2_9 n_5_8 ls_1_0_9 -> 
        (let rec _lh_matchIdent_2_3_6 = ls_1_0_9 in
          (match _lh_matchIdent_2_3_6 with
            | `LH_N -> 
              n_5_8
            | `LH_C(_lh_pieceAt_LH_C_0_2_8, _lh_pieceAt_LH_C_1_2_8) -> 
              (match _lh_pieceAt_LH_C_0_2_8 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_8, _lh_pieceAt_LH_P2_1_2_8) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_8 = _lh_pieceAt_arg2_2_8) then
                    (`Just((`LH_P2(c_2_9, _lh_pieceAt_LH_P2_0_2_8))))
                  else
                    (((pieceAtWith_2_8 c_2_9) n_5_8) _lh_pieceAt_LH_C_1_2_8))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_8 (`White)) (((pieceAtWith_2_8 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_8)) _lh_pieceAt_Board_0_2_8))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d0 _lh_pieceAt_arg1_2_4 _lh_pieceAt_arg2_2_4 =
  (match _lh_pieceAt_arg1_2_4 with
    | `Board(_lh_pieceAt_Board_0_2_4, _lh_pieceAt_Board_1_2_4) -> 
      (let rec pieceAtWith_2_4 = (fun c_2_5 n_5_0 ls_9_6 -> 
        (let rec _lh_matchIdent_2_0_0 = ls_9_6 in
          (match _lh_matchIdent_2_0_0 with
            | `LH_N -> 
              n_5_0
            | `LH_C(_lh_pieceAt_LH_C_0_2_4, _lh_pieceAt_LH_C_1_2_4) -> 
              (match _lh_pieceAt_LH_C_0_2_4 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_4, _lh_pieceAt_LH_P2_1_2_4) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_4 = _lh_pieceAt_arg2_2_4) then
                    (`Just((`LH_P2(c_2_5, _lh_pieceAt_LH_P2_0_2_4))))
                  else
                    (((pieceAtWith_2_4 c_2_5) n_5_0) _lh_pieceAt_LH_C_1_2_4))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_4 (`White)) (((pieceAtWith_2_4 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_4)) _lh_pieceAt_Board_0_2_4))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d1 _lh_pieceAt_arg1_1_5 _lh_pieceAt_arg2_1_5 =
  (match _lh_pieceAt_arg1_1_5 with
    | `Board(_lh_pieceAt_Board_0_1_5, _lh_pieceAt_Board_1_1_5) -> 
      (let rec pieceAtWith_1_5 = (fun c_1_6 n_3_2 ls_6_5 -> 
        (let rec _lh_matchIdent_1_3_9 = ls_6_5 in
          (match _lh_matchIdent_1_3_9 with
            | `LH_N -> 
              n_3_2
            | `LH_C(_lh_pieceAt_LH_C_0_1_5, _lh_pieceAt_LH_C_1_1_5) -> 
              (match _lh_pieceAt_LH_C_0_1_5 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_5, _lh_pieceAt_LH_P2_1_1_5) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_5 = _lh_pieceAt_arg2_1_5) then
                    (`Just((`LH_P2(c_1_6, _lh_pieceAt_LH_P2_0_1_5))))
                  else
                    (((pieceAtWith_1_5 c_1_6) n_3_2) _lh_pieceAt_LH_C_1_1_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_5 (`White)) (((pieceAtWith_1_5 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_5)) _lh_pieceAt_Board_0_1_5))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d2 _lh_pieceAt_arg1_3_8 _lh_pieceAt_arg2_3_8 =
  (match _lh_pieceAt_arg1_3_8 with
    | `Board(_lh_pieceAt_Board_0_3_8, _lh_pieceAt_Board_1_3_8) -> 
      (let rec pieceAtWith_3_8 = (fun c_3_9 n_7_3 ls_1_2_9 -> 
        (let rec _lh_matchIdent_2_6_7 = ls_1_2_9 in
          (match _lh_matchIdent_2_6_7 with
            | `LH_N -> 
              n_7_3
            | `LH_C(_lh_pieceAt_LH_C_0_3_8, _lh_pieceAt_LH_C_1_3_8) -> 
              (match _lh_pieceAt_LH_C_0_3_8 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_8, _lh_pieceAt_LH_P2_1_3_8) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_8 = _lh_pieceAt_arg2_3_8) then
                    (`Just((`LH_P2(c_3_9, _lh_pieceAt_LH_P2_0_3_8))))
                  else
                    (((pieceAtWith_3_8 c_3_9) n_7_3) _lh_pieceAt_LH_C_1_3_8))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_8 (`White)) (((pieceAtWith_3_8 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_8)) _lh_pieceAt_Board_0_3_8))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d3 _lh_pieceAt_arg1_3_0 _lh_pieceAt_arg2_3_0 =
  (match _lh_pieceAt_arg1_3_0 with
    | `Board(_lh_pieceAt_Board_0_3_0, _lh_pieceAt_Board_1_3_0) -> 
      (let rec pieceAtWith_3_0 = (fun c_3_1 n_6_1 ls_1_1_4 -> 
        (let rec _lh_matchIdent_2_4_5 = ls_1_1_4 in
          (match _lh_matchIdent_2_4_5 with
            | `LH_N -> 
              n_6_1
            | `LH_C(_lh_pieceAt_LH_C_0_3_0, _lh_pieceAt_LH_C_1_3_0) -> 
              (match _lh_pieceAt_LH_C_0_3_0 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_0, _lh_pieceAt_LH_P2_1_3_0) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_0 = _lh_pieceAt_arg2_3_0) then
                    (`Just((`LH_P2(c_3_1, _lh_pieceAt_LH_P2_0_3_0))))
                  else
                    (((pieceAtWith_3_0 c_3_1) n_6_1) _lh_pieceAt_LH_C_1_3_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_0 (`White)) (((pieceAtWith_3_0 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_0)) _lh_pieceAt_Board_0_3_0))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d4 _lh_pieceAt_arg1_3_7 _lh_pieceAt_arg2_3_7 =
  (match _lh_pieceAt_arg1_3_7 with
    | `Board(_lh_pieceAt_Board_0_3_7, _lh_pieceAt_Board_1_3_7) -> 
      (let rec pieceAtWith_3_7 = (fun c_3_8 n_7_2 ls_1_2_8 -> 
        (let rec _lh_matchIdent_2_6_6 = ls_1_2_8 in
          (match _lh_matchIdent_2_6_6 with
            | `LH_N -> 
              n_7_2
            | `LH_C(_lh_pieceAt_LH_C_0_3_7, _lh_pieceAt_LH_C_1_3_7) -> 
              (match _lh_pieceAt_LH_C_0_3_7 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_7, _lh_pieceAt_LH_P2_1_3_7) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_7 = _lh_pieceAt_arg2_3_7) then
                    (`Just((`LH_P2(c_3_8, _lh_pieceAt_LH_P2_0_3_7))))
                  else
                    (((pieceAtWith_3_7 c_3_8) n_7_2) _lh_pieceAt_LH_C_1_3_7))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_7 (`White)) (((pieceAtWith_3_7 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_7)) _lh_pieceAt_Board_0_3_7))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d5 _lh_pieceAt_arg1_4_1 _lh_pieceAt_arg2_4_1 =
  (match _lh_pieceAt_arg1_4_1 with
    | `Board(_lh_pieceAt_Board_0_4_1, _lh_pieceAt_Board_1_4_1) -> 
      (let rec pieceAtWith_4_1 = (fun c_4_2 n_7_6 ls_1_3_3 -> 
        (let rec _lh_matchIdent_2_7_8 = ls_1_3_3 in
          (match _lh_matchIdent_2_7_8 with
            | `LH_N -> 
              n_7_6
            | `LH_C(_lh_pieceAt_LH_C_0_4_1, _lh_pieceAt_LH_C_1_4_1) -> 
              (match _lh_pieceAt_LH_C_0_4_1 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_4_1, _lh_pieceAt_LH_P2_1_4_1) -> 
                  (if (_lh_pieceAt_LH_P2_1_4_1 = _lh_pieceAt_arg2_4_1) then
                    (`Just((`LH_P2(c_4_2, _lh_pieceAt_LH_P2_0_4_1))))
                  else
                    (((pieceAtWith_4_1 c_4_2) n_7_6) _lh_pieceAt_LH_C_1_4_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_4_1 (`White)) (((pieceAtWith_4_1 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_4_1)) _lh_pieceAt_Board_0_4_1))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d6 _lh_pieceAt_arg1_2 _lh_pieceAt_arg2_2 =
  (match _lh_pieceAt_arg1_2 with
    | `Board(_lh_pieceAt_Board_0_2, _lh_pieceAt_Board_1_2) -> 
      (let rec pieceAtWith_2 = (fun c_3 n_1_1 ls_3_1 -> 
        (let rec _lh_matchIdent_7_1 = ls_3_1 in
          (match _lh_matchIdent_7_1 with
            | `LH_N -> 
              n_1_1
            | `LH_C(_lh_pieceAt_LH_C_0_2, _lh_pieceAt_LH_C_1_2) -> 
              (match _lh_pieceAt_LH_C_0_2 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2, _lh_pieceAt_LH_P2_1_2) -> 
                  (if (_lh_pieceAt_LH_P2_1_2 = _lh_pieceAt_arg2_2) then
                    (`Just((`LH_P2(c_3, _lh_pieceAt_LH_P2_0_2))))
                  else
                    (((pieceAtWith_2 c_3) n_1_1) _lh_pieceAt_LH_C_1_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2 (`White)) (((pieceAtWith_2 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2)) _lh_pieceAt_Board_0_2))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d7 _lh_pieceAt_arg1_3_9 _lh_pieceAt_arg2_3_9 =
  (match _lh_pieceAt_arg1_3_9 with
    | `Board(_lh_pieceAt_Board_0_3_9, _lh_pieceAt_Board_1_3_9) -> 
      (let rec pieceAtWith_3_9 = (fun c_4_0 n_7_4 ls_1_3_1 -> 
        (let rec _lh_matchIdent_2_7_1 = ls_1_3_1 in
          (match _lh_matchIdent_2_7_1 with
            | `LH_N -> 
              n_7_4
            | `LH_C(_lh_pieceAt_LH_C_0_3_9, _lh_pieceAt_LH_C_1_3_9) -> 
              (match _lh_pieceAt_LH_C_0_3_9 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_9, _lh_pieceAt_LH_P2_1_3_9) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_9 = _lh_pieceAt_arg2_3_9) then
                    (`Just((`LH_P2(c_4_0, _lh_pieceAt_LH_P2_0_3_9))))
                  else
                    (((pieceAtWith_3_9 c_4_0) n_7_4) _lh_pieceAt_LH_C_1_3_9))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_9 (`White)) (((pieceAtWith_3_9 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_9)) _lh_pieceAt_Board_0_3_9))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d8 _lh_pieceAt_arg1_4_3 _lh_pieceAt_arg2_4_3 =
  (match _lh_pieceAt_arg1_4_3 with
    | `Board(_lh_pieceAt_Board_0_4_3, _lh_pieceAt_Board_1_4_3) -> 
      (let rec pieceAtWith_4_3 = (fun c_4_5 n_8_1 ls_1_4_1 -> 
        (let rec _lh_matchIdent_3_0_2 = ls_1_4_1 in
          (match _lh_matchIdent_3_0_2 with
            | `LH_N -> 
              n_8_1
            | `LH_C(_lh_pieceAt_LH_C_0_4_3, _lh_pieceAt_LH_C_1_4_3) -> 
              (match _lh_pieceAt_LH_C_0_4_3 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_4_3, _lh_pieceAt_LH_P2_1_4_3) -> 
                  (if (_lh_pieceAt_LH_P2_1_4_3 = _lh_pieceAt_arg2_4_3) then
                    (`Just((`LH_P2(c_4_5, _lh_pieceAt_LH_P2_0_4_3))))
                  else
                    (((pieceAtWith_4_3 c_4_5) n_8_1) _lh_pieceAt_LH_C_1_4_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_4_3 (`White)) (((pieceAtWith_4_3 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_4_3)) _lh_pieceAt_Board_0_4_3))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d2_d9 _lh_pieceAt_arg1_9 _lh_pieceAt_arg2_9 =
  (match _lh_pieceAt_arg1_9 with
    | `Board(_lh_pieceAt_Board_0_9, _lh_pieceAt_Board_1_9) -> 
      (let rec pieceAtWith_9 = (fun c_1_0 n_2_0 ls_4_4 -> 
        (let rec _lh_matchIdent_1_1_0 = ls_4_4 in
          (match _lh_matchIdent_1_1_0 with
            | `LH_N -> 
              n_2_0
            | `LH_C(_lh_pieceAt_LH_C_0_9, _lh_pieceAt_LH_C_1_9) -> 
              (match _lh_pieceAt_LH_C_0_9 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_9, _lh_pieceAt_LH_P2_1_9) -> 
                  (if (_lh_pieceAt_LH_P2_1_9 = _lh_pieceAt_arg2_9) then
                    (`Just((`LH_P2(c_1_0, _lh_pieceAt_LH_P2_0_9))))
                  else
                    (((pieceAtWith_9 c_1_0) n_2_0) _lh_pieceAt_LH_C_1_9))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_9 (`White)) (((pieceAtWith_9 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_9)) _lh_pieceAt_Board_0_9))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3 _lh_pieceAt_arg1_1_8 _lh_pieceAt_arg2_1_8 =
  (match _lh_pieceAt_arg1_1_8 with
    | `Board(_lh_pieceAt_Board_0_1_8, _lh_pieceAt_Board_1_1_8) -> 
      (let rec pieceAtWith_1_8 = (fun c_1_9 n_3_7 ls_7_1 -> 
        (let rec _lh_matchIdent_1_4_2 = ls_7_1 in
          (match _lh_matchIdent_1_4_2 with
            | `LH_N -> 
              n_3_7
            | `LH_C(_lh_pieceAt_LH_C_0_1_8, _lh_pieceAt_LH_C_1_1_8) -> 
              (match _lh_pieceAt_LH_C_0_1_8 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_8, _lh_pieceAt_LH_P2_1_1_8) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_8 = _lh_pieceAt_arg2_1_8) then
                    (`Just((`LH_P2(c_1_9, _lh_pieceAt_LH_P2_0_1_8))))
                  else
                    (((pieceAtWith_1_8 c_1_9) n_3_7) _lh_pieceAt_LH_C_1_1_8))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_8 (`White)) (((pieceAtWith_1_8 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_8)) _lh_pieceAt_Board_0_1_8))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d0 _lh_pieceAt_arg1_1_9 _lh_pieceAt_arg2_1_9 =
  (match _lh_pieceAt_arg1_1_9 with
    | `Board(_lh_pieceAt_Board_0_1_9, _lh_pieceAt_Board_1_1_9) -> 
      (let rec pieceAtWith_1_9 = (fun c_2_0 n_3_8 ls_7_3 -> 
        (let rec _lh_matchIdent_1_4_4 = ls_7_3 in
          (match _lh_matchIdent_1_4_4 with
            | `LH_N -> 
              n_3_8
            | `LH_C(_lh_pieceAt_LH_C_0_1_9, _lh_pieceAt_LH_C_1_1_9) -> 
              (match _lh_pieceAt_LH_C_0_1_9 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_9, _lh_pieceAt_LH_P2_1_1_9) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_9 = _lh_pieceAt_arg2_1_9) then
                    (`Just((`LH_P2(c_2_0, _lh_pieceAt_LH_P2_0_1_9))))
                  else
                    (((pieceAtWith_1_9 c_2_0) n_3_8) _lh_pieceAt_LH_C_1_1_9))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_9 (`White)) (((pieceAtWith_1_9 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_9)) _lh_pieceAt_Board_0_1_9))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d1 _lh_pieceAt_arg1_1_7 _lh_pieceAt_arg2_1_7 =
  (match _lh_pieceAt_arg1_1_7 with
    | `Board(_lh_pieceAt_Board_0_1_7, _lh_pieceAt_Board_1_1_7) -> 
      (let rec pieceAtWith_1_7 = (fun c_1_8 n_3_6 ls_7_0 -> 
        (let rec _lh_matchIdent_1_4_1 = ls_7_0 in
          (match _lh_matchIdent_1_4_1 with
            | `LH_N -> 
              n_3_6
            | `LH_C(_lh_pieceAt_LH_C_0_1_7, _lh_pieceAt_LH_C_1_1_7) -> 
              (match _lh_pieceAt_LH_C_0_1_7 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_7, _lh_pieceAt_LH_P2_1_1_7) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_7 = _lh_pieceAt_arg2_1_7) then
                    (`Just((`LH_P2(c_1_8, _lh_pieceAt_LH_P2_0_1_7))))
                  else
                    (((pieceAtWith_1_7 c_1_8) n_3_6) _lh_pieceAt_LH_C_1_1_7))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_7 (`White)) (((pieceAtWith_1_7 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_7)) _lh_pieceAt_Board_0_1_7))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d2 _lh_pieceAt_arg1_2_3 _lh_pieceAt_arg2_2_3 =
  (match _lh_pieceAt_arg1_2_3 with
    | `Board(_lh_pieceAt_Board_0_2_3, _lh_pieceAt_Board_1_2_3) -> 
      (let rec pieceAtWith_2_3 = (fun c_2_4 n_4_8 ls_9_2 -> 
        (let rec _lh_matchIdent_1_9_3 = ls_9_2 in
          (match _lh_matchIdent_1_9_3 with
            | `LH_N -> 
              n_4_8
            | `LH_C(_lh_pieceAt_LH_C_0_2_3, _lh_pieceAt_LH_C_1_2_3) -> 
              (match _lh_pieceAt_LH_C_0_2_3 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_3, _lh_pieceAt_LH_P2_1_2_3) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_3 = _lh_pieceAt_arg2_2_3) then
                    (`Just((`LH_P2(c_2_4, _lh_pieceAt_LH_P2_0_2_3))))
                  else
                    (((pieceAtWith_2_3 c_2_4) n_4_8) _lh_pieceAt_LH_C_1_2_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_3 (`White)) (((pieceAtWith_2_3 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_3)) _lh_pieceAt_Board_0_2_3))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d3 _lh_pieceAt_arg1_4_2 _lh_pieceAt_arg2_4_2 =
  (match _lh_pieceAt_arg1_4_2 with
    | `Board(_lh_pieceAt_Board_0_4_2, _lh_pieceAt_Board_1_4_2) -> 
      (let rec pieceAtWith_4_2 = (fun c_4_3 n_7_7 ls_1_3_6 -> 
        (let rec _lh_matchIdent_2_8_4 = ls_1_3_6 in
          (match _lh_matchIdent_2_8_4 with
            | `LH_N -> 
              n_7_7
            | `LH_C(_lh_pieceAt_LH_C_0_4_2, _lh_pieceAt_LH_C_1_4_2) -> 
              (match _lh_pieceAt_LH_C_0_4_2 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_4_2, _lh_pieceAt_LH_P2_1_4_2) -> 
                  (if (_lh_pieceAt_LH_P2_1_4_2 = _lh_pieceAt_arg2_4_2) then
                    (`Just((`LH_P2(c_4_3, _lh_pieceAt_LH_P2_0_4_2))))
                  else
                    (((pieceAtWith_4_2 c_4_3) n_7_7) _lh_pieceAt_LH_C_1_4_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_4_2 (`White)) (((pieceAtWith_4_2 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_4_2)) _lh_pieceAt_Board_0_4_2))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d4 _lh_pieceAt_arg1_1_1 _lh_pieceAt_arg2_1_1 =
  (match _lh_pieceAt_arg1_1_1 with
    | `Board(_lh_pieceAt_Board_0_1_1, _lh_pieceAt_Board_1_1_1) -> 
      (let rec pieceAtWith_1_1 = (fun c_1_2 n_2_4 ls_4_9 -> 
        (let rec _lh_matchIdent_1_1_7 = ls_4_9 in
          (match _lh_matchIdent_1_1_7 with
            | `LH_N -> 
              n_2_4
            | `LH_C(_lh_pieceAt_LH_C_0_1_1, _lh_pieceAt_LH_C_1_1_1) -> 
              (match _lh_pieceAt_LH_C_0_1_1 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_1, _lh_pieceAt_LH_P2_1_1_1) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_1 = _lh_pieceAt_arg2_1_1) then
                    (`Just((`LH_P2(c_1_2, _lh_pieceAt_LH_P2_0_1_1))))
                  else
                    (((pieceAtWith_1_1 c_1_2) n_2_4) _lh_pieceAt_LH_C_1_1_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_1 (`White)) (((pieceAtWith_1_1 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_1)) _lh_pieceAt_Board_0_1_1))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d5 _lh_pieceAt_arg1_6 _lh_pieceAt_arg2_6 =
  (match _lh_pieceAt_arg1_6 with
    | `Board(_lh_pieceAt_Board_0_6, _lh_pieceAt_Board_1_6) -> 
      (let rec pieceAtWith_6 = (fun c_7 n_1_6 ls_4_0 -> 
        (let rec _lh_matchIdent_9_8 = ls_4_0 in
          (match _lh_matchIdent_9_8 with
            | `LH_N -> 
              n_1_6
            | `LH_C(_lh_pieceAt_LH_C_0_6, _lh_pieceAt_LH_C_1_6) -> 
              (match _lh_pieceAt_LH_C_0_6 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_6, _lh_pieceAt_LH_P2_1_6) -> 
                  (if (_lh_pieceAt_LH_P2_1_6 = _lh_pieceAt_arg2_6) then
                    (`Just((`LH_P2(c_7, _lh_pieceAt_LH_P2_0_6))))
                  else
                    (((pieceAtWith_6 c_7) n_1_6) _lh_pieceAt_LH_C_1_6))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_6 (`White)) (((pieceAtWith_6 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_6)) _lh_pieceAt_Board_0_6))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d6 _lh_pieceAt_arg1_3_6 _lh_pieceAt_arg2_3_6 =
  (match _lh_pieceAt_arg1_3_6 with
    | `Board(_lh_pieceAt_Board_0_3_6, _lh_pieceAt_Board_1_3_6) -> 
      (let rec pieceAtWith_3_6 = (fun c_3_7 n_7_1 ls_1_2_7 -> 
        (let rec _lh_matchIdent_2_6_5 = ls_1_2_7 in
          (match _lh_matchIdent_2_6_5 with
            | `LH_N -> 
              n_7_1
            | `LH_C(_lh_pieceAt_LH_C_0_3_6, _lh_pieceAt_LH_C_1_3_6) -> 
              (match _lh_pieceAt_LH_C_0_3_6 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_6, _lh_pieceAt_LH_P2_1_3_6) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_6 = _lh_pieceAt_arg2_3_6) then
                    (`Just((`LH_P2(c_3_7, _lh_pieceAt_LH_P2_0_3_6))))
                  else
                    (((pieceAtWith_3_6 c_3_7) n_7_1) _lh_pieceAt_LH_C_1_3_6))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_6 (`White)) (((pieceAtWith_3_6 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_6)) _lh_pieceAt_Board_0_3_6))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d7 _lh_pieceAt_arg1_2_7 _lh_pieceAt_arg2_2_7 =
  (match _lh_pieceAt_arg1_2_7 with
    | `Board(_lh_pieceAt_Board_0_2_7, _lh_pieceAt_Board_1_2_7) -> 
      (let rec pieceAtWith_2_7 = (fun c_2_8 n_5_6 ls_1_0_7 -> 
        (let rec _lh_matchIdent_2_2_8 = ls_1_0_7 in
          (match _lh_matchIdent_2_2_8 with
            | `LH_N -> 
              n_5_6
            | `LH_C(_lh_pieceAt_LH_C_0_2_7, _lh_pieceAt_LH_C_1_2_7) -> 
              (match _lh_pieceAt_LH_C_0_2_7 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_7, _lh_pieceAt_LH_P2_1_2_7) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_7 = _lh_pieceAt_arg2_2_7) then
                    (`Just((`LH_P2(c_2_8, _lh_pieceAt_LH_P2_0_2_7))))
                  else
                    (((pieceAtWith_2_7 c_2_8) n_5_6) _lh_pieceAt_LH_C_1_2_7))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_7 (`White)) (((pieceAtWith_2_7 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_7)) _lh_pieceAt_Board_0_2_7))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d8 _lh_pieceAt_arg1_7 _lh_pieceAt_arg2_7 =
  (match _lh_pieceAt_arg1_7 with
    | `Board(_lh_pieceAt_Board_0_7, _lh_pieceAt_Board_1_7) -> 
      (let rec pieceAtWith_7 = (fun c_8 n_1_7 ls_4_1 -> 
        (let rec _lh_matchIdent_1_0_3 = ls_4_1 in
          (match _lh_matchIdent_1_0_3 with
            | `LH_N -> 
              n_1_7
            | `LH_C(_lh_pieceAt_LH_C_0_7, _lh_pieceAt_LH_C_1_7) -> 
              (match _lh_pieceAt_LH_C_0_7 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_7, _lh_pieceAt_LH_P2_1_7) -> 
                  (if (_lh_pieceAt_LH_P2_1_7 = _lh_pieceAt_arg2_7) then
                    (`Just((`LH_P2(c_8, _lh_pieceAt_LH_P2_0_7))))
                  else
                    (((pieceAtWith_7 c_8) n_1_7) _lh_pieceAt_LH_C_1_7))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_7 (`White)) (((pieceAtWith_7 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_7)) _lh_pieceAt_Board_0_7))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d3_d9 _lh_pieceAt_arg1_1_4 _lh_pieceAt_arg2_1_4 =
  (match _lh_pieceAt_arg1_1_4 with
    | `Board(_lh_pieceAt_Board_0_1_4, _lh_pieceAt_Board_1_1_4) -> 
      (let rec pieceAtWith_1_4 = (fun c_1_5 n_3_0 ls_6_2 -> 
        (let rec _lh_matchIdent_1_3_7 = ls_6_2 in
          (match _lh_matchIdent_1_3_7 with
            | `LH_N -> 
              n_3_0
            | `LH_C(_lh_pieceAt_LH_C_0_1_4, _lh_pieceAt_LH_C_1_1_4) -> 
              (match _lh_pieceAt_LH_C_0_1_4 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_4, _lh_pieceAt_LH_P2_1_1_4) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_4 = _lh_pieceAt_arg2_1_4) then
                    (`Just((`LH_P2(c_1_5, _lh_pieceAt_LH_P2_0_1_4))))
                  else
                    (((pieceAtWith_1_4 c_1_5) n_3_0) _lh_pieceAt_LH_C_1_1_4))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_4 (`White)) (((pieceAtWith_1_4 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_4)) _lh_pieceAt_Board_0_1_4))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d4 _lh_pieceAt_arg1_4_0 _lh_pieceAt_arg2_4_0 =
  (match _lh_pieceAt_arg1_4_0 with
    | `Board(_lh_pieceAt_Board_0_4_0, _lh_pieceAt_Board_1_4_0) -> 
      (let rec pieceAtWith_4_0 = (fun c_4_1 n_7_5 ls_1_3_2 -> 
        (let rec _lh_matchIdent_2_7_3 = ls_1_3_2 in
          (match _lh_matchIdent_2_7_3 with
            | `LH_N -> 
              n_7_5
            | `LH_C(_lh_pieceAt_LH_C_0_4_0, _lh_pieceAt_LH_C_1_4_0) -> 
              (match _lh_pieceAt_LH_C_0_4_0 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_4_0, _lh_pieceAt_LH_P2_1_4_0) -> 
                  (if (_lh_pieceAt_LH_P2_1_4_0 = _lh_pieceAt_arg2_4_0) then
                    (`Just((`LH_P2(c_4_1, _lh_pieceAt_LH_P2_0_4_0))))
                  else
                    (((pieceAtWith_4_0 c_4_1) n_7_5) _lh_pieceAt_LH_C_1_4_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_4_0 (`White)) (((pieceAtWith_4_0 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_4_0)) _lh_pieceAt_Board_0_4_0))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d4_d0 _lh_pieceAt_arg1_2_5 _lh_pieceAt_arg2_2_5 =
  (match _lh_pieceAt_arg1_2_5 with
    | `Board(_lh_pieceAt_Board_0_2_5, _lh_pieceAt_Board_1_2_5) -> 
      (let rec pieceAtWith_2_5 = (fun c_2_6 n_5_2 ls_9_9 -> 
        (let rec _lh_matchIdent_2_0_4 = ls_9_9 in
          (match _lh_matchIdent_2_0_4 with
            | `LH_N -> 
              n_5_2
            | `LH_C(_lh_pieceAt_LH_C_0_2_5, _lh_pieceAt_LH_C_1_2_5) -> 
              (match _lh_pieceAt_LH_C_0_2_5 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_5, _lh_pieceAt_LH_P2_1_2_5) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_5 = _lh_pieceAt_arg2_2_5) then
                    (`Just((`LH_P2(c_2_6, _lh_pieceAt_LH_P2_0_2_5))))
                  else
                    (((pieceAtWith_2_5 c_2_6) n_5_2) _lh_pieceAt_LH_C_1_2_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_5 (`White)) (((pieceAtWith_2_5 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_5)) _lh_pieceAt_Board_0_2_5))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d4_d1 _lh_pieceAt_arg1_1_3 _lh_pieceAt_arg2_1_3 =
  (match _lh_pieceAt_arg1_1_3 with
    | `Board(_lh_pieceAt_Board_0_1_3, _lh_pieceAt_Board_1_1_3) -> 
      (let rec pieceAtWith_1_3 = (fun c_1_4 n_2_9 ls_6_0 -> 
        (let rec _lh_matchIdent_1_3_3 = ls_6_0 in
          (match _lh_matchIdent_1_3_3 with
            | `LH_N -> 
              n_2_9
            | `LH_C(_lh_pieceAt_LH_C_0_1_3, _lh_pieceAt_LH_C_1_1_3) -> 
              (match _lh_pieceAt_LH_C_0_1_3 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_3, _lh_pieceAt_LH_P2_1_1_3) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_3 = _lh_pieceAt_arg2_1_3) then
                    (`Just((`LH_P2(c_1_4, _lh_pieceAt_LH_P2_0_1_3))))
                  else
                    (((pieceAtWith_1_3 c_1_4) n_2_9) _lh_pieceAt_LH_C_1_1_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_3 (`White)) (((pieceAtWith_1_3 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_3)) _lh_pieceAt_Board_0_1_3))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d4_d2 _lh_pieceAt_arg1_2_9 _lh_pieceAt_arg2_2_9 =
  (match _lh_pieceAt_arg1_2_9 with
    | `Board(_lh_pieceAt_Board_0_2_9, _lh_pieceAt_Board_1_2_9) -> 
      (let rec pieceAtWith_2_9 = (fun c_3_0 n_6_0 ls_1_1_1 -> 
        (let rec _lh_matchIdent_2_4_3 = ls_1_1_1 in
          (match _lh_matchIdent_2_4_3 with
            | `LH_N -> 
              n_6_0
            | `LH_C(_lh_pieceAt_LH_C_0_2_9, _lh_pieceAt_LH_C_1_2_9) -> 
              (match _lh_pieceAt_LH_C_0_2_9 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_2_9, _lh_pieceAt_LH_P2_1_2_9) -> 
                  (if (_lh_pieceAt_LH_P2_1_2_9 = _lh_pieceAt_arg2_2_9) then
                    (`Just((`LH_P2(c_3_0, _lh_pieceAt_LH_P2_0_2_9))))
                  else
                    (((pieceAtWith_2_9 c_3_0) n_6_0) _lh_pieceAt_LH_C_1_2_9))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_2_9 (`White)) (((pieceAtWith_2_9 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_2_9)) _lh_pieceAt_Board_0_2_9))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d5 _lh_pieceAt_arg1_3_4 _lh_pieceAt_arg2_3_4 =
  (match _lh_pieceAt_arg1_3_4 with
    | `Board(_lh_pieceAt_Board_0_3_4, _lh_pieceAt_Board_1_3_4) -> 
      (let rec pieceAtWith_3_4 = (fun c_3_5 n_6_5 ls_1_1_9 -> 
        (let rec _lh_matchIdent_2_5_2 = ls_1_1_9 in
          (match _lh_matchIdent_2_5_2 with
            | `LH_N -> 
              n_6_5
            | `LH_C(_lh_pieceAt_LH_C_0_3_4, _lh_pieceAt_LH_C_1_3_4) -> 
              (match _lh_pieceAt_LH_C_0_3_4 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_4, _lh_pieceAt_LH_P2_1_3_4) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_4 = _lh_pieceAt_arg2_3_4) then
                    (`Just((`LH_P2(c_3_5, _lh_pieceAt_LH_P2_0_3_4))))
                  else
                    (((pieceAtWith_3_4 c_3_5) n_6_5) _lh_pieceAt_LH_C_1_3_4))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_4 (`White)) (((pieceAtWith_3_4 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_4)) _lh_pieceAt_Board_0_3_4))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d6 _lh_pieceAt_arg1_1_0 _lh_pieceAt_arg2_1_0 =
  (match _lh_pieceAt_arg1_1_0 with
    | `Board(_lh_pieceAt_Board_0_1_0, _lh_pieceAt_Board_1_1_0) -> 
      (let rec pieceAtWith_1_0 = (fun c_1_1 n_2_2 ls_4_6 -> 
        (let rec _lh_matchIdent_1_1_6 = ls_4_6 in
          (match _lh_matchIdent_1_1_6 with
            | `LH_N -> 
              n_2_2
            | `LH_C(_lh_pieceAt_LH_C_0_1_0, _lh_pieceAt_LH_C_1_1_0) -> 
              (match _lh_pieceAt_LH_C_0_1_0 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_1_0, _lh_pieceAt_LH_P2_1_1_0) -> 
                  (if (_lh_pieceAt_LH_P2_1_1_0 = _lh_pieceAt_arg2_1_0) then
                    (`Just((`LH_P2(c_1_1, _lh_pieceAt_LH_P2_0_1_0))))
                  else
                    (((pieceAtWith_1_0 c_1_1) n_2_2) _lh_pieceAt_LH_C_1_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_1_0 (`White)) (((pieceAtWith_1_0 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_1_0)) _lh_pieceAt_Board_0_1_0))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d7 _lh_pieceAt_arg1_5 _lh_pieceAt_arg2_5 =
  (match _lh_pieceAt_arg1_5 with
    | `Board(_lh_pieceAt_Board_0_5, _lh_pieceAt_Board_1_5) -> 
      (let rec pieceAtWith_5 = (fun c_6 n_1_5 ls_3_9 -> 
        (let rec _lh_matchIdent_9_4 = ls_3_9 in
          (match _lh_matchIdent_9_4 with
            | `LH_N -> 
              n_1_5
            | `LH_C(_lh_pieceAt_LH_C_0_5, _lh_pieceAt_LH_C_1_5) -> 
              (match _lh_pieceAt_LH_C_0_5 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_5, _lh_pieceAt_LH_P2_1_5) -> 
                  (if (_lh_pieceAt_LH_P2_1_5 = _lh_pieceAt_arg2_5) then
                    (`Just((`LH_P2(c_6, _lh_pieceAt_LH_P2_0_5))))
                  else
                    (((pieceAtWith_5 c_6) n_1_5) _lh_pieceAt_LH_C_1_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_5 (`White)) (((pieceAtWith_5 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_5)) _lh_pieceAt_Board_0_5))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d8 _lh_pieceAt_arg1_3_5 _lh_pieceAt_arg2_3_5 =
  (match _lh_pieceAt_arg1_3_5 with
    | `Board(_lh_pieceAt_Board_0_3_5, _lh_pieceAt_Board_1_3_5) -> 
      (let rec pieceAtWith_3_5 = (fun c_3_6 n_6_7 ls_1_2_2 -> 
        (let rec _lh_matchIdent_2_5_8 = ls_1_2_2 in
          (match _lh_matchIdent_2_5_8 with
            | `LH_N -> 
              n_6_7
            | `LH_C(_lh_pieceAt_LH_C_0_3_5, _lh_pieceAt_LH_C_1_3_5) -> 
              (match _lh_pieceAt_LH_C_0_3_5 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_3_5, _lh_pieceAt_LH_P2_1_3_5) -> 
                  (if (_lh_pieceAt_LH_P2_1_3_5 = _lh_pieceAt_arg2_3_5) then
                    (`Just((`LH_P2(c_3_6, _lh_pieceAt_LH_P2_0_3_5))))
                  else
                    (((pieceAtWith_3_5 c_3_6) n_6_7) _lh_pieceAt_LH_C_1_3_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_3_5 (`White)) (((pieceAtWith_3_5 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_3_5)) _lh_pieceAt_Board_0_3_5))
    | _ -> 
      (failwith "error"));;
let rec pieceAt__d9 _lh_pieceAt_arg1_8 _lh_pieceAt_arg2_8 =
  (match _lh_pieceAt_arg1_8 with
    | `Board(_lh_pieceAt_Board_0_8, _lh_pieceAt_Board_1_8) -> 
      (let rec pieceAtWith_8 = (fun c_9 n_1_9 ls_4_3 -> 
        (let rec _lh_matchIdent_1_0_7 = ls_4_3 in
          (match _lh_matchIdent_1_0_7 with
            | `LH_N -> 
              n_1_9
            | `LH_C(_lh_pieceAt_LH_C_0_8, _lh_pieceAt_LH_C_1_8) -> 
              (match _lh_pieceAt_LH_C_0_8 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_8, _lh_pieceAt_LH_P2_1_8) -> 
                  (if (_lh_pieceAt_LH_P2_1_8 = _lh_pieceAt_arg2_8) then
                    (`Just((`LH_P2(c_9, _lh_pieceAt_LH_P2_0_8))))
                  else
                    (((pieceAtWith_8 c_9) n_1_9) _lh_pieceAt_LH_C_1_8))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_8 (`White)) (((pieceAtWith_8 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_8)) _lh_pieceAt_Board_0_8))
    | _ -> 
      (failwith "error"));;
let rec putPieceAt__d0 _lh_putPieceAt_arg1_4 _lh_putPieceAt_arg2_4 _lh_putPieceAt_arg3_4 =
  (match _lh_putPieceAt_arg2_4 with
    | `LH_P2(_lh_putPieceAt_LH_P2_0_4, _lh_putPieceAt_LH_P2_1_4) -> 
      (match _lh_putPieceAt_LH_P2_0_4 with
        | `White -> 
          (match _lh_putPieceAt_arg3_4 with
            | `Board(_lh_putPieceAt_Board_0_8, _lh_putPieceAt_Board_1_8) -> 
              (`Board((`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_4, _lh_putPieceAt_arg1_4)), _lh_putPieceAt_Board_0_8)), _lh_putPieceAt_Board_1_8))
            | _ -> 
              (failwith "error"))
        | `Black -> 
          (match _lh_putPieceAt_arg3_4 with
            | `Board(_lh_putPieceAt_Board_0_9, _lh_putPieceAt_Board_1_9) -> 
              (`Board(_lh_putPieceAt_Board_0_9, (`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_4, _lh_putPieceAt_arg1_4)), _lh_putPieceAt_Board_1_9))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec putPieceAt__d1 _lh_putPieceAt_arg1_3 _lh_putPieceAt_arg2_3 _lh_putPieceAt_arg3_3 =
  (match _lh_putPieceAt_arg2_3 with
    | `LH_P2(_lh_putPieceAt_LH_P2_0_3, _lh_putPieceAt_LH_P2_1_3) -> 
      (match _lh_putPieceAt_LH_P2_0_3 with
        | `White -> 
          (match _lh_putPieceAt_arg3_3 with
            | `Board(_lh_putPieceAt_Board_0_6, _lh_putPieceAt_Board_1_6) -> 
              (`Board((`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_3, _lh_putPieceAt_arg1_3)), _lh_putPieceAt_Board_0_6)), _lh_putPieceAt_Board_1_6))
            | _ -> 
              (failwith "error"))
        | `Black -> 
          (match _lh_putPieceAt_arg3_3 with
            | `Board(_lh_putPieceAt_Board_0_7, _lh_putPieceAt_Board_1_7) -> 
              (`Board(_lh_putPieceAt_Board_0_7, (`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_3, _lh_putPieceAt_arg1_3)), _lh_putPieceAt_Board_1_7))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec putPieceAt__d2 _lh_putPieceAt_arg1_5 _lh_putPieceAt_arg2_5 _lh_putPieceAt_arg3_5 =
  (match _lh_putPieceAt_arg2_5 with
    | `LH_P2(_lh_putPieceAt_LH_P2_0_5, _lh_putPieceAt_LH_P2_1_5) -> 
      (match _lh_putPieceAt_LH_P2_0_5 with
        | `White -> 
          (match _lh_putPieceAt_arg3_5 with
            | `Board(_lh_putPieceAt_Board_0_1_0, _lh_putPieceAt_Board_1_1_0) -> 
              (`Board((`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_5, _lh_putPieceAt_arg1_5)), _lh_putPieceAt_Board_0_1_0)), _lh_putPieceAt_Board_1_1_0))
            | _ -> 
              (failwith "error"))
        | `Black -> 
          (match _lh_putPieceAt_arg3_5 with
            | `Board(_lh_putPieceAt_Board_0_1_1, _lh_putPieceAt_Board_1_1_1) -> 
              (`Board(_lh_putPieceAt_Board_0_1_1, (`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_5, _lh_putPieceAt_arg1_5)), _lh_putPieceAt_Board_1_1_1))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec putPieceAt__d3 _lh_putPieceAt_arg1_1 _lh_putPieceAt_arg2_1 _lh_putPieceAt_arg3_1 =
  (match _lh_putPieceAt_arg2_1 with
    | `LH_P2(_lh_putPieceAt_LH_P2_0_1, _lh_putPieceAt_LH_P2_1_1) -> 
      (match _lh_putPieceAt_LH_P2_0_1 with
        | `White -> 
          (match _lh_putPieceAt_arg3_1 with
            | `Board(_lh_putPieceAt_Board_0_2, _lh_putPieceAt_Board_1_2) -> 
              (`Board((`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_1, _lh_putPieceAt_arg1_1)), _lh_putPieceAt_Board_0_2)), _lh_putPieceAt_Board_1_2))
            | _ -> 
              (failwith "error"))
        | `Black -> 
          (match _lh_putPieceAt_arg3_1 with
            | `Board(_lh_putPieceAt_Board_0_3, _lh_putPieceAt_Board_1_3) -> 
              (`Board(_lh_putPieceAt_Board_0_3, (`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_1, _lh_putPieceAt_arg1_1)), _lh_putPieceAt_Board_1_3))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec putPieceAt__d4 _lh_putPieceAt_arg1_2 _lh_putPieceAt_arg2_2 _lh_putPieceAt_arg3_2 =
  (match _lh_putPieceAt_arg2_2 with
    | `LH_P2(_lh_putPieceAt_LH_P2_0_2, _lh_putPieceAt_LH_P2_1_2) -> 
      (match _lh_putPieceAt_LH_P2_0_2 with
        | `White -> 
          (match _lh_putPieceAt_arg3_2 with
            | `Board(_lh_putPieceAt_Board_0_4, _lh_putPieceAt_Board_1_4) -> 
              (`Board((`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_2, _lh_putPieceAt_arg1_2)), _lh_putPieceAt_Board_0_4)), _lh_putPieceAt_Board_1_4))
            | _ -> 
              (failwith "error"))
        | `Black -> 
          (match _lh_putPieceAt_arg3_2 with
            | `Board(_lh_putPieceAt_Board_0_5, _lh_putPieceAt_Board_1_5) -> 
              (`Board(_lh_putPieceAt_Board_0_5, (`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_2, _lh_putPieceAt_arg1_2)), _lh_putPieceAt_Board_1_5))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rPa__d0 _lh_rPa_arg1_5 _lh_rPa_arg2_5 =
  (match _lh_rPa_arg2_5 with
    | `LH_C(_lh_rPa_LH_C_0_5, _lh_rPa_LH_C_1_5) -> 
      (match _lh_rPa_LH_C_0_5 with
        | `LH_P2(_lh_rPa_LH_P2_0_5, _lh_rPa_LH_P2_1_5) -> 
          (if (_lh_rPa_LH_P2_1_5 = _lh_rPa_arg1_5) then
            _lh_rPa_LH_C_1_5
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_5, _lh_rPa_LH_P2_1_5)), ((rPa__d0 _lh_rPa_arg1_5) _lh_rPa_LH_C_1_5))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rPa__d1 _lh_rPa_arg1_2 _lh_rPa_arg2_2 =
  (match _lh_rPa_arg2_2 with
    | `LH_C(_lh_rPa_LH_C_0_2, _lh_rPa_LH_C_1_2) -> 
      (match _lh_rPa_LH_C_0_2 with
        | `LH_P2(_lh_rPa_LH_P2_0_2, _lh_rPa_LH_P2_1_2) -> 
          (if (_lh_rPa_LH_P2_1_2 = _lh_rPa_arg1_2) then
            _lh_rPa_LH_C_1_2
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_2, _lh_rPa_LH_P2_1_2)), ((rPa__d1 _lh_rPa_arg1_2) _lh_rPa_LH_C_1_2))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rPa__d2 _lh_rPa_arg1_1 _lh_rPa_arg2_1 =
  (match _lh_rPa_arg2_1 with
    | `LH_C(_lh_rPa_LH_C_0_1, _lh_rPa_LH_C_1_1) -> 
      (match _lh_rPa_LH_C_0_1 with
        | `LH_P2(_lh_rPa_LH_P2_0_1, _lh_rPa_LH_P2_1_1) -> 
          (if (_lh_rPa_LH_P2_1_1 = _lh_rPa_arg1_1) then
            _lh_rPa_LH_C_1_1
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_1, _lh_rPa_LH_P2_1_1)), ((rPa__d2 _lh_rPa_arg1_1) _lh_rPa_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rPa__d3 _lh_rPa_arg1_8 _lh_rPa_arg2_8 =
  (match _lh_rPa_arg2_8 with
    | `LH_C(_lh_rPa_LH_C_0_8, _lh_rPa_LH_C_1_8) -> 
      (match _lh_rPa_LH_C_0_8 with
        | `LH_P2(_lh_rPa_LH_P2_0_8, _lh_rPa_LH_P2_1_8) -> 
          (if (_lh_rPa_LH_P2_1_8 = _lh_rPa_arg1_8) then
            _lh_rPa_LH_C_1_8
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_8, _lh_rPa_LH_P2_1_8)), ((rPa__d3 _lh_rPa_arg1_8) _lh_rPa_LH_C_1_8))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rPa__d4 _lh_rPa_arg1_4 _lh_rPa_arg2_4 =
  (match _lh_rPa_arg2_4 with
    | `LH_C(_lh_rPa_LH_C_0_4, _lh_rPa_LH_C_1_4) -> 
      (match _lh_rPa_LH_C_0_4 with
        | `LH_P2(_lh_rPa_LH_P2_0_4, _lh_rPa_LH_P2_1_4) -> 
          (if (_lh_rPa_LH_P2_1_4 = _lh_rPa_arg1_4) then
            _lh_rPa_LH_C_1_4
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_4, _lh_rPa_LH_P2_1_4)), ((rPa__d4 _lh_rPa_arg1_4) _lh_rPa_LH_C_1_4))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rPa__d5 _lh_rPa_arg1_6 _lh_rPa_arg2_6 =
  (match _lh_rPa_arg2_6 with
    | `LH_C(_lh_rPa_LH_C_0_6, _lh_rPa_LH_C_1_6) -> 
      (match _lh_rPa_LH_C_0_6 with
        | `LH_P2(_lh_rPa_LH_P2_0_6, _lh_rPa_LH_P2_1_6) -> 
          (if (_lh_rPa_LH_P2_1_6 = _lh_rPa_arg1_6) then
            _lh_rPa_LH_C_1_6
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_6, _lh_rPa_LH_P2_1_6)), ((rPa__d5 _lh_rPa_arg1_6) _lh_rPa_LH_C_1_6))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rPa__d6 _lh_rPa_arg1_7 _lh_rPa_arg2_7 =
  (match _lh_rPa_arg2_7 with
    | `LH_C(_lh_rPa_LH_C_0_7, _lh_rPa_LH_C_1_7) -> 
      (match _lh_rPa_LH_C_0_7 with
        | `LH_P2(_lh_rPa_LH_P2_0_7, _lh_rPa_LH_P2_1_7) -> 
          (if (_lh_rPa_LH_P2_1_7 = _lh_rPa_arg1_7) then
            _lh_rPa_LH_C_1_7
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_7, _lh_rPa_LH_P2_1_7)), ((rPa__d6 _lh_rPa_arg1_7) _lh_rPa_LH_C_1_7))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rPa__d7 _lh_rPa_arg1_3 _lh_rPa_arg2_3 =
  (match _lh_rPa_arg2_3 with
    | `LH_C(_lh_rPa_LH_C_0_3, _lh_rPa_LH_C_1_3) -> 
      (match _lh_rPa_LH_C_0_3 with
        | `LH_P2(_lh_rPa_LH_P2_0_3, _lh_rPa_LH_P2_1_3) -> 
          (if (_lh_rPa_LH_P2_1_3 = _lh_rPa_arg1_3) then
            _lh_rPa_LH_C_1_3
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_3, _lh_rPa_LH_P2_1_3)), ((rPa__d7 _lh_rPa_arg1_3) _lh_rPa_LH_C_1_3))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper__d0 ls_8_3 a_1_3 =
  (match ls_8_3 with
    | `LH_C(h_1_6_9, t_1_7_1) -> 
      ((reverse_helper__d0 t_1_7_1) (`LH_C(h_1_6_9, a_1_3)))
    | `LH_N -> 
      a_1_3);;
let rec reverse_helper__d1 ls_7_8 a_1_2 =
  (match ls_7_8 with
    | `LH_C(h_1_5_5, t_1_5_7) -> 
      ((reverse_helper__d1 t_1_5_7) (`LH_C(h_1_5_5, a_1_2)))
    | `LH_N -> 
      a_1_2);;
let rec showColour__d0 _lh_showColour_arg1_1 =
  (match _lh_showColour_arg1_1 with
    | `Black -> 
      (`LH_C('B', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_N)))))))))))
    | `White -> 
      (`LH_C('W', (`LH_C('h', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N)))))))))))
    | _ -> 
      (failwith "error"));;
let rec tab__d0 _lh_tab_arg1_3 =
  (if (_lh_tab_arg1_3 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (tab__d0 (_lh_tab_arg1_3 - 1)))));;
let rec tab__d1 _lh_tab_arg1_2 =
  (if (_lh_tab_arg1_2 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (tab__d1 (_lh_tab_arg1_2 - 1)))));;
let rec tab__d2 _lh_tab_arg1_1 =
  (if (_lh_tab_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (tab__d2 (_lh_tab_arg1_1 - 1)))));;
let rec take__d0 n_6_9 ls_1_2_5 =
  (if (n_6_9 > 0) then
    (match ls_1_2_5 with
      | `LH_C(h_2_8_2, t_2_8_4) -> 
        (`LH_C(h_2_8_2, ((take__d0 (n_6_9 - 1)) t_2_8_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_4_4 ls_8_6 =
  (if (n_4_4 > 0) then
    (match ls_8_6 with
      | `LH_C(h_1_7_7, t_1_7_9) -> 
        (`LH_C(h_1_7_7, ((take__d1 (n_4_4 - 1)) t_1_7_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec toLower__d0 _lh_toLower_arg1_2 =
  (let rec _lh_matchIdent_2_3_5 = _lh_toLower_arg1_2 in
    (match _lh_matchIdent_2_3_5 with
      | 'A' -> 
        'a'
      | 'B' -> 
        'b'
      | 'C' -> 
        'c'
      | 'D' -> 
        'd'
      | 'E' -> 
        'e'
      | 'F' -> 
        'f'
      | 'G' -> 
        'g'
      | 'H' -> 
        'h'
      | 'I' -> 
        'i'
      | 'J' -> 
        'j'
      | 'K' -> 
        'k'
      | 'L' -> 
        'l'
      | 'M' -> 
        'm'
      | 'N' -> 
        'n'
      | 'O' -> 
        'o'
      | 'P' -> 
        'p'
      | 'Q' -> 
        'q'
      | 'R' -> 
        'r'
      | 'S' -> 
        's'
      | 'T' -> 
        't'
      | 'U' -> 
        'u'
      | 'V' -> 
        'v'
      | 'W' -> 
        'w'
      | 'X' -> 
        'x'
      | 'Y' -> 
        'y'
      | 'Z' -> 
        'z'
      | _ -> 
        _lh_matchIdent_2_3_5));;
let rec toLower__d1 _lh_toLower_arg1_1 =
  (let rec _lh_matchIdent_6_4 = _lh_toLower_arg1_1 in
    (match _lh_matchIdent_6_4 with
      | 'A' -> 
        'a'
      | 'B' -> 
        'b'
      | 'C' -> 
        'c'
      | 'D' -> 
        'd'
      | 'E' -> 
        'e'
      | 'F' -> 
        'f'
      | 'G' -> 
        'g'
      | 'H' -> 
        'h'
      | 'I' -> 
        'i'
      | 'J' -> 
        'j'
      | 'K' -> 
        'k'
      | 'L' -> 
        'l'
      | 'M' -> 
        'm'
      | 'N' -> 
        'n'
      | 'O' -> 
        'o'
      | 'P' -> 
        'p'
      | 'Q' -> 
        'q'
      | 'R' -> 
        'r'
      | 'S' -> 
        's'
      | 'T' -> 
        't'
      | 'U' -> 
        'u'
      | 'V' -> 
        'v'
      | 'W' -> 
        'w'
      | 'X' -> 
        'x'
      | 'Y' -> 
        'y'
      | 'Z' -> 
        'z'
      | _ -> 
        _lh_matchIdent_6_4));;
let rec zipWith__d0 f_2_2 xs_1_3_4 ys_1_3_4 =
  (match xs_1_3_4 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_1_3_4 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_2_2 hx_8) hy_8), (((zipWith__d0 f_2_2) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d1 f_2_6 xs_1_9_1 ys_1_9_1 =
  (match xs_1_9_1 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_1_9_1 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_2_6 hx_9) hy_9), (((zipWith__d1 f_2_6) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec bishopmoves__d0 _lh_bishopmoves_arg1_2 _lh_bishopmoves_arg2_2 _lh_bishopmoves_arg3_2 =
  ((((((moveLine__d0 _lh_bishopmoves_arg3_2) _lh_bishopmoves_arg1_2) _lh_bishopmoves_arg2_2) (fun xy_2_1 -> 
    (let rec _lh_matchIdent_1_1_2 = xy_2_1 in
      (match _lh_matchIdent_1_1_2 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_8, _lh_bishopmoves_LH_P2_1_8) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_8 - 1), (_lh_bishopmoves_LH_P2_1_8 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d1 _lh_bishopmoves_arg3_2) _lh_bishopmoves_arg1_2) _lh_bishopmoves_arg2_2) (fun xy_2_2 -> 
    (let rec _lh_matchIdent_1_1_3 = xy_2_2 in
      (match _lh_matchIdent_1_1_3 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_9, _lh_bishopmoves_LH_P2_1_9) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_9 + 1), (_lh_bishopmoves_LH_P2_1_9 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d2 _lh_bishopmoves_arg3_2) _lh_bishopmoves_arg1_2) _lh_bishopmoves_arg2_2) (fun xy_2_3 -> 
    (let rec _lh_matchIdent_1_1_4 = xy_2_3 in
      (match _lh_matchIdent_1_1_4 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_0, _lh_bishopmoves_LH_P2_1_1_0) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_0 - 1), (_lh_bishopmoves_LH_P2_1_1_0 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d3 _lh_bishopmoves_arg3_2) _lh_bishopmoves_arg1_2) _lh_bishopmoves_arg2_2) (fun xy_2_4 -> 
    (let rec _lh_matchIdent_1_1_5 = xy_2_4 in
      (match _lh_matchIdent_1_1_5 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_1, _lh_bishopmoves_LH_P2_1_1_1) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_1 + 1), (_lh_bishopmoves_LH_P2_1_1_1 - 1)))
        | _ -> 
          (failwith "error"))))) (fun x_1_5 -> 
    x_1_5))))) (`LH_N))
and bishopmoves__d1 _lh_bishopmoves_arg1_3 _lh_bishopmoves_arg2_3 _lh_bishopmoves_arg3_3 =
  ((((((moveLine__d4 _lh_bishopmoves_arg3_3) _lh_bishopmoves_arg1_3) _lh_bishopmoves_arg2_3) (fun xy_3_0 -> 
    (let rec _lh_matchIdent_2_0_8 = xy_3_0 in
      (match _lh_matchIdent_2_0_8 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_2, _lh_bishopmoves_LH_P2_1_1_2) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_2 - 1), (_lh_bishopmoves_LH_P2_1_1_2 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d5 _lh_bishopmoves_arg3_3) _lh_bishopmoves_arg1_3) _lh_bishopmoves_arg2_3) (fun xy_3_1 -> 
    (let rec _lh_matchIdent_2_0_9 = xy_3_1 in
      (match _lh_matchIdent_2_0_9 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_3, _lh_bishopmoves_LH_P2_1_1_3) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_3 + 1), (_lh_bishopmoves_LH_P2_1_1_3 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d6 _lh_bishopmoves_arg3_3) _lh_bishopmoves_arg1_3) _lh_bishopmoves_arg2_3) (fun xy_3_2 -> 
    (let rec _lh_matchIdent_2_1_0 = xy_3_2 in
      (match _lh_matchIdent_2_1_0 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_4, _lh_bishopmoves_LH_P2_1_1_4) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_4 - 1), (_lh_bishopmoves_LH_P2_1_1_4 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d7 _lh_bishopmoves_arg3_3) _lh_bishopmoves_arg1_3) _lh_bishopmoves_arg2_3) (fun xy_3_3 -> 
    (let rec _lh_matchIdent_2_1_1 = xy_3_3 in
      (match _lh_matchIdent_2_1_1 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_5, _lh_bishopmoves_LH_P2_1_1_5) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_5 + 1), (_lh_bishopmoves_LH_P2_1_1_5 - 1)))
        | _ -> 
          (failwith "error"))))) (fun x_2_2 -> 
    x_2_2))))) (`LH_N))
and bishopmoves__d2 _lh_bishopmoves_arg1_1 _lh_bishopmoves_arg2_1 _lh_bishopmoves_arg3_1 =
  ((((((moveLine__d1_d6 _lh_bishopmoves_arg3_1) _lh_bishopmoves_arg1_1) _lh_bishopmoves_arg2_1) (fun xy_1_3 -> 
    (let rec _lh_matchIdent_7_6 = xy_1_3 in
      (match _lh_matchIdent_7_6 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_4, _lh_bishopmoves_LH_P2_1_4) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_4 - 1), (_lh_bishopmoves_LH_P2_1_4 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d1_d7 _lh_bishopmoves_arg3_1) _lh_bishopmoves_arg1_1) _lh_bishopmoves_arg2_1) (fun xy_1_4 -> 
    (let rec _lh_matchIdent_7_7 = xy_1_4 in
      (match _lh_matchIdent_7_7 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_5, _lh_bishopmoves_LH_P2_1_5) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_5 + 1), (_lh_bishopmoves_LH_P2_1_5 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d1_d8 _lh_bishopmoves_arg3_1) _lh_bishopmoves_arg1_1) _lh_bishopmoves_arg2_1) (fun xy_1_5 -> 
    (let rec _lh_matchIdent_7_8 = xy_1_5 in
      (match _lh_matchIdent_7_8 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_6, _lh_bishopmoves_LH_P2_1_6) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_6 - 1), (_lh_bishopmoves_LH_P2_1_6 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d1_d9 _lh_bishopmoves_arg3_1) _lh_bishopmoves_arg1_1) _lh_bishopmoves_arg2_1) (fun xy_1_6 -> 
    (let rec _lh_matchIdent_7_9 = xy_1_6 in
      (match _lh_matchIdent_7_9 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_7, _lh_bishopmoves_LH_P2_1_7) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_7 + 1), (_lh_bishopmoves_LH_P2_1_7 - 1)))
        | _ -> 
          (failwith "error"))))) (fun x_1_1 -> 
    x_1_1))))) (`LH_N))
and bishopmoves__d3 _lh_bishopmoves_arg1_4 _lh_bishopmoves_arg2_4 _lh_bishopmoves_arg3_4 =
  ((((((moveLine__d2_d0 _lh_bishopmoves_arg3_4) _lh_bishopmoves_arg1_4) _lh_bishopmoves_arg2_4) (fun xy_3_9 -> 
    (let rec _lh_matchIdent_2_9_8 = xy_3_9 in
      (match _lh_matchIdent_2_9_8 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_6, _lh_bishopmoves_LH_P2_1_1_6) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_6 - 1), (_lh_bishopmoves_LH_P2_1_1_6 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d2_d1 _lh_bishopmoves_arg3_4) _lh_bishopmoves_arg1_4) _lh_bishopmoves_arg2_4) (fun xy_4_0 -> 
    (let rec _lh_matchIdent_2_9_9 = xy_4_0 in
      (match _lh_matchIdent_2_9_9 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_7, _lh_bishopmoves_LH_P2_1_1_7) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_7 + 1), (_lh_bishopmoves_LH_P2_1_1_7 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d2_d2 _lh_bishopmoves_arg3_4) _lh_bishopmoves_arg1_4) _lh_bishopmoves_arg2_4) (fun xy_4_1 -> 
    (let rec _lh_matchIdent_3_0_0 = xy_4_1 in
      (match _lh_matchIdent_3_0_0 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_8, _lh_bishopmoves_LH_P2_1_1_8) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_8 - 1), (_lh_bishopmoves_LH_P2_1_1_8 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d2_d3 _lh_bishopmoves_arg3_4) _lh_bishopmoves_arg1_4) _lh_bishopmoves_arg2_4) (fun xy_4_2 -> 
    (let rec _lh_matchIdent_3_0_1 = xy_4_2 in
      (match _lh_matchIdent_3_0_1 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1_9, _lh_bishopmoves_LH_P2_1_1_9) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1_9 + 1), (_lh_bishopmoves_LH_P2_1_1_9 - 1)))
        | _ -> 
          (failwith "error"))))) (fun x_2_5 -> 
    x_2_5))))) (`LH_N))
and comment__d0 _lh_comment_arg1_1 =
  ((_lh_comment_arg1_1 = (`LH_N)) || (((take__d0 2) _lh_comment_arg1_1) = (`LH_C('-', (`LH_C('-', (`LH_N)))))))
and compact__d0 _lh_compact_arg1_1 =
  (match _lh_compact_arg1_1 with
    | `Solution(_lh_compact_Solution_0_1, _lh_compact_Solution_1_1) -> 
      (`Soln(_lh_compact_Solution_0_1, (((foldr__d2 insertCompact__d0) (`LH_N)) _lh_compact_Solution_1_1)))
    | _ -> 
      (failwith "error"))
and concat__d0 lss_3 =
  (match lss_3 with
    | `LH_C(h_1_9_0, t_1_9_2) -> 
      ((mappend__d7 h_1_9_0) (concat__d0 t_1_9_2))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      ((mappend__d8 h_2_2) (concat__d1 t_2_4))
    | `LH_N -> 
      (`LH_N))
and concat__d2 lss_5 =
  (match lss_5 with
    | `LH_C(h_3_0_9, t_3_1_1) -> 
      ((mappend__d1_d0 h_3_0_9) (concat__d2 t_3_1_1))
    | `LH_N -> 
      (`LH_N))
and concat__d3 lss_2 =
  (match lss_2 with
    | `LH_C(h_9_0, t_9_2) -> 
      ((mappend__d2_d3_d1 h_9_0) (concat__d3 t_9_2))
    | `LH_N -> 
      (`LH_N))
and concat__d4 lss_4 =
  (match lss_4 with
    | `LH_C(h_2_3_8, t_2_4_0) -> 
      ((mappend__d2_d3_d5 h_2_3_8) (concat__d4 t_2_4_0))
    | `LH_N -> 
      (`LH_N))
and insertCompact__d0 _lh_insertCompact_arg1_1 _lh_insertCompact_arg2_1 =
  (match _lh_insertCompact_arg1_1 with
    | `LH_P2(_lh_insertCompact_LH_P2_0_2, _lh_insertCompact_LH_P2_1_2) -> 
      (let rec insert_1 = (fun _lh_insert_arg1_1 _lh_insert_arg2_1 -> 
        (match _lh_insert_arg2_1 with
          | `LH_N -> 
            (`LH_C(_lh_insert_arg1_1, (`LH_N)))
          | `LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1) -> 
            (if (_lh_insert_arg1_1 > _lh_insert_LH_C_0_1) then
              (`LH_C(_lh_insert_LH_C_0_1, ((insert_1 _lh_insert_arg1_1) _lh_insert_LH_C_1_1)))
            else
              (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1)))))
          | _ -> 
            (failwith "error"))) in
        (let rec cs_1 = (compact__d0 _lh_insertCompact_LH_P2_1_2) in
          (let rec ic_1 = (fun ls_7_5 -> 
            (let rec _lh_matchIdent_1_5_0 = ls_7_5 in
              (match _lh_matchIdent_1_5_0 with
                | `LH_N -> 
                  (`LH_C((`LH_P2((`LH_C(_lh_insertCompact_LH_P2_0_2, (`LH_N))), cs_1)), (`LH_N)))
                | `LH_C(_lh_insertCompact_LH_C_0_1, _lh_insertCompact_LH_C_1_1) -> 
                  (match _lh_insertCompact_LH_C_0_1 with
                    | `LH_P2(_lh_insertCompact_LH_P2_0_3, _lh_insertCompact_LH_P2_1_3) -> 
                      (let rec a_1_1 = ((showSoln__d0 cs_1) 1) in
                        (let rec b_1_3 = ((showSoln__d1 _lh_insertCompact_LH_P2_1_3) 1) in
                          (if (a_1_1 < b_1_3) then
                            (`LH_C((`LH_P2((`LH_C(_lh_insertCompact_LH_P2_0_2, (`LH_N))), cs_1)), (`LH_C((`LH_P2(_lh_insertCompact_LH_P2_0_3, _lh_insertCompact_LH_P2_1_3)), _lh_insertCompact_LH_C_1_1))))
                          else
                            (if (a_1_1 = b_1_3) then
                              (`LH_C((`LH_P2(((insert_1 _lh_insertCompact_LH_P2_0_2) _lh_insertCompact_LH_P2_0_3), cs_1)), _lh_insertCompact_LH_C_1_1))
                            else
                              (if (a_1_1 > b_1_3) then
                                (`LH_C((`LH_P2(_lh_insertCompact_LH_P2_0_3, _lh_insertCompact_LH_P2_1_3)), (ic_1 _lh_insertCompact_LH_C_1_1)))
                              else
                                ((failwith "error") (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))) in
            (ic_1 _lh_insertCompact_arg2_1))))
    | _ -> 
      (failwith "error"))
and kingSquare__d0 _lh_kingSquare_arg1_3 _lh_kingSquare_arg2_3 =
  (match _lh_kingSquare_arg1_3 with
    | `White -> 
      (match _lh_kingSquare_arg2_3 with
        | `Board(_lh_kingSquare_Board_0_6, _lh_kingSquare_Board_1_6) -> 
          (kSq__d0 _lh_kingSquare_Board_0_6)
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_kingSquare_arg2_3 with
        | `Board(_lh_kingSquare_Board_0_7, _lh_kingSquare_Board_1_7) -> 
          (kSq__d1 _lh_kingSquare_Board_1_7)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and kingSquare__d1 _lh_kingSquare_arg1_2 _lh_kingSquare_arg2_2 =
  (match _lh_kingSquare_arg1_2 with
    | `White -> 
      (match _lh_kingSquare_arg2_2 with
        | `Board(_lh_kingSquare_Board_0_4, _lh_kingSquare_Board_1_4) -> 
          (kSq__d2 _lh_kingSquare_Board_0_4)
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_kingSquare_arg2_2 with
        | `Board(_lh_kingSquare_Board_0_5, _lh_kingSquare_Board_1_5) -> 
          (kSq__d3 _lh_kingSquare_Board_1_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and kingSquare__d2 _lh_kingSquare_arg1_1 _lh_kingSquare_arg2_1 =
  (match _lh_kingSquare_arg1_1 with
    | `White -> 
      (match _lh_kingSquare_arg2_1 with
        | `Board(_lh_kingSquare_Board_0_2, _lh_kingSquare_Board_1_2) -> 
          (kSq__d4 _lh_kingSquare_Board_0_2)
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_kingSquare_arg2_1 with
        | `Board(_lh_kingSquare_Board_0_3, _lh_kingSquare_Board_1_3) -> 
          (kSq__d5 _lh_kingSquare_Board_1_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and kingincheck__d0 _lh_kingincheck_arg1_2 _lh_kingincheck_arg2_2 =
  (let rec givesCheck_2 = (fun kxy_2 -> 
    (let rec _lh_matchIdent_1_7_0 = kxy_2 in
      (match _lh_matchIdent_1_7_0 with
        | `LH_P2(_lh_kingincheck_LH_P2_0_1_4, _lh_kingincheck_LH_P2_1_1_4) -> 
          (match _lh_kingincheck_LH_P2_1_1_4 with
            | `LH_P2(_lh_kingincheck_LH_P2_0_1_5, _lh_kingincheck_LH_P2_1_1_5) -> 
              (let rec kthreat_2 = (fun param_3 -> 
                (let rec xkyk_2 = ((kingSquare__d0 _lh_kingincheck_arg1_2) _lh_kingincheck_arg2_2) in
                  (let rec _lh_matchIdent_1_7_1 = xkyk_2 in
                    (match _lh_matchIdent_1_7_1 with
                      | `LH_P2(_lh_kingincheck_LH_P2_0_1_6, _lh_kingincheck_LH_P2_1_1_6) -> 
                        (let rec _lh_matchIdent_1_7_2 = param_3 in
                          (match _lh_matchIdent_1_7_2 with
                            | `King -> 
                              (((abs__d0 (_lh_kingincheck_LH_P2_0_1_5 - _lh_kingincheck_LH_P2_0_1_6)) <= 1) && ((abs__d1 (_lh_kingincheck_LH_P2_1_1_5 - _lh_kingincheck_LH_P2_1_1_6)) <= 1))
                            | `Queen -> 
                              ((kthreat_2 (`Rook)) || (kthreat_2 (`Bishop)))
                            | `Rook -> 
                              (((_lh_kingincheck_LH_P2_0_1_5 = _lh_kingincheck_LH_P2_0_1_6) && ((emptyAtAll__d0 _lh_kingincheck_arg2_2) (fun xeye_8 -> 
                                (let rec _lh_matchIdent_1_7_3 = xeye_8 in
                                  (match _lh_matchIdent_1_7_3 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_7, _lh_kingincheck_LH_P2_1_1_7) -> 
                                      (((_lh_kingincheck_LH_P2_0_1_7 = _lh_kingincheck_LH_P2_0_1_6) && (((min__d0 _lh_kingincheck_LH_P2_1_1_5) _lh_kingincheck_LH_P2_1_1_6) < _lh_kingincheck_LH_P2_1_1_7)) && (_lh_kingincheck_LH_P2_1_1_7 < ((max__d0 _lh_kingincheck_LH_P2_1_1_5) _lh_kingincheck_LH_P2_1_1_6)))
                                    | _ -> 
                                      (failwith "error")))))) || ((_lh_kingincheck_LH_P2_1_1_5 = _lh_kingincheck_LH_P2_1_1_6) && ((emptyAtAll__d1 _lh_kingincheck_arg2_2) (fun xeye_9 -> 
                                (let rec _lh_matchIdent_1_7_4 = xeye_9 in
                                  (match _lh_matchIdent_1_7_4 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_8, _lh_kingincheck_LH_P2_1_1_8) -> 
                                      (((_lh_kingincheck_LH_P2_1_1_8 = _lh_kingincheck_LH_P2_1_1_6) && (((min__d1 _lh_kingincheck_LH_P2_0_1_5) _lh_kingincheck_LH_P2_0_1_6) < _lh_kingincheck_LH_P2_0_1_8)) && (_lh_kingincheck_LH_P2_0_1_8 < ((max__d1 _lh_kingincheck_LH_P2_0_1_5) _lh_kingincheck_LH_P2_0_1_6)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Bishop -> 
                              ((((_lh_kingincheck_LH_P2_0_1_5 + _lh_kingincheck_LH_P2_1_1_5) = (_lh_kingincheck_LH_P2_0_1_6 + _lh_kingincheck_LH_P2_1_1_6)) && ((emptyAtAll__d2 _lh_kingincheck_arg2_2) (fun xeye_1_0 -> 
                                (let rec _lh_matchIdent_1_7_5 = xeye_1_0 in
                                  (match _lh_matchIdent_1_7_5 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_9, _lh_kingincheck_LH_P2_1_1_9) -> 
                                      ((((_lh_kingincheck_LH_P2_0_1_9 + _lh_kingincheck_LH_P2_1_1_9) = (_lh_kingincheck_LH_P2_0_1_6 + _lh_kingincheck_LH_P2_1_1_6)) && (((min__d2 _lh_kingincheck_LH_P2_0_1_5) _lh_kingincheck_LH_P2_0_1_6) < _lh_kingincheck_LH_P2_0_1_9)) && (_lh_kingincheck_LH_P2_0_1_9 < ((max__d2 _lh_kingincheck_LH_P2_0_1_5) _lh_kingincheck_LH_P2_0_1_6)))
                                    | _ -> 
                                      (failwith "error")))))) || (((_lh_kingincheck_LH_P2_0_1_5 - _lh_kingincheck_LH_P2_1_1_5) = (_lh_kingincheck_LH_P2_0_1_6 - _lh_kingincheck_LH_P2_1_1_6)) && ((emptyAtAll__d3 _lh_kingincheck_arg2_2) (fun xeye_1_1 -> 
                                (let rec _lh_matchIdent_1_7_6 = xeye_1_1 in
                                  (match _lh_matchIdent_1_7_6 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_2_0, _lh_kingincheck_LH_P2_1_2_0) -> 
                                      ((((_lh_kingincheck_LH_P2_0_2_0 - _lh_kingincheck_LH_P2_1_2_0) = (_lh_kingincheck_LH_P2_0_1_6 - _lh_kingincheck_LH_P2_1_1_6)) && (((min__d3 _lh_kingincheck_LH_P2_0_1_5) _lh_kingincheck_LH_P2_0_1_6) < _lh_kingincheck_LH_P2_0_2_0)) && (_lh_kingincheck_LH_P2_0_2_0 < ((max__d3 _lh_kingincheck_LH_P2_0_1_5) _lh_kingincheck_LH_P2_0_1_6)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Knight -> 
                              ((((abs__d2 (_lh_kingincheck_LH_P2_0_1_5 - _lh_kingincheck_LH_P2_0_1_6)) = 2) && ((abs__d3 (_lh_kingincheck_LH_P2_1_1_5 - _lh_kingincheck_LH_P2_1_1_6)) = 1)) || (((abs__d4 (_lh_kingincheck_LH_P2_0_1_5 - _lh_kingincheck_LH_P2_0_1_6)) = 1) && ((abs__d5 (_lh_kingincheck_LH_P2_1_1_5 - _lh_kingincheck_LH_P2_1_1_6)) = 2)))
                            | `Pawn -> 
                              (((abs__d6 (_lh_kingincheck_LH_P2_0_1_5 - _lh_kingincheck_LH_P2_0_1_6)) = 1) && (let rec _lh_matchIdent_1_7_7 = _lh_kingincheck_arg1_2 in
                                (match _lh_matchIdent_1_7_7 with
                                  | `Black -> 
                                    (_lh_kingincheck_LH_P2_1_1_6 = (_lh_kingincheck_LH_P2_1_1_5 + 1))
                                  | `White -> 
                                    (_lh_kingincheck_LH_P2_1_1_6 = (_lh_kingincheck_LH_P2_1_1_5 - 1))
                                  | _ -> 
                                    (failwith "error"))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error"))))) in
                (kthreat_2 _lh_kingincheck_LH_P2_0_1_4))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    ((any__d0 givesCheck_2) ((forcesColoured__d0 (opponent__d0 _lh_kingincheck_arg1_2)) _lh_kingincheck_arg2_2)))
and kingincheck__d1 _lh_kingincheck_arg1_3 _lh_kingincheck_arg2_3 =
  (let rec givesCheck_3 = (fun kxy_3 -> 
    (let rec _lh_matchIdent_2_1_5 = kxy_3 in
      (match _lh_matchIdent_2_1_5 with
        | `LH_P2(_lh_kingincheck_LH_P2_0_2_1, _lh_kingincheck_LH_P2_1_2_1) -> 
          (match _lh_kingincheck_LH_P2_1_2_1 with
            | `LH_P2(_lh_kingincheck_LH_P2_0_2_2, _lh_kingincheck_LH_P2_1_2_2) -> 
              (let rec kthreat_3 = (fun param_5 -> 
                (let rec xkyk_3 = ((kingSquare__d1 _lh_kingincheck_arg1_3) _lh_kingincheck_arg2_3) in
                  (let rec _lh_matchIdent_2_1_6 = xkyk_3 in
                    (match _lh_matchIdent_2_1_6 with
                      | `LH_P2(_lh_kingincheck_LH_P2_0_2_3, _lh_kingincheck_LH_P2_1_2_3) -> 
                        (let rec _lh_matchIdent_2_1_7 = param_5 in
                          (match _lh_matchIdent_2_1_7 with
                            | `King -> 
                              (((abs__d7 (_lh_kingincheck_LH_P2_0_2_2 - _lh_kingincheck_LH_P2_0_2_3)) <= 1) && ((abs__d8 (_lh_kingincheck_LH_P2_1_2_2 - _lh_kingincheck_LH_P2_1_2_3)) <= 1))
                            | `Queen -> 
                              ((kthreat_3 (`Rook)) || (kthreat_3 (`Bishop)))
                            | `Rook -> 
                              (((_lh_kingincheck_LH_P2_0_2_2 = _lh_kingincheck_LH_P2_0_2_3) && ((emptyAtAll__d4 _lh_kingincheck_arg2_3) (fun xeye_1_2 -> 
                                (let rec _lh_matchIdent_2_1_8 = xeye_1_2 in
                                  (match _lh_matchIdent_2_1_8 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_2_4, _lh_kingincheck_LH_P2_1_2_4) -> 
                                      (((_lh_kingincheck_LH_P2_0_2_4 = _lh_kingincheck_LH_P2_0_2_3) && (((min__d4 _lh_kingincheck_LH_P2_1_2_2) _lh_kingincheck_LH_P2_1_2_3) < _lh_kingincheck_LH_P2_1_2_4)) && (_lh_kingincheck_LH_P2_1_2_4 < ((max__d4 _lh_kingincheck_LH_P2_1_2_2) _lh_kingincheck_LH_P2_1_2_3)))
                                    | _ -> 
                                      (failwith "error")))))) || ((_lh_kingincheck_LH_P2_1_2_2 = _lh_kingincheck_LH_P2_1_2_3) && ((emptyAtAll__d5 _lh_kingincheck_arg2_3) (fun xeye_1_3 -> 
                                (let rec _lh_matchIdent_2_1_9 = xeye_1_3 in
                                  (match _lh_matchIdent_2_1_9 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_2_5, _lh_kingincheck_LH_P2_1_2_5) -> 
                                      (((_lh_kingincheck_LH_P2_1_2_5 = _lh_kingincheck_LH_P2_1_2_3) && (((min__d5 _lh_kingincheck_LH_P2_0_2_2) _lh_kingincheck_LH_P2_0_2_3) < _lh_kingincheck_LH_P2_0_2_5)) && (_lh_kingincheck_LH_P2_0_2_5 < ((max__d5 _lh_kingincheck_LH_P2_0_2_2) _lh_kingincheck_LH_P2_0_2_3)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Bishop -> 
                              ((((_lh_kingincheck_LH_P2_0_2_2 + _lh_kingincheck_LH_P2_1_2_2) = (_lh_kingincheck_LH_P2_0_2_3 + _lh_kingincheck_LH_P2_1_2_3)) && ((emptyAtAll__d6 _lh_kingincheck_arg2_3) (fun xeye_1_4 -> 
                                (let rec _lh_matchIdent_2_2_0 = xeye_1_4 in
                                  (match _lh_matchIdent_2_2_0 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_2_6, _lh_kingincheck_LH_P2_1_2_6) -> 
                                      ((((_lh_kingincheck_LH_P2_0_2_6 + _lh_kingincheck_LH_P2_1_2_6) = (_lh_kingincheck_LH_P2_0_2_3 + _lh_kingincheck_LH_P2_1_2_3)) && (((min__d6 _lh_kingincheck_LH_P2_0_2_2) _lh_kingincheck_LH_P2_0_2_3) < _lh_kingincheck_LH_P2_0_2_6)) && (_lh_kingincheck_LH_P2_0_2_6 < ((max__d6 _lh_kingincheck_LH_P2_0_2_2) _lh_kingincheck_LH_P2_0_2_3)))
                                    | _ -> 
                                      (failwith "error")))))) || (((_lh_kingincheck_LH_P2_0_2_2 - _lh_kingincheck_LH_P2_1_2_2) = (_lh_kingincheck_LH_P2_0_2_3 - _lh_kingincheck_LH_P2_1_2_3)) && ((emptyAtAll__d7 _lh_kingincheck_arg2_3) (fun xeye_1_5 -> 
                                (let rec _lh_matchIdent_2_2_1 = xeye_1_5 in
                                  (match _lh_matchIdent_2_2_1 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_2_7, _lh_kingincheck_LH_P2_1_2_7) -> 
                                      ((((_lh_kingincheck_LH_P2_0_2_7 - _lh_kingincheck_LH_P2_1_2_7) = (_lh_kingincheck_LH_P2_0_2_3 - _lh_kingincheck_LH_P2_1_2_3)) && (((min__d7 _lh_kingincheck_LH_P2_0_2_2) _lh_kingincheck_LH_P2_0_2_3) < _lh_kingincheck_LH_P2_0_2_7)) && (_lh_kingincheck_LH_P2_0_2_7 < ((max__d7 _lh_kingincheck_LH_P2_0_2_2) _lh_kingincheck_LH_P2_0_2_3)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Knight -> 
                              ((((abs__d9 (_lh_kingincheck_LH_P2_0_2_2 - _lh_kingincheck_LH_P2_0_2_3)) = 2) && ((abs__d1_d0 (_lh_kingincheck_LH_P2_1_2_2 - _lh_kingincheck_LH_P2_1_2_3)) = 1)) || (((abs__d1_d1 (_lh_kingincheck_LH_P2_0_2_2 - _lh_kingincheck_LH_P2_0_2_3)) = 1) && ((abs__d1_d2 (_lh_kingincheck_LH_P2_1_2_2 - _lh_kingincheck_LH_P2_1_2_3)) = 2)))
                            | `Pawn -> 
                              (((abs__d1_d3 (_lh_kingincheck_LH_P2_0_2_2 - _lh_kingincheck_LH_P2_0_2_3)) = 1) && (let rec _lh_matchIdent_2_2_2 = _lh_kingincheck_arg1_3 in
                                (match _lh_matchIdent_2_2_2 with
                                  | `Black -> 
                                    (_lh_kingincheck_LH_P2_1_2_3 = (_lh_kingincheck_LH_P2_1_2_2 + 1))
                                  | `White -> 
                                    (_lh_kingincheck_LH_P2_1_2_3 = (_lh_kingincheck_LH_P2_1_2_2 - 1))
                                  | _ -> 
                                    (failwith "error"))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error"))))) in
                (kthreat_3 _lh_kingincheck_LH_P2_0_2_1))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    ((any__d1 givesCheck_3) ((forcesColoured__d2 (opponent__d1 _lh_kingincheck_arg1_3)) _lh_kingincheck_arg2_3)))
and kingincheck__d2 _lh_kingincheck_arg1_1 _lh_kingincheck_arg2_1 =
  (let rec givesCheck_1 = (fun kxy_1 -> 
    (let rec _lh_matchIdent_1_5_6 = kxy_1 in
      (match _lh_matchIdent_1_5_6 with
        | `LH_P2(_lh_kingincheck_LH_P2_0_7, _lh_kingincheck_LH_P2_1_7) -> 
          (match _lh_kingincheck_LH_P2_1_7 with
            | `LH_P2(_lh_kingincheck_LH_P2_0_8, _lh_kingincheck_LH_P2_1_8) -> 
              (let rec kthreat_1 = (fun param_2 -> 
                (let rec xkyk_1 = ((kingSquare__d2 _lh_kingincheck_arg1_1) _lh_kingincheck_arg2_1) in
                  (let rec _lh_matchIdent_1_5_7 = xkyk_1 in
                    (match _lh_matchIdent_1_5_7 with
                      | `LH_P2(_lh_kingincheck_LH_P2_0_9, _lh_kingincheck_LH_P2_1_9) -> 
                        (let rec _lh_matchIdent_1_5_8 = param_2 in
                          (match _lh_matchIdent_1_5_8 with
                            | `King -> 
                              (((abs__d1_d4 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) <= 1) && ((abs__d1_d5 (_lh_kingincheck_LH_P2_1_8 - _lh_kingincheck_LH_P2_1_9)) <= 1))
                            | `Queen -> 
                              ((kthreat_1 (`Rook)) || (kthreat_1 (`Bishop)))
                            | `Rook -> 
                              (((_lh_kingincheck_LH_P2_0_8 = _lh_kingincheck_LH_P2_0_9) && ((emptyAtAll__d8 _lh_kingincheck_arg2_1) (fun xeye_4 -> 
                                (let rec _lh_matchIdent_1_5_9 = xeye_4 in
                                  (match _lh_matchIdent_1_5_9 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_0, _lh_kingincheck_LH_P2_1_1_0) -> 
                                      (((_lh_kingincheck_LH_P2_0_1_0 = _lh_kingincheck_LH_P2_0_9) && (((min__d8 _lh_kingincheck_LH_P2_1_8) _lh_kingincheck_LH_P2_1_9) < _lh_kingincheck_LH_P2_1_1_0)) && (_lh_kingincheck_LH_P2_1_1_0 < ((max__d8 _lh_kingincheck_LH_P2_1_8) _lh_kingincheck_LH_P2_1_9)))
                                    | _ -> 
                                      (failwith "error")))))) || ((_lh_kingincheck_LH_P2_1_8 = _lh_kingincheck_LH_P2_1_9) && ((emptyAtAll__d9 _lh_kingincheck_arg2_1) (fun xeye_5 -> 
                                (let rec _lh_matchIdent_1_6_0 = xeye_5 in
                                  (match _lh_matchIdent_1_6_0 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_1, _lh_kingincheck_LH_P2_1_1_1) -> 
                                      (((_lh_kingincheck_LH_P2_1_1_1 = _lh_kingincheck_LH_P2_1_9) && (((min__d9 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9) < _lh_kingincheck_LH_P2_0_1_1)) && (_lh_kingincheck_LH_P2_0_1_1 < ((max__d9 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Bishop -> 
                              ((((_lh_kingincheck_LH_P2_0_8 + _lh_kingincheck_LH_P2_1_8) = (_lh_kingincheck_LH_P2_0_9 + _lh_kingincheck_LH_P2_1_9)) && ((emptyAtAll__d1_d0 _lh_kingincheck_arg2_1) (fun xeye_6 -> 
                                (let rec _lh_matchIdent_1_6_1 = xeye_6 in
                                  (match _lh_matchIdent_1_6_1 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_2, _lh_kingincheck_LH_P2_1_1_2) -> 
                                      ((((_lh_kingincheck_LH_P2_0_1_2 + _lh_kingincheck_LH_P2_1_1_2) = (_lh_kingincheck_LH_P2_0_9 + _lh_kingincheck_LH_P2_1_9)) && (((min__d1_d0 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9) < _lh_kingincheck_LH_P2_0_1_2)) && (_lh_kingincheck_LH_P2_0_1_2 < ((max__d1_d0 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9)))
                                    | _ -> 
                                      (failwith "error")))))) || (((_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_1_8) = (_lh_kingincheck_LH_P2_0_9 - _lh_kingincheck_LH_P2_1_9)) && ((emptyAtAll__d1_d1 _lh_kingincheck_arg2_1) (fun xeye_7 -> 
                                (let rec _lh_matchIdent_1_6_2 = xeye_7 in
                                  (match _lh_matchIdent_1_6_2 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_3, _lh_kingincheck_LH_P2_1_1_3) -> 
                                      ((((_lh_kingincheck_LH_P2_0_1_3 - _lh_kingincheck_LH_P2_1_1_3) = (_lh_kingincheck_LH_P2_0_9 - _lh_kingincheck_LH_P2_1_9)) && (((min__d1_d1 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9) < _lh_kingincheck_LH_P2_0_1_3)) && (_lh_kingincheck_LH_P2_0_1_3 < ((max__d1_d1 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Knight -> 
                              ((((abs__d1_d6 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) = 2) && ((abs__d1_d7 (_lh_kingincheck_LH_P2_1_8 - _lh_kingincheck_LH_P2_1_9)) = 1)) || (((abs__d1_d8 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) = 1) && ((abs__d1_d9 (_lh_kingincheck_LH_P2_1_8 - _lh_kingincheck_LH_P2_1_9)) = 2)))
                            | `Pawn -> 
                              (((abs__d2_d0 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) = 1) && (let rec _lh_matchIdent_1_6_3 = _lh_kingincheck_arg1_1 in
                                (match _lh_matchIdent_1_6_3 with
                                  | `Black -> 
                                    (_lh_kingincheck_LH_P2_1_9 = (_lh_kingincheck_LH_P2_1_8 + 1))
                                  | `White -> 
                                    (_lh_kingincheck_LH_P2_1_9 = (_lh_kingincheck_LH_P2_1_8 - 1))
                                  | _ -> 
                                    (failwith "error"))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error"))))) in
                (kthreat_1 _lh_kingincheck_LH_P2_0_7))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    ((any__d2 givesCheck_1) ((forcesColoured__d4 (opponent__d5 _lh_kingincheck_arg1_1)) _lh_kingincheck_arg2_1)))
and kingmoves__d0 _lh_kingmoves_arg1_1 _lh_kingmoves_arg2_1 _lh_kingmoves_arg3_1 =
  (match _lh_kingmoves_arg2_1 with
    | `LH_P2(_lh_kingmoves_LH_P2_0_1, _lh_kingmoves_LH_P2_1_1) -> 
      ((((sift__d0 _lh_kingmoves_arg1_1) _lh_kingmoves_arg3_1) (`LH_N)) (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_1 - 1), (_lh_kingmoves_LH_P2_1_1 + 1))), (`LH_C((`LH_P2(_lh_kingmoves_LH_P2_0_1, (_lh_kingmoves_LH_P2_1_1 + 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_1 + 1), (_lh_kingmoves_LH_P2_1_1 + 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_1 - 1), _lh_kingmoves_LH_P2_1_1)), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_1 + 1), _lh_kingmoves_LH_P2_1_1)), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_1 - 1), (_lh_kingmoves_LH_P2_1_1 - 1))), (`LH_C((`LH_P2(_lh_kingmoves_LH_P2_0_1, (_lh_kingmoves_LH_P2_1_1 - 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_1 + 1), (_lh_kingmoves_LH_P2_1_1 - 1))), (`LH_N))))))))))))))))))
    | _ -> 
      (failwith "error"))
and kingmoves__d1 _lh_kingmoves_arg1_2 _lh_kingmoves_arg2_2 _lh_kingmoves_arg3_2 =
  (match _lh_kingmoves_arg2_2 with
    | `LH_P2(_lh_kingmoves_LH_P2_0_2, _lh_kingmoves_LH_P2_1_2) -> 
      ((((sift__d2 _lh_kingmoves_arg1_2) _lh_kingmoves_arg3_2) (`LH_N)) (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_2 - 1), (_lh_kingmoves_LH_P2_1_2 + 1))), (`LH_C((`LH_P2(_lh_kingmoves_LH_P2_0_2, (_lh_kingmoves_LH_P2_1_2 + 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_2 + 1), (_lh_kingmoves_LH_P2_1_2 + 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_2 - 1), _lh_kingmoves_LH_P2_1_2)), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_2 + 1), _lh_kingmoves_LH_P2_1_2)), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_2 - 1), (_lh_kingmoves_LH_P2_1_2 - 1))), (`LH_C((`LH_P2(_lh_kingmoves_LH_P2_0_2, (_lh_kingmoves_LH_P2_1_2 - 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_2 + 1), (_lh_kingmoves_LH_P2_1_2 - 1))), (`LH_N))))))))))))))))))
    | _ -> 
      (failwith "error"))
and knightmoves__d0 _lh_knightmoves_arg1_1 _lh_knightmoves_arg2_1 _lh_knightmoves_arg3_1 =
  (match _lh_knightmoves_arg2_1 with
    | `LH_P2(_lh_knightmoves_LH_P2_0_1, _lh_knightmoves_LH_P2_1_1) -> 
      ((((sift__d1 _lh_knightmoves_arg1_1) _lh_knightmoves_arg3_1) (`LH_N)) (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_1 - 1), (_lh_knightmoves_LH_P2_1_1 + 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_1 + 1), (_lh_knightmoves_LH_P2_1_1 + 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_1 - 2), (_lh_knightmoves_LH_P2_1_1 + 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_1 + 2), (_lh_knightmoves_LH_P2_1_1 + 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_1 - 2), (_lh_knightmoves_LH_P2_1_1 - 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_1 + 2), (_lh_knightmoves_LH_P2_1_1 - 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_1 - 1), (_lh_knightmoves_LH_P2_1_1 - 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_1 + 1), (_lh_knightmoves_LH_P2_1_1 - 2))), (`LH_N))))))))))))))))))
    | _ -> 
      (failwith "error"))
and knightmoves__d1 _lh_knightmoves_arg1_2 _lh_knightmoves_arg2_2 _lh_knightmoves_arg3_2 =
  (match _lh_knightmoves_arg2_2 with
    | `LH_P2(_lh_knightmoves_LH_P2_0_2, _lh_knightmoves_LH_P2_1_2) -> 
      ((((sift__d3 _lh_knightmoves_arg1_2) _lh_knightmoves_arg3_2) (`LH_N)) (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_2 - 1), (_lh_knightmoves_LH_P2_1_2 + 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_2 + 1), (_lh_knightmoves_LH_P2_1_2 + 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_2 - 2), (_lh_knightmoves_LH_P2_1_2 + 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_2 + 2), (_lh_knightmoves_LH_P2_1_2 + 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_2 - 2), (_lh_knightmoves_LH_P2_1_2 - 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_2 + 2), (_lh_knightmoves_LH_P2_1_2 - 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_2 - 1), (_lh_knightmoves_LH_P2_1_2 - 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_2 + 1), (_lh_knightmoves_LH_P2_1_2 - 2))), (`LH_N))))))))))))))))))
    | _ -> 
      (failwith "error"))
and lines__d0 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_2_9_6 = ((break__d0 (fun x_2_4 -> 
    (x_2_4 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_2_9_6 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_2_9_7 = _lh_lines_LH_P2_1_1 in
          (match _lh_matchIdent_2_9_7 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_1, _lh_lines_LH_C_1_1) -> 
              (lines__d0 _lh_lines_LH_C_1_1)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")))
and moveDetailsFor__d0 _lh_moveDetailsFor_arg1_2 _lh_moveDetailsFor_arg2_2 =
  (((foldr__d4 (fun ksq_2 ms_1_0 -> 
    (((foldr__d5 (fun rm_2 ms'_2 -> 
      ((((maybe__d3_d0 (fun x_1_4 -> 
        x_1_4)) (fun h_8_5 t_8_7 -> 
        (`LH_C(h_8_5, t_8_7)))) ((((tryMove__d0 _lh_moveDetailsFor_arg1_2) ksq_2) rm_2) _lh_moveDetailsFor_arg2_2)) ms'_2))) ms_1_0) (((rawmoves__d0 _lh_moveDetailsFor_arg1_2) ksq_2) _lh_moveDetailsFor_arg2_2)))) (`LH_N)) ((forcesColoured__d1 _lh_moveDetailsFor_arg1_2) _lh_moveDetailsFor_arg2_2))
and moveDetailsFor__d1 _lh_moveDetailsFor_arg1_1 _lh_moveDetailsFor_arg2_1 =
  (((foldr__d7 (fun ksq_1 ms_8 -> 
    (((foldr__d8 (fun rm_1 ms'_1 -> 
      ((((maybe__d3_d3 (fun x_1_2 -> 
        x_1_2)) (fun h_7_4 t_7_6 -> 
        (`LH_C(h_7_4, t_7_6)))) ((((tryMove__d1 _lh_moveDetailsFor_arg1_1) ksq_1) rm_1) _lh_moveDetailsFor_arg2_1)) ms'_1))) ms_8) (((rawmoves__d1 _lh_moveDetailsFor_arg1_1) ksq_1) _lh_moveDetailsFor_arg2_1)))) (`LH_N)) ((forcesColoured__d3 _lh_moveDetailsFor_arg1_1) _lh_moveDetailsFor_arg2_1))
and moveLine__d0 _lh_moveLine_arg1_2_1 _lh_moveLine_arg2_2_1 _lh_moveLine_arg3_2_1 _lh_moveLine_arg4_2_1 _lh_moveLine_arg5_2_1 =
  (let rec ml_2_1 = (fun sq_2_1 ms_2_4 -> 
    (let rec sq'_2_1 = (_lh_moveLine_arg4_2_1 sq_2_1) in
      (if (onboard__d0 sq'_2_1) then
        (let rec _lh_matchIdent_2_2_7 = ((pieceAt__d1 _lh_moveLine_arg1_2_1) sq'_2_1) in
          (match _lh_matchIdent_2_2_7 with
            | `Nothing -> 
              ((ml_2_1 sq'_2_1) (`LH_C((`Move(sq'_2_1, (`Nothing), (`Nothing))), ms_2_4)))
            | `Just(_lh_moveLine_Just_0_2_1) -> 
              (if ((colourOf__d0 _lh_moveLine_Just_0_2_1) <> _lh_moveLine_arg2_2_1) then
                (_lh_moveLine_arg5_2_1 (`LH_C((`Move(sq'_2_1, (`Just(_lh_moveLine_Just_0_2_1)), (`Nothing))), ms_2_4)))
              else
                (_lh_moveLine_arg5_2_1 ms_2_4))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_1 ms_2_4)))) in
    (ml_2_1 _lh_moveLine_arg3_2_1))
and moveLine__d1 _lh_moveLine_arg1_2_0 _lh_moveLine_arg2_2_0 _lh_moveLine_arg3_2_0 _lh_moveLine_arg4_2_0 _lh_moveLine_arg5_2_0 =
  (let rec ml_2_0 = (fun sq_2_0 ms_2_3 -> 
    (let rec sq'_2_0 = (_lh_moveLine_arg4_2_0 sq_2_0) in
      (if (onboard__d1 sq'_2_0) then
        (let rec _lh_matchIdent_2_2_6 = ((pieceAt__d2 _lh_moveLine_arg1_2_0) sq'_2_0) in
          (match _lh_matchIdent_2_2_6 with
            | `Nothing -> 
              ((ml_2_0 sq'_2_0) (`LH_C((`Move(sq'_2_0, (`Nothing), (`Nothing))), ms_2_3)))
            | `Just(_lh_moveLine_Just_0_2_0) -> 
              (if ((colourOf__d1 _lh_moveLine_Just_0_2_0) <> _lh_moveLine_arg2_2_0) then
                (_lh_moveLine_arg5_2_0 (`LH_C((`Move(sq'_2_0, (`Just(_lh_moveLine_Just_0_2_0)), (`Nothing))), ms_2_3)))
              else
                (_lh_moveLine_arg5_2_0 ms_2_3))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_0 ms_2_3)))) in
    (ml_2_0 _lh_moveLine_arg3_2_0))
and moveLine__d1_d0 _lh_moveLine_arg1_3_1 _lh_moveLine_arg2_3_1 _lh_moveLine_arg3_3_1 _lh_moveLine_arg4_3_1 _lh_moveLine_arg5_3_1 =
  (let rec ml_3_1 = (fun sq_3_1 ms_3_4 -> 
    (let rec sq'_3_1 = (_lh_moveLine_arg4_3_1 sq_3_1) in
      (if (onboard__d1_d2 sq'_3_1) then
        (let rec _lh_matchIdent_2_8_2 = ((pieceAt__d1_d6 _lh_moveLine_arg1_3_1) sq'_3_1) in
          (match _lh_matchIdent_2_8_2 with
            | `Nothing -> 
              ((ml_3_1 sq'_3_1) (`LH_C((`Move(sq'_3_1, (`Nothing), (`Nothing))), ms_3_4)))
            | `Just(_lh_moveLine_Just_0_3_1) -> 
              (if ((colourOf__d1_d3 _lh_moveLine_Just_0_3_1) <> _lh_moveLine_arg2_3_1) then
                (_lh_moveLine_arg5_3_1 (`LH_C((`Move(sq'_3_1, (`Just(_lh_moveLine_Just_0_3_1)), (`Nothing))), ms_3_4)))
              else
                (_lh_moveLine_arg5_3_1 ms_3_4))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_3_1 ms_3_4)))) in
    (ml_3_1 _lh_moveLine_arg3_3_1))
and moveLine__d1_d1 _lh_moveLine_arg1_1 _lh_moveLine_arg2_1 _lh_moveLine_arg3_1 _lh_moveLine_arg4_1 _lh_moveLine_arg5_1 =
  (let rec ml_1 = (fun sq_1 ms_2 -> 
    (let rec sq'_1 = (_lh_moveLine_arg4_1 sq_1) in
      (if (onboard__d1_d3 sq'_1) then
        (let rec _lh_matchIdent_6_1 = ((pieceAt__d1_d7 _lh_moveLine_arg1_1) sq'_1) in
          (match _lh_matchIdent_6_1 with
            | `Nothing -> 
              ((ml_1 sq'_1) (`LH_C((`Move(sq'_1, (`Nothing), (`Nothing))), ms_2)))
            | `Just(_lh_moveLine_Just_0_1) -> 
              (if ((colourOf__d1_d4 _lh_moveLine_Just_0_1) <> _lh_moveLine_arg2_1) then
                (_lh_moveLine_arg5_1 (`LH_C((`Move(sq'_1, (`Just(_lh_moveLine_Just_0_1)), (`Nothing))), ms_2)))
              else
                (_lh_moveLine_arg5_1 ms_2))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1 ms_2)))) in
    (ml_1 _lh_moveLine_arg3_1))
and moveLine__d1_d2 _lh_moveLine_arg1_1_4 _lh_moveLine_arg2_1_4 _lh_moveLine_arg3_1_4 _lh_moveLine_arg4_1_4 _lh_moveLine_arg5_1_4 =
  (let rec ml_1_4 = (fun sq_1_4 ms_1_7 -> 
    (let rec sq'_1_4 = (_lh_moveLine_arg4_1_4 sq_1_4) in
      (if (onboard__d1_d4 sq'_1_4) then
        (let rec _lh_matchIdent_1_8_7 = ((pieceAt__d1_d8 _lh_moveLine_arg1_1_4) sq'_1_4) in
          (match _lh_matchIdent_1_8_7 with
            | `Nothing -> 
              ((ml_1_4 sq'_1_4) (`LH_C((`Move(sq'_1_4, (`Nothing), (`Nothing))), ms_1_7)))
            | `Just(_lh_moveLine_Just_0_1_4) -> 
              (if ((colourOf__d1_d5 _lh_moveLine_Just_0_1_4) <> _lh_moveLine_arg2_1_4) then
                (_lh_moveLine_arg5_1_4 (`LH_C((`Move(sq'_1_4, (`Just(_lh_moveLine_Just_0_1_4)), (`Nothing))), ms_1_7)))
              else
                (_lh_moveLine_arg5_1_4 ms_1_7))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_4 ms_1_7)))) in
    (ml_1_4 _lh_moveLine_arg3_1_4))
and moveLine__d1_d3 _lh_moveLine_arg1_1_3 _lh_moveLine_arg2_1_3 _lh_moveLine_arg3_1_3 _lh_moveLine_arg4_1_3 _lh_moveLine_arg5_1_3 =
  (let rec ml_1_3 = (fun sq_1_3 ms_1_6 -> 
    (let rec sq'_1_3 = (_lh_moveLine_arg4_1_3 sq_1_3) in
      (if (onboard__d1_d5 sq'_1_3) then
        (let rec _lh_matchIdent_1_8_0 = ((pieceAt__d1_d9 _lh_moveLine_arg1_1_3) sq'_1_3) in
          (match _lh_matchIdent_1_8_0 with
            | `Nothing -> 
              ((ml_1_3 sq'_1_3) (`LH_C((`Move(sq'_1_3, (`Nothing), (`Nothing))), ms_1_6)))
            | `Just(_lh_moveLine_Just_0_1_3) -> 
              (if ((colourOf__d1_d6 _lh_moveLine_Just_0_1_3) <> _lh_moveLine_arg2_1_3) then
                (_lh_moveLine_arg5_1_3 (`LH_C((`Move(sq'_1_3, (`Just(_lh_moveLine_Just_0_1_3)), (`Nothing))), ms_1_6)))
              else
                (_lh_moveLine_arg5_1_3 ms_1_6))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_3 ms_1_6)))) in
    (ml_1_3 _lh_moveLine_arg3_1_3))
and moveLine__d1_d4 _lh_moveLine_arg1_1_8 _lh_moveLine_arg2_1_8 _lh_moveLine_arg3_1_8 _lh_moveLine_arg4_1_8 _lh_moveLine_arg5_1_8 =
  (let rec ml_1_8 = (fun sq_1_8 ms_2_1 -> 
    (let rec sq'_1_8 = (_lh_moveLine_arg4_1_8 sq_1_8) in
      (if (onboard__d1_d6 sq'_1_8) then
        (let rec _lh_matchIdent_2_1_3 = ((pieceAt__d2_d0 _lh_moveLine_arg1_1_8) sq'_1_8) in
          (match _lh_matchIdent_2_1_3 with
            | `Nothing -> 
              ((ml_1_8 sq'_1_8) (`LH_C((`Move(sq'_1_8, (`Nothing), (`Nothing))), ms_2_1)))
            | `Just(_lh_moveLine_Just_0_1_8) -> 
              (if ((colourOf__d1_d7 _lh_moveLine_Just_0_1_8) <> _lh_moveLine_arg2_1_8) then
                (_lh_moveLine_arg5_1_8 (`LH_C((`Move(sq'_1_8, (`Just(_lh_moveLine_Just_0_1_8)), (`Nothing))), ms_2_1)))
              else
                (_lh_moveLine_arg5_1_8 ms_2_1))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_8 ms_2_1)))) in
    (ml_1_8 _lh_moveLine_arg3_1_8))
and moveLine__d1_d5 _lh_moveLine_arg1_2_4 _lh_moveLine_arg2_2_4 _lh_moveLine_arg3_2_4 _lh_moveLine_arg4_2_4 _lh_moveLine_arg5_2_4 =
  (let rec ml_2_4 = (fun sq_2_4 ms_2_7 -> 
    (let rec sq'_2_4 = (_lh_moveLine_arg4_2_4 sq_2_4) in
      (if (onboard__d1_d7 sq'_2_4) then
        (let rec _lh_matchIdent_2_4_0 = ((pieceAt__d2_d1 _lh_moveLine_arg1_2_4) sq'_2_4) in
          (match _lh_matchIdent_2_4_0 with
            | `Nothing -> 
              ((ml_2_4 sq'_2_4) (`LH_C((`Move(sq'_2_4, (`Nothing), (`Nothing))), ms_2_7)))
            | `Just(_lh_moveLine_Just_0_2_4) -> 
              (if ((colourOf__d1_d8 _lh_moveLine_Just_0_2_4) <> _lh_moveLine_arg2_2_4) then
                (_lh_moveLine_arg5_2_4 (`LH_C((`Move(sq'_2_4, (`Just(_lh_moveLine_Just_0_2_4)), (`Nothing))), ms_2_7)))
              else
                (_lh_moveLine_arg5_2_4 ms_2_7))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_4 ms_2_7)))) in
    (ml_2_4 _lh_moveLine_arg3_2_4))
and moveLine__d1_d6 _lh_moveLine_arg1_1_5 _lh_moveLine_arg2_1_5 _lh_moveLine_arg3_1_5 _lh_moveLine_arg4_1_5 _lh_moveLine_arg5_1_5 =
  (let rec ml_1_5 = (fun sq_1_5 ms_1_8 -> 
    (let rec sq'_1_5 = (_lh_moveLine_arg4_1_5 sq_1_5) in
      (if (onboard__d1_d8 sq'_1_5) then
        (let rec _lh_matchIdent_1_9_1 = ((pieceAt__d2_d2 _lh_moveLine_arg1_1_5) sq'_1_5) in
          (match _lh_matchIdent_1_9_1 with
            | `Nothing -> 
              ((ml_1_5 sq'_1_5) (`LH_C((`Move(sq'_1_5, (`Nothing), (`Nothing))), ms_1_8)))
            | `Just(_lh_moveLine_Just_0_1_5) -> 
              (if ((colourOf__d1_d9 _lh_moveLine_Just_0_1_5) <> _lh_moveLine_arg2_1_5) then
                (_lh_moveLine_arg5_1_5 (`LH_C((`Move(sq'_1_5, (`Just(_lh_moveLine_Just_0_1_5)), (`Nothing))), ms_1_8)))
              else
                (_lh_moveLine_arg5_1_5 ms_1_8))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_5 ms_1_8)))) in
    (ml_1_5 _lh_moveLine_arg3_1_5))
and moveLine__d1_d7 _lh_moveLine_arg1_3 _lh_moveLine_arg2_3 _lh_moveLine_arg3_3 _lh_moveLine_arg4_3 _lh_moveLine_arg5_3 =
  (let rec ml_3 = (fun sq_3 ms_4 -> 
    (let rec sq'_3 = (_lh_moveLine_arg4_3 sq_3) in
      (if (onboard__d1_d9 sq'_3) then
        (let rec _lh_matchIdent_7_4 = ((pieceAt__d2_d3 _lh_moveLine_arg1_3) sq'_3) in
          (match _lh_matchIdent_7_4 with
            | `Nothing -> 
              ((ml_3 sq'_3) (`LH_C((`Move(sq'_3, (`Nothing), (`Nothing))), ms_4)))
            | `Just(_lh_moveLine_Just_0_3) -> 
              (if ((colourOf__d2_d0 _lh_moveLine_Just_0_3) <> _lh_moveLine_arg2_3) then
                (_lh_moveLine_arg5_3 (`LH_C((`Move(sq'_3, (`Just(_lh_moveLine_Just_0_3)), (`Nothing))), ms_4)))
              else
                (_lh_moveLine_arg5_3 ms_4))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_3 ms_4)))) in
    (ml_3 _lh_moveLine_arg3_3))
and moveLine__d1_d8 _lh_moveLine_arg1_2_6 _lh_moveLine_arg2_2_6 _lh_moveLine_arg3_2_6 _lh_moveLine_arg4_2_6 _lh_moveLine_arg5_2_6 =
  (let rec ml_2_6 = (fun sq_2_6 ms_2_9 -> 
    (let rec sq'_2_6 = (_lh_moveLine_arg4_2_6 sq_2_6) in
      (if (onboard__d2_d0 sq'_2_6) then
        (let rec _lh_matchIdent_2_4_9 = ((pieceAt__d2_d4 _lh_moveLine_arg1_2_6) sq'_2_6) in
          (match _lh_matchIdent_2_4_9 with
            | `Nothing -> 
              ((ml_2_6 sq'_2_6) (`LH_C((`Move(sq'_2_6, (`Nothing), (`Nothing))), ms_2_9)))
            | `Just(_lh_moveLine_Just_0_2_6) -> 
              (if ((colourOf__d2_d1 _lh_moveLine_Just_0_2_6) <> _lh_moveLine_arg2_2_6) then
                (_lh_moveLine_arg5_2_6 (`LH_C((`Move(sq'_2_6, (`Just(_lh_moveLine_Just_0_2_6)), (`Nothing))), ms_2_9)))
              else
                (_lh_moveLine_arg5_2_6 ms_2_9))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_6 ms_2_9)))) in
    (ml_2_6 _lh_moveLine_arg3_2_6))
and moveLine__d1_d9 _lh_moveLine_arg1_2 _lh_moveLine_arg2_2 _lh_moveLine_arg3_2 _lh_moveLine_arg4_2 _lh_moveLine_arg5_2 =
  (let rec ml_2 = (fun sq_2 ms_3 -> 
    (let rec sq'_2 = (_lh_moveLine_arg4_2 sq_2) in
      (if (onboard__d2_d1 sq'_2) then
        (let rec _lh_matchIdent_6_9 = ((pieceAt__d2_d5 _lh_moveLine_arg1_2) sq'_2) in
          (match _lh_matchIdent_6_9 with
            | `Nothing -> 
              ((ml_2 sq'_2) (`LH_C((`Move(sq'_2, (`Nothing), (`Nothing))), ms_3)))
            | `Just(_lh_moveLine_Just_0_2) -> 
              (if ((colourOf__d2_d2 _lh_moveLine_Just_0_2) <> _lh_moveLine_arg2_2) then
                (_lh_moveLine_arg5_2 (`LH_C((`Move(sq'_2, (`Just(_lh_moveLine_Just_0_2)), (`Nothing))), ms_3)))
              else
                (_lh_moveLine_arg5_2 ms_3))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2 ms_3)))) in
    (ml_2 _lh_moveLine_arg3_2))
and moveLine__d2 _lh_moveLine_arg1_1_7 _lh_moveLine_arg2_1_7 _lh_moveLine_arg3_1_7 _lh_moveLine_arg4_1_7 _lh_moveLine_arg5_1_7 =
  (let rec ml_1_7 = (fun sq_1_7 ms_2_0 -> 
    (let rec sq'_1_7 = (_lh_moveLine_arg4_1_7 sq_1_7) in
      (if (onboard__d2 sq'_1_7) then
        (let rec _lh_matchIdent_2_0_1 = ((pieceAt__d3 _lh_moveLine_arg1_1_7) sq'_1_7) in
          (match _lh_matchIdent_2_0_1 with
            | `Nothing -> 
              ((ml_1_7 sq'_1_7) (`LH_C((`Move(sq'_1_7, (`Nothing), (`Nothing))), ms_2_0)))
            | `Just(_lh_moveLine_Just_0_1_7) -> 
              (if ((colourOf__d2 _lh_moveLine_Just_0_1_7) <> _lh_moveLine_arg2_1_7) then
                (_lh_moveLine_arg5_1_7 (`LH_C((`Move(sq'_1_7, (`Just(_lh_moveLine_Just_0_1_7)), (`Nothing))), ms_2_0)))
              else
                (_lh_moveLine_arg5_1_7 ms_2_0))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_7 ms_2_0)))) in
    (ml_1_7 _lh_moveLine_arg3_1_7))
and moveLine__d2_d0 _lh_moveLine_arg1_1_0 _lh_moveLine_arg2_1_0 _lh_moveLine_arg3_1_0 _lh_moveLine_arg4_1_0 _lh_moveLine_arg5_1_0 =
  (let rec ml_1_0 = (fun sq_1_0 ms_1_3 -> 
    (let rec sq'_1_0 = (_lh_moveLine_arg4_1_0 sq_1_0) in
      (if (onboard__d2_d4 sq'_1_0) then
        (let rec _lh_matchIdent_1_3_8 = ((pieceAt__d3_d1 _lh_moveLine_arg1_1_0) sq'_1_0) in
          (match _lh_matchIdent_1_3_8 with
            | `Nothing -> 
              ((ml_1_0 sq'_1_0) (`LH_C((`Move(sq'_1_0, (`Nothing), (`Nothing))), ms_1_3)))
            | `Just(_lh_moveLine_Just_0_1_0) -> 
              (if ((colourOf__d2_d6 _lh_moveLine_Just_0_1_0) <> _lh_moveLine_arg2_1_0) then
                (_lh_moveLine_arg5_1_0 (`LH_C((`Move(sq'_1_0, (`Just(_lh_moveLine_Just_0_1_0)), (`Nothing))), ms_1_3)))
              else
                (_lh_moveLine_arg5_1_0 ms_1_3))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_0 ms_1_3)))) in
    (ml_1_0 _lh_moveLine_arg3_1_0))
and moveLine__d2_d1 _lh_moveLine_arg1_8 _lh_moveLine_arg2_8 _lh_moveLine_arg3_8 _lh_moveLine_arg4_8 _lh_moveLine_arg5_8 =
  (let rec ml_8 = (fun sq_8 ms_1_1 -> 
    (let rec sq'_8 = (_lh_moveLine_arg4_8 sq_8) in
      (if (onboard__d2_d5 sq'_8) then
        (let rec _lh_matchIdent_1_2_2 = ((pieceAt__d3_d2 _lh_moveLine_arg1_8) sq'_8) in
          (match _lh_matchIdent_1_2_2 with
            | `Nothing -> 
              ((ml_8 sq'_8) (`LH_C((`Move(sq'_8, (`Nothing), (`Nothing))), ms_1_1)))
            | `Just(_lh_moveLine_Just_0_8) -> 
              (if ((colourOf__d2_d7 _lh_moveLine_Just_0_8) <> _lh_moveLine_arg2_8) then
                (_lh_moveLine_arg5_8 (`LH_C((`Move(sq'_8, (`Just(_lh_moveLine_Just_0_8)), (`Nothing))), ms_1_1)))
              else
                (_lh_moveLine_arg5_8 ms_1_1))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_8 ms_1_1)))) in
    (ml_8 _lh_moveLine_arg3_8))
and moveLine__d2_d2 _lh_moveLine_arg1_1_9 _lh_moveLine_arg2_1_9 _lh_moveLine_arg3_1_9 _lh_moveLine_arg4_1_9 _lh_moveLine_arg5_1_9 =
  (let rec ml_1_9 = (fun sq_1_9 ms_2_2 -> 
    (let rec sq'_1_9 = (_lh_moveLine_arg4_1_9 sq_1_9) in
      (if (onboard__d2_d6 sq'_1_9) then
        (let rec _lh_matchIdent_2_2_4 = ((pieceAt__d3_d3 _lh_moveLine_arg1_1_9) sq'_1_9) in
          (match _lh_matchIdent_2_2_4 with
            | `Nothing -> 
              ((ml_1_9 sq'_1_9) (`LH_C((`Move(sq'_1_9, (`Nothing), (`Nothing))), ms_2_2)))
            | `Just(_lh_moveLine_Just_0_1_9) -> 
              (if ((colourOf__d2_d8 _lh_moveLine_Just_0_1_9) <> _lh_moveLine_arg2_1_9) then
                (_lh_moveLine_arg5_1_9 (`LH_C((`Move(sq'_1_9, (`Just(_lh_moveLine_Just_0_1_9)), (`Nothing))), ms_2_2)))
              else
                (_lh_moveLine_arg5_1_9 ms_2_2))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_9 ms_2_2)))) in
    (ml_1_9 _lh_moveLine_arg3_1_9))
and moveLine__d2_d3 _lh_moveLine_arg1_2_2 _lh_moveLine_arg2_2_2 _lh_moveLine_arg3_2_2 _lh_moveLine_arg4_2_2 _lh_moveLine_arg5_2_2 =
  (let rec ml_2_2 = (fun sq_2_2 ms_2_5 -> 
    (let rec sq'_2_2 = (_lh_moveLine_arg4_2_2 sq_2_2) in
      (if (onboard__d2_d7 sq'_2_2) then
        (let rec _lh_matchIdent_2_3_0 = ((pieceAt__d3_d4 _lh_moveLine_arg1_2_2) sq'_2_2) in
          (match _lh_matchIdent_2_3_0 with
            | `Nothing -> 
              ((ml_2_2 sq'_2_2) (`LH_C((`Move(sq'_2_2, (`Nothing), (`Nothing))), ms_2_5)))
            | `Just(_lh_moveLine_Just_0_2_2) -> 
              (if ((colourOf__d2_d9 _lh_moveLine_Just_0_2_2) <> _lh_moveLine_arg2_2_2) then
                (_lh_moveLine_arg5_2_2 (`LH_C((`Move(sq'_2_2, (`Just(_lh_moveLine_Just_0_2_2)), (`Nothing))), ms_2_5)))
              else
                (_lh_moveLine_arg5_2_2 ms_2_5))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_2 ms_2_5)))) in
    (ml_2_2 _lh_moveLine_arg3_2_2))
and moveLine__d2_d4 _lh_moveLine_arg1_3_0 _lh_moveLine_arg2_3_0 _lh_moveLine_arg3_3_0 _lh_moveLine_arg4_3_0 _lh_moveLine_arg5_3_0 =
  (let rec ml_3_0 = (fun sq_3_0 ms_3_3 -> 
    (let rec sq'_3_0 = (_lh_moveLine_arg4_3_0 sq_3_0) in
      (if (onboard__d2_d8 sq'_3_0) then
        (let rec _lh_matchIdent_2_7_5 = ((pieceAt__d3_d5 _lh_moveLine_arg1_3_0) sq'_3_0) in
          (match _lh_matchIdent_2_7_5 with
            | `Nothing -> 
              ((ml_3_0 sq'_3_0) (`LH_C((`Move(sq'_3_0, (`Nothing), (`Nothing))), ms_3_3)))
            | `Just(_lh_moveLine_Just_0_3_0) -> 
              (if ((colourOf__d3_d0 _lh_moveLine_Just_0_3_0) <> _lh_moveLine_arg2_3_0) then
                (_lh_moveLine_arg5_3_0 (`LH_C((`Move(sq'_3_0, (`Just(_lh_moveLine_Just_0_3_0)), (`Nothing))), ms_3_3)))
              else
                (_lh_moveLine_arg5_3_0 ms_3_3))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_3_0 ms_3_3)))) in
    (ml_3_0 _lh_moveLine_arg3_3_0))
and moveLine__d2_d5 _lh_moveLine_arg1_4 _lh_moveLine_arg2_4 _lh_moveLine_arg3_4 _lh_moveLine_arg4_4 _lh_moveLine_arg5_4 =
  (let rec ml_4 = (fun sq_4 ms_5 -> 
    (let rec sq'_4 = (_lh_moveLine_arg4_4 sq_4) in
      (if (onboard__d2_d9 sq'_4) then
        (let rec _lh_matchIdent_8_6 = ((pieceAt__d3_d6 _lh_moveLine_arg1_4) sq'_4) in
          (match _lh_matchIdent_8_6 with
            | `Nothing -> 
              ((ml_4 sq'_4) (`LH_C((`Move(sq'_4, (`Nothing), (`Nothing))), ms_5)))
            | `Just(_lh_moveLine_Just_0_4) -> 
              (if ((colourOf__d3_d1 _lh_moveLine_Just_0_4) <> _lh_moveLine_arg2_4) then
                (_lh_moveLine_arg5_4 (`LH_C((`Move(sq'_4, (`Just(_lh_moveLine_Just_0_4)), (`Nothing))), ms_5)))
              else
                (_lh_moveLine_arg5_4 ms_5))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_4 ms_5)))) in
    (ml_4 _lh_moveLine_arg3_4))
and moveLine__d2_d6 _lh_moveLine_arg1_3_2 _lh_moveLine_arg2_3_2 _lh_moveLine_arg3_3_2 _lh_moveLine_arg4_3_2 _lh_moveLine_arg5_3_2 =
  (let rec ml_3_2 = (fun sq_3_2 ms_3_5 -> 
    (let rec sq'_3_2 = (_lh_moveLine_arg4_3_2 sq_3_2) in
      (if (onboard__d3_d0 sq'_3_2) then
        (let rec _lh_matchIdent_2_8_7 = ((pieceAt__d3_d7 _lh_moveLine_arg1_3_2) sq'_3_2) in
          (match _lh_matchIdent_2_8_7 with
            | `Nothing -> 
              ((ml_3_2 sq'_3_2) (`LH_C((`Move(sq'_3_2, (`Nothing), (`Nothing))), ms_3_5)))
            | `Just(_lh_moveLine_Just_0_3_2) -> 
              (if ((colourOf__d3_d2 _lh_moveLine_Just_0_3_2) <> _lh_moveLine_arg2_3_2) then
                (_lh_moveLine_arg5_3_2 (`LH_C((`Move(sq'_3_2, (`Just(_lh_moveLine_Just_0_3_2)), (`Nothing))), ms_3_5)))
              else
                (_lh_moveLine_arg5_3_2 ms_3_5))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_3_2 ms_3_5)))) in
    (ml_3_2 _lh_moveLine_arg3_3_2))
and moveLine__d2_d7 _lh_moveLine_arg1_7 _lh_moveLine_arg2_7 _lh_moveLine_arg3_7 _lh_moveLine_arg4_7 _lh_moveLine_arg5_7 =
  (let rec ml_7 = (fun sq_7 ms_9 -> 
    (let rec sq'_7 = (_lh_moveLine_arg4_7 sq_7) in
      (if (onboard__d3_d1 sq'_7) then
        (let rec _lh_matchIdent_9_2 = ((pieceAt__d3_d8 _lh_moveLine_arg1_7) sq'_7) in
          (match _lh_matchIdent_9_2 with
            | `Nothing -> 
              ((ml_7 sq'_7) (`LH_C((`Move(sq'_7, (`Nothing), (`Nothing))), ms_9)))
            | `Just(_lh_moveLine_Just_0_7) -> 
              (if ((colourOf__d3_d3 _lh_moveLine_Just_0_7) <> _lh_moveLine_arg2_7) then
                (_lh_moveLine_arg5_7 (`LH_C((`Move(sq'_7, (`Just(_lh_moveLine_Just_0_7)), (`Nothing))), ms_9)))
              else
                (_lh_moveLine_arg5_7 ms_9))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_7 ms_9)))) in
    (ml_7 _lh_moveLine_arg3_7))
and moveLine__d2_d8 _lh_moveLine_arg1_2_9 _lh_moveLine_arg2_2_9 _lh_moveLine_arg3_2_9 _lh_moveLine_arg4_2_9 _lh_moveLine_arg5_2_9 =
  (let rec ml_2_9 = (fun sq_2_9 ms_3_2 -> 
    (let rec sq'_2_9 = (_lh_moveLine_arg4_2_9 sq_2_9) in
      (if (onboard__d3_d2 sq'_2_9) then
        (let rec _lh_matchIdent_2_6_8 = ((pieceAt__d3_d9 _lh_moveLine_arg1_2_9) sq'_2_9) in
          (match _lh_matchIdent_2_6_8 with
            | `Nothing -> 
              ((ml_2_9 sq'_2_9) (`LH_C((`Move(sq'_2_9, (`Nothing), (`Nothing))), ms_3_2)))
            | `Just(_lh_moveLine_Just_0_2_9) -> 
              (if ((colourOf__d3_d4 _lh_moveLine_Just_0_2_9) <> _lh_moveLine_arg2_2_9) then
                (_lh_moveLine_arg5_2_9 (`LH_C((`Move(sq'_2_9, (`Just(_lh_moveLine_Just_0_2_9)), (`Nothing))), ms_3_2)))
              else
                (_lh_moveLine_arg5_2_9 ms_3_2))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_9 ms_3_2)))) in
    (ml_2_9 _lh_moveLine_arg3_2_9))
and moveLine__d2_d9 _lh_moveLine_arg1_2_7 _lh_moveLine_arg2_2_7 _lh_moveLine_arg3_2_7 _lh_moveLine_arg4_2_7 _lh_moveLine_arg5_2_7 =
  (let rec ml_2_7 = (fun sq_2_7 ms_3_0 -> 
    (let rec sq'_2_7 = (_lh_moveLine_arg4_2_7 sq_2_7) in
      (if (onboard__d3_d3 sq'_2_7) then
        (let rec _lh_matchIdent_2_5_7 = ((pieceAt__d4_d0 _lh_moveLine_arg1_2_7) sq'_2_7) in
          (match _lh_matchIdent_2_5_7 with
            | `Nothing -> 
              ((ml_2_7 sq'_2_7) (`LH_C((`Move(sq'_2_7, (`Nothing), (`Nothing))), ms_3_0)))
            | `Just(_lh_moveLine_Just_0_2_7) -> 
              (if ((colourOf__d3_d5 _lh_moveLine_Just_0_2_7) <> _lh_moveLine_arg2_2_7) then
                (_lh_moveLine_arg5_2_7 (`LH_C((`Move(sq'_2_7, (`Just(_lh_moveLine_Just_0_2_7)), (`Nothing))), ms_3_0)))
              else
                (_lh_moveLine_arg5_2_7 ms_3_0))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_7 ms_3_0)))) in
    (ml_2_7 _lh_moveLine_arg3_2_7))
and moveLine__d3 _lh_moveLine_arg1_1_1 _lh_moveLine_arg2_1_1 _lh_moveLine_arg3_1_1 _lh_moveLine_arg4_1_1 _lh_moveLine_arg5_1_1 =
  (let rec ml_1_1 = (fun sq_1_1 ms_1_4 -> 
    (let rec sq'_1_1 = (_lh_moveLine_arg4_1_1 sq_1_1) in
      (if (onboard__d3 sq'_1_1) then
        (let rec _lh_matchIdent_1_4_3 = ((pieceAt__d4 _lh_moveLine_arg1_1_1) sq'_1_1) in
          (match _lh_matchIdent_1_4_3 with
            | `Nothing -> 
              ((ml_1_1 sq'_1_1) (`LH_C((`Move(sq'_1_1, (`Nothing), (`Nothing))), ms_1_4)))
            | `Just(_lh_moveLine_Just_0_1_1) -> 
              (if ((colourOf__d3 _lh_moveLine_Just_0_1_1) <> _lh_moveLine_arg2_1_1) then
                (_lh_moveLine_arg5_1_1 (`LH_C((`Move(sq'_1_1, (`Just(_lh_moveLine_Just_0_1_1)), (`Nothing))), ms_1_4)))
              else
                (_lh_moveLine_arg5_1_1 ms_1_4))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_1 ms_1_4)))) in
    (ml_1_1 _lh_moveLine_arg3_1_1))
and moveLine__d3_d0 _lh_moveLine_arg1_6 _lh_moveLine_arg2_6 _lh_moveLine_arg3_6 _lh_moveLine_arg4_6 _lh_moveLine_arg5_6 =
  (let rec ml_6 = (fun sq_6 ms_7 -> 
    (let rec sq'_6 = (_lh_moveLine_arg4_6 sq_6) in
      (if (onboard__d3_d4 sq'_6) then
        (let rec _lh_matchIdent_8_9 = ((pieceAt__d4_d1 _lh_moveLine_arg1_6) sq'_6) in
          (match _lh_matchIdent_8_9 with
            | `Nothing -> 
              ((ml_6 sq'_6) (`LH_C((`Move(sq'_6, (`Nothing), (`Nothing))), ms_7)))
            | `Just(_lh_moveLine_Just_0_6) -> 
              (if ((colourOf__d3_d6 _lh_moveLine_Just_0_6) <> _lh_moveLine_arg2_6) then
                (_lh_moveLine_arg5_6 (`LH_C((`Move(sq'_6, (`Just(_lh_moveLine_Just_0_6)), (`Nothing))), ms_7)))
              else
                (_lh_moveLine_arg5_6 ms_7))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_6 ms_7)))) in
    (ml_6 _lh_moveLine_arg3_6))
and moveLine__d3_d1 _lh_moveLine_arg1_1_6 _lh_moveLine_arg2_1_6 _lh_moveLine_arg3_1_6 _lh_moveLine_arg4_1_6 _lh_moveLine_arg5_1_6 =
  (let rec ml_1_6 = (fun sq_1_6 ms_1_9 -> 
    (let rec sq'_1_6 = (_lh_moveLine_arg4_1_6 sq_1_6) in
      (if (onboard__d3_d5 sq'_1_6) then
        (let rec _lh_matchIdent_1_9_8 = ((pieceAt__d4_d2 _lh_moveLine_arg1_1_6) sq'_1_6) in
          (match _lh_matchIdent_1_9_8 with
            | `Nothing -> 
              ((ml_1_6 sq'_1_6) (`LH_C((`Move(sq'_1_6, (`Nothing), (`Nothing))), ms_1_9)))
            | `Just(_lh_moveLine_Just_0_1_6) -> 
              (if ((colourOf__d3_d7 _lh_moveLine_Just_0_1_6) <> _lh_moveLine_arg2_1_6) then
                (_lh_moveLine_arg5_1_6 (`LH_C((`Move(sq'_1_6, (`Just(_lh_moveLine_Just_0_1_6)), (`Nothing))), ms_1_9)))
              else
                (_lh_moveLine_arg5_1_6 ms_1_9))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_6 ms_1_9)))) in
    (ml_1_6 _lh_moveLine_arg3_1_6))
and moveLine__d4 _lh_moveLine_arg1_9 _lh_moveLine_arg2_9 _lh_moveLine_arg3_9 _lh_moveLine_arg4_9 _lh_moveLine_arg5_9 =
  (let rec ml_9 = (fun sq_9 ms_1_2 -> 
    (let rec sq'_9 = (_lh_moveLine_arg4_9 sq_9) in
      (if (onboard__d6 sq'_9) then
        (let rec _lh_matchIdent_1_3_1 = ((pieceAt__d1_d0 _lh_moveLine_arg1_9) sq'_9) in
          (match _lh_matchIdent_1_3_1 with
            | `Nothing -> 
              ((ml_9 sq'_9) (`LH_C((`Move(sq'_9, (`Nothing), (`Nothing))), ms_1_2)))
            | `Just(_lh_moveLine_Just_0_9) -> 
              (if ((colourOf__d7 _lh_moveLine_Just_0_9) <> _lh_moveLine_arg2_9) then
                (_lh_moveLine_arg5_9 (`LH_C((`Move(sq'_9, (`Just(_lh_moveLine_Just_0_9)), (`Nothing))), ms_1_2)))
              else
                (_lh_moveLine_arg5_9 ms_1_2))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_9 ms_1_2)))) in
    (ml_9 _lh_moveLine_arg3_9))
and moveLine__d5 _lh_moveLine_arg1_1_2 _lh_moveLine_arg2_1_2 _lh_moveLine_arg3_1_2 _lh_moveLine_arg4_1_2 _lh_moveLine_arg5_1_2 =
  (let rec ml_1_2 = (fun sq_1_2 ms_1_5 -> 
    (let rec sq'_1_2 = (_lh_moveLine_arg4_1_2 sq_1_2) in
      (if (onboard__d7 sq'_1_2) then
        (let rec _lh_matchIdent_1_4_8 = ((pieceAt__d1_d1 _lh_moveLine_arg1_1_2) sq'_1_2) in
          (match _lh_matchIdent_1_4_8 with
            | `Nothing -> 
              ((ml_1_2 sq'_1_2) (`LH_C((`Move(sq'_1_2, (`Nothing), (`Nothing))), ms_1_5)))
            | `Just(_lh_moveLine_Just_0_1_2) -> 
              (if ((colourOf__d8 _lh_moveLine_Just_0_1_2) <> _lh_moveLine_arg2_1_2) then
                (_lh_moveLine_arg5_1_2 (`LH_C((`Move(sq'_1_2, (`Just(_lh_moveLine_Just_0_1_2)), (`Nothing))), ms_1_5)))
              else
                (_lh_moveLine_arg5_1_2 ms_1_5))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_1_2 ms_1_5)))) in
    (ml_1_2 _lh_moveLine_arg3_1_2))
and moveLine__d6 _lh_moveLine_arg1_2_5 _lh_moveLine_arg2_2_5 _lh_moveLine_arg3_2_5 _lh_moveLine_arg4_2_5 _lh_moveLine_arg5_2_5 =
  (let rec ml_2_5 = (fun sq_2_5 ms_2_8 -> 
    (let rec sq'_2_5 = (_lh_moveLine_arg4_2_5 sq_2_5) in
      (if (onboard__d8 sq'_2_5) then
        (let rec _lh_matchIdent_2_4_1 = ((pieceAt__d1_d2 _lh_moveLine_arg1_2_5) sq'_2_5) in
          (match _lh_matchIdent_2_4_1 with
            | `Nothing -> 
              ((ml_2_5 sq'_2_5) (`LH_C((`Move(sq'_2_5, (`Nothing), (`Nothing))), ms_2_8)))
            | `Just(_lh_moveLine_Just_0_2_5) -> 
              (if ((colourOf__d9 _lh_moveLine_Just_0_2_5) <> _lh_moveLine_arg2_2_5) then
                (_lh_moveLine_arg5_2_5 (`LH_C((`Move(sq'_2_5, (`Just(_lh_moveLine_Just_0_2_5)), (`Nothing))), ms_2_8)))
              else
                (_lh_moveLine_arg5_2_5 ms_2_8))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_5 ms_2_8)))) in
    (ml_2_5 _lh_moveLine_arg3_2_5))
and moveLine__d7 _lh_moveLine_arg1_2_8 _lh_moveLine_arg2_2_8 _lh_moveLine_arg3_2_8 _lh_moveLine_arg4_2_8 _lh_moveLine_arg5_2_8 =
  (let rec ml_2_8 = (fun sq_2_8 ms_3_1 -> 
    (let rec sq'_2_8 = (_lh_moveLine_arg4_2_8 sq_2_8) in
      (if (onboard__d9 sq'_2_8) then
        (let rec _lh_matchIdent_2_6_2 = ((pieceAt__d1_d3 _lh_moveLine_arg1_2_8) sq'_2_8) in
          (match _lh_matchIdent_2_6_2 with
            | `Nothing -> 
              ((ml_2_8 sq'_2_8) (`LH_C((`Move(sq'_2_8, (`Nothing), (`Nothing))), ms_3_1)))
            | `Just(_lh_moveLine_Just_0_2_8) -> 
              (if ((colourOf__d1_d0 _lh_moveLine_Just_0_2_8) <> _lh_moveLine_arg2_2_8) then
                (_lh_moveLine_arg5_2_8 (`LH_C((`Move(sq'_2_8, (`Just(_lh_moveLine_Just_0_2_8)), (`Nothing))), ms_3_1)))
              else
                (_lh_moveLine_arg5_2_8 ms_3_1))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_8 ms_3_1)))) in
    (ml_2_8 _lh_moveLine_arg3_2_8))
and moveLine__d8 _lh_moveLine_arg1_5 _lh_moveLine_arg2_5 _lh_moveLine_arg3_5 _lh_moveLine_arg4_5 _lh_moveLine_arg5_5 =
  (let rec ml_5 = (fun sq_5 ms_6 -> 
    (let rec sq'_5 = (_lh_moveLine_arg4_5 sq_5) in
      (if (onboard__d1_d0 sq'_5) then
        (let rec _lh_matchIdent_8_8 = ((pieceAt__d1_d4 _lh_moveLine_arg1_5) sq'_5) in
          (match _lh_matchIdent_8_8 with
            | `Nothing -> 
              ((ml_5 sq'_5) (`LH_C((`Move(sq'_5, (`Nothing), (`Nothing))), ms_6)))
            | `Just(_lh_moveLine_Just_0_5) -> 
              (if ((colourOf__d1_d1 _lh_moveLine_Just_0_5) <> _lh_moveLine_arg2_5) then
                (_lh_moveLine_arg5_5 (`LH_C((`Move(sq'_5, (`Just(_lh_moveLine_Just_0_5)), (`Nothing))), ms_6)))
              else
                (_lh_moveLine_arg5_5 ms_6))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_5 ms_6)))) in
    (ml_5 _lh_moveLine_arg3_5))
and moveLine__d9 _lh_moveLine_arg1_2_3 _lh_moveLine_arg2_2_3 _lh_moveLine_arg3_2_3 _lh_moveLine_arg4_2_3 _lh_moveLine_arg5_2_3 =
  (let rec ml_2_3 = (fun sq_2_3 ms_2_6 -> 
    (let rec sq'_2_3 = (_lh_moveLine_arg4_2_3 sq_2_3) in
      (if (onboard__d1_d1 sq'_2_3) then
        (let rec _lh_matchIdent_2_3_2 = ((pieceAt__d1_d5 _lh_moveLine_arg1_2_3) sq'_2_3) in
          (match _lh_matchIdent_2_3_2 with
            | `Nothing -> 
              ((ml_2_3 sq'_2_3) (`LH_C((`Move(sq'_2_3, (`Nothing), (`Nothing))), ms_2_6)))
            | `Just(_lh_moveLine_Just_0_2_3) -> 
              (if ((colourOf__d1_d2 _lh_moveLine_Just_0_2_3) <> _lh_moveLine_arg2_2_3) then
                (_lh_moveLine_arg5_2_3 (`LH_C((`Move(sq'_2_3, (`Just(_lh_moveLine_Just_0_2_3)), (`Nothing))), ms_2_6)))
              else
                (_lh_moveLine_arg5_2_3 ms_2_6))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_2_3 ms_2_6)))) in
    (ml_2_3 _lh_moveLine_arg3_2_3))
and parseBoard__d0 _lh_parseBoard_arg1_1 =
  (let rec addPiece_1 = (fun p_sq_1 -> 
    (let rec _lh_matchIdent_1_2_4 = p_sq_1 in
      (match _lh_matchIdent_1_2_4 with
        | `LH_P2(_lh_parseBoard_LH_P2_0_1, _lh_parseBoard_LH_P2_1_1) -> 
          ((putPieceAt__d0 _lh_parseBoard_LH_P2_1_1) _lh_parseBoard_LH_P2_0_1)
        | _ -> 
          (failwith "error")))) in
    ((fun _lh_funcomp_x_6 -> 
      ((fun _lh_funcomp_x_7 -> 
        (((foldr__d0 addPiece_1) emptyBoard__d0) (concat__d0 _lh_funcomp_x_7))) (((zipWith__d1 parseRank__d0) (reverse__d0 ((enumFromTo__d0 1) 8))) _lh_funcomp_x_6))) _lh_parseBoard_arg1_1))
and parseGoal__d0 _lh_parseGoal_arg1_1 =
  (match _lh_parseGoal_arg1_1 with
    | `LH_C(_lh_parseGoal_LH_C_0_1, _lh_parseGoal_LH_C_1_1) -> 
      (match _lh_parseGoal_LH_C_1_1 with
        | `LH_N -> 
          (let rec ws_1 = (words__d0 _lh_parseGoal_LH_C_0_1) in
            (let rec c_4_4 = (if ((head__d0 ws_1) = (`LH_C('B', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_N)))))))))))) then
              (`Black)
            else
              (`White)) in
              (let rec n_7_8 = 2 in
                (`LH_P2(c_4_4, n_7_8)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and parseProblem__d0 _lh_parseProblem_arg1_1 =
  (let rec bdtxt_gltxt_1 = ((splitAt__d0 8) ((filter__d0 (fun _lh_funcomp_x_8 -> 
    (not (comment__d0 _lh_funcomp_x_8)))) _lh_parseProblem_arg1_1)) in
    (let rec _lh_matchIdent_1_3_2 = bdtxt_gltxt_1 in
      (match _lh_matchIdent_1_3_2 with
        | `LH_P2(_lh_parseProblem_LH_P2_0_1, _lh_parseProblem_LH_P2_1_1) -> 
          (let rec bd_1 = (parseBoard__d0 _lh_parseProblem_LH_P2_0_1) in
            (let rec gl_1 = (parseGoal__d0 _lh_parseProblem_LH_P2_1_1) in
              (`LH_P2(bd_1, gl_1))))
        | _ -> 
          (failwith "error"))))
and parseRank__d0 _lh_parseRank_arg1_1 _lh_parseRank_arg2_1 =
  ((fun _lh_funcomp_x_9 -> 
    ((fun _lh_funcomp_x_1_0 -> 
      (concat__d1 (((zipWith__d0 (parseSquare__d0 _lh_parseRank_arg1_1)) ((enumFromTo__d1 1) 8)) _lh_funcomp_x_1_0))) ((filter__d1 (fun x_1_7 -> 
      (not (x_1_7 = ' ')))) _lh_funcomp_x_9))) _lh_parseRank_arg2_1)
and parseSquare__d0 _lh_parseSquare_arg1_1 _lh_parseSquare_arg2_1 _lh_parseSquare_arg3_1 =
  (match _lh_parseSquare_arg3_1 with
    | '-' -> 
      (`LH_N)
    | _ -> 
      (let rec clr_1 = (if (isUpper__d0 _lh_parseSquare_arg3_1) then
        (`Black)
      else
        (`White)) in
        (let rec kin_1 = (let rec _lh_matchIdent_1_4_7 = (toLower__d0 _lh_parseSquare_arg3_1) in
          (match _lh_matchIdent_1_4_7 with
            | 'k' -> 
              (`King)
            | 'q' -> 
              (`Queen)
            | 'r' -> 
              (`Rook)
            | 'b' -> 
              (`Bishop)
            | 'n' -> 
              (`Knight)
            | 'p' -> 
              (`Pawn)
            | _ -> 
              (failwith "error"))) in
          (`LH_C((`LH_P2((`LH_P2(clr_1, kin_1)), (`LH_P2(_lh_parseSquare_arg2_1, _lh_parseSquare_arg1_1)))), (`LH_N))))))
and pawnmoves__d0 _lh_pawnmoves_arg1_2 _lh_pawnmoves_arg2_2 _lh_pawnmoves_arg3_2 =
  (match _lh_pawnmoves_arg2_2 with
    | `LH_P2(_lh_pawnmoves_LH_P2_0_4, _lh_pawnmoves_LH_P2_1_4) -> 
      (let rec fwd_2 = (let rec _lh_matchIdent_2_6_0 = _lh_pawnmoves_arg1_2 in
        (match _lh_matchIdent_2_6_0 with
          | `White -> 
            1
          | `Black -> 
            (0 - 1)
          | _ -> 
            (failwith "error"))) in
        (let rec promote_2 = (fun xy_3_4 mcp_2 -> 
          (let rec _lh_matchIdent_2_6_1 = xy_3_4 in
            (match _lh_matchIdent_2_6_1 with
              | `LH_P2(_lh_pawnmoves_LH_P2_0_5, _lh_pawnmoves_LH_P2_1_5) -> 
                (if (((_lh_pawnmoves_arg1_2 = (`Black)) && (_lh_pawnmoves_LH_P2_1_5 = 1)) || ((_lh_pawnmoves_arg1_2 = (`White)) && (_lh_pawnmoves_LH_P2_1_5 = 8))) then
                  ((map__d2 (fun param_6 -> 
                    (`Move((`LH_P2(_lh_pawnmoves_LH_P2_0_5, _lh_pawnmoves_LH_P2_1_5)), mcp_2, (`Just(param_6)))))) (`LH_C((`LH_P2(_lh_pawnmoves_arg1_2, (`Queen))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_2, (`Rook))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_2, (`Bishop))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_2, (`Knight))), (`LH_N))))))))))
                else
                  (`LH_C((`Move((`LH_P2(_lh_pawnmoves_LH_P2_0_5, _lh_pawnmoves_LH_P2_1_5)), mcp_2, (`Nothing))), (`LH_N))))
              | _ -> 
                (failwith "error")))) in
          (let rec movs_2 = (let rec on1_2 = (`LH_P2(_lh_pawnmoves_LH_P2_0_4, (_lh_pawnmoves_LH_P2_1_4 + fwd_2))) in
            (let rec on2_2 = (`LH_P2(_lh_pawnmoves_LH_P2_0_4, ((_lh_pawnmoves_LH_P2_1_4 + 2) * fwd_2))) in
              (if (((pieceAt__d7 _lh_pawnmoves_arg3_2) on1_2) = (`Nothing)) then
                ((mappend__d2_d3_d3 ((promote_2 on1_2) (`Nothing))) (if ((((_lh_pawnmoves_LH_P2_1_4 = 2) && (_lh_pawnmoves_arg1_2 = (`White))) || ((_lh_pawnmoves_LH_P2_1_4 = 7) && (_lh_pawnmoves_arg1_2 = (`Black)))) && (((pieceAt__d8 _lh_pawnmoves_arg3_2) on2_2) = (`Nothing))) then
                  (`LH_C((`Move(on2_2, (`Nothing), (`Nothing))), (`LH_N)))
                else
                  (`LH_N)))
              else
                (`LH_N)))) in
            (let rec caps_2 = (concat__d3 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
              (match _lh_listcomp_fun_para_4 with
                | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                  (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
                    (match _lh_listcomp_fun_para_5 with
                      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                        (match _lh_listcomp_fun_ls_h_5 with
                          | `Just(_lh_pawnmoves_Just_0_2) -> 
                            (if (not ((colourOf__d6 _lh_pawnmoves_Just_0_2) = _lh_pawnmoves_arg1_2)) then
                              (`LH_C(((promote_2 _lh_listcomp_fun_ls_h_4) (`Just(_lh_pawnmoves_Just_0_2))), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                            else
                              (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
                          | _ -> 
                            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
                      | `LH_N -> 
                        (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))) in
                    (_lh_listcomp_fun_5 (`LH_C(((pieceAt__d9 _lh_pawnmoves_arg3_2) _lh_listcomp_fun_ls_h_4), (`LH_N)))))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_4 (`LH_C((`LH_P2((_lh_pawnmoves_LH_P2_0_4 + 1), (_lh_pawnmoves_LH_P2_1_4 + fwd_2))), (`LH_C((`LH_P2((_lh_pawnmoves_LH_P2_0_4 - 1), (_lh_pawnmoves_LH_P2_1_4 + fwd_2))), (`LH_N)))))))) in
              ((mappend__d2_d3_d2 movs_2) caps_2)))))
    | _ -> 
      (failwith "error"))
and pawnmoves__d1 _lh_pawnmoves_arg1_1 _lh_pawnmoves_arg2_1 _lh_pawnmoves_arg3_1 =
  (match _lh_pawnmoves_arg2_1 with
    | `LH_P2(_lh_pawnmoves_LH_P2_0_2, _lh_pawnmoves_LH_P2_1_2) -> 
      (let rec fwd_1 = (let rec _lh_matchIdent_2_0_6 = _lh_pawnmoves_arg1_1 in
        (match _lh_matchIdent_2_0_6 with
          | `White -> 
            1
          | `Black -> 
            (0 - 1)
          | _ -> 
            (failwith "error"))) in
        (let rec promote_1 = (fun xy_2_9 mcp_1 -> 
          (let rec _lh_matchIdent_2_0_7 = xy_2_9 in
            (match _lh_matchIdent_2_0_7 with
              | `LH_P2(_lh_pawnmoves_LH_P2_0_3, _lh_pawnmoves_LH_P2_1_3) -> 
                (if (((_lh_pawnmoves_arg1_1 = (`Black)) && (_lh_pawnmoves_LH_P2_1_3 = 1)) || ((_lh_pawnmoves_arg1_1 = (`White)) && (_lh_pawnmoves_LH_P2_1_3 = 8))) then
                  ((map__d3 (fun param_4 -> 
                    (`Move((`LH_P2(_lh_pawnmoves_LH_P2_0_3, _lh_pawnmoves_LH_P2_1_3)), mcp_1, (`Just(param_4)))))) (`LH_C((`LH_P2(_lh_pawnmoves_arg1_1, (`Queen))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_1, (`Rook))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_1, (`Bishop))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_1, (`Knight))), (`LH_N))))))))))
                else
                  (`LH_C((`Move((`LH_P2(_lh_pawnmoves_LH_P2_0_3, _lh_pawnmoves_LH_P2_1_3)), mcp_1, (`Nothing))), (`LH_N))))
              | _ -> 
                (failwith "error")))) in
          (let rec movs_1 = (let rec on1_1 = (`LH_P2(_lh_pawnmoves_LH_P2_0_2, (_lh_pawnmoves_LH_P2_1_2 + fwd_1))) in
            (let rec on2_1 = (`LH_P2(_lh_pawnmoves_LH_P2_0_2, ((_lh_pawnmoves_LH_P2_1_2 + 2) * fwd_1))) in
              (if (((pieceAt__d2_d8 _lh_pawnmoves_arg3_1) on1_1) = (`Nothing)) then
                ((mappend__d2_d3_d7 ((promote_1 on1_1) (`Nothing))) (if ((((_lh_pawnmoves_LH_P2_1_2 = 2) && (_lh_pawnmoves_arg1_1 = (`White))) || ((_lh_pawnmoves_LH_P2_1_2 = 7) && (_lh_pawnmoves_arg1_1 = (`Black)))) && (((pieceAt__d2_d9 _lh_pawnmoves_arg3_1) on2_1) = (`Nothing))) then
                  (`LH_C((`Move(on2_1, (`Nothing), (`Nothing))), (`LH_N)))
                else
                  (`LH_N)))
              else
                (`LH_N)))) in
            (let rec caps_1 = (concat__d4 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
              (match _lh_listcomp_fun_para_2 with
                | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                  (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
                    (match _lh_listcomp_fun_para_3 with
                      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                        (match _lh_listcomp_fun_ls_h_3 with
                          | `Just(_lh_pawnmoves_Just_0_1) -> 
                            (if (not ((colourOf__d2_d5 _lh_pawnmoves_Just_0_1) = _lh_pawnmoves_arg1_1)) then
                              (`LH_C(((promote_1 _lh_listcomp_fun_ls_h_2) (`Just(_lh_pawnmoves_Just_0_1))), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                            else
                              (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                          | _ -> 
                            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                      | `LH_N -> 
                        (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
                    (_lh_listcomp_fun_3 (`LH_C(((pieceAt__d3_d0 _lh_pawnmoves_arg3_1) _lh_listcomp_fun_ls_h_2), (`LH_N)))))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_2 (`LH_C((`LH_P2((_lh_pawnmoves_LH_P2_0_2 + 1), (_lh_pawnmoves_LH_P2_1_2 + fwd_1))), (`LH_C((`LH_P2((_lh_pawnmoves_LH_P2_0_2 - 1), (_lh_pawnmoves_LH_P2_1_2 + fwd_1))), (`LH_N)))))))) in
              ((mappend__d2_d3_d6 movs_1) caps_1)))))
    | _ -> 
      (failwith "error"))
and pieceToChar__d0 _lh_pieceToChar_arg1_1 =
  (match _lh_pieceToChar_arg1_1 with
    | `LH_P2(_lh_pieceToChar_LH_P2_0_1, _lh_pieceToChar_LH_P2_1_1) -> 
      (match _lh_pieceToChar_LH_P2_0_1 with
        | `Black -> 
          (kindToChar__d0 _lh_pieceToChar_LH_P2_1_1)
        | `White -> 
          (toLower__d1 (kindToChar__d1 _lh_pieceToChar_LH_P2_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and qpart__d0 _lh_qpart_arg1_2 _lh_qpart_arg2_2 _lh_qpart_arg3_2 _lh_qpart_arg4_2 _lh_qpart_arg5_2 _lh_qpart_arg6_2 =
  (match _lh_qpart_arg3_2 with
    | `LH_N -> 
      (((rqsort__d0 _lh_qpart_arg1_2) _lh_qpart_arg4_2) (`LH_C(_lh_qpart_arg2_2, (((rqsort__d1 _lh_qpart_arg1_2) _lh_qpart_arg5_2) _lh_qpart_arg6_2))))
    | `LH_C(_lh_qpart_LH_C_0_2, _lh_qpart_LH_C_1_2) -> 
      (if ((_lh_qpart_arg1_2 _lh_qpart_arg2_2) _lh_qpart_LH_C_0_2) then
        ((((((qpart__d0 _lh_qpart_arg1_2) _lh_qpart_arg2_2) _lh_qpart_LH_C_1_2) _lh_qpart_arg4_2) (`LH_C(_lh_qpart_LH_C_0_2, _lh_qpart_arg5_2))) _lh_qpart_arg6_2)
      else
        ((((((qpart__d0 _lh_qpart_arg1_2) _lh_qpart_arg2_2) _lh_qpart_LH_C_1_2) (`LH_C(_lh_qpart_LH_C_0_2, _lh_qpart_arg4_2))) _lh_qpart_arg5_2) _lh_qpart_arg6_2))
    | _ -> 
      (failwith "error"))
and qpart__d1 _lh_qpart_arg1_1 _lh_qpart_arg2_1 _lh_qpart_arg3_1 _lh_qpart_arg4_1 _lh_qpart_arg5_1 _lh_qpart_arg6_1 =
  (match _lh_qpart_arg3_1 with
    | `LH_N -> 
      (((rqsort__d2 _lh_qpart_arg1_1) _lh_qpart_arg4_1) (`LH_C(_lh_qpart_arg2_1, (((rqsort__d3 _lh_qpart_arg1_1) _lh_qpart_arg5_1) _lh_qpart_arg6_1))))
    | `LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_LH_C_1_1) -> 
      (if ((_lh_qpart_arg1_1 _lh_qpart_arg2_1) _lh_qpart_LH_C_0_1) then
        ((((((qpart__d1 _lh_qpart_arg1_1) _lh_qpart_arg2_1) _lh_qpart_LH_C_1_1) _lh_qpart_arg4_1) (`LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_arg5_1))) _lh_qpart_arg6_1)
      else
        ((((((qpart__d1 _lh_qpart_arg1_1) _lh_qpart_arg2_1) _lh_qpart_LH_C_1_1) (`LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_arg4_1))) _lh_qpart_arg5_1) _lh_qpart_arg6_1))
    | _ -> 
      (failwith "error"))
and qpart__d2 _lh_qpart_arg1_3 _lh_qpart_arg2_3 _lh_qpart_arg3_3 _lh_qpart_arg4_3 _lh_qpart_arg5_3 _lh_qpart_arg6_3 =
  (match _lh_qpart_arg3_3 with
    | `LH_N -> 
      (((rqsort__d4 _lh_qpart_arg1_3) _lh_qpart_arg4_3) (`LH_C(_lh_qpart_arg2_3, (((rqsort__d5 _lh_qpart_arg1_3) _lh_qpart_arg5_3) _lh_qpart_arg6_3))))
    | `LH_C(_lh_qpart_LH_C_0_3, _lh_qpart_LH_C_1_3) -> 
      (if ((_lh_qpart_arg1_3 _lh_qpart_arg2_3) _lh_qpart_LH_C_0_3) then
        ((((((qpart__d2 _lh_qpart_arg1_3) _lh_qpart_arg2_3) _lh_qpart_LH_C_1_3) _lh_qpart_arg4_3) (`LH_C(_lh_qpart_LH_C_0_3, _lh_qpart_arg5_3))) _lh_qpart_arg6_3)
      else
        ((((((qpart__d2 _lh_qpart_arg1_3) _lh_qpart_arg2_3) _lh_qpart_LH_C_1_3) (`LH_C(_lh_qpart_LH_C_0_3, _lh_qpart_arg4_3))) _lh_qpart_arg5_3) _lh_qpart_arg6_3))
    | _ -> 
      (failwith "error"))
and qsort__d0 _lh_qsort_arg1_2 _lh_qsort_arg2_2 _lh_qsort_arg3_2 =
  (match _lh_qsort_arg2_2 with
    | `LH_N -> 
      _lh_qsort_arg3_2
    | `LH_C(_lh_qsort_LH_C_0_2, _lh_qsort_LH_C_1_2) -> 
      (match _lh_qsort_LH_C_1_2 with
        | `LH_N -> 
          (`LH_C(_lh_qsort_LH_C_0_2, _lh_qsort_arg3_2))
        | _ -> 
          ((((((qpart__d0 _lh_qsort_arg1_2) _lh_qsort_LH_C_0_2) _lh_qsort_LH_C_1_2) (`LH_N)) (`LH_N)) _lh_qsort_arg3_2))
    | _ -> 
      (failwith "error"))
and qsort__d1 _lh_qsort_arg1_3 _lh_qsort_arg2_3 _lh_qsort_arg3_3 =
  (match _lh_qsort_arg2_3 with
    | `LH_N -> 
      _lh_qsort_arg3_3
    | `LH_C(_lh_qsort_LH_C_0_3, _lh_qsort_LH_C_1_3) -> 
      (match _lh_qsort_LH_C_1_3 with
        | `LH_N -> 
          (`LH_C(_lh_qsort_LH_C_0_3, _lh_qsort_arg3_3))
        | _ -> 
          ((((((qpart__d1 _lh_qsort_arg1_3) _lh_qsort_LH_C_0_3) _lh_qsort_LH_C_1_3) (`LH_N)) (`LH_N)) _lh_qsort_arg3_3))
    | _ -> 
      (failwith "error"))
and qsort__d2 _lh_qsort_arg1_1 _lh_qsort_arg2_1 _lh_qsort_arg3_1 =
  (match _lh_qsort_arg2_1 with
    | `LH_N -> 
      _lh_qsort_arg3_1
    | `LH_C(_lh_qsort_LH_C_0_1, _lh_qsort_LH_C_1_1) -> 
      (match _lh_qsort_LH_C_1_1 with
        | `LH_N -> 
          (`LH_C(_lh_qsort_LH_C_0_1, _lh_qsort_arg3_1))
        | _ -> 
          ((((((qpart__d2 _lh_qsort_arg1_1) _lh_qsort_LH_C_0_1) _lh_qsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_qsort_arg3_1))
    | _ -> 
      (failwith "error"))
and queenmoves__d0 _lh_queenmoves_arg1_1 _lh_queenmoves_arg2_1 _lh_queenmoves_arg3_1 =
  ((mappend__d2_d3_d4 (((bishopmoves__d1 _lh_queenmoves_arg1_1) _lh_queenmoves_arg2_1) _lh_queenmoves_arg3_1)) (((rookmoves__d0 _lh_queenmoves_arg1_1) _lh_queenmoves_arg2_1) _lh_queenmoves_arg3_1))
and queenmoves__d1 _lh_queenmoves_arg1_2 _lh_queenmoves_arg2_2 _lh_queenmoves_arg3_2 =
  ((mappend__d2_d3_d8 (((bishopmoves__d3 _lh_queenmoves_arg1_2) _lh_queenmoves_arg2_2) _lh_queenmoves_arg3_2)) (((rookmoves__d2 _lh_queenmoves_arg1_2) _lh_queenmoves_arg2_2) _lh_queenmoves_arg3_2))
and rawmoves__d0 _lh_rawmoves_arg1_2 _lh_rawmoves_arg2_2 _lh_rawmoves_arg3_2 =
  (match _lh_rawmoves_arg2_2 with
    | `LH_P2(_lh_rawmoves_LH_P2_0_2, _lh_rawmoves_LH_P2_1_2) -> 
      (let rec m_2 = (let rec _lh_matchIdent_2_5_5 = _lh_rawmoves_LH_P2_0_2 in
        (match _lh_matchIdent_2_5_5 with
          | `King -> 
            kingmoves__d0
          | `Queen -> 
            queenmoves__d0
          | `Rook -> 
            rookmoves__d1
          | `Bishop -> 
            bishopmoves__d0
          | `Knight -> 
            knightmoves__d0
          | `Pawn -> 
            pawnmoves__d0
          | _ -> 
            (failwith "error"))) in
        (((m_2 _lh_rawmoves_arg1_2) _lh_rawmoves_LH_P2_1_2) _lh_rawmoves_arg3_2))
    | _ -> 
      (failwith "error"))
and rawmoves__d1 _lh_rawmoves_arg1_1 _lh_rawmoves_arg2_1 _lh_rawmoves_arg3_1 =
  (match _lh_rawmoves_arg2_1 with
    | `LH_P2(_lh_rawmoves_LH_P2_0_1, _lh_rawmoves_LH_P2_1_1) -> 
      (let rec m_1 = (let rec _lh_matchIdent_5_4 = _lh_rawmoves_LH_P2_0_1 in
        (match _lh_matchIdent_5_4 with
          | `King -> 
            kingmoves__d1
          | `Queen -> 
            queenmoves__d1
          | `Rook -> 
            rookmoves__d3
          | `Bishop -> 
            bishopmoves__d2
          | `Knight -> 
            knightmoves__d1
          | `Pawn -> 
            pawnmoves__d1
          | _ -> 
            (failwith "error"))) in
        (((m_1 _lh_rawmoves_arg1_1) _lh_rawmoves_LH_P2_1_1) _lh_rawmoves_arg3_1))
    | _ -> 
      (failwith "error"))
and readProblem__d0 _lh_readProblem_arg1_1 =
  ((fun _lh_funcomp_x_1_1 -> 
    (parseProblem__d0 (lines__d0 _lh_funcomp_x_1_1))) _lh_readProblem_arg1_1)
and replies__d0 _lh_replies_arg1_1 _lh_replies_arg2_1 _lh_replies_arg3_1 =
  (let rec mds_2 = ((moveDetailsFor__d1 _lh_replies_arg2_1) _lh_replies_arg1_1) in
    (let rec solnAnd_1 = (fun mifb_2 rest_1 -> 
      (let rec _lh_matchIdent_1_3_4 = mifb_2 in
        (match _lh_matchIdent_1_3_4 with
          | `LH_P2(_lh_replies_LH_P2_0_1, _lh_replies_LH_P2_1_1) -> 
            (let rec sm_1 = (((solution__d0 _lh_replies_LH_P2_1_1) (opponent__d7 _lh_replies_arg2_1)) (_lh_replies_arg3_1 - 1)) in
              (let rec _lh_matchIdent_1_3_5 = sm_1 in
                (match _lh_matchIdent_1_3_5 with
                  | `Nothing -> 
                    (`Nothing)
                  | `Just(_lh_replies_Just_0_2) -> 
                    (let rec _lh_matchIdent_1_3_6 = rest_1 in
                      (match _lh_matchIdent_1_3_6 with
                        | `Nothing -> 
                          (`Nothing)
                        | `Just(_lh_replies_Just_0_3) -> 
                          (`Just((`LH_C((`LH_P2(_lh_replies_LH_P2_0_1, _lh_replies_Just_0_2)), _lh_replies_Just_0_3))))
                        | _ -> 
                          (failwith "error")))
                  | _ -> 
                    (failwith "error"))))
          | _ -> 
            (failwith "error")))) in
      (if (_lh_replies_arg3_1 = 0) then
        (if (null__d3 mds_2) then
          (`Just((`LH_N)))
        else
          (`Nothing))
      else
        (if (_lh_replies_arg3_1 > 0) then
          (((foldr__d6 solnAnd_1) (`Just((`LH_N)))) mds_2)
        else
          ((failwith "error") (`LH_C('n', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))
and reverse__d0 ls_6_3 =
  ((reverse_helper__d0 ls_6_3) (`LH_N))
and reverse__d1 ls_7_2 =
  ((reverse_helper__d1 ls_7_2) (`LH_N))
and rmPieceAt__d0 _lh_rmPieceAt_arg1_2 _lh_rmPieceAt_arg2_2 _lh_rmPieceAt_arg3_2 =
  (match _lh_rmPieceAt_arg1_2 with
    | `White -> 
      (match _lh_rmPieceAt_arg3_2 with
        | `Board(_lh_rmPieceAt_Board_0_4, _lh_rmPieceAt_Board_1_4) -> 
          (`Board(((rPa__d0 _lh_rmPieceAt_arg2_2) _lh_rmPieceAt_Board_0_4), _lh_rmPieceAt_Board_1_4))
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_rmPieceAt_arg3_2 with
        | `Board(_lh_rmPieceAt_Board_0_5, _lh_rmPieceAt_Board_1_5) -> 
          (`Board(_lh_rmPieceAt_Board_0_5, ((rPa__d1 _lh_rmPieceAt_arg2_2) _lh_rmPieceAt_Board_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rmPieceAt__d1 _lh_rmPieceAt_arg1_1 _lh_rmPieceAt_arg2_1 _lh_rmPieceAt_arg3_1 =
  (match _lh_rmPieceAt_arg1_1 with
    | `White -> 
      (match _lh_rmPieceAt_arg3_1 with
        | `Board(_lh_rmPieceAt_Board_0_2, _lh_rmPieceAt_Board_1_2) -> 
          (`Board(((rPa__d2 _lh_rmPieceAt_arg2_1) _lh_rmPieceAt_Board_0_2), _lh_rmPieceAt_Board_1_2))
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_rmPieceAt_arg3_1 with
        | `Board(_lh_rmPieceAt_Board_0_3, _lh_rmPieceAt_Board_1_3) -> 
          (`Board(_lh_rmPieceAt_Board_0_3, ((rPa__d3 _lh_rmPieceAt_arg2_1) _lh_rmPieceAt_Board_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rmPieceAt__d2 _lh_rmPieceAt_arg1_4 _lh_rmPieceAt_arg2_4 _lh_rmPieceAt_arg3_4 =
  (match _lh_rmPieceAt_arg1_4 with
    | `White -> 
      (match _lh_rmPieceAt_arg3_4 with
        | `Board(_lh_rmPieceAt_Board_0_8, _lh_rmPieceAt_Board_1_8) -> 
          (`Board(((rPa__d4 _lh_rmPieceAt_arg2_4) _lh_rmPieceAt_Board_0_8), _lh_rmPieceAt_Board_1_8))
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_rmPieceAt_arg3_4 with
        | `Board(_lh_rmPieceAt_Board_0_9, _lh_rmPieceAt_Board_1_9) -> 
          (`Board(_lh_rmPieceAt_Board_0_9, ((rPa__d5 _lh_rmPieceAt_arg2_4) _lh_rmPieceAt_Board_1_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rmPieceAt__d3 _lh_rmPieceAt_arg1_3 _lh_rmPieceAt_arg2_3 _lh_rmPieceAt_arg3_3 =
  (match _lh_rmPieceAt_arg1_3 with
    | `White -> 
      (match _lh_rmPieceAt_arg3_3 with
        | `Board(_lh_rmPieceAt_Board_0_6, _lh_rmPieceAt_Board_1_6) -> 
          (`Board(((rPa__d6 _lh_rmPieceAt_arg2_3) _lh_rmPieceAt_Board_0_6), _lh_rmPieceAt_Board_1_6))
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_rmPieceAt_arg3_3 with
        | `Board(_lh_rmPieceAt_Board_0_7, _lh_rmPieceAt_Board_1_7) -> 
          (`Board(_lh_rmPieceAt_Board_0_7, ((rPa__d7 _lh_rmPieceAt_arg2_3) _lh_rmPieceAt_Board_1_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rookmoves__d0 _lh_rookmoves_arg1_4 _lh_rookmoves_arg2_4 _lh_rookmoves_arg3_4 =
  ((((((moveLine__d8 _lh_rookmoves_arg3_4) _lh_rookmoves_arg1_4) _lh_rookmoves_arg2_4) (fun xy_3_5 -> 
    (let rec _lh_matchIdent_2_8_9 = xy_3_5 in
      (match _lh_matchIdent_2_8_9 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_6, _lh_rookmoves_LH_P2_1_1_6) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_1_6 - 1), _lh_rookmoves_LH_P2_1_1_6))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d9 _lh_rookmoves_arg3_4) _lh_rookmoves_arg1_4) _lh_rookmoves_arg2_4) (fun xy_3_6 -> 
    (let rec _lh_matchIdent_2_9_0 = xy_3_6 in
      (match _lh_matchIdent_2_9_0 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_7, _lh_rookmoves_LH_P2_1_1_7) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_1_7 + 1), _lh_rookmoves_LH_P2_1_1_7))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d1_d0 _lh_rookmoves_arg3_4) _lh_rookmoves_arg1_4) _lh_rookmoves_arg2_4) (fun xy_3_7 -> 
    (let rec _lh_matchIdent_2_9_1 = xy_3_7 in
      (match _lh_matchIdent_2_9_1 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_8, _lh_rookmoves_LH_P2_1_1_8) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_1_8, (_lh_rookmoves_LH_P2_1_1_8 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d1_d1 _lh_rookmoves_arg3_4) _lh_rookmoves_arg1_4) _lh_rookmoves_arg2_4) (fun xy_3_8 -> 
    (let rec _lh_matchIdent_2_9_2 = xy_3_8 in
      (match _lh_matchIdent_2_9_2 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_9, _lh_rookmoves_LH_P2_1_1_9) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_1_9, (_lh_rookmoves_LH_P2_1_1_9 + 1)))
        | _ -> 
          (failwith "error"))))) (fun x_2_3 -> 
    x_2_3))))) (`LH_N))
and rookmoves__d1 _lh_rookmoves_arg1_3 _lh_rookmoves_arg2_3 _lh_rookmoves_arg3_3 =
  ((((((moveLine__d1_d2 _lh_rookmoves_arg3_3) _lh_rookmoves_arg1_3) _lh_rookmoves_arg2_3) (fun xy_2_5 -> 
    (let rec _lh_matchIdent_1_5_2 = xy_2_5 in
      (match _lh_matchIdent_1_5_2 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_2, _lh_rookmoves_LH_P2_1_1_2) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_1_2 - 1), _lh_rookmoves_LH_P2_1_1_2))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d1_d3 _lh_rookmoves_arg3_3) _lh_rookmoves_arg1_3) _lh_rookmoves_arg2_3) (fun xy_2_6 -> 
    (let rec _lh_matchIdent_1_5_3 = xy_2_6 in
      (match _lh_matchIdent_1_5_3 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_3, _lh_rookmoves_LH_P2_1_1_3) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_1_3 + 1), _lh_rookmoves_LH_P2_1_1_3))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d1_d4 _lh_rookmoves_arg3_3) _lh_rookmoves_arg1_3) _lh_rookmoves_arg2_3) (fun xy_2_7 -> 
    (let rec _lh_matchIdent_1_5_4 = xy_2_7 in
      (match _lh_matchIdent_1_5_4 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_4, _lh_rookmoves_LH_P2_1_1_4) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_1_4, (_lh_rookmoves_LH_P2_1_1_4 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d1_d5 _lh_rookmoves_arg3_3) _lh_rookmoves_arg1_3) _lh_rookmoves_arg2_3) (fun xy_2_8 -> 
    (let rec _lh_matchIdent_1_5_5 = xy_2_8 in
      (match _lh_matchIdent_1_5_5 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_5, _lh_rookmoves_LH_P2_1_1_5) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_1_5, (_lh_rookmoves_LH_P2_1_1_5 + 1)))
        | _ -> 
          (failwith "error"))))) (fun x_1_6 -> 
    x_1_6))))) (`LH_N))
and rookmoves__d2 _lh_rookmoves_arg1_1 _lh_rookmoves_arg2_1 _lh_rookmoves_arg3_1 =
  ((((((moveLine__d2_d4 _lh_rookmoves_arg3_1) _lh_rookmoves_arg1_1) _lh_rookmoves_arg2_1) (fun xy_9 -> 
    (let rec _lh_matchIdent_5_7 = xy_9 in
      (match _lh_matchIdent_5_7 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_4, _lh_rookmoves_LH_P2_1_4) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_4 - 1), _lh_rookmoves_LH_P2_1_4))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d2_d5 _lh_rookmoves_arg3_1) _lh_rookmoves_arg1_1) _lh_rookmoves_arg2_1) (fun xy_1_0 -> 
    (let rec _lh_matchIdent_5_8 = xy_1_0 in
      (match _lh_matchIdent_5_8 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_5, _lh_rookmoves_LH_P2_1_5) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_5 + 1), _lh_rookmoves_LH_P2_1_5))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d2_d6 _lh_rookmoves_arg3_1) _lh_rookmoves_arg1_1) _lh_rookmoves_arg2_1) (fun xy_1_1 -> 
    (let rec _lh_matchIdent_5_9 = xy_1_1 in
      (match _lh_matchIdent_5_9 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_6, _lh_rookmoves_LH_P2_1_6) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_6, (_lh_rookmoves_LH_P2_1_6 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d2_d7 _lh_rookmoves_arg3_1) _lh_rookmoves_arg1_1) _lh_rookmoves_arg2_1) (fun xy_1_2 -> 
    (let rec _lh_matchIdent_6_0 = xy_1_2 in
      (match _lh_matchIdent_6_0 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_7, _lh_rookmoves_LH_P2_1_7) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_7, (_lh_rookmoves_LH_P2_1_7 + 1)))
        | _ -> 
          (failwith "error"))))) (fun x_1_0 -> 
    x_1_0))))) (`LH_N))
and rookmoves__d3 _lh_rookmoves_arg1_2 _lh_rookmoves_arg2_2 _lh_rookmoves_arg3_2 =
  ((((((moveLine__d2_d8 _lh_rookmoves_arg3_2) _lh_rookmoves_arg1_2) _lh_rookmoves_arg2_2) (fun xy_1_7 -> 
    (let rec _lh_matchIdent_9_9 = xy_1_7 in
      (match _lh_matchIdent_9_9 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_8, _lh_rookmoves_LH_P2_1_8) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_8 - 1), _lh_rookmoves_LH_P2_1_8))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d2_d9 _lh_rookmoves_arg3_2) _lh_rookmoves_arg1_2) _lh_rookmoves_arg2_2) (fun xy_1_8 -> 
    (let rec _lh_matchIdent_1_0_0 = xy_1_8 in
      (match _lh_matchIdent_1_0_0 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_9, _lh_rookmoves_LH_P2_1_9) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_9 + 1), _lh_rookmoves_LH_P2_1_9))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d3_d0 _lh_rookmoves_arg3_2) _lh_rookmoves_arg1_2) _lh_rookmoves_arg2_2) (fun xy_1_9 -> 
    (let rec _lh_matchIdent_1_0_1 = xy_1_9 in
      (match _lh_matchIdent_1_0_1 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_0, _lh_rookmoves_LH_P2_1_1_0) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_1_0, (_lh_rookmoves_LH_P2_1_1_0 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine__d3_d1 _lh_rookmoves_arg3_2) _lh_rookmoves_arg1_2) _lh_rookmoves_arg2_2) (fun xy_2_0 -> 
    (let rec _lh_matchIdent_1_0_2 = xy_2_0 in
      (match _lh_matchIdent_1_0_2 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1_1, _lh_rookmoves_LH_P2_1_1_1) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_1_1, (_lh_rookmoves_LH_P2_1_1_1 + 1)))
        | _ -> 
          (failwith "error"))))) (fun x_1_3 -> 
    x_1_3))))) (`LH_N))
and rqpart__d0 _lh_rqpart_arg1_3 _lh_rqpart_arg2_3 _lh_rqpart_arg3_3 _lh_rqpart_arg4_3 _lh_rqpart_arg5_3 _lh_rqpart_arg6_3 =
  (match _lh_rqpart_arg3_3 with
    | `LH_N -> 
      (((qsort__d0 _lh_rqpart_arg1_3) _lh_rqpart_arg4_3) (`LH_C(_lh_rqpart_arg2_3, (((qsort__d0 _lh_rqpart_arg1_3) _lh_rqpart_arg5_3) _lh_rqpart_arg6_3))))
    | `LH_C(_lh_rqpart_LH_C_0_3, _lh_rqpart_LH_C_1_3) -> 
      (if ((_lh_rqpart_arg1_3 _lh_rqpart_LH_C_0_3) _lh_rqpart_arg2_3) then
        ((((((rqpart__d0 _lh_rqpart_arg1_3) _lh_rqpart_arg2_3) _lh_rqpart_LH_C_1_3) (`LH_C(_lh_rqpart_LH_C_0_3, _lh_rqpart_arg4_3))) _lh_rqpart_arg5_3) _lh_rqpart_arg6_3)
      else
        ((((((rqpart__d0 _lh_rqpart_arg1_3) _lh_rqpart_arg2_3) _lh_rqpart_LH_C_1_3) _lh_rqpart_arg4_3) (`LH_C(_lh_rqpart_LH_C_0_3, _lh_rqpart_arg5_3))) _lh_rqpart_arg6_3))
    | _ -> 
      (failwith "error"))
and rqpart__d1 _lh_rqpart_arg1_6 _lh_rqpart_arg2_6 _lh_rqpart_arg3_6 _lh_rqpart_arg4_6 _lh_rqpart_arg5_6 _lh_rqpart_arg6_6 =
  (match _lh_rqpart_arg3_6 with
    | `LH_N -> 
      (((qsort__d0 _lh_rqpart_arg1_6) _lh_rqpart_arg4_6) (`LH_C(_lh_rqpart_arg2_6, (((qsort__d0 _lh_rqpart_arg1_6) _lh_rqpart_arg5_6) _lh_rqpart_arg6_6))))
    | `LH_C(_lh_rqpart_LH_C_0_6, _lh_rqpart_LH_C_1_6) -> 
      (if ((_lh_rqpart_arg1_6 _lh_rqpart_LH_C_0_6) _lh_rqpart_arg2_6) then
        ((((((rqpart__d1 _lh_rqpart_arg1_6) _lh_rqpart_arg2_6) _lh_rqpart_LH_C_1_6) (`LH_C(_lh_rqpart_LH_C_0_6, _lh_rqpart_arg4_6))) _lh_rqpart_arg5_6) _lh_rqpart_arg6_6)
      else
        ((((((rqpart__d1 _lh_rqpart_arg1_6) _lh_rqpart_arg2_6) _lh_rqpart_LH_C_1_6) _lh_rqpart_arg4_6) (`LH_C(_lh_rqpart_LH_C_0_6, _lh_rqpart_arg5_6))) _lh_rqpart_arg6_6))
    | _ -> 
      (failwith "error"))
and rqpart__d2 _lh_rqpart_arg1_4 _lh_rqpart_arg2_4 _lh_rqpart_arg3_4 _lh_rqpart_arg4_4 _lh_rqpart_arg5_4 _lh_rqpart_arg6_4 =
  (match _lh_rqpart_arg3_4 with
    | `LH_N -> 
      (((qsort__d1 _lh_rqpart_arg1_4) _lh_rqpart_arg4_4) (`LH_C(_lh_rqpart_arg2_4, (((qsort__d1 _lh_rqpart_arg1_4) _lh_rqpart_arg5_4) _lh_rqpart_arg6_4))))
    | `LH_C(_lh_rqpart_LH_C_0_4, _lh_rqpart_LH_C_1_4) -> 
      (if ((_lh_rqpart_arg1_4 _lh_rqpart_LH_C_0_4) _lh_rqpart_arg2_4) then
        ((((((rqpart__d2 _lh_rqpart_arg1_4) _lh_rqpart_arg2_4) _lh_rqpart_LH_C_1_4) (`LH_C(_lh_rqpart_LH_C_0_4, _lh_rqpart_arg4_4))) _lh_rqpart_arg5_4) _lh_rqpart_arg6_4)
      else
        ((((((rqpart__d2 _lh_rqpart_arg1_4) _lh_rqpart_arg2_4) _lh_rqpart_LH_C_1_4) _lh_rqpart_arg4_4) (`LH_C(_lh_rqpart_LH_C_0_4, _lh_rqpart_arg5_4))) _lh_rqpart_arg6_4))
    | _ -> 
      (failwith "error"))
and rqpart__d3 _lh_rqpart_arg1_1 _lh_rqpart_arg2_1 _lh_rqpart_arg3_1 _lh_rqpart_arg4_1 _lh_rqpart_arg5_1 _lh_rqpart_arg6_1 =
  (match _lh_rqpart_arg3_1 with
    | `LH_N -> 
      (((qsort__d1 _lh_rqpart_arg1_1) _lh_rqpart_arg4_1) (`LH_C(_lh_rqpart_arg2_1, (((qsort__d1 _lh_rqpart_arg1_1) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1))))
    | `LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_LH_C_1_1) -> 
      (if ((_lh_rqpart_arg1_1 _lh_rqpart_LH_C_0_1) _lh_rqpart_arg2_1) then
        ((((((rqpart__d3 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg4_1))) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1)
      else
        ((((((rqpart__d3 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) _lh_rqpart_arg4_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg5_1))) _lh_rqpart_arg6_1))
    | _ -> 
      (failwith "error"))
and rqpart__d4 _lh_rqpart_arg1_2 _lh_rqpart_arg2_2 _lh_rqpart_arg3_2 _lh_rqpart_arg4_2 _lh_rqpart_arg5_2 _lh_rqpart_arg6_2 =
  (match _lh_rqpart_arg3_2 with
    | `LH_N -> 
      (((qsort__d2 _lh_rqpart_arg1_2) _lh_rqpart_arg4_2) (`LH_C(_lh_rqpart_arg2_2, (((qsort__d2 _lh_rqpart_arg1_2) _lh_rqpart_arg5_2) _lh_rqpart_arg6_2))))
    | `LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_LH_C_1_2) -> 
      (if ((_lh_rqpart_arg1_2 _lh_rqpart_LH_C_0_2) _lh_rqpart_arg2_2) then
        ((((((rqpart__d4 _lh_rqpart_arg1_2) _lh_rqpart_arg2_2) _lh_rqpart_LH_C_1_2) (`LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_arg4_2))) _lh_rqpart_arg5_2) _lh_rqpart_arg6_2)
      else
        ((((((rqpart__d4 _lh_rqpart_arg1_2) _lh_rqpart_arg2_2) _lh_rqpart_LH_C_1_2) _lh_rqpart_arg4_2) (`LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_arg5_2))) _lh_rqpart_arg6_2))
    | _ -> 
      (failwith "error"))
and rqpart__d5 _lh_rqpart_arg1_5 _lh_rqpart_arg2_5 _lh_rqpart_arg3_5 _lh_rqpart_arg4_5 _lh_rqpart_arg5_5 _lh_rqpart_arg6_5 =
  (match _lh_rqpart_arg3_5 with
    | `LH_N -> 
      (((qsort__d2 _lh_rqpart_arg1_5) _lh_rqpart_arg4_5) (`LH_C(_lh_rqpart_arg2_5, (((qsort__d2 _lh_rqpart_arg1_5) _lh_rqpart_arg5_5) _lh_rqpart_arg6_5))))
    | `LH_C(_lh_rqpart_LH_C_0_5, _lh_rqpart_LH_C_1_5) -> 
      (if ((_lh_rqpart_arg1_5 _lh_rqpart_LH_C_0_5) _lh_rqpart_arg2_5) then
        ((((((rqpart__d5 _lh_rqpart_arg1_5) _lh_rqpart_arg2_5) _lh_rqpart_LH_C_1_5) (`LH_C(_lh_rqpart_LH_C_0_5, _lh_rqpart_arg4_5))) _lh_rqpart_arg5_5) _lh_rqpart_arg6_5)
      else
        ((((((rqpart__d5 _lh_rqpart_arg1_5) _lh_rqpart_arg2_5) _lh_rqpart_LH_C_1_5) _lh_rqpart_arg4_5) (`LH_C(_lh_rqpart_LH_C_0_5, _lh_rqpart_arg5_5))) _lh_rqpart_arg6_5))
    | _ -> 
      (failwith "error"))
and rqsort__d0 _lh_rqsort_arg1_6 _lh_rqsort_arg2_6 _lh_rqsort_arg3_6 =
  (match _lh_rqsort_arg2_6 with
    | `LH_N -> 
      _lh_rqsort_arg3_6
    | `LH_C(_lh_rqsort_LH_C_0_6, _lh_rqsort_LH_C_1_6) -> 
      (match _lh_rqsort_LH_C_1_6 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_6, _lh_rqsort_arg3_6))
        | _ -> 
          ((((((rqpart__d0 _lh_rqsort_arg1_6) _lh_rqsort_LH_C_0_6) _lh_rqsort_LH_C_1_6) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_6))
    | _ -> 
      (failwith "error"))
and rqsort__d1 _lh_rqsort_arg1_2 _lh_rqsort_arg2_2 _lh_rqsort_arg3_2 =
  (match _lh_rqsort_arg2_2 with
    | `LH_N -> 
      _lh_rqsort_arg3_2
    | `LH_C(_lh_rqsort_LH_C_0_2, _lh_rqsort_LH_C_1_2) -> 
      (match _lh_rqsort_LH_C_1_2 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_2, _lh_rqsort_arg3_2))
        | _ -> 
          ((((((rqpart__d1 _lh_rqsort_arg1_2) _lh_rqsort_LH_C_0_2) _lh_rqsort_LH_C_1_2) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2))
    | _ -> 
      (failwith "error"))
and rqsort__d2 _lh_rqsort_arg1_3 _lh_rqsort_arg2_3 _lh_rqsort_arg3_3 =
  (match _lh_rqsort_arg2_3 with
    | `LH_N -> 
      _lh_rqsort_arg3_3
    | `LH_C(_lh_rqsort_LH_C_0_3, _lh_rqsort_LH_C_1_3) -> 
      (match _lh_rqsort_LH_C_1_3 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_3, _lh_rqsort_arg3_3))
        | _ -> 
          ((((((rqpart__d2 _lh_rqsort_arg1_3) _lh_rqsort_LH_C_0_3) _lh_rqsort_LH_C_1_3) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_3))
    | _ -> 
      (failwith "error"))
and rqsort__d3 _lh_rqsort_arg1_5 _lh_rqsort_arg2_5 _lh_rqsort_arg3_5 =
  (match _lh_rqsort_arg2_5 with
    | `LH_N -> 
      _lh_rqsort_arg3_5
    | `LH_C(_lh_rqsort_LH_C_0_5, _lh_rqsort_LH_C_1_5) -> 
      (match _lh_rqsort_LH_C_1_5 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_5, _lh_rqsort_arg3_5))
        | _ -> 
          ((((((rqpart__d3 _lh_rqsort_arg1_5) _lh_rqsort_LH_C_0_5) _lh_rqsort_LH_C_1_5) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_5))
    | _ -> 
      (failwith "error"))
and rqsort__d4 _lh_rqsort_arg1_1 _lh_rqsort_arg2_1 _lh_rqsort_arg3_1 =
  (match _lh_rqsort_arg2_1 with
    | `LH_N -> 
      _lh_rqsort_arg3_1
    | `LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_LH_C_1_1) -> 
      (match _lh_rqsort_LH_C_1_1 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_arg3_1))
        | _ -> 
          ((((((rqpart__d4 _lh_rqsort_arg1_1) _lh_rqsort_LH_C_0_1) _lh_rqsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1))
    | _ -> 
      (failwith "error"))
and rqsort__d5 _lh_rqsort_arg1_4 _lh_rqsort_arg2_4 _lh_rqsort_arg3_4 =
  (match _lh_rqsort_arg2_4 with
    | `LH_N -> 
      _lh_rqsort_arg3_4
    | `LH_C(_lh_rqsort_LH_C_0_4, _lh_rqsort_LH_C_1_4) -> 
      (match _lh_rqsort_LH_C_1_4 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_4, _lh_rqsort_arg3_4))
        | _ -> 
          ((((((rqpart__d5 _lh_rqsort_arg1_4) _lh_rqsort_LH_C_0_4) _lh_rqsort_LH_C_1_4) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_4))
    | _ -> 
      (failwith "error"))
and showBoard__d0 _lh_showBoard_arg1_1 =
  (let rec showRank_1 = (fun r_1 -> 
    (let rec consFile_1 = (fun f_3_0 s_1 -> 
      (let rec _lh_matchIdent_3_0_4 = ((pieceAt__d0 _lh_showBoard_arg1_1) (`LH_P2(f_3_0, r_1))) in
        (match _lh_matchIdent_3_0_4 with
          | `Nothing -> 
            ((mappend__d9 (`LH_C(' ', (`LH_C('-', (`LH_N)))))) s_1)
          | `Just(_lh_showBoard_Just_0_1) -> 
            (`LH_C(' ', (`LH_C((pieceToChar__d0 _lh_showBoard_Just_0_1), s_1))))
          | _ -> 
            (failwith "error")))) in
      (((foldr__d1 consFile_1) (`LH_N)) ((enumFromTo__d2 1) 8)))) in
    (unlines__d0 ((map__d0 showRank_1) (reverse__d1 ((enumFromTo__d3 1) 8)))))
and showMoveInFull__d0 _lh_showMoveInFull_arg1_8 =
  ((showMove__d0 true) _lh_showMoveInFull_arg1_8)
and showMoveInFull__d1 _lh_showMoveInFull_arg1_6 =
  ((showMove__d1 true) _lh_showMoveInFull_arg1_6)
and showMoveInFull__d2 _lh_showMoveInFull_arg1_5 =
  ((showMove__d3 true) _lh_showMoveInFull_arg1_5)
and showMoveInFull__d3 _lh_showMoveInFull_arg1_9 =
  ((showMove__d5 true) _lh_showMoveInFull_arg1_9)
and showMoveInFull__d4 _lh_showMoveInFull_arg1_3 =
  ((showMove__d6 true) _lh_showMoveInFull_arg1_3)
and showMoveInFull__d5 _lh_showMoveInFull_arg1_7 =
  ((showMove__d8 true) _lh_showMoveInFull_arg1_7)
and showMoveInFull__d6 _lh_showMoveInFull_arg1_4 =
  ((showMove__d1_d0 true) _lh_showMoveInFull_arg1_4)
and showMoveInFull__d7 _lh_showMoveInFull_arg1_1 =
  ((showMove__d1_d1 true) _lh_showMoveInFull_arg1_1)
and showMoveInFull__d8 _lh_showMoveInFull_arg1_2 =
  ((showMove__d1_d3 true) _lh_showMoveInFull_arg1_2)
and showMove__d0 _lh_showMove_arg1_3 _lh_showMove_arg2_3 =
  (match _lh_showMove_arg2_3 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_3, _lh_showMove_MoveInFull_1_3, _lh_showMove_MoveInFull_2_3) -> 
      (match _lh_showMove_MoveInFull_0_3 with
        | `LH_P2(_lh_showMove_LH_P2_0_3, _lh_showMove_LH_P2_1_3) -> 
          (match _lh_showMove_MoveInFull_2_3 with
            | `Move(_lh_showMove_Move_0_3, _lh_showMove_Move_1_3, _lh_showMove_Move_2_3) -> 
              (let rec capt_3 = (_lh_showMove_Move_1_3 <> (`Nothing)) in
                (let rec prom_3 = (_lh_showMove_Move_2_3 <> (`Nothing)) in
                  ((mappend__d1_d9 ((mappend__d2_d0 ((mappend__d2_d1 (if _lh_showMove_arg1_3 then
                    ((mappend__d2_d2 ((mappend__d2_d3 (showPiece__d0 (`LH_P2(_lh_showMove_LH_P2_0_3, _lh_showMove_LH_P2_1_3)))) (if ((_lh_showMove_LH_P2_1_3 = (`King)) || ((_lh_showMove_LH_P2_1_3 = (`Pawn)) && (not (capt_3 || prom_3)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d0 _lh_showMove_LH_P2_0_3) _lh_showMove_MoveInFull_1_3))
                  else
                    (`LH_N))) (((maybe__d0 (`LH_C('-', (`LH_N)))) (fun cp_3 -> 
                    ((mappend__d2_d4 ((mappend__d2_d5 (`LH_C('x', (`LH_N)))) (showPiece__d1 cp_3))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_3))) ((showSquare__d1 _lh_showMove_LH_P2_0_3) _lh_showMove_Move_0_3))) (((maybe__d1 (`LH_N)) (fun pp_3 -> 
                    ((mappend__d2_d6 ((mappend__d2_d7 (`LH_C('(', (`LH_N)))) (showPiece__d2 pp_3))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_3))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d1 _lh_showMove_arg1_6 _lh_showMove_arg2_6 =
  (match _lh_showMove_arg2_6 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_6, _lh_showMove_MoveInFull_1_6, _lh_showMove_MoveInFull_2_6) -> 
      (match _lh_showMove_MoveInFull_0_6 with
        | `LH_P2(_lh_showMove_LH_P2_0_6, _lh_showMove_LH_P2_1_6) -> 
          (match _lh_showMove_MoveInFull_2_6 with
            | `Move(_lh_showMove_Move_0_6, _lh_showMove_Move_1_6, _lh_showMove_Move_2_6) -> 
              (let rec capt_6 = (_lh_showMove_Move_1_6 <> (`Nothing)) in
                (let rec prom_6 = (_lh_showMove_Move_2_6 <> (`Nothing)) in
                  ((mappend__d3_d1 ((mappend__d3_d2 ((mappend__d3_d3 (if _lh_showMove_arg1_6 then
                    ((mappend__d3_d4 ((mappend__d3_d5 (showPiece__d3 (`LH_P2(_lh_showMove_LH_P2_0_6, _lh_showMove_LH_P2_1_6)))) (if ((_lh_showMove_LH_P2_1_6 = (`King)) || ((_lh_showMove_LH_P2_1_6 = (`Pawn)) && (not (capt_6 || prom_6)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d2 _lh_showMove_LH_P2_0_6) _lh_showMove_MoveInFull_1_6))
                  else
                    (`LH_N))) (((maybe__d2 (`LH_C('-', (`LH_N)))) (fun cp_6 -> 
                    ((mappend__d3_d6 ((mappend__d3_d7 (`LH_C('x', (`LH_N)))) (showPiece__d4 cp_6))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_6))) ((showSquare__d3 _lh_showMove_LH_P2_0_6) _lh_showMove_Move_0_6))) (((maybe__d3 (`LH_N)) (fun pp_6 -> 
                    ((mappend__d3_d8 ((mappend__d3_d9 (`LH_C('(', (`LH_N)))) (showPiece__d5 pp_6))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_6))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d1_d0 _lh_showMove_arg1_1_2 _lh_showMove_arg2_1_2 =
  (match _lh_showMove_arg2_1_2 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_1_2, _lh_showMove_MoveInFull_1_1_2, _lh_showMove_MoveInFull_2_1_2) -> 
      (match _lh_showMove_MoveInFull_0_1_2 with
        | `LH_P2(_lh_showMove_LH_P2_0_1_2, _lh_showMove_LH_P2_1_1_2) -> 
          (match _lh_showMove_MoveInFull_2_1_2 with
            | `Move(_lh_showMove_Move_0_1_2, _lh_showMove_Move_1_1_2, _lh_showMove_Move_2_1_2) -> 
              (let rec capt_1_2 = (_lh_showMove_Move_1_1_2 <> (`Nothing)) in
                (let rec prom_1_2 = (_lh_showMove_Move_2_1_2 <> (`Nothing)) in
                  ((mappend__d1_d6_d5 ((mappend__d1_d6_d6 ((mappend__d1_d6_d7 (if _lh_showMove_arg1_1_2 then
                    ((mappend__d1_d6_d8 ((mappend__d1_d6_d9 (showPiece__d3_d0 (`LH_P2(_lh_showMove_LH_P2_0_1_2, _lh_showMove_LH_P2_1_1_2)))) (if ((_lh_showMove_LH_P2_1_1_2 = (`King)) || ((_lh_showMove_LH_P2_1_1_2 = (`Pawn)) && (not (capt_1_2 || prom_1_2)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d2_d0 _lh_showMove_LH_P2_0_1_2) _lh_showMove_MoveInFull_1_1_2))
                  else
                    (`LH_N))) (((maybe__d2_d0 (`LH_C('-', (`LH_N)))) (fun cp_1_2 -> 
                    ((mappend__d1_d7_d0 ((mappend__d1_d7_d1 (`LH_C('x', (`LH_N)))) (showPiece__d3_d1 cp_1_2))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_1_2))) ((showSquare__d2_d1 _lh_showMove_LH_P2_0_1_2) _lh_showMove_Move_0_1_2))) (((maybe__d2_d1 (`LH_N)) (fun pp_1_2 -> 
                    ((mappend__d1_d7_d2 ((mappend__d1_d7_d3 (`LH_C('(', (`LH_N)))) (showPiece__d3_d2 pp_1_2))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_1_2))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d1_d1 _lh_showMove_arg1_1_3 _lh_showMove_arg2_1_3 =
  (match _lh_showMove_arg2_1_3 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_1_3, _lh_showMove_MoveInFull_1_1_3, _lh_showMove_MoveInFull_2_1_3) -> 
      (match _lh_showMove_MoveInFull_0_1_3 with
        | `LH_P2(_lh_showMove_LH_P2_0_1_3, _lh_showMove_LH_P2_1_1_3) -> 
          (match _lh_showMove_MoveInFull_2_1_3 with
            | `Move(_lh_showMove_Move_0_1_3, _lh_showMove_Move_1_1_3, _lh_showMove_Move_2_1_3) -> 
              (let rec capt_1_3 = (_lh_showMove_Move_1_1_3 <> (`Nothing)) in
                (let rec prom_1_3 = (_lh_showMove_Move_2_1_3 <> (`Nothing)) in
                  ((mappend__d1_d7_d7 ((mappend__d1_d7_d8 ((mappend__d1_d7_d9 (if _lh_showMove_arg1_1_3 then
                    ((mappend__d1_d8_d0 ((mappend__d1_d8_d1 (showPiece__d3_d3 (`LH_P2(_lh_showMove_LH_P2_0_1_3, _lh_showMove_LH_P2_1_1_3)))) (if ((_lh_showMove_LH_P2_1_1_3 = (`King)) || ((_lh_showMove_LH_P2_1_1_3 = (`Pawn)) && (not (capt_1_3 || prom_1_3)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d2_d2 _lh_showMove_LH_P2_0_1_3) _lh_showMove_MoveInFull_1_1_3))
                  else
                    (`LH_N))) (((maybe__d2_d2 (`LH_C('-', (`LH_N)))) (fun cp_1_3 -> 
                    ((mappend__d1_d8_d2 ((mappend__d1_d8_d3 (`LH_C('x', (`LH_N)))) (showPiece__d3_d4 cp_1_3))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_1_3))) ((showSquare__d2_d3 _lh_showMove_LH_P2_0_1_3) _lh_showMove_Move_0_1_3))) (((maybe__d2_d3 (`LH_N)) (fun pp_1_3 -> 
                    ((mappend__d1_d8_d4 ((mappend__d1_d8_d5 (`LH_C('(', (`LH_N)))) (showPiece__d3_d5 pp_1_3))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_1_3))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d1_d2 _lh_showMove_arg1_1 _lh_showMove_arg2_1 =
  (match _lh_showMove_arg2_1 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_1, _lh_showMove_MoveInFull_1_1, _lh_showMove_MoveInFull_2_1) -> 
      (match _lh_showMove_MoveInFull_0_1 with
        | `LH_P2(_lh_showMove_LH_P2_0_1, _lh_showMove_LH_P2_1_1) -> 
          (match _lh_showMove_MoveInFull_2_1 with
            | `Move(_lh_showMove_Move_0_1, _lh_showMove_Move_1_1, _lh_showMove_Move_2_1) -> 
              (let rec capt_1 = (_lh_showMove_Move_1_1 <> (`Nothing)) in
                (let rec prom_1 = (_lh_showMove_Move_2_1 <> (`Nothing)) in
                  ((mappend__d1_d9_d0 ((mappend__d1_d9_d1 ((mappend__d1_d9_d2 (if _lh_showMove_arg1_1 then
                    ((mappend__d1_d9_d3 ((mappend__d1_d9_d4 (showPiece__d3_d6 (`LH_P2(_lh_showMove_LH_P2_0_1, _lh_showMove_LH_P2_1_1)))) (if ((_lh_showMove_LH_P2_1_1 = (`King)) || ((_lh_showMove_LH_P2_1_1 = (`Pawn)) && (not (capt_1 || prom_1)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d2_d4 _lh_showMove_LH_P2_0_1) _lh_showMove_MoveInFull_1_1))
                  else
                    (`LH_N))) (((maybe__d2_d4 (`LH_C('-', (`LH_N)))) (fun cp_1 -> 
                    ((mappend__d1_d9_d5 ((mappend__d1_d9_d6 (`LH_C('x', (`LH_N)))) (showPiece__d3_d7 cp_1))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_1))) ((showSquare__d2_d5 _lh_showMove_LH_P2_0_1) _lh_showMove_Move_0_1))) (((maybe__d2_d5 (`LH_N)) (fun pp_1 -> 
                    ((mappend__d1_d9_d7 ((mappend__d1_d9_d8 (`LH_C('(', (`LH_N)))) (showPiece__d3_d8 pp_1))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_1))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d1_d3 _lh_showMove_arg1_8 _lh_showMove_arg2_8 =
  (match _lh_showMove_arg2_8 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_8, _lh_showMove_MoveInFull_1_8, _lh_showMove_MoveInFull_2_8) -> 
      (match _lh_showMove_MoveInFull_0_8 with
        | `LH_P2(_lh_showMove_LH_P2_0_8, _lh_showMove_LH_P2_1_8) -> 
          (match _lh_showMove_MoveInFull_2_8 with
            | `Move(_lh_showMove_Move_0_8, _lh_showMove_Move_1_8, _lh_showMove_Move_2_8) -> 
              (let rec capt_8 = (_lh_showMove_Move_1_8 <> (`Nothing)) in
                (let rec prom_8 = (_lh_showMove_Move_2_8 <> (`Nothing)) in
                  ((mappend__d2_d0_d7 ((mappend__d2_d0_d8 ((mappend__d2_d0_d9 (if _lh_showMove_arg1_8 then
                    ((mappend__d2_d1_d0 ((mappend__d2_d1_d1 (showPiece__d3_d9 (`LH_P2(_lh_showMove_LH_P2_0_8, _lh_showMove_LH_P2_1_8)))) (if ((_lh_showMove_LH_P2_1_8 = (`King)) || ((_lh_showMove_LH_P2_1_8 = (`Pawn)) && (not (capt_8 || prom_8)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d2_d6 _lh_showMove_LH_P2_0_8) _lh_showMove_MoveInFull_1_8))
                  else
                    (`LH_N))) (((maybe__d2_d6 (`LH_C('-', (`LH_N)))) (fun cp_8 -> 
                    ((mappend__d2_d1_d2 ((mappend__d2_d1_d3 (`LH_C('x', (`LH_N)))) (showPiece__d4_d0 cp_8))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_8))) ((showSquare__d2_d7 _lh_showMove_LH_P2_0_8) _lh_showMove_Move_0_8))) (((maybe__d2_d7 (`LH_N)) (fun pp_8 -> 
                    ((mappend__d2_d1_d4 ((mappend__d2_d1_d5 (`LH_C('(', (`LH_N)))) (showPiece__d4_d1 pp_8))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_8))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d1_d4 _lh_showMove_arg1_7 _lh_showMove_arg2_7 =
  (match _lh_showMove_arg2_7 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_7, _lh_showMove_MoveInFull_1_7, _lh_showMove_MoveInFull_2_7) -> 
      (match _lh_showMove_MoveInFull_0_7 with
        | `LH_P2(_lh_showMove_LH_P2_0_7, _lh_showMove_LH_P2_1_7) -> 
          (match _lh_showMove_MoveInFull_2_7 with
            | `Move(_lh_showMove_Move_0_7, _lh_showMove_Move_1_7, _lh_showMove_Move_2_7) -> 
              (let rec capt_7 = (_lh_showMove_Move_1_7 <> (`Nothing)) in
                (let rec prom_7 = (_lh_showMove_Move_2_7 <> (`Nothing)) in
                  ((mappend__d2_d2_d0 ((mappend__d2_d2_d1 ((mappend__d2_d2_d2 (if _lh_showMove_arg1_7 then
                    ((mappend__d2_d2_d3 ((mappend__d2_d2_d4 (showPiece__d4_d2 (`LH_P2(_lh_showMove_LH_P2_0_7, _lh_showMove_LH_P2_1_7)))) (if ((_lh_showMove_LH_P2_1_7 = (`King)) || ((_lh_showMove_LH_P2_1_7 = (`Pawn)) && (not (capt_7 || prom_7)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d2_d8 _lh_showMove_LH_P2_0_7) _lh_showMove_MoveInFull_1_7))
                  else
                    (`LH_N))) (((maybe__d2_d8 (`LH_C('-', (`LH_N)))) (fun cp_7 -> 
                    ((mappend__d2_d2_d5 ((mappend__d2_d2_d6 (`LH_C('x', (`LH_N)))) (showPiece__d4_d3 cp_7))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_7))) ((showSquare__d2_d9 _lh_showMove_LH_P2_0_7) _lh_showMove_Move_0_7))) (((maybe__d2_d9 (`LH_N)) (fun pp_7 -> 
                    ((mappend__d2_d2_d7 ((mappend__d2_d2_d8 (`LH_C('(', (`LH_N)))) (showPiece__d4_d4 pp_7))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_7))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d2 _lh_showMove_arg1_2 _lh_showMove_arg2_2 =
  (match _lh_showMove_arg2_2 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_2, _lh_showMove_MoveInFull_1_2, _lh_showMove_MoveInFull_2_2) -> 
      (match _lh_showMove_MoveInFull_0_2 with
        | `LH_P2(_lh_showMove_LH_P2_0_2, _lh_showMove_LH_P2_1_2) -> 
          (match _lh_showMove_MoveInFull_2_2 with
            | `Move(_lh_showMove_Move_0_2, _lh_showMove_Move_1_2, _lh_showMove_Move_2_2) -> 
              (let rec capt_2 = (_lh_showMove_Move_1_2 <> (`Nothing)) in
                (let rec prom_2 = (_lh_showMove_Move_2_2 <> (`Nothing)) in
                  ((mappend__d4_d4 ((mappend__d4_d5 ((mappend__d4_d6 (if _lh_showMove_arg1_2 then
                    ((mappend__d4_d7 ((mappend__d4_d8 (showPiece__d6 (`LH_P2(_lh_showMove_LH_P2_0_2, _lh_showMove_LH_P2_1_2)))) (if ((_lh_showMove_LH_P2_1_2 = (`King)) || ((_lh_showMove_LH_P2_1_2 = (`Pawn)) && (not (capt_2 || prom_2)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d4 _lh_showMove_LH_P2_0_2) _lh_showMove_MoveInFull_1_2))
                  else
                    (`LH_N))) (((maybe__d4 (`LH_C('-', (`LH_N)))) (fun cp_2 -> 
                    ((mappend__d4_d9 ((mappend__d5_d0 (`LH_C('x', (`LH_N)))) (showPiece__d7 cp_2))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_2))) ((showSquare__d5 _lh_showMove_LH_P2_0_2) _lh_showMove_Move_0_2))) (((maybe__d5 (`LH_N)) (fun pp_2 -> 
                    ((mappend__d5_d1 ((mappend__d5_d2 (`LH_C('(', (`LH_N)))) (showPiece__d8 pp_2))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_2))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d3 _lh_showMove_arg1_1_1 _lh_showMove_arg2_1_1 =
  (match _lh_showMove_arg2_1_1 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_1_1, _lh_showMove_MoveInFull_1_1_1, _lh_showMove_MoveInFull_2_1_1) -> 
      (match _lh_showMove_MoveInFull_0_1_1 with
        | `LH_P2(_lh_showMove_LH_P2_0_1_1, _lh_showMove_LH_P2_1_1_1) -> 
          (match _lh_showMove_MoveInFull_2_1_1 with
            | `Move(_lh_showMove_Move_0_1_1, _lh_showMove_Move_1_1_1, _lh_showMove_Move_2_1_1) -> 
              (let rec capt_1_1 = (_lh_showMove_Move_1_1_1 <> (`Nothing)) in
                (let rec prom_1_1 = (_lh_showMove_Move_2_1_1 <> (`Nothing)) in
                  ((mappend__d6_d1 ((mappend__d6_d2 ((mappend__d6_d3 (if _lh_showMove_arg1_1_1 then
                    ((mappend__d6_d4 ((mappend__d6_d5 (showPiece__d9 (`LH_P2(_lh_showMove_LH_P2_0_1_1, _lh_showMove_LH_P2_1_1_1)))) (if ((_lh_showMove_LH_P2_1_1_1 = (`King)) || ((_lh_showMove_LH_P2_1_1_1 = (`Pawn)) && (not (capt_1_1 || prom_1_1)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d6 _lh_showMove_LH_P2_0_1_1) _lh_showMove_MoveInFull_1_1_1))
                  else
                    (`LH_N))) (((maybe__d6 (`LH_C('-', (`LH_N)))) (fun cp_1_1 -> 
                    ((mappend__d6_d6 ((mappend__d6_d7 (`LH_C('x', (`LH_N)))) (showPiece__d1_d0 cp_1_1))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_1_1))) ((showSquare__d7 _lh_showMove_LH_P2_0_1_1) _lh_showMove_Move_0_1_1))) (((maybe__d7 (`LH_N)) (fun pp_1_1 -> 
                    ((mappend__d6_d8 ((mappend__d6_d9 (`LH_C('(', (`LH_N)))) (showPiece__d1_d1 pp_1_1))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_1_1))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d4 _lh_showMove_arg1_4 _lh_showMove_arg2_4 =
  (match _lh_showMove_arg2_4 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_4, _lh_showMove_MoveInFull_1_4, _lh_showMove_MoveInFull_2_4) -> 
      (match _lh_showMove_MoveInFull_0_4 with
        | `LH_P2(_lh_showMove_LH_P2_0_4, _lh_showMove_LH_P2_1_4) -> 
          (match _lh_showMove_MoveInFull_2_4 with
            | `Move(_lh_showMove_Move_0_4, _lh_showMove_Move_1_4, _lh_showMove_Move_2_4) -> 
              (let rec capt_4 = (_lh_showMove_Move_1_4 <> (`Nothing)) in
                (let rec prom_4 = (_lh_showMove_Move_2_4 <> (`Nothing)) in
                  ((mappend__d7_d4 ((mappend__d7_d5 ((mappend__d7_d6 (if _lh_showMove_arg1_4 then
                    ((mappend__d7_d7 ((mappend__d7_d8 (showPiece__d1_d2 (`LH_P2(_lh_showMove_LH_P2_0_4, _lh_showMove_LH_P2_1_4)))) (if ((_lh_showMove_LH_P2_1_4 = (`King)) || ((_lh_showMove_LH_P2_1_4 = (`Pawn)) && (not (capt_4 || prom_4)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d8 _lh_showMove_LH_P2_0_4) _lh_showMove_MoveInFull_1_4))
                  else
                    (`LH_N))) (((maybe__d8 (`LH_C('-', (`LH_N)))) (fun cp_4 -> 
                    ((mappend__d7_d9 ((mappend__d8_d0 (`LH_C('x', (`LH_N)))) (showPiece__d1_d3 cp_4))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_4))) ((showSquare__d9 _lh_showMove_LH_P2_0_4) _lh_showMove_Move_0_4))) (((maybe__d9 (`LH_N)) (fun pp_4 -> 
                    ((mappend__d8_d1 ((mappend__d8_d2 (`LH_C('(', (`LH_N)))) (showPiece__d1_d4 pp_4))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_4))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d5 _lh_showMove_arg1_1_4 _lh_showMove_arg2_1_4 =
  (match _lh_showMove_arg2_1_4 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_1_4, _lh_showMove_MoveInFull_1_1_4, _lh_showMove_MoveInFull_2_1_4) -> 
      (match _lh_showMove_MoveInFull_0_1_4 with
        | `LH_P2(_lh_showMove_LH_P2_0_1_4, _lh_showMove_LH_P2_1_1_4) -> 
          (match _lh_showMove_MoveInFull_2_1_4 with
            | `Move(_lh_showMove_Move_0_1_4, _lh_showMove_Move_1_1_4, _lh_showMove_Move_2_1_4) -> 
              (let rec capt_1_4 = (_lh_showMove_Move_1_1_4 <> (`Nothing)) in
                (let rec prom_1_4 = (_lh_showMove_Move_2_1_4 <> (`Nothing)) in
                  ((mappend__d9_d2 ((mappend__d9_d3 ((mappend__d9_d4 (if _lh_showMove_arg1_1_4 then
                    ((mappend__d9_d5 ((mappend__d9_d6 (showPiece__d1_d5 (`LH_P2(_lh_showMove_LH_P2_0_1_4, _lh_showMove_LH_P2_1_1_4)))) (if ((_lh_showMove_LH_P2_1_1_4 = (`King)) || ((_lh_showMove_LH_P2_1_1_4 = (`Pawn)) && (not (capt_1_4 || prom_1_4)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d1_d0 _lh_showMove_LH_P2_0_1_4) _lh_showMove_MoveInFull_1_1_4))
                  else
                    (`LH_N))) (((maybe__d1_d0 (`LH_C('-', (`LH_N)))) (fun cp_1_4 -> 
                    ((mappend__d9_d7 ((mappend__d9_d8 (`LH_C('x', (`LH_N)))) (showPiece__d1_d6 cp_1_4))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_1_4))) ((showSquare__d1_d1 _lh_showMove_LH_P2_0_1_4) _lh_showMove_Move_0_1_4))) (((maybe__d1_d1 (`LH_N)) (fun pp_1_4 -> 
                    ((mappend__d9_d9 ((mappend__d1_d0_d0 (`LH_C('(', (`LH_N)))) (showPiece__d1_d7 pp_1_4))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_1_4))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d6 _lh_showMove_arg1_1_0 _lh_showMove_arg2_1_0 =
  (match _lh_showMove_arg2_1_0 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_1_0, _lh_showMove_MoveInFull_1_1_0, _lh_showMove_MoveInFull_2_1_0) -> 
      (match _lh_showMove_MoveInFull_0_1_0 with
        | `LH_P2(_lh_showMove_LH_P2_0_1_0, _lh_showMove_LH_P2_1_1_0) -> 
          (match _lh_showMove_MoveInFull_2_1_0 with
            | `Move(_lh_showMove_Move_0_1_0, _lh_showMove_Move_1_1_0, _lh_showMove_Move_2_1_0) -> 
              (let rec capt_1_0 = (_lh_showMove_Move_1_1_0 <> (`Nothing)) in
                (let rec prom_1_0 = (_lh_showMove_Move_2_1_0 <> (`Nothing)) in
                  ((mappend__d1_d0_d4 ((mappend__d1_d0_d5 ((mappend__d1_d0_d6 (if _lh_showMove_arg1_1_0 then
                    ((mappend__d1_d0_d7 ((mappend__d1_d0_d8 (showPiece__d1_d8 (`LH_P2(_lh_showMove_LH_P2_0_1_0, _lh_showMove_LH_P2_1_1_0)))) (if ((_lh_showMove_LH_P2_1_1_0 = (`King)) || ((_lh_showMove_LH_P2_1_1_0 = (`Pawn)) && (not (capt_1_0 || prom_1_0)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d1_d2 _lh_showMove_LH_P2_0_1_0) _lh_showMove_MoveInFull_1_1_0))
                  else
                    (`LH_N))) (((maybe__d1_d2 (`LH_C('-', (`LH_N)))) (fun cp_1_0 -> 
                    ((mappend__d1_d0_d9 ((mappend__d1_d1_d0 (`LH_C('x', (`LH_N)))) (showPiece__d1_d9 cp_1_0))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_1_0))) ((showSquare__d1_d3 _lh_showMove_LH_P2_0_1_0) _lh_showMove_Move_0_1_0))) (((maybe__d1_d3 (`LH_N)) (fun pp_1_0 -> 
                    ((mappend__d1_d1_d1 ((mappend__d1_d1_d2 (`LH_C('(', (`LH_N)))) (showPiece__d2_d0 pp_1_0))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_1_0))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d7 _lh_showMove_arg1_5 _lh_showMove_arg2_5 =
  (match _lh_showMove_arg2_5 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_5, _lh_showMove_MoveInFull_1_5, _lh_showMove_MoveInFull_2_5) -> 
      (match _lh_showMove_MoveInFull_0_5 with
        | `LH_P2(_lh_showMove_LH_P2_0_5, _lh_showMove_LH_P2_1_5) -> 
          (match _lh_showMove_MoveInFull_2_5 with
            | `Move(_lh_showMove_Move_0_5, _lh_showMove_Move_1_5, _lh_showMove_Move_2_5) -> 
              (let rec capt_5 = (_lh_showMove_Move_1_5 <> (`Nothing)) in
                (let rec prom_5 = (_lh_showMove_Move_2_5 <> (`Nothing)) in
                  ((mappend__d1_d1_d7 ((mappend__d1_d1_d8 ((mappend__d1_d1_d9 (if _lh_showMove_arg1_5 then
                    ((mappend__d1_d2_d0 ((mappend__d1_d2_d1 (showPiece__d2_d1 (`LH_P2(_lh_showMove_LH_P2_0_5, _lh_showMove_LH_P2_1_5)))) (if ((_lh_showMove_LH_P2_1_5 = (`King)) || ((_lh_showMove_LH_P2_1_5 = (`Pawn)) && (not (capt_5 || prom_5)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d1_d4 _lh_showMove_LH_P2_0_5) _lh_showMove_MoveInFull_1_5))
                  else
                    (`LH_N))) (((maybe__d1_d4 (`LH_C('-', (`LH_N)))) (fun cp_5 -> 
                    ((mappend__d1_d2_d2 ((mappend__d1_d2_d3 (`LH_C('x', (`LH_N)))) (showPiece__d2_d2 cp_5))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_5))) ((showSquare__d1_d5 _lh_showMove_LH_P2_0_5) _lh_showMove_Move_0_5))) (((maybe__d1_d5 (`LH_N)) (fun pp_5 -> 
                    ((mappend__d1_d2_d4 ((mappend__d1_d2_d5 (`LH_C('(', (`LH_N)))) (showPiece__d2_d3 pp_5))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_5))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d8 _lh_showMove_arg1_1_5 _lh_showMove_arg2_1_5 =
  (match _lh_showMove_arg2_1_5 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_1_5, _lh_showMove_MoveInFull_1_1_5, _lh_showMove_MoveInFull_2_1_5) -> 
      (match _lh_showMove_MoveInFull_0_1_5 with
        | `LH_P2(_lh_showMove_LH_P2_0_1_5, _lh_showMove_LH_P2_1_1_5) -> 
          (match _lh_showMove_MoveInFull_2_1_5 with
            | `Move(_lh_showMove_Move_0_1_5, _lh_showMove_Move_1_1_5, _lh_showMove_Move_2_1_5) -> 
              (let rec capt_1_5 = (_lh_showMove_Move_1_1_5 <> (`Nothing)) in
                (let rec prom_1_5 = (_lh_showMove_Move_2_1_5 <> (`Nothing)) in
                  ((mappend__d1_d3_d4 ((mappend__d1_d3_d5 ((mappend__d1_d3_d6 (if _lh_showMove_arg1_1_5 then
                    ((mappend__d1_d3_d7 ((mappend__d1_d3_d8 (showPiece__d2_d4 (`LH_P2(_lh_showMove_LH_P2_0_1_5, _lh_showMove_LH_P2_1_1_5)))) (if ((_lh_showMove_LH_P2_1_1_5 = (`King)) || ((_lh_showMove_LH_P2_1_1_5 = (`Pawn)) && (not (capt_1_5 || prom_1_5)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d1_d6 _lh_showMove_LH_P2_0_1_5) _lh_showMove_MoveInFull_1_1_5))
                  else
                    (`LH_N))) (((maybe__d1_d6 (`LH_C('-', (`LH_N)))) (fun cp_1_5 -> 
                    ((mappend__d1_d3_d9 ((mappend__d1_d4_d0 (`LH_C('x', (`LH_N)))) (showPiece__d2_d5 cp_1_5))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_1_5))) ((showSquare__d1_d7 _lh_showMove_LH_P2_0_1_5) _lh_showMove_Move_0_1_5))) (((maybe__d1_d7 (`LH_N)) (fun pp_1_5 -> 
                    ((mappend__d1_d4_d1 ((mappend__d1_d4_d2 (`LH_C('(', (`LH_N)))) (showPiece__d2_d6 pp_1_5))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_1_5))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMove__d9 _lh_showMove_arg1_9 _lh_showMove_arg2_9 =
  (match _lh_showMove_arg2_9 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_9, _lh_showMove_MoveInFull_1_9, _lh_showMove_MoveInFull_2_9) -> 
      (match _lh_showMove_MoveInFull_0_9 with
        | `LH_P2(_lh_showMove_LH_P2_0_9, _lh_showMove_LH_P2_1_9) -> 
          (match _lh_showMove_MoveInFull_2_9 with
            | `Move(_lh_showMove_Move_0_9, _lh_showMove_Move_1_9, _lh_showMove_Move_2_9) -> 
              (let rec capt_9 = (_lh_showMove_Move_1_9 <> (`Nothing)) in
                (let rec prom_9 = (_lh_showMove_Move_2_9 <> (`Nothing)) in
                  ((mappend__d1_d4_d7 ((mappend__d1_d4_d8 ((mappend__d1_d4_d9 (if _lh_showMove_arg1_9 then
                    ((mappend__d1_d5_d0 ((mappend__d1_d5_d1 (showPiece__d2_d7 (`LH_P2(_lh_showMove_LH_P2_0_9, _lh_showMove_LH_P2_1_9)))) (if ((_lh_showMove_LH_P2_1_9 = (`King)) || ((_lh_showMove_LH_P2_1_9 = (`Pawn)) && (not (capt_9 || prom_9)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare__d1_d8 _lh_showMove_LH_P2_0_9) _lh_showMove_MoveInFull_1_9))
                  else
                    (`LH_N))) (((maybe__d1_d8 (`LH_C('-', (`LH_N)))) (fun cp_9 -> 
                    ((mappend__d1_d5_d2 ((mappend__d1_d5_d3 (`LH_C('x', (`LH_N)))) (showPiece__d2_d8 cp_9))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_9))) ((showSquare__d1_d9 _lh_showMove_LH_P2_0_9) _lh_showMove_Move_0_9))) (((maybe__d1_d9 (`LH_N)) (fun pp_9 -> 
                    ((mappend__d1_d5_d4 ((mappend__d1_d5_d5 (`LH_C('(', (`LH_N)))) (showPiece__d2_d9 pp_9))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_9))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showMovesAfter__d0 _lh_showMovesAfter_arg1_6 _lh_showMovesAfter_arg2_6 =
  (match _lh_showMovesAfter_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_showMovesAfter_arg1_6 with
        | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_1_2, _lh_showMovesAfter_MoveInFull_1_1_2, _lh_showMovesAfter_MoveInFull_2_1_2) -> 
          (match _lh_showMovesAfter_arg2_6 with
            | `LH_C(_lh_showMovesAfter_LH_C_0_6, _lh_showMovesAfter_LH_C_1_6) -> 
              (match _lh_showMovesAfter_LH_C_0_6 with
                | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_1_3, _lh_showMovesAfter_MoveInFull_1_1_3, _lh_showMovesAfter_MoveInFull_2_1_3) -> 
                  ((mappend__d4_d2 ((mappend__d4_d3 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) ((showMove__d2 ((_lh_showMovesAfter_MoveInFull_0_1_3 <> _lh_showMovesAfter_MoveInFull_0_1_2) || (_lh_showMovesAfter_MoveInFull_1_1_3 <> _lh_showMovesAfter_MoveInFull_1_1_2))) (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_1_3, _lh_showMovesAfter_MoveInFull_1_1_3, _lh_showMovesAfter_MoveInFull_2_1_3))))) ((showMovesAfter__d0 (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_1_3, _lh_showMovesAfter_MoveInFull_1_1_3, _lh_showMovesAfter_MoveInFull_2_1_3))) _lh_showMovesAfter_LH_C_1_6))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and showMovesAfter__d1 _lh_showMovesAfter_arg1_2 _lh_showMovesAfter_arg2_2 =
  (match _lh_showMovesAfter_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_showMovesAfter_arg1_2 with
        | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_4, _lh_showMovesAfter_MoveInFull_1_4, _lh_showMovesAfter_MoveInFull_2_4) -> 
          (match _lh_showMovesAfter_arg2_2 with
            | `LH_C(_lh_showMovesAfter_LH_C_0_2, _lh_showMovesAfter_LH_C_1_2) -> 
              (match _lh_showMovesAfter_LH_C_0_2 with
                | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_5, _lh_showMovesAfter_MoveInFull_1_5, _lh_showMovesAfter_MoveInFull_2_5) -> 
                  ((mappend__d7_d2 ((mappend__d7_d3 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) ((showMove__d4 ((_lh_showMovesAfter_MoveInFull_0_5 <> _lh_showMovesAfter_MoveInFull_0_4) || (_lh_showMovesAfter_MoveInFull_1_5 <> _lh_showMovesAfter_MoveInFull_1_4))) (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_5, _lh_showMovesAfter_MoveInFull_1_5, _lh_showMovesAfter_MoveInFull_2_5))))) ((showMovesAfter__d1 (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_5, _lh_showMovesAfter_MoveInFull_1_5, _lh_showMovesAfter_MoveInFull_2_5))) _lh_showMovesAfter_LH_C_1_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and showMovesAfter__d2 _lh_showMovesAfter_arg1_3 _lh_showMovesAfter_arg2_3 =
  (match _lh_showMovesAfter_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_showMovesAfter_arg1_3 with
        | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_6, _lh_showMovesAfter_MoveInFull_1_6, _lh_showMovesAfter_MoveInFull_2_6) -> 
          (match _lh_showMovesAfter_arg2_3 with
            | `LH_C(_lh_showMovesAfter_LH_C_0_3, _lh_showMovesAfter_LH_C_1_3) -> 
              (match _lh_showMovesAfter_LH_C_0_3 with
                | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_7, _lh_showMovesAfter_MoveInFull_1_7, _lh_showMovesAfter_MoveInFull_2_7) -> 
                  ((mappend__d1_d1_d5 ((mappend__d1_d1_d6 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) ((showMove__d7 ((_lh_showMovesAfter_MoveInFull_0_7 <> _lh_showMovesAfter_MoveInFull_0_6) || (_lh_showMovesAfter_MoveInFull_1_7 <> _lh_showMovesAfter_MoveInFull_1_6))) (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_7, _lh_showMovesAfter_MoveInFull_1_7, _lh_showMovesAfter_MoveInFull_2_7))))) ((showMovesAfter__d2 (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_7, _lh_showMovesAfter_MoveInFull_1_7, _lh_showMovesAfter_MoveInFull_2_7))) _lh_showMovesAfter_LH_C_1_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and showMovesAfter__d3 _lh_showMovesAfter_arg1_4 _lh_showMovesAfter_arg2_4 =
  (match _lh_showMovesAfter_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_showMovesAfter_arg1_4 with
        | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_8, _lh_showMovesAfter_MoveInFull_1_8, _lh_showMovesAfter_MoveInFull_2_8) -> 
          (match _lh_showMovesAfter_arg2_4 with
            | `LH_C(_lh_showMovesAfter_LH_C_0_4, _lh_showMovesAfter_LH_C_1_4) -> 
              (match _lh_showMovesAfter_LH_C_0_4 with
                | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_9, _lh_showMovesAfter_MoveInFull_1_9, _lh_showMovesAfter_MoveInFull_2_9) -> 
                  ((mappend__d1_d4_d5 ((mappend__d1_d4_d6 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) ((showMove__d9 ((_lh_showMovesAfter_MoveInFull_0_9 <> _lh_showMovesAfter_MoveInFull_0_8) || (_lh_showMovesAfter_MoveInFull_1_9 <> _lh_showMovesAfter_MoveInFull_1_8))) (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_9, _lh_showMovesAfter_MoveInFull_1_9, _lh_showMovesAfter_MoveInFull_2_9))))) ((showMovesAfter__d3 (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_9, _lh_showMovesAfter_MoveInFull_1_9, _lh_showMovesAfter_MoveInFull_2_9))) _lh_showMovesAfter_LH_C_1_4))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and showMovesAfter__d4 _lh_showMovesAfter_arg1_5 _lh_showMovesAfter_arg2_5 =
  (match _lh_showMovesAfter_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_showMovesAfter_arg1_5 with
        | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_1_0, _lh_showMovesAfter_MoveInFull_1_1_0, _lh_showMovesAfter_MoveInFull_2_1_0) -> 
          (match _lh_showMovesAfter_arg2_5 with
            | `LH_C(_lh_showMovesAfter_LH_C_0_5, _lh_showMovesAfter_LH_C_1_5) -> 
              (match _lh_showMovesAfter_LH_C_0_5 with
                | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_1_1, _lh_showMovesAfter_MoveInFull_1_1_1, _lh_showMovesAfter_MoveInFull_2_1_1) -> 
                  ((mappend__d1_d8_d8 ((mappend__d1_d8_d9 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) ((showMove__d1_d2 ((_lh_showMovesAfter_MoveInFull_0_1_1 <> _lh_showMovesAfter_MoveInFull_0_1_0) || (_lh_showMovesAfter_MoveInFull_1_1_1 <> _lh_showMovesAfter_MoveInFull_1_1_0))) (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_1_1, _lh_showMovesAfter_MoveInFull_1_1_1, _lh_showMovesAfter_MoveInFull_2_1_1))))) ((showMovesAfter__d4 (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_1_1, _lh_showMovesAfter_MoveInFull_1_1_1, _lh_showMovesAfter_MoveInFull_2_1_1))) _lh_showMovesAfter_LH_C_1_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and showMovesAfter__d5 _lh_showMovesAfter_arg1_1 _lh_showMovesAfter_arg2_1 =
  (match _lh_showMovesAfter_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_showMovesAfter_arg1_1 with
        | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_2, _lh_showMovesAfter_MoveInFull_1_2, _lh_showMovesAfter_MoveInFull_2_2) -> 
          (match _lh_showMovesAfter_arg2_1 with
            | `LH_C(_lh_showMovesAfter_LH_C_0_1, _lh_showMovesAfter_LH_C_1_1) -> 
              (match _lh_showMovesAfter_LH_C_0_1 with
                | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_3, _lh_showMovesAfter_MoveInFull_1_3, _lh_showMovesAfter_MoveInFull_2_3) -> 
                  ((mappend__d2_d1_d8 ((mappend__d2_d1_d9 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) ((showMove__d1_d4 ((_lh_showMovesAfter_MoveInFull_0_3 <> _lh_showMovesAfter_MoveInFull_0_2) || (_lh_showMovesAfter_MoveInFull_1_3 <> _lh_showMovesAfter_MoveInFull_1_2))) (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_3, _lh_showMovesAfter_MoveInFull_1_3, _lh_showMovesAfter_MoveInFull_2_3))))) ((showMovesAfter__d5 (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_3, _lh_showMovesAfter_MoveInFull_1_3, _lh_showMovesAfter_MoveInFull_2_3))) _lh_showMovesAfter_LH_C_1_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and showMoves__d0 _lh_showMoves_arg1_6 =
  (match _lh_showMoves_arg1_6 with
    | `LH_C(_lh_showMoves_LH_C_0_6, _lh_showMoves_LH_C_1_6) -> 
      ((mappend__d3_d0 (showMoveInFull__d1 _lh_showMoves_LH_C_0_6)) ((showMovesAfter__d0 _lh_showMoves_LH_C_0_6) _lh_showMoves_LH_C_1_6))
    | _ -> 
      (failwith "error"))
and showMoves__d1 _lh_showMoves_arg1_5 =
  (match _lh_showMoves_arg1_5 with
    | `LH_C(_lh_showMoves_LH_C_0_5, _lh_showMoves_LH_C_1_5) -> 
      ((mappend__d6_d0 (showMoveInFull__d2 _lh_showMoves_LH_C_0_5)) ((showMovesAfter__d1 _lh_showMoves_LH_C_0_5) _lh_showMoves_LH_C_1_5))
    | _ -> 
      (failwith "error"))
and showMoves__d2 _lh_showMoves_arg1_3 =
  (match _lh_showMoves_arg1_3 with
    | `LH_C(_lh_showMoves_LH_C_0_3, _lh_showMoves_LH_C_1_3) -> 
      ((mappend__d1_d0_d3 (showMoveInFull__d4 _lh_showMoves_LH_C_0_3)) ((showMovesAfter__d2 _lh_showMoves_LH_C_0_3) _lh_showMoves_LH_C_1_3))
    | _ -> 
      (failwith "error"))
and showMoves__d3 _lh_showMoves_arg1_2 =
  (match _lh_showMoves_arg1_2 with
    | `LH_C(_lh_showMoves_LH_C_0_2, _lh_showMoves_LH_C_1_2) -> 
      ((mappend__d1_d3_d3 (showMoveInFull__d5 _lh_showMoves_LH_C_0_2)) ((showMovesAfter__d3 _lh_showMoves_LH_C_0_2) _lh_showMoves_LH_C_1_2))
    | _ -> 
      (failwith "error"))
and showMoves__d4 _lh_showMoves_arg1_4 =
  (match _lh_showMoves_arg1_4 with
    | `LH_C(_lh_showMoves_LH_C_0_4, _lh_showMoves_LH_C_1_4) -> 
      ((mappend__d1_d7_d6 (showMoveInFull__d7 _lh_showMoves_LH_C_0_4)) ((showMovesAfter__d4 _lh_showMoves_LH_C_0_4) _lh_showMoves_LH_C_1_4))
    | _ -> 
      (failwith "error"))
and showMoves__d5 _lh_showMoves_arg1_1 =
  (match _lh_showMoves_arg1_1 with
    | `LH_C(_lh_showMoves_LH_C_0_1, _lh_showMoves_LH_C_1_1) -> 
      ((mappend__d2_d0_d6 (showMoveInFull__d8 _lh_showMoves_LH_C_0_1)) ((showMovesAfter__d5 _lh_showMoves_LH_C_0_1) _lh_showMoves_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and showPiece__d0 _lh_showPiece_arg1_6 =
  (match _lh_showPiece_arg1_6 with
    | `LH_P2(_lh_showPiece_LH_P2_0_6, _lh_showPiece_LH_P2_1_6) -> 
      (`LH_C((kindToChar__d2 _lh_showPiece_LH_P2_1_6), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1 _lh_showPiece_arg1_5 =
  (match _lh_showPiece_arg1_5 with
    | `LH_P2(_lh_showPiece_LH_P2_0_5, _lh_showPiece_LH_P2_1_5) -> 
      (`LH_C((kindToChar__d3 _lh_showPiece_LH_P2_1_5), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d0 _lh_showPiece_arg1_1_1 =
  (match _lh_showPiece_arg1_1_1 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_1, _lh_showPiece_LH_P2_1_1_1) -> 
      (`LH_C((kindToChar__d1_d2 _lh_showPiece_LH_P2_1_1_1), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d1 _lh_showPiece_arg1_3_4 =
  (match _lh_showPiece_arg1_3_4 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_4, _lh_showPiece_LH_P2_1_3_4) -> 
      (`LH_C((kindToChar__d1_d3 _lh_showPiece_LH_P2_1_3_4), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d2 _lh_showPiece_arg1_2_3 =
  (match _lh_showPiece_arg1_2_3 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_3, _lh_showPiece_LH_P2_1_2_3) -> 
      (`LH_C((kindToChar__d1_d4 _lh_showPiece_LH_P2_1_2_3), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d3 _lh_showPiece_arg1_2_9 =
  (match _lh_showPiece_arg1_2_9 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_9, _lh_showPiece_LH_P2_1_2_9) -> 
      (`LH_C((kindToChar__d1_d5 _lh_showPiece_LH_P2_1_2_9), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d4 _lh_showPiece_arg1_1_2 =
  (match _lh_showPiece_arg1_1_2 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_2, _lh_showPiece_LH_P2_1_1_2) -> 
      (`LH_C((kindToChar__d1_d6 _lh_showPiece_LH_P2_1_1_2), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d5 _lh_showPiece_arg1_2_1 =
  (match _lh_showPiece_arg1_2_1 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_1, _lh_showPiece_LH_P2_1_2_1) -> 
      (`LH_C((kindToChar__d1_d7 _lh_showPiece_LH_P2_1_2_1), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d6 _lh_showPiece_arg1_2 =
  (match _lh_showPiece_arg1_2 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2, _lh_showPiece_LH_P2_1_2) -> 
      (`LH_C((kindToChar__d1_d8 _lh_showPiece_LH_P2_1_2), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d7 _lh_showPiece_arg1_2_4 =
  (match _lh_showPiece_arg1_2_4 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_4, _lh_showPiece_LH_P2_1_2_4) -> 
      (`LH_C((kindToChar__d1_d9 _lh_showPiece_LH_P2_1_2_4), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d8 _lh_showPiece_arg1_2_2 =
  (match _lh_showPiece_arg1_2_2 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_2, _lh_showPiece_LH_P2_1_2_2) -> 
      (`LH_C((kindToChar__d2_d0 _lh_showPiece_LH_P2_1_2_2), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d1_d9 _lh_showPiece_arg1_4_3 =
  (match _lh_showPiece_arg1_4_3 with
    | `LH_P2(_lh_showPiece_LH_P2_0_4_3, _lh_showPiece_LH_P2_1_4_3) -> 
      (`LH_C((kindToChar__d2_d1 _lh_showPiece_LH_P2_1_4_3), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2 _lh_showPiece_arg1_9 =
  (match _lh_showPiece_arg1_9 with
    | `LH_P2(_lh_showPiece_LH_P2_0_9, _lh_showPiece_LH_P2_1_9) -> 
      (`LH_C((kindToChar__d4 _lh_showPiece_LH_P2_1_9), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d0 _lh_showPiece_arg1_4_4 =
  (match _lh_showPiece_arg1_4_4 with
    | `LH_P2(_lh_showPiece_LH_P2_0_4_4, _lh_showPiece_LH_P2_1_4_4) -> 
      (`LH_C((kindToChar__d2_d2 _lh_showPiece_LH_P2_1_4_4), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d1 _lh_showPiece_arg1_1_7 =
  (match _lh_showPiece_arg1_1_7 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_7, _lh_showPiece_LH_P2_1_1_7) -> 
      (`LH_C((kindToChar__d2_d3 _lh_showPiece_LH_P2_1_1_7), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d2 _lh_showPiece_arg1_1_3 =
  (match _lh_showPiece_arg1_1_3 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_3, _lh_showPiece_LH_P2_1_1_3) -> 
      (`LH_C((kindToChar__d2_d4 _lh_showPiece_LH_P2_1_1_3), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d3 _lh_showPiece_arg1_2_0 =
  (match _lh_showPiece_arg1_2_0 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_0, _lh_showPiece_LH_P2_1_2_0) -> 
      (`LH_C((kindToChar__d2_d5 _lh_showPiece_LH_P2_1_2_0), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d4 _lh_showPiece_arg1_3 =
  (match _lh_showPiece_arg1_3 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3, _lh_showPiece_LH_P2_1_3) -> 
      (`LH_C((kindToChar__d2_d6 _lh_showPiece_LH_P2_1_3), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d5 _lh_showPiece_arg1_3_3 =
  (match _lh_showPiece_arg1_3_3 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_3, _lh_showPiece_LH_P2_1_3_3) -> 
      (`LH_C((kindToChar__d2_d7 _lh_showPiece_LH_P2_1_3_3), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d6 _lh_showPiece_arg1_3_1 =
  (match _lh_showPiece_arg1_3_1 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_1, _lh_showPiece_LH_P2_1_3_1) -> 
      (`LH_C((kindToChar__d2_d8 _lh_showPiece_LH_P2_1_3_1), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d7 _lh_showPiece_arg1_4 =
  (match _lh_showPiece_arg1_4 with
    | `LH_P2(_lh_showPiece_LH_P2_0_4, _lh_showPiece_LH_P2_1_4) -> 
      (`LH_C((kindToChar__d2_d9 _lh_showPiece_LH_P2_1_4), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d8 _lh_showPiece_arg1_1_9 =
  (match _lh_showPiece_arg1_1_9 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_9, _lh_showPiece_LH_P2_1_1_9) -> 
      (`LH_C((kindToChar__d3_d0 _lh_showPiece_LH_P2_1_1_9), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d2_d9 _lh_showPiece_arg1_3_9 =
  (match _lh_showPiece_arg1_3_9 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_9, _lh_showPiece_LH_P2_1_3_9) -> 
      (`LH_C((kindToChar__d3_d1 _lh_showPiece_LH_P2_1_3_9), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3 _lh_showPiece_arg1_3_2 =
  (match _lh_showPiece_arg1_3_2 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_2, _lh_showPiece_LH_P2_1_3_2) -> 
      (`LH_C((kindToChar__d5 _lh_showPiece_LH_P2_1_3_2), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d0 _lh_showPiece_arg1_1_6 =
  (match _lh_showPiece_arg1_1_6 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_6, _lh_showPiece_LH_P2_1_1_6) -> 
      (`LH_C((kindToChar__d3_d2 _lh_showPiece_LH_P2_1_1_6), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d1 _lh_showPiece_arg1_2_5 =
  (match _lh_showPiece_arg1_2_5 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_5, _lh_showPiece_LH_P2_1_2_5) -> 
      (`LH_C((kindToChar__d3_d3 _lh_showPiece_LH_P2_1_2_5), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d2 _lh_showPiece_arg1_2_7 =
  (match _lh_showPiece_arg1_2_7 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_7, _lh_showPiece_LH_P2_1_2_7) -> 
      (`LH_C((kindToChar__d3_d4 _lh_showPiece_LH_P2_1_2_7), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d3 _lh_showPiece_arg1_4_5 =
  (match _lh_showPiece_arg1_4_5 with
    | `LH_P2(_lh_showPiece_LH_P2_0_4_5, _lh_showPiece_LH_P2_1_4_5) -> 
      (`LH_C((kindToChar__d3_d5 _lh_showPiece_LH_P2_1_4_5), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d4 _lh_showPiece_arg1_4_0 =
  (match _lh_showPiece_arg1_4_0 with
    | `LH_P2(_lh_showPiece_LH_P2_0_4_0, _lh_showPiece_LH_P2_1_4_0) -> 
      (`LH_C((kindToChar__d3_d6 _lh_showPiece_LH_P2_1_4_0), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d5 _lh_showPiece_arg1_3_6 =
  (match _lh_showPiece_arg1_3_6 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_6, _lh_showPiece_LH_P2_1_3_6) -> 
      (`LH_C((kindToChar__d3_d7 _lh_showPiece_LH_P2_1_3_6), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d6 _lh_showPiece_arg1_1 =
  (match _lh_showPiece_arg1_1 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1, _lh_showPiece_LH_P2_1_1) -> 
      (`LH_C((kindToChar__d3_d8 _lh_showPiece_LH_P2_1_1), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d7 _lh_showPiece_arg1_3_0 =
  (match _lh_showPiece_arg1_3_0 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_0, _lh_showPiece_LH_P2_1_3_0) -> 
      (`LH_C((kindToChar__d3_d9 _lh_showPiece_LH_P2_1_3_0), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d8 _lh_showPiece_arg1_2_8 =
  (match _lh_showPiece_arg1_2_8 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_8, _lh_showPiece_LH_P2_1_2_8) -> 
      (`LH_C((kindToChar__d4_d0 _lh_showPiece_LH_P2_1_2_8), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d3_d9 _lh_showPiece_arg1_1_5 =
  (match _lh_showPiece_arg1_1_5 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_5, _lh_showPiece_LH_P2_1_1_5) -> 
      (`LH_C((kindToChar__d4_d1 _lh_showPiece_LH_P2_1_1_5), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d4 _lh_showPiece_arg1_1_4 =
  (match _lh_showPiece_arg1_1_4 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_4, _lh_showPiece_LH_P2_1_1_4) -> 
      (`LH_C((kindToChar__d6 _lh_showPiece_LH_P2_1_1_4), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d4_d0 _lh_showPiece_arg1_7 =
  (match _lh_showPiece_arg1_7 with
    | `LH_P2(_lh_showPiece_LH_P2_0_7, _lh_showPiece_LH_P2_1_7) -> 
      (`LH_C((kindToChar__d4_d2 _lh_showPiece_LH_P2_1_7), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d4_d1 _lh_showPiece_arg1_8 =
  (match _lh_showPiece_arg1_8 with
    | `LH_P2(_lh_showPiece_LH_P2_0_8, _lh_showPiece_LH_P2_1_8) -> 
      (`LH_C((kindToChar__d4_d3 _lh_showPiece_LH_P2_1_8), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d4_d2 _lh_showPiece_arg1_1_0 =
  (match _lh_showPiece_arg1_1_0 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_0, _lh_showPiece_LH_P2_1_1_0) -> 
      (`LH_C((kindToChar__d4_d4 _lh_showPiece_LH_P2_1_1_0), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d4_d3 _lh_showPiece_arg1_4_2 =
  (match _lh_showPiece_arg1_4_2 with
    | `LH_P2(_lh_showPiece_LH_P2_0_4_2, _lh_showPiece_LH_P2_1_4_2) -> 
      (`LH_C((kindToChar__d4_d5 _lh_showPiece_LH_P2_1_4_2), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d4_d4 _lh_showPiece_arg1_3_7 =
  (match _lh_showPiece_arg1_3_7 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_7, _lh_showPiece_LH_P2_1_3_7) -> 
      (`LH_C((kindToChar__d4_d6 _lh_showPiece_LH_P2_1_3_7), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d5 _lh_showPiece_arg1_2_6 =
  (match _lh_showPiece_arg1_2_6 with
    | `LH_P2(_lh_showPiece_LH_P2_0_2_6, _lh_showPiece_LH_P2_1_2_6) -> 
      (`LH_C((kindToChar__d7 _lh_showPiece_LH_P2_1_2_6), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d6 _lh_showPiece_arg1_1_8 =
  (match _lh_showPiece_arg1_1_8 with
    | `LH_P2(_lh_showPiece_LH_P2_0_1_8, _lh_showPiece_LH_P2_1_1_8) -> 
      (`LH_C((kindToChar__d8 _lh_showPiece_LH_P2_1_1_8), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d7 _lh_showPiece_arg1_4_1 =
  (match _lh_showPiece_arg1_4_1 with
    | `LH_P2(_lh_showPiece_LH_P2_0_4_1, _lh_showPiece_LH_P2_1_4_1) -> 
      (`LH_C((kindToChar__d9 _lh_showPiece_LH_P2_1_4_1), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d8 _lh_showPiece_arg1_3_8 =
  (match _lh_showPiece_arg1_3_8 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_8, _lh_showPiece_LH_P2_1_3_8) -> 
      (`LH_C((kindToChar__d1_d0 _lh_showPiece_LH_P2_1_3_8), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showPiece__d9 _lh_showPiece_arg1_3_5 =
  (match _lh_showPiece_arg1_3_5 with
    | `LH_P2(_lh_showPiece_LH_P2_0_3_5, _lh_showPiece_LH_P2_1_3_5) -> 
      (`LH_C((kindToChar__d1_d1 _lh_showPiece_LH_P2_1_3_5), (`LH_N)))
    | _ -> 
      (failwith "error"))
and showReplies__d0 _lh_showReplies_arg1_2 _lh_showReplies_arg2_2 =
  (match _lh_showReplies_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_2, _lh_showReplies_LH_C_1_2) -> 
      (match _lh_showReplies_LH_C_0_2 with
        | `LH_P2(_lh_showReplies_LH_P2_0_2, _lh_showReplies_LH_P2_1_2) -> 
          ((mappend__d5_d5 ((mappend__d5_d6 ((mappend__d5_d7 ((mappend__d5_d8 ((mappend__d5_d9 (tab__d0 _lh_showReplies_arg2_2)) (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_N))))))))) (if ((null__d0 _lh_showReplies_LH_C_1_2) && ((length__d1 _lh_showReplies_LH_P2_0_2) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves__d1 _lh_showReplies_LH_P2_0_2)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln__d0 _lh_showReplies_LH_P2_1_2) (_lh_showReplies_arg2_2 + 1)))) ((showReplies__d0 _lh_showReplies_LH_C_1_2) _lh_showReplies_arg2_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showReplies__d1 _lh_showReplies_arg1_3 _lh_showReplies_arg2_3 =
  (match _lh_showReplies_arg1_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_3, _lh_showReplies_LH_C_1_3) -> 
      (match _lh_showReplies_LH_C_0_3 with
        | `LH_P2(_lh_showReplies_LH_P2_0_3, _lh_showReplies_LH_P2_1_3) -> 
          ((mappend__d1_d2_d8 ((mappend__d1_d2_d9 ((mappend__d1_d3_d0 ((mappend__d1_d3_d1 ((mappend__d1_d3_d2 (tab__d1 _lh_showReplies_arg2_3)) (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_N))))))))) (if ((null__d1 _lh_showReplies_LH_C_1_3) && ((length__d5 _lh_showReplies_LH_P2_0_3) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves__d3 _lh_showReplies_LH_P2_0_3)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln__d1 _lh_showReplies_LH_P2_1_3) (_lh_showReplies_arg2_3 + 1)))) ((showReplies__d1 _lh_showReplies_LH_C_1_3) _lh_showReplies_arg2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showReplies__d2 _lh_showReplies_arg1_1 _lh_showReplies_arg2_1 =
  (match _lh_showReplies_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_1, _lh_showReplies_LH_C_1_1) -> 
      (match _lh_showReplies_LH_C_0_1 with
        | `LH_P2(_lh_showReplies_LH_P2_0_1, _lh_showReplies_LH_P2_1_1) -> 
          ((mappend__d2_d0_d1 ((mappend__d2_d0_d2 ((mappend__d2_d0_d3 ((mappend__d2_d0_d4 ((mappend__d2_d0_d5 (tab__d2 _lh_showReplies_arg2_1)) (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_N))))))))) (if ((null__d2 _lh_showReplies_LH_C_1_1) && ((length__d9 _lh_showReplies_LH_P2_0_1) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves__d5 _lh_showReplies_LH_P2_0_1)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln__d2 _lh_showReplies_LH_P2_1_1) (_lh_showReplies_arg2_1 + 1)))) ((showReplies__d2 _lh_showReplies_LH_C_1_1) _lh_showReplies_arg2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showResult__d0 _lh_showResult_arg1_1 =
  (match _lh_showResult_arg1_1 with
    | `Nothing -> 
      (`LH_C('N', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('!', (`LH_N)))))))))))))))))))))))))
    | `Just(_lh_showResult_Just_0_1) -> 
      ((showSoln__d2 (compact__d0 _lh_showResult_Just_0_1)) 1)
    | _ -> 
      (failwith "error"))
and showSoln__d0 _lh_showSoln_arg1_2 _lh_showSoln_arg2_2 =
  (match _lh_showSoln_arg1_2 with
    | `Soln(_lh_showSoln_Soln_0_2, _lh_showSoln_Soln_1_2) -> 
      ((mappend__d1_d2 ((mappend__d1_d3 ((mappend__d1_d4 (string_of_int _lh_showSoln_arg2_2)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) (showMoveInFull__d0 _lh_showSoln_Soln_0_2))) (let rec _lh_matchIdent_2_3_8 = _lh_showSoln_Soln_1_2 in
        (match _lh_matchIdent_2_3_8 with
          | `LH_N -> 
            (`LH_C('+', (`LH_C('+', (`LH_C('|', (`LH_N)))))))
          | `LH_C(_lh_showSoln_LH_C_0_2, _lh_showSoln_LH_C_1_2) -> 
            (match _lh_showSoln_LH_C_0_2 with
              | `LH_P2(_lh_showSoln_LH_P2_0_2, _lh_showSoln_LH_P2_1_2) -> 
                (match _lh_showSoln_LH_C_1_2 with
                  | `LH_N -> 
                    ((mappend__d1_d6 ((mappend__d1_d7 ((mappend__d1_d8 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) (if ((length__d0 _lh_showSoln_LH_P2_0_2) > 1) then
                      (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))
                    else
                      (showMoves__d0 _lh_showSoln_LH_P2_0_2)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln__d0 _lh_showSoln_LH_P2_1_2) (_lh_showSoln_arg2_2 + 1)))
                  | _ -> 
                    ((mappend__d1_d5 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies__d0 (sort__d0 _lh_showSoln_Soln_1_2)) _lh_showSoln_arg2_2)))
              | _ -> 
                ((mappend__d1_d5 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies__d0 (sort__d0 _lh_showSoln_Soln_1_2)) _lh_showSoln_arg2_2)))
          | _ -> 
            ((mappend__d1_d5 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies__d0 (sort__d0 _lh_showSoln_Soln_1_2)) _lh_showSoln_arg2_2)))))
    | _ -> 
      (failwith "error"))
and showSoln__d1 _lh_showSoln_arg1_1 _lh_showSoln_arg2_1 =
  (match _lh_showSoln_arg1_1 with
    | `Soln(_lh_showSoln_Soln_0_1, _lh_showSoln_Soln_1_1) -> 
      ((mappend__d8_d5 ((mappend__d8_d6 ((mappend__d8_d7 (string_of_int _lh_showSoln_arg2_1)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) (showMoveInFull__d3 _lh_showSoln_Soln_0_1))) (let rec _lh_matchIdent_1_6_6 = _lh_showSoln_Soln_1_1 in
        (match _lh_matchIdent_1_6_6 with
          | `LH_N -> 
            (`LH_C('+', (`LH_C('+', (`LH_C('|', (`LH_N)))))))
          | `LH_C(_lh_showSoln_LH_C_0_1, _lh_showSoln_LH_C_1_1) -> 
            (match _lh_showSoln_LH_C_0_1 with
              | `LH_P2(_lh_showSoln_LH_P2_0_1, _lh_showSoln_LH_P2_1_1) -> 
                (match _lh_showSoln_LH_C_1_1 with
                  | `LH_N -> 
                    ((mappend__d8_d9 ((mappend__d9_d0 ((mappend__d9_d1 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) (if ((length__d4 _lh_showSoln_LH_P2_0_1) > 1) then
                      (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))
                    else
                      (showMoves__d2 _lh_showSoln_LH_P2_0_1)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln__d1 _lh_showSoln_LH_P2_1_1) (_lh_showSoln_arg2_1 + 1)))
                  | _ -> 
                    ((mappend__d8_d8 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies__d1 (sort__d1 _lh_showSoln_Soln_1_1)) _lh_showSoln_arg2_1)))
              | _ -> 
                ((mappend__d8_d8 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies__d1 (sort__d1 _lh_showSoln_Soln_1_1)) _lh_showSoln_arg2_1)))
          | _ -> 
            ((mappend__d8_d8 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies__d1 (sort__d1 _lh_showSoln_Soln_1_1)) _lh_showSoln_arg2_1)))))
    | _ -> 
      (failwith "error"))
and showSoln__d2 _lh_showSoln_arg1_3 _lh_showSoln_arg2_3 =
  (match _lh_showSoln_arg1_3 with
    | `Soln(_lh_showSoln_Soln_0_3, _lh_showSoln_Soln_1_3) -> 
      ((mappend__d1_d5_d8 ((mappend__d1_d5_d9 ((mappend__d1_d6_d0 (string_of_int _lh_showSoln_arg2_3)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) (showMoveInFull__d6 _lh_showSoln_Soln_0_3))) (let rec _lh_matchIdent_2_8_8 = _lh_showSoln_Soln_1_3 in
        (match _lh_matchIdent_2_8_8 with
          | `LH_N -> 
            (`LH_C('+', (`LH_C('+', (`LH_C('|', (`LH_N)))))))
          | `LH_C(_lh_showSoln_LH_C_0_3, _lh_showSoln_LH_C_1_3) -> 
            (match _lh_showSoln_LH_C_0_3 with
              | `LH_P2(_lh_showSoln_LH_P2_0_3, _lh_showSoln_LH_P2_1_3) -> 
                (match _lh_showSoln_LH_C_1_3 with
                  | `LH_N -> 
                    ((mappend__d1_d6_d2 ((mappend__d1_d6_d3 ((mappend__d1_d6_d4 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) (if ((length__d8 _lh_showSoln_LH_P2_0_3) > 1) then
                      (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))
                    else
                      (showMoves__d4 _lh_showSoln_LH_P2_0_3)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln__d2 _lh_showSoln_LH_P2_1_3) (_lh_showSoln_arg2_3 + 1)))
                  | _ -> 
                    ((mappend__d1_d6_d1 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies__d2 (sort__d2 _lh_showSoln_Soln_1_3)) _lh_showSoln_arg2_3)))
              | _ -> 
                ((mappend__d1_d6_d1 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies__d2 (sort__d2 _lh_showSoln_Soln_1_3)) _lh_showSoln_arg2_3)))
          | _ -> 
            ((mappend__d1_d6_d1 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies__d2 (sort__d2 _lh_showSoln_Soln_1_3)) _lh_showSoln_arg2_3)))))
    | _ -> 
      (failwith "error"))
and showSquare__d0 _lh_showSquare_arg1_6 _lh_showSquare_arg2_6 =
  (match _lh_showSquare_arg2_6 with
    | `LH_P2(_lh_showSquare_LH_P2_0_6, _lh_showSquare_LH_P2_1_6) -> 
      ((mappend__d2_d8 ((atIndex__d0 (_lh_showSquare_LH_P2_0_6 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_8_0 = _lh_showSquare_arg1_6 in
        (match _lh_matchIdent_8_0 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_6)
          | `White -> 
            _lh_showSquare_LH_P2_1_6
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1 _lh_showSquare_arg1_9 _lh_showSquare_arg2_9 =
  (match _lh_showSquare_arg2_9 with
    | `LH_P2(_lh_showSquare_LH_P2_0_9, _lh_showSquare_LH_P2_1_9) -> 
      ((mappend__d2_d9 ((atIndex__d1 (_lh_showSquare_LH_P2_0_9 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_0_4 = _lh_showSquare_arg1_9 in
        (match _lh_matchIdent_1_0_4 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_9)
          | `White -> 
            _lh_showSquare_LH_P2_1_9
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d0 _lh_showSquare_arg1_1_8 _lh_showSquare_arg2_1_8 =
  (match _lh_showSquare_arg2_1_8 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_8, _lh_showSquare_LH_P2_1_1_8) -> 
      ((mappend__d1_d0_d1 ((atIndex__d1_d0 (_lh_showSquare_LH_P2_0_1_8 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_9_5 = _lh_showSquare_arg1_1_8 in
        (match _lh_matchIdent_1_9_5 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_8)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_8
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d1 _lh_showSquare_arg1_2_2 _lh_showSquare_arg2_2_2 =
  (match _lh_showSquare_arg2_2_2 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_2, _lh_showSquare_LH_P2_1_2_2) -> 
      ((mappend__d1_d0_d2 ((atIndex__d1_d1 (_lh_showSquare_LH_P2_0_2_2 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_3_3 = _lh_showSquare_arg1_2_2 in
        (match _lh_matchIdent_2_3_3 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_2)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_2
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d2 _lh_showSquare_arg1_2_5 _lh_showSquare_arg2_2_5 =
  (match _lh_showSquare_arg2_2_5 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_5, _lh_showSquare_LH_P2_1_2_5) -> 
      ((mappend__d1_d1_d3 ((atIndex__d1_d2 (_lh_showSquare_LH_P2_0_2_5 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_5_4 = _lh_showSquare_arg1_2_5 in
        (match _lh_matchIdent_2_5_4 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_5)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_5
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d3 _lh_showSquare_arg1_1_6 _lh_showSquare_arg2_1_6 =
  (match _lh_showSquare_arg2_1_6 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_6, _lh_showSquare_LH_P2_1_1_6) -> 
      ((mappend__d1_d1_d4 ((atIndex__d1_d3 (_lh_showSquare_LH_P2_0_1_6 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_8_5 = _lh_showSquare_arg1_1_6 in
        (match _lh_matchIdent_1_8_5 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_6)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_6
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d4 _lh_showSquare_arg1_1_2 _lh_showSquare_arg2_1_2 =
  (match _lh_showSquare_arg2_1_2 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_2, _lh_showSquare_LH_P2_1_1_2) -> 
      ((mappend__d1_d2_d6 ((atIndex__d1_d4 (_lh_showSquare_LH_P2_0_1_2 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_2_7 = _lh_showSquare_arg1_1_2 in
        (match _lh_matchIdent_1_2_7 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_2)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_2
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d5 _lh_showSquare_arg1_1_5 _lh_showSquare_arg2_1_5 =
  (match _lh_showSquare_arg2_1_5 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_5, _lh_showSquare_LH_P2_1_1_5) -> 
      ((mappend__d1_d2_d7 ((atIndex__d1_d5 (_lh_showSquare_LH_P2_0_1_5 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_8_4 = _lh_showSquare_arg1_1_5 in
        (match _lh_matchIdent_1_8_4 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_5)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_5
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d6 _lh_showSquare_arg1_7 _lh_showSquare_arg2_7 =
  (match _lh_showSquare_arg2_7 with
    | `LH_P2(_lh_showSquare_LH_P2_0_7, _lh_showSquare_LH_P2_1_7) -> 
      ((mappend__d1_d4_d3 ((atIndex__d1_d6 (_lh_showSquare_LH_P2_0_7 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_8_1 = _lh_showSquare_arg1_7 in
        (match _lh_matchIdent_8_1 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_7)
          | `White -> 
            _lh_showSquare_LH_P2_1_7
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d7 _lh_showSquare_arg1_1_4 _lh_showSquare_arg2_1_4 =
  (match _lh_showSquare_arg2_1_4 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_4, _lh_showSquare_LH_P2_1_1_4) -> 
      ((mappend__d1_d4_d4 ((atIndex__d1_d7 (_lh_showSquare_LH_P2_0_1_4 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_4_6 = _lh_showSquare_arg1_1_4 in
        (match _lh_matchIdent_1_4_6 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_4)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_4
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d8 _lh_showSquare_arg1_4 _lh_showSquare_arg2_4 =
  (match _lh_showSquare_arg2_4 with
    | `LH_P2(_lh_showSquare_LH_P2_0_4, _lh_showSquare_LH_P2_1_4) -> 
      ((mappend__d1_d5_d6 ((atIndex__d1_d8 (_lh_showSquare_LH_P2_0_4 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_6_8 = _lh_showSquare_arg1_4 in
        (match _lh_matchIdent_6_8 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_4)
          | `White -> 
            _lh_showSquare_LH_P2_1_4
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d1_d9 _lh_showSquare_arg1_1 _lh_showSquare_arg2_1 =
  (match _lh_showSquare_arg2_1 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1, _lh_showSquare_LH_P2_1_1) -> 
      ((mappend__d1_d5_d7 ((atIndex__d1_d9 (_lh_showSquare_LH_P2_0_1 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_4_7 = _lh_showSquare_arg1_1 in
        (match _lh_matchIdent_4_7 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1)
          | `White -> 
            _lh_showSquare_LH_P2_1_1
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2 _lh_showSquare_arg1_1_3 _lh_showSquare_arg2_1_3 =
  (match _lh_showSquare_arg2_1_3 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_3, _lh_showSquare_LH_P2_1_1_3) -> 
      ((mappend__d4_d0 ((atIndex__d2 (_lh_showSquare_LH_P2_0_1_3 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_4_5 = _lh_showSquare_arg1_1_3 in
        (match _lh_matchIdent_1_4_5 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_3)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_3
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d0 _lh_showSquare_arg1_1_0 _lh_showSquare_arg2_1_0 =
  (match _lh_showSquare_arg2_1_0 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_0, _lh_showSquare_LH_P2_1_1_0) -> 
      ((mappend__d1_d7_d4 ((atIndex__d2_d0 (_lh_showSquare_LH_P2_0_1_0 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_1_1 = _lh_showSquare_arg1_1_0 in
        (match _lh_matchIdent_1_1_1 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_0)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_0
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d1 _lh_showSquare_arg1_3_0 _lh_showSquare_arg2_3_0 =
  (match _lh_showSquare_arg2_3_0 with
    | `LH_P2(_lh_showSquare_LH_P2_0_3_0, _lh_showSquare_LH_P2_1_3_0) -> 
      ((mappend__d1_d7_d5 ((atIndex__d2_d1 (_lh_showSquare_LH_P2_0_3_0 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_8_1 = _lh_showSquare_arg1_3_0 in
        (match _lh_matchIdent_2_8_1 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_3_0)
          | `White -> 
            _lh_showSquare_LH_P2_1_3_0
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d2 _lh_showSquare_arg1_3 _lh_showSquare_arg2_3 =
  (match _lh_showSquare_arg2_3 with
    | `LH_P2(_lh_showSquare_LH_P2_0_3, _lh_showSquare_LH_P2_1_3) -> 
      ((mappend__d1_d8_d6 ((atIndex__d2_d2 (_lh_showSquare_LH_P2_0_3 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_6_6 = _lh_showSquare_arg1_3 in
        (match _lh_matchIdent_6_6 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_3)
          | `White -> 
            _lh_showSquare_LH_P2_1_3
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d3 _lh_showSquare_arg1_2_0 _lh_showSquare_arg2_2_0 =
  (match _lh_showSquare_arg2_2_0 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_0, _lh_showSquare_LH_P2_1_2_0) -> 
      ((mappend__d1_d8_d7 ((atIndex__d2_d3 (_lh_showSquare_LH_P2_0_2_0 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_0_3 = _lh_showSquare_arg1_2_0 in
        (match _lh_matchIdent_2_0_3 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_0)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_0
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d4 _lh_showSquare_arg1_2_6 _lh_showSquare_arg2_2_6 =
  (match _lh_showSquare_arg2_2_6 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_6, _lh_showSquare_LH_P2_1_2_6) -> 
      ((mappend__d1_d9_d9 ((atIndex__d2_d4 (_lh_showSquare_LH_P2_0_2_6 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_5_6 = _lh_showSquare_arg1_2_6 in
        (match _lh_matchIdent_2_5_6 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_6)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_6
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d5 _lh_showSquare_arg1_1_7 _lh_showSquare_arg2_1_7 =
  (match _lh_showSquare_arg2_1_7 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_7, _lh_showSquare_LH_P2_1_1_7) -> 
      ((mappend__d2_d0_d0 ((atIndex__d2_d5 (_lh_showSquare_LH_P2_0_1_7 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_9_2 = _lh_showSquare_arg1_1_7 in
        (match _lh_matchIdent_1_9_2 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_7)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_7
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d6 _lh_showSquare_arg1_2_1 _lh_showSquare_arg2_2_1 =
  (match _lh_showSquare_arg2_2_1 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_1, _lh_showSquare_LH_P2_1_2_1) -> 
      ((mappend__d2_d1_d6 ((atIndex__d2_d6 (_lh_showSquare_LH_P2_0_2_1 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_2_9 = _lh_showSquare_arg1_2_1 in
        (match _lh_matchIdent_2_2_9 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_1)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_1
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d7 _lh_showSquare_arg1_5 _lh_showSquare_arg2_5 =
  (match _lh_showSquare_arg2_5 with
    | `LH_P2(_lh_showSquare_LH_P2_0_5, _lh_showSquare_LH_P2_1_5) -> 
      ((mappend__d2_d1_d7 ((atIndex__d2_d7 (_lh_showSquare_LH_P2_0_5 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_7_0 = _lh_showSquare_arg1_5 in
        (match _lh_matchIdent_7_0 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_5)
          | `White -> 
            _lh_showSquare_LH_P2_1_5
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d8 _lh_showSquare_arg1_8 _lh_showSquare_arg2_8 =
  (match _lh_showSquare_arg2_8 with
    | `LH_P2(_lh_showSquare_LH_P2_0_8, _lh_showSquare_LH_P2_1_8) -> 
      ((mappend__d2_d2_d9 ((atIndex__d2_d8 (_lh_showSquare_LH_P2_0_8 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_8_3 = _lh_showSquare_arg1_8 in
        (match _lh_matchIdent_8_3 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_8)
          | `White -> 
            _lh_showSquare_LH_P2_1_8
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d2_d9 _lh_showSquare_arg1_2_8 _lh_showSquare_arg2_2_8 =
  (match _lh_showSquare_arg2_2_8 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_8, _lh_showSquare_LH_P2_1_2_8) -> 
      ((mappend__d2_d3_d0 ((atIndex__d2_d9 (_lh_showSquare_LH_P2_0_2_8 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_7_4 = _lh_showSquare_arg1_2_8 in
        (match _lh_matchIdent_2_7_4 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_8)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_8
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d3 _lh_showSquare_arg1_2_7 _lh_showSquare_arg2_2_7 =
  (match _lh_showSquare_arg2_2_7 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_7, _lh_showSquare_LH_P2_1_2_7) -> 
      ((mappend__d4_d1 ((atIndex__d3 (_lh_showSquare_LH_P2_0_2_7 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_5_9 = _lh_showSquare_arg1_2_7 in
        (match _lh_matchIdent_2_5_9 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_7)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_7
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d4 _lh_showSquare_arg1_2_4 _lh_showSquare_arg2_2_4 =
  (match _lh_showSquare_arg2_2_4 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_4, _lh_showSquare_LH_P2_1_2_4) -> 
      ((mappend__d5_d3 ((atIndex__d4 (_lh_showSquare_LH_P2_0_2_4 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_4_8 = _lh_showSquare_arg1_2_4 in
        (match _lh_matchIdent_2_4_8 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_4)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_4
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d5 _lh_showSquare_arg1_2_9 _lh_showSquare_arg2_2_9 =
  (match _lh_showSquare_arg2_2_9 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_9, _lh_showSquare_LH_P2_1_2_9) -> 
      ((mappend__d5_d4 ((atIndex__d5 (_lh_showSquare_LH_P2_0_2_9 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_8_0 = _lh_showSquare_arg1_2_9 in
        (match _lh_matchIdent_2_8_0 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_9)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_9
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d6 _lh_showSquare_arg1_1_1 _lh_showSquare_arg2_1_1 =
  (match _lh_showSquare_arg2_1_1 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_1, _lh_showSquare_LH_P2_1_1_1) -> 
      ((mappend__d7_d0 ((atIndex__d6 (_lh_showSquare_LH_P2_0_1_1 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_2_0 = _lh_showSquare_arg1_1_1 in
        (match _lh_matchIdent_1_2_0 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_1)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_1
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d7 _lh_showSquare_arg1_1_9 _lh_showSquare_arg2_1_9 =
  (match _lh_showSquare_arg2_1_9 with
    | `LH_P2(_lh_showSquare_LH_P2_0_1_9, _lh_showSquare_LH_P2_1_1_9) -> 
      ((mappend__d7_d1 ((atIndex__d7 (_lh_showSquare_LH_P2_0_1_9 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_1_9_6 = _lh_showSquare_arg1_1_9 in
        (match _lh_matchIdent_1_9_6 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_1_9)
          | `White -> 
            _lh_showSquare_LH_P2_1_1_9
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d8 _lh_showSquare_arg1_2_3 _lh_showSquare_arg2_2_3 =
  (match _lh_showSquare_arg2_2_3 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2_3, _lh_showSquare_LH_P2_1_2_3) -> 
      ((mappend__d8_d3 ((atIndex__d8 (_lh_showSquare_LH_P2_0_2_3 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_2_4_2 = _lh_showSquare_arg1_2_3 in
        (match _lh_matchIdent_2_4_2 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2_3)
          | `White -> 
            _lh_showSquare_LH_P2_1_2_3
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and showSquare__d9 _lh_showSquare_arg1_2 _lh_showSquare_arg2_2 =
  (match _lh_showSquare_arg2_2 with
    | `LH_P2(_lh_showSquare_LH_P2_0_2, _lh_showSquare_LH_P2_1_2) -> 
      ((mappend__d8_d4 ((atIndex__d9 (_lh_showSquare_LH_P2_0_2 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_5_6 = _lh_showSquare_arg1_2 in
        (match _lh_matchIdent_5_6 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_2)
          | `White -> 
            _lh_showSquare_LH_P2_1_2
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"))
and sift__d0 _lh_sift_arg1_2 _lh_sift_arg2_2 _lh_sift_arg3_2 _lh_sift_arg4_2 =
  (match _lh_sift_arg4_2 with
    | `LH_N -> 
      _lh_sift_arg3_2
    | `LH_C(_lh_sift_LH_C_0_2, _lh_sift_LH_C_1_2) -> 
      (if (onboard__d4 _lh_sift_LH_C_0_2) then
        (let rec _lh_matchIdent_9_5 = ((pieceAt__d5 _lh_sift_arg2_2) _lh_sift_LH_C_0_2) in
          (match _lh_matchIdent_9_5 with
            | `Nothing -> 
              ((((sift__d0 _lh_sift_arg1_2) _lh_sift_arg2_2) (`LH_C((`Move(_lh_sift_LH_C_0_2, (`Nothing), (`Nothing))), _lh_sift_arg3_2))) _lh_sift_LH_C_1_2)
            | `Just(_lh_sift_Just_0_2) -> 
              (if ((colourOf__d4 _lh_sift_Just_0_2) = _lh_sift_arg1_2) then
                ((((sift__d0 _lh_sift_arg1_2) _lh_sift_arg2_2) _lh_sift_arg3_2) _lh_sift_LH_C_1_2)
              else
                ((((sift__d0 _lh_sift_arg1_2) _lh_sift_arg2_2) (`LH_C((`Move(_lh_sift_LH_C_0_2, (`Just(_lh_sift_Just_0_2)), (`Nothing))), _lh_sift_arg3_2))) _lh_sift_LH_C_1_2))
            | _ -> 
              (failwith "error")))
      else
        ((((sift__d0 _lh_sift_arg1_2) _lh_sift_arg2_2) _lh_sift_arg3_2) _lh_sift_LH_C_1_2))
    | _ -> 
      (failwith "error"))
and sift__d1 _lh_sift_arg1_1 _lh_sift_arg2_1 _lh_sift_arg3_1 _lh_sift_arg4_1 =
  (match _lh_sift_arg4_1 with
    | `LH_N -> 
      _lh_sift_arg3_1
    | `LH_C(_lh_sift_LH_C_0_1, _lh_sift_LH_C_1_1) -> 
      (if (onboard__d5 _lh_sift_LH_C_0_1) then
        (let rec _lh_matchIdent_4_6 = ((pieceAt__d6 _lh_sift_arg2_1) _lh_sift_LH_C_0_1) in
          (match _lh_matchIdent_4_6 with
            | `Nothing -> 
              ((((sift__d1 _lh_sift_arg1_1) _lh_sift_arg2_1) (`LH_C((`Move(_lh_sift_LH_C_0_1, (`Nothing), (`Nothing))), _lh_sift_arg3_1))) _lh_sift_LH_C_1_1)
            | `Just(_lh_sift_Just_0_1) -> 
              (if ((colourOf__d5 _lh_sift_Just_0_1) = _lh_sift_arg1_1) then
                ((((sift__d1 _lh_sift_arg1_1) _lh_sift_arg2_1) _lh_sift_arg3_1) _lh_sift_LH_C_1_1)
              else
                ((((sift__d1 _lh_sift_arg1_1) _lh_sift_arg2_1) (`LH_C((`Move(_lh_sift_LH_C_0_1, (`Just(_lh_sift_Just_0_1)), (`Nothing))), _lh_sift_arg3_1))) _lh_sift_LH_C_1_1))
            | _ -> 
              (failwith "error")))
      else
        ((((sift__d1 _lh_sift_arg1_1) _lh_sift_arg2_1) _lh_sift_arg3_1) _lh_sift_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and sift__d2 _lh_sift_arg1_3 _lh_sift_arg2_3 _lh_sift_arg3_3 _lh_sift_arg4_3 =
  (match _lh_sift_arg4_3 with
    | `LH_N -> 
      _lh_sift_arg3_3
    | `LH_C(_lh_sift_LH_C_0_3, _lh_sift_LH_C_1_3) -> 
      (if (onboard__d2_d2 _lh_sift_LH_C_0_3) then
        (let rec _lh_matchIdent_1_2_9 = ((pieceAt__d2_d6 _lh_sift_arg2_3) _lh_sift_LH_C_0_3) in
          (match _lh_matchIdent_1_2_9 with
            | `Nothing -> 
              ((((sift__d2 _lh_sift_arg1_3) _lh_sift_arg2_3) (`LH_C((`Move(_lh_sift_LH_C_0_3, (`Nothing), (`Nothing))), _lh_sift_arg3_3))) _lh_sift_LH_C_1_3)
            | `Just(_lh_sift_Just_0_3) -> 
              (if ((colourOf__d2_d3 _lh_sift_Just_0_3) = _lh_sift_arg1_3) then
                ((((sift__d2 _lh_sift_arg1_3) _lh_sift_arg2_3) _lh_sift_arg3_3) _lh_sift_LH_C_1_3)
              else
                ((((sift__d2 _lh_sift_arg1_3) _lh_sift_arg2_3) (`LH_C((`Move(_lh_sift_LH_C_0_3, (`Just(_lh_sift_Just_0_3)), (`Nothing))), _lh_sift_arg3_3))) _lh_sift_LH_C_1_3))
            | _ -> 
              (failwith "error")))
      else
        ((((sift__d2 _lh_sift_arg1_3) _lh_sift_arg2_3) _lh_sift_arg3_3) _lh_sift_LH_C_1_3))
    | _ -> 
      (failwith "error"))
and sift__d3 _lh_sift_arg1_4 _lh_sift_arg2_4 _lh_sift_arg3_4 _lh_sift_arg4_4 =
  (match _lh_sift_arg4_4 with
    | `LH_N -> 
      _lh_sift_arg3_4
    | `LH_C(_lh_sift_LH_C_0_4, _lh_sift_LH_C_1_4) -> 
      (if (onboard__d2_d3 _lh_sift_LH_C_0_4) then
        (let rec _lh_matchIdent_2_5_0 = ((pieceAt__d2_d7 _lh_sift_arg2_4) _lh_sift_LH_C_0_4) in
          (match _lh_matchIdent_2_5_0 with
            | `Nothing -> 
              ((((sift__d3 _lh_sift_arg1_4) _lh_sift_arg2_4) (`LH_C((`Move(_lh_sift_LH_C_0_4, (`Nothing), (`Nothing))), _lh_sift_arg3_4))) _lh_sift_LH_C_1_4)
            | `Just(_lh_sift_Just_0_4) -> 
              (if ((colourOf__d2_d4 _lh_sift_Just_0_4) = _lh_sift_arg1_4) then
                ((((sift__d3 _lh_sift_arg1_4) _lh_sift_arg2_4) _lh_sift_arg3_4) _lh_sift_LH_C_1_4)
              else
                ((((sift__d3 _lh_sift_arg1_4) _lh_sift_arg2_4) (`LH_C((`Move(_lh_sift_LH_C_0_4, (`Just(_lh_sift_Just_0_4)), (`Nothing))), _lh_sift_arg3_4))) _lh_sift_LH_C_1_4))
            | _ -> 
              (failwith "error")))
      else
        ((((sift__d3 _lh_sift_arg1_4) _lh_sift_arg2_4) _lh_sift_arg3_4) _lh_sift_LH_C_1_4))
    | _ -> 
      (failwith "error"))
and solution__d0 _lh_solution_arg1_1 _lh_solution_arg2_1 _lh_solution_arg3_1 =
  (let rec solnOr_1 = (fun mifb_3 other_1 -> 
    (let rec _lh_matchIdent_1_7_8 = mifb_3 in
      (match _lh_matchIdent_1_7_8 with
        | `LH_P2(_lh_solution_LH_P2_0_1, _lh_solution_LH_P2_1_1) -> 
          (let rec rsm_1 = (((replies__d0 _lh_solution_LH_P2_1_1) (opponent__d3 _lh_solution_arg2_1)) (_lh_solution_arg3_1 - 1)) in
            (let rec _lh_matchIdent_1_7_9 = rsm_1 in
              (match _lh_matchIdent_1_7_9 with
                | `Nothing -> 
                  other_1
                | `Just(_lh_solution_Just_0_1) -> 
                  (match _lh_solution_Just_0_1 with
                    | `LH_N -> 
                      (if ((kingincheck__d0 (opponent__d4 _lh_solution_arg2_1)) _lh_solution_LH_P2_1_1) then
                        (`Just((`Solution(_lh_solution_LH_P2_0_1, (`LH_N)))))
                      else
                        other_1)
                    | _ -> 
                      (`Just((`Solution(_lh_solution_LH_P2_0_1, _lh_solution_Just_0_1)))))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error")))) in
    (if (_lh_solution_arg3_1 > 0) then
      (let rec mds_3 = ((moveDetailsFor__d0 _lh_solution_arg2_1) _lh_solution_arg1_1) in
        (((foldr__d3 solnOr_1) (`Nothing)) mds_3))
    else
      ((failwith "error") (`LH_C('n', (`LH_C(' ', (`LH_C('<', (`LH_C('=', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))
and solve__d0 _lh_solve_arg1_1 _lh_solve_arg2_1 _lh_solve_arg3_1 =
  (showResult__d0 (((solution__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) ((2 * _lh_solve_arg3_1) - 1)))
and sort__d0 _lh_sort_arg1_1 =
  (((qsort__d0 (fun a_7 b_5 -> 
    (let rec _lh_matchIdent_5_0 = a_7 in
      (match _lh_matchIdent_5_0 with
        | `LH_P2(_lh_sort_LH_P2_0_2, _lh_sort_LH_P2_1_2) -> 
          (let rec _lh_matchIdent_5_1 = b_5 in
            (match _lh_matchIdent_5_1 with
              | `LH_P2(_lh_sort_LH_P2_0_3, _lh_sort_LH_P2_1_3) -> 
                ((length__d2 _lh_sort_LH_P2_0_2) <= (length__d3 _lh_sort_LH_P2_0_3))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_1) (`LH_N))
and sort__d1 _lh_sort_arg1_3 =
  (((qsort__d1 (fun a_1_6 b_2_2 -> 
    (let rec _lh_matchIdent_2_6_3 = a_1_6 in
      (match _lh_matchIdent_2_6_3 with
        | `LH_P2(_lh_sort_LH_P2_0_6, _lh_sort_LH_P2_1_6) -> 
          (let rec _lh_matchIdent_2_6_4 = b_2_2 in
            (match _lh_matchIdent_2_6_4 with
              | `LH_P2(_lh_sort_LH_P2_0_7, _lh_sort_LH_P2_1_7) -> 
                ((length__d6 _lh_sort_LH_P2_0_6) <= (length__d7 _lh_sort_LH_P2_0_7))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_3) (`LH_N))
and sort__d2 _lh_sort_arg1_2 =
  (((qsort__d2 (fun a_9 b_8 -> 
    (let rec _lh_matchIdent_1_0_5 = a_9 in
      (match _lh_matchIdent_1_0_5 with
        | `LH_P2(_lh_sort_LH_P2_0_4, _lh_sort_LH_P2_1_4) -> 
          (let rec _lh_matchIdent_1_0_6 = b_8 in
            (match _lh_matchIdent_1_0_6 with
              | `LH_P2(_lh_sort_LH_P2_0_5, _lh_sort_LH_P2_1_5) -> 
                ((length__d1_d0 _lh_sort_LH_P2_0_4) <= (length__d1_d1 _lh_sort_LH_P2_0_5))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_2) (`LH_N))
and splitAt__d0 _lh_splitAt_arg1_1 _lh_splitAt_arg2_1 =
  (`LH_P2(((take__d1 _lh_splitAt_arg1_1) _lh_splitAt_arg2_1), ((drop__d0 _lh_splitAt_arg1_1) _lh_splitAt_arg2_1)))
and testMate_nofib__d0 _lh_testMate_nofib_arg1_1 =
  (let rec input_1 = (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('A', (`LH_C('.', (`LH_C(' ', (`LH_C('E', (`LH_C('l', (`LH_C('l', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('1', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(',', (`LH_C(' ', (`LH_C('L', (`LH_C('u', (`LH_C('i', (`LH_C('g', (`LH_C('i', (`LH_C(' ', (`LH_C('C', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('u', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('i', (`LH_C(',', (`LH_C(' ', (`LH_C('G', (`LH_C('e', (`LH_C('n', (`LH_C('o', (`LH_C('a', (`LH_C(',', (`LH_C(' ', (`LH_C('1', (`LH_C('9', (`LH_C('2', (`LH_C('5', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('`', (`LH_C('O', (`LH_C('n', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('w', (`LH_C('o', (`LH_C('-', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C(',', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('u', (`LH_C('n', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('p', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_C('a', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C(' ', (`LH_C('(', (`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C('i', (`LH_C('p', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('b', (`LH_C(' ', (`LH_C('k', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('r', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('R', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C(' ', (`LH_C('P', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('B', (`LH_C(' ', (`LH_C('B', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_C('W', (`LH_C('h', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('2', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec bdcn_1 = (readProblem__d0 input_1) in
      (let rec _lh_matchIdent_6_5 = bdcn_1 in
        (match _lh_matchIdent_6_5 with
          | `LH_P2(_lh_testMate_nofib_LH_P2_0_2, _lh_testMate_nofib_LH_P2_1_2) -> 
            (match _lh_testMate_nofib_LH_P2_1_2 with
              | `LH_P2(_lh_testMate_nofib_LH_P2_0_3, _lh_testMate_nofib_LH_P2_1_3) -> 
                ((mappend__d0 ((mappend__d1 ((mappend__d2 ((mappend__d3 ((mappend__d4 ((mappend__d5 ((mappend__d6 (showBoard__d0 _lh_testMate_nofib_LH_P2_0_2)) (`LH_C('|', (`LH_N))))) (showColour__d0 _lh_testMate_nofib_LH_P2_0_3))) (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))) (string_of_int _lh_testMate_nofib_LH_P2_1_3))) (`LH_C('|', (`LH_N))))) (`LH_C('|', (`LH_N))))) (((solve__d0 _lh_testMate_nofib_LH_P2_0_2) _lh_testMate_nofib_LH_P2_0_3) _lh_testMate_nofib_LH_P2_1_3))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))))
and tryMove__d0 _lh_tryMove_arg1_1 _lh_tryMove_arg2_1 _lh_tryMove_arg3_1 _lh_tryMove_arg4_1 =
  (match _lh_tryMove_arg2_1 with
    | `LH_P2(_lh_tryMove_LH_P2_0_1, _lh_tryMove_LH_P2_1_1) -> 
      (match _lh_tryMove_arg3_1 with
        | `Move(_lh_tryMove_Move_0_1, _lh_tryMove_Move_1_1, _lh_tryMove_Move_2_1) -> 
          (let rec p_1 = (`LH_P2(_lh_tryMove_arg1_1, _lh_tryMove_LH_P2_0_1)) in
            (let rec bd1_1 = (((rmPieceAt__d0 _lh_tryMove_arg1_1) _lh_tryMove_LH_P2_1_1) _lh_tryMove_arg4_1) in
              (let rec p'_1 = (((maybe__d3_d1 p_1) (fun x_2_0 -> 
                x_2_0)) _lh_tryMove_Move_2_1) in
                (let rec bd2_1 = (((maybe__d3_d2 (((putPieceAt__d1 _lh_tryMove_Move_0_1) p'_1) bd1_1)) (fun _dummy_1 -> 
                  (((putPieceAt__d2 _lh_tryMove_Move_0_1) p'_1) (((rmPieceAt__d1 (opponent__d2 _lh_tryMove_arg1_1)) _lh_tryMove_Move_0_1) bd1_1)))) _lh_tryMove_Move_1_1) in
                  (if (not ((kingincheck__d1 _lh_tryMove_arg1_1) bd2_1)) then
                    (`Just((`LH_P2((`MoveInFull(p_1, _lh_tryMove_LH_P2_1_1, (`Move(_lh_tryMove_Move_0_1, _lh_tryMove_Move_1_1, _lh_tryMove_Move_2_1)))), bd2_1))))
                  else
                    (`Nothing))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and tryMove__d1 _lh_tryMove_arg1_2 _lh_tryMove_arg2_2 _lh_tryMove_arg3_2 _lh_tryMove_arg4_2 =
  (match _lh_tryMove_arg2_2 with
    | `LH_P2(_lh_tryMove_LH_P2_0_2, _lh_tryMove_LH_P2_1_2) -> 
      (match _lh_tryMove_arg3_2 with
        | `Move(_lh_tryMove_Move_0_2, _lh_tryMove_Move_1_2, _lh_tryMove_Move_2_2) -> 
          (let rec p_2 = (`LH_P2(_lh_tryMove_arg1_2, _lh_tryMove_LH_P2_0_2)) in
            (let rec bd1_2 = (((rmPieceAt__d2 _lh_tryMove_arg1_2) _lh_tryMove_LH_P2_1_2) _lh_tryMove_arg4_2) in
              (let rec p'_2 = (((maybe__d3_d4 p_2) (fun x_2_1 -> 
                x_2_1)) _lh_tryMove_Move_2_2) in
                (let rec bd2_2 = (((maybe__d3_d5 (((putPieceAt__d3 _lh_tryMove_Move_0_2) p'_2) bd1_2)) (fun _dummy_2 -> 
                  (((putPieceAt__d4 _lh_tryMove_Move_0_2) p'_2) (((rmPieceAt__d3 (opponent__d6 _lh_tryMove_arg1_2)) _lh_tryMove_Move_0_2) bd1_2)))) _lh_tryMove_Move_1_2) in
                  (if (not ((kingincheck__d2 _lh_tryMove_arg1_2) bd2_2)) then
                    (`Just((`LH_P2((`MoveInFull(p_2, _lh_tryMove_LH_P2_1_2, (`Move(_lh_tryMove_Move_0_2, _lh_tryMove_Move_1_2, _lh_tryMove_Move_2_2)))), bd2_2))))
                  else
                    (`Nothing))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unlines__d0 _lh_unlines_arg1_1 =
  (concat__d2 ((map__d1 (fun l_1 -> 
    ((mappend__d1_d1 l_1) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_1))
and words__d0 _lh_words_arg1_1 =
  (let rec _lh_matchIdent_1_8_2 = ((dropWhile__d0 (fun x_1_8 -> 
    (x_1_8 = ' '))) _lh_words_arg1_1) in
    (match _lh_matchIdent_1_8_2 with
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (let rec _lh_matchIdent_1_8_3 = ((break__d1 (fun x_1_9 -> 
          (x_1_9 = ' '))) _lh_matchIdent_1_8_2) in
          (match _lh_matchIdent_1_8_3 with
            | `LH_P2(_lh_words_LH_P2_0_1, _lh_words_LH_P2_1_1) -> 
              (`LH_C(_lh_words_LH_P2_0_1, (words__d0 _lh_words_LH_P2_1_1)))
            | _ -> 
              (failwith "error")))));;
end;;

