(*
touch ./Sorting_nofib.mli && ocamlc ./Sorting_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Sorting_nofib.ml -o "./Sorting_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Sorting_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
let rec break_d0 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_2_1 = ((break_d0 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_2_1 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec compareList_d0 _lh_compareList_arg1_4 _lh_compareList_arg2_4 =
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
            ((compareList_d0 _lh_compareList_LH_C_1_1_3) _lh_compareList_LH_C_1_1_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_3) < (int_of_char _lh_compareList_LH_C_0_1_4)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1 _lh_compareList_arg1_1_5 _lh_compareList_arg2_1_5 =
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
            ((compareList_d1 _lh_compareList_LH_C_1_4_6) _lh_compareList_LH_C_1_4_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_6) < (int_of_char _lh_compareList_LH_C_0_4_7)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d0 _lh_compareList_arg1_8 _lh_compareList_arg2_8 =
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
            ((compareList_d1_d0 _lh_compareList_LH_C_1_2_5) _lh_compareList_LH_C_1_2_6)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_5) < (int_of_char _lh_compareList_LH_C_0_2_6)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d1 _lh_compareList_arg1_2 _lh_compareList_arg2_2 =
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
            ((compareList_d1_d1 _lh_compareList_LH_C_1_7) _lh_compareList_LH_C_1_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7) < (int_of_char _lh_compareList_LH_C_0_8)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d2 _lh_compareList_arg1_7 _lh_compareList_arg2_7 =
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
            ((compareList_d1_d2 _lh_compareList_LH_C_1_2_2) _lh_compareList_LH_C_1_2_3)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_2) < (int_of_char _lh_compareList_LH_C_0_2_3)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d3 _lh_compareList_arg1_1_1 _lh_compareList_arg2_1_1 =
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
            ((compareList_d1_d3 _lh_compareList_LH_C_1_3_4) _lh_compareList_LH_C_1_3_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_4) < (int_of_char _lh_compareList_LH_C_0_3_5)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d4 _lh_compareList_arg1_5 _lh_compareList_arg2_5 =
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
            ((compareList_d1_d4 _lh_compareList_LH_C_1_1_6) _lh_compareList_LH_C_1_1_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_6) < (int_of_char _lh_compareList_LH_C_0_1_7)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d5 _lh_compareList_arg1_1_3 _lh_compareList_arg2_1_3 =
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
            ((compareList_d1_d5 _lh_compareList_LH_C_1_4_0) _lh_compareList_LH_C_1_4_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_0) < (int_of_char _lh_compareList_LH_C_0_4_1)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d2 _lh_compareList_arg1_1_2 _lh_compareList_arg2_1_2 =
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
            ((compareList_d2 _lh_compareList_LH_C_1_3_7) _lh_compareList_LH_C_1_3_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_7) < (int_of_char _lh_compareList_LH_C_0_3_8)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d3 _lh_compareList_arg1_1_6 _lh_compareList_arg2_1_6 =
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
            ((compareList_d3 _lh_compareList_LH_C_1_4_9) _lh_compareList_LH_C_1_5_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_9) < (int_of_char _lh_compareList_LH_C_0_5_0)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d4 _lh_compareList_arg1_1_0 _lh_compareList_arg2_1_0 =
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
            ((compareList_d4 _lh_compareList_LH_C_1_3_1) _lh_compareList_LH_C_1_3_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_1) < (int_of_char _lh_compareList_LH_C_0_3_2)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d5 _lh_compareList_arg1_3 _lh_compareList_arg2_3 =
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
            ((compareList_d5 _lh_compareList_LH_C_1_1_0) _lh_compareList_LH_C_1_1_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_0) < (int_of_char _lh_compareList_LH_C_0_1_1)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d6 _lh_compareList_arg1_9 _lh_compareList_arg2_9 =
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
            ((compareList_d6 _lh_compareList_LH_C_1_2_8) _lh_compareList_LH_C_1_2_9)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_8) < (int_of_char _lh_compareList_LH_C_0_2_9)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d7 _lh_compareList_arg1_1_4 _lh_compareList_arg2_1_4 =
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
            ((compareList_d7 _lh_compareList_LH_C_1_4_3) _lh_compareList_LH_C_1_4_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_3) < (int_of_char _lh_compareList_LH_C_0_4_4)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d8 _lh_compareList_arg1_1 _lh_compareList_arg2_1 =
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
            ((compareList_d8 _lh_compareList_LH_C_1_4) _lh_compareList_LH_C_1_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4) < (int_of_char _lh_compareList_LH_C_0_5)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d9 _lh_compareList_arg1_6 _lh_compareList_arg2_6 =
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
            ((compareList_d9 _lh_compareList_LH_C_1_1_9) _lh_compareList_LH_C_1_2_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_9) < (int_of_char _lh_compareList_LH_C_0_2_0)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec foldl_d0 f_2_1 i_7 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_5, t_3_7) -> 
      (((foldl_d0 f_2_1) ((f_2_1 i_7) h_3_5)) t_3_7)
    | `LH_N -> 
      i_7);;
let rec foldr_d0 f_1_4 i_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      ((f_1_4 h_2_2) (((foldr_d0 f_1_4) i_3) t_2_4))
    | `LH_N -> 
      i_3);;
let rec foldr_d1 f_1_5 i_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      ((f_1_5 h_2_4) (((foldr_d1 f_1_5) i_4) t_2_6))
    | `LH_N -> 
      i_4);;
let rec foldr_d2 f_2_0 i_6 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_3, t_3_5) -> 
      ((f_2_0 h_3_3) (((foldr_d2 f_2_0) i_6) t_3_5))
    | `LH_N -> 
      i_6);;
let rec foldr_d3 f_1_6 i_5 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_9, t_3_1) -> 
      ((f_1_6 h_2_9) (((foldr_d3 f_1_6) i_5) t_3_1))
    | `LH_N -> 
      i_5);;
let rec mappend_d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend_d0 t_2_7) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend_d1 t_2_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d2 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C(h_3_8, ((mappend_d2 t_4_0) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend_d3 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend_d3 t_3_9) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend_d4 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend_d4 t_2_8) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_d5 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C(h_3_1, ((mappend_d5 t_3_3) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend_d6 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend_d6 t_4_1) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend_d7 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend_d7 t_2_9) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_d8 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_4_0, t_4_2) -> 
      (`LH_C(h_4_0, ((mappend_d8 t_4_2) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend_d9 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend_d9 t_2_5) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec map_d0 f_1_9 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C((f_1_9 h_3_2), ((map_d0 f_1_9) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec odd_d0 _lh_odd_arg1_1 =
  ((_lh_odd_arg1_1 mod 2) = 0);;
let rec odd_d1 _lh_odd_arg1_2 =
  ((_lh_odd_arg1_2 mod 2) = 0);;
let rec prependToAll_d0 _lh_prependToAll_arg1_1 _lh_prependToAll_arg2_1 =
  (match _lh_prependToAll_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_prependToAll_LH_C_0_1, _lh_prependToAll_LH_C_1_1) -> 
      (`LH_C(_lh_prependToAll_arg1_1, (`LH_C(_lh_prependToAll_LH_C_0_1, ((prependToAll_d0 _lh_prependToAll_arg1_1) _lh_prependToAll_LH_C_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_d0 ls_2_3 a_6 =
  (match ls_2_3 with
    | `LH_C(h_2_8, t_3_0) -> 
      ((reverse_helper_d0 t_3_0) (`LH_C(h_2_8, a_6)))
    | `LH_N -> 
      a_6);;
let rec reverse_helper_d1 ls_1_9 a_5 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      ((reverse_helper_d1 t_2_2) (`LH_C(h_2_0, a_5)))
    | `LH_N -> 
      a_5);;
let rec reverse_helper_d2 ls_3_0 a_8 =
  (match ls_3_0 with
    | `LH_C(h_3_6, t_3_8) -> 
      ((reverse_helper_d2 t_3_8) (`LH_C(h_3_6, a_8)))
    | `LH_N -> 
      a_8);;
let rec reverse_helper_d3 ls_2_8 a_7 =
  (match ls_2_8 with
    | `LH_C(h_3_4, t_3_6) -> 
      ((reverse_helper_d3 t_3_6) (`LH_C(h_3_4, a_7)))
    | `LH_N -> 
      a_7);;
let rec select_d0 _lh_select_arg1_1 _lh_select_arg2_1 _lh_select_arg3_1 =
  (match _lh_select_arg3_1 with
    | `LH_P2(_lh_select_LH_P2_0_1, _lh_select_LH_P2_1_1) -> 
      (if (_lh_select_arg1_1 _lh_select_arg2_1) then
        (`LH_P2((`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_0_1)), _lh_select_LH_P2_1_1))
      else
        (`LH_P2(_lh_select_LH_P2_0_1, (`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec concat_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_3_0, t_3_2) -> 
      ((mappend_d8 h_3_0) (concat_d0 t_3_2))
    | `LH_N -> 
      (`LH_N))
and eqList_d0 _lh_eqList_arg1_1 _lh_eqList_arg2_1 =
  (((compareList_d4 _lh_eqList_arg1_1) _lh_eqList_arg2_1) = (`EQ))
and geList_d0 _lh_geList_arg1_1 _lh_geList_arg2_1 =
  (not ((ltList_d2 _lh_geList_arg1_1) _lh_geList_arg2_1))
and gtList_d0 _lh_gtList_arg1_4 _lh_gtList_arg2_4 =
  (let rec _lh_matchIdent_1_4 = ((compareList_d0 _lh_gtList_arg1_4) _lh_gtList_arg2_4) in
    (match _lh_matchIdent_1_4 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d1 _lh_gtList_arg1_1_2 _lh_gtList_arg2_1_2 =
  (let rec _lh_matchIdent_3_2 = ((compareList_d1 _lh_gtList_arg1_1_2) _lh_gtList_arg2_1_2) in
    (match _lh_matchIdent_3_2 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d1_d0 _lh_gtList_arg1_6 _lh_gtList_arg2_6 =
  (let rec _lh_matchIdent_1_6 = ((compareList_d1_d4 _lh_gtList_arg1_6) _lh_gtList_arg2_6) in
    (match _lh_matchIdent_1_6 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d1_d1 _lh_gtList_arg1_2 _lh_gtList_arg2_2 =
  (let rec _lh_matchIdent_1_1 = ((compareList_d1_d5 _lh_gtList_arg1_2) _lh_gtList_arg2_2) in
    (match _lh_matchIdent_1_1 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d2 _lh_gtList_arg1_7 _lh_gtList_arg2_7 =
  (let rec _lh_matchIdent_2_2 = ((compareList_d2 _lh_gtList_arg1_7) _lh_gtList_arg2_7) in
    (match _lh_matchIdent_2_2 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d3 _lh_gtList_arg1_1_0 _lh_gtList_arg2_1_0 =
  (let rec _lh_matchIdent_2_6 = ((compareList_d5 _lh_gtList_arg1_1_0) _lh_gtList_arg2_1_0) in
    (match _lh_matchIdent_2_6 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d4 _lh_gtList_arg1_1_1 _lh_gtList_arg2_1_1 =
  (let rec _lh_matchIdent_3_1 = ((compareList_d6 _lh_gtList_arg1_1_1) _lh_gtList_arg2_1_1) in
    (match _lh_matchIdent_3_1 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d5 _lh_gtList_arg1_8 _lh_gtList_arg2_8 =
  (let rec _lh_matchIdent_2_4 = ((compareList_d7 _lh_gtList_arg1_8) _lh_gtList_arg2_8) in
    (match _lh_matchIdent_2_4 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d6 _lh_gtList_arg1_1 _lh_gtList_arg2_1 =
  (let rec _lh_matchIdent_1_0 = ((compareList_d1_d0 _lh_gtList_arg1_1) _lh_gtList_arg2_1) in
    (match _lh_matchIdent_1_0 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d7 _lh_gtList_arg1_9 _lh_gtList_arg2_9 =
  (let rec _lh_matchIdent_2_5 = ((compareList_d1_d1 _lh_gtList_arg1_9) _lh_gtList_arg2_9) in
    (match _lh_matchIdent_2_5 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d8 _lh_gtList_arg1_3 _lh_gtList_arg2_3 =
  (let rec _lh_matchIdent_1_2 = ((compareList_d1_d2 _lh_gtList_arg1_3) _lh_gtList_arg2_3) in
    (match _lh_matchIdent_1_2 with
      | `GT -> 
        true
      | _ -> 
        false))
