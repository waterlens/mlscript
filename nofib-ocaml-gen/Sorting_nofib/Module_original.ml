
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec break__d0 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_2_1 = ((break__d0 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_2_1 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec compareList__d0 _lh_compareList_arg1_4 _lh_compareList_arg2_4 =
  (match _lh_compareList_arg1_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_1_2, _lh_compareList_LH_C_1_1_2) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_3, _lh_compareList_LH_C_1_1_3) -> 
      (match _lh_compareList_arg2_4 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_1_4, _lh_compareList_LH_C_1_1_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_3) = (int_of_char _lh_compareList_LH_C_0_1_4)) then
            ((compareList__d0 _lh_compareList_LH_C_1_1_3) _lh_compareList_LH_C_1_1_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_3) < (int_of_char _lh_compareList_LH_C_0_1_4)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d1 _lh_compareList_arg1_1_5 _lh_compareList_arg2_1_5 =
  (match _lh_compareList_arg1_1_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_5 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_4_5, _lh_compareList_LH_C_1_4_5) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_6, _lh_compareList_LH_C_1_4_6) -> 
      (match _lh_compareList_arg2_1_5 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_4_7, _lh_compareList_LH_C_1_4_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_6) = (int_of_char _lh_compareList_LH_C_0_4_7)) then
            ((compareList__d1 _lh_compareList_LH_C_1_4_6) _lh_compareList_LH_C_1_4_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_6) < (int_of_char _lh_compareList_LH_C_0_4_7)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d1_d0 _lh_compareList_arg1_8 _lh_compareList_arg2_8 =
  (match _lh_compareList_arg1_8 with
    | `LH_N -> 
      (match _lh_compareList_arg2_8 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_2_4, _lh_compareList_LH_C_1_2_4) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_2_5, _lh_compareList_LH_C_1_2_5) -> 
      (match _lh_compareList_arg2_8 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_2_6, _lh_compareList_LH_C_1_2_6) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_2_5) = (int_of_char _lh_compareList_LH_C_0_2_6)) then
            ((compareList__d1_d0 _lh_compareList_LH_C_1_2_5) _lh_compareList_LH_C_1_2_6)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_5) < (int_of_char _lh_compareList_LH_C_0_2_6)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d1_d1 _lh_compareList_arg1_2 _lh_compareList_arg2_2 =
  (match _lh_compareList_arg1_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_6, _lh_compareList_LH_C_1_6) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7, _lh_compareList_LH_C_1_7) -> 
      (match _lh_compareList_arg2_2 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_8, _lh_compareList_LH_C_1_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7) = (int_of_char _lh_compareList_LH_C_0_8)) then
            ((compareList__d1_d1 _lh_compareList_LH_C_1_7) _lh_compareList_LH_C_1_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7) < (int_of_char _lh_compareList_LH_C_0_8)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d1_d2 _lh_compareList_arg1_7 _lh_compareList_arg2_7 =
  (match _lh_compareList_arg1_7 with
    | `LH_N -> 
      (match _lh_compareList_arg2_7 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_2_1, _lh_compareList_LH_C_1_2_1) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_2_2, _lh_compareList_LH_C_1_2_2) -> 
      (match _lh_compareList_arg2_7 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_2_3, _lh_compareList_LH_C_1_2_3) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_2_2) = (int_of_char _lh_compareList_LH_C_0_2_3)) then
            ((compareList__d1_d2 _lh_compareList_LH_C_1_2_2) _lh_compareList_LH_C_1_2_3)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_2) < (int_of_char _lh_compareList_LH_C_0_2_3)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d1_d3 _lh_compareList_arg1_1_1 _lh_compareList_arg2_1_1 =
  (match _lh_compareList_arg1_1_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_1 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_3_3, _lh_compareList_LH_C_1_3_3) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_3_4, _lh_compareList_LH_C_1_3_4) -> 
      (match _lh_compareList_arg2_1_1 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_3_5, _lh_compareList_LH_C_1_3_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_3_4) = (int_of_char _lh_compareList_LH_C_0_3_5)) then
            ((compareList__d1_d3 _lh_compareList_LH_C_1_3_4) _lh_compareList_LH_C_1_3_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_4) < (int_of_char _lh_compareList_LH_C_0_3_5)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d1_d4 _lh_compareList_arg1_5 _lh_compareList_arg2_5 =
  (match _lh_compareList_arg1_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_5 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_1_5, _lh_compareList_LH_C_1_1_5) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_6, _lh_compareList_LH_C_1_1_6) -> 
      (match _lh_compareList_arg2_5 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_1_7, _lh_compareList_LH_C_1_1_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_6) = (int_of_char _lh_compareList_LH_C_0_1_7)) then
            ((compareList__d1_d4 _lh_compareList_LH_C_1_1_6) _lh_compareList_LH_C_1_1_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_6) < (int_of_char _lh_compareList_LH_C_0_1_7)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d1_d5 _lh_compareList_arg1_1_3 _lh_compareList_arg2_1_3 =
  (match _lh_compareList_arg1_1_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_3 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_3_9, _lh_compareList_LH_C_1_3_9) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_0, _lh_compareList_LH_C_1_4_0) -> 
      (match _lh_compareList_arg2_1_3 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_4_1, _lh_compareList_LH_C_1_4_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_0) = (int_of_char _lh_compareList_LH_C_0_4_1)) then
            ((compareList__d1_d5 _lh_compareList_LH_C_1_4_0) _lh_compareList_LH_C_1_4_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_0) < (int_of_char _lh_compareList_LH_C_0_4_1)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d2 _lh_compareList_arg1_1_2 _lh_compareList_arg2_1_2 =
  (match _lh_compareList_arg1_1_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_2 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_3_6, _lh_compareList_LH_C_1_3_6) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_3_7, _lh_compareList_LH_C_1_3_7) -> 
      (match _lh_compareList_arg2_1_2 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_3_8, _lh_compareList_LH_C_1_3_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_3_7) = (int_of_char _lh_compareList_LH_C_0_3_8)) then
            ((compareList__d2 _lh_compareList_LH_C_1_3_7) _lh_compareList_LH_C_1_3_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_7) < (int_of_char _lh_compareList_LH_C_0_3_8)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d3 _lh_compareList_arg1_1_6 _lh_compareList_arg2_1_6 =
  (match _lh_compareList_arg1_1_6 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_6 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_4_8, _lh_compareList_LH_C_1_4_8) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_9, _lh_compareList_LH_C_1_4_9) -> 
      (match _lh_compareList_arg2_1_6 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_5_0, _lh_compareList_LH_C_1_5_0) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_9) = (int_of_char _lh_compareList_LH_C_0_5_0)) then
            ((compareList__d3 _lh_compareList_LH_C_1_4_9) _lh_compareList_LH_C_1_5_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_9) < (int_of_char _lh_compareList_LH_C_0_5_0)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d4 _lh_compareList_arg1_1_0 _lh_compareList_arg2_1_0 =
  (match _lh_compareList_arg1_1_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_0 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_3_0, _lh_compareList_LH_C_1_3_0) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_3_1, _lh_compareList_LH_C_1_3_1) -> 
      (match _lh_compareList_arg2_1_0 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_3_2, _lh_compareList_LH_C_1_3_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_3_1) = (int_of_char _lh_compareList_LH_C_0_3_2)) then
            ((compareList__d4 _lh_compareList_LH_C_1_3_1) _lh_compareList_LH_C_1_3_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_1) < (int_of_char _lh_compareList_LH_C_0_3_2)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d5 _lh_compareList_arg1_3 _lh_compareList_arg2_3 =
  (match _lh_compareList_arg1_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_9, _lh_compareList_LH_C_1_9) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_0, _lh_compareList_LH_C_1_1_0) -> 
      (match _lh_compareList_arg2_3 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_1_1, _lh_compareList_LH_C_1_1_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_0) = (int_of_char _lh_compareList_LH_C_0_1_1)) then
            ((compareList__d5 _lh_compareList_LH_C_1_1_0) _lh_compareList_LH_C_1_1_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_0) < (int_of_char _lh_compareList_LH_C_0_1_1)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d6 _lh_compareList_arg1_9 _lh_compareList_arg2_9 =
  (match _lh_compareList_arg1_9 with
    | `LH_N -> 
      (match _lh_compareList_arg2_9 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_2_7, _lh_compareList_LH_C_1_2_7) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_2_8, _lh_compareList_LH_C_1_2_8) -> 
      (match _lh_compareList_arg2_9 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_2_9, _lh_compareList_LH_C_1_2_9) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_2_8) = (int_of_char _lh_compareList_LH_C_0_2_9)) then
            ((compareList__d6 _lh_compareList_LH_C_1_2_8) _lh_compareList_LH_C_1_2_9)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_8) < (int_of_char _lh_compareList_LH_C_0_2_9)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d7 _lh_compareList_arg1_1_4 _lh_compareList_arg2_1_4 =
  (match _lh_compareList_arg1_1_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_4 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_4_2, _lh_compareList_LH_C_1_4_2) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_3, _lh_compareList_LH_C_1_4_3) -> 
      (match _lh_compareList_arg2_1_4 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_4_4, _lh_compareList_LH_C_1_4_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_3) = (int_of_char _lh_compareList_LH_C_0_4_4)) then
            ((compareList__d7 _lh_compareList_LH_C_1_4_3) _lh_compareList_LH_C_1_4_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_3) < (int_of_char _lh_compareList_LH_C_0_4_4)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d8 _lh_compareList_arg1_1 _lh_compareList_arg2_1 =
  (match _lh_compareList_arg1_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_3, _lh_compareList_LH_C_1_3) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4, _lh_compareList_LH_C_1_4) -> 
      (match _lh_compareList_arg2_1 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_5, _lh_compareList_LH_C_1_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4) = (int_of_char _lh_compareList_LH_C_0_5)) then
            ((compareList__d8 _lh_compareList_LH_C_1_4) _lh_compareList_LH_C_1_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4) < (int_of_char _lh_compareList_LH_C_0_5)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList__d9 _lh_compareList_arg1_6 _lh_compareList_arg2_6 =
  (match _lh_compareList_arg1_6 with
    | `LH_N -> 
      (match _lh_compareList_arg2_6 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_1_8, _lh_compareList_LH_C_1_1_8) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_9, _lh_compareList_LH_C_1_1_9) -> 
      (match _lh_compareList_arg2_6 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_2_0, _lh_compareList_LH_C_1_2_0) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_9) = (int_of_char _lh_compareList_LH_C_0_2_0)) then
            ((compareList__d9 _lh_compareList_LH_C_1_1_9) _lh_compareList_LH_C_1_2_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_9) < (int_of_char _lh_compareList_LH_C_0_2_0)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec foldl__d0 f_2_1 i_7 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_5, t_3_7) -> 
      (((foldl__d0 f_2_1) ((f_2_1 i_7) h_3_5)) t_3_7)
    | `LH_N -> 
      i_7);;
let rec foldr__d0 f_1_4 i_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      ((f_1_4 h_2_2) (((foldr__d0 f_1_4) i_3) t_2_4))
    | `LH_N -> 
      i_3);;