and gtList_d9 _lh_gtList_arg1_5 _lh_gtList_arg2_5 =
  (let rec _lh_matchIdent_1_5 = ((compareList_d1_d3 _lh_gtList_arg1_5) _lh_gtList_arg2_5) in
    (match _lh_matchIdent_1_5 with
      | `GT -> 
        true
      | _ -> 
        false))
and hash_d0 _lh_hash_arg1_1 =
  (((foldl_d0 (fun acc_1 c_1 -> 
    ((int_of_char c_1) + (acc_1 * 31)))) 0) _lh_hash_arg1_1)
and heapSort_d0 _lh_heapSort_arg1_1 =
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
                    (if ((leList_d0 _lh_mix_Branch_0_2) _lh_mix_Branch_0_3) then
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
        (if (((leList_d1 _lh_to_heap_arg2_1) _lh_to_heap_Branch_0_1) && (odd_d0 _lh_to_heap_arg1_1)) then
          (`Branch(_lh_to_heap_arg2_1, (((to_heap_1 (div2_1 _lh_to_heap_arg1_1)) _lh_to_heap_Branch_0_1) _lh_to_heap_Branch_1_1), _lh_to_heap_Branch_2_1))
        else
          (if ((leList_d2 _lh_to_heap_arg2_1) _lh_to_heap_Branch_0_1) then
            (`Branch(_lh_to_heap_arg2_1, _lh_to_heap_Branch_1_1, (((to_heap_1 (div2_1 _lh_to_heap_arg1_1)) _lh_to_heap_Branch_0_1) _lh_to_heap_Branch_2_1)))
          else
            (if (odd_d1 _lh_to_heap_arg1_1) then
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
and insertSort_d0 _lh_insertSort_arg1_1 =
  (match _lh_insertSort_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_insertSort_LH_C_0_1, _lh_insertSort_LH_C_1_1) -> 
      (let rec trins_1 = (fun _lh_trins_arg1_1 _lh_trins_arg2_1 _lh_trins_arg3_1 -> 
        (match _lh_trins_arg2_1 with
          | `LH_N -> 
            (match _lh_trins_arg3_1 with
              | `LH_C(_lh_trins_LH_C_0_5, _lh_trins_LH_C_1_5) -> 
                (((trins_1 (`LH_N)) ((mappend_d2 (reverse_d2 _lh_trins_arg1_1)) (`LH_C(_lh_trins_LH_C_0_5, (`LH_N))))) _lh_trins_LH_C_1_5)
              | _ -> 
                (match _lh_trins_arg3_1 with
                  | `LH_N -> 
                    ((mappend_d1 (reverse_d1 _lh_trins_arg1_1)) _lh_trins_arg2_1)
                  | _ -> 
                    (match _lh_trins_arg2_1 with
                      | `LH_C(_lh_trins_LH_C_0_6, _lh_trins_LH_C_1_6) -> 
                        (match _lh_trins_arg3_1 with
                          | `LH_C(_lh_trins_LH_C_0_7, _lh_trins_LH_C_1_7) -> 
                            (if ((ltList_d0 _lh_trins_LH_C_0_6) _lh_trins_LH_C_0_7) then
                              (((trins_1 (`LH_C(_lh_trins_LH_C_0_6, _lh_trins_arg1_1))) _lh_trins_LH_C_1_6) (`LH_C(_lh_trins_LH_C_0_7, _lh_trins_LH_C_1_7)))
                            else
                              (((trins_1 (`LH_N)) ((mappend_d0 (reverse_d0 _lh_trins_arg1_1)) (`LH_C(_lh_trins_LH_C_0_7, (`LH_C(_lh_trins_LH_C_0_6, _lh_trins_LH_C_1_6)))))) _lh_trins_LH_C_1_7))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))))
          | _ -> 
            (match _lh_trins_arg3_1 with
              | `LH_N -> 
                ((mappend_d1 (reverse_d1 _lh_trins_arg1_1)) _lh_trins_arg2_1)
              | _ -> 
                (match _lh_trins_arg2_1 with
                  | `LH_C(_lh_trins_LH_C_0_8, _lh_trins_LH_C_1_8) -> 
                    (match _lh_trins_arg3_1 with
                      | `LH_C(_lh_trins_LH_C_0_9, _lh_trins_LH_C_1_9) -> 
                        (if ((ltList_d0 _lh_trins_LH_C_0_8) _lh_trins_LH_C_0_9) then
                          (((trins_1 (`LH_C(_lh_trins_LH_C_0_8, _lh_trins_arg1_1))) _lh_trins_LH_C_1_8) (`LH_C(_lh_trins_LH_C_0_9, _lh_trins_LH_C_1_9)))
                        else
                          (((trins_1 (`LH_N)) ((mappend_d0 (reverse_d0 _lh_trins_arg1_1)) (`LH_C(_lh_trins_LH_C_0_9, (`LH_C(_lh_trins_LH_C_0_8, _lh_trins_LH_C_1_8)))))) _lh_trins_LH_C_1_9))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
        (((trins_1 (`LH_N)) (`LH_C(_lh_insertSort_LH_C_0_1, (`LH_N)))) _lh_insertSort_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and intersperse_d0 _lh_intersperse_arg1_1 _lh_intersperse_arg2_1 =
  (match _lh_intersperse_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_intersperse_LH_C_0_1, _lh_intersperse_LH_C_1_1) -> 
      (`LH_C(_lh_intersperse_LH_C_0_1, ((prependToAll_d0 _lh_intersperse_arg1_1) _lh_intersperse_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and leList_d0 _lh_leList_arg1_2 _lh_leList_arg2_2 =
  (not ((gtList_d0 _lh_leList_arg1_2) _lh_leList_arg2_2))
and leList_d1 _lh_leList_arg1_1 _lh_leList_arg2_1 =
  (not ((gtList_d1 _lh_leList_arg1_1) _lh_leList_arg2_1))
and leList_d2 _lh_leList_arg1_8 _lh_leList_arg2_8 =
  (not ((gtList_d2 _lh_leList_arg1_8) _lh_leList_arg2_8))
and leList_d3 _lh_leList_arg1_3 _lh_leList_arg2_3 =
  (not ((gtList_d4 _lh_leList_arg1_3) _lh_leList_arg2_3))
and leList_d4 _lh_leList_arg1_4 _lh_leList_arg2_4 =
  (not ((gtList_d5 _lh_leList_arg1_4) _lh_leList_arg2_4))
and leList_d5 _lh_leList_arg1_6 _lh_leList_arg2_6 =
  (not ((gtList_d7 _lh_leList_arg1_6) _lh_leList_arg2_6))
and leList_d6 _lh_leList_arg1_1_0 _lh_leList_arg2_1_0 =
  (not ((gtList_d8 _lh_leList_arg1_1_0) _lh_leList_arg2_1_0))
and leList_d7 _lh_leList_arg1_5 _lh_leList_arg2_5 =
  (not ((gtList_d9 _lh_leList_arg1_5) _lh_leList_arg2_5))
and leList_d8 _lh_leList_arg1_7 _lh_leList_arg2_7 =
  (not ((gtList_d1_d0 _lh_leList_arg1_7) _lh_leList_arg2_7))
and leList_d9 _lh_leList_arg1_9 _lh_leList_arg2_9 =
  (not ((gtList_d1_d1 _lh_leList_arg1_9) _lh_leList_arg2_9))
and lines_d0 _lh_lines_arg1_1 =
  (match _lh_lines_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_1_8 = ((break_d0 (fun x_7 -> 
        (x_7 = '|'))) _lh_lines_arg1_1) in
        (match _lh_matchIdent_1_8 with
          | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
            (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_1_9 = _lh_lines_LH_P2_1_1 in
              (match _lh_matchIdent_1_9 with
                | `LH_N -> 
                  (`LH_N)
                | `LH_C(_lh_lines_LH_C_0_1, _lh_lines_LH_C_1_1) -> 
                  (lines_d0 _lh_lines_LH_C_1_1)
                | _ -> 
                  (failwith "error")))))
          | _ -> 
            (failwith "error"))))
and ltList_d0 _lh_ltList_arg1_1 _lh_ltList_arg2_1 =
  (let rec _lh_matchIdent_1_3 = ((compareList_d3 _lh_ltList_arg1_1) _lh_ltList_arg2_1) in
    (match _lh_matchIdent_1_3 with
      | `LT -> 
        true
      | _ -> 
        false))
and ltList_d1 _lh_ltList_arg1_3 _lh_ltList_arg2_3 =
  (let rec _lh_matchIdent_2_3 = ((compareList_d8 _lh_ltList_arg1_3) _lh_ltList_arg2_3) in
    (match _lh_matchIdent_2_3 with
      | `LT -> 
        true
      | _ -> 
        false))
and ltList_d2 _lh_ltList_arg1_2 _lh_ltList_arg2_2 =
  (let rec _lh_matchIdent_2_0 = ((compareList_d9 _lh_ltList_arg1_2) _lh_ltList_arg2_2) in
    (match _lh_matchIdent_2_0 with
      | `LT -> 
        true
      | _ -> 
        false))
and mangle_d0 _lh_mangle_arg1_1 =
  (let rec sort_1 = (fun _lh_sort_arg1_1 -> 
    ((((foldr_d0 (fun f_1_7 g_1 _lh_funcomp_x_7 -> 
      (f_1_7 (g_1 _lh_funcomp_x_7)))) (fun x_5 -> 
      x_5)) ((intersperse_d0 reverse_d3) (`LH_C(heapSort_d0, (`LH_C(insertSort_d0, (`LH_C(mergeSort_d0, (`LH_C(quickSort_d0, (`LH_C(quickSort2_d0, (`LH_C(quickerSort_d0, (`LH_C(treeSort_d0, (`LH_C(treeSort2_d0, (`LH_N))))))))))))))))))) _lh_sort_arg1_1)) in
    ((fun _lh_funcomp_x_8 -> 
      ((fun _lh_funcomp_x_9 -> 
        (unlines_d0 (sort_1 _lh_funcomp_x_9))) (lines_d0 _lh_funcomp_x_8))) _lh_mangle_arg1_1))
and mergeSort_d0 _lh_mergeSort_arg1_1 =
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
                    (if ((eqList_d0 _lh_merge_LH_C_0_2) _lh_merge_LH_C_0_3) then
                      (`LH_C(_lh_merge_LH_C_0_2, (`LH_C(_lh_merge_LH_C_0_3, ((merge_1 _lh_merge_LH_C_1_2) _lh_merge_LH_C_1_3)))))
                    else
                      (if ((ltList_d1 _lh_merge_LH_C_0_2) _lh_merge_LH_C_0_3) then
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
                                      (if ((gtList_d3 _lh_runsplit_LH_C_0_1_2) _lh_runsplit_LH_C_0_1_1) then
                                        ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_1, (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_N)))))) _lh_runsplit_LH_C_1_1_2)
                                      else
                                        (if ((leList_d4 _lh_runsplit_LH_C_0_1_2) _lh_runsplit_LH_C_0_1_1) then
                                          ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_runsplit_LH_C_1_1_1))))) _lh_runsplit_LH_C_1_1_2)
                                        else
                                          (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_runsplit_LH_C_1_1_1)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_N)))) _lh_runsplit_LH_C_1_1_2)))))
                                    | _ -> 
                                      (if ((leList_d3 _lh_runsplit_LH_C_0_1_2) _lh_runsplit_LH_C_0_1_1) then
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
                                  (if ((gtList_d3 _lh_runsplit_LH_C_0_1_4) _lh_runsplit_LH_C_0_1_3) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_3, (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_N)))))) _lh_runsplit_LH_C_1_1_4)
                                  else
                                    (if ((leList_d4 _lh_runsplit_LH_C_0_1_4) _lh_runsplit_LH_C_0_1_3) then
                                      ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_runsplit_LH_C_1_1_3))))) _lh_runsplit_LH_C_1_1_4)
                                    else
                                      (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_runsplit_LH_C_1_1_3)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_N)))) _lh_runsplit_LH_C_1_1_4)))))
                                | _ -> 
                                  (if ((leList_d3 _lh_runsplit_LH_C_0_1_4) _lh_runsplit_LH_C_0_1_3) then
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
                                  (if ((gtList_d3 _lh_runsplit_LH_C_0_1_7) _lh_runsplit_LH_C_0_1_6) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_6, (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_N)))))) _lh_runsplit_LH_C_1_1_7)
                                  else
                                    (if ((leList_d4 _lh_runsplit_LH_C_0_1_7) _lh_runsplit_LH_C_0_1_6) then
                                      ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_runsplit_LH_C_1_1_6))))) _lh_runsplit_LH_C_1_1_7)
                                    else
                                      (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_runsplit_LH_C_1_1_6)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_N)))) _lh_runsplit_LH_C_1_1_7)))))
                                | _ -> 
                                  (if ((leList_d3 _lh_runsplit_LH_C_0_1_7) _lh_runsplit_LH_C_0_1_6) then
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
                              (if ((gtList_d3 _lh_runsplit_LH_C_0_1_9) _lh_runsplit_LH_C_0_1_8) then
                                ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_8, (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_N)))))) _lh_runsplit_LH_C_1_1_9)
                              else
                                (if ((leList_d4 _lh_runsplit_LH_C_0_1_9) _lh_runsplit_LH_C_0_1_8) then
                                  ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_runsplit_LH_C_1_1_8))))) _lh_runsplit_LH_C_1_1_9)
                                else
                                  (`LH_C((`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_runsplit_LH_C_1_1_8)), ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_N)))) _lh_runsplit_LH_C_1_1_9)))))
                            | _ -> 
                              (if ((leList_d3 _lh_runsplit_LH_C_0_1_9) _lh_runsplit_LH_C_0_1_8) then
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
and partition_d0 _lh_partition_arg1_1 _lh_partition_arg2_1 =
  (((foldr_d1 (select_d0 _lh_partition_arg1_1)) (`LH_P2((`LH_N), (`LH_N)))) _lh_partition_arg2_1)
and quickSort2_d0 _lh_quickSort2_arg1_1 =
  (match _lh_quickSort2_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort2_LH_C_0_1, _lh_quickSort2_LH_C_1_1) -> 
      (let rec _lh_matchIdent_1_7 = ((partition_d0 ((fun x_6 y_1 -> 
        ((geList_d0 x_6) y_1)) _lh_quickSort2_LH_C_0_1)) _lh_quickSort2_LH_C_1_1) in
        (match _lh_matchIdent_1_7 with
          | `LH_P2(_lh_quickSort2_LH_P2_0_1, _lh_quickSort2_LH_P2_1_1) -> 
            ((mappend_d3 (quickSort2_d0 _lh_quickSort2_LH_P2_0_1)) (`LH_C(_lh_quickSort2_LH_C_0_1, (quickSort2_d0 _lh_quickSort2_LH_P2_1_1))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and quickSort_d0 _lh_quickSort_arg1_1 =
  (match _lh_quickSort_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort_LH_C_0_1, _lh_quickSort_LH_C_1_1) -> 
      ((mappend_d4 (quickSort_d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (if ((leList_d5 _lh_listcomp_fun_ls_h_2) _lh_quickSort_LH_C_0_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
            else
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 _lh_quickSort_LH_C_1_1)))) (`LH_C(_lh_quickSort_LH_C_0_1, (quickSort_d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (if ((gtList_d6 _lh_listcomp_fun_ls_h_3) _lh_quickSort_LH_C_0_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_3, (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
            else
              (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3 _lh_quickSort_LH_C_1_1))))))
    | _ -> 
      (failwith "error"))
and quickerSort_d0 _lh_quickerSort_arg1_1 =
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
                ((mappend_d5 (quickerSort_d0 _lh_split_arg2_1)) (`LH_C(_lh_split_arg1_1, (quickerSort_d0 _lh_split_arg3_1))))
              | `LH_C(_lh_split_LH_C_0_1, _lh_split_LH_C_1_1) -> 
                (if ((leList_d6 _lh_split_LH_C_0_1) _lh_split_arg1_1) then
                  ((((split_1 _lh_split_arg1_1) (`LH_C(_lh_split_LH_C_0_1, _lh_split_arg2_1))) _lh_split_arg3_1) _lh_split_LH_C_1_1)
                else
                  ((((split_1 _lh_split_arg1_1) _lh_split_arg2_1) (`LH_C(_lh_split_LH_C_0_1, _lh_split_arg3_1))) _lh_split_LH_C_1_1))
              | _ -> 
                (failwith "error"))) in
            ((((split_1 _lh_quickerSort_LH_C_0_1) (`LH_N)) (`LH_N)) _lh_quickerSort_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and reverse_d0 ls_2_7 =
  ((reverse_helper_d0 ls_2_7) (`LH_N))
and reverse_d1 ls_3_2 =
  ((reverse_helper_d1 ls_3_2) (`LH_N))
and reverse_d2 ls_3_1 =
  ((reverse_helper_d2 ls_3_1) (`LH_N))
and reverse_d3 ls_2_1 =
  ((reverse_helper_d3 ls_2_1) (`LH_N))
and testSorting_nofib_d0 _lh_testSorting_nofib_arg1_1 =
  (let rec f_1_8 = (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('M', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('o', (`LH_C('l', (`LH_C('.', (`LH_C('M', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('D', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_C('.', (`LH_C('L', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_C('E', (`LH_C('n', (`LH_C('v', (`LH_C('i', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('f', (`LH_C('i', (`LH_C('b', (`LH_C('U', (`LH_C('t', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C('$', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('_', (`LH_C(':', (`LH_C('s', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('F', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C(')', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C(' ', (`LH_C('-', (`LH_C('>', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('u', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('.', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('=', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_C('h', (`LH_C('e', (`LH_C('a', (`LH_C('p', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('r', (`LH_C('g', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(']', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (hash_d0 (mangle_d0 f_1_8)))
and treeSort2_d0 _lh_treeSort2_arg1_1 =
  let rec mkTree_2 = (fun _lh_mkTree_arg1_2 -> 
    (let rec to_tree_2 = (fun _lh_to_tree_arg1_2 _lh_to_tree_arg2_2 -> 
      (match _lh_to_tree_arg2_2 with
        | `Tip2 -> 
          (`Twig2(_lh_to_tree_arg1_2))
        | `Twig2(_lh_to_tree_Twig2_0_1) -> 
          (if ((leList_d7 _lh_to_tree_arg1_2) _lh_to_tree_Twig2_0_1) then
            (`Branch2(_lh_to_tree_Twig2_0_1, (`Twig2(_lh_to_tree_arg1_2)), (`Tip2)))
          else
            (`Branch2(_lh_to_tree_Twig2_0_1, (`Tip2), (`Twig2(_lh_to_tree_arg1_2)))))
        | `Branch2(_lh_to_tree_Branch2_0_1, _lh_to_tree_Branch2_1_1, _lh_to_tree_Branch2_2_1) -> 
          (if ((leList_d8 _lh_to_tree_arg1_2) _lh_to_tree_Branch2_0_1) then
            (`Branch2(_lh_to_tree_Branch2_0_1, ((to_tree_2 _lh_to_tree_arg1_2) _lh_to_tree_Branch2_1_1), _lh_to_tree_Branch2_2_1))
          else
            (`Branch2(_lh_to_tree_Branch2_0_1, _lh_to_tree_Branch2_1_1, ((to_tree_2 _lh_to_tree_arg1_2) _lh_to_tree_Branch2_2_1))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_d2 to_tree_2) (`Tip2)) _lh_mkTree_arg1_2)))
  and readTree_2 = (fun _lh_readTree_arg1_2 -> 
    (match _lh_readTree_arg1_2 with
      | `Tip2 -> 
        (`LH_N)
      | `Twig2(_lh_readTree_Twig2_0_1) -> 
        (`LH_C(_lh_readTree_Twig2_0_1, (`LH_N)))
      | `Branch2(_lh_readTree_Branch2_0_1, _lh_readTree_Branch2_1_1, _lh_readTree_Branch2_2_1) -> 
        ((mappend_d6 (readTree_2 _lh_readTree_Branch2_1_1)) (`LH_C(_lh_readTree_Branch2_0_1, (readTree_2 _lh_readTree_Branch2_2_1))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_6 -> 
    (readTree_2 (mkTree_2 _lh_funcomp_x_6))) _lh_treeSort2_arg1_1)
and treeSort_d0 _lh_treeSort_arg1_1 =
  let rec mkTree_3 = (fun _lh_mkTree_arg1_3 -> 
    (let rec to_tree_3 = (fun _lh_to_tree_arg1_3 _lh_to_tree_arg2_3 -> 
      (match _lh_to_tree_arg2_3 with
        | `Tip -> 
          (`Branch(_lh_to_tree_arg1_3, (`Tip), (`Tip)))
        | `Branch(_lh_to_tree_Branch_0_1, _lh_to_tree_Branch_1_1, _lh_to_tree_Branch_2_1) -> 
          (if ((leList_d9 _lh_to_tree_arg1_3) _lh_to_tree_Branch_0_1) then
            (`Branch(_lh_to_tree_Branch_0_1, ((to_tree_3 _lh_to_tree_arg1_3) _lh_to_tree_Branch_1_1), _lh_to_tree_Branch_2_1))
          else
            (`Branch(_lh_to_tree_Branch_0_1, _lh_to_tree_Branch_1_1, ((to_tree_3 _lh_to_tree_arg1_3) _lh_to_tree_Branch_2_1))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_d3 to_tree_3) (`Tip)) _lh_mkTree_arg1_3)))
  and readTree_3 = (fun _lh_readTree_arg1_3 -> 
    (match _lh_readTree_arg1_3 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_readTree_Branch_0_1, _lh_readTree_Branch_1_1, _lh_readTree_Branch_2_1) -> 
        ((mappend_d7 (readTree_3 _lh_readTree_Branch_1_1)) (`LH_C(_lh_readTree_Branch_0_1, (readTree_3 _lh_readTree_Branch_2_1))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_1_0 -> 
    (readTree_3 (mkTree_3 _lh_funcomp_x_1_0))) _lh_treeSort_arg1_1)
and unlines_d0 _lh_unlines_arg1_1 =
  (concat_d0 ((map_d0 (fun l_1 -> 
    ((mappend_d9 l_1) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_1));;

(* lumberhack *)
let rec compareList_d0_d0 _lh_compareList_arg1_2_1 _lh_compareList_arg2_2_1 =
  (match _lh_compareList_arg1_2_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_1 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_3, _lh_compareList_LH_C_1_6_3) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_6_4, _lh_compareList_LH_C_1_6_4) -> 
      (match _lh_compareList_arg2_2_1 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_6_5, _lh_compareList_LH_C_1_6_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_6_4) = (int_of_char _lh_compareList_LH_C_0_6_5)) then
            ((compareList_d0_d0 _lh_compareList_LH_C_1_6_4) _lh_compareList_LH_C_1_6_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_6_4) < (int_of_char _lh_compareList_LH_C_0_6_5)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d0 _lh_compareList_arg1_2 _lh_compareList_arg2_2 =
  (match _lh_compareList_arg1_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6, _lh_compareList_LH_C_1_6) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7, _lh_compareList_LH_C_1_7) -> 
      (match _lh_compareList_arg2_2 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_8, _lh_compareList_LH_C_1_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7) = (int_of_char _lh_compareList_LH_C_0_8)) then
            ((compareList_d1_d0 _lh_compareList_LH_C_1_7) _lh_compareList_LH_C_1_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7) < (int_of_char _lh_compareList_LH_C_0_8)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d0_d0 _lh_compareList_arg1_2_0 _lh_compareList_arg2_2_0 =
  (match _lh_compareList_arg1_2_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_0, _lh_compareList_LH_C_1_6_0) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_6_1, _lh_compareList_LH_C_1_6_1) -> 
      (match _lh_compareList_arg2_2_0 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_6_2, _lh_compareList_LH_C_1_6_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_6_1) = (int_of_char _lh_compareList_LH_C_0_6_2)) then
            ((compareList_d1_d0_d0 _lh_compareList_LH_C_1_6_1) _lh_compareList_LH_C_1_6_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_6_1) < (int_of_char _lh_compareList_LH_C_0_6_2)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d1_d0 _lh_compareList_arg1_1_5 _lh_compareList_arg2_1_5 =
  (match _lh_compareList_arg1_1_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_5 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_4_5, _lh_compareList_LH_C_1_4_5) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_6, _lh_compareList_LH_C_1_4_6) -> 
      (match _lh_compareList_arg2_1_5 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_4_7, _lh_compareList_LH_C_1_4_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_6) = (int_of_char _lh_compareList_LH_C_0_4_7)) then
            ((compareList_d1_d1_d0 _lh_compareList_LH_C_1_4_6) _lh_compareList_LH_C_1_4_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_6) < (int_of_char _lh_compareList_LH_C_0_4_7)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d2_d0 _lh_compareList_arg1_1_2 _lh_compareList_arg2_1_2 =
  (match _lh_compareList_arg1_1_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_3_6, _lh_compareList_LH_C_1_3_6) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_3_7, _lh_compareList_LH_C_1_3_7) -> 
      (match _lh_compareList_arg2_1_2 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_3_8, _lh_compareList_LH_C_1_3_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_3_7) = (int_of_char _lh_compareList_LH_C_0_3_8)) then
            ((compareList_d1_d2_d0 _lh_compareList_LH_C_1_3_7) _lh_compareList_LH_C_1_3_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_7) < (int_of_char _lh_compareList_LH_C_0_3_8)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d3_d0 _lh_compareList_arg1_2_4 _lh_compareList_arg2_2_4 =
  (match _lh_compareList_arg1_2_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_4 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_7_2, _lh_compareList_LH_C_1_7_2) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7_3, _lh_compareList_LH_C_1_7_3) -> 
      (match _lh_compareList_arg2_2_4 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_7_4, _lh_compareList_LH_C_1_7_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7_3) = (int_of_char _lh_compareList_LH_C_0_7_4)) then
            ((compareList_d1_d3_d0 _lh_compareList_LH_C_1_7_3) _lh_compareList_LH_C_1_7_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7_3) < (int_of_char _lh_compareList_LH_C_0_7_4)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d4_d0 _lh_compareList_arg1_1_6 _lh_compareList_arg2_1_6 =
  (match _lh_compareList_arg1_1_6 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_6 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_4_8, _lh_compareList_LH_C_1_4_8) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_9, _lh_compareList_LH_C_1_4_9) -> 
      (match _lh_compareList_arg2_1_6 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_5_0, _lh_compareList_LH_C_1_5_0) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_9) = (int_of_char _lh_compareList_LH_C_0_5_0)) then
            ((compareList_d1_d4_d0 _lh_compareList_LH_C_1_4_9) _lh_compareList_LH_C_1_5_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_9) < (int_of_char _lh_compareList_LH_C_0_5_0)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d5_d0 _lh_compareList_arg1_0 _lh_compareList_arg2_0 =
  (match _lh_compareList_arg1_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_0, _lh_compareList_LH_C_1_0) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1, _lh_compareList_LH_C_1_1) -> 
      (match _lh_compareList_arg2_0 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_2, _lh_compareList_LH_C_1_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1) = (int_of_char _lh_compareList_LH_C_0_2)) then
            ((compareList_d1_d5_d0 _lh_compareList_LH_C_1_1) _lh_compareList_LH_C_1_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1) < (int_of_char _lh_compareList_LH_C_0_2)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d2_d0 _lh_compareList_arg1_1 _lh_compareList_arg2_1 =
  (match _lh_compareList_arg1_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_3, _lh_compareList_LH_C_1_3) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4, _lh_compareList_LH_C_1_4) -> 
      (match _lh_compareList_arg2_1 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_5, _lh_compareList_LH_C_1_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4) = (int_of_char _lh_compareList_LH_C_0_5)) then
            ((compareList_d2_d0 _lh_compareList_LH_C_1_4) _lh_compareList_LH_C_1_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4) < (int_of_char _lh_compareList_LH_C_0_5)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d3_d0 _lh_compareList_arg1_2_2 _lh_compareList_arg2_2_2 =
  (match _lh_compareList_arg1_2_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_6, _lh_compareList_LH_C_1_6_6) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_6_7, _lh_compareList_LH_C_1_6_7) -> 
      (match _lh_compareList_arg2_2_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_8, _lh_compareList_LH_C_1_6_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_6_7) = (int_of_char _lh_compareList_LH_C_0_6_8)) then
            ((compareList_d3_d0 _lh_compareList_LH_C_1_6_7) _lh_compareList_LH_C_1_6_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_6_7) < (int_of_char _lh_compareList_LH_C_0_6_8)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d3_d1 _lh_compareList_arg1_1_3 _lh_compareList_arg2_1_3 =
  (match _lh_compareList_arg1_1_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_3 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_3_9, _lh_compareList_LH_C_1_3_9) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_0, _lh_compareList_LH_C_1_4_0) -> 
      (match _lh_compareList_arg2_1_3 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_4_1, _lh_compareList_LH_C_1_4_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_0) = (int_of_char _lh_compareList_LH_C_0_4_1)) then
            ((compareList_d3_d1 _lh_compareList_LH_C_1_4_0) _lh_compareList_LH_C_1_4_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_0) < (int_of_char _lh_compareList_LH_C_0_4_1)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d4_d0 _lh_compareList_arg1_1_0 _lh_compareList_arg2_1_0 =
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
            ((compareList_d4_d0 _lh_compareList_LH_C_1_3_1) _lh_compareList_LH_C_1_3_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_1) < (int_of_char _lh_compareList_LH_C_0_3_2)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d5_d0 _lh_compareList_arg1_9 _lh_compareList_arg2_9 =
  (match _lh_compareList_arg1_9 with
    | `LH_N -> 
      (match _lh_compareList_arg2_9 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_2_7, _lh_compareList_LH_C_1_2_7) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_2_8, _lh_compareList_LH_C_1_2_8) -> 
      (match _lh_compareList_arg2_9 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_2_9, _lh_compareList_LH_C_1_2_9) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_2_8) = (int_of_char _lh_compareList_LH_C_0_2_9)) then
            ((compareList_d5_d0 _lh_compareList_LH_C_1_2_8) _lh_compareList_LH_C_1_2_9)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_8) < (int_of_char _lh_compareList_LH_C_0_2_9)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d5_d1 _lh_compareList_arg1_1_7 _lh_compareList_arg2_1_7 =
  (match _lh_compareList_arg1_1_7 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_7 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_5_1, _lh_compareList_LH_C_1_5_1) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_5_2, _lh_compareList_LH_C_1_5_2) -> 
      (match _lh_compareList_arg2_1_7 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_5_3, _lh_compareList_LH_C_1_5_3) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_5_2) = (int_of_char _lh_compareList_LH_C_0_5_3)) then
            ((compareList_d5_d1 _lh_compareList_LH_C_1_5_2) _lh_compareList_LH_C_1_5_3)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_5_2) < (int_of_char _lh_compareList_LH_C_0_5_3)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d5_d2 _lh_compareList_arg1_4 _lh_compareList_arg2_4 =
  (match _lh_compareList_arg1_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_2, _lh_compareList_LH_C_1_1_2) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_3, _lh_compareList_LH_C_1_1_3) -> 
      (match _lh_compareList_arg2_4 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_4, _lh_compareList_LH_C_1_1_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_3) = (int_of_char _lh_compareList_LH_C_0_1_4)) then
            ((compareList_d5_d2 _lh_compareList_LH_C_1_1_3) _lh_compareList_LH_C_1_1_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_3) < (int_of_char _lh_compareList_LH_C_0_1_4)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d5_d3 _lh_compareList_arg1_1_8 _lh_compareList_arg2_1_8 =
  (match _lh_compareList_arg1_1_8 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_8 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_5_4, _lh_compareList_LH_C_1_5_4) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_5_5, _lh_compareList_LH_C_1_5_5) -> 
      (match _lh_compareList_arg2_1_8 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_5_6, _lh_compareList_LH_C_1_5_6) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_5_5) = (int_of_char _lh_compareList_LH_C_0_5_6)) then
            ((compareList_d5_d3 _lh_compareList_LH_C_1_5_5) _lh_compareList_LH_C_1_5_6)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_5_5) < (int_of_char _lh_compareList_LH_C_0_5_6)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d6_d0 _lh_compareList_arg1_1_9 _lh_compareList_arg2_1_9 =
  (match _lh_compareList_arg1_1_9 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_9 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_5_7, _lh_compareList_LH_C_1_5_7) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_5_8, _lh_compareList_LH_C_1_5_8) -> 
      (match _lh_compareList_arg2_1_9 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_5_9, _lh_compareList_LH_C_1_5_9) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_5_8) = (int_of_char _lh_compareList_LH_C_0_5_9)) then
            ((compareList_d6_d0 _lh_compareList_LH_C_1_5_8) _lh_compareList_LH_C_1_5_9)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_5_8) < (int_of_char _lh_compareList_LH_C_0_5_9)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d6_d1 _lh_compareList_arg1_6 _lh_compareList_arg2_6 =
  (match _lh_compareList_arg1_6 with
    | `LH_N -> 
      (match _lh_compareList_arg2_6 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_8, _lh_compareList_LH_C_1_1_8) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_9, _lh_compareList_LH_C_1_1_9) -> 
      (match _lh_compareList_arg2_6 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_2_0, _lh_compareList_LH_C_1_2_0) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_9) = (int_of_char _lh_compareList_LH_C_0_2_0)) then
            ((compareList_d6_d1 _lh_compareList_LH_C_1_1_9) _lh_compareList_LH_C_1_2_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_9) < (int_of_char _lh_compareList_LH_C_0_2_0)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d6_d2 _lh_compareList_arg1_1_1 _lh_compareList_arg2_1_1 =
  (match _lh_compareList_arg1_1_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_1 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_3_3, _lh_compareList_LH_C_1_3_3) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_3_4, _lh_compareList_LH_C_1_3_4) -> 
      (match _lh_compareList_arg2_1_1 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_3_5, _lh_compareList_LH_C_1_3_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_3_4) = (int_of_char _lh_compareList_LH_C_0_3_5)) then
            ((compareList_d6_d2 _lh_compareList_LH_C_1_3_4) _lh_compareList_LH_C_1_3_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_3_4) < (int_of_char _lh_compareList_LH_C_0_3_5)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d6_d3 _lh_compareList_arg1_8 _lh_compareList_arg2_8 =
  (match _lh_compareList_arg1_8 with
    | `LH_N -> 
      (match _lh_compareList_arg2_8 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_2_4, _lh_compareList_LH_C_1_2_4) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_2_5, _lh_compareList_LH_C_1_2_5) -> 
      (match _lh_compareList_arg2_8 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_2_6, _lh_compareList_LH_C_1_2_6) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_2_5) = (int_of_char _lh_compareList_LH_C_0_2_6)) then
            ((compareList_d6_d3 _lh_compareList_LH_C_1_2_5) _lh_compareList_LH_C_1_2_6)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_5) < (int_of_char _lh_compareList_LH_C_0_2_6)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d7_d0 _lh_compareList_arg1_2_3 _lh_compareList_arg2_2_3 =
  (match _lh_compareList_arg1_2_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_3 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_6_9, _lh_compareList_LH_C_1_6_9) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7_0, _lh_compareList_LH_C_1_7_0) -> 
      (match _lh_compareList_arg2_2_3 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_7_1, _lh_compareList_LH_C_1_7_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7_0) = (int_of_char _lh_compareList_LH_C_0_7_1)) then
            ((compareList_d7_d0 _lh_compareList_LH_C_1_7_0) _lh_compareList_LH_C_1_7_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7_0) < (int_of_char _lh_compareList_LH_C_0_7_1)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d7_d1 _lh_compareList_arg1_1_4 _lh_compareList_arg2_1_4 =
  (match _lh_compareList_arg1_1_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_1_4 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_4_2, _lh_compareList_LH_C_1_4_2) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_4_3, _lh_compareList_LH_C_1_4_3) -> 
      (match _lh_compareList_arg2_1_4 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_4_4, _lh_compareList_LH_C_1_4_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_4_3) = (int_of_char _lh_compareList_LH_C_0_4_4)) then
            ((compareList_d7_d1 _lh_compareList_LH_C_1_4_3) _lh_compareList_LH_C_1_4_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_4_3) < (int_of_char _lh_compareList_LH_C_0_4_4)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d7_d2 _lh_compareList_arg1_5 _lh_compareList_arg2_5 =
  (match _lh_compareList_arg1_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_5 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_5, _lh_compareList_LH_C_1_1_5) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_6, _lh_compareList_LH_C_1_1_6) -> 
      (match _lh_compareList_arg2_5 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_7, _lh_compareList_LH_C_1_1_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_6) = (int_of_char _lh_compareList_LH_C_0_1_7)) then
            ((compareList_d7_d2 _lh_compareList_LH_C_1_1_6) _lh_compareList_LH_C_1_1_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_6) < (int_of_char _lh_compareList_LH_C_0_1_7)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d7_d3 _lh_compareList_arg1_3 _lh_compareList_arg2_3 =
  (match _lh_compareList_arg1_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_9, _lh_compareList_LH_C_1_9) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_0, _lh_compareList_LH_C_1_1_0) -> 
      (match _lh_compareList_arg2_3 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_1, _lh_compareList_LH_C_1_1_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_0) = (int_of_char _lh_compareList_LH_C_0_1_1)) then
            ((compareList_d7_d3 _lh_compareList_LH_C_1_1_0) _lh_compareList_LH_C_1_1_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_0) < (int_of_char _lh_compareList_LH_C_0_1_1)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d8_d0 _lh_compareList_arg1_7 _lh_compareList_arg2_7 =
  (match _lh_compareList_arg1_7 with
    | `LH_N -> 
      (match _lh_compareList_arg2_7 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_2_1, _lh_compareList_LH_C_1_2_1) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_2_2, _lh_compareList_LH_C_1_2_2) -> 
      (match _lh_compareList_arg2_7 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_2_3, _lh_compareList_LH_C_1_2_3) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_2_2) = (int_of_char _lh_compareList_LH_C_0_2_3)) then
            ((compareList_d8_d0 _lh_compareList_LH_C_1_2_2) _lh_compareList_LH_C_1_2_3)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_2_2) < (int_of_char _lh_compareList_LH_C_0_2_3)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d9_d0 _lh_compareList_arg1_2_5 _lh_compareList_arg2_2_5 =
  (match _lh_compareList_arg1_2_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_5 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_7_5, _lh_compareList_LH_C_1_7_5) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7_6, _lh_compareList_LH_C_1_7_6) -> 
      (match _lh_compareList_arg2_2_5 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_7_7, _lh_compareList_LH_C_1_7_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7_6) = (int_of_char _lh_compareList_LH_C_0_7_7)) then
            ((compareList_d9_d0 _lh_compareList_LH_C_1_7_6) _lh_compareList_LH_C_1_7_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7_6) < (int_of_char _lh_compareList_LH_C_0_7_7)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat_d0_d0 lss_0 =
  (lss_0 99);;
let rec foldl_d0_d0 f_2_5 i_2_2 ls_1_0 =
  ((ls_1_0 f_2_5) i_2_2);;
let rec foldr_d0_d0 f_2_3 i_2_0 ls_9 =
  ((ls_9 f_2_3) i_2_0);;
let rec foldr_d1_d0 f_2_2 i_1_9 ls_8 =
  (match ls_8 with
    | `LH_C(h_2_9, t_2_9) -> 
      ((f_2_2 h_2_9) (((foldr_d1_d0 f_2_2) i_1_9) t_2_9))
    | `LH_N -> 
      i_1_9);;
let rec foldr_d2_d0 f_1_9 i_1_7 ls_2 =
  (match ls_2 with
    | `LH_C(h_1_8, t_1_8) -> 
      ((f_1_9 h_1_8) (((foldr_d2_d0 f_1_9) i_1_7) t_1_8))
    | `LH_N -> 
      i_1_7);;
let rec foldr_d3_d0 f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      ((f_1 h_2) (((foldr_d3_d0 f_1) i_0) t_2))
    | `LH_N -> 
      i_0);;
let rec intersperse_d0_d0 _lh_intersperse_arg1_1 _lh_intersperse_arg2_0 =
  (_lh_intersperse_arg2_0 _lh_intersperse_arg1_1);;
let rec mappend_d0_d0 xs_1_1 ys_2_4 =
  (xs_1_1 ys_2_4);;
let rec mappend_d0_d1 xs_4 ys_9 =
  (xs_4 ys_9);;
let rec mappend_d1_d0 xs_5 ys_1_0 =
  (xs_5 ys_1_0);;
let rec mappend_d1_d1 xs_8 ys_1_7 =
  (xs_8 ys_1_7);;
let rec mappend_d2_d0 xs_3 ys_5 =
  (xs_3 ys_5);;
let rec mappend_d3_d0 xs_7 ys_1_2 =
  (match xs_7 with
    | `LH_C(h_2_8, t_2_8) -> 
      (`LH_C(h_2_8, ((mappend_d3_d0 t_2_8) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_d4_d0 xs_6 ys_1_1 =
  (match xs_6 with
    | `LH_C(h_2_7, t_2_7) -> 
      (`LH_C(h_2_7, ((mappend_d4_d0 t_2_7) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d5_d0 xs_9 ys_2_0 =
  (match xs_9 with
    | `LH_C(h_3_4, t_3_4) -> 
      (`LH_C(h_3_4, ((mappend_d5_d0 t_3_4) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend_d6_d0 xs_1 ys_3 =
  (match xs_1 with
    | `LH_C(h_2_1, t_2_1) -> 
      (`LH_C(h_2_1, ((mappend_d6_d0 t_2_1) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_d7_d0 xs_2 ys_4 =
  (match xs_2 with
    | `LH_C(h_2_2, t_2_2) -> 
      (`LH_C(h_2_2, ((mappend_d7_d0 t_2_2) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_d8_d0 xs_0 ys_1 =
  (xs_0 ys_1);;
let rec odd_d0_d0 _lh_odd_arg1_0 =
  ((_lh_odd_arg1_0 mod 2) = 0);;
let rec odd_d1_d0 _lh_odd_arg1_1 =
  ((_lh_odd_arg1_1 mod 2) = 0);;
let rec prependToAll_d0_d0 _lh_prependToAll_arg1_8 _lh_prependToAll_arg2_0 =
  (_lh_prependToAll_arg2_0 _lh_prependToAll_arg1_8);;
let rec reverse_helper_d3_d0 ls_1_7 a_5 =
  (match ls_1_7 with
    | `LH_C(h_4_0, t_4_0) -> 
      ((reverse_helper_d3_d0 t_4_0) (`LH_C(h_4_0, a_5)))
    | `LH_N -> 
      a_5);;
let rec select_d0_d0 _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_0_0)), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec break_d0_d0 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_0 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_0 in
          (fun _lh_dummy_1 -> 
            (lines_d0_d0 _lh_lines_LH_C_1_0)))))
      else
        (let rec _lh_matchIdent_1_1 = ((break_d0_d0 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_1_1 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and eqList_d0_d0 _lh_eqList_arg1_0 _lh_eqList_arg2_0 =
  (((compareList_d4_d0 _lh_eqList_arg1_0) _lh_eqList_arg2_0) = (`EQ))
and geList_d0_d0 _lh_geList_arg1_0 _lh_geList_arg2_0 =
  (not ((ltList_d2_d0 _lh_geList_arg1_0) _lh_geList_arg2_0))
and gtList_d0_d0 _lh_gtList_arg1_1_8 _lh_gtList_arg2_1_8 =
  (let rec _lh_matchIdent_2_9 = ((compareList_d0_d0 _lh_gtList_arg1_1_8) _lh_gtList_arg2_1_8) in
    _lh_matchIdent_2_9)
and gtList_d1_d0 _lh_gtList_arg1_7 _lh_gtList_arg2_7 =
  (let rec _lh_matchIdent_1_2 = ((compareList_d1_d0 _lh_gtList_arg1_7) _lh_gtList_arg2_7) in
    _lh_matchIdent_1_2)
and gtList_d1_d0_d0 _lh_gtList_arg1_1_0 _lh_gtList_arg2_1_0 =
  (let rec _lh_matchIdent_1_6 = ((compareList_d1_d4_d0 _lh_gtList_arg1_1_0) _lh_gtList_arg2_1_0) in
    _lh_matchIdent_1_6)
and gtList_d1_d1_d0 _lh_gtList_arg1_1_2 _lh_gtList_arg2_1_2 =
  (let rec _lh_matchIdent_2_2 = ((compareList_d1_d5_d0 _lh_gtList_arg1_1_2) _lh_gtList_arg2_1_2) in
    _lh_matchIdent_2_2)
and gtList_d2_d0 _lh_gtList_arg1_3 _lh_gtList_arg2_3 =
  (let rec _lh_matchIdent_4 = ((compareList_d2_d0 _lh_gtList_arg1_3) _lh_gtList_arg2_3) in
    _lh_matchIdent_4)
and gtList_d3_d0 _lh_gtList_arg1_4 _lh_gtList_arg2_4 =
  (let rec _lh_matchIdent_6 = ((compareList_d5_d0 _lh_gtList_arg1_4) _lh_gtList_arg2_4) in
    _lh_matchIdent_6)
and gtList_d3_d1 _lh_gtList_arg1_8 _lh_gtList_arg2_8 =
  (let rec _lh_matchIdent_1_4 = ((compareList_d5_d1 _lh_gtList_arg1_8) _lh_gtList_arg2_8) in
    _lh_matchIdent_1_4)
and gtList_d3_d2 _lh_gtList_arg1_1_5 _lh_gtList_arg2_1_5 =
  (let rec _lh_matchIdent_2_6 = ((compareList_d5_d2 _lh_gtList_arg1_1_5) _lh_gtList_arg2_1_5) in
    _lh_matchIdent_2_6)
and gtList_d3_d3 _lh_gtList_arg1_1_3 _lh_gtList_arg2_1_3 =
  (let rec _lh_matchIdent_2_3 = ((compareList_d5_d3 _lh_gtList_arg1_1_3) _lh_gtList_arg2_1_3) in
    _lh_matchIdent_2_3)
and gtList_d4_d0 _lh_gtList_arg1_9 _lh_gtList_arg2_9 =
  (let rec _lh_matchIdent_1_5 = ((compareList_d6_d0 _lh_gtList_arg1_9) _lh_gtList_arg2_9) in
    _lh_matchIdent_1_5)
and gtList_d4_d1 _lh_gtList_arg1_1_9 _lh_gtList_arg2_1_9 =
  (let rec _lh_matchIdent_3_0 = ((compareList_d6_d1 _lh_gtList_arg1_1_9) _lh_gtList_arg2_1_9) in
    _lh_matchIdent_3_0)
and gtList_d4_d2 _lh_gtList_arg1_1_7 _lh_gtList_arg2_1_7 =
  (let rec _lh_matchIdent_2_8 = ((compareList_d6_d2 _lh_gtList_arg1_1_7) _lh_gtList_arg2_1_7) in
    _lh_matchIdent_2_8)
and gtList_d4_d3 _lh_gtList_arg1_2 _lh_gtList_arg2_2 =
  (let rec _lh_matchIdent_3 = ((compareList_d6_d3 _lh_gtList_arg1_2) _lh_gtList_arg2_2) in
    _lh_matchIdent_3)
and gtList_d5_d0 _lh_gtList_arg1_1_1 _lh_gtList_arg2_1_1 =
  (let rec _lh_matchIdent_1_7 = ((compareList_d7_d0 _lh_gtList_arg1_1_1) _lh_gtList_arg2_1_1) in
    _lh_matchIdent_1_7)
and gtList_d5_d1 _lh_gtList_arg1_1_6 _lh_gtList_arg2_1_6 =
  (let rec _lh_matchIdent_2_7 = ((compareList_d7_d1 _lh_gtList_arg1_1_6) _lh_gtList_arg2_1_6) in
    _lh_matchIdent_2_7)
and gtList_d5_d2 _lh_gtList_arg1_0 _lh_gtList_arg2_0 =
  (let rec _lh_matchIdent_0 = ((compareList_d7_d2 _lh_gtList_arg1_0) _lh_gtList_arg2_0) in
    _lh_matchIdent_0)
and gtList_d5_d3 _lh_gtList_arg1_6 _lh_gtList_arg2_6 =
  (let rec _lh_matchIdent_8 = ((compareList_d7_d3 _lh_gtList_arg1_6) _lh_gtList_arg2_6) in
    _lh_matchIdent_8)
and gtList_d6_d0 _lh_gtList_arg1_1_4 _lh_gtList_arg2_1_4 =
  (let rec _lh_matchIdent_2_4 = ((compareList_d1_d0_d0 _lh_gtList_arg1_1_4) _lh_gtList_arg2_1_4) in
    _lh_matchIdent_2_4)
and gtList_d7_d0 _lh_gtList_arg1_2_0 _lh_gtList_arg2_2_0 =
  (let rec _lh_matchIdent_3_2 = ((compareList_d1_d1_d0 _lh_gtList_arg1_2_0) _lh_gtList_arg2_2_0) in
    _lh_matchIdent_3_2)
and gtList_d8_d0 _lh_gtList_arg1_1 _lh_gtList_arg2_1 =
  (let rec _lh_matchIdent_2 = ((compareList_d1_d2_d0 _lh_gtList_arg1_1) _lh_gtList_arg2_1) in
    _lh_matchIdent_2)
and gtList_d9_d0 _lh_gtList_arg1_5 _lh_gtList_arg2_5 =
  (let rec _lh_matchIdent_7 = ((compareList_d1_d3_d0 _lh_gtList_arg1_5) _lh_gtList_arg2_5) in
    _lh_matchIdent_7)
and hash_d0_d0 _lh_hash_arg1_0 =
  (((foldl_d0_d0 (fun acc_0 c_0 -> 
    ((int_of_char c_0) + (acc_0 * 31)))) 0) _lh_hash_arg1_0)
and heapSort_d0_d0 _lh_heapSort_arg1_0 =
  let rec div2_0 = (fun _lh_div2_arg1_0 -> 
    (_lh_div2_arg1_0 / 2))
  and clear_0 = (fun _lh_clear_arg1_0 -> 
    (match _lh_clear_arg1_0 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_clear_Branch_0_0, _lh_clear_Branch_1_0, _lh_clear_Branch_2_0) -> 
        (`LH_C(_lh_clear_Branch_0_0, (clear_0 ((mix_0 _lh_clear_Branch_1_0) _lh_clear_Branch_2_0))))
      | _ -> 
        (failwith "error")))
  and mix_0 = (fun _lh_mix_arg1_0 _lh_mix_arg2_0 -> 
    (match _lh_mix_arg1_0 with
      | `Tip -> 
        _lh_mix_arg2_0
      | _ -> 
        (match _lh_mix_arg2_0 with
          | `Tip -> 
            _lh_mix_arg1_0
          | _ -> 
            (match _lh_mix_arg1_0 with
              | `Branch(_lh_mix_Branch_0_0, _lh_mix_Branch_1_0, _lh_mix_Branch_2_0) -> 
                (match _lh_mix_arg2_0 with
                  | `Branch(_lh_mix_Branch_0_1, _lh_mix_Branch_1_1, _lh_mix_Branch_2_1) -> 
                    (if ((leList_d0_d0 _lh_mix_Branch_0_0) _lh_mix_Branch_0_1) then
                      (`Branch(_lh_mix_Branch_0_0, ((mix_0 _lh_mix_Branch_1_0) _lh_mix_Branch_2_0), (`Branch(_lh_mix_Branch_0_1, _lh_mix_Branch_1_1, _lh_mix_Branch_2_1))))
                    else
                      (`Branch(_lh_mix_Branch_0_1, (`Branch(_lh_mix_Branch_0_0, _lh_mix_Branch_1_0, _lh_mix_Branch_2_0)), ((mix_0 _lh_mix_Branch_1_1) _lh_mix_Branch_2_1))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
  and heap_0 = (fun _lh_heap_arg1_0 _lh_heap_arg2_0 -> 
    (match _lh_heap_arg2_0 with
      | `LH_N -> 
        (`Tip)
      | `LH_C(_lh_heap_LH_C_0_0, _lh_heap_LH_C_1_0) -> 
        (((to_heap_0 _lh_heap_arg1_0) _lh_heap_LH_C_0_0) ((heap_0 (_lh_heap_arg1_0 + 1)) _lh_heap_LH_C_1_0))
      | _ -> 
        (failwith "error")))
  and to_heap_0 = (fun _lh_to_heap_arg1_0 _lh_to_heap_arg2_0 _lh_to_heap_arg3_0 -> 
    (match _lh_to_heap_arg3_0 with
      | `Tip -> 
        (`Branch(_lh_to_heap_arg2_0, (`Tip), (`Tip)))
      | `Branch(_lh_to_heap_Branch_0_0, _lh_to_heap_Branch_1_0, _lh_to_heap_Branch_2_0) -> 
        (if (((leList_d1_d0 _lh_to_heap_arg2_0) _lh_to_heap_Branch_0_0) && (odd_d0_d0 _lh_to_heap_arg1_0)) then
          (`Branch(_lh_to_heap_arg2_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_Branch_0_0) _lh_to_heap_Branch_1_0), _lh_to_heap_Branch_2_0))
        else
          (if ((leList_d2_d0 _lh_to_heap_arg2_0) _lh_to_heap_Branch_0_0) then
            (`Branch(_lh_to_heap_arg2_0, _lh_to_heap_Branch_1_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_Branch_0_0) _lh_to_heap_Branch_2_0)))
          else
            (if (odd_d1_d0 _lh_to_heap_arg1_0) then
              (`Branch(_lh_to_heap_Branch_0_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_arg2_0) _lh_to_heap_Branch_1_0), _lh_to_heap_Branch_2_0))
            else
              (`Branch(_lh_to_heap_Branch_0_0, _lh_to_heap_Branch_1_0, (((to_heap_0 (div2_0 _lh_to_heap_arg1_0)) _lh_to_heap_arg2_0) _lh_to_heap_Branch_2_0))))))
      | _ -> 
        (failwith "error")))
  in (clear_0 ((heap_0 0) _lh_heapSort_arg1_0))
and insertSort_d0_d0 _lh_insertSort_arg1_0 =
  (match _lh_insertSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_insertSort_LH_C_0_0, _lh_insertSort_LH_C_1_0) -> 
      (let rec trins_0 = (fun _lh_trins_arg1_0 _lh_trins_arg2_0 _lh_trins_arg3_0 -> 
        (match _lh_trins_arg2_0 with
          | `LH_N -> 
            (match _lh_trins_arg3_0 with
              | `LH_C(_lh_trins_LH_C_0_0, _lh_trins_LH_C_1_0) -> 
                (((trins_0 (`LH_N)) ((mappend_d2_d0 (reverse_d2_d0 _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_0, (`LH_N))))) _lh_trins_LH_C_1_0)
              | _ -> 
                (match _lh_trins_arg3_0 with
                  | `LH_N -> 
                    ((mappend_d1_d0 (reverse_d1_d0 _lh_trins_arg1_0)) _lh_trins_arg2_0)
                  | _ -> 
                    (match _lh_trins_arg2_0 with
                      | `LH_C(_lh_trins_LH_C_0_1, _lh_trins_LH_C_1_1) -> 
                        (match _lh_trins_arg3_0 with
                          | `LH_C(_lh_trins_LH_C_0_2, _lh_trins_LH_C_1_2) -> 
                            (if ((ltList_d0_d0 _lh_trins_LH_C_0_1) _lh_trins_LH_C_0_2) then
                              (((trins_0 (`LH_C(_lh_trins_LH_C_0_1, _lh_trins_arg1_0))) _lh_trins_LH_C_1_1) (`LH_C(_lh_trins_LH_C_0_2, _lh_trins_LH_C_1_2)))
                            else
                              (((trins_0 (`LH_N)) ((mappend_d0_d0 (reverse_d0_d0 _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_2, (`LH_C(_lh_trins_LH_C_0_1, _lh_trins_LH_C_1_1)))))) _lh_trins_LH_C_1_2))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))))
          | _ -> 
            (match _lh_trins_arg3_0 with
              | `LH_N -> 
                ((mappend_d1_d1 (reverse_d1_d1 _lh_trins_arg1_0)) _lh_trins_arg2_0)
              | _ -> 
                (match _lh_trins_arg2_0 with
                  | `LH_C(_lh_trins_LH_C_0_3, _lh_trins_LH_C_1_3) -> 
                    (match _lh_trins_arg3_0 with
                      | `LH_C(_lh_trins_LH_C_0_4, _lh_trins_LH_C_1_4) -> 
                        (if ((ltList_d0_d1 _lh_trins_LH_C_0_3) _lh_trins_LH_C_0_4) then
                          (((trins_0 (`LH_C(_lh_trins_LH_C_0_3, _lh_trins_arg1_0))) _lh_trins_LH_C_1_3) (`LH_C(_lh_trins_LH_C_0_4, _lh_trins_LH_C_1_4)))
                        else
                          (((trins_0 (`LH_N)) ((mappend_d0_d1 (reverse_d0_d1 _lh_trins_arg1_0)) (`LH_C(_lh_trins_LH_C_0_4, (`LH_C(_lh_trins_LH_C_0_3, _lh_trins_LH_C_1_3)))))) _lh_trins_LH_C_1_4))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
        (((trins_0 (`LH_N)) (`LH_C(_lh_insertSort_LH_C_0_0, (`LH_N)))) _lh_insertSort_LH_C_1_0))
    | _ -> 
      (failwith "error"))
and leList_d0_d0 _lh_leList_arg1_1_4 _lh_leList_arg2_1_4 =
  (not ((gtList_d0_d0 _lh_leList_arg1_1_4) _lh_leList_arg2_1_4))
and leList_d1_d0 _lh_leList_arg1_1_3 _lh_leList_arg2_1_3 =
  (not ((gtList_d1_d0 _lh_leList_arg1_1_3) _lh_leList_arg2_1_3))
and leList_d2_d0 _lh_leList_arg1_4 _lh_leList_arg2_4 =
  (not ((gtList_d2_d0 _lh_leList_arg1_4) _lh_leList_arg2_4))
and leList_d3_d0 _lh_leList_arg1_6 _lh_leList_arg2_6 =
  (not ((gtList_d4_d0 _lh_leList_arg1_6) _lh_leList_arg2_6))
and leList_d3_d1 _lh_leList_arg1_7 _lh_leList_arg2_7 =
  (not ((gtList_d4_d1 _lh_leList_arg1_7) _lh_leList_arg2_7))
and leList_d3_d2 _lh_leList_arg1_1_5 _lh_leList_arg2_1_5 =
  (not ((gtList_d4_d2 _lh_leList_arg1_1_5) _lh_leList_arg2_1_5))
and leList_d3_d3 _lh_leList_arg1_1 _lh_leList_arg2_1 =
  (not ((gtList_d4_d3 _lh_leList_arg1_1) _lh_leList_arg2_1))
and leList_d4_d0 _lh_leList_arg1_1_2 _lh_leList_arg2_1_2 =
  (not ((gtList_d5_d0 _lh_leList_arg1_1_2) _lh_leList_arg2_1_2))
and leList_d4_d1 _lh_leList_arg1_0 _lh_leList_arg2_0 =
  (not ((gtList_d5_d1 _lh_leList_arg1_0) _lh_leList_arg2_0))
and leList_d4_d2 _lh_leList_arg1_9 _lh_leList_arg2_9 =
  (not ((gtList_d5_d2 _lh_leList_arg1_9) _lh_leList_arg2_9))
and leList_d4_d3 _lh_leList_arg1_3 _lh_leList_arg2_3 =
  (not ((gtList_d5_d3 _lh_leList_arg1_3) _lh_leList_arg2_3))
and leList_d5_d0 _lh_leList_arg1_8 _lh_leList_arg2_8 =
  (not ((gtList_d7_d0 _lh_leList_arg1_8) _lh_leList_arg2_8))
and leList_d6_d0 _lh_leList_arg1_5 _lh_leList_arg2_5 =
  (not ((gtList_d8_d0 _lh_leList_arg1_5) _lh_leList_arg2_5))
and leList_d7_d0 _lh_leList_arg1_2 _lh_leList_arg2_2 =
  (not ((gtList_d9_d0 _lh_leList_arg1_2) _lh_leList_arg2_2))
and leList_d8_d0 _lh_leList_arg1_1_1 _lh_leList_arg2_1_1 =
  (not ((gtList_d1_d0_d0 _lh_leList_arg1_1_1) _lh_leList_arg2_1_1))
and leList_d9_d0 _lh_leList_arg1_1_0 _lh_leList_arg2_1_0 =
  (not ((gtList_d1_d1_d0 _lh_leList_arg1_1_0) _lh_leList_arg2_1_0))
and lines_d0_d0 _lh_lines_arg1_0 =
  (match _lh_lines_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_9 = ((break_d0_d0 (fun x_1 -> 
        (x_1 = '|'))) _lh_lines_arg1_0) in
        (match _lh_matchIdent_9 with
          | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
            (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_1_0 = _lh_lines_LH_P2_1_0 in
              (_lh_matchIdent_1_0 99))))
          | _ -> 
            (failwith "error"))))
and ltList_d0_d0 _lh_ltList_arg1_1 _lh_ltList_arg2_1 =
  (let rec _lh_matchIdent_5 = ((compareList_d3_d0 _lh_ltList_arg1_1) _lh_ltList_arg2_1) in
    _lh_matchIdent_5)
and ltList_d0_d1 _lh_ltList_arg1_0 _lh_ltList_arg2_0 =
  (let rec _lh_matchIdent_1 = ((compareList_d3_d1 _lh_ltList_arg1_0) _lh_ltList_arg2_0) in
    _lh_matchIdent_1)
and ltList_d1_d0 _lh_ltList_arg1_3 _lh_ltList_arg2_3 =
  (let rec _lh_matchIdent_3_1 = ((compareList_d8_d0 _lh_ltList_arg1_3) _lh_ltList_arg2_3) in
    _lh_matchIdent_3_1)
and ltList_d2_d0 _lh_ltList_arg1_2 _lh_ltList_arg2_2 =
  (let rec _lh_matchIdent_1_3 = ((compareList_d9_d0 _lh_ltList_arg1_2) _lh_ltList_arg2_2) in
    _lh_matchIdent_1_3)
and mangle_d0_d0 _lh_mangle_arg1_0 =
  (let rec sort_0 = (fun _lh_sort_arg1_0 -> 
    ((((foldr_d0_d0 (fun f_2 g_0 _lh_funcomp_x_0 -> 
      (f_2 (g_0 _lh_funcomp_x_0)))) (fun x_0 -> 
      x_0)) ((intersperse_d0_d0 reverse_d3_d0) (let rec _lh_intersperse_LH_C_0_0 = heapSort_d0_d0 in
      (let rec _lh_intersperse_LH_C_1_0 = (let rec _lh_prependToAll_LH_C_0_0 = insertSort_d0_d0 in
        (let rec _lh_prependToAll_LH_C_1_0 = (let rec _lh_prependToAll_LH_C_0_1 = mergeSort_d0_d0 in
          (let rec _lh_prependToAll_LH_C_1_1 = (let rec _lh_prependToAll_LH_C_0_2 = quickSort_d0_d0 in
            (let rec _lh_prependToAll_LH_C_1_2 = (let rec _lh_prependToAll_LH_C_0_3 = quickSort2_d0_d0 in
              (let rec _lh_prependToAll_LH_C_1_3 = (let rec _lh_prependToAll_LH_C_0_4 = quickerSort_d0_d0 in
                (let rec _lh_prependToAll_LH_C_1_4 = (let rec _lh_prependToAll_LH_C_0_5 = treeSort_d0_d0 in
                  (let rec _lh_prependToAll_LH_C_1_5 = (let rec _lh_prependToAll_LH_C_0_6 = treeSort2_d0_d0 in
                    (let rec _lh_prependToAll_LH_C_1_6 = (fun _lh_prependToAll_arg1_0 f_3 i_1 -> 
                      i_1) in
                      (fun _lh_prependToAll_arg1_1 -> 
                        (let rec h_3 = _lh_prependToAll_arg1_1 in
                          (let rec t_3 = (let rec h_4 = _lh_prependToAll_LH_C_0_6 in
                            (let rec t_4 = ((prependToAll_d0_d0 _lh_prependToAll_arg1_1) _lh_prependToAll_LH_C_1_6) in
                              (fun f_4 i_2 -> 
                                ((f_4 h_4) (((foldr_d0_d0 f_4) i_2) t_4))))) in
                            (fun f_5 i_3 -> 
                              ((f_5 h_3) (((foldr_d0_d0 f_5) i_3) t_3)))))))) in
                    (fun _lh_prependToAll_arg1_2 -> 
                      (let rec h_5 = _lh_prependToAll_arg1_2 in
                        (let rec t_5 = (let rec h_6 = _lh_prependToAll_LH_C_0_5 in
                          (let rec t_6 = ((prependToAll_d0_d0 _lh_prependToAll_arg1_2) _lh_prependToAll_LH_C_1_5) in
                            (fun f_6 i_4 -> 
                              ((f_6 h_6) (((foldr_d0_d0 f_6) i_4) t_6))))) in
                          (fun f_7 i_5 -> 
                            ((f_7 h_5) (((foldr_d0_d0 f_7) i_5) t_5)))))))) in
                  (fun _lh_prependToAll_arg1_3 -> 
                    (let rec h_7 = _lh_prependToAll_arg1_3 in
                      (let rec t_7 = (let rec h_8 = _lh_prependToAll_LH_C_0_4 in
                        (let rec t_8 = ((prependToAll_d0_d0 _lh_prependToAll_arg1_3) _lh_prependToAll_LH_C_1_4) in
                          (fun f_8 i_6 -> 
                            ((f_8 h_8) (((foldr_d0_d0 f_8) i_6) t_8))))) in
                        (fun f_9 i_7 -> 
                          ((f_9 h_7) (((foldr_d0_d0 f_9) i_7) t_7)))))))) in
                (fun _lh_prependToAll_arg1_4 -> 
                  (let rec h_9 = _lh_prependToAll_arg1_4 in
                    (let rec t_9 = (let rec h_1_0 = _lh_prependToAll_LH_C_0_3 in
                      (let rec t_1_0 = ((prependToAll_d0_d0 _lh_prependToAll_arg1_4) _lh_prependToAll_LH_C_1_3) in
                        (fun f_1_0 i_8 -> 
                          ((f_1_0 h_1_0) (((foldr_d0_d0 f_1_0) i_8) t_1_0))))) in
                      (fun f_1_1 i_9 -> 
                        ((f_1_1 h_9) (((foldr_d0_d0 f_1_1) i_9) t_9)))))))) in
              (fun _lh_prependToAll_arg1_5 -> 
                (let rec h_1_1 = _lh_prependToAll_arg1_5 in
                  (let rec t_1_1 = (let rec h_1_2 = _lh_prependToAll_LH_C_0_2 in
                    (let rec t_1_2 = ((prependToAll_d0_d0 _lh_prependToAll_arg1_5) _lh_prependToAll_LH_C_1_2) in
                      (fun f_1_2 i_1_0 -> 
                        ((f_1_2 h_1_2) (((foldr_d0_d0 f_1_2) i_1_0) t_1_2))))) in
                    (fun f_1_3 i_1_1 -> 
                      ((f_1_3 h_1_1) (((foldr_d0_d0 f_1_3) i_1_1) t_1_1)))))))) in
            (fun _lh_prependToAll_arg1_6 -> 
              (let rec h_1_3 = _lh_prependToAll_arg1_6 in
                (let rec t_1_3 = (let rec h_1_4 = _lh_prependToAll_LH_C_0_1 in
                  (let rec t_1_4 = ((prependToAll_d0_d0 _lh_prependToAll_arg1_6) _lh_prependToAll_LH_C_1_1) in
                    (fun f_1_4 i_1_2 -> 
                      ((f_1_4 h_1_4) (((foldr_d0_d0 f_1_4) i_1_2) t_1_4))))) in
                  (fun f_1_5 i_1_3 -> 
                    ((f_1_5 h_1_3) (((foldr_d0_d0 f_1_5) i_1_3) t_1_3)))))))) in
          (fun _lh_prependToAll_arg1_7 -> 
            (let rec h_1_5 = _lh_prependToAll_arg1_7 in
              (let rec t_1_5 = (let rec h_1_6 = _lh_prependToAll_LH_C_0_0 in
                (let rec t_1_6 = ((prependToAll_d0_d0 _lh_prependToAll_arg1_7) _lh_prependToAll_LH_C_1_0) in
                  (fun f_1_6 i_1_4 -> 
                    ((f_1_6 h_1_6) (((foldr_d0_d0 f_1_6) i_1_4) t_1_6))))) in
                (fun f_1_7 i_1_5 -> 
                  ((f_1_7 h_1_5) (((foldr_d0_d0 f_1_7) i_1_5) t_1_5)))))))) in
        (fun _lh_intersperse_arg1_0 -> 
          (let rec h_1_7 = _lh_intersperse_LH_C_0_0 in
            (let rec t_1_7 = ((prependToAll_d0_d0 _lh_intersperse_arg1_0) _lh_intersperse_LH_C_1_0) in
              (fun f_1_8 i_1_6 -> 
                ((f_1_8 h_1_7) (((foldr_d0_d0 f_1_8) i_1_6) t_1_7)))))))))) _lh_sort_arg1_0)) in
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        (unlines_d0_d0 (sort_0 _lh_funcomp_x_2))) (lines_d0_d0 _lh_funcomp_x_1))) _lh_mangle_arg1_0))
and mappend_d9_d0 xs_1_0 ys_2_2 =
  (match xs_1_0 with
    | `LH_C(h_3_7, t_3_7) -> 
      (let rec h_3_8 = h_3_7 in
        (let rec t_3_8 = ((mappend_d9_d0 t_3_7) ys_2_2) in
          (fun ys_2_3 -> 
            (let rec h_3_9 = h_3_8 in
              (let rec t_3_9 = ((mappend_d8_d0 t_3_8) ys_2_3) in
                (fun f_2_6 i_2_3 -> 
                  (((foldl_d0_d0 f_2_6) ((f_2_6 i_2_3) h_3_9)) t_3_9)))))))
    | `LH_N -> 
      ys_2_2)
and map_d0_d0 f_2_0 ls_6 =
  (match ls_6 with
    | `LH_C(h_2_3, t_2_3) -> 
      (let rec h_2_4 = (f_2_0 h_2_3) in
        (let rec t_2_4 = ((map_d0_d0 f_2_0) t_2_3) in
          (fun _lh_dummy_2 -> 
            ((mappend_d8_d0 h_2_4) (concat_d0_d0 t_2_4)))))
    | `LH_N -> 
      (fun _lh_dummy_3 f_2_1 i_1_8 -> 
        i_1_8))
and mergeSort_d0_d0 _lh_mergeSort_arg1_0 =
  let rec merge_lists_0 = (fun _lh_merge_lists_arg1_0 -> 
    ((_lh_merge_lists_arg1_0 merge_lists_0) merge_0))
  and runsplit_0 = (fun _lh_runsplit_arg1_0 _lh_runsplit_arg2_0 -> 
    (match _lh_runsplit_arg1_0 with
      | `LH_N -> 
        (match _lh_runsplit_arg2_0 with
          | `LH_N -> 
            (fun merge_lists_1 merge_1 -> 
              (`LH_N))
          | _ -> 
            (match _lh_runsplit_arg2_0 with
              | `LH_N -> 
                (let rec _lh_merge_lists_LH_C_0_0 = _lh_runsplit_arg1_0 in
                  (let rec _lh_merge_lists_LH_C_1_0 = (fun merge_lists_2 merge_2 -> 
                    (`LH_N)) in
                    (fun merge_lists_3 merge_3 -> 
                      ((merge_3 _lh_merge_lists_LH_C_0_0) (merge_lists_3 _lh_merge_lists_LH_C_1_0)))))
              | _ -> 
                (match _lh_runsplit_arg1_0 with
                  | `LH_N -> 
                    (match _lh_runsplit_arg2_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_0, _lh_runsplit_LH_C_1_0) -> 
                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_0, (`LH_N)))) _lh_runsplit_LH_C_1_0)
                      | _ -> 
                        (match _lh_runsplit_arg1_0 with
                          | `LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1) -> 
                            (match _lh_runsplit_arg2_0 with
                              | `LH_C(_lh_runsplit_LH_C_0_2, _lh_runsplit_LH_C_1_2) -> 
                                (let rec _lh_matchIdent_1_8 = _lh_runsplit_LH_C_1_1 in
                                  (match _lh_matchIdent_1_8 with
                                    | `LH_N -> 
                                      (if ((gtList_d3_d0 _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_1, (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))))) _lh_runsplit_LH_C_1_2)
                                      else
                                        (if ((leList_d4_d0 _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                          ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1))))) _lh_runsplit_LH_C_1_2)
                                        else
                                          (let rec _lh_merge_lists_LH_C_0_1 = (`LH_C(_lh_runsplit_LH_C_0_1, _lh_runsplit_LH_C_1_1)) in
                                            (let rec _lh_merge_lists_LH_C_1_1 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))) _lh_runsplit_LH_C_1_2) in
                                              (fun merge_lists_4 merge_4 -> 
                                                ((merge_4 _lh_merge_lists_LH_C_0_1) (merge_lists_4 _lh_merge_lists_LH_C_1_1)))))))
                                    | _ -> 
                                      (if ((leList_d3_d0 _lh_runsplit_LH_C_0_2) _lh_runsplit_LH_C_0_1) then
                                        ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_C(_lh_runsplit_LH_C_0_1, _lh_matchIdent_1_8))))) _lh_runsplit_LH_C_1_2)
                                      else
                                        (let rec _lh_merge_lists_LH_C_0_2 = (`LH_C(_lh_runsplit_LH_C_0_1, _lh_matchIdent_1_8)) in
                                          (let rec _lh_merge_lists_LH_C_1_2 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_2, (`LH_N)))) _lh_runsplit_LH_C_1_2) in
                                            (fun merge_lists_5 merge_5 -> 
                                              ((merge_5 _lh_merge_lists_LH_C_0_2) (merge_lists_5 _lh_merge_lists_LH_C_1_2))))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                  | _ -> 
                    (match _lh_runsplit_arg1_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3) -> 
                        (match _lh_runsplit_arg2_0 with
                          | `LH_C(_lh_runsplit_LH_C_0_4, _lh_runsplit_LH_C_1_4) -> 
                            (let rec _lh_matchIdent_1_9 = _lh_runsplit_LH_C_1_3 in
                              (match _lh_matchIdent_1_9 with
                                | `LH_N -> 
                                  (if ((gtList_d3_d1 _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_3, (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))))) _lh_runsplit_LH_C_1_4)
                                  else
                                    (if ((leList_d4_d1 _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                      ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3))))) _lh_runsplit_LH_C_1_4)
                                    else
                                      (let rec _lh_merge_lists_LH_C_0_3 = (`LH_C(_lh_runsplit_LH_C_0_3, _lh_runsplit_LH_C_1_3)) in
                                        (let rec _lh_merge_lists_LH_C_1_3 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))) _lh_runsplit_LH_C_1_4) in
                                          (fun merge_lists_6 merge_6 -> 
                                            ((merge_6 _lh_merge_lists_LH_C_0_3) (merge_lists_6 _lh_merge_lists_LH_C_1_3)))))))
                                | _ -> 
                                  (if ((leList_d3_d1 _lh_runsplit_LH_C_0_4) _lh_runsplit_LH_C_0_3) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_C(_lh_runsplit_LH_C_0_3, _lh_matchIdent_1_9))))) _lh_runsplit_LH_C_1_4)
                                  else
                                    (let rec _lh_merge_lists_LH_C_0_4 = (`LH_C(_lh_runsplit_LH_C_0_3, _lh_matchIdent_1_9)) in
                                      (let rec _lh_merge_lists_LH_C_1_4 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_4, (`LH_N)))) _lh_runsplit_LH_C_1_4) in
                                        (fun merge_lists_7 merge_7 -> 
                                          ((merge_7 _lh_merge_lists_LH_C_0_4) (merge_lists_7 _lh_merge_lists_LH_C_1_4))))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))))
      | _ -> 
        (match _lh_runsplit_arg2_0 with
          | `LH_N -> 
            (let rec _lh_merge_lists_LH_C_0_5 = _lh_runsplit_arg1_0 in
              (let rec _lh_merge_lists_LH_C_1_5 = (fun merge_lists_8 merge_8 -> 
                (`LH_N)) in
                (fun merge_lists_9 merge_9 -> 
                  ((merge_9 _lh_merge_lists_LH_C_0_5) (merge_lists_9 _lh_merge_lists_LH_C_1_5)))))
          | _ -> 
            (match _lh_runsplit_arg1_0 with
              | `LH_N -> 
                (match _lh_runsplit_arg2_0 with
                  | `LH_C(_lh_runsplit_LH_C_0_5, _lh_runsplit_LH_C_1_5) -> 
                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_5, (`LH_N)))) _lh_runsplit_LH_C_1_5)
                  | _ -> 
                    (match _lh_runsplit_arg1_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6) -> 
                        (match _lh_runsplit_arg2_0 with
                          | `LH_C(_lh_runsplit_LH_C_0_7, _lh_runsplit_LH_C_1_7) -> 
                            (let rec _lh_matchIdent_2_0 = _lh_runsplit_LH_C_1_6 in
                              (match _lh_matchIdent_2_0 with
                                | `LH_N -> 
                                  (if ((gtList_d3_d2 _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_6, (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))))) _lh_runsplit_LH_C_1_7)
                                  else
                                    (if ((leList_d4_d2 _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                      ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6))))) _lh_runsplit_LH_C_1_7)
                                    else
                                      (let rec _lh_merge_lists_LH_C_0_6 = (`LH_C(_lh_runsplit_LH_C_0_6, _lh_runsplit_LH_C_1_6)) in
                                        (let rec _lh_merge_lists_LH_C_1_6 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))) _lh_runsplit_LH_C_1_7) in
                                          (fun merge_lists_1_0 merge_1_0 -> 
                                            ((merge_1_0 _lh_merge_lists_LH_C_0_6) (merge_lists_1_0 _lh_merge_lists_LH_C_1_6)))))))
                                | _ -> 
                                  (if ((leList_d3_d2 _lh_runsplit_LH_C_0_7) _lh_runsplit_LH_C_0_6) then
                                    ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_C(_lh_runsplit_LH_C_0_6, _lh_matchIdent_2_0))))) _lh_runsplit_LH_C_1_7)
                                  else
                                    (let rec _lh_merge_lists_LH_C_0_7 = (`LH_C(_lh_runsplit_LH_C_0_6, _lh_matchIdent_2_0)) in
                                      (let rec _lh_merge_lists_LH_C_1_7 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_7, (`LH_N)))) _lh_runsplit_LH_C_1_7) in
                                        (fun merge_lists_1_1 merge_1_1 -> 
                                          ((merge_1_1 _lh_merge_lists_LH_C_0_7) (merge_lists_1_1 _lh_merge_lists_LH_C_1_7))))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))
              | _ -> 
                (match _lh_runsplit_arg1_0 with
                  | `LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8) -> 
                    (match _lh_runsplit_arg2_0 with
                      | `LH_C(_lh_runsplit_LH_C_0_9, _lh_runsplit_LH_C_1_9) -> 
                        (let rec _lh_matchIdent_2_1 = _lh_runsplit_LH_C_1_8 in
                          (match _lh_matchIdent_2_1 with
                            | `LH_N -> 
                              (if ((gtList_d3_d3 _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_8, (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))))) _lh_runsplit_LH_C_1_9)
                              else
                                (if ((leList_d4_d3 _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                  ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8))))) _lh_runsplit_LH_C_1_9)
                                else
                                  (let rec _lh_merge_lists_LH_C_0_8 = (`LH_C(_lh_runsplit_LH_C_0_8, _lh_runsplit_LH_C_1_8)) in
                                    (let rec _lh_merge_lists_LH_C_1_8 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))) _lh_runsplit_LH_C_1_9) in
                                      (fun merge_lists_1_2 merge_1_2 -> 
                                        ((merge_1_2 _lh_merge_lists_LH_C_0_8) (merge_lists_1_2 _lh_merge_lists_LH_C_1_8)))))))
                            | _ -> 
                              (if ((leList_d3_d3 _lh_runsplit_LH_C_0_9) _lh_runsplit_LH_C_0_8) then
                                ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_C(_lh_runsplit_LH_C_0_8, _lh_matchIdent_2_1))))) _lh_runsplit_LH_C_1_9)
                              else
                                (let rec _lh_merge_lists_LH_C_0_9 = (`LH_C(_lh_runsplit_LH_C_0_8, _lh_matchIdent_2_1)) in
                                  (let rec _lh_merge_lists_LH_C_1_9 = ((runsplit_0 (`LH_C(_lh_runsplit_LH_C_0_9, (`LH_N)))) _lh_runsplit_LH_C_1_9) in
                                    (fun merge_lists_1_3 merge_1_3 -> 
                                      ((merge_1_3 _lh_merge_lists_LH_C_0_9) (merge_lists_1_3 _lh_merge_lists_LH_C_1_9))))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))))
  and merge_0 = (fun _lh_merge_arg1_0 _lh_merge_arg2_0 -> 
    (match _lh_merge_arg1_0 with
      | `LH_N -> 
        _lh_merge_arg2_0
      | _ -> 
        (match _lh_merge_arg2_0 with
          | `LH_N -> 
            _lh_merge_arg1_0
          | _ -> 
            (match _lh_merge_arg1_0 with
              | `LH_C(_lh_merge_LH_C_0_0, _lh_merge_LH_C_1_0) -> 
                (match _lh_merge_arg2_0 with
                  | `LH_C(_lh_merge_LH_C_0_1, _lh_merge_LH_C_1_1) -> 
                    (if ((eqList_d0_d0 _lh_merge_LH_C_0_0) _lh_merge_LH_C_0_1) then
                      (`LH_C(_lh_merge_LH_C_0_0, (`LH_C(_lh_merge_LH_C_0_1, ((merge_0 _lh_merge_LH_C_1_0) _lh_merge_LH_C_1_1)))))
                    else
                      (if ((ltList_d1_d0 _lh_merge_LH_C_0_0) _lh_merge_LH_C_0_1) then
                        (`LH_C(_lh_merge_LH_C_0_0, ((merge_0 _lh_merge_LH_C_1_0) (`LH_C(_lh_merge_LH_C_0_1, _lh_merge_LH_C_1_1)))))
                      else
                        (`LH_C(_lh_merge_LH_C_0_1, ((merge_0 (`LH_C(_lh_merge_LH_C_0_0, _lh_merge_LH_C_1_0))) _lh_merge_LH_C_1_1)))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
  in ((fun _lh_funcomp_x_4 -> 
    (merge_lists_0 ((runsplit_0 (`LH_N)) _lh_funcomp_x_4))) _lh_mergeSort_arg1_0)
and partition_d0_d0 _lh_partition_arg1_0 _lh_partition_arg2_0 =
  (((foldr_d1_d0 (select_d0_d0 _lh_partition_arg1_0)) (`LH_P2((`LH_N), (`LH_N)))) _lh_partition_arg2_0)
and quickSort2_d0_d0 _lh_quickSort2_arg1_0 =
  (match _lh_quickSort2_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort2_LH_C_0_0, _lh_quickSort2_LH_C_1_0) -> 
      (let rec _lh_matchIdent_2_5 = ((partition_d0_d0 ((fun x_2 y_0 -> 
        ((geList_d0_d0 x_2) y_0)) _lh_quickSort2_LH_C_0_0)) _lh_quickSort2_LH_C_1_0) in
        (match _lh_matchIdent_2_5 with
          | `LH_P2(_lh_quickSort2_LH_P2_0_0, _lh_quickSort2_LH_P2_1_0) -> 
            ((mappend_d3_d0 (quickSort2_d0_d0 _lh_quickSort2_LH_P2_0_0)) (`LH_C(_lh_quickSort2_LH_C_0_0, (quickSort2_d0_d0 _lh_quickSort2_LH_P2_1_0))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and quickSort_d0_d0 _lh_quickSort_arg1_0 =
  (match _lh_quickSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort_LH_C_0_0, _lh_quickSort_LH_C_1_0) -> 
      ((mappend_d4_d0 (quickSort_d0_d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((leList_d5_d0 _lh_listcomp_fun_ls_h_0) _lh_quickSort_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_quickSort_LH_C_1_0)))) (`LH_C(_lh_quickSort_LH_C_0_0, (quickSort_d0_d0 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (if ((gtList_d6_d0 _lh_listcomp_fun_ls_h_1) _lh_quickSort_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 _lh_quickSort_LH_C_1_0))))))
    | _ -> 
      (failwith "error"))
and quickerSort_d0_d0 _lh_quickerSort_arg1_0 =
  (match _lh_quickerSort_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickerSort_LH_C_0_0, _lh_quickerSort_LH_C_1_0) -> 
      (match _lh_quickerSort_LH_C_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_quickerSort_LH_C_0_0, (`LH_N)))
        | _ -> 
          (let rec split_0 = (fun _lh_split_arg1_0 _lh_split_arg2_0 _lh_split_arg3_0 _lh_split_arg4_0 -> 
            (match _lh_split_arg4_0 with
              | `LH_N -> 
                ((mappend_d5_d0 (quickerSort_d0_d0 _lh_split_arg2_0)) (`LH_C(_lh_split_arg1_0, (quickerSort_d0_d0 _lh_split_arg3_0))))
              | `LH_C(_lh_split_LH_C_0_0, _lh_split_LH_C_1_0) -> 
                (if ((leList_d6_d0 _lh_split_LH_C_0_0) _lh_split_arg1_0) then
                  ((((split_0 _lh_split_arg1_0) (`LH_C(_lh_split_LH_C_0_0, _lh_split_arg2_0))) _lh_split_arg3_0) _lh_split_LH_C_1_0)
                else
                  ((((split_0 _lh_split_arg1_0) _lh_split_arg2_0) (`LH_C(_lh_split_LH_C_0_0, _lh_split_arg3_0))) _lh_split_LH_C_1_0))
              | _ -> 
                (failwith "error"))) in
            ((((split_0 _lh_quickerSort_LH_C_0_0) (`LH_N)) (`LH_N)) _lh_quickerSort_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and reverse_helper_d0_d0 ls_1_1 a_3 =
  (match ls_1_1 with
    | `LH_C(h_3_2, t_3_2) -> 
      ((reverse_helper_d0_d0 t_3_2) (let rec h_3_3 = h_3_2 in
        (let rec t_3_3 = a_3 in
          (fun ys_1_5 -> 
            (`LH_C(h_3_3, ((mappend_d0_d0 t_3_3) ys_1_5)))))))
    | `LH_N -> 
      a_3)
and reverse_helper_d0_d1 ls_1_5 a_4 =
  (match ls_1_5 with
    | `LH_C(h_3_5, t_3_5) -> 
      ((reverse_helper_d0_d1 t_3_5) (let rec h_3_6 = h_3_5 in
        (let rec t_3_6 = a_4 in
          (fun ys_2_1 -> 
            (`LH_C(h_3_6, ((mappend_d0_d1 t_3_6) ys_2_1)))))))
    | `LH_N -> 
      a_4)
and reverse_helper_d1_d0 ls_7 a_2 =
  (match ls_7 with
    | `LH_C(h_2_5, t_2_5) -> 
      ((reverse_helper_d1_d0 t_2_5) (let rec h_2_6 = h_2_5 in
        (let rec t_2_6 = a_2 in
          (fun ys_8 -> 
            (`LH_C(h_2_6, ((mappend_d1_d0 t_2_6) ys_8)))))))
    | `LH_N -> 
      a_2)
and reverse_helper_d1_d1 ls_3 a_1 =
  (match ls_3 with
    | `LH_C(h_1_9, t_1_9) -> 
      ((reverse_helper_d1_d1 t_1_9) (let rec h_2_0 = h_1_9 in
        (let rec t_2_0 = a_1 in
          (fun ys_2 -> 
            (`LH_C(h_2_0, ((mappend_d1_d1 t_2_0) ys_2)))))))
    | `LH_N -> 
      a_1)
and reverse_helper_d2_d0 ls_0 a_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      ((reverse_helper_d2_d0 t_0) (let rec h_1 = h_0 in
        (let rec t_1 = a_0 in
          (fun ys_0 -> 
            (`LH_C(h_1, ((mappend_d2_d0 t_1) ys_0)))))))
    | `LH_N -> 
      a_0)
and reverse_d0_d0 ls_5 =
  ((reverse_helper_d0_d0 ls_5) (fun ys_7 -> 
    ys_7))
and reverse_d0_d1 ls_1_3 =
  ((reverse_helper_d0_d1 ls_1_3) (fun ys_1_8 -> 
    ys_1_8))
and reverse_d1_d0 ls_4 =
  ((reverse_helper_d1_d0 ls_4) (fun ys_6 -> 
    ys_6))
and reverse_d1_d1 ls_1_4 =
  ((reverse_helper_d1_d1 ls_1_4) (fun ys_1_9 -> 
    ys_1_9))
and reverse_d2_d0 ls_1_2 =
  ((reverse_helper_d2_d0 ls_1_2) (fun ys_1_6 -> 
    ys_1_6))
and reverse_d3_d0 ls_1_6 =
  ((reverse_helper_d3_d0 ls_1_6) (`LH_N))
and testSorting_nofib_d0_d0 _lh_testSorting_nofib_arg1_0 =
  (let rec f_0 = (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('M', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('o', (`LH_C('l', (`LH_C('.', (`LH_C('M', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('D', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_C('.', (`LH_C('L', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_C('E', (`LH_C('n', (`LH_C('v', (`LH_C('i', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('f', (`LH_C('i', (`LH_C('b', (`LH_C('U', (`LH_C('t', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C('$', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('_', (`LH_C(':', (`LH_C('s', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('F', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C(')', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C(' ', (`LH_C('-', (`LH_C('>', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('u', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('.', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('=', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_C('h', (`LH_C('e', (`LH_C('a', (`LH_C('p', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('r', (`LH_C('g', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(']', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (hash_d0_d0 (mangle_d0_d0 f_0)))
and treeSort2_d0_d0 _lh_treeSort2_arg1_0 =
  let rec mkTree_0 = (fun _lh_mkTree_arg1_0 -> 
    (let rec to_tree_0 = (fun _lh_to_tree_arg1_0 _lh_to_tree_arg2_0 -> 
      (match _lh_to_tree_arg2_0 with
        | `Tip2 -> 
          (`Twig2(_lh_to_tree_arg1_0))
        | `Twig2(_lh_to_tree_Twig2_0_0) -> 
          (if ((leList_d7_d0 _lh_to_tree_arg1_0) _lh_to_tree_Twig2_0_0) then
            (`Branch2(_lh_to_tree_Twig2_0_0, (`Twig2(_lh_to_tree_arg1_0)), (`Tip2)))
          else
            (`Branch2(_lh_to_tree_Twig2_0_0, (`Tip2), (`Twig2(_lh_to_tree_arg1_0)))))
        | `Branch2(_lh_to_tree_Branch2_0_0, _lh_to_tree_Branch2_1_0, _lh_to_tree_Branch2_2_0) -> 
          (if ((leList_d8_d0 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_0_0) then
            (`Branch2(_lh_to_tree_Branch2_0_0, ((to_tree_0 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_1_0), _lh_to_tree_Branch2_2_0))
          else
            (`Branch2(_lh_to_tree_Branch2_0_0, _lh_to_tree_Branch2_1_0, ((to_tree_0 _lh_to_tree_arg1_0) _lh_to_tree_Branch2_2_0))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_d2_d0 to_tree_0) (`Tip2)) _lh_mkTree_arg1_0)))
  and readTree_0 = (fun _lh_readTree_arg1_0 -> 
    (match _lh_readTree_arg1_0 with
      | `Tip2 -> 
        (`LH_N)
      | `Twig2(_lh_readTree_Twig2_0_0) -> 
        (`LH_C(_lh_readTree_Twig2_0_0, (`LH_N)))
      | `Branch2(_lh_readTree_Branch2_0_0, _lh_readTree_Branch2_1_0, _lh_readTree_Branch2_2_0) -> 
        ((mappend_d6_d0 (readTree_0 _lh_readTree_Branch2_1_0)) (`LH_C(_lh_readTree_Branch2_0_0, (readTree_0 _lh_readTree_Branch2_2_0))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_3 -> 
    (readTree_0 (mkTree_0 _lh_funcomp_x_3))) _lh_treeSort2_arg1_0)
and treeSort_d0_d0 _lh_treeSort_arg1_0 =
  let rec mkTree_1 = (fun _lh_mkTree_arg1_1 -> 
    (let rec to_tree_1 = (fun _lh_to_tree_arg1_1 _lh_to_tree_arg2_1 -> 
      (match _lh_to_tree_arg2_1 with
        | `Tip -> 
          (`Branch(_lh_to_tree_arg1_1, (`Tip), (`Tip)))
        | `Branch(_lh_to_tree_Branch_0_0, _lh_to_tree_Branch_1_0, _lh_to_tree_Branch_2_0) -> 
          (if ((leList_d9_d0 _lh_to_tree_arg1_1) _lh_to_tree_Branch_0_0) then
            (`Branch(_lh_to_tree_Branch_0_0, ((to_tree_1 _lh_to_tree_arg1_1) _lh_to_tree_Branch_1_0), _lh_to_tree_Branch_2_0))
          else
            (`Branch(_lh_to_tree_Branch_0_0, _lh_to_tree_Branch_1_0, ((to_tree_1 _lh_to_tree_arg1_1) _lh_to_tree_Branch_2_0))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_d3_d0 to_tree_1) (`Tip)) _lh_mkTree_arg1_1)))
  and readTree_1 = (fun _lh_readTree_arg1_1 -> 
    (match _lh_readTree_arg1_1 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_readTree_Branch_0_0, _lh_readTree_Branch_1_0, _lh_readTree_Branch_2_0) -> 
        ((mappend_d7_d0 (readTree_1 _lh_readTree_Branch_1_0)) (`LH_C(_lh_readTree_Branch_0_0, (readTree_1 _lh_readTree_Branch_2_0))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_5 -> 
    (readTree_1 (mkTree_1 _lh_funcomp_x_5))) _lh_treeSort_arg1_0)
and unlines_d0_d0 _lh_unlines_arg1_0 =
  (concat_d0_d0 ((map_d0_d0 (fun l_0 -> 
    ((mappend_d9_d0 l_0) (let rec h_3_0 = '|' in
      (let rec t_3_0 = (fun ys_1_3 -> 
        ys_1_3) in
        (fun ys_1_4 -> 
          (let rec h_3_1 = h_3_0 in
            (let rec t_3_1 = ((mappend_d8_d0 t_3_0) ys_1_4) in
              (fun f_2_4 i_2_1 -> 
                (((foldl_d0_d0 f_2_4) ((f_2_4 i_2_1) h_3_1)) t_3_1)))))))))) _lh_unlines_arg1_0));;

(* lumberhack_pop_out *)
let rec compareList_d0_d0_d0 _lh_compareList_arg1_2_7 _lh_compareList_arg2_2_7 =
  (match _lh_compareList_arg1_2_7 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_7 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_8_1, _lh_compareList_LH_C_1_8_1) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_8_2, _lh_compareList_LH_C_1_8_2) -> 
      (match _lh_compareList_arg2_2_7 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_8_3, _lh_compareList_LH_C_1_8_3) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_8_2) = (int_of_char _lh_compareList_LH_C_0_8_3)) then
            ((compareList_d0_d0_d0 _lh_compareList_LH_C_1_8_2) _lh_compareList_LH_C_1_8_3)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_8_2) < (int_of_char _lh_compareList_LH_C_0_8_3)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d0_d0 _lh_compareList_arg1_4_1 _lh_compareList_arg2_4_1 =
  (match _lh_compareList_arg1_4_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_1 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_2_3, _lh_compareList_LH_C_1_1_2_3) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_2_4, _lh_compareList_LH_C_1_1_2_4) -> 
      (match _lh_compareList_arg2_4_1 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_2_5, _lh_compareList_LH_C_1_1_2_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_2_4) = (int_of_char _lh_compareList_LH_C_0_1_2_5)) then
            ((compareList_d1_d0_d0 _lh_compareList_LH_C_1_1_2_4) _lh_compareList_LH_C_1_1_2_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_2_4) < (int_of_char _lh_compareList_LH_C_0_1_2_5)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d0_d0_d0 _lh_compareList_arg1_2_6 _lh_compareList_arg2_2_6 =
  (match _lh_compareList_arg1_2_6 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_6 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_7_8, _lh_compareList_LH_C_1_7_8) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_7_9, _lh_compareList_LH_C_1_7_9) -> 
      (match _lh_compareList_arg2_2_6 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_8_0, _lh_compareList_LH_C_1_8_0) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_7_9) = (int_of_char _lh_compareList_LH_C_0_8_0)) then
            ((compareList_d1_d0_d0_d0 _lh_compareList_LH_C_1_7_9) _lh_compareList_LH_C_1_8_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_7_9) < (int_of_char _lh_compareList_LH_C_0_8_0)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d1_d0_d0 _lh_compareList_arg1_3_3 _lh_compareList_arg2_3_3 =
  (match _lh_compareList_arg1_3_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_3 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_9_9, _lh_compareList_LH_C_1_9_9) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_0_0, _lh_compareList_LH_C_1_1_0_0) -> 
      (match _lh_compareList_arg2_3_3 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_0_1, _lh_compareList_LH_C_1_1_0_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_0_0) = (int_of_char _lh_compareList_LH_C_0_1_0_1)) then
            ((compareList_d1_d1_d0_d0 _lh_compareList_LH_C_1_1_0_0) _lh_compareList_LH_C_1_1_0_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_0_0) < (int_of_char _lh_compareList_LH_C_0_1_0_1)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d2_d0_d0 _lh_compareList_arg1_4_2 _lh_compareList_arg2_4_2 =
  (match _lh_compareList_arg1_4_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_2_6, _lh_compareList_LH_C_1_1_2_6) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_2_7, _lh_compareList_LH_C_1_1_2_7) -> 
      (match _lh_compareList_arg2_4_2 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_2_8, _lh_compareList_LH_C_1_1_2_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_2_7) = (int_of_char _lh_compareList_LH_C_0_1_2_8)) then
            ((compareList_d1_d2_d0_d0 _lh_compareList_LH_C_1_1_2_7) _lh_compareList_LH_C_1_1_2_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_2_7) < (int_of_char _lh_compareList_LH_C_0_1_2_8)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d3_d0_d0 _lh_compareList_arg1_4_8 _lh_compareList_arg2_4_8 =
  (match _lh_compareList_arg1_4_8 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_8 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_4_4, _lh_compareList_LH_C_1_1_4_4) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_4_5, _lh_compareList_LH_C_1_1_4_5) -> 
      (match _lh_compareList_arg2_4_8 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_4_6, _lh_compareList_LH_C_1_1_4_6) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_4_5) = (int_of_char _lh_compareList_LH_C_0_1_4_6)) then
            ((compareList_d1_d3_d0_d0 _lh_compareList_LH_C_1_1_4_5) _lh_compareList_LH_C_1_1_4_6)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_4_5) < (int_of_char _lh_compareList_LH_C_0_1_4_6)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d4_d0_d0 _lh_compareList_arg1_4_4 _lh_compareList_arg2_4_4 =
  (match _lh_compareList_arg1_4_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_4 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_3_2, _lh_compareList_LH_C_1_1_3_2) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_3_3, _lh_compareList_LH_C_1_1_3_3) -> 
      (match _lh_compareList_arg2_4_4 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_3_4, _lh_compareList_LH_C_1_1_3_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_3_3) = (int_of_char _lh_compareList_LH_C_0_1_3_4)) then
            ((compareList_d1_d4_d0_d0 _lh_compareList_LH_C_1_1_3_3) _lh_compareList_LH_C_1_1_3_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_3_3) < (int_of_char _lh_compareList_LH_C_0_1_3_4)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d1_d5_d0_d0 _lh_compareList_arg1_3_2 _lh_compareList_arg2_3_2 =
  (match _lh_compareList_arg1_3_2 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_2 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_9_6, _lh_compareList_LH_C_1_9_6) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_9_7, _lh_compareList_LH_C_1_9_7) -> 
      (match _lh_compareList_arg2_3_2 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_9_8, _lh_compareList_LH_C_1_9_8) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_9_7) = (int_of_char _lh_compareList_LH_C_0_9_8)) then
            ((compareList_d1_d5_d0_d0 _lh_compareList_LH_C_1_9_7) _lh_compareList_LH_C_1_9_8)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_9_7) < (int_of_char _lh_compareList_LH_C_0_9_8)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d2_d0_d0 _lh_compareList_arg1_4_6 _lh_compareList_arg2_4_6 =
  (match _lh_compareList_arg1_4_6 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_6 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_3_8, _lh_compareList_LH_C_1_1_3_8) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_3_9, _lh_compareList_LH_C_1_1_3_9) -> 
      (match _lh_compareList_arg2_4_6 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_4_0, _lh_compareList_LH_C_1_1_4_0) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_3_9) = (int_of_char _lh_compareList_LH_C_0_1_4_0)) then
            ((compareList_d2_d0_d0 _lh_compareList_LH_C_1_1_3_9) _lh_compareList_LH_C_1_1_4_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_3_9) < (int_of_char _lh_compareList_LH_C_0_1_4_0)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d3_d0_d0 _lh_compareList_arg1_3_0 _lh_compareList_arg2_3_0 =
  (match _lh_compareList_arg1_3_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_9_0, _lh_compareList_LH_C_1_9_0) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_9_1, _lh_compareList_LH_C_1_9_1) -> 
      (match _lh_compareList_arg2_3_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_9_2, _lh_compareList_LH_C_1_9_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_9_1) = (int_of_char _lh_compareList_LH_C_0_9_2)) then
            ((compareList_d3_d0_d0 _lh_compareList_LH_C_1_9_1) _lh_compareList_LH_C_1_9_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_9_1) < (int_of_char _lh_compareList_LH_C_0_9_2)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d3_d1_d0 _lh_compareList_arg1_3_6 _lh_compareList_arg2_3_6 =
  (match _lh_compareList_arg1_3_6 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_6 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_0_8, _lh_compareList_LH_C_1_1_0_8) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_0_9, _lh_compareList_LH_C_1_1_0_9) -> 
      (match _lh_compareList_arg2_3_6 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_1_0, _lh_compareList_LH_C_1_1_1_0) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_0_9) = (int_of_char _lh_compareList_LH_C_0_1_1_0)) then
            ((compareList_d3_d1_d0 _lh_compareList_LH_C_1_1_0_9) _lh_compareList_LH_C_1_1_1_0)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_0_9) < (int_of_char _lh_compareList_LH_C_0_1_1_0)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d4_d0_d0 _lh_compareList_arg1_5_1 _lh_compareList_arg2_5_1 =
  (match _lh_compareList_arg1_5_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_5_1 with
        | `LH_N -> 
          (`EQ)
        | `LH_C(_lh_compareList_LH_C_0_1_5_3, _lh_compareList_LH_C_1_1_5_3) -> 
          (`LT)
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_5_4, _lh_compareList_LH_C_1_1_5_4) -> 
      (match _lh_compareList_arg2_5_1 with
        | `LH_N -> 
          (`GT)
        | `LH_C(_lh_compareList_LH_C_0_1_5_5, _lh_compareList_LH_C_1_1_5_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_5_4) = (int_of_char _lh_compareList_LH_C_0_1_5_5)) then
            ((compareList_d4_d0_d0 _lh_compareList_LH_C_1_1_5_4) _lh_compareList_LH_C_1_1_5_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_5_4) < (int_of_char _lh_compareList_LH_C_0_1_5_5)) then
              (`LT)
            else
              (`GT)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d5_d0_d0 _lh_compareList_arg1_4_3 _lh_compareList_arg2_4_3 =
  (match _lh_compareList_arg1_4_3 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_3 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_2_9, _lh_compareList_LH_C_1_1_2_9) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_3_0, _lh_compareList_LH_C_1_1_3_0) -> 
      (match _lh_compareList_arg2_4_3 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_3_1, _lh_compareList_LH_C_1_1_3_1) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_3_0) = (int_of_char _lh_compareList_LH_C_0_1_3_1)) then
            ((compareList_d5_d0_d0 _lh_compareList_LH_C_1_1_3_0) _lh_compareList_LH_C_1_1_3_1)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_3_0) < (int_of_char _lh_compareList_LH_C_0_1_3_1)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d5_d1_d0 _lh_compareList_arg1_3_9 _lh_compareList_arg2_3_9 =
  (match _lh_compareList_arg1_3_9 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_9 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_1_7, _lh_compareList_LH_C_1_1_1_7) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_1_8, _lh_compareList_LH_C_1_1_1_8) -> 
      (match _lh_compareList_arg2_3_9 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_1_9, _lh_compareList_LH_C_1_1_1_9) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_1_8) = (int_of_char _lh_compareList_LH_C_0_1_1_9)) then
            ((compareList_d5_d1_d0 _lh_compareList_LH_C_1_1_1_8) _lh_compareList_LH_C_1_1_1_9)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_1_8) < (int_of_char _lh_compareList_LH_C_0_1_1_9)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d5_d2_d0 _lh_compareList_arg1_3_5 _lh_compareList_arg2_3_5 =
  (match _lh_compareList_arg1_3_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_5 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_0_5, _lh_compareList_LH_C_1_1_0_5) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_0_6, _lh_compareList_LH_C_1_1_0_6) -> 
      (match _lh_compareList_arg2_3_5 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_0_7, _lh_compareList_LH_C_1_1_0_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_0_6) = (int_of_char _lh_compareList_LH_C_0_1_0_7)) then
            ((compareList_d5_d2_d0 _lh_compareList_LH_C_1_1_0_6) _lh_compareList_LH_C_1_1_0_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_0_6) < (int_of_char _lh_compareList_LH_C_0_1_0_7)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d5_d3_d0 _lh_compareList_arg1_3_1 _lh_compareList_arg2_3_1 =
  (match _lh_compareList_arg1_3_1 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_1 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_9_3, _lh_compareList_LH_C_1_9_3) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_9_4, _lh_compareList_LH_C_1_9_4) -> 
      (match _lh_compareList_arg2_3_1 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_9_5, _lh_compareList_LH_C_1_9_5) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_9_4) = (int_of_char _lh_compareList_LH_C_0_9_5)) then
            ((compareList_d5_d3_d0 _lh_compareList_LH_C_1_9_4) _lh_compareList_LH_C_1_9_5)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_9_4) < (int_of_char _lh_compareList_LH_C_0_9_5)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d6_d0_d0 _lh_compareList_arg1_2_9 _lh_compareList_arg2_2_9 =
  (match _lh_compareList_arg1_2_9 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_9 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_8_7, _lh_compareList_LH_C_1_8_7) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_8_8, _lh_compareList_LH_C_1_8_8) -> 
      (match _lh_compareList_arg2_2_9 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_8_9, _lh_compareList_LH_C_1_8_9) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_8_8) = (int_of_char _lh_compareList_LH_C_0_8_9)) then
            ((compareList_d6_d0_d0 _lh_compareList_LH_C_1_8_8) _lh_compareList_LH_C_1_8_9)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_8_8) < (int_of_char _lh_compareList_LH_C_0_8_9)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d6_d1_d0 _lh_compareList_arg1_4_5 _lh_compareList_arg2_4_5 =
  (match _lh_compareList_arg1_4_5 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_5 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_3_5, _lh_compareList_LH_C_1_1_3_5) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_3_6, _lh_compareList_LH_C_1_1_3_6) -> 
      (match _lh_compareList_arg2_4_5 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_3_7, _lh_compareList_LH_C_1_1_3_7) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_3_6) = (int_of_char _lh_compareList_LH_C_0_1_3_7)) then
            ((compareList_d6_d1_d0 _lh_compareList_LH_C_1_1_3_6) _lh_compareList_LH_C_1_1_3_7)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_3_6) < (int_of_char _lh_compareList_LH_C_0_1_3_7)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d6_d2_d0 _lh_compareList_arg1_3_7 _lh_compareList_arg2_3_7 =
  (match _lh_compareList_arg1_3_7 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_7 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_1_1, _lh_compareList_LH_C_1_1_1_1) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_1_2, _lh_compareList_LH_C_1_1_1_2) -> 
      (match _lh_compareList_arg2_3_7 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_1_3, _lh_compareList_LH_C_1_1_1_3) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_1_2) = (int_of_char _lh_compareList_LH_C_0_1_1_3)) then
            ((compareList_d6_d2_d0 _lh_compareList_LH_C_1_1_1_2) _lh_compareList_LH_C_1_1_1_3)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_1_2) < (int_of_char _lh_compareList_LH_C_0_1_1_3)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d6_d3_d0 _lh_compareList_arg1_4_9 _lh_compareList_arg2_4_9 =
  (match _lh_compareList_arg1_4_9 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_9 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_4_7, _lh_compareList_LH_C_1_1_4_7) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_4_8, _lh_compareList_LH_C_1_1_4_8) -> 
      (match _lh_compareList_arg2_4_9 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_4_9, _lh_compareList_LH_C_1_1_4_9) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_4_8) = (int_of_char _lh_compareList_LH_C_0_1_4_9)) then
            ((compareList_d6_d3_d0 _lh_compareList_LH_C_1_1_4_8) _lh_compareList_LH_C_1_1_4_9)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_4_8) < (int_of_char _lh_compareList_LH_C_0_1_4_9)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d7_d0_d0 _lh_compareList_arg1_5_0 _lh_compareList_arg2_5_0 =
  (match _lh_compareList_arg1_5_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_5_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_5_0, _lh_compareList_LH_C_1_1_5_0) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_5_1, _lh_compareList_LH_C_1_1_5_1) -> 
      (match _lh_compareList_arg2_5_0 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_5_2, _lh_compareList_LH_C_1_1_5_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_5_1) = (int_of_char _lh_compareList_LH_C_0_1_5_2)) then
            ((compareList_d7_d0_d0 _lh_compareList_LH_C_1_1_5_1) _lh_compareList_LH_C_1_1_5_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_5_1) < (int_of_char _lh_compareList_LH_C_0_1_5_2)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d7_d1_d0 _lh_compareList_arg1_4_7 _lh_compareList_arg2_4_7 =
  (match _lh_compareList_arg1_4_7 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_7 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_4_1, _lh_compareList_LH_C_1_1_4_1) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_4_2, _lh_compareList_LH_C_1_1_4_2) -> 
      (match _lh_compareList_arg2_4_7 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_4_3, _lh_compareList_LH_C_1_1_4_3) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_4_2) = (int_of_char _lh_compareList_LH_C_0_1_4_3)) then
            ((compareList_d7_d1_d0 _lh_compareList_LH_C_1_1_4_2) _lh_compareList_LH_C_1_1_4_3)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_4_2) < (int_of_char _lh_compareList_LH_C_0_1_4_3)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d7_d2_d0 _lh_compareList_arg1_4_0 _lh_compareList_arg2_4_0 =
  (match _lh_compareList_arg1_4_0 with
    | `LH_N -> 
      (match _lh_compareList_arg2_4_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_2_0, _lh_compareList_LH_C_1_1_2_0) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_2_1, _lh_compareList_LH_C_1_1_2_1) -> 
      (match _lh_compareList_arg2_4_0 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_1_2_2, _lh_compareList_LH_C_1_1_2_2) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_2_1) = (int_of_char _lh_compareList_LH_C_0_1_2_2)) then
            ((compareList_d7_d2_d0 _lh_compareList_LH_C_1_1_2_1) _lh_compareList_LH_C_1_1_2_2)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_2_1) < (int_of_char _lh_compareList_LH_C_0_1_2_2)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d7_d3_d0 _lh_compareList_arg1_2_8 _lh_compareList_arg2_2_8 =
  (match _lh_compareList_arg1_2_8 with
    | `LH_N -> 
      (match _lh_compareList_arg2_2_8 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_8_4, _lh_compareList_LH_C_1_8_4) -> 
          false
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_8_5, _lh_compareList_LH_C_1_8_5) -> 
      (match _lh_compareList_arg2_2_8 with
        | `LH_N -> 
          true
        | `LH_C(_lh_compareList_LH_C_0_8_6, _lh_compareList_LH_C_1_8_6) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_8_5) = (int_of_char _lh_compareList_LH_C_0_8_6)) then
            ((compareList_d7_d3_d0 _lh_compareList_LH_C_1_8_5) _lh_compareList_LH_C_1_8_6)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_8_5) < (int_of_char _lh_compareList_LH_C_0_8_6)) then
              false
            else
              true))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d8_d0_d0 _lh_compareList_arg1_3_4 _lh_compareList_arg2_3_4 =
  (match _lh_compareList_arg1_3_4 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_4 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_0_2, _lh_compareList_LH_C_1_1_0_2) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_0_3, _lh_compareList_LH_C_1_1_0_3) -> 
      (match _lh_compareList_arg2_3_4 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_0_4, _lh_compareList_LH_C_1_1_0_4) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_0_3) = (int_of_char _lh_compareList_LH_C_0_1_0_4)) then
            ((compareList_d8_d0_d0 _lh_compareList_LH_C_1_1_0_3) _lh_compareList_LH_C_1_1_0_4)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_0_3) < (int_of_char _lh_compareList_LH_C_0_1_0_4)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareList_d9_d0_d0 _lh_compareList_arg1_3_8 _lh_compareList_arg2_3_8 =
  (match _lh_compareList_arg1_3_8 with
    | `LH_N -> 
      (match _lh_compareList_arg2_3_8 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_1_4, _lh_compareList_LH_C_1_1_1_4) -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_compareList_LH_C_0_1_1_5, _lh_compareList_LH_C_1_1_1_5) -> 
      (match _lh_compareList_arg2_3_8 with
        | `LH_N -> 
          false
        | `LH_C(_lh_compareList_LH_C_0_1_1_6, _lh_compareList_LH_C_1_1_1_6) -> 
          (if ((int_of_char _lh_compareList_LH_C_0_1_1_5) = (int_of_char _lh_compareList_LH_C_0_1_1_6)) then
            ((compareList_d9_d0_d0 _lh_compareList_LH_C_1_1_1_5) _lh_compareList_LH_C_1_1_1_6)
          else
            (if ((int_of_char _lh_compareList_LH_C_0_1_1_5) < (int_of_char _lh_compareList_LH_C_0_1_1_6)) then
              true
            else
              false))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat_d0_d0_d0 lss_2 =
  (lss_2 99);;
let rec concat_d0_d0_d1 lss_1 =
  (lss_1 99);;
let rec foldl_d0_d0_d0 f_5_3 i_4_9 ls_3_2 =
  ((ls_3_2 f_5_3) i_4_9);;
let rec foldl_d0_d0_d1 f_5_1 i_4_7 ls_3_0 =
  ((ls_3_0 f_5_1) i_4_7);;
let rec foldl_d0_d0_d2 f_5_9 i_5_4 ls_4_2 =
  ((ls_4_2 f_5_9) i_5_4);;
let rec foldr_d0_d0_d0 f_2_9 i_2_6 ls_2_3 =
  ((ls_2_3 f_2_9) i_2_6);;
let rec foldr_d0_d0_d1 f_5_0 i_4_6 ls_2_9 =
  ((ls_2_9 f_5_0) i_4_6);;
let rec foldr_d0_d0_d1_d0 f_5_7 i_5_3 ls_4_1 =
  ((ls_4_1 f_5_7) i_5_3);;
let rec foldr_d0_d0_d1_d1 f_6_2 i_5_7 ls_4_6 =
  ((ls_4_6 f_6_2) i_5_7);;
let rec foldr_d0_d0_d1_d2 f_7_0 i_6_4 ls_5_2 =
  ((ls_5_2 f_7_0) i_6_4);;
let rec foldr_d0_d0_d1_d3 f_6_5 i_6_0 ls_4_9 =
  ((ls_4_9 f_6_5) i_6_0);;
let rec foldr_d0_d0_d1_d4 f_6_0 i_5_5 ls_4_3 =
  ((ls_4_3 f_6_0) i_5_5);;
let rec foldr_d0_d0_d1_d5 f_5_6 i_5_2 ls_4_0 =
  ((ls_4_0 f_5_6) i_5_2);;
let rec foldr_d0_d0_d2 f_2_8 i_2_5 ls_2_2 =
  ((ls_2_2 f_2_8) i_2_5);;
let rec foldr_d0_d0_d3 f_5_5 i_5_1 ls_3_9 =
  ((ls_3_9 f_5_5) i_5_1);;
let rec foldr_d0_d0_d4 f_5_2 i_4_8 ls_3_1 =
  ((ls_3_1 f_5_2) i_4_8);;
let rec foldr_d0_d0_d5 f_4_9 i_4_5 ls_2_8 =
  ((ls_2_8 f_4_9) i_4_5);;
let rec foldr_d0_d0_d6 f_6_1 i_5_6 ls_4_5 =
  ((ls_4_5 f_6_1) i_5_6);;
let rec foldr_d0_d0_d7 f_5_4 i_5_0 ls_3_5 =
  ((ls_3_5 f_5_4) i_5_0);;
let rec foldr_d0_d0_d8 f_6_4 i_5_9 ls_4_8 =
  ((ls_4_8 f_6_4) i_5_9);;
let rec foldr_d0_d0_d9 f_4_8 i_4_4 ls_2_6 =
  ((ls_2_6 f_4_8) i_4_4);;
let rec foldr_d1_d0_d0 f_6_3 i_5_8 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_6_9, t_6_9) -> 
      ((f_6_3 h_6_9) (((foldr_d1_d0_d0 f_6_3) i_5_8) t_6_9))
    | `LH_N -> 
      i_5_8);;
let rec foldr_d2_d0_d0 f_3_0 i_2_7 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_4_9, t_4_9) -> 
      ((f_3_0 h_4_9) (((foldr_d2_d0_d0 f_3_0) i_2_7) t_4_9))
    | `LH_N -> 
      i_2_7);;
let rec foldr_d3_d0_d0 f_2_7 i_2_4 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_4_3, t_4_3) -> 
      ((f_2_7 h_4_3) (((foldr_d3_d0_d0 f_2_7) i_2_4) t_4_3))
    | `LH_N -> 
      i_2_4);;
let rec intersperse_d0_d0_d0 _lh_intersperse_arg1_3 _lh_intersperse_arg2_1 =
  (_lh_intersperse_arg2_1 _lh_intersperse_arg1_3);;
let rec mappend_d0_d0_d0 xs_2_5 ys_4_7 =
  (xs_2_5 ys_4_7);;
let rec mappend_d0_d0_d1 xs_1_9 ys_3_8 =
  (xs_1_9 ys_3_8);;
let rec mappend_d0_d1_d0 xs_1_5 ys_3_2 =
  (xs_1_5 ys_3_2);;
let rec mappend_d0_d1_d1 xs_1_8 ys_3_6 =
  (xs_1_8 ys_3_6);;
let rec mappend_d1_d0_d0 xs_1_6 ys_3_3 =
  (xs_1_6 ys_3_3);;
let rec mappend_d1_d0_d1 xs_2_0 ys_3_9 =
  (xs_2_0 ys_3_9);;
let rec mappend_d1_d1_d0 xs_1_4 ys_3_0 =
  (xs_1_4 ys_3_0);;
let rec mappend_d1_d1_d1 xs_2_2 ys_4_2 =
  (xs_2_2 ys_4_2);;
let rec mappend_d2_d0_d0 xs_2_4 ys_4_5 =
  (xs_2_4 ys_4_5);;
let rec mappend_d2_d0_d1 xs_1_2 ys_2_7 =
  (xs_1_2 ys_2_7);;
let rec mappend_d3_d0_d0 xs_1_3 ys_2_9 =
  (match xs_1_3 with
    | `LH_C(h_4_8, t_4_8) -> 
      (`LH_C(h_4_8, ((mappend_d3_d0_d0 t_4_8) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend_d4_d0_d0 xs_2_6 ys_4_8 =
  (match xs_2_6 with
    | `LH_C(h_7_0, t_7_0) -> 
      (`LH_C(h_7_0, ((mappend_d4_d0_d0 t_7_0) ys_4_8)))
    | `LH_N -> 
      ys_4_8);;
let rec mappend_d5_d0_d0 xs_3_0 ys_5_4 =
  (match xs_3_0 with
    | `LH_C(h_7_7, t_7_7) -> 
      (`LH_C(h_7_7, ((mappend_d5_d0_d0 t_7_7) ys_5_4)))
    | `LH_N -> 
      ys_5_4);;
let rec mappend_d6_d0_d0 xs_1_7 ys_3_5 =
  (match xs_1_7 with
    | `LH_C(h_6_5, t_6_5) -> 
      (`LH_C(h_6_5, ((mappend_d6_d0_d0 t_6_5) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec mappend_d7_d0_d0 xs_2_9 ys_5_3 =
  (match xs_2_9 with
    | `LH_C(h_7_6, t_7_6) -> 
      (`LH_C(h_7_6, ((mappend_d7_d0_d0 t_7_6) ys_5_3)))
    | `LH_N -> 
      ys_5_3);;
let rec mappend_d8_d0_d0 xs_2_1 ys_4_1 =
  (xs_2_1 ys_4_1);;
let rec mappend_d8_d0_d1 xs_2_7 ys_5_0 =
  (xs_2_7 ys_5_0);;
let rec mappend_d8_d0_d2 xs_2_3 ys_4_4 =
  (xs_2_3 ys_4_4);;
let rec odd_d0_d0_d0 _lh_odd_arg1_3 =
  ((_lh_odd_arg1_3 mod 2) = 0);;
let rec odd_d1_d0_d0 _lh_odd_arg1_2 =
  ((_lh_odd_arg1_2 mod 2) = 0);;
let rec prependToAll_d0_d0_d0 _lh_prependToAll_arg1_2_0 _lh_prependToAll_arg2_4 =
  (_lh_prependToAll_arg2_4 _lh_prependToAll_arg1_2_0);;
let rec prependToAll_d0_d0_d1 _lh_prependToAll_arg1_2_4 _lh_prependToAll_arg2_8 =
  (_lh_prependToAll_arg2_8 _lh_prependToAll_arg1_2_4);;
let rec prependToAll_d0_d0_d2 _lh_prependToAll_arg1_1_9 _lh_prependToAll_arg2_3 =
  (_lh_prependToAll_arg2_3 _lh_prependToAll_arg1_1_9);;
let rec prependToAll_d0_d0_d3 _lh_prependToAll_arg1_2_2 _lh_prependToAll_arg2_6 =
  (_lh_prependToAll_arg2_6 _lh_prependToAll_arg1_2_2);;
let rec prependToAll_d0_d0_d4 _lh_prependToAll_arg1_2_1 _lh_prependToAll_arg2_5 =
  (_lh_prependToAll_arg2_5 _lh_prependToAll_arg1_2_1);;
let rec prependToAll_d0_d0_d5 _lh_prependToAll_arg1_9 _lh_prependToAll_arg2_1 =
  (_lh_prependToAll_arg2_1 _lh_prependToAll_arg1_9);;
let rec prependToAll_d0_d0_d6 _lh_prependToAll_arg1_2_3 _lh_prependToAll_arg2_7 =
  (_lh_prependToAll_arg2_7 _lh_prependToAll_arg1_2_3);;
let rec prependToAll_d0_d0_d7 _lh_prependToAll_arg1_1_8 _lh_prependToAll_arg2_2 =
  (_lh_prependToAll_arg2_2 _lh_prependToAll_arg1_1_8);;
let rec reverse_helper_d3_d0_d0 ls_3_7 a_1_0 =
  (match ls_3_7 with
    | `LH_C(h_6_8, t_6_8) -> 
      ((reverse_helper_d3_d0_d0 t_6_8) (`LH_C(h_6_8, a_1_0)))
    | `LH_N -> 
      a_1_0);;
let rec select_d0_d0_d0 _lh_select_arg1_1 _lh_select_arg2_1 _lh_select_arg3_1 =
  (match _lh_select_arg3_1 with
    | `LH_P2(_lh_select_LH_P2_0_1, _lh_select_LH_P2_1_1) -> 
      (if (_lh_select_arg1_1 _lh_select_arg2_1) then
        (`LH_P2((`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_0_1)), _lh_select_LH_P2_1_1))
      else
        (`LH_P2(_lh_select_LH_P2_0_1, (`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec break_d0_d0_d0 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_4 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_1 = _lh_break_LH_C_1_1 in
          (fun _lh_dummy_5 -> 
            (lines_d0_d0_d0 _lh_lines_LH_C_1_1)))))
      else
        (let rec _lh_matchIdent_4_1 = ((break_d0_d0_d0 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_4_1 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and eqList_d0_d0_d0 _lh_eqList_arg1_1 _lh_eqList_arg2_1 =
  (((compareList_d4_d0_d0 _lh_eqList_arg1_1) _lh_eqList_arg2_1) = (`EQ))
and geList_d0_d0_d0 _lh_geList_arg1_1 _lh_geList_arg2_1 =
  (not ((ltList_d2_d0_d0 _lh_geList_arg1_1) _lh_geList_arg2_1))
and gtList_d0_d0_d0 _lh_gtList_arg1_3_8 _lh_gtList_arg2_3_8 =
  (let rec _lh_matchIdent_6_1 = ((compareList_d0_d0_d0 _lh_gtList_arg1_3_8) _lh_gtList_arg2_3_8) in
    _lh_matchIdent_6_1)
and gtList_d1_d0_d0 _lh_gtList_arg1_3_5 _lh_gtList_arg2_3_5 =
  (let rec _lh_matchIdent_5_7 = ((compareList_d1_d0_d0 _lh_gtList_arg1_3_5) _lh_gtList_arg2_3_5) in
    _lh_matchIdent_5_7)
and gtList_d1_d0_d0_d0 _lh_gtList_arg1_2_8 _lh_gtList_arg2_2_8 =
  (let rec _lh_matchIdent_4_4 = ((compareList_d1_d4_d0_d0 _lh_gtList_arg1_2_8) _lh_gtList_arg2_2_8) in
    _lh_matchIdent_4_4)
and gtList_d1_d1_d0_d0 _lh_gtList_arg1_2_4 _lh_gtList_arg2_2_4 =
  (let rec _lh_matchIdent_3_8 = ((compareList_d1_d5_d0_d0 _lh_gtList_arg1_2_4) _lh_gtList_arg2_2_4) in
    _lh_matchIdent_3_8)
and gtList_d2_d0_d0 _lh_gtList_arg1_2_1 _lh_gtList_arg2_2_1 =
  (let rec _lh_matchIdent_3_3 = ((compareList_d2_d0_d0 _lh_gtList_arg1_2_1) _lh_gtList_arg2_2_1) in
    _lh_matchIdent_3_3)
and gtList_d3_d0_d0 _lh_gtList_arg1_2_5 _lh_gtList_arg2_2_5 =
  (let rec _lh_matchIdent_3_9 = ((compareList_d5_d0_d0 _lh_gtList_arg1_2_5) _lh_gtList_arg2_2_5) in
    _lh_matchIdent_3_9)
and gtList_d3_d1_d0 _lh_gtList_arg1_3_1 _lh_gtList_arg2_3_1 =
  (let rec _lh_matchIdent_4_8 = ((compareList_d5_d1_d0 _lh_gtList_arg1_3_1) _lh_gtList_arg2_3_1) in
    _lh_matchIdent_4_8)
and gtList_d3_d2_d0 _lh_gtList_arg1_3_7 _lh_gtList_arg2_3_7 =
  (let rec _lh_matchIdent_6_0 = ((compareList_d5_d2_d0 _lh_gtList_arg1_3_7) _lh_gtList_arg2_3_7) in
    _lh_matchIdent_6_0)
and gtList_d3_d3_d0 _lh_gtList_arg1_2_2 _lh_gtList_arg2_2_2 =
  (let rec _lh_matchIdent_3_4 = ((compareList_d5_d3_d0 _lh_gtList_arg1_2_2) _lh_gtList_arg2_2_2) in
    _lh_matchIdent_3_4)
and gtList_d4_d0_d0 _lh_gtList_arg1_3_9 _lh_gtList_arg2_3_9 =
  (let rec _lh_matchIdent_6_3 = ((compareList_d6_d0_d0 _lh_gtList_arg1_3_9) _lh_gtList_arg2_3_9) in
    _lh_matchIdent_6_3)
and gtList_d4_d1_d0 _lh_gtList_arg1_2_9 _lh_gtList_arg2_2_9 =
  (let rec _lh_matchIdent_4_5 = ((compareList_d6_d1_d0 _lh_gtList_arg1_2_9) _lh_gtList_arg2_2_9) in
    _lh_matchIdent_4_5)
and gtList_d4_d2_d0 _lh_gtList_arg1_3_3 _lh_gtList_arg2_3_3 =
  (let rec _lh_matchIdent_5_4 = ((compareList_d6_d2_d0 _lh_gtList_arg1_3_3) _lh_gtList_arg2_3_3) in
    _lh_matchIdent_5_4)
and gtList_d4_d3_d0 _lh_gtList_arg1_3_2 _lh_gtList_arg2_3_2 =
  (let rec _lh_matchIdent_4_9 = ((compareList_d6_d3_d0 _lh_gtList_arg1_3_2) _lh_gtList_arg2_3_2) in
    _lh_matchIdent_4_9)
and gtList_d5_d0_d0 _lh_gtList_arg1_3_4 _lh_gtList_arg2_3_4 =
  (let rec _lh_matchIdent_5_5 = ((compareList_d7_d0_d0 _lh_gtList_arg1_3_4) _lh_gtList_arg2_3_4) in
    _lh_matchIdent_5_5)
and gtList_d5_d1_d0 _lh_gtList_arg1_4_1 _lh_gtList_arg2_4_1 =
  (let rec _lh_matchIdent_6_5 = ((compareList_d7_d1_d0 _lh_gtList_arg1_4_1) _lh_gtList_arg2_4_1) in
    _lh_matchIdent_6_5)
and gtList_d5_d2_d0 _lh_gtList_arg1_3_6 _lh_gtList_arg2_3_6 =
  (let rec _lh_matchIdent_5_9 = ((compareList_d7_d2_d0 _lh_gtList_arg1_3_6) _lh_gtList_arg2_3_6) in
    _lh_matchIdent_5_9)
and gtList_d5_d3_d0 _lh_gtList_arg1_2_7 _lh_gtList_arg2_2_7 =
  (let rec _lh_matchIdent_4_3 = ((compareList_d7_d3_d0 _lh_gtList_arg1_2_7) _lh_gtList_arg2_2_7) in
    _lh_matchIdent_4_3)
and gtList_d6_d0_d0 _lh_gtList_arg1_3_0 _lh_gtList_arg2_3_0 =
  (let rec _lh_matchIdent_4_6 = ((compareList_d1_d0_d0_d0 _lh_gtList_arg1_3_0) _lh_gtList_arg2_3_0) in
    _lh_matchIdent_4_6)
and gtList_d7_d0_d0 _lh_gtList_arg1_2_6 _lh_gtList_arg2_2_6 =
  (let rec _lh_matchIdent_4_0 = ((compareList_d1_d1_d0_d0 _lh_gtList_arg1_2_6) _lh_gtList_arg2_2_6) in
    _lh_matchIdent_4_0)
and gtList_d8_d0_d0 _lh_gtList_arg1_2_3 _lh_gtList_arg2_2_3 =
  (let rec _lh_matchIdent_3_5 = ((compareList_d1_d2_d0_d0 _lh_gtList_arg1_2_3) _lh_gtList_arg2_2_3) in
    _lh_matchIdent_3_5)
and gtList_d9_d0_d0 _lh_gtList_arg1_4_0 _lh_gtList_arg2_4_0 =
  (let rec _lh_matchIdent_6_4 = ((compareList_d1_d3_d0_d0 _lh_gtList_arg1_4_0) _lh_gtList_arg2_4_0) in
    _lh_matchIdent_6_4)
and hash_d0_d0_d0 _lh_hash_arg1_1 =
  (((foldl_d0_d0_d0 (fun acc_1 c_1 -> 
    ((int_of_char c_1) + (acc_1 * 31)))) 0) _lh_hash_arg1_1)
and heapSort_d0_d0_d0 _lh_heapSort_arg1_1 =
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
                    (if ((leList_d0_d0_d0 _lh_mix_Branch_0_2) _lh_mix_Branch_0_3) then
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
        (if (((leList_d1_d0_d0 _lh_to_heap_arg2_1) _lh_to_heap_Branch_0_1) && (odd_d0_d0_d0 _lh_to_heap_arg1_1)) then
          (`Branch(_lh_to_heap_arg2_1, (((to_heap_1 (div2_1 _lh_to_heap_arg1_1)) _lh_to_heap_Branch_0_1) _lh_to_heap_Branch_1_1), _lh_to_heap_Branch_2_1))
        else
          (if ((leList_d2_d0_d0 _lh_to_heap_arg2_1) _lh_to_heap_Branch_0_1) then
            (`Branch(_lh_to_heap_arg2_1, _lh_to_heap_Branch_1_1, (((to_heap_1 (div2_1 _lh_to_heap_arg1_1)) _lh_to_heap_Branch_0_1) _lh_to_heap_Branch_2_1)))
          else
            (if (odd_d1_d0_d0 _lh_to_heap_arg1_1) then
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
and insertSort_d0_d0_d0 _lh_insertSort_arg1_1 =
  (match _lh_insertSort_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_insertSort_LH_C_0_1, _lh_insertSort_LH_C_1_1) -> 
      (let rec trins_1 = (fun _lh_trins_arg1_1 _lh_trins_arg2_1 _lh_trins_arg3_1 -> 
        (match _lh_trins_arg2_1 with
          | `LH_N -> 
            (match _lh_trins_arg3_1 with
              | `LH_C(_lh_trins_LH_C_0_5, _lh_trins_LH_C_1_5) -> 
                (((trins_1 (`LH_N)) ((mappend_d2_d0_d0 (reverse_d2_d0_d0 _lh_trins_arg1_1)) (`LH_C(_lh_trins_LH_C_0_5, (`LH_N))))) _lh_trins_LH_C_1_5)
              | _ -> 
                (match _lh_trins_arg3_1 with
                  | `LH_N -> 
                    ((mappend_d1_d0_d0 (reverse_d1_d0_d0 _lh_trins_arg1_1)) _lh_trins_arg2_1)
                  | _ -> 
                    (match _lh_trins_arg2_1 with
                      | `LH_C(_lh_trins_LH_C_0_6, _lh_trins_LH_C_1_6) -> 
                        (match _lh_trins_arg3_1 with
                          | `LH_C(_lh_trins_LH_C_0_7, _lh_trins_LH_C_1_7) -> 
                            (if ((ltList_d0_d0_d0 _lh_trins_LH_C_0_6) _lh_trins_LH_C_0_7) then
                              (((trins_1 (`LH_C(_lh_trins_LH_C_0_6, _lh_trins_arg1_1))) _lh_trins_LH_C_1_6) (`LH_C(_lh_trins_LH_C_0_7, _lh_trins_LH_C_1_7)))
                            else
                              (((trins_1 (`LH_N)) ((mappend_d0_d0_d0 (reverse_d0_d0_d0 _lh_trins_arg1_1)) (`LH_C(_lh_trins_LH_C_0_7, (`LH_C(_lh_trins_LH_C_0_6, _lh_trins_LH_C_1_6)))))) _lh_trins_LH_C_1_7))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))))
          | _ -> 
            (match _lh_trins_arg3_1 with
              | `LH_N -> 
                ((mappend_d1_d1_d0 (reverse_d1_d1_d0 _lh_trins_arg1_1)) _lh_trins_arg2_1)
              | _ -> 
                (match _lh_trins_arg2_1 with
                  | `LH_C(_lh_trins_LH_C_0_8, _lh_trins_LH_C_1_8) -> 
                    (match _lh_trins_arg3_1 with
                      | `LH_C(_lh_trins_LH_C_0_9, _lh_trins_LH_C_1_9) -> 
                        (if ((ltList_d0_d1_d0 _lh_trins_LH_C_0_8) _lh_trins_LH_C_0_9) then
                          (((trins_1 (`LH_C(_lh_trins_LH_C_0_8, _lh_trins_arg1_1))) _lh_trins_LH_C_1_8) (`LH_C(_lh_trins_LH_C_0_9, _lh_trins_LH_C_1_9)))
                        else
                          (((trins_1 (`LH_N)) ((mappend_d0_d1_d0 (reverse_d0_d1_d0 _lh_trins_arg1_1)) (`LH_C(_lh_trins_LH_C_0_9, (`LH_C(_lh_trins_LH_C_0_8, _lh_trins_LH_C_1_8)))))) _lh_trins_LH_C_1_9))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
        (((trins_1 (`LH_N)) (`LH_C(_lh_insertSort_LH_C_0_1, (`LH_N)))) _lh_insertSort_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and leList_d0_d0_d0 _lh_leList_arg1_2_8 _lh_leList_arg2_2_8 =
  (not ((gtList_d0_d0_d0 _lh_leList_arg1_2_8) _lh_leList_arg2_2_8))
and leList_d1_d0_d0 _lh_leList_arg1_2_7 _lh_leList_arg2_2_7 =
  (not ((gtList_d1_d0_d0 _lh_leList_arg1_2_7) _lh_leList_arg2_2_7))
and leList_d2_d0_d0 _lh_leList_arg1_2_6 _lh_leList_arg2_2_6 =
  (not ((gtList_d2_d0_d0 _lh_leList_arg1_2_6) _lh_leList_arg2_2_6))
and leList_d3_d0_d0 _lh_leList_arg1_2_5 _lh_leList_arg2_2_5 =
  (not ((gtList_d4_d0_d0 _lh_leList_arg1_2_5) _lh_leList_arg2_2_5))
and leList_d3_d1_d0 _lh_leList_arg1_2_1 _lh_leList_arg2_2_1 =
  (not ((gtList_d4_d1_d0 _lh_leList_arg1_2_1) _lh_leList_arg2_2_1))
and leList_d3_d2_d0 _lh_leList_arg1_2_4 _lh_leList_arg2_2_4 =
  (not ((gtList_d4_d2_d0 _lh_leList_arg1_2_4) _lh_leList_arg2_2_4))
and leList_d3_d3_d0 _lh_leList_arg1_2_0 _lh_leList_arg2_2_0 =
  (not ((gtList_d4_d3_d0 _lh_leList_arg1_2_0) _lh_leList_arg2_2_0))
and leList_d4_d0_d0 _lh_leList_arg1_2_3 _lh_leList_arg2_2_3 =
  (not ((gtList_d5_d0_d0 _lh_leList_arg1_2_3) _lh_leList_arg2_2_3))
and leList_d4_d1_d0 _lh_leList_arg1_2_2 _lh_leList_arg2_2_2 =
  (not ((gtList_d5_d1_d0 _lh_leList_arg1_2_2) _lh_leList_arg2_2_2))
and leList_d4_d2_d0 _lh_leList_arg1_1_8 _lh_leList_arg2_1_8 =
  (not ((gtList_d5_d2_d0 _lh_leList_arg1_1_8) _lh_leList_arg2_1_8))
and leList_d4_d3_d0 _lh_leList_arg1_3_0 _lh_leList_arg2_3_0 =
  (not ((gtList_d5_d3_d0 _lh_leList_arg1_3_0) _lh_leList_arg2_3_0))
and leList_d5_d0_d0 _lh_leList_arg1_2_9 _lh_leList_arg2_2_9 =
  (not ((gtList_d7_d0_d0 _lh_leList_arg1_2_9) _lh_leList_arg2_2_9))
and leList_d6_d0_d0 _lh_leList_arg1_1_9 _lh_leList_arg2_1_9 =
  (not ((gtList_d8_d0_d0 _lh_leList_arg1_1_9) _lh_leList_arg2_1_9))
and leList_d7_d0_d0 _lh_leList_arg1_1_7 _lh_leList_arg2_1_7 =
  (not ((gtList_d9_d0_d0 _lh_leList_arg1_1_7) _lh_leList_arg2_1_7))
and leList_d8_d0_d0 _lh_leList_arg1_3_1 _lh_leList_arg2_3_1 =
  (not ((gtList_d1_d0_d0_d0 _lh_leList_arg1_3_1) _lh_leList_arg2_3_1))
and leList_d9_d0_d0 _lh_leList_arg1_1_6 _lh_leList_arg2_1_6 =
  (not ((gtList_d1_d1_d0_d0 _lh_leList_arg1_1_6) _lh_leList_arg2_1_6))
and lines_d0_d0_d0 _lh_lines_arg1_1 =
  (match _lh_lines_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_3_6 = ((break_d0_d0_d0 (fun x_3 -> 
        (x_3 = '|'))) _lh_lines_arg1_1) in
        (match _lh_matchIdent_3_6 with
          | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
            (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_3_7 = _lh_lines_LH_P2_1_1 in
              (_lh_matchIdent_3_7 99))))
          | _ -> 
            (failwith "error"))))
and ltList_d0_d0_d0 _lh_ltList_arg1_7 _lh_ltList_arg2_7 =
  (let rec _lh_matchIdent_5_8 = ((compareList_d3_d0_d0 _lh_ltList_arg1_7) _lh_ltList_arg2_7) in
    _lh_matchIdent_5_8)
and ltList_d0_d1_d0 _lh_ltList_arg1_5 _lh_ltList_arg2_5 =
  (let rec _lh_matchIdent_4_7 = ((compareList_d3_d1_d0 _lh_ltList_arg1_5) _lh_ltList_arg2_5) in
    _lh_matchIdent_4_7)
and ltList_d1_d0_d0 _lh_ltList_arg1_6 _lh_ltList_arg2_6 =
  (let rec _lh_matchIdent_5_6 = ((compareList_d8_d0_d0 _lh_ltList_arg1_6) _lh_ltList_arg2_6) in
    _lh_matchIdent_5_6)
and ltList_d2_d0_d0 _lh_ltList_arg1_4 _lh_ltList_arg2_4 =
  (let rec _lh_matchIdent_4_2 = ((compareList_d9_d0_d0 _lh_ltList_arg1_4) _lh_ltList_arg2_4) in
    _lh_matchIdent_4_2)
and mangle_d0_d0_d0 _lh_mangle_arg1_1 =
  (let rec sort_1 = (fun _lh_sort_arg1_1 -> 
    ((((foldr_d0_d0_d0 (fun f_3_1 g_1 _lh_funcomp_x_6 -> 
      (f_3_1 (g_1 _lh_funcomp_x_6)))) (fun x_4 -> 
      x_4)) ((intersperse_d0_d0_d0 reverse_d3_d0_d0) (let rec _lh_intersperse_LH_C_0_1 = heapSort_d0_d0_d0 in
      (let rec _lh_intersperse_LH_C_1_1 = (let rec _lh_prependToAll_LH_C_0_7 = insertSort_d0_d0_d0 in
        (let rec _lh_prependToAll_LH_C_1_7 = (let rec _lh_prependToAll_LH_C_0_8 = mergeSort_d0_d0_d0 in
          (let rec _lh_prependToAll_LH_C_1_8 = (let rec _lh_prependToAll_LH_C_0_9 = quickSort_d0_d0_d0 in
            (let rec _lh_prependToAll_LH_C_1_9 = (let rec _lh_prependToAll_LH_C_0_1_0 = quickSort2_d0_d0_d0 in
              (let rec _lh_prependToAll_LH_C_1_1_0 = (let rec _lh_prependToAll_LH_C_0_1_1 = quickerSort_d0_d0_d0 in
                (let rec _lh_prependToAll_LH_C_1_1_1 = (let rec _lh_prependToAll_LH_C_0_1_2 = treeSort_d0_d0_d0 in
                  (let rec _lh_prependToAll_LH_C_1_1_2 = (let rec _lh_prependToAll_LH_C_0_1_3 = treeSort2_d0_d0_d0 in
                    (let rec _lh_prependToAll_LH_C_1_1_3 = (fun _lh_prependToAll_arg1_1_0 f_3_2 i_2_8 -> 
                      i_2_8) in
                      (fun _lh_prependToAll_arg1_1_1 -> 
                        (let rec h_5_0 = _lh_prependToAll_arg1_1_1 in
                          (let rec t_5_0 = (let rec h_5_1 = _lh_prependToAll_LH_C_0_1_3 in
                            (let rec t_5_1 = ((prependToAll_d0_d0_d0 _lh_prependToAll_arg1_1_1) _lh_prependToAll_LH_C_1_1_3) in
                              (fun f_3_3 i_2_9 -> 
                                ((f_3_3 h_5_1) (((foldr_d0_d0_d1 f_3_3) i_2_9) t_5_1))))) in
                            (fun f_3_4 i_3_0 -> 
                              ((f_3_4 h_5_0) (((foldr_d0_d0_d2 f_3_4) i_3_0) t_5_0)))))))) in
                    (fun _lh_prependToAll_arg1_1_2 -> 
                      (let rec h_5_2 = _lh_prependToAll_arg1_1_2 in
                        (let rec t_5_2 = (let rec h_5_3 = _lh_prependToAll_LH_C_0_1_2 in
                          (let rec t_5_3 = ((prependToAll_d0_d0_d1 _lh_prependToAll_arg1_1_2) _lh_prependToAll_LH_C_1_1_2) in
                            (fun f_3_5 i_3_1 -> 
                              ((f_3_5 h_5_3) (((foldr_d0_d0_d3 f_3_5) i_3_1) t_5_3))))) in
                          (fun f_3_6 i_3_2 -> 
                            ((f_3_6 h_5_2) (((foldr_d0_d0_d4 f_3_6) i_3_2) t_5_2)))))))) in
                  (fun _lh_prependToAll_arg1_1_3 -> 
                    (let rec h_5_4 = _lh_prependToAll_arg1_1_3 in
                      (let rec t_5_4 = (let rec h_5_5 = _lh_prependToAll_LH_C_0_1_1 in
                        (let rec t_5_5 = ((prependToAll_d0_d0_d2 _lh_prependToAll_arg1_1_3) _lh_prependToAll_LH_C_1_1_1) in
                          (fun f_3_7 i_3_3 -> 
                            ((f_3_7 h_5_5) (((foldr_d0_d0_d5 f_3_7) i_3_3) t_5_5))))) in
                        (fun f_3_8 i_3_4 -> 
                          ((f_3_8 h_5_4) (((foldr_d0_d0_d6 f_3_8) i_3_4) t_5_4)))))))) in
                (fun _lh_prependToAll_arg1_1_4 -> 
                  (let rec h_5_6 = _lh_prependToAll_arg1_1_4 in
                    (let rec t_5_6 = (let rec h_5_7 = _lh_prependToAll_LH_C_0_1_0 in
                      (let rec t_5_7 = ((prependToAll_d0_d0_d3 _lh_prependToAll_arg1_1_4) _lh_prependToAll_LH_C_1_1_0) in
                        (fun f_3_9 i_3_5 -> 
                          ((f_3_9 h_5_7) (((foldr_d0_d0_d7 f_3_9) i_3_5) t_5_7))))) in
                      (fun f_4_0 i_3_6 -> 
                        ((f_4_0 h_5_6) (((foldr_d0_d0_d8 f_4_0) i_3_6) t_5_6)))))))) in
              (fun _lh_prependToAll_arg1_1_5 -> 
                (let rec h_5_8 = _lh_prependToAll_arg1_1_5 in
                  (let rec t_5_8 = (let rec h_5_9 = _lh_prependToAll_LH_C_0_9 in
                    (let rec t_5_9 = ((prependToAll_d0_d0_d4 _lh_prependToAll_arg1_1_5) _lh_prependToAll_LH_C_1_9) in
                      (fun f_4_1 i_3_7 -> 
                        ((f_4_1 h_5_9) (((foldr_d0_d0_d9 f_4_1) i_3_7) t_5_9))))) in
                    (fun f_4_2 i_3_8 -> 
                      ((f_4_2 h_5_8) (((foldr_d0_d0_d1_d0 f_4_2) i_3_8) t_5_8)))))))) in
            (fun _lh_prependToAll_arg1_1_6 -> 
              (let rec h_6_0 = _lh_prependToAll_arg1_1_6 in
                (let rec t_6_0 = (let rec h_6_1 = _lh_prependToAll_LH_C_0_8 in
                  (let rec t_6_1 = ((prependToAll_d0_d0_d5 _lh_prependToAll_arg1_1_6) _lh_prependToAll_LH_C_1_8) in
                    (fun f_4_3 i_3_9 -> 
                      ((f_4_3 h_6_1) (((foldr_d0_d0_d1_d1 f_4_3) i_3_9) t_6_1))))) in
                  (fun f_4_4 i_4_0 -> 
                    ((f_4_4 h_6_0) (((foldr_d0_d0_d1_d2 f_4_4) i_4_0) t_6_0)))))))) in
          (fun _lh_prependToAll_arg1_1_7 -> 
            (let rec h_6_2 = _lh_prependToAll_arg1_1_7 in
              (let rec t_6_2 = (let rec h_6_3 = _lh_prependToAll_LH_C_0_7 in
                (let rec t_6_3 = ((prependToAll_d0_d0_d6 _lh_prependToAll_arg1_1_7) _lh_prependToAll_LH_C_1_7) in
                  (fun f_4_5 i_4_1 -> 
                    ((f_4_5 h_6_3) (((foldr_d0_d0_d1_d3 f_4_5) i_4_1) t_6_3))))) in
                (fun f_4_6 i_4_2 -> 
                  ((f_4_6 h_6_2) (((foldr_d0_d0_d1_d4 f_4_6) i_4_2) t_6_2)))))))) in
        (fun _lh_intersperse_arg1_2 -> 
          (let rec h_6_4 = _lh_intersperse_LH_C_0_1 in
            (let rec t_6_4 = ((prependToAll_d0_d0_d7 _lh_intersperse_arg1_2) _lh_intersperse_LH_C_1_1) in
              (fun f_4_7 i_4_3 -> 
                ((f_4_7 h_6_4) (((foldr_d0_d0_d1_d5 f_4_7) i_4_3) t_6_4)))))))))) _lh_sort_arg1_1)) in
    ((fun _lh_funcomp_x_7 -> 
      ((fun _lh_funcomp_x_8 -> 
        (unlines_d0_d0_d0 (sort_1 _lh_funcomp_x_8))) (lines_d0_d0_d0 _lh_funcomp_x_7))) _lh_mangle_arg1_1))
and mappend_d9_d0_d0 xs_2_8 ys_5_1 =
  (match xs_2_8 with
    | `LH_C(h_7_3, t_7_3) -> 
      (let rec h_7_4 = h_7_3 in
        (let rec t_7_4 = ((mappend_d9_d0_d0 t_7_3) ys_5_1) in
          (fun ys_5_2 -> 
            (let rec h_7_5 = h_7_4 in
              (let rec t_7_5 = ((mappend_d8_d0_d1 t_7_4) ys_5_2) in
                (fun f_6_6 i_6_1 -> 
                  (((foldl_d0_d0_d2 f_6_6) ((f_6_6 i_6_1) h_7_5)) t_7_5)))))))
    | `LH_N -> 
      ys_5_1)
and map_d0_d0_d0 f_6_8 ls_5_1 _lh_popOutId_0_0 =
  (match ls_5_1 with
    | `LH_C(h_8_0, t_8_0) -> 
      (let rec h_8_1 = (f_6_8 h_8_0) in
        (let rec t_8_1 = ((map_d0_d0_d0 f_6_8) t_8_0) in
          ((mappend_d8_d0_d2 h_8_1) (concat_d0_d0_d1 t_8_1))))
    | `LH_N -> 
      (fun f_6_9 i_6_3 -> 
        i_6_3))
and mergeSort_d0_d0_d0 _lh_mergeSort_arg1_1 =
  let rec runsplit_1 = (fun _lh_runsplit_arg1_1 _lh_runsplit_arg2_1 -> 
    (match _lh_runsplit_arg1_1 with
      | `LH_N -> 
        (match _lh_runsplit_arg2_1 with
          | `LH_N -> 
            (fun merge_lists_1_5 merge_1_5 -> 
              (`LH_N))
          | _ -> 
            (match _lh_runsplit_arg2_1 with
              | `LH_N -> 
                (let rec _lh_merge_lists_LH_C_0_1_0 = _lh_runsplit_arg1_1 in
                  (let rec _lh_merge_lists_LH_C_1_1_0 = (fun merge_lists_1_6 merge_1_6 -> 
                    (`LH_N)) in
                    (fun merge_lists_1_7 merge_1_7 -> 
                      ((merge_1_7 _lh_merge_lists_LH_C_0_1_0) (merge_lists_1_7 _lh_merge_lists_LH_C_1_1_0)))))
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
                                (let rec _lh_matchIdent_5_0 = _lh_runsplit_LH_C_1_1_1 in
                                  (match _lh_matchIdent_5_0 with
                                    | `LH_N -> 
                                      (if ((gtList_d3_d0_d0 _lh_runsplit_LH_C_0_1_2) _lh_runsplit_LH_C_0_1_1) then
                                        ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_1, (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_N)))))) _lh_runsplit_LH_C_1_1_2)
                                      else
                                        (if ((leList_d4_d0_d0 _lh_runsplit_LH_C_0_1_2) _lh_runsplit_LH_C_0_1_1) then
                                          ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_runsplit_LH_C_1_1_1))))) _lh_runsplit_LH_C_1_1_2)
                                        else
                                          (let rec _lh_merge_lists_LH_C_0_1_1 = (`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_runsplit_LH_C_1_1_1)) in
                                            (let rec _lh_merge_lists_LH_C_1_1_1 = ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_N)))) _lh_runsplit_LH_C_1_1_2) in
                                              (fun merge_lists_1_8 merge_1_8 -> 
                                                ((merge_1_8 _lh_merge_lists_LH_C_0_1_1) (merge_lists_1_8 _lh_merge_lists_LH_C_1_1_1)))))))
                                    | _ -> 
                                      (if ((leList_d3_d0_d0 _lh_runsplit_LH_C_0_1_2) _lh_runsplit_LH_C_0_1_1) then
                                        ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_matchIdent_5_0))))) _lh_runsplit_LH_C_1_1_2)
                                      else
                                        (let rec _lh_merge_lists_LH_C_0_1_2 = (`LH_C(_lh_runsplit_LH_C_0_1_1, _lh_matchIdent_5_0)) in
                                          (let rec _lh_merge_lists_LH_C_1_1_2 = ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_2, (`LH_N)))) _lh_runsplit_LH_C_1_1_2) in
                                            (fun merge_lists_1_9 merge_1_9 -> 
                                              ((merge_1_9 _lh_merge_lists_LH_C_0_1_2) (merge_lists_1_9 _lh_merge_lists_LH_C_1_1_2))))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                  | _ -> 
                    (match _lh_runsplit_arg1_1 with
                      | `LH_C(_lh_runsplit_LH_C_0_1_3, _lh_runsplit_LH_C_1_1_3) -> 
                        (match _lh_runsplit_arg2_1 with
                          | `LH_C(_lh_runsplit_LH_C_0_1_4, _lh_runsplit_LH_C_1_1_4) -> 
                            (let rec _lh_matchIdent_5_1 = _lh_runsplit_LH_C_1_1_3 in
                              (match _lh_matchIdent_5_1 with
                                | `LH_N -> 
                                  (if ((gtList_d3_d1_d0 _lh_runsplit_LH_C_0_1_4) _lh_runsplit_LH_C_0_1_3) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_3, (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_N)))))) _lh_runsplit_LH_C_1_1_4)
                                  else
                                    (if ((leList_d4_d1_d0 _lh_runsplit_LH_C_0_1_4) _lh_runsplit_LH_C_0_1_3) then
                                      ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_runsplit_LH_C_1_1_3))))) _lh_runsplit_LH_C_1_1_4)
                                    else
                                      (let rec _lh_merge_lists_LH_C_0_1_3 = (`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_runsplit_LH_C_1_1_3)) in
                                        (let rec _lh_merge_lists_LH_C_1_1_3 = ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_N)))) _lh_runsplit_LH_C_1_1_4) in
                                          (fun merge_lists_2_0 merge_2_0 -> 
                                            ((merge_2_0 _lh_merge_lists_LH_C_0_1_3) (merge_lists_2_0 _lh_merge_lists_LH_C_1_1_3)))))))
                                | _ -> 
                                  (if ((leList_d3_d1_d0 _lh_runsplit_LH_C_0_1_4) _lh_runsplit_LH_C_0_1_3) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_matchIdent_5_1))))) _lh_runsplit_LH_C_1_1_4)
                                  else
                                    (let rec _lh_merge_lists_LH_C_0_1_4 = (`LH_C(_lh_runsplit_LH_C_0_1_3, _lh_matchIdent_5_1)) in
                                      (let rec _lh_merge_lists_LH_C_1_1_4 = ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_4, (`LH_N)))) _lh_runsplit_LH_C_1_1_4) in
                                        (fun merge_lists_2_1 merge_2_1 -> 
                                          ((merge_2_1 _lh_merge_lists_LH_C_0_1_4) (merge_lists_2_1 _lh_merge_lists_LH_C_1_1_4))))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))))
      | _ -> 
        (match _lh_runsplit_arg2_1 with
          | `LH_N -> 
            (let rec _lh_merge_lists_LH_C_0_1_5 = _lh_runsplit_arg1_1 in
              (let rec _lh_merge_lists_LH_C_1_1_5 = (fun merge_lists_2_2 merge_2_2 -> 
                (`LH_N)) in
                (fun merge_lists_2_3 merge_2_3 -> 
                  ((merge_2_3 _lh_merge_lists_LH_C_0_1_5) (merge_lists_2_3 _lh_merge_lists_LH_C_1_1_5)))))
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
                            (let rec _lh_matchIdent_5_2 = _lh_runsplit_LH_C_1_1_6 in
                              (match _lh_matchIdent_5_2 with
                                | `LH_N -> 
                                  (if ((gtList_d3_d2_d0 _lh_runsplit_LH_C_0_1_7) _lh_runsplit_LH_C_0_1_6) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_6, (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_N)))))) _lh_runsplit_LH_C_1_1_7)
                                  else
                                    (if ((leList_d4_d2_d0 _lh_runsplit_LH_C_0_1_7) _lh_runsplit_LH_C_0_1_6) then
                                      ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_runsplit_LH_C_1_1_6))))) _lh_runsplit_LH_C_1_1_7)
                                    else
                                      (let rec _lh_merge_lists_LH_C_0_1_6 = (`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_runsplit_LH_C_1_1_6)) in
                                        (let rec _lh_merge_lists_LH_C_1_1_6 = ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_N)))) _lh_runsplit_LH_C_1_1_7) in
                                          (fun merge_lists_2_4 merge_2_4 -> 
                                            ((merge_2_4 _lh_merge_lists_LH_C_0_1_6) (merge_lists_2_4 _lh_merge_lists_LH_C_1_1_6)))))))
                                | _ -> 
                                  (if ((leList_d3_d2_d0 _lh_runsplit_LH_C_0_1_7) _lh_runsplit_LH_C_0_1_6) then
                                    ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_matchIdent_5_2))))) _lh_runsplit_LH_C_1_1_7)
                                  else
                                    (let rec _lh_merge_lists_LH_C_0_1_7 = (`LH_C(_lh_runsplit_LH_C_0_1_6, _lh_matchIdent_5_2)) in
                                      (let rec _lh_merge_lists_LH_C_1_1_7 = ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_7, (`LH_N)))) _lh_runsplit_LH_C_1_1_7) in
                                        (fun merge_lists_2_5 merge_2_5 -> 
                                          ((merge_2_5 _lh_merge_lists_LH_C_0_1_7) (merge_lists_2_5 _lh_merge_lists_LH_C_1_1_7))))))))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))
              | _ -> 
                (match _lh_runsplit_arg1_1 with
                  | `LH_C(_lh_runsplit_LH_C_0_1_8, _lh_runsplit_LH_C_1_1_8) -> 
                    (match _lh_runsplit_arg2_1 with
                      | `LH_C(_lh_runsplit_LH_C_0_1_9, _lh_runsplit_LH_C_1_1_9) -> 
                        (let rec _lh_matchIdent_5_3 = _lh_runsplit_LH_C_1_1_8 in
                          (match _lh_matchIdent_5_3 with
                            | `LH_N -> 
                              (if ((gtList_d3_d3_d0 _lh_runsplit_LH_C_0_1_9) _lh_runsplit_LH_C_0_1_8) then
                                ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_8, (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_N)))))) _lh_runsplit_LH_C_1_1_9)
                              else
                                (if ((leList_d4_d3_d0 _lh_runsplit_LH_C_0_1_9) _lh_runsplit_LH_C_0_1_8) then
                                  ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_runsplit_LH_C_1_1_8))))) _lh_runsplit_LH_C_1_1_9)
                                else
                                  (let rec _lh_merge_lists_LH_C_0_1_8 = (`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_runsplit_LH_C_1_1_8)) in
                                    (let rec _lh_merge_lists_LH_C_1_1_8 = ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_N)))) _lh_runsplit_LH_C_1_1_9) in
                                      (fun merge_lists_2_6 merge_2_6 -> 
                                        ((merge_2_6 _lh_merge_lists_LH_C_0_1_8) (merge_lists_2_6 _lh_merge_lists_LH_C_1_1_8)))))))
                            | _ -> 
                              (if ((leList_d3_d3_d0 _lh_runsplit_LH_C_0_1_9) _lh_runsplit_LH_C_0_1_8) then
                                ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_matchIdent_5_3))))) _lh_runsplit_LH_C_1_1_9)
                              else
                                (let rec _lh_merge_lists_LH_C_0_1_9 = (`LH_C(_lh_runsplit_LH_C_0_1_8, _lh_matchIdent_5_3)) in
                                  (let rec _lh_merge_lists_LH_C_1_1_9 = ((runsplit_1 (`LH_C(_lh_runsplit_LH_C_0_1_9, (`LH_N)))) _lh_runsplit_LH_C_1_1_9) in
                                    (fun merge_lists_2_7 merge_2_7 -> 
                                      ((merge_2_7 _lh_merge_lists_LH_C_0_1_9) (merge_lists_2_7 _lh_merge_lists_LH_C_1_1_9))))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))))
  and merge_1_4 = (fun _lh_merge_arg1_1 _lh_merge_arg2_1 -> 
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
                    (if ((eqList_d0_d0_d0 _lh_merge_LH_C_0_2) _lh_merge_LH_C_0_3) then
                      (`LH_C(_lh_merge_LH_C_0_2, (`LH_C(_lh_merge_LH_C_0_3, ((merge_1_4 _lh_merge_LH_C_1_2) _lh_merge_LH_C_1_3)))))
                    else
                      (if ((ltList_d1_d0_d0 _lh_merge_LH_C_0_2) _lh_merge_LH_C_0_3) then
                        (`LH_C(_lh_merge_LH_C_0_2, ((merge_1_4 _lh_merge_LH_C_1_2) (`LH_C(_lh_merge_LH_C_0_3, _lh_merge_LH_C_1_3)))))
                      else
                        (`LH_C(_lh_merge_LH_C_0_3, ((merge_1_4 (`LH_C(_lh_merge_LH_C_0_2, _lh_merge_LH_C_1_2))) _lh_merge_LH_C_1_3)))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
  and merge_lists_1_4 = (fun _lh_merge_lists_arg1_1 -> 
    ((_lh_merge_lists_arg1_1 merge_lists_1_4) merge_1_4))
  in ((fun _lh_funcomp_x_9 -> 
    (merge_lists_1_4 ((runsplit_1 (`LH_N)) _lh_funcomp_x_9))) _lh_mergeSort_arg1_1)
and partition_d0_d0_d0 _lh_partition_arg1_1 _lh_partition_arg2_1 =
  (((foldr_d1_d0_d0 (select_d0_d0_d0 _lh_partition_arg1_1)) (`LH_P2((`LH_N), (`LH_N)))) _lh_partition_arg2_1)
and quickSort2_d0_d0_d0 _lh_quickSort2_arg1_1 =
  (match _lh_quickSort2_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort2_LH_C_0_1, _lh_quickSort2_LH_C_1_1) -> 
      (let rec _lh_matchIdent_6_2 = ((partition_d0_d0_d0 ((fun x_5 y_1 -> 
        ((geList_d0_d0_d0 x_5) y_1)) _lh_quickSort2_LH_C_0_1)) _lh_quickSort2_LH_C_1_1) in
        (match _lh_matchIdent_6_2 with
          | `LH_P2(_lh_quickSort2_LH_P2_0_1, _lh_quickSort2_LH_P2_1_1) -> 
            ((mappend_d3_d0_d0 (quickSort2_d0_d0_d0 _lh_quickSort2_LH_P2_0_1)) (`LH_C(_lh_quickSort2_LH_C_0_1, (quickSort2_d0_d0_d0 _lh_quickSort2_LH_P2_1_1))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and quickSort_d0_d0_d0 _lh_quickSort_arg1_1 =
  (match _lh_quickSort_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSort_LH_C_0_1, _lh_quickSort_LH_C_1_1) -> 
      ((mappend_d4_d0_d0 (quickSort_d0_d0_d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (if ((leList_d5_d0_d0 _lh_listcomp_fun_ls_h_2) _lh_quickSort_LH_C_0_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
            else
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 _lh_quickSort_LH_C_1_1)))) (`LH_C(_lh_quickSort_LH_C_0_1, (quickSort_d0_d0_d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (if ((gtList_d6_d0_d0 _lh_listcomp_fun_ls_h_3) _lh_quickSort_LH_C_0_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_3, (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
            else
              (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3 _lh_quickSort_LH_C_1_1))))))
    | _ -> 
      (failwith "error"))
and quickerSort_d0_d0_d0 _lh_quickerSort_arg1_1 =
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
                ((mappend_d5_d0_d0 (quickerSort_d0_d0_d0 _lh_split_arg2_1)) (`LH_C(_lh_split_arg1_1, (quickerSort_d0_d0_d0 _lh_split_arg3_1))))
              | `LH_C(_lh_split_LH_C_0_1, _lh_split_LH_C_1_1) -> 
                (if ((leList_d6_d0_d0 _lh_split_LH_C_0_1) _lh_split_arg1_1) then
                  ((((split_1 _lh_split_arg1_1) (`LH_C(_lh_split_LH_C_0_1, _lh_split_arg2_1))) _lh_split_arg3_1) _lh_split_LH_C_1_1)
                else
                  ((((split_1 _lh_split_arg1_1) _lh_split_arg2_1) (`LH_C(_lh_split_LH_C_0_1, _lh_split_arg3_1))) _lh_split_LH_C_1_1))
              | _ -> 
                (failwith "error"))) in
            ((((split_1 _lh_quickerSort_LH_C_0_1) (`LH_N)) (`LH_N)) _lh_quickerSort_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and reverse_helper_d0_d0_d0 ls_3_6 a_9 =
  (match ls_3_6 with
    | `LH_C(h_6_6, t_6_6) -> 
      ((reverse_helper_d0_d0_d0 t_6_6) (let rec h_6_7 = h_6_6 in
        (let rec t_6_7 = a_9 in
          (fun ys_4_0 -> 
            (`LH_C(h_6_7, ((mappend_d0_d0_d1 t_6_7) ys_4_0)))))))
    | `LH_N -> 
      a_9)
and reverse_helper_d0_d1_d0 ls_1_8 a_6 =
  (match ls_1_8 with
    | `LH_C(h_4_1, t_4_1) -> 
      ((reverse_helper_d0_d1_d0 t_4_1) (let rec h_4_2 = h_4_1 in
        (let rec t_4_2 = a_6 in
          (fun ys_2_5 -> 
            (`LH_C(h_4_2, ((mappend_d0_d1_d1 t_4_2) ys_2_5)))))))
    | `LH_N -> 
      a_6)
and reverse_helper_d1_d0_d0 ls_5_0 a_1_1 =
  (match ls_5_0 with
    | `LH_C(h_7_1, t_7_1) -> 
      ((reverse_helper_d1_d0_d0 t_7_1) (let rec h_7_2 = h_7_1 in
        (let rec t_7_2 = a_1_1 in
          (fun ys_4_9 -> 
            (`LH_C(h_7_2, ((mappend_d1_d0_d1 t_7_2) ys_4_9)))))))
    | `LH_N -> 
      a_1_1)
and reverse_helper_d1_d1_d0 ls_2_1 a_8 =
  (match ls_2_1 with
    | `LH_C(h_4_6, t_4_6) -> 
      ((reverse_helper_d1_d1_d0 t_4_6) (let rec h_4_7 = h_4_6 in
        (let rec t_4_7 = a_8 in
          (fun ys_2_8 -> 
            (`LH_C(h_4_7, ((mappend_d1_d1_d1 t_4_7) ys_2_8)))))))
    | `LH_N -> 
      a_8)
and reverse_helper_d2_d0_d0 ls_2_0 a_7 =
  (match ls_2_0 with
    | `LH_C(h_4_4, t_4_4) -> 
      ((reverse_helper_d2_d0_d0 t_4_4) (let rec h_4_5 = h_4_4 in
        (let rec t_4_5 = a_7 in
          (fun ys_2_6 -> 
            (`LH_C(h_4_5, ((mappend_d2_d0_d1 t_4_5) ys_2_6)))))))
    | `LH_N -> 
      a_7)
and reverse_d0_d0_d0 ls_4_4 =
  ((reverse_helper_d0_d0_d0 ls_4_4) (fun ys_4_6 -> 
    ys_4_6))
and reverse_d0_d1_d0 ls_3_8 =
  ((reverse_helper_d0_d1_d0 ls_3_8) (fun ys_4_3 -> 
    ys_4_3))
and reverse_d1_d0_d0 ls_2_5 =
  ((reverse_helper_d1_d0_d0 ls_2_5) (fun ys_3_1 -> 
    ys_3_1))
and reverse_d1_d1_d0 ls_2_7 =
  ((reverse_helper_d1_d1_d0 ls_2_7) (fun ys_3_4 -> 
    ys_3_4))
and reverse_d2_d0_d0 ls_3_3 =
  ((reverse_helper_d2_d0_d0 ls_3_3) (fun ys_3_7 -> 
    ys_3_7))
and reverse_d3_d0_d0 ls_3_4 =
  ((reverse_helper_d3_d0_d0 ls_3_4) (`LH_N))
and testSorting_nofib_d0_d0_d0 _lh_testSorting_nofib_arg1_1 =
  (let rec f_5_8 = (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('M', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('o', (`LH_C('l', (`LH_C('.', (`LH_C('M', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('D', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_C('.', (`LH_C('L', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('S', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_C('E', (`LH_C('n', (`LH_C('v', (`LH_C('i', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('f', (`LH_C('i', (`LH_C('b', (`LH_C('U', (`LH_C('t', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('M', (`LH_C('_', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C('$', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('(', (`LH_C('_', (`LH_C(':', (`LH_C('s', (`LH_C(':', (`LH_C('_', (`LH_C(')', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('<', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('F', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C(')', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C(' ', (`LH_C('-', (`LH_C('>', (`LH_C(' ', (`LH_C('S', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('{', (`LH_C('-', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('-', (`LH_C('}', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('u', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('p', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('.', (`LH_C(')', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('=', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_C('h', (`LH_C('e', (`LH_C('a', (`LH_C('p', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('r', (`LH_C('g', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('S', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(']', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (hash_d0_d0_d0 (mangle_d0_d0_d0 f_5_8)))
and treeSort2_d0_d0_d0 _lh_treeSort2_arg1_1 =
  let rec mkTree_2 = (fun _lh_mkTree_arg1_2 -> 
    (let rec to_tree_2 = (fun _lh_to_tree_arg1_2 _lh_to_tree_arg2_2 -> 
      (match _lh_to_tree_arg2_2 with
        | `Tip2 -> 
          (`Twig2(_lh_to_tree_arg1_2))
        | `Twig2(_lh_to_tree_Twig2_0_1) -> 
          (if ((leList_d7_d0_d0 _lh_to_tree_arg1_2) _lh_to_tree_Twig2_0_1) then
            (`Branch2(_lh_to_tree_Twig2_0_1, (`Twig2(_lh_to_tree_arg1_2)), (`Tip2)))
          else
            (`Branch2(_lh_to_tree_Twig2_0_1, (`Tip2), (`Twig2(_lh_to_tree_arg1_2)))))
        | `Branch2(_lh_to_tree_Branch2_0_1, _lh_to_tree_Branch2_1_1, _lh_to_tree_Branch2_2_1) -> 
          (if ((leList_d8_d0_d0 _lh_to_tree_arg1_2) _lh_to_tree_Branch2_0_1) then
            (`Branch2(_lh_to_tree_Branch2_0_1, ((to_tree_2 _lh_to_tree_arg1_2) _lh_to_tree_Branch2_1_1), _lh_to_tree_Branch2_2_1))
          else
            (`Branch2(_lh_to_tree_Branch2_0_1, _lh_to_tree_Branch2_1_1, ((to_tree_2 _lh_to_tree_arg1_2) _lh_to_tree_Branch2_2_1))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_d2_d0_d0 to_tree_2) (`Tip2)) _lh_mkTree_arg1_2)))
  and readTree_2 = (fun _lh_readTree_arg1_2 -> 
    (match _lh_readTree_arg1_2 with
      | `Tip2 -> 
        (`LH_N)
      | `Twig2(_lh_readTree_Twig2_0_1) -> 
        (`LH_C(_lh_readTree_Twig2_0_1, (`LH_N)))
      | `Branch2(_lh_readTree_Branch2_0_1, _lh_readTree_Branch2_1_1, _lh_readTree_Branch2_2_1) -> 
        ((mappend_d6_d0_d0 (readTree_2 _lh_readTree_Branch2_1_1)) (`LH_C(_lh_readTree_Branch2_0_1, (readTree_2 _lh_readTree_Branch2_2_1))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_1_0 -> 
    (readTree_2 (mkTree_2 _lh_funcomp_x_1_0))) _lh_treeSort2_arg1_1)
and treeSort_d0_d0_d0 _lh_treeSort_arg1_1 =
  let rec mkTree_3 = (fun _lh_mkTree_arg1_3 -> 
    (let rec to_tree_3 = (fun _lh_to_tree_arg1_3 _lh_to_tree_arg2_3 -> 
      (match _lh_to_tree_arg2_3 with
        | `Tip -> 
          (`Branch(_lh_to_tree_arg1_3, (`Tip), (`Tip)))
        | `Branch(_lh_to_tree_Branch_0_1, _lh_to_tree_Branch_1_1, _lh_to_tree_Branch_2_1) -> 
          (if ((leList_d9_d0_d0 _lh_to_tree_arg1_3) _lh_to_tree_Branch_0_1) then
            (`Branch(_lh_to_tree_Branch_0_1, ((to_tree_3 _lh_to_tree_arg1_3) _lh_to_tree_Branch_1_1), _lh_to_tree_Branch_2_1))
          else
            (`Branch(_lh_to_tree_Branch_0_1, _lh_to_tree_Branch_1_1, ((to_tree_3 _lh_to_tree_arg1_3) _lh_to_tree_Branch_2_1))))
        | _ -> 
          (failwith "error"))) in
      (((foldr_d3_d0_d0 to_tree_3) (`Tip)) _lh_mkTree_arg1_3)))
  and readTree_3 = (fun _lh_readTree_arg1_3 -> 
    (match _lh_readTree_arg1_3 with
      | `Tip -> 
        (`LH_N)
      | `Branch(_lh_readTree_Branch_0_1, _lh_readTree_Branch_1_1, _lh_readTree_Branch_2_1) -> 
        ((mappend_d7_d0_d0 (readTree_3 _lh_readTree_Branch_1_1)) (`LH_C(_lh_readTree_Branch_0_1, (readTree_3 _lh_readTree_Branch_2_1))))
      | _ -> 
        (failwith "error")))
  in ((fun _lh_funcomp_x_1_1 -> 
    (readTree_3 (mkTree_3 _lh_funcomp_x_1_1))) _lh_treeSort_arg1_1)
and unlines_d0_d0_d0 _lh_unlines_arg1_1 =
  (concat_d0_d0_d0 ((map_d0_d0_d0 (fun l_1 -> 
    ((mappend_d9_d0_d0 l_1) (let rec h_7_8 = '|' in
      (let rec t_7_8 = (fun ys_5_5 -> 
        ys_5_5) in
        (fun ys_5_6 -> 
          (let rec h_7_9 = h_7_8 in
            (let rec t_7_9 = ((mappend_d8_d0_d0 t_7_8) ys_5_6) in
              (fun f_6_7 i_6_2 -> 
                (((foldl_d0_d0_d1 f_6_7) ((f_6_7 i_6_2) h_7_9)) t_7_9)))))))))) _lh_unlines_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Sorting_nofib" (fun () -> ignore ((testSorting_nofib_d0 0)));
  Bench.Test.create ~name:"lumberhack_Sorting_nofib" (fun () -> ignore ((testSorting_nofib_d0_d0 0)));
  Bench.Test.create ~name:"lumberhack_pop_out_Sorting_nofib" (fun () -> ignore ((testSorting_nofib_d0_d0_d0 0)));
])