let rec foldr__d1 f_1_5 i_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      ((f_1_5 h_2_4) (((foldr__d1 f_1_5) i_4) t_2_6))
    | `LH_N -> 
      i_4);;
let rec foldr__d2 f_2_0 i_6 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_3, t_3_5) -> 
      ((f_2_0 h_3_3) (((foldr__d2 f_2_0) i_6) t_3_5))
    | `LH_N -> 
      i_6);;
let rec foldr__d3 f_1_6 i_5 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_9, t_3_1) -> 
      ((f_1_6 h_2_9) (((foldr__d3 f_1_6) i_5) t_3_1))
    | `LH_N -> 
      i_5);;
let rec map__d0 f_1_9 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C((f_1_9 h_3_2), ((map__d0 f_1_9) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend__d0 t_2_7) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d1 t_2_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d2 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C(h_3_8, ((mappend__d2 t_4_0) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d3 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend__d3 t_3_9) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d4 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d4 t_2_8) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d5 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C(h_3_1, ((mappend__d5 t_3_3) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d6 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend__d6 t_4_1) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d7 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend__d7 t_2_9) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d8 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_4_0, t_4_2) -> 
      (`LH_C(h_4_0, ((mappend__d8 t_4_2) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d9 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d9 t_2_5) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec odd__d0 _lh_odd_arg1_1 =
  ((_lh_odd_arg1_1 mod 2) = 0);;
let rec odd__d1 _lh_odd_arg1_2 =
  ((_lh_odd_arg1_2 mod 2) = 0);;
let rec prependToAll__d0 _lh_prependToAll_arg1_1 _lh_prependToAll_arg2_1 =
  (match _lh_prependToAll_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_prependToAll_LH_C_0_1, _lh_prependToAll_LH_C_1_1) -> 
      (`LH_C(_lh_prependToAll_arg1_1, (`LH_C(_lh_prependToAll_LH_C_0_1, ((prependToAll__d0 _lh_prependToAll_arg1_1) _lh_prependToAll_LH_C_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper__d0 ls_2_3 a_6 =
  (match ls_2_3 with
    | `LH_C(h_2_8, t_3_0) -> 
      ((reverse_helper__d0 t_3_0) (`LH_C(h_2_8, a_6)))
    | `LH_N -> 
      a_6);;
let rec reverse_helper__d1 ls_1_9 a_5 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      ((reverse_helper__d1 t_2_2) (`LH_C(h_2_0, a_5)))
    | `LH_N -> 
      a_5);;
let rec reverse_helper__d2 ls_3_0 a_8 =
  (match ls_3_0 with
    | `LH_C(h_3_6, t_3_8) -> 
      ((reverse_helper__d2 t_3_8) (`LH_C(h_3_6, a_8)))
    | `LH_N -> 
      a_8);;
let rec reverse_helper__d3 ls_2_8 a_7 =
  (match ls_2_8 with
    | `LH_C(h_3_4, t_3_6) -> 
      ((reverse_helper__d3 t_3_6) (`LH_C(h_3_4, a_7)))
    | `LH_N -> 
      a_7);;
let rec select__d0 _lh_select_arg1_1 _lh_select_arg2_1 _lh_select_arg3_1 =
  (match _lh_select_arg3_1 with
    | `LH_P2(_lh_select_LH_P2_0_1, _lh_select_LH_P2_1_1) -> 
      (if (_lh_select_arg1_1 _lh_select_arg2_1) then
        (`LH_P2((`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_0_1)), _lh_select_LH_P2_1_1))
      else
        (`LH_P2(_lh_select_LH_P2_0_1, (`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_3_0, t_3_2) -> 
      ((mappend__d8 h_3_0) (concat__d0 t_3_2))
    | `LH_N -> 
      (`LH_N))
and eqList__d0 _lh_eqList_arg1_1 _lh_eqList_arg2_1 =
  (((compareList__d4 _lh_eqList_arg1_1) _lh_eqList_arg2_1) = (`EQ))
and geList__d0 _lh_geList_arg1_1 _lh_geList_arg2_1 =
  (not ((ltList__d2 _lh_geList_arg1_1) _lh_geList_arg2_1))
and gtList__d0 _lh_gtList_arg1_4 _lh_gtList_arg2_4 =
  (let rec _lh_matchIdent_1_4 = ((compareList__d0 _lh_gtList_arg1_4) _lh_gtList_arg2_4) in
    (match _lh_matchIdent_1_4 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d1 _lh_gtList_arg1_1_2 _lh_gtList_arg2_1_2 =
  (let rec _lh_matchIdent_3_2 = ((compareList__d1 _lh_gtList_arg1_1_2) _lh_gtList_arg2_1_2) in
    (match _lh_matchIdent_3_2 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d1_d0 _lh_gtList_arg1_6 _lh_gtList_arg2_6 =
  (let rec _lh_matchIdent_1_6 = ((compareList__d1_d4 _lh_gtList_arg1_6) _lh_gtList_arg2_6) in
    (match _lh_matchIdent_1_6 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d1_d1 _lh_gtList_arg1_2 _lh_gtList_arg2_2 =
  (let rec _lh_matchIdent_1_1 = ((compareList__d1_d5 _lh_gtList_arg1_2) _lh_gtList_arg2_2) in
    (match _lh_matchIdent_1_1 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d2 _lh_gtList_arg1_7 _lh_gtList_arg2_7 =
  (let rec _lh_matchIdent_2_2 = ((compareList__d2 _lh_gtList_arg1_7) _lh_gtList_arg2_7) in
    (match _lh_matchIdent_2_2 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d3 _lh_gtList_arg1_1_0 _lh_gtList_arg2_1_0 =
  (let rec _lh_matchIdent_2_6 = ((compareList__d5 _lh_gtList_arg1_1_0) _lh_gtList_arg2_1_0) in
    (match _lh_matchIdent_2_6 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d4 _lh_gtList_arg1_1_1 _lh_gtList_arg2_1_1 =
  (let rec _lh_matchIdent_3_1 = ((compareList__d6 _lh_gtList_arg1_1_1) _lh_gtList_arg2_1_1) in
    (match _lh_matchIdent_3_1 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d5 _lh_gtList_arg1_8 _lh_gtList_arg2_8 =
  (let rec _lh_matchIdent_2_4 = ((compareList__d7 _lh_gtList_arg1_8) _lh_gtList_arg2_8) in
    (match _lh_matchIdent_2_4 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d6 _lh_gtList_arg1_1 _lh_gtList_arg2_1 =
  (let rec _lh_matchIdent_1_0 = ((compareList__d1_d0 _lh_gtList_arg1_1) _lh_gtList_arg2_1) in
    (match _lh_matchIdent_1_0 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d7 _lh_gtList_arg1_9 _lh_gtList_arg2_9 =
  (let rec _lh_matchIdent_2_5 = ((compareList__d1_d1 _lh_gtList_arg1_9) _lh_gtList_arg2_9) in
    (match _lh_matchIdent_2_5 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d8 _lh_gtList_arg1_3 _lh_gtList_arg2_3 =
  (let rec _lh_matchIdent_1_2 = ((compareList__d1_d2 _lh_gtList_arg1_3) _lh_gtList_arg2_3) in
    (match _lh_matchIdent_1_2 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList__d9 _lh_gtList_arg1_5 _lh_gtList_arg2_5 =
  (let rec _lh_matchIdent_1_5 = ((compareList__d1_d3 _lh_gtList_arg1_5) _lh_gtList_arg2_5) in
    (match _lh_matchIdent_1_5 with
      | `GT -> 
        true
      | _ -> 
        false))
and hash__d0 _lh_hash_arg1_1 =
  (((foldl__d0 (fun acc_1 c_1 -> 
    ((int_of_char c_1) + (acc_1 * 31)))) 0) _lh_hash_arg1_1)
and heapSort__d0 _lh_heapSort_arg1_1 =
  let rec clear_1 = (fun _lh_clear_arg1_1 -> 
    (match _lh_clear_arg1_1 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_clear_Branch_0_1, _lh_clear_Branch_1_1, _lh_clear_Branch_2_1) -> 
        (`LH_C(_lh_clear_Branch_0_1, (clear_1 ((mix_1 _lh_clear_Branch_1_1) _lh_clear_Branch_2_1))))
      | _ -> 
        (failwith "error")))
  and mix_1 = (fun _lh_mix_arg1_1 _lh_mix_arg2_1 -> 
    (match _lh_mix_arg1_1 with
      | `Tip -> 
        _lh_mix_arg2_1
      | _ -> 
        (match _lh_mix_arg2_1 with
          | `Tip -> 
            _lh_mix_arg1_1
          | _ -> 
            (match _lh_mix_arg1_1 with
              | `Branch(_lh_mix_Branch_0_2, _lh_mix_Branch_1_2, _lh_mix_Branch_2_2) -> 
                (match _lh_mix_arg2_1 with
                  | `Branch(_lh_mix_Branch_0_3, _lh_mix_Branch_1_3, _lh_mix_Branch_2_3) -> 
                    (if ((leList__d0 _lh_mix_Branch_0_2) _lh_mix_Branch_0_3) then
                      (`Branch(_lh_mix_Branch_0_2, ((mix_1 _lh_mix_Branch_1_2) _lh_mix_Branch_2_2), (`Branch(_lh_mix_Branch_0_3, _lh_mix_Branch_1_3, _lh_mix_Branch_2_3))))
                    else
                      (`Branch(_lh_mix_Branch_0_3, (`Branch(_lh_mix_Branch_0_2, _lh_mix_Branch_1_2, _lh_mix_Branch_2_2)), ((mix_1 _lh_mix_Branch_1_3) _lh_mix_Branch_2_3))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
  and to_heap_1 = (fun _lh_to_heap_arg1_1 _lh_to_heap_arg2_1 _lh_to_heap_arg3_1 -> 
    (match _lh_to_heap_arg3_1 with
      | `Tip -> 
        (`Branch(_lh_to_heap_arg2_1, (`Tip), (`Tip)))
      | `Branch(_lh_to_heap_Branch_0_1, _lh_to_heap_Branch_1_1, _lh_to_heap_Branch_2_1) -> 
        (if (((leList__d1 _lh_to_heap_arg2_1) _lh_to_heap_Branch_0_1) && (odd__d0 _lh_to_heap_arg1_1)) then
          (`Branch(_lh_to_heap_arg2_1, (((to_heap_1 (div2_1 _lh_to_heap_arg1_1)) _lh_to_heap_Branch_0_1) _lh_to_heap_Branch_1_1), _lh_to_heap_Branch_2_1))
        else
          (if ((leList__d2 _lh_to_heap_arg2_1) _lh_to_heap_Branch_0_1) then
            (`Branch(_lh_to_heap_arg2_1, _lh_to_heap_Branch_1_1, (((to_heap_1 (div2_1 _lh_to_heap_arg1_1)) _lh_to_heap_Branch_0_1) _lh_to_heap_Branch_2_1)))
          else
            (if (odd__d1 _lh_to_heap_arg1_1) then
              (`Branch(_lh_to_heap_Branch_0_1, (((to_heap_1 (div2_1 _lh_to_heap_arg1_1)) _lh_to_heap_arg2_1) _lh_to_heap_Branch_1_1), _lh_to_heap_Branch_2_1))
            else
              (`Branch(_lh_to_heap_Branch_0_1, _lh_to_heap_Branch_1_1, (((to_heap_1 (div2_1 _lh_to_heap_arg1_1)) _lh_to_heap_arg2_1) _lh_to_heap_Branch_2_1))))))
      | _ -> 
        (failwith "error")))
  and div2_1 = (fun _lh_div2_arg1_1 -> 
    (_lh_div2_arg1_1 / 2))
  and heap_1 = (fun _lh_heap_arg1_1 _lh_heap_arg2_1 -> 
    (match _lh_heap_arg2_1 with
      | `LH_N -> 
        (`Tip)
      | `LH_C(_lh_heap_LH_C_0_1, _lh_heap_LH_C_1_1) -> 
        (((to_heap_1 _lh_heap_arg1_1) _lh_heap_LH_C_0_1) ((heap_1 (_lh_heap_arg1_1 + 1)) _lh_heap_LH_C_1_1))
      | _ -> 
        (failwith "error")))
  in (clear_1 ((heap_1 0) _lh_heapSort_arg1_1))
and insertSort__d0 _lh_insertSort_arg1_1 =
  (match _lh_insertSort_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_insertSort_LH_C_0_1, _lh_insertSort_LH_C_1_1) -> 
      (let rec trins_1 = (fun _lh_trins_arg1_1 _lh_trins_arg2_1 _lh_trins_arg3_1 -> 
        (match _lh_trins_arg2_1 with
          | `LH_N -> 
            (match _lh_trins_arg3_1 with
              | `LH_C(_lh_trins_LH_C_0_5, _lh_trins_LH_C_1_5) -> 
                (((trins_1 (`LH_N)) ((mappend__d2 (reverse__d2 _lh_trins_arg1_1)) (`LH_C(_lh_trins_LH_C_0_5, (`LH_N))))) _lh_trins_LH_C_1_5)
              | _ -> 
                (match _lh_trins_arg3_1 with
                  | `LH_N -> 
                    ((mappend__d1 (reverse__d1 _lh_trins_arg1_1)) _lh_trins_arg2_1)
                  | _ -> 
                    (match _lh_trins_arg2_1 with
                      | `LH_C(_lh_trins_LH_C_0_6, _lh_trins_LH_C_1_6) -> 
                        (match _lh_trins_arg3_1 with
                          | `LH_C(_lh_trins_LH_C_0_7, _lh_trins_LH_C_1_7) -> 
                            (if ((ltList__d0 _lh_trins_LH_C_0_6) _lh_trins_LH_C_0_7) then
                              (((trins_1 (`LH_C(_lh_trins_LH_C_0_6, _lh_trins_arg1_1))) _lh_trins_LH_C_1_6) (`LH_C(_lh_trins_LH_C_0_7, _lh_trins_LH_C_1_7)))
                            else
                              (((trins_1 (`LH_N)) ((mappend__d0 (reverse__d0 _lh_trins_arg1_1)) (`LH_C(_lh_trins_LH_C_0_7, (`LH_C(_lh_trins_LH_C_0_6, _lh_trins_LH_C_1_6)))))) _lh_trins_LH_C_1_7))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))))
          | _ -> 
            (match _lh_trins_arg3_1 with
              | `LH_N -> 
                ((mappend__d1 (reverse__d1 _lh_trins_arg1_1)) _lh_trins_arg2_1)
              | _ -> 
                (match _lh_trins_arg2_1 with
                  | `LH_C(_lh_trins_LH_C_0_8, _lh_trins_LH_C_1_8) -> 
                    (match _lh_trins_arg3_1 with
                      | `LH_C(_lh_trins_LH_C_0_9, _lh_trins_LH_C_1_9) -> 
                        (if ((ltList__d0 _lh_trins_LH_C_0_8) _lh_trins_LH_C_0_9) then
                          (((trins_1 (`LH_C(_lh_trins_LH_C_0_8, _lh_trins_arg1_1))) _lh_trins_LH_C_1_8) (`LH_C(_lh_trins_LH_C_0_9, _lh_trins_LH_C_1_9)))
                        else
                          (((trins_1 (`LH_N)) ((mappend__d0 (reverse__d0 _lh_trins_arg1_1)) (`LH_C(_lh_trins_LH_C_0_9, (`LH_C(_lh_trins_LH_C_0_8, _lh_trins_LH_C_1_8)))))) _lh_trins_LH_C_1_9))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
        (((trins_1 (`LH_N)) (`LH_C(_lh_insertSort_LH_C_0_1, (`LH_N)))) _lh_insertSort_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and intersperse__d0 _lh_intersperse_arg1_1 _lh_intersperse_arg2_1 =
  (match _lh_intersperse_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_intersperse_LH_C_0_1, _lh_intersperse_LH_C_1_1) -> 
      (`LH_C(_lh_intersperse_LH_C_0_1, ((prependToAll__d0 _lh_intersperse_arg1_1) _lh_intersperse_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and leList__d0 _lh_leList_arg1_2 _lh_leList_arg2_2 =
  (not ((gtList__d0 _lh_leList_arg1_2) _lh_leList_arg2_2))
and leList__d1 _lh_leList_arg1_1 _lh_leList_arg2_1 =
  (not ((gtList__d1 _lh_leList_arg1_1) _lh_leList_arg2_1))
and leList__d2 _lh_leList_arg1_8 _lh_leList_arg2_8 =
  (not ((gtList__d2 _lh_leList_arg1_8) _lh_leList_arg2_8))
and leList__d3 _lh_leList_arg1_3 _lh_leList_arg2_3 =
  (not ((gtList__d4 _lh_leList_arg1_3) _lh_leList_arg2_3))
and leList__d4 _lh_leList_arg1_4 _lh_leList_arg2_4 =
  (not ((gtList__d5 _lh_leList_arg1_4) _lh_leList_arg2_4))
and leList__d5 _lh_leList_arg1_6 _lh_leList_arg2_6 =
  (not ((gtList__d7 _lh_leList_arg1_6) _lh_leList_arg2_6))
and leList__d6 _lh_leList_arg1_1_0 _lh_leList_arg2_1_0 =
  (not ((gtList__d8 _lh_leList_arg1_1_0) _lh_leList_arg2_1_0))
and leList__d7 _lh_leList_arg1_5 _lh_leList_arg2_5 =
  (not ((gtList__d9 _lh_leList_arg1_5) _lh_leList_arg2_5))
and leList__d8 _lh_leList_arg1_7 _lh_leList_arg2_7 =
  (not ((gtList__d1_d0 _lh_leList_arg1_7) _lh_leList_arg2_7))
and leList__d9 _lh_leList_arg1_9 _lh_leList_arg2_9 =
  (not ((gtList__d1_d1 _lh_leList_arg1_9) _lh_leList_arg2_9))
and lines__d0 _lh_lines_arg1_1 =
  (match _lh_lines_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_1_8 = ((break__d0 (fun x_7 -> 
        (x_7 = '|'))) _lh_lines_arg1_1) in
        (match _lh_matchIdent_1_8 with
          | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
            (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_1_9 = _lh_lines_LH_P2_1_1 in
              (match _lh_matchIdent_1_9 with
                | `LH_N -> 
                  (`LH_N)
                | `LH_C(_lh_lines_LH_C_0_1, _lh_lines_LH_C_1_1) -> 
                  (lines__d0 _lh_lines_LH_C_1_1)
                | _ -> 
                  (failwith "error")))))
          | _ -> 
            (failwith "error"))))
and ltList__d0 _lh_ltList_arg1_1 _lh_ltList_arg2_1 =
  (let rec _lh_matchIdent_1_3 = ((compareList__d3 _lh_ltList_arg1_1) _lh_ltList_arg2_1) in
    (match _lh_matchIdent_1_3 with
      | `LT -> 
        true
      | _ -> 
        false))
and ltList__d1 _lh_ltList_arg1_3 _lh_ltList_arg2_3 =
  (let rec _lh_matchIdent_2_3 = ((compareList__d8 _lh_ltList_arg1_3) _lh_ltList_arg2_3) in
    (match _lh_matchIdent_2_3 with
      | `LT -> 
        true
      | _ -> 
        false))
and ltList__d2 _lh_ltList_arg1_2 _lh_ltList_arg2_2 =
  (let rec _lh_matchIdent_2_0 = ((compareList__d9 _lh_ltList_arg1_2) _lh_ltList_arg2_2) in
    (match _lh_matchIdent_2_0 with
      | `LT -> 
        true
      | _ -> 
        false))
and mangle__d0 _lh_mangle_arg1_1 =
  (let rec sort_1 = (fun _lh_sort_arg1_1 -> 
    ((((foldr__d0 (fun f_1_7 g_1 _lh_funcomp_x_7 -> 
      (f_1_7 (g_1 _lh_funcomp_x_7)))) (fun x_5 -> 
      x_5)) ((intersperse__d0 reverse__d3) (`LH_C(heapSort__d0, (`LH_C(insertSort__d0, (`LH_C(mergeSort__d0, (`LH_C(quickSort__d0, (`LH_C(quickSort2__d0, (`LH_C(quickerSort__d0, (`LH_C(treeSort__d0, (`LH_C(treeSort2__d0, (`LH_N))))))))))))))))))) _lh_sort_arg1_1)) in
    ((fun _lh_funcomp_x_8 -> 
      ((fun _lh_funcomp_x_9 -> 
        (unlines__d0 (sort_1 _lh_funcomp_x_9))) (lines__d0 _lh_funcomp_x_8))) _lh_mangle_arg1_1))
and mergeSort__d0 _lh_mergeSort_arg1_1 =
  let rec merge_1 = (fun _lh_merge_arg1_1 _lh_merge_arg2_1 -> 
    (match _lh_merge_arg1_1 with
      | `LH_N -> 
        _lh_merge_arg2_1
      | _ -> 
        (match _lh_merge_arg2_1 with
          | `LH_N -> 
            _lh_merge_arg1_1
          | _ -> 
            (match _lh_merge_arg1_1 with
              | `LH_C(_lh_merge_LH_C_0_2, _lh_merge_LH_C_1_2) -> 
                (match _lh_merge_arg2_1 with
                  | `LH_C(_lh_merge_LH_C_0_3, _lh_merge_LH_C_1_3) -> 
                    (if ((eqList__d0 _lh_merge_LH_C_0_2) _lh_merge_LH_C_0_3) then
                      (`LH_C(_lh_merge_LH_C_0_2, (`LH_C(_lh_merge_LH_C_0_3, ((merge_1 _lh_merge_LH_C_1_2) _lh_merge_LH_C_1_3)))))
                    else
                      (if ((ltList__d1 _lh_merge_LH_C_0_2) _lh_merge_LH_C_0_3) then
                        (`LH_C(_lh_merge_LH_C_0_2, ((merge_1 _lh_merge_LH_C_1_2) (`LH_C(_lh_merge_LH_C_0_3, _lh_merge_LH_C_1_3)))))
                      else
                        (`LH_C(_lh_merge_LH_C_0_3, ((merge_1 (`LH_C(_lh_merge_LH_C_0_2, _lh_merge_LH_C_1_2))) _lh_merge_LH_C_1_3)))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
  and runsplit_1 = (fun _lh_runsplit_arg1_1 _lh_runsplit_arg2_1 -> 
    (match _lh_runsplit_arg1_1 with
      | `LH_N -> 
        (match _lh_runsplit_arg2_1 with
          | `LH_N -> 
            (`LH_N)
          | _ -> 
            (match _lh_runsplit_arg2_1 with
              | `LH_N -> 
                (`LH_C(_lh_runsplit_arg1_1, (`LH_N)))
              | _ -> 
                (match _lh_runsplit_arg1_1 with
                  | `LH_N -> 
                    (match _lh_runsplit_arg2_1 with
                      | `LH_C(_lh_runsplit_LH_C_0_1_0, _lh_runsplit_LH_C_1_1_0) -> 
                        ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_0, (`LH_N)))) _lh_runsplit_LH_C_1_1_0)
                      | _ -> 
                        (match _lh_runsplit_arg1_1 with
                          | `LH_C(_lh_runsplit_LH_C_0_1_1, _lh_runsplit_LH_C_1_1_1) -> 
                            (match _lh_runsplit_arg2_1 with
                              | `LH_C(_lh_runsplit_LH_C_0_1_2, _lh_runsplit_LH_C_1_1_2) -> 
                                (let rec _lh_matchIdent_2_7 = _lh_runsplit_LH_C_1_1_1 in
                                  (match _lh_matchIdent_2_7 with
                                    | `LH_N -> 
                                      (if ((gtList__d3 _lh_runsplit_LH_C_0_1_2) _lh_runsplit_LH_C_0_1_1) then
                                        ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_1, (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_N)))))) _lh_runsplit_LH_C_1_1_2)
                                      else
                                        (if ((leList__d4 _lh_runsplit_LH_C_0_1_2) _lh_runsplit_LH_C_0_1_1) then
                                          ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_runsplit_LH_C_1_1_1))))) _lh_runsplit_LH_C_1_1_2)
                                        else
                                          (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_runsplit_LH_C_1_1_1)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_N)))) _lh_runsplit_LH_C_1_1_2)))))
                                    | _ -> 
                                      (if ((leList__d3 _lh_runsplit_LH_C_0_1_2) _lh_runsplit_LH_C_0_1_1) then
                                        ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_matchIdent_2_7))))) _lh_runsplit_LH_C_1_1_2)
                                      else
                                        (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_matchIdent_2_7)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_N)))) _lh_runsplit_LH_C_1_1_2))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                  | _ -> 
                    (match _lh_runsplit_arg1_1 with
                      | `LH_C(_lh_runsplit_LH_C_0_1_3, _lh_runsplit_LH_C_1_1_3) -> 
                        (match _lh_runsplit_arg2_1 with
                          | `LH_C(_lh_runsplit_LH_C_0_1_4, _lh_runsplit_LH_C_1_1_4) -> 
                            (let rec _lh_matchIdent_2_8 = _lh_runsplit_LH_C_1_1_3 in
                              (match _lh_matchIdent_2_8 with
                                | `LH_N -> 
                                  (if ((gtList__d3 _lh_runsplit_LH_C_0_1_4) _lh_runsplit_LH_C_0_1_3) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_3, (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_N)))))) _lh_runsplit_LH_C_1_1_4)
                                  else
                                    (if ((leList__d4 _lh_runsplit_LH_C_0_1_4) _lh_runsplit_LH_C_0_1_3) then
                                      ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_runsplit_LH_C_1_1_3))))) _lh_runsplit_LH_C_1_1_4)
                                    else
                                      (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_runsplit_LH_C_1_1_3)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_N)))) _lh_runsplit_LH_C_1_1_4)))))
                                | _ -> 
                                  (if ((leList__d3 _lh_runsplit_LH_C_0_1_4) _lh_runsplit_LH_C_0_1_3) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_matchIdent_2_8))))) _lh_runsplit_LH_C_1_1_4)
                                  else
                                    (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_matchIdent_2_8)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_N)))) _lh_runsplit_LH_C_1_1_4))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))))
      | _ -> 
        (match _lh_runsplit_arg2_1 with
          | `LH_N -> 
            (`LH_C(_lh_runsplit_arg1_1, (`LH_N)))
          | _ -> 
            (match _lh_runsplit_arg1_1 with
              | `LH_N -> 
                (match _lh_runsplit_arg2_1 with
                  | `LH_C(_lh_runsplit_LH_C_0_1_5, _lh_runsplit_LH_C_1_1_5) -> 
                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_5, (`LH_N)))) _lh_runsplit_LH_C_1_1_5)
                  | _ -> 
                    (match _lh_runsplit_arg1_1 with
                      | `LH_C(_lh_runsplit_LH_C_0_1_6, _lh_runsplit_LH_C_1_1_6) -> 
                        (match _lh_runsplit_arg2_1 with
                          | `LH_C(_lh_runsplit_LH_C_0_1_7, _lh_runsplit_LH_C_1_1_7) -> 
                            (let rec _lh_matchIdent_2_9 = _lh_runsplit_LH_C_1_1_6 in
                              (match _lh_matchIdent_2_9 with
                                | `LH_N -> 
                                  (if ((gtList__d3 _lh_runsplit_LH_C_0_1_7) _lh_runsplit_LH_C_0_1_6) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_6, (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_N)))))) _lh_runsplit_LH_C_1_1_7)
                                  else
                                    (if ((leList__d4 _lh_runsplit_LH_C_0_1_7) _lh_runsplit_LH_C_0_1_6) then
                                      ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_runsplit_LH_C_1_1_6))))) _lh_runsplit_LH_C_1_1_7)
                                    else
                                      (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_runsplit_LH_C_1_1_6)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_N)))) _lh_runsplit_LH_C_1_1_7)))))
                                | _ -> 
                                  (if ((leList__d3 _lh_runsplit_LH_C_0_1_7) _lh_runsplit_LH_C_0_1_6) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_matchIdent_2_9))))) _lh_runsplit_LH_C_1_1_7)
                                  else
                                    (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_matchIdent_2_9)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_N)))) _lh_runsplit_LH_C_1_1_7))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))
              | _ -> 
                (match _lh_runsplit_arg1_1 with
                  | `LH_C(_lh_runsplit_LH_C_0_1_8, _lh_runsplit_LH_C_1_1_8) -> 
                    (match _lh_runsplit_arg2_1 with
                      | `LH_C(_lh_runsplit_LH_C_0_1_9, _lh_runsplit_LH_C_1_1_9) -> 
                        (let rec _lh_matchIdent_3_0 = _lh_runsplit_LH_C_1_1_8 in
                          (match _lh_matchIdent_3_0 with
                            | `LH_N -> 
                              (if ((gtList__d3 _lh_runsplit_LH_C_0_1_9) _lh_runsplit_LH_C_0_1_8) then
                                ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_8, (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_N)))))) _lh_runsplit_LH_C_1_1_9)
                              else
                                (if ((leList__d4 _lh_runsplit_LH_C_0_1_9) _lh_runsplit_LH_C_0_1_8) then
                                  ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_runsplit_LH_C_1_1_8))))) _lh_runsplit_LH_C_1_1_9)
                                else
                                  (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_runsplit_LH_C_1_1_8)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_N)))) _lh_runsplit_LH_C_1_1_9)))))
                            | _ -> 
                              (if ((leList__d3 _lh_runsplit_LH_C_0_1_9) _lh_runsplit_LH_C_0_1_8) then
                                ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_matchIdent_3_0))))) _lh_runsplit_LH_C_1_1_9)
                              else
                                (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_matchIdent_3_0)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_N)))) _lh_runsplit_LH_C_1_1_9))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))))
  and merge_lists_1 = (fun _lh_merge_lists_arg1_1 -> 
    (match _lh_merge_lists_arg1_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_merge_lists_LH_C_0_1, _lh_merge_lists_LH_C_1_1) -> 
        ((merge_1 _lh_merge_lists_LH_C_0_1) (merge_lists_1 _lh_merge_lists_LH_C_1_1))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_1_1 -> 
    (merge_lists_1 ((runsplit_1 (`LH_N)) _lh_funcomp_x_1_1))) _lh_mergeSort_arg1_1)
and partition__d0 _lh_partition_arg1_1 _lh_partition_arg2_1 =
  (((foldr__d1 (select__d0 _lh_partition_arg1_1)) (`LH_P2((`LH_N), (`LH_N)))) _lh_partition_arg2_1)
and quickSort2__d0 _lh_quickSort2_arg1_1 =
  (match _lh_quickSort2_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort2_LH_C_0_1, _lh_quickSort2_LH_C_1_1) -> 
      (let rec _lh_matchIdent_1_7 = ((partition__d0 ((fun x_6 y_1 -> 
        ((geList__d0 x_6) y_1)) _lh_quickSort2_LH_C_0_1)) _lh_quickSort2_LH_C_1_1) in
        (match _lh_matchIdent_1_7 with
          | `LH_P2(_lh_quickSort2_LH_P2_0_1, _lh_quickSort2_LH_P2_1_1) -> 
            ((mappend__d3 (quickSort2__d0 _lh_quickSort2_LH_P2_0_1)) (`LH_C(_lh_quickSort2_LH_C_0_1, (quickSort2__d0 _lh_quickSort2_LH_P2_1_1))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and quickSort__d0 _lh_quickSort_arg1_1 =
  (match _lh_quickSort_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort_LH_C_0_1, _lh_quickSort_LH_C_1_1) -> 
      ((mappend__d4 (quickSort__d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (if ((leList__d5 _lh_listcomp_fun_ls_h_2) _lh_quickSort_LH_C_0_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
            else
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 _lh_quickSort_LH_C_1_1)))) (`LH_C(_lh_quickSort_LH_C_0_1, (quickSort__d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (if ((gtList__d6 _lh_listcomp_fun_ls_h_3) _lh_quickSort_LH_C_0_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_3, (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
            else
              (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3 _lh_quickSort_LH_C_1_1))))))
    | _ -> 
      (failwith "error"))
and quickerSort__d0 _lh_quickerSort_arg1_1 =
  (match _lh_quickerSort_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickerSort_LH_C_0_1, _lh_quickerSort_LH_C_1_1) -> 
      (match _lh_quickerSort_LH_C_1_1 with
        | `LH_N -> 
          (`LH_C(_lh_quickerSort_LH_C_0_1, (`LH_N)))
        | _ -> 
          (let rec split_1 = (fun _lh_split_arg1_1 _lh_split_arg2_1 _lh_split_arg3_1 _lh_split_arg4_1 -> 
            (match _lh_split_arg4_1 with
              | `LH_N -> 
                ((mappend__d5 (quickerSort__d0 _lh_split_arg2_1)) (`LH_C(_lh_split_arg1_1, (quickerSort__d0 _lh_split_arg3_1))))
              | `LH_C(_lh_split_LH_C_0_1, _lh_split_LH_C_1_1) -> 
                (if ((leList__d6 _lh_split_LH_C_0_1) _lh_split_arg1_1) then
                  ((((split_1 _lh_split_arg1_1) (`LH_C(_lh_split_LH_C_0_1, _lh_split_arg2_1))) _lh_split_arg3_1) _lh_split_LH_C_1_1)
                else
                  ((((split_1 _lh_split_arg1_1) _lh_split_arg2_1) (`LH_C(_lh_split_LH_C_0_1, _lh_split_arg3_1))) _lh_split_LH_C_1_1))
              | _ -> 
                (failwith "error"))) in
            ((((split_1 _lh_quickerSort_LH_C_0_1) (`LH_N)) (`LH_N)) _lh_quickerSort_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and reverse__d0 ls_2_7 =
  ((reverse_helper__d0 ls_2_7) (`LH_N))
and reverse__d1 ls_3_2 =
  ((reverse_helper__d1 ls_3_2) (`LH_N))
and reverse__d2 ls_3_1 =
  ((reverse_helper__d2 ls_3_1) (`LH_N))
and reverse__d3 ls_2_1 =
  ((reverse_helper__d3 ls_2_1) (`LH_N))
and testSorting_nofib__d0 _lh_testSorting_nofib_arg1_1 =
  (let rec f_1_8 = (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('M', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('o', (`LH_C('l', (`LH_C('.', (`LH_C('M', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('D', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_C('.', (`LH_C('L', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_C('E', (`LH_C('n', (`LH_C('v', (`LH_C('i', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('f', (`LH_C('i', (`LH_C('b', (`LH_C('U', (`LH_C('t', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C('$', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('_', (`LH_C(':', (`LH_C('s', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('F', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C(')', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C(' ', (`LH_C('-', (`LH_C('>', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('u', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('.', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('=', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_C('h', (`LH_C('e', (`LH_C('a', (`LH_C('p', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('r', (`LH_C('g', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(']', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (hash__d0 (mangle__d0 f_1_8)))
and treeSort2__d0 _lh_treeSort2_arg1_1 =
  let rec mkTree_2 = (fun _lh_mkTree_arg1_2 -> 
    (let rec to_tree_2 = (fun _lh_to_tree_arg1_2 _lh_to_tree_arg2_2 -> 
      (match _lh_to_tree_arg2_2 with
        | `Tip2 -> 
          (`Twig2(_lh_to_tree_arg1_2))
        | `Twig2(_lh_to_tree_Twig2_0_1) -> 
          (if ((leList__d7 _lh_to_tree_arg1_2) _lh_to_tree_Twig2_0_1) then
            (`Branch2(_lh_to_tree_Twig2_0_1, (`Twig2(_lh_to_tree_arg1_2)), (`Tip2)))
          else
            (`Branch2(_lh_to_tree_Twig2_0_1, (`Tip2), (`Twig2(_lh_to_tree_arg1_2)))))
        | `Branch2(_lh_to_tree_Branch2_0_1, _lh_to_tree_Branch2_1_1, _lh_to_tree_Branch2_2_1) -> 
          (if ((leList__d8 _lh_to_tree_arg1_2) _lh_to_tree_Branch2_0_1) then
            (`Branch2(_lh_to_tree_Branch2_0_1, ((to_tree_2 _lh_to_tree_arg1_2) _lh_to_tree_Branch2_1_1), _lh_to_tree_Branch2_2_1))
          else
            (`Branch2(_lh_to_tree_Branch2_0_1, _lh_to_tree_Branch2_1_1, ((to_tree_2 _lh_to_tree_arg1_2) _lh_to_tree_Branch2_2_1))))
        | _ -> 
          (failwith "error"))) in
      (((foldr__d2 to_tree_2) (`Tip2)) _lh_mkTree_arg1_2)))
  and readTree_2 = (fun _lh_readTree_arg1_2 -> 
    (match _lh_readTree_arg1_2 with
      | `Tip2 -> 
        (`LH_N)
      | `Twig2(_lh_readTree_Twig2_0_1) -> 
        (`LH_C(_lh_readTree_Twig2_0_1, (`LH_N)))
      | `Branch2(_lh_readTree_Branch2_0_1, _lh_readTree_Branch2_1_1, _lh_readTree_Branch2_2_1) -> 
        ((mappend__d6 (readTree_2 _lh_readTree_Branch2_1_1)) (`LH_C(_lh_readTree_Branch2_0_1, (readTree_2 _lh_readTree_Branch2_2_1))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_6 -> 
    (readTree_2 (mkTree_2 _lh_funcomp_x_6))) _lh_treeSort2_arg1_1)
and treeSort__d0 _lh_treeSort_arg1_1 =
  let rec mkTree_3 = (fun _lh_mkTree_arg1_3 -> 
    (let rec to_tree_3 = (fun _lh_to_tree_arg1_3 _lh_to_tree_arg2_3 -> 
      (match _lh_to_tree_arg2_3 with
        | `Tip -> 
          (`Branch(_lh_to_tree_arg1_3, (`Tip), (`Tip)))
        | `Branch(_lh_to_tree_Branch_0_1, _lh_to_tree_Branch_1_1, _lh_to_tree_Branch_2_1) -> 
          (if ((leList__d9 _lh_to_tree_arg1_3) _lh_to_tree_Branch_0_1) then
            (`Branch(_lh_to_tree_Branch_0_1, ((to_tree_3 _lh_to_tree_arg1_3) _lh_to_tree_Branch_1_1), _lh_to_tree_Branch_2_1))
          else
            (`Branch(_lh_to_tree_Branch_0_1, _lh_to_tree_Branch_1_1, ((to_tree_3 _lh_to_tree_arg1_3) _lh_to_tree_Branch_2_1))))
        | _ -> 
          (failwith "error"))) in
      (((foldr__d3 to_tree_3) (`Tip)) _lh_mkTree_arg1_3)))
  and readTree_3 = (fun _lh_readTree_arg1_3 -> 
    (match _lh_readTree_arg1_3 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_readTree_Branch_0_1, _lh_readTree_Branch_1_1, _lh_readTree_Branch_2_1) -> 
        ((mappend__d7 (readTree_3 _lh_readTree_Branch_1_1)) (`LH_C(_lh_readTree_Branch_0_1, (readTree_3 _lh_readTree_Branch_2_1))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_1_0 -> 
    (readTree_3 (mkTree_3 _lh_funcomp_x_1_0))) _lh_treeSort_arg1_1)
and unlines__d0 _lh_unlines_arg1_1 =
  (concat__d0 ((map__d0 (fun l_1 -> 
    ((mappend__d9 l_1) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_1));;
end;;

