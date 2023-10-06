(*
touch ./Expert_nofib.mli && ocamlc ./Expert_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Expert_nofib.ml -o "./Expert_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Expert_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
module Module_original = struct
let rec answer__d0 _lh_answer_arg1_7 =
  (match _lh_answer_arg1_7 with
    | `Answer(_lh_answer_Answer_0_7) -> 
      _lh_answer_Answer_0_7
    | _ -> 
      (failwith "error"));;
let rec answer__d1 _lh_answer_arg1_4 =
  (match _lh_answer_arg1_4 with
    | `Answer(_lh_answer_Answer_0_4) -> 
      _lh_answer_Answer_0_4
    | _ -> 
      (failwith "error"));;
let rec answer__d2 _lh_answer_arg1_6 =
  (match _lh_answer_arg1_6 with
    | `Answer(_lh_answer_Answer_0_6) -> 
      _lh_answer_Answer_0_6
    | _ -> 
      (failwith "error"));;
let rec answer__d3 _lh_answer_arg1_8 =
  (match _lh_answer_arg1_8 with
    | `Answer(_lh_answer_Answer_0_8) -> 
      _lh_answer_Answer_0_8
    | _ -> 
      (failwith "error"));;
let rec answer__d4 _lh_answer_arg1_9 =
  (match _lh_answer_arg1_9 with
    | `Answer(_lh_answer_Answer_0_9) -> 
      _lh_answer_Answer_0_9
    | _ -> 
      (failwith "error"));;
let rec answer__d5 _lh_answer_arg1_1 =
  (match _lh_answer_arg1_1 with
    | `Answer(_lh_answer_Answer_0_1) -> 
      _lh_answer_Answer_0_1
    | _ -> 
      (failwith "error"));;
let rec answer__d6 _lh_answer_arg1_2 =
  (match _lh_answer_arg1_2 with
    | `Answer(_lh_answer_Answer_0_2) -> 
      _lh_answer_Answer_0_2
    | _ -> 
      (failwith "error"));;
let rec answer__d7 _lh_answer_arg1_5 =
  (match _lh_answer_arg1_5 with
    | `Answer(_lh_answer_Answer_0_5) -> 
      _lh_answer_Answer_0_5
    | _ -> 
      (failwith "error"));;
let rec answer__d8 _lh_answer_arg1_3 =
  (match _lh_answer_arg1_3 with
    | `Answer(_lh_answer_Answer_0_3) -> 
      _lh_answer_Answer_0_3
    | _ -> 
      (failwith "error"));;
let rec atIndex__d0 n_1_0 ls_5_4 =
  (if (n_1_0 < 0) then
    (failwith "error")
  else
    (match ls_5_4 with
      | `LH_C(h_9_9, t_1_0_1) -> 
        (if (n_1_0 = 0) then
          h_9_9
        else
          ((atIndex__d0 (n_1_0 - 1)) t_1_0_1))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1 n_6 ls_4_1 =
  (if (n_6 < 0) then
    (failwith "error")
  else
    (match ls_4_1 with
      | `LH_C(h_7_1, t_7_3) -> 
        (if (n_6 = 0) then
          h_7_1
        else
          ((atIndex__d1 (n_6 - 1)) t_7_3))
      | `LH_N -> 
        (failwith "error")));;
let rec break__d0 _lh_break_arg1_6 _lh_break_arg2_6 =
  (match _lh_break_arg2_6 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_6, _lh_break_LH_C_1_6) -> 
      (if (_lh_break_arg1_6 _lh_break_LH_C_0_6) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_6, _lh_break_LH_C_1_6))))
      else
        (let rec _lh_matchIdent_2_5_5 = ((break__d0 _lh_break_arg1_6) _lh_break_LH_C_1_6) in
          (match _lh_matchIdent_2_5_5 with
            | `LH_P2(_lh_break_LH_P2_0_6, _lh_break_LH_P2_1_6) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_6, _lh_break_LH_P2_0_6)), _lh_break_LH_P2_1_6))
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
        (let rec _lh_matchIdent_2_2_6 = ((break__d1 _lh_break_arg1_2) _lh_break_LH_C_1_2) in
          (match _lh_matchIdent_2_2_6 with
            | `LH_P2(_lh_break_LH_P2_0_2, _lh_break_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_2, _lh_break_LH_P2_0_2)), _lh_break_LH_P2_1_2))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d2 _lh_break_arg1_4 _lh_break_arg2_4 =
  (match _lh_break_arg2_4 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_4, _lh_break_LH_C_1_4) -> 
      (if (_lh_break_arg1_4 _lh_break_LH_C_0_4) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_4, _lh_break_LH_C_1_4))))
      else
        (let rec _lh_matchIdent_2_3_6 = ((break__d2 _lh_break_arg1_4) _lh_break_LH_C_1_4) in
          (match _lh_matchIdent_2_3_6 with
            | `LH_P2(_lh_break_LH_P2_0_4, _lh_break_LH_P2_1_4) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_4, _lh_break_LH_P2_0_4)), _lh_break_LH_P2_1_4))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d3 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_1_2_0 = ((break__d3 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_1_2_0 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d4 _lh_break_arg1_5 _lh_break_arg2_5 =
  (match _lh_break_arg2_5 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_5, _lh_break_LH_C_1_5) -> 
      (if (_lh_break_arg1_5 _lh_break_LH_C_0_5) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_5, _lh_break_LH_C_1_5))))
      else
        (let rec _lh_matchIdent_2_3_9 = ((break__d4 _lh_break_arg1_5) _lh_break_LH_C_1_5) in
          (match _lh_matchIdent_2_3_9 with
            | `LH_P2(_lh_break_LH_P2_0_5, _lh_break_LH_P2_1_5) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_5, _lh_break_LH_P2_0_5)), _lh_break_LH_P2_1_5))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d5 _lh_break_arg1_3 _lh_break_arg2_3 =
  (match _lh_break_arg2_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_3, _lh_break_LH_C_1_3) -> 
      (if (_lh_break_arg1_3 _lh_break_LH_C_0_3) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_3, _lh_break_LH_C_1_3))))
      else
        (let rec _lh_matchIdent_2_3_3 = ((break__d5 _lh_break_arg1_3) _lh_break_LH_C_1_3) in
          (match _lh_matchIdent_2_3_3 with
            | `LH_P2(_lh_break_LH_P2_0_3, _lh_break_LH_P2_1_3) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_3, _lh_break_LH_P2_0_3)), _lh_break_LH_P2_1_3))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d0 _lh_dropWhile_arg1_6 _lh_dropWhile_arg2_6 =
  (match _lh_dropWhile_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_6, _lh_dropWhile_LH_C_1_6) -> 
      (if (_lh_dropWhile_arg1_6 _lh_dropWhile_LH_C_0_6) then
        ((dropWhile__d0 _lh_dropWhile_arg1_6) _lh_dropWhile_LH_C_1_6)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_6, _lh_dropWhile_LH_C_1_6)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d1 _lh_dropWhile_arg1_2 _lh_dropWhile_arg2_2 =
  (match _lh_dropWhile_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2) -> 
      (if (_lh_dropWhile_arg1_2 _lh_dropWhile_LH_C_0_2) then
        ((dropWhile__d1 _lh_dropWhile_arg1_2) _lh_dropWhile_LH_C_1_2)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d1_d0 _lh_dropWhile_arg1_7 _lh_dropWhile_arg2_7 =
  (match _lh_dropWhile_arg2_7 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_7, _lh_dropWhile_LH_C_1_7) -> 
      (if (_lh_dropWhile_arg1_7 _lh_dropWhile_LH_C_0_7) then
        ((dropWhile__d1_d0 _lh_dropWhile_arg1_7) _lh_dropWhile_LH_C_1_7)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_7, _lh_dropWhile_LH_C_1_7)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d2 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile__d2 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d3 _lh_dropWhile_arg1_1_1 _lh_dropWhile_arg2_1_1 =
  (match _lh_dropWhile_arg2_1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1_1, _lh_dropWhile_LH_C_1_1_1) -> 
      (if (_lh_dropWhile_arg1_1_1 _lh_dropWhile_LH_C_0_1_1) then
        ((dropWhile__d3 _lh_dropWhile_arg1_1_1) _lh_dropWhile_LH_C_1_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1_1, _lh_dropWhile_LH_C_1_1_1)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d4 _lh_dropWhile_arg1_5 _lh_dropWhile_arg2_5 =
  (match _lh_dropWhile_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_5, _lh_dropWhile_LH_C_1_5) -> 
      (if (_lh_dropWhile_arg1_5 _lh_dropWhile_LH_C_0_5) then
        ((dropWhile__d4 _lh_dropWhile_arg1_5) _lh_dropWhile_LH_C_1_5)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_5, _lh_dropWhile_LH_C_1_5)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d5 _lh_dropWhile_arg1_8 _lh_dropWhile_arg2_8 =
  (match _lh_dropWhile_arg2_8 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_8, _lh_dropWhile_LH_C_1_8) -> 
      (if (_lh_dropWhile_arg1_8 _lh_dropWhile_LH_C_0_8) then
        ((dropWhile__d5 _lh_dropWhile_arg1_8) _lh_dropWhile_LH_C_1_8)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_8, _lh_dropWhile_LH_C_1_8)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d6 _lh_dropWhile_arg1_4 _lh_dropWhile_arg2_4 =
  (match _lh_dropWhile_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_4, _lh_dropWhile_LH_C_1_4) -> 
      (if (_lh_dropWhile_arg1_4 _lh_dropWhile_LH_C_0_4) then
        ((dropWhile__d6 _lh_dropWhile_arg1_4) _lh_dropWhile_LH_C_1_4)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_4, _lh_dropWhile_LH_C_1_4)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d7 _lh_dropWhile_arg1_3 _lh_dropWhile_arg2_3 =
  (match _lh_dropWhile_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_3, _lh_dropWhile_LH_C_1_3) -> 
      (if (_lh_dropWhile_arg1_3 _lh_dropWhile_LH_C_0_3) then
        ((dropWhile__d7 _lh_dropWhile_arg1_3) _lh_dropWhile_LH_C_1_3)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_3, _lh_dropWhile_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d8 _lh_dropWhile_arg1_9 _lh_dropWhile_arg2_9 =
  (match _lh_dropWhile_arg2_9 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_9, _lh_dropWhile_LH_C_1_9) -> 
      (if (_lh_dropWhile_arg1_9 _lh_dropWhile_LH_C_0_9) then
        ((dropWhile__d8 _lh_dropWhile_arg1_9) _lh_dropWhile_LH_C_1_9)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_9, _lh_dropWhile_LH_C_1_9)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d9 _lh_dropWhile_arg1_1_0 _lh_dropWhile_arg2_1_0 =
  (match _lh_dropWhile_arg2_1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1_0, _lh_dropWhile_LH_C_1_1_0) -> 
      (if (_lh_dropWhile_arg1_1_0 _lh_dropWhile_LH_C_0_1_0) then
        ((dropWhile__d9 _lh_dropWhile_arg1_1_0) _lh_dropWhile_LH_C_1_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1_0, _lh_dropWhile_LH_C_1_1_0)))
    | _ -> 
      (failwith "error"));;
let rec drop__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec drop__d1 _lh_drop_arg1_3 _lh_drop_arg2_3 =
  (match _lh_drop_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3) -> 
      (if (_lh_drop_arg1_3 > 0) then
        ((drop__d1 (_lh_drop_arg1_3 - 1)) _lh_drop_LH_C_1_3)
      else
        (`LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec drop__d2 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 > 0) then
        ((drop__d2 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2)
      else
        (`LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec failure__d0 _lh_failure_arg1_6 =
  (`Reason(_lh_failure_arg1_6));;
let rec failure__d1 _lh_failure_arg1_4 =
  (`Reason(_lh_failure_arg1_4));;
let rec failure__d2 _lh_failure_arg1_7 =
  (`Reason(_lh_failure_arg1_7));;
let rec failure__d3 _lh_failure_arg1_8 =
  (`Reason(_lh_failure_arg1_8));;
let rec failure__d4 _lh_failure_arg1_3 =
  (`Reason(_lh_failure_arg1_3));;
let rec failure__d5 _lh_failure_arg1_1 =
  (`Reason(_lh_failure_arg1_1));;
let rec failure__d6 _lh_failure_arg1_5 =
  (`Reason(_lh_failure_arg1_5));;
let rec failure__d7 _lh_failure_arg1_2 =
  (`Reason(_lh_failure_arg1_2));;
let rec failure__d8 _lh_failure_arg1_9 =
  (`Reason(_lh_failure_arg1_9));;
let rec filter__d0 f_1_4 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_5_0, t_5_2) -> 
      (if (f_1_4 h_5_0) then
        (`LH_C(h_5_0, ((filter__d0 f_1_4) t_5_2)))
      else
        ((filter__d0 f_1_4) t_5_2))
    | `LH_N -> 
      (`LH_N));;
let rec filter__d1 f_1_6 ls_5_8 =
  (match ls_5_8 with
    | `LH_C(h_1_0_4, t_1_0_6) -> 
      (if (f_1_6 h_1_0_4) then
        (`LH_C(h_1_0_4, ((filter__d1 f_1_6) t_1_0_6)))
      else
        ((filter__d1 f_1_6) t_1_0_6))
    | `LH_N -> 
      (`LH_N));;
let rec filter__d2 f_1_2 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_4_3, t_4_5) -> 
      (if (f_1_2 h_4_3) then
        (`LH_C(h_4_3, ((filter__d2 f_1_2) t_4_5)))
      else
        ((filter__d2 f_1_2) t_4_5))
    | `LH_N -> 
      (`LH_N));;
let rec foldr1__d0 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (match _lh_foldr1_LH_C_1_1 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_1
        | _ -> 
          ((_lh_foldr1_arg1_1 _lh_foldr1_LH_C_0_1) ((foldr1__d0 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_1_7 i_4 ls_6_1 =
  (match ls_6_1 with
    | `LH_C(h_1_1_0, t_1_1_2) -> 
      ((f_1_7 h_1_1_0) (((foldr__d0 f_1_7) i_4) t_1_1_2))
    | `LH_N -> 
      i_4);;
let rec foldr__d1 f_1_3 i_3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_4_5, t_4_7) -> 
      ((f_1_3 h_4_5) (((foldr__d1 f_1_3) i_3) t_4_7))
    | `LH_N -> 
      i_3);;
let rec fst__d0 _lh_fst_arg1_3 =
  (match _lh_fst_arg1_3 with
    | `LH_P2(_lh_fst_LH_P2_0_3, _lh_fst_LH_P2_1_3) -> 
      _lh_fst_LH_P2_0_3
    | _ -> 
      (failwith "error"));;
let rec fst__d1 _lh_fst_arg1_6 =
  (match _lh_fst_arg1_6 with
    | `LH_P2(_lh_fst_LH_P2_0_6, _lh_fst_LH_P2_1_6) -> 
      _lh_fst_LH_P2_0_6
    | _ -> 
      (failwith "error"));;
let rec fst__d2 _lh_fst_arg1_4 =
  (match _lh_fst_arg1_4 with
    | `LH_P2(_lh_fst_LH_P2_0_4, _lh_fst_LH_P2_1_4) -> 
      _lh_fst_LH_P2_0_4
    | _ -> 
      (failwith "error"));;
let rec fst__d3 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_1, _lh_fst_LH_P2_1_1) -> 
      _lh_fst_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec fst__d4 _lh_fst_arg1_2 =
  (match _lh_fst_arg1_2 with
    | `LH_P2(_lh_fst_LH_P2_0_2, _lh_fst_LH_P2_1_2) -> 
      _lh_fst_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec fst__d5 _lh_fst_arg1_5 =
  (match _lh_fst_arg1_5 with
    | `LH_P2(_lh_fst_LH_P2_0_5, _lh_fst_LH_P2_1_5) -> 
      _lh_fst_LH_P2_0_5
    | _ -> 
      (failwith "error"));;
let rec head__d0 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_8_6, t_8_8) -> 
      h_8_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_8_7, t_8_9) -> 
      h_8_7
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d0 ls_4_5 =
  (match ls_4_5 with
    | `LH_C(h_8_1, t_8_3) -> 
      h_8_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d1 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_6_9, t_7_1) -> 
      h_6_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d2 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_5_9, t_6_1) -> 
      h_5_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d3 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_3, t_3_5) -> 
      h_3_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      h_2_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d5 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_4, t_2_6) -> 
      h_2_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d6 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_7_4, t_7_6) -> 
      h_7_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d2 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_6_3, t_6_5) -> 
      h_6_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d3 ls_5_3 =
  (match ls_5_3 with
    | `LH_C(h_9_6, t_9_8) -> 
      h_9_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d4 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_8_5, t_8_7) -> 
      h_8_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d5 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_8_0, t_8_2) -> 
      h_8_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d6 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_1_0_8, t_1_1_0) -> 
      h_1_0_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d7 ls_5_6 =
  (match ls_5_6 with
    | `LH_C(h_1_0_1, t_1_0_3) -> 
      h_1_0_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d8 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_8, t_4_0) -> 
      h_3_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d9 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_9_1, t_9_3) -> 
      h_9_1
    | `LH_N -> 
      (failwith "error"));;
let rec inList__d0 _lh_inList_arg1_1_0 _lh_inList_arg2_1_0 =
  (match _lh_inList_arg2_1_0 with
    | `LH_C(_lh_inList_LH_C_0_1_0, _lh_inList_LH_C_1_1_0) -> 
      (if (_lh_inList_arg1_1_0 = _lh_inList_LH_C_0_1_0) then
        true
      else
        ((inList__d0 _lh_inList_arg1_1_0) _lh_inList_LH_C_1_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1 _lh_inList_arg1_2 _lh_inList_arg2_2 =
  (match _lh_inList_arg2_2 with
    | `LH_C(_lh_inList_LH_C_0_2, _lh_inList_LH_C_1_2) -> 
      (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_2) then
        true
      else
        ((inList__d1 _lh_inList_arg1_2) _lh_inList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1_d0 _lh_inList_arg1_8 _lh_inList_arg2_8 =
  (match _lh_inList_arg2_8 with
    | `LH_C(_lh_inList_LH_C_0_8, _lh_inList_LH_C_1_8) -> 
      (if (_lh_inList_arg1_8 = _lh_inList_LH_C_0_8) then
        true
      else
        ((inList__d1_d0 _lh_inList_arg1_8) _lh_inList_LH_C_1_8))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1_d1 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList__d1_d1 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1_d2 _lh_inList_arg1_4 _lh_inList_arg2_4 =
  (match _lh_inList_arg2_4 with
    | `LH_C(_lh_inList_LH_C_0_4, _lh_inList_LH_C_1_4) -> 
      (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_4) then
        true
      else
        ((inList__d1_d2 _lh_inList_arg1_4) _lh_inList_LH_C_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1_d3 _lh_inList_arg1_6 _lh_inList_arg2_6 =
  (match _lh_inList_arg2_6 with
    | `LH_C(_lh_inList_LH_C_0_6, _lh_inList_LH_C_1_6) -> 
      (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_6) then
        true
      else
        ((inList__d1_d3 _lh_inList_arg1_6) _lh_inList_LH_C_1_6))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d2 _lh_inList_arg1_1_4 _lh_inList_arg2_1_4 =
  (match _lh_inList_arg2_1_4 with
    | `LH_C(_lh_inList_LH_C_0_1_4, _lh_inList_LH_C_1_1_4) -> 
      (if (_lh_inList_arg1_1_4 = _lh_inList_LH_C_0_1_4) then
        true
      else
        ((inList__d2 _lh_inList_arg1_1_4) _lh_inList_LH_C_1_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d3 _lh_inList_arg1_7 _lh_inList_arg2_7 =
  (match _lh_inList_arg2_7 with
    | `LH_C(_lh_inList_LH_C_0_7, _lh_inList_LH_C_1_7) -> 
      (if (_lh_inList_arg1_7 = _lh_inList_LH_C_0_7) then
        true
      else
        ((inList__d3 _lh_inList_arg1_7) _lh_inList_LH_C_1_7))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d4 _lh_inList_arg1_3 _lh_inList_arg2_3 =
  (match _lh_inList_arg2_3 with
    | `LH_C(_lh_inList_LH_C_0_3, _lh_inList_LH_C_1_3) -> 
      (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_3) then
        true
      else
        ((inList__d4 _lh_inList_arg1_3) _lh_inList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d5 _lh_inList_arg1_1_1 _lh_inList_arg2_1_1 =
  (match _lh_inList_arg2_1_1 with
    | `LH_C(_lh_inList_LH_C_0_1_1, _lh_inList_LH_C_1_1_1) -> 
      (if (_lh_inList_arg1_1_1 = _lh_inList_LH_C_0_1_1) then
        true
      else
        ((inList__d5 _lh_inList_arg1_1_1) _lh_inList_LH_C_1_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d6 _lh_inList_arg1_5 _lh_inList_arg2_5 =
  (match _lh_inList_arg2_5 with
    | `LH_C(_lh_inList_LH_C_0_5, _lh_inList_LH_C_1_5) -> 
      (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_5) then
        true
      else
        ((inList__d6 _lh_inList_arg1_5) _lh_inList_LH_C_1_5))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d7 _lh_inList_arg1_1_2 _lh_inList_arg2_1_2 =
  (match _lh_inList_arg2_1_2 with
    | `LH_C(_lh_inList_LH_C_0_1_2, _lh_inList_LH_C_1_1_2) -> 
      (if (_lh_inList_arg1_1_2 = _lh_inList_LH_C_0_1_2) then
        true
      else
        ((inList__d7 _lh_inList_arg1_1_2) _lh_inList_LH_C_1_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d8 _lh_inList_arg1_9 _lh_inList_arg2_9 =
  (match _lh_inList_arg2_9 with
    | `LH_C(_lh_inList_LH_C_0_9, _lh_inList_LH_C_1_9) -> 
      (if (_lh_inList_arg1_9 = _lh_inList_LH_C_0_9) then
        true
      else
        ((inList__d8 _lh_inList_arg1_9) _lh_inList_LH_C_1_9))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d9 _lh_inList_arg1_1_3 _lh_inList_arg2_1_3 =
  (match _lh_inList_arg2_1_3 with
    | `LH_C(_lh_inList_LH_C_0_1_3, _lh_inList_LH_C_1_1_3) -> 
      (if (_lh_inList_arg1_1_3 = _lh_inList_LH_C_0_1_3) then
        true
      else
        ((inList__d9 _lh_inList_arg1_1_3) _lh_inList_LH_C_1_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec isSpace__d0 _lh_isSpace_arg1_3 =
  (_lh_isSpace_arg1_3 = ' ');;
let rec isSpace__d1 _lh_isSpace_arg1_1 =
  (_lh_isSpace_arg1_1 = ' ');;
let rec isSpace__d2 _lh_isSpace_arg1_2 =
  (_lh_isSpace_arg1_2 = ' ');;
let rec isSpace__d3 _lh_isSpace_arg1_6 =
  (_lh_isSpace_arg1_6 = ' ');;
let rec isSpace__d4 _lh_isSpace_arg1_5 =
  (_lh_isSpace_arg1_5 = ' ');;
let rec isSpace__d5 _lh_isSpace_arg1_4 =
  (_lh_isSpace_arg1_4 = ' ');;
let rec length__d0 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_2, t_3_4) -> 
      (1 + (length__d0 t_3_4))
    | `LH_N -> 
      0);;
let rec length__d1 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length__d1 t_2_2))
    | `LH_N -> 
      0);;
let rec length__d2 ls_5_2 =
  (match ls_5_2 with
    | `LH_C(h_9_5, t_9_7) -> 
      (1 + (length__d2 t_9_7))
    | `LH_N -> 
      0);;
let rec length__d3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (1 + (length__d3 t_2_4))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_5 ls_5_5 =
  (match ls_5_5 with
    | `LH_C(h_1_0_0, t_1_0_2) -> 
      (`LH_C((f_1_5 h_1_0_0), ((map__d0 f_1_5) t_1_0_2)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_2_0 ys_1_9 =
  (match xs_2_0 with
    | `LH_C(h_4_6, t_4_8) -> 
      (`LH_C(h_4_6, ((mappend__d0 t_4_8) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d1 xs_1_4 ys_1_3 =
  (match xs_1_4 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C(h_2_9, ((mappend__d1 t_3_1) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d1_d0 xs_1_6 ys_1_5 =
  (match xs_1_6 with
    | `LH_C(h_3_4, t_3_6) -> 
      (`LH_C(h_3_4, ((mappend__d1_d0 t_3_6) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d1_d1 xs_4_8 ys_4_6 =
  (match xs_4_8 with
    | `LH_C(h_8_4, t_8_6) -> 
      (`LH_C(h_8_4, ((mappend__d1_d1 t_8_6) ys_4_6)))
    | `LH_N -> 
      ys_4_6);;
let rec mappend__d1_d2 xs_1_2 ys_1_1 =
  (match xs_1_2 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d1_d2 t_2_8) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1_d3 xs_5_0 ys_4_8 =
  (match xs_5_0 with
    | `LH_C(h_9_2, t_9_4) -> 
      (`LH_C(h_9_2, ((mappend__d1_d3 t_9_4) ys_4_8)))
    | `LH_N -> 
      ys_4_8);;
let rec mappend__d1_d4 xs_3_7 ys_3_6 =
  (match xs_3_7 with
    | `LH_C(h_7_0, t_7_2) -> 
      (`LH_C(h_7_0, ((mappend__d1_d4 t_7_2) ys_3_6)))
    | `LH_N -> 
      ys_3_6);;
let rec mappend__d1_d5 xs_1_3 ys_1_2 =
  (match xs_1_3 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d1_d5 t_3_0) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d1_d6 xs_5_4 ys_5_2 =
  (match xs_5_4 with
    | `LH_C(h_1_0_2, t_1_0_4) -> 
      (`LH_C(h_1_0_2, ((mappend__d1_d6 t_1_0_4) ys_5_2)))
    | `LH_N -> 
      ys_5_2);;
let rec mappend__d1_d7 xs_5_7 ys_5_5 =
  (match xs_5_7 with
    | `LH_C(h_1_0_7, t_1_0_9) -> 
      (`LH_C(h_1_0_7, ((mappend__d1_d7 t_1_0_9) ys_5_5)))
    | `LH_N -> 
      ys_5_5);;
let rec mappend__d1_d8 xs_1_1 ys_1_0 =
  (match xs_1_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d1_d8 t_2_5) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1_d9 xs_2_4 ys_2_3 =
  (match xs_2_4 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend__d1_d9 t_5_4) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d2 xs_1_9 ys_1_8 =
  (match xs_1_9 with
    | `LH_C(h_4_0, t_4_2) -> 
      (`LH_C(h_4_0, ((mappend__d2 t_4_2) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d2_d0 xs_2_8 ys_2_7 =
  (match xs_2_8 with
    | `LH_C(h_5_7, t_5_9) -> 
      (`LH_C(h_5_7, ((mappend__d2_d0 t_5_9) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d2_d1 xs_5_6 ys_5_4 =
  (match xs_5_6 with
    | `LH_C(h_1_0_6, t_1_0_8) -> 
      (`LH_C(h_1_0_6, ((mappend__d2_d1 t_1_0_8) ys_5_4)))
    | `LH_N -> 
      ys_5_4);;
let rec mappend__d2_d2 xs_1_0 ys_9 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d2_d2 t_2_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d2_d3 xs_4_9 ys_4_7 =
  (match xs_4_9 with
    | `LH_C(h_9_0, t_9_2) -> 
      (`LH_C(h_9_0, ((mappend__d2_d3 t_9_2) ys_4_7)))
    | `LH_N -> 
      ys_4_7);;
let rec mappend__d2_d4 xs_5_2 ys_5_0 =
  (match xs_5_2 with
    | `LH_C(h_9_4, t_9_6) -> 
      (`LH_C(h_9_4, ((mappend__d2_d4 t_9_6) ys_5_0)))
    | `LH_N -> 
      ys_5_0);;
let rec mappend__d2_d5 xs_3_1 ys_3_0 =
  (match xs_3_1 with
    | `LH_C(h_6_2, t_6_4) -> 
      (`LH_C(h_6_2, ((mappend__d2_d5 t_6_4) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d2_d6 xs_2_3 ys_2_2 =
  (match xs_2_3 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C(h_5_1, ((mappend__d2_d6 t_5_3) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d2_d7 xs_4_5 ys_4_4 =
  (match xs_4_5 with
    | `LH_C(h_8_2, t_8_4) -> 
      (`LH_C(h_8_2, ((mappend__d2_d7 t_8_4) ys_4_4)))
    | `LH_N -> 
      ys_4_4);;
let rec mappend__d2_d8 xs_5_9 ys_5_7 =
  (match xs_5_9 with
    | `LH_C(h_1_1_2, t_1_1_4) -> 
      (`LH_C(h_1_1_2, ((mappend__d2_d8 t_1_1_4) ys_5_7)))
    | `LH_N -> 
      ys_5_7);;
let rec mappend__d2_d9 xs_4_0 ys_3_9 =
  (match xs_4_0 with
    | `LH_C(h_7_5, t_7_7) -> 
      (`LH_C(h_7_5, ((mappend__d2_d9 t_7_7) ys_3_9)))
    | `LH_N -> 
      ys_3_9);;
let rec mappend__d3 xs_4_2 ys_4_1 =
  (match xs_4_2 with
    | `LH_C(h_7_8, t_8_0) -> 
      (`LH_C(h_7_8, ((mappend__d3 t_8_0) ys_4_1)))
    | `LH_N -> 
      ys_4_1);;
let rec mappend__d3_d0 xs_3_4 ys_3_3 =
  (match xs_3_4 with
    | `LH_C(h_6_6, t_6_8) -> 
      (`LH_C(h_6_6, ((mappend__d3_d0 t_6_8) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend__d3_d1 xs_2_9 ys_2_8 =
  (match xs_2_9 with
    | `LH_C(h_6_0, t_6_2) -> 
      (`LH_C(h_6_0, ((mappend__d3_d1 t_6_2) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d3_d2 xs_1_5 ys_1_4 =
  (match xs_1_5 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend__d3_d2 t_3_2) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d3_d3 xs_5_1 ys_4_9 =
  (match xs_5_1 with
    | `LH_C(h_9_3, t_9_5) -> 
      (`LH_C(h_9_3, ((mappend__d3_d3 t_9_5) ys_4_9)))
    | `LH_N -> 
      ys_4_9);;
let rec mappend__d3_d4 xs_2_5 ys_2_4 =
  (match xs_2_5 with
    | `LH_C(h_5_3, t_5_5) -> 
      (`LH_C(h_5_3, ((mappend__d3_d4 t_5_5) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d3_d5 xs_5_3 ys_5_1 =
  (match xs_5_3 with
    | `LH_C(h_9_7, t_9_9) -> 
      (`LH_C(h_9_7, ((mappend__d3_d5 t_9_9) ys_5_1)))
    | `LH_N -> 
      ys_5_1);;
let rec mappend__d3_d6 xs_1_7 ys_1_6 =
  (match xs_1_7 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend__d3_d6 t_3_9) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d3_d7 xs_3_8 ys_3_7 =
  (match xs_3_8 with
    | `LH_C(h_7_2, t_7_4) -> 
      (`LH_C(h_7_2, ((mappend__d3_d7 t_7_4) ys_3_7)))
    | `LH_N -> 
      ys_3_7);;
let rec mappend__d3_d8 xs_5_8 ys_5_6 =
  (match xs_5_8 with
    | `LH_C(h_1_1_1, t_1_1_3) -> 
      (`LH_C(h_1_1_1, ((mappend__d3_d8 t_1_1_3) ys_5_6)))
    | `LH_N -> 
      ys_5_6);;
let rec mappend__d3_d9 xs_3_0 ys_2_9 =
  (match xs_3_0 with
    | `LH_C(h_6_1, t_6_3) -> 
      (`LH_C(h_6_1, ((mappend__d3_d9 t_6_3) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d4 xs_3_5 ys_3_4 =
  (match xs_3_5 with
    | `LH_C(h_6_7, t_6_9) -> 
      (`LH_C(h_6_7, ((mappend__d4 t_6_9) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend__d4_d0 xs_4_6 ys_4_5 =
  (match xs_4_6 with
    | `LH_C(h_8_3, t_8_5) -> 
      (`LH_C(h_8_3, ((mappend__d4_d0 t_8_5) ys_4_5)))
    | `LH_N -> 
      ys_4_5);;
let rec mappend__d4_d1 xs_3_9 ys_3_8 =
  (match xs_3_9 with
    | `LH_C(h_7_3, t_7_5) -> 
      (`LH_C(h_7_3, ((mappend__d4_d1 t_7_5) ys_3_8)))
    | `LH_N -> 
      ys_3_8);;
let rec mappend__d4_d2 xs_2_6 ys_2_5 =
  (match xs_2_6 with
    | `LH_C(h_5_4, t_5_6) -> 
      (`LH_C(h_5_4, ((mappend__d4_d2 t_5_6) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d4_d3 xs_3_2 ys_3_1 =
  (match xs_3_2 with
    | `LH_C(h_6_4, t_6_6) -> 
      (`LH_C(h_6_4, ((mappend__d4_d3 t_6_6) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend__d4_d4 xs_4_1 ys_4_0 =
  (match xs_4_1 with
    | `LH_C(h_7_7, t_7_9) -> 
      (`LH_C(h_7_7, ((mappend__d4_d4 t_7_9) ys_4_0)))
    | `LH_N -> 
      ys_4_0);;
let rec mappend__d4_d5 xs_3_6 ys_3_5 =
  (match xs_3_6 with
    | `LH_C(h_6_8, t_7_0) -> 
      (`LH_C(h_6_8, ((mappend__d4_d5 t_7_0) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec mappend__d5 xs_2_7 ys_2_6 =
  (match xs_2_7 with
    | `LH_C(h_5_6, t_5_8) -> 
      (`LH_C(h_5_6, ((mappend__d5 t_5_8) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d6 xs_2_1 ys_2_0 =
  (match xs_2_1 with
    | `LH_C(h_4_9, t_5_1) -> 
      (`LH_C(h_4_9, ((mappend__d6 t_5_1) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d7 xs_4_3 ys_4_2 =
  (match xs_4_3 with
    | `LH_C(h_7_9, t_8_1) -> 
      (`LH_C(h_7_9, ((mappend__d7 t_8_1) ys_4_2)))
    | `LH_N -> 
      ys_4_2);;
let rec mappend__d8 xs_1_8 ys_1_7 =
  (match xs_1_8 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend__d8 t_4_1) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d9 xs_5_5 ys_5_3 =
  (match xs_5_5 with
    | `LH_C(h_1_0_5, t_1_0_7) -> 
      (`LH_C(h_1_0_5, ((mappend__d9 t_1_0_7) ys_5_3)))
    | `LH_N -> 
      ys_5_3);;
let rec mergeKey__d0 _lh_mergeKey_arg1_2 _lh_mergeKey_arg2_2 =
  (match _lh_mergeKey_arg1_2 with
    | `LH_N -> 
      _lh_mergeKey_arg2_2
    | _ -> 
      (match _lh_mergeKey_arg2_2 with
        | `LH_N -> 
          _lh_mergeKey_arg1_2
        | _ -> 
          (match _lh_mergeKey_arg1_2 with
            | `LH_C(_lh_mergeKey_LH_C_0_4, _lh_mergeKey_LH_C_1_4) -> 
              (match _lh_mergeKey_LH_C_0_4 with
                | `LH_P2(_lh_mergeKey_LH_P2_0_4, _lh_mergeKey_LH_P2_1_4) -> 
                  (match _lh_mergeKey_arg2_2 with
                    | `LH_C(_lh_mergeKey_LH_C_0_5, _lh_mergeKey_LH_C_1_5) -> 
                      (match _lh_mergeKey_LH_C_0_5 with
                        | `LH_P2(_lh_mergeKey_LH_P2_0_5, _lh_mergeKey_LH_P2_1_5) -> 
                          (if (_lh_mergeKey_LH_P2_0_4 <= _lh_mergeKey_LH_P2_0_5) then
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_4, _lh_mergeKey_LH_P2_1_4)), ((mergeKey__d0 _lh_mergeKey_LH_C_1_4) (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_5, _lh_mergeKey_LH_P2_1_5)), _lh_mergeKey_LH_C_1_5)))))
                          else
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_5, _lh_mergeKey_LH_P2_1_5)), ((mergeKey__d0 (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_4, _lh_mergeKey_LH_P2_1_4)), _lh_mergeKey_LH_C_1_4))) _lh_mergeKey_LH_C_1_5))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec mergeKey__d1 _lh_mergeKey_arg1_1 _lh_mergeKey_arg2_1 =
  (match _lh_mergeKey_arg1_1 with
    | `LH_N -> 
      _lh_mergeKey_arg2_1
    | _ -> 
      (match _lh_mergeKey_arg2_1 with
        | `LH_N -> 
          _lh_mergeKey_arg1_1
        | _ -> 
          (match _lh_mergeKey_arg1_1 with
            | `LH_C(_lh_mergeKey_LH_C_0_2, _lh_mergeKey_LH_C_1_2) -> 
              (match _lh_mergeKey_LH_C_0_2 with
                | `LH_P2(_lh_mergeKey_LH_P2_0_2, _lh_mergeKey_LH_P2_1_2) -> 
                  (match _lh_mergeKey_arg2_1 with
                    | `LH_C(_lh_mergeKey_LH_C_0_3, _lh_mergeKey_LH_C_1_3) -> 
                      (match _lh_mergeKey_LH_C_0_3 with
                        | `LH_P2(_lh_mergeKey_LH_P2_0_3, _lh_mergeKey_LH_P2_1_3) -> 
                          (if (_lh_mergeKey_LH_P2_0_2 <= _lh_mergeKey_LH_P2_0_3) then
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_2, _lh_mergeKey_LH_P2_1_2)), ((mergeKey__d1 _lh_mergeKey_LH_C_1_2) (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_3, _lh_mergeKey_LH_P2_1_3)), _lh_mergeKey_LH_C_1_3)))))
                          else
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_3, _lh_mergeKey_LH_P2_1_3)), ((mergeKey__d1 (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_2, _lh_mergeKey_LH_P2_1_2)), _lh_mergeKey_LH_C_1_2))) _lh_mergeKey_LH_C_1_3))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec newTable__d0 =
  (`Empty);;
let rec newTable__d1 =
  (`Empty);;
let rec newTable__d2 =
  (`Empty);;
let rec newTable__d3 =
  (`Empty);;
let rec null__d0 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec or__d0 _lh_or_arg1_1 =
  (match _lh_or_arg1_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_1, _lh_or_LH_C_1_1) -> 
      (if _lh_or_LH_C_0_1 then
        true
      else
        (or__d0 _lh_or_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec strEq__d0 _lh_strEq_arg1_1_5 _lh_strEq_arg2_1_5 =
  (match _lh_strEq_arg1_1_5 with
    | `LH_C(_lh_strEq_LH_C_0_4_5, _lh_strEq_LH_C_1_4_5) -> 
      (let rec _lh_matchIdent_2_6_1 = _lh_strEq_arg2_1_5 in
        (match _lh_matchIdent_2_6_1 with
          | `LH_C(_lh_strEq_LH_C_0_4_6, _lh_strEq_LH_C_1_4_6) -> 
            (if (_lh_strEq_LH_C_0_4_5 = _lh_strEq_LH_C_0_4_6) then
              ((strEq__d0 _lh_strEq_LH_C_1_4_5) _lh_strEq_LH_C_1_4_6)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_6_2 = _lh_strEq_arg2_1_5 in
        (match _lh_matchIdent_2_6_2 with
          | `LH_C(_lh_strEq_LH_C_0_4_7, _lh_strEq_LH_C_1_4_7) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1 _lh_strEq_arg1_5 _lh_strEq_arg2_5 =
  (match _lh_strEq_arg1_5 with
    | `LH_C(_lh_strEq_LH_C_0_1_5, _lh_strEq_LH_C_1_1_5) -> 
      (let rec _lh_matchIdent_2_2_4 = _lh_strEq_arg2_5 in
        (match _lh_matchIdent_2_2_4 with
          | `LH_C(_lh_strEq_LH_C_0_1_6, _lh_strEq_LH_C_1_1_6) -> 
            (if (_lh_strEq_LH_C_0_1_5 = _lh_strEq_LH_C_0_1_6) then
              ((strEq__d1 _lh_strEq_LH_C_1_1_5) _lh_strEq_LH_C_1_1_6)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_2_5 = _lh_strEq_arg2_5 in
        (match _lh_matchIdent_2_2_5 with
          | `LH_C(_lh_strEq_LH_C_0_1_7, _lh_strEq_LH_C_1_1_7) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d0 _lh_strEq_arg1_1_0 _lh_strEq_arg2_1_0 =
  (match _lh_strEq_arg1_1_0 with
    | `LH_C(_lh_strEq_LH_C_0_3_0, _lh_strEq_LH_C_1_3_0) -> 
      (let rec _lh_matchIdent_2_4_6 = _lh_strEq_arg2_1_0 in
        (match _lh_matchIdent_2_4_6 with
          | `LH_C(_lh_strEq_LH_C_0_3_1, _lh_strEq_LH_C_1_3_1) -> 
            (if (_lh_strEq_LH_C_0_3_0 = _lh_strEq_LH_C_0_3_1) then
              ((strEq__d1_d0 _lh_strEq_LH_C_1_3_0) _lh_strEq_LH_C_1_3_1)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_4_7 = _lh_strEq_arg2_1_0 in
        (match _lh_matchIdent_2_4_7 with
          | `LH_C(_lh_strEq_LH_C_0_3_2, _lh_strEq_LH_C_1_3_2) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d1 _lh_strEq_arg1_6 _lh_strEq_arg2_6 =
  (match _lh_strEq_arg1_6 with
    | `LH_C(_lh_strEq_LH_C_0_1_8, _lh_strEq_LH_C_1_1_8) -> 
      (let rec _lh_matchIdent_2_2_7 = _lh_strEq_arg2_6 in
        (match _lh_matchIdent_2_2_7 with
          | `LH_C(_lh_strEq_LH_C_0_1_9, _lh_strEq_LH_C_1_1_9) -> 
            (if (_lh_strEq_LH_C_0_1_8 = _lh_strEq_LH_C_0_1_9) then
              ((strEq__d1_d1 _lh_strEq_LH_C_1_1_8) _lh_strEq_LH_C_1_1_9)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_2_8 = _lh_strEq_arg2_6 in
        (match _lh_matchIdent_2_2_8 with
          | `LH_C(_lh_strEq_LH_C_0_2_0, _lh_strEq_LH_C_1_2_0) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d2 _lh_strEq_arg1_8 _lh_strEq_arg2_8 =
  (match _lh_strEq_arg1_8 with
    | `LH_C(_lh_strEq_LH_C_0_2_4, _lh_strEq_LH_C_1_2_4) -> 
      (let rec _lh_matchIdent_2_3_1 = _lh_strEq_arg2_8 in
        (match _lh_matchIdent_2_3_1 with
          | `LH_C(_lh_strEq_LH_C_0_2_5, _lh_strEq_LH_C_1_2_5) -> 
            (if (_lh_strEq_LH_C_0_2_4 = _lh_strEq_LH_C_0_2_5) then
              ((strEq__d1_d2 _lh_strEq_LH_C_1_2_4) _lh_strEq_LH_C_1_2_5)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_3_2 = _lh_strEq_arg2_8 in
        (match _lh_matchIdent_2_3_2 with
          | `LH_C(_lh_strEq_LH_C_0_2_6, _lh_strEq_LH_C_1_2_6) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d3 _lh_strEq_arg1_1_6 _lh_strEq_arg2_1_6 =
  (match _lh_strEq_arg1_1_6 with
    | `LH_C(_lh_strEq_LH_C_0_4_8, _lh_strEq_LH_C_1_4_8) -> 
      (let rec _lh_matchIdent_2_6_5 = _lh_strEq_arg2_1_6 in
        (match _lh_matchIdent_2_6_5 with
          | `LH_C(_lh_strEq_LH_C_0_4_9, _lh_strEq_LH_C_1_4_9) -> 
            (if (_lh_strEq_LH_C_0_4_8 = _lh_strEq_LH_C_0_4_9) then
              ((strEq__d1_d3 _lh_strEq_LH_C_1_4_8) _lh_strEq_LH_C_1_4_9)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_6_6 = _lh_strEq_arg2_1_6 in
        (match _lh_matchIdent_2_6_6 with
          | `LH_C(_lh_strEq_LH_C_0_5_0, _lh_strEq_LH_C_1_5_0) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d4 _lh_strEq_arg1_7 _lh_strEq_arg2_7 =
  (match _lh_strEq_arg1_7 with
    | `LH_C(_lh_strEq_LH_C_0_2_1, _lh_strEq_LH_C_1_2_1) -> 
      (let rec _lh_matchIdent_2_2_9 = _lh_strEq_arg2_7 in
        (match _lh_matchIdent_2_2_9 with
          | `LH_C(_lh_strEq_LH_C_0_2_2, _lh_strEq_LH_C_1_2_2) -> 
            (if (_lh_strEq_LH_C_0_2_1 = _lh_strEq_LH_C_0_2_2) then
              ((strEq__d1_d4 _lh_strEq_LH_C_1_2_1) _lh_strEq_LH_C_1_2_2)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_3_0 = _lh_strEq_arg2_7 in
        (match _lh_matchIdent_2_3_0 with
          | `LH_C(_lh_strEq_LH_C_0_2_3, _lh_strEq_LH_C_1_2_3) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d5 _lh_strEq_arg1_1_2 _lh_strEq_arg2_1_2 =
  (match _lh_strEq_arg1_1_2 with
    | `LH_C(_lh_strEq_LH_C_0_3_6, _lh_strEq_LH_C_1_3_6) -> 
      (let rec _lh_matchIdent_2_5_1 = _lh_strEq_arg2_1_2 in
        (match _lh_matchIdent_2_5_1 with
          | `LH_C(_lh_strEq_LH_C_0_3_7, _lh_strEq_LH_C_1_3_7) -> 
            (if (_lh_strEq_LH_C_0_3_6 = _lh_strEq_LH_C_0_3_7) then
              ((strEq__d1_d5 _lh_strEq_LH_C_1_3_6) _lh_strEq_LH_C_1_3_7)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_5_2 = _lh_strEq_arg2_1_2 in
        (match _lh_matchIdent_2_5_2 with
          | `LH_C(_lh_strEq_LH_C_0_3_8, _lh_strEq_LH_C_1_3_8) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d2 _lh_strEq_arg1_1 _lh_strEq_arg2_1 =
  (match _lh_strEq_arg1_1 with
    | `LH_C(_lh_strEq_LH_C_0_3, _lh_strEq_LH_C_1_3) -> 
      (let rec _lh_matchIdent_1_1_0 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_1_1_0 with
          | `LH_C(_lh_strEq_LH_C_0_4, _lh_strEq_LH_C_1_4) -> 
            (if (_lh_strEq_LH_C_0_3 = _lh_strEq_LH_C_0_4) then
              ((strEq__d2 _lh_strEq_LH_C_1_3) _lh_strEq_LH_C_1_4)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_1_1 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_1_1_1 with
          | `LH_C(_lh_strEq_LH_C_0_5, _lh_strEq_LH_C_1_5) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d3 _lh_strEq_arg1_1_4 _lh_strEq_arg2_1_4 =
  (match _lh_strEq_arg1_1_4 with
    | `LH_C(_lh_strEq_LH_C_0_4_2, _lh_strEq_LH_C_1_4_2) -> 
      (let rec _lh_matchIdent_2_5_9 = _lh_strEq_arg2_1_4 in
        (match _lh_matchIdent_2_5_9 with
          | `LH_C(_lh_strEq_LH_C_0_4_3, _lh_strEq_LH_C_1_4_3) -> 
            (if (_lh_strEq_LH_C_0_4_2 = _lh_strEq_LH_C_0_4_3) then
              ((strEq__d3 _lh_strEq_LH_C_1_4_2) _lh_strEq_LH_C_1_4_3)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_6_0 = _lh_strEq_arg2_1_4 in
        (match _lh_matchIdent_2_6_0 with
          | `LH_C(_lh_strEq_LH_C_0_4_4, _lh_strEq_LH_C_1_4_4) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d4 _lh_strEq_arg1_1_1 _lh_strEq_arg2_1_1 =
  (match _lh_strEq_arg1_1_1 with
    | `LH_C(_lh_strEq_LH_C_0_3_3, _lh_strEq_LH_C_1_3_3) -> 
      (let rec _lh_matchIdent_2_4_8 = _lh_strEq_arg2_1_1 in
        (match _lh_matchIdent_2_4_8 with
          | `LH_C(_lh_strEq_LH_C_0_3_4, _lh_strEq_LH_C_1_3_4) -> 
            (if (_lh_strEq_LH_C_0_3_3 = _lh_strEq_LH_C_0_3_4) then
              ((strEq__d4 _lh_strEq_LH_C_1_3_3) _lh_strEq_LH_C_1_3_4)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_4_9 = _lh_strEq_arg2_1_1 in
        (match _lh_matchIdent_2_4_9 with
          | `LH_C(_lh_strEq_LH_C_0_3_5, _lh_strEq_LH_C_1_3_5) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d5 _lh_strEq_arg1_9 _lh_strEq_arg2_9 =
  (match _lh_strEq_arg1_9 with
    | `LH_C(_lh_strEq_LH_C_0_2_7, _lh_strEq_LH_C_1_2_7) -> 
      (let rec _lh_matchIdent_2_4_0 = _lh_strEq_arg2_9 in
        (match _lh_matchIdent_2_4_0 with
          | `LH_C(_lh_strEq_LH_C_0_2_8, _lh_strEq_LH_C_1_2_8) -> 
            (if (_lh_strEq_LH_C_0_2_7 = _lh_strEq_LH_C_0_2_8) then
              ((strEq__d5 _lh_strEq_LH_C_1_2_7) _lh_strEq_LH_C_1_2_8)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_4_1 = _lh_strEq_arg2_9 in
        (match _lh_matchIdent_2_4_1 with
          | `LH_C(_lh_strEq_LH_C_0_2_9, _lh_strEq_LH_C_1_2_9) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d6 _lh_strEq_arg1_3 _lh_strEq_arg2_3 =
  (match _lh_strEq_arg1_3 with
    | `LH_C(_lh_strEq_LH_C_0_9, _lh_strEq_LH_C_1_9) -> 
      (let rec _lh_matchIdent_1_1_5 = _lh_strEq_arg2_3 in
        (match _lh_matchIdent_1_1_5 with
          | `LH_C(_lh_strEq_LH_C_0_1_0, _lh_strEq_LH_C_1_1_0) -> 
            (if (_lh_strEq_LH_C_0_9 = _lh_strEq_LH_C_0_1_0) then
              ((strEq__d6 _lh_strEq_LH_C_1_9) _lh_strEq_LH_C_1_1_0)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_1_6 = _lh_strEq_arg2_3 in
        (match _lh_matchIdent_1_1_6 with
          | `LH_C(_lh_strEq_LH_C_0_1_1, _lh_strEq_LH_C_1_1_1) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d7 _lh_strEq_arg1_2 _lh_strEq_arg2_2 =
  (match _lh_strEq_arg1_2 with
    | `LH_C(_lh_strEq_LH_C_0_6, _lh_strEq_LH_C_1_6) -> 
      (let rec _lh_matchIdent_1_1_2 = _lh_strEq_arg2_2 in
        (match _lh_matchIdent_1_1_2 with
          | `LH_C(_lh_strEq_LH_C_0_7, _lh_strEq_LH_C_1_7) -> 
            (if (_lh_strEq_LH_C_0_6 = _lh_strEq_LH_C_0_7) then
              ((strEq__d7 _lh_strEq_LH_C_1_6) _lh_strEq_LH_C_1_7)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_1_3 = _lh_strEq_arg2_2 in
        (match _lh_matchIdent_1_1_3 with
          | `LH_C(_lh_strEq_LH_C_0_8, _lh_strEq_LH_C_1_8) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d8 _lh_strEq_arg1_1_3 _lh_strEq_arg2_1_3 =
  (match _lh_strEq_arg1_1_3 with
    | `LH_C(_lh_strEq_LH_C_0_3_9, _lh_strEq_LH_C_1_3_9) -> 
      (let rec _lh_matchIdent_2_5_6 = _lh_strEq_arg2_1_3 in
        (match _lh_matchIdent_2_5_6 with
          | `LH_C(_lh_strEq_LH_C_0_4_0, _lh_strEq_LH_C_1_4_0) -> 
            (if (_lh_strEq_LH_C_0_3_9 = _lh_strEq_LH_C_0_4_0) then
              ((strEq__d8 _lh_strEq_LH_C_1_3_9) _lh_strEq_LH_C_1_4_0)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_5_7 = _lh_strEq_arg2_1_3 in
        (match _lh_matchIdent_2_5_7 with
          | `LH_C(_lh_strEq_LH_C_0_4_1, _lh_strEq_LH_C_1_4_1) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d9 _lh_strEq_arg1_4 _lh_strEq_arg2_4 =
  (match _lh_strEq_arg1_4 with
    | `LH_C(_lh_strEq_LH_C_0_1_2, _lh_strEq_LH_C_1_1_2) -> 
      (let rec _lh_matchIdent_2_2_0 = _lh_strEq_arg2_4 in
        (match _lh_matchIdent_2_2_0 with
          | `LH_C(_lh_strEq_LH_C_0_1_3, _lh_strEq_LH_C_1_1_3) -> 
            (if (_lh_strEq_LH_C_0_1_2 = _lh_strEq_LH_C_0_1_3) then
              ((strEq__d9 _lh_strEq_LH_C_1_1_2) _lh_strEq_LH_C_1_1_3)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_2_1 = _lh_strEq_arg2_4 in
        (match _lh_matchIdent_2_2_1 with
          | `LH_C(_lh_strEq_LH_C_0_1_4, _lh_strEq_LH_C_1_1_4) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec succeeds__d0 _lh_succeeds_arg1_8 =
  (match _lh_succeeds_arg1_8 with
    | `Answer(_lh_succeeds_Answer_0_8) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d1 _lh_succeeds_arg1_3 =
  (match _lh_succeeds_arg1_3 with
    | `Answer(_lh_succeeds_Answer_0_3) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d2 _lh_succeeds_arg1_5 =
  (match _lh_succeeds_arg1_5 with
    | `Answer(_lh_succeeds_Answer_0_5) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d3 _lh_succeeds_arg1_7 =
  (match _lh_succeeds_arg1_7 with
    | `Answer(_lh_succeeds_Answer_0_7) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d4 _lh_succeeds_arg1_2 =
  (match _lh_succeeds_arg1_2 with
    | `Answer(_lh_succeeds_Answer_0_2) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d5 _lh_succeeds_arg1_6 =
  (match _lh_succeeds_arg1_6 with
    | `Answer(_lh_succeeds_Answer_0_6) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d6 _lh_succeeds_arg1_1 =
  (match _lh_succeeds_arg1_1 with
    | `Answer(_lh_succeeds_Answer_0_1) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d7 _lh_succeeds_arg1_4 =
  (match _lh_succeeds_arg1_4 with
    | `Answer(_lh_succeeds_Answer_0_4) -> 
      true
    | _ -> 
      false);;
let rec success__d0 _lh_success_arg1_1 =
  (`Answer(_lh_success_arg1_1));;
let rec success__d1 _lh_success_arg1_6 =
  (`Answer(_lh_success_arg1_6));;
let rec success__d1_d0 _lh_success_arg1_9 =
  (`Answer(_lh_success_arg1_9));;
let rec success__d2 _lh_success_arg1_4 =
  (`Answer(_lh_success_arg1_4));;
let rec success__d3 _lh_success_arg1_7 =
  (`Answer(_lh_success_arg1_7));;
let rec success__d4 _lh_success_arg1_5 =
  (`Answer(_lh_success_arg1_5));;
let rec success__d5 _lh_success_arg1_3 =
  (`Answer(_lh_success_arg1_3));;
let rec success__d6 _lh_success_arg1_1_0 =
  (`Answer(_lh_success_arg1_1_0));;
let rec success__d7 _lh_success_arg1_2 =
  (`Answer(_lh_success_arg1_2));;
let rec success__d8 _lh_success_arg1_8 =
  (`Answer(_lh_success_arg1_8));;
let rec success__d9 _lh_success_arg1_1_1 =
  (`Answer(_lh_success_arg1_1_1));;
let rec tail__d0 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_4_4, t_4_6) -> 
      t_4_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_4_1, t_4_3) -> 
      t_4_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1_d0 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_5_8, t_6_0) -> 
      t_6_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_7, t_2_9) -> 
      t_2_9
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_6_5, t_6_7) -> 
      t_6_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d4 ls_5_0 =
  (match ls_5_0 with
    | `LH_C(h_8_9, t_9_1) -> 
      t_9_1
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d5 ls_6_0 =
  (match ls_6_0 with
    | `LH_C(h_1_0_9, t_1_1_1) -> 
      t_1_1_1
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d6 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_1_0_3, t_1_0_5) -> 
      t_1_0_5
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d7 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_4_7, t_4_9) -> 
      t_4_9
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d8 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_4_8, t_5_0) -> 
      t_5_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d9 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_5, t_3_7) -> 
      t_3_7
    | `LH_N -> 
      (failwith "error"));;
let rec takeWhile__d0 _lh_takeWhile_arg1_3 _lh_takeWhile_arg2_3 =
  (match _lh_takeWhile_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_3, _lh_takeWhile_LH_C_1_3) -> 
      (if (_lh_takeWhile_arg1_3 _lh_takeWhile_LH_C_0_3) then
        (`LH_C(_lh_takeWhile_LH_C_0_3, ((takeWhile__d0 _lh_takeWhile_arg1_3) _lh_takeWhile_LH_C_1_3)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d1 _lh_takeWhile_arg1_7 _lh_takeWhile_arg2_7 =
  (match _lh_takeWhile_arg2_7 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_7, _lh_takeWhile_LH_C_1_7) -> 
      (if (_lh_takeWhile_arg1_7 _lh_takeWhile_LH_C_0_7) then
        (`LH_C(_lh_takeWhile_LH_C_0_7, ((takeWhile__d1 _lh_takeWhile_arg1_7) _lh_takeWhile_LH_C_1_7)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d2 _lh_takeWhile_arg1_5 _lh_takeWhile_arg2_5 =
  (match _lh_takeWhile_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_5, _lh_takeWhile_LH_C_1_5) -> 
      (if (_lh_takeWhile_arg1_5 _lh_takeWhile_LH_C_0_5) then
        (`LH_C(_lh_takeWhile_LH_C_0_5, ((takeWhile__d2 _lh_takeWhile_arg1_5) _lh_takeWhile_LH_C_1_5)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d3 _lh_takeWhile_arg1_6 _lh_takeWhile_arg2_6 =
  (match _lh_takeWhile_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_6, _lh_takeWhile_LH_C_1_6) -> 
      (if (_lh_takeWhile_arg1_6 _lh_takeWhile_LH_C_0_6) then
        (`LH_C(_lh_takeWhile_LH_C_0_6, ((takeWhile__d3 _lh_takeWhile_arg1_6) _lh_takeWhile_LH_C_1_6)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d4 _lh_takeWhile_arg1_4 _lh_takeWhile_arg2_4 =
  (match _lh_takeWhile_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_4, _lh_takeWhile_LH_C_1_4) -> 
      (if (_lh_takeWhile_arg1_4 _lh_takeWhile_LH_C_0_4) then
        (`LH_C(_lh_takeWhile_LH_C_0_4, ((takeWhile__d4 _lh_takeWhile_arg1_4) _lh_takeWhile_LH_C_1_4)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d5 _lh_takeWhile_arg1_8 _lh_takeWhile_arg2_8 =
  (match _lh_takeWhile_arg2_8 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_8, _lh_takeWhile_LH_C_1_8) -> 
      (if (_lh_takeWhile_arg1_8 _lh_takeWhile_LH_C_0_8) then
        (`LH_C(_lh_takeWhile_LH_C_0_8, ((takeWhile__d5 _lh_takeWhile_arg1_8) _lh_takeWhile_LH_C_1_8)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d6 _lh_takeWhile_arg1_2 _lh_takeWhile_arg2_2 =
  (match _lh_takeWhile_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_2, _lh_takeWhile_LH_C_1_2) -> 
      (if (_lh_takeWhile_arg1_2 _lh_takeWhile_LH_C_0_2) then
        (`LH_C(_lh_takeWhile_LH_C_0_2, ((takeWhile__d6 _lh_takeWhile_arg1_2) _lh_takeWhile_LH_C_1_2)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d7 _lh_takeWhile_arg1_1 _lh_takeWhile_arg2_1 =
  (match _lh_takeWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_1, _lh_takeWhile_LH_C_1_1) -> 
      (if (_lh_takeWhile_arg1_1 _lh_takeWhile_LH_C_0_1) then
        (`LH_C(_lh_takeWhile_LH_C_0_1, ((takeWhile__d7 _lh_takeWhile_arg1_1) _lh_takeWhile_LH_C_1_1)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec take__d0 n_1_1 ls_6_2 =
  (if (n_1_1 > 0) then
    (match ls_6_2 with
      | `LH_C(h_1_1_3, t_1_1_5) -> 
        (`LH_C(h_1_1_3, ((take__d0 (n_1_1 - 1)) t_1_1_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_7 ls_4_3 =
  (if (n_7 > 0) then
    (match ls_4_3 with
      | `LH_C(h_7_6, t_7_8) -> 
        (`LH_C(h_7_6, ((take__d1 (n_7 - 1)) t_7_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2 n_9 ls_4_9 =
  (if (n_9 > 0) then
    (match ls_4_9 with
      | `LH_C(h_8_8, t_9_0) -> 
        (`LH_C(h_8_8, ((take__d2 (n_9 - 1)) t_9_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d3 n_5 ls_2_9 =
  (if (n_5 > 0) then
    (match ls_2_9 with
      | `LH_C(h_4_2, t_4_4) -> 
        (`LH_C(h_4_2, ((take__d3 (n_5 - 1)) t_4_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec update__d0 _lh_update_arg1_1 _lh_update_arg2_1 _lh_update_arg3_1 =
  (match _lh_update_arg1_1 with
    | `Empty -> 
      (`Fork((`Empty), (`LH_P2(_lh_update_arg2_1, _lh_update_arg3_1)), (`Empty)))
    | `Fork(_lh_update_Fork_0_1, _lh_update_Fork_1_1, _lh_update_Fork_2_1) -> 
      (match _lh_update_Fork_1_1 with
        | `LH_P2(_lh_update_LH_P2_0_1, _lh_update_LH_P2_1_1) -> 
          (if (_lh_update_arg2_1 < _lh_update_LH_P2_0_1) then
            (`Fork((((update__d0 _lh_update_Fork_0_1) _lh_update_arg2_1) _lh_update_arg3_1), (`LH_P2(_lh_update_LH_P2_0_1, _lh_update_LH_P2_1_1)), _lh_update_Fork_2_1))
          else
            (if (_lh_update_arg2_1 = _lh_update_LH_P2_0_1) then
              (`Fork(_lh_update_Fork_0_1, (`LH_P2(_lh_update_arg2_1, _lh_update_arg3_1)), _lh_update_Fork_2_1))
            else
              (if (_lh_update_arg2_1 > _lh_update_LH_P2_0_1) then
                (`Fork(_lh_update_Fork_0_1, (`LH_P2(_lh_update_LH_P2_0_1, _lh_update_LH_P2_1_1)), (((update__d0 _lh_update_Fork_2_1) _lh_update_arg2_1) _lh_update_arg3_1)))
              else
                ((failwith "error") (`LH_C('u', (`LH_C('p', (`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec update__d1 _lh_update_arg1_2 _lh_update_arg2_2 _lh_update_arg3_2 =
  (match _lh_update_arg1_2 with
    | `Empty -> 
      (`Fork((`Empty), (`LH_P2(_lh_update_arg2_2, _lh_update_arg3_2)), (`Empty)))
    | `Fork(_lh_update_Fork_0_2, _lh_update_Fork_1_2, _lh_update_Fork_2_2) -> 
      (match _lh_update_Fork_1_2 with
        | `LH_P2(_lh_update_LH_P2_0_2, _lh_update_LH_P2_1_2) -> 
          (if (_lh_update_arg2_2 < _lh_update_LH_P2_0_2) then
            (`Fork((((update__d1 _lh_update_Fork_0_2) _lh_update_arg2_2) _lh_update_arg3_2), (`LH_P2(_lh_update_LH_P2_0_2, _lh_update_LH_P2_1_2)), _lh_update_Fork_2_2))
          else
            (if (_lh_update_arg2_2 = _lh_update_LH_P2_0_2) then
              (`Fork(_lh_update_Fork_0_2, (`LH_P2(_lh_update_arg2_2, _lh_update_arg3_2)), _lh_update_Fork_2_2))
            else
              (if (_lh_update_arg2_2 > _lh_update_LH_P2_0_2) then
                (`Fork(_lh_update_Fork_0_2, (`LH_P2(_lh_update_LH_P2_0_2, _lh_update_LH_P2_1_2)), (((update__d1 _lh_update_Fork_2_2) _lh_update_arg2_2) _lh_update_arg3_2)))
              else
                ((failwith "error") (`LH_C('u', (`LH_C('p', (`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec zip__d0 xs_4_4 ys_4_3 =
  (match xs_4_4 with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match ys_4_3 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C((`LH_P2(hx_1_0, hy_1_0)), ((zip__d0 tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip__d1 xs_3_3 ys_3_2 =
  (match xs_3_3 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_3_2 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C((`LH_P2(hx_9, hy_9)), ((zip__d1 tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip__d2 xs_2_2 ys_2_1 =
  (match xs_2_2 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_2_1 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C((`LH_P2(hx_8, hy_8)), ((zip__d2 tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec ask__d0 _lh_ask_arg1_1 _lh_ask_arg2_1 _lh_ask_arg3_1 =
  (match _lh_ask_arg2_1 with
    | `Soln(_lh_ask_Soln_0_1, _lh_ask_Soln_1_1) -> 
      (let rec sp_1 = (showPhrase__d2 ((subst__d1 _lh_ask_Soln_0_1) _lh_ask_arg3_1)) in
        (let rec ans_1 = (answer__d1 ((find__d1 _lh_ask_arg1_1) sp_1)) in
          (`LH_C((`Question(sp_1)), (if ans_1 then
            (`LH_C((`Soln(_lh_ask_Soln_0_1, _lh_ask_Soln_1_1)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"))
and compear__d0 _lh_compear_arg1_1 _lh_compear_arg2_1 _lh_compear_arg3_1 =
  (match _lh_compear_arg2_1 with
    | `Term(_lh_compear_Term_0_2, _lh_compear_Term_1_2) -> 
      (match _lh_compear_arg3_1 with
        | `Term(_lh_compear_Term_0_3, _lh_compear_Term_1_3) -> 
          (if (_lh_compear_Term_0_2 = _lh_compear_Term_0_3) then
            ((matchList__d0 _lh_compear_arg1_1) ((zip__d1 _lh_compear_Term_1_2) _lh_compear_Term_1_3))
          else
            (failure__d4 (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))
        | _ -> 
          (match _lh_compear_arg3_1 with
            | `Var(_lh_compear_Var_0_4) -> 
              (((compear__d0 _lh_compear_arg1_1) (`Var(_lh_compear_Var_0_4))) _lh_compear_arg2_1)
            | _ -> 
              (failwith "error")))
    | `Var(_lh_compear_Var_0_5) -> 
      (match _lh_compear_arg3_1 with
        | `Var(_lh_compear_Var_0_6) -> 
          (if (_lh_compear_Var_0_5 <> _lh_compear_Var_0_6) then
            (success__d6 (((update__d1 _lh_compear_arg1_1) _lh_compear_Var_0_5) (`Var(_lh_compear_Var_0_6))))
          else
            (success__d7 _lh_compear_arg1_1))
        | _ -> 
          (if (not ((occurs__d0 (`Var(_lh_compear_Var_0_5))) _lh_compear_arg3_1)) then
            (success__d5 (((update__d0 _lh_compear_arg1_1) _lh_compear_Var_0_5) _lh_compear_arg3_1))
          else
            (failure__d5 (`LH_C('o', (`LH_C('c', (`LH_C('c', (`LH_C('u', (`LH_C('r', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C(' ', (`LH_C('f', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C('d', (`LH_N))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (match _lh_compear_arg3_1 with
        | `Var(_lh_compear_Var_0_7) -> 
          (((compear__d0 _lh_compear_arg1_1) (`Var(_lh_compear_Var_0_7))) _lh_compear_arg2_1)
        | _ -> 
          (failwith "error")))
and concat__d0 lss_3 =
  (match lss_3 with
    | `LH_C(h_5_5, t_5_7) -> 
      ((mappend__d3_d9 h_5_5) (concat__d0 t_5_7))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_3_6, t_3_8) -> 
      ((mappend__d4_d0 h_3_6) (concat__d1 t_3_8))
    | `LH_N -> 
      (`LH_N))
and concat__d2 lss_1 =
  (match lss_1 with
    | `LH_C(h_3_1, t_3_3) -> 
      ((mappend__d4_d3 h_3_1) (concat__d2 t_3_3))
    | `LH_N -> 
      (`LH_N))
and concat__d3 lss_4 =
  (match lss_4 with
    | `LH_C(h_9_8, t_1_0_0) -> 
      ((mappend__d4_d5 h_9_8) (concat__d3 t_1_0_0))
    | `LH_N -> 
      (`LH_N))
and definitions__d0 _lh_definitions_arg1_1 =
  (let rec verb_3 = (fun x_1_1 -> 
    (let rec _lh_matchIdent_1_1_7 = x_1_1 in
      (match _lh_matchIdent_1_1_7 with
        | `Term(_lh_definitions_Term_0_2, _lh_definitions_Term_1_2) -> 
          (match _lh_definitions_Term_0_2 with
            | `LH_C(_lh_definitions_LH_C_0_4, _lh_definitions_LH_C_1_4) -> 
              (match _lh_definitions_LH_C_0_4 with
                | 'i' -> 
                  (match _lh_definitions_LH_C_1_4 with
                    | `LH_C(_lh_definitions_LH_C_0_5, _lh_definitions_LH_C_1_5) -> 
                      (match _lh_definitions_LH_C_0_5 with
                        | 'f' -> 
                          (match _lh_definitions_LH_C_1_5 with
                            | `LH_N -> 
                              (match _lh_definitions_Term_1_2 with
                                | `LH_C(_lh_definitions_LH_C_0_6, _lh_definitions_LH_C_1_6) -> 
                                  (match _lh_definitions_LH_C_0_6 with
                                    | `Term(_lh_definitions_Term_0_3, _lh_definitions_Term_1_3) -> 
                                      (match _lh_definitions_LH_C_1_6 with
                                        | `LH_C(_lh_definitions_LH_C_0_7, _lh_definitions_LH_C_1_7) -> 
                                          (match _lh_definitions_LH_C_1_7 with
                                            | `LH_N -> 
                                              _lh_definitions_Term_0_3
                                            | _ -> 
                                              (failwith "error"))
                                        | _ -> 
                                          (failwith "error"))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    (let rec rs_1_0_0 = (let rec _lh_listcomp_fun_3_2 = (fun _lh_listcomp_fun_para_3_2 -> 
      (match _lh_listcomp_fun_para_3_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_3_2, _lh_listcomp_fun_ls_t_3_2) -> 
          (`LH_C((rule__d0 (words__d0 _lh_listcomp_fun_ls_h_3_2)), (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_3_2)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_3_2 _lh_definitions_arg1_1)) in
      (let rec verbs_3 = (nub__d0 (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_3_3 -> 
        (match _lh_listcomp_fun_para_3_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_3, _lh_listcomp_fun_ls_t_3_3) -> 
            (`LH_C((verb_3 _lh_listcomp_fun_ls_h_3_3), (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_3_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3_3 rs_1_0_0))) in
        (let rec def_1 = (fun v_2 -> 
          (let rec _lh_listcomp_fun_3_4 = (fun _lh_listcomp_fun_para_3_4 -> 
            (match _lh_listcomp_fun_para_3_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_3_4, _lh_listcomp_fun_ls_t_3_4) -> 
                (if ((verb_3 _lh_listcomp_fun_ls_h_3_4) = v_2) then
                  (`LH_C(_lh_listcomp_fun_ls_h_3_4, (_lh_listcomp_fun_3_4 _lh_listcomp_fun_ls_t_3_4)))
                else
                  (_lh_listcomp_fun_3_4 _lh_listcomp_fun_ls_t_3_4))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_3_4 rs_1_0_0))) in
          ((updateList__d0 newTable__d0) (let rec _lh_listcomp_fun_3_5 = (fun _lh_listcomp_fun_para_3_5 -> 
            (match _lh_listcomp_fun_para_3_5 with
              | `LH_C(_lh_listcomp_fun_ls_h_3_5, _lh_listcomp_fun_ls_t_3_5) -> 
                (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_3_5, (def_1 _lh_listcomp_fun_ls_h_3_5))), (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_3_5)))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_3_5 verbs_3)))))))
and display__d0 _lh_display_arg1_1 _lh_display_arg2_1 _lh_display_arg3_1 =
  (match _lh_display_arg1_1 with
    | `LH_N -> 
      (`LH_C('N', (`LH_C('o', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_display_LH_C_0_1, _lh_display_LH_C_1_1) -> 
      (match _lh_display_LH_C_0_1 with
        | `Question(_lh_display_Question_0_1) -> 
          ((mappend__d1_d0 ((mappend__d1_d1 ((mappend__d1_d2 (`LH_C('I', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))) _lh_display_Question_0_1)) (`LH_C('?', (`LH_C('|', (`LH_N))))))) (((display__d0 _lh_display_LH_C_1_1) _lh_display_arg2_1) (tail__d5 _lh_display_arg3_1)))
        | `Soln(_lh_display_Soln_0_1, _lh_display_Soln_1_1) -> 
          (let rec sol_1 = ((showVars__d0 _lh_display_Soln_0_1) _lh_display_arg2_1) in
            (let rec etc_1 = (if ((_lh_display_arg3_1 = (`LH_N)) || ((head__d1_d0 _lh_display_arg3_1) = false)) then
              (`LH_N)
            else
              (((display__d0 _lh_display_LH_C_1_1) _lh_display_arg2_1) (tail__d6 _lh_display_arg3_1))) in
              ((mappend__d1_d3 ((mappend__d1_d4 ((mappend__d1_d5 (`LH_C('S', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))) sol_1)) (`LH_C('.', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C('?', (`LH_C('|', (`LH_N))))))))))))))))))) etc_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and enterList__d0 _lh_enterList_arg1_1 _lh_enterList_arg2_1 =
  (match _lh_enterList_arg2_1 with
    | `LH_N -> 
      _lh_enterList_arg1_1
    | _ -> 
      (match _lh_enterList_arg1_1 with
        | `Empty -> 
          (match _lh_enterList_arg2_1 with
            | `LH_C(_lh_enterList_LH_C_0_1, _lh_enterList_LH_C_1_1) -> 
              (let rec k_3 = (fst__d3 _lh_enterList_LH_C_0_1) in
                (let rec left_3 = ((enterList__d0 (`Empty)) (let rec _lh_listcomp_fun_5_5 = (fun _lh_listcomp_fun_para_5_5 -> 
                  (match _lh_listcomp_fun_para_5_5 with
                    | `LH_C(_lh_listcomp_fun_ls_h_5_5, _lh_listcomp_fun_ls_t_5_5) -> 
                      (if ((fst__d4 _lh_listcomp_fun_ls_h_5_5) < k_3) then
                        (`LH_C(_lh_listcomp_fun_ls_h_5_5, (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_5_5)))
                      else
                        (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_5_5))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_5_5 _lh_enterList_LH_C_1_1))) in
                  (let rec right_3 = ((enterList__d0 (`Empty)) (let rec _lh_listcomp_fun_5_6 = (fun _lh_listcomp_fun_para_5_6 -> 
                    (match _lh_listcomp_fun_para_5_6 with
                      | `LH_C(_lh_listcomp_fun_ls_h_5_6, _lh_listcomp_fun_ls_t_5_6) -> 
                        (if ((fst__d5 _lh_listcomp_fun_ls_h_5_6) > k_3) then
                          (`LH_C(_lh_listcomp_fun_ls_h_5_6, (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_5_6)))
                        else
                          (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_5_6))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_5_6 _lh_enterList_LH_C_1_1))) in
                    (`Fork(left_3, _lh_enterList_LH_C_0_1, right_3)))))
            | _ -> 
              (match _lh_enterList_arg1_1 with
                | `Fork(_lh_enterList_Fork_0_2, _lh_enterList_Fork_1_2, _lh_enterList_Fork_2_2) -> 
                  (let rec k_4 = (fst__d0 _lh_enterList_Fork_1_2) in
                    (let rec left'_2 = ((enterList__d0 _lh_enterList_Fork_0_2) (let rec _lh_listcomp_fun_5_7 = (fun _lh_listcomp_fun_para_5_7 -> 
                      (match _lh_listcomp_fun_para_5_7 with
                        | `LH_C(_lh_listcomp_fun_ls_h_5_7, _lh_listcomp_fun_ls_t_5_7) -> 
                          (if ((fst__d1 _lh_listcomp_fun_ls_h_5_7) < k_4) then
                            (`LH_C(_lh_listcomp_fun_ls_h_5_7, (_lh_listcomp_fun_5_7 _lh_listcomp_fun_ls_t_5_7)))
                          else
                            (_lh_listcomp_fun_5_7 _lh_listcomp_fun_ls_t_5_7))
                        | `LH_N -> 
                          (`LH_N))) in
                      (_lh_listcomp_fun_5_7 _lh_enterList_arg2_1))) in
                      (let rec right'_2 = ((enterList__d0 _lh_enterList_Fork_2_2) (let rec _lh_listcomp_fun_5_8 = (fun _lh_listcomp_fun_para_5_8 -> 
                        (match _lh_listcomp_fun_para_5_8 with
                          | `LH_C(_lh_listcomp_fun_ls_h_5_8, _lh_listcomp_fun_ls_t_5_8) -> 
                            (if ((fst__d2 _lh_listcomp_fun_ls_h_5_8) > k_4) then
                              (`LH_C(_lh_listcomp_fun_ls_h_5_8, (_lh_listcomp_fun_5_8 _lh_listcomp_fun_ls_t_5_8)))
                            else
                              (_lh_listcomp_fun_5_8 _lh_listcomp_fun_ls_t_5_8))
                          | `LH_N -> 
                            (`LH_N))) in
                        (_lh_listcomp_fun_5_8 _lh_enterList_arg2_1))) in
                        (`Fork(left'_2, _lh_enterList_Fork_1_2, right'_2)))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_enterList_arg1_1 with
            | `Fork(_lh_enterList_Fork_0_3, _lh_enterList_Fork_1_3, _lh_enterList_Fork_2_3) -> 
              (let rec k_5 = (fst__d0 _lh_enterList_Fork_1_3) in
                (let rec left'_3 = ((enterList__d0 _lh_enterList_Fork_0_3) (let rec _lh_listcomp_fun_5_9 = (fun _lh_listcomp_fun_para_5_9 -> 
                  (match _lh_listcomp_fun_para_5_9 with
                    | `LH_C(_lh_listcomp_fun_ls_h_5_9, _lh_listcomp_fun_ls_t_5_9) -> 
                      (if ((fst__d1 _lh_listcomp_fun_ls_h_5_9) < k_5) then
                        (`LH_C(_lh_listcomp_fun_ls_h_5_9, (_lh_listcomp_fun_5_9 _lh_listcomp_fun_ls_t_5_9)))
                      else
                        (_lh_listcomp_fun_5_9 _lh_listcomp_fun_ls_t_5_9))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_5_9 _lh_enterList_arg2_1))) in
                  (let rec right'_3 = ((enterList__d0 _lh_enterList_Fork_2_3) (let rec _lh_listcomp_fun_6_0 = (fun _lh_listcomp_fun_para_6_0 -> 
                    (match _lh_listcomp_fun_para_6_0 with
                      | `LH_C(_lh_listcomp_fun_ls_h_6_0, _lh_listcomp_fun_ls_t_6_0) -> 
                        (if ((fst__d2 _lh_listcomp_fun_ls_h_6_0) > k_5) then
                          (`LH_C(_lh_listcomp_fun_ls_h_6_0, (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_6_0)))
                        else
                          (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_6_0))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_6_0 _lh_enterList_arg2_1))) in
                    (`Fork(left'_3, _lh_enterList_Fork_1_3, right'_3)))))
            | _ -> 
              (failwith "error"))))
and entries__d0 _lh_entries_arg1_2 =
  (match _lh_entries_arg1_2 with
    | `Empty -> 
      (`LH_N)
    | `Fork(_lh_entries_Fork_0_2, _lh_entries_Fork_1_2, _lh_entries_Fork_2_2) -> 
      ((mappend__d8 ((mappend__d9 (entries__d0 _lh_entries_Fork_0_2)) (`LH_C(_lh_entries_Fork_1_2, (`LH_N))))) (entries__d0 _lh_entries_Fork_2_2))
    | _ -> 
      (failwith "error"))
and entries__d1 _lh_entries_arg1_1 =
  (match _lh_entries_arg1_1 with
    | `Empty -> 
      (`LH_N)
    | `Fork(_lh_entries_Fork_0_1, _lh_entries_Fork_1_1, _lh_entries_Fork_2_1) -> 
      ((mappend__d4_d1 ((mappend__d4_d2 (entries__d1 _lh_entries_Fork_0_1)) (`LH_C(_lh_entries_Fork_1_1, (`LH_N))))) (entries__d1 _lh_entries_Fork_2_1))
    | _ -> 
      (failwith "error"))
and fails__d0 _lh_fails_arg1_8 =
  ((fun _lh_funcomp_x_1_2 -> 
    (not (succeeds__d0 _lh_funcomp_x_1_2))) _lh_fails_arg1_8)
and fails__d1 _lh_fails_arg1_2 =
  ((fun _lh_funcomp_x_4 -> 
    (not (succeeds__d1 _lh_funcomp_x_4))) _lh_fails_arg1_2)
and fails__d2 _lh_fails_arg1_6 =
  ((fun _lh_funcomp_x_1_0 -> 
    (not (succeeds__d2 _lh_funcomp_x_1_0))) _lh_fails_arg1_6)
and fails__d3 _lh_fails_arg1_4 =
  ((fun _lh_funcomp_x_8 -> 
    (not (succeeds__d3 _lh_funcomp_x_8))) _lh_fails_arg1_4)
and fails__d4 _lh_fails_arg1_5 =
  ((fun _lh_funcomp_x_9 -> 
    (not (succeeds__d4 _lh_funcomp_x_9))) _lh_fails_arg1_5)
and fails__d5 _lh_fails_arg1_1 =
  ((fun _lh_funcomp_x_3 -> 
    (not (succeeds__d5 _lh_funcomp_x_3))) _lh_fails_arg1_1)
and fails__d6 _lh_fails_arg1_3 =
  ((fun _lh_funcomp_x_7 -> 
    (not (succeeds__d6 _lh_funcomp_x_7))) _lh_fails_arg1_3)
and fails__d7 _lh_fails_arg1_7 =
  ((fun _lh_funcomp_x_1_1 -> 
    (not (succeeds__d7 _lh_funcomp_x_1_1))) _lh_fails_arg1_7)
and find__d0 _lh_find_arg1_3 _lh_find_arg2_3 =
  (let rec _lh_matchIdent_2_3_8 = _lh_find_arg1_3 in
    (match _lh_matchIdent_2_3_8 with
      | `Empty -> 
        (failure__d0 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_3, _lh_find_Fork_1_3, _lh_find_Fork_2_3) -> 
        (match _lh_find_Fork_1_3 with
          | `LH_P2(_lh_find_LH_P2_0_3, _lh_find_LH_P2_1_3) -> 
            (if (_lh_find_arg2_3 < _lh_find_LH_P2_0_3) then
              ((find__d0 _lh_find_Fork_0_3) _lh_find_arg2_3)
            else
              (if (_lh_find_arg2_3 = _lh_find_LH_P2_0_3) then
                (success__d0 _lh_find_LH_P2_1_3)
              else
                (if (_lh_find_arg2_3 > _lh_find_LH_P2_0_3) then
                  ((find__d0 _lh_find_Fork_2_3) _lh_find_arg2_3)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d1 _lh_find_arg1_2 _lh_find_arg2_2 =
  (let rec _lh_matchIdent_2_3_7 = _lh_find_arg1_2 in
    (match _lh_matchIdent_2_3_7 with
      | `Empty -> 
        (failure__d1 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_2, _lh_find_Fork_1_2, _lh_find_Fork_2_2) -> 
        (match _lh_find_Fork_1_2 with
          | `LH_P2(_lh_find_LH_P2_0_2, _lh_find_LH_P2_1_2) -> 
            (if (_lh_find_arg2_2 < _lh_find_LH_P2_0_2) then
              ((find__d1 _lh_find_Fork_0_2) _lh_find_arg2_2)
            else
              (if (_lh_find_arg2_2 = _lh_find_LH_P2_0_2) then
                (success__d1 _lh_find_LH_P2_1_2)
              else
                (if (_lh_find_arg2_2 > _lh_find_LH_P2_0_2) then
                  ((find__d1 _lh_find_Fork_2_2) _lh_find_arg2_2)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d2 _lh_find_arg1_6 _lh_find_arg2_6 =
  (let rec _lh_matchIdent_2_6_3 = _lh_find_arg1_6 in
    (match _lh_matchIdent_2_6_3 with
      | `Empty -> 
        (failure__d2 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_6, _lh_find_Fork_1_6, _lh_find_Fork_2_6) -> 
        (match _lh_find_Fork_1_6 with
          | `LH_P2(_lh_find_LH_P2_0_6, _lh_find_LH_P2_1_6) -> 
            (if (_lh_find_arg2_6 < _lh_find_LH_P2_0_6) then
              ((find__d2 _lh_find_Fork_0_6) _lh_find_arg2_6)
            else
              (if (_lh_find_arg2_6 = _lh_find_LH_P2_0_6) then
                (success__d2 _lh_find_LH_P2_1_6)
              else
                (if (_lh_find_arg2_6 > _lh_find_LH_P2_0_6) then
                  ((find__d2 _lh_find_Fork_2_6) _lh_find_arg2_6)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d3 _lh_find_arg1_4 _lh_find_arg2_4 =
  (let rec _lh_matchIdent_2_5_0 = _lh_find_arg1_4 in
    (match _lh_matchIdent_2_5_0 with
      | `Empty -> 
        (failure__d3 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_4, _lh_find_Fork_1_4, _lh_find_Fork_2_4) -> 
        (match _lh_find_Fork_1_4 with
          | `LH_P2(_lh_find_LH_P2_0_4, _lh_find_LH_P2_1_4) -> 
            (if (_lh_find_arg2_4 < _lh_find_LH_P2_0_4) then
              ((find__d3 _lh_find_Fork_0_4) _lh_find_arg2_4)
            else
              (if (_lh_find_arg2_4 = _lh_find_LH_P2_0_4) then
                (success__d3 _lh_find_LH_P2_1_4)
              else
                (if (_lh_find_arg2_4 > _lh_find_LH_P2_0_4) then
                  ((find__d3 _lh_find_Fork_2_4) _lh_find_arg2_4)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d4 _lh_find_arg1_7 _lh_find_arg2_7 =
  (let rec _lh_matchIdent_2_6_4 = _lh_find_arg1_7 in
    (match _lh_matchIdent_2_6_4 with
      | `Empty -> 
        (failure__d6 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_7, _lh_find_Fork_1_7, _lh_find_Fork_2_7) -> 
        (match _lh_find_Fork_1_7 with
          | `LH_P2(_lh_find_LH_P2_0_7, _lh_find_LH_P2_1_7) -> 
            (if (_lh_find_arg2_7 < _lh_find_LH_P2_0_7) then
              ((find__d4 _lh_find_Fork_0_7) _lh_find_arg2_7)
            else
              (if (_lh_find_arg2_7 = _lh_find_LH_P2_0_7) then
                (success__d8 _lh_find_LH_P2_1_7)
              else
                (if (_lh_find_arg2_7 > _lh_find_LH_P2_0_7) then
                  ((find__d4 _lh_find_Fork_2_7) _lh_find_arg2_7)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d5 _lh_find_arg1_5 _lh_find_arg2_5 =
  (let rec _lh_matchIdent_2_5_8 = _lh_find_arg1_5 in
    (match _lh_matchIdent_2_5_8 with
      | `Empty -> 
        (failure__d7 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_5, _lh_find_Fork_1_5, _lh_find_Fork_2_5) -> 
        (match _lh_find_Fork_1_5 with
          | `LH_P2(_lh_find_LH_P2_0_5, _lh_find_LH_P2_1_5) -> 
            (if (_lh_find_arg2_5 < _lh_find_LH_P2_0_5) then
              ((find__d5 _lh_find_Fork_0_5) _lh_find_arg2_5)
            else
              (if (_lh_find_arg2_5 = _lh_find_LH_P2_0_5) then
                (success__d9 _lh_find_LH_P2_1_5)
              else
                (if (_lh_find_arg2_5 > _lh_find_LH_P2_0_5) then
                  ((find__d5 _lh_find_Fork_2_5) _lh_find_arg2_5)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d6 _lh_find_arg1_1 _lh_find_arg2_1 =
  (let rec _lh_matchIdent_1_1_4 = _lh_find_arg1_1 in
    (match _lh_matchIdent_1_1_4 with
      | `Empty -> 
        (failure__d8 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_1, _lh_find_Fork_1_1, _lh_find_Fork_2_1) -> 
        (match _lh_find_Fork_1_1 with
          | `LH_P2(_lh_find_LH_P2_0_1, _lh_find_LH_P2_1_1) -> 
            (if (_lh_find_arg2_1 < _lh_find_LH_P2_0_1) then
              ((find__d6 _lh_find_Fork_0_1) _lh_find_arg2_1)
            else
              (if (_lh_find_arg2_1 = _lh_find_LH_P2_0_1) then
                (success__d1_d0 _lh_find_LH_P2_1_1)
              else
                (if (_lh_find_arg2_1 > _lh_find_LH_P2_0_1) then
                  ((find__d6 _lh_find_Fork_2_1) _lh_find_arg2_1)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and freshCopy__d0 _lh_freshCopy_arg1_1 _lh_freshCopy_arg2_1 =
  (match _lh_freshCopy_arg1_1 with
    | `Soln(_lh_freshCopy_Soln_0_1, _lh_freshCopy_Soln_1_1) -> 
      (let rec xs_4_7 = (vars__d0 _lh_freshCopy_arg2_1) in
        (let rec n_8 = (length__d2 xs_4_7) in
          (let rec tab_1 = ((updateList__d1 newTable__d3) ((zip__d0 xs_4_7) (let rec _lh_listcomp_fun_5_4 = (fun _lh_listcomp_fun_para_5_4 -> 
            (match _lh_listcomp_fun_para_5_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_5_4, _lh_listcomp_fun_ls_t_5_4) -> 
                (`LH_C((`Var(_lh_listcomp_fun_ls_h_5_4)), (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_5_4)))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_5_4 ((take__d1 n_8) _lh_freshCopy_Soln_1_1))))) in
            (`LH_P2((`Soln(_lh_freshCopy_Soln_0_1, ((drop__d1 n_8) _lh_freshCopy_Soln_1_1))), ((subst__d2 tab_1) _lh_freshCopy_arg2_1))))))
    | _ -> 
      (failwith "error"))
and goal__d0 _lh_goal_arg1_1 =
  (if ((inList__d0 (`LH_C('o', (`LH_C('r', (`LH_N)))))) _lh_goal_arg1_1) then
    ((((split__d1 _lh_goal_arg1_1) goal__d0) (`LH_C('o', (`LH_C('r', (`LH_N)))))) goal__d0)
  else
    (if ((inList__d1 (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) _lh_goal_arg1_1) then
      ((((split__d2 _lh_goal_arg1_1) goal__d0) (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) goal__d0)
    else
      (relation__d0 _lh_goal_arg1_1)))
and goal__d1 _lh_goal_arg1_2 =
  (if ((inList__d8 (`LH_C('o', (`LH_C('r', (`LH_N)))))) _lh_goal_arg1_2) then
    ((((split__d6 _lh_goal_arg1_2) goal__d1) (`LH_C('o', (`LH_C('r', (`LH_N)))))) goal__d1)
  else
    (if ((inList__d9 (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) _lh_goal_arg1_2) then
      ((((split__d7 _lh_goal_arg1_2) goal__d1) (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) goal__d1)
    else
      (relation__d2 _lh_goal_arg1_2)))
and lines__d0 _lh_lines_arg1_3 =
  (let rec _lh_matchIdent_2_5_3 = ((break__d1 (fun x_2_3 -> 
    (x_2_3 = '|'))) _lh_lines_arg1_3) in
    (match _lh_matchIdent_2_5_3 with
      | `LH_P2(_lh_lines_LH_P2_0_3, _lh_lines_LH_P2_1_3) -> 
        (`LH_C(_lh_lines_LH_P2_0_3, (let rec _lh_matchIdent_2_5_4 = _lh_lines_LH_P2_1_3 in
          (match _lh_matchIdent_2_5_4 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_3, _lh_lines_LH_C_1_3) -> 
              (lines__d0 _lh_lines_LH_C_1_3)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")))
and lines__d1 _lh_lines_arg1_2 =
  (let rec _lh_matchIdent_2_4_4 = ((break__d2 (fun x_1_7 -> 
    (x_1_7 = '|'))) _lh_lines_arg1_2) in
    (match _lh_matchIdent_2_4_4 with
      | `LH_P2(_lh_lines_LH_P2_0_2, _lh_lines_LH_P2_1_2) -> 
        (`LH_C(_lh_lines_LH_P2_0_2, (let rec _lh_matchIdent_2_4_5 = _lh_lines_LH_P2_1_2 in
          (match _lh_matchIdent_2_4_5 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_2, _lh_lines_LH_C_1_2) -> 
              (lines__d1 _lh_lines_LH_C_1_2)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")))
and lines__d2 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_2_4_2 = ((break__d3 (fun x_1_4 -> 
    (x_1_4 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_2_4_2 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_2_4_3 = _lh_lines_LH_P2_1_1 in
          (match _lh_matchIdent_2_4_3 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_1, _lh_lines_LH_C_1_1) -> 
              (lines__d2 _lh_lines_LH_C_1_1)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")))
and lookUp__d0 _lh_lookUp_arg1_1 _lh_lookUp_arg2_1 _lh_lookUp_arg3_1 _lh_lookUp_arg4_1 =
  (let rec copies_1 = (let rec _lh_listcomp_fun_6_1 = (fun _lh_listcomp_fun_para_6_1 -> 
    (match _lh_listcomp_fun_para_6_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_6_1, _lh_listcomp_fun_ls_t_6_1) -> 
        (`LH_C(((freshCopy__d0 _lh_lookUp_arg2_1) _lh_listcomp_fun_ls_h_6_1), (_lh_listcomp_fun_6_1 _lh_listcomp_fun_ls_t_6_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6_1 _lh_lookUp_arg4_1)) in
    (concat__d1 (let rec _lh_listcomp_fun_6_2 = (fun _lh_listcomp_fun_para_6_2 -> 
      (match _lh_listcomp_fun_para_6_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_6_2, _lh_listcomp_fun_ls_t_6_2) -> 
          (match _lh_listcomp_fun_ls_h_6_2 with
            | `LH_P2(_lh_lookUp_LH_P2_0_1, _lh_lookUp_LH_P2_1_1) -> 
              (`LH_C(((((try__d0 _lh_lookUp_arg1_1) _lh_lookUp_LH_P2_0_1) _lh_lookUp_arg3_1) _lh_lookUp_LH_P2_1_1), (_lh_listcomp_fun_6_2 _lh_listcomp_fun_ls_t_6_2)))
            | _ -> 
              (_lh_listcomp_fun_6_2 _lh_listcomp_fun_ls_t_6_2))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_6_2 copies_1))))
and matchList__d0 _lh_matchList_arg1_1 _lh_matchList_arg2_1 =
  (match _lh_matchList_arg2_1 with
    | `LH_N -> 
      (success__d4 _lh_matchList_arg1_1)
    | `LH_C(_lh_matchList_LH_C_0_1, _lh_matchList_LH_C_1_1) -> 
      (match _lh_matchList_LH_C_0_1 with
        | `LH_P2(_lh_matchList_LH_P2_0_1, _lh_matchList_LH_P2_1_1) -> 
          (let rec res_1 = (((match__d0 _lh_matchList_arg1_1) _lh_matchList_LH_P2_0_1) _lh_matchList_LH_P2_1_1) in
            (if (fails__d4 res_1) then
              res_1
            else
              ((matchList__d0 (answer__d5 res_1)) _lh_matchList_LH_C_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and match__d0 _lh_match_arg1_1 _lh_match_arg2_1 _lh_match_arg3_1 =
  (((compear__d0 _lh_match_arg1_1) ((subst__d3 _lh_match_arg1_1) _lh_match_arg2_1)) ((subst__d4 _lh_match_arg1_1) _lh_match_arg3_1))
and noun__d0 _lh_noun_arg1_6 =
  (match _lh_noun_arg1_6 with
    | `LH_C(_lh_noun_LH_C_0_1_2, _lh_noun_LH_C_1_1_2) -> 
      (match _lh_noun_LH_C_1_1_2 with
        | `LH_C(_lh_noun_LH_C_0_1_3, _lh_noun_LH_C_1_1_3) -> 
          (match _lh_noun_LH_C_1_1_3 with
            | `LH_N -> 
              (if ((inList__d3 _lh_noun_LH_C_0_1_2) (`LH_C((`LH_C('a', (`LH_N))), (`LH_C((`LH_C('a', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))), (`LH_N)))))))) then
                (noun__d0 (`LH_C(((mappend__d0 ((mappend__d1 _lh_noun_LH_C_0_1_2) (`LH_C(' ', (`LH_N))))) _lh_noun_LH_C_0_1_3), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d1 _lh_noun_LH_C_0_1_2)) && ((head__d2 _lh_noun_LH_C_0_1_2) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_1_2))
          else
            (`Term(_lh_noun_LH_C_0_1_2, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d1 _lh_noun_arg1_2 =
  (match _lh_noun_arg1_2 with
    | `LH_C(_lh_noun_LH_C_0_4, _lh_noun_LH_C_1_4) -> 
      (match _lh_noun_LH_C_1_4 with
        | `LH_C(_lh_noun_LH_C_0_5, _lh_noun_LH_C_1_5) -> 
          (match _lh_noun_LH_C_1_5 with
            | `LH_N -> 
              (if ((inList__d4 _lh_noun_LH_C_0_4) (`LH_C((`LH_C('a', (`LH_N))), (`LH_C((`LH_C('a', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))), (`LH_N)))))))) then
                (noun__d1 (`LH_C(((mappend__d2 ((mappend__d3 _lh_noun_LH_C_0_4) (`LH_C(' ', (`LH_N))))) _lh_noun_LH_C_0_5), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d3 _lh_noun_LH_C_0_4)) && ((head__d4 _lh_noun_LH_C_0_4) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_4))
          else
            (`Term(_lh_noun_LH_C_0_4, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d2 _lh_noun_arg1_4 =
  (match _lh_noun_arg1_4 with
    | `LH_C(_lh_noun_LH_C_0_8, _lh_noun_LH_C_1_8) -> 
      (match _lh_noun_LH_C_1_8 with
        | `LH_C(_lh_noun_LH_C_0_9, _lh_noun_LH_C_1_9) -> 
          (match _lh_noun_LH_C_1_9 with
            | `LH_N -> 
              (if ((inList__d6 _lh_noun_LH_C_0_8) (`LH_C((`LH_C('a', (`LH_N))), (`LH_C((`LH_C('a', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))), (`LH_N)))))))) then
                (noun__d2 (`LH_C(((mappend__d4 ((mappend__d5 _lh_noun_LH_C_0_8) (`LH_C(' ', (`LH_N))))) _lh_noun_LH_C_0_9), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d6 _lh_noun_LH_C_0_8)) && ((head__d7 _lh_noun_LH_C_0_8) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_8))
          else
            (`Term(_lh_noun_LH_C_0_8, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d3 _lh_noun_arg1_5 =
  (match _lh_noun_arg1_5 with
    | `LH_C(_lh_noun_LH_C_0_1_0, _lh_noun_LH_C_1_1_0) -> 
      (match _lh_noun_LH_C_1_1_0 with
        | `LH_C(_lh_noun_LH_C_0_1_1, _lh_noun_LH_C_1_1_1) -> 
          (match _lh_noun_LH_C_1_1_1 with
            | `LH_N -> 
              (if ((inList__d7 _lh_noun_LH_C_0_1_0) (`LH_C((`LH_C('a', (`LH_N))), (`LH_C((`LH_C('a', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))), (`LH_N)))))))) then
                (noun__d3 (`LH_C(((mappend__d6 ((mappend__d7 _lh_noun_LH_C_0_1_0) (`LH_C(' ', (`LH_N))))) _lh_noun_LH_C_0_1_1), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d8 _lh_noun_LH_C_0_1_0)) && ((head__d9 _lh_noun_LH_C_0_1_0) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_1_0))
          else
            (`Term(_lh_noun_LH_C_0_1_0, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d4 _lh_noun_arg1_1 =
  (match _lh_noun_arg1_1 with
    | `LH_C(_lh_noun_LH_C_0_2, _lh_noun_LH_C_1_2) -> 
      (match _lh_noun_LH_C_1_2 with
        | `LH_C(_lh_noun_LH_C_0_3, _lh_noun_LH_C_1_3) -> 
          (match _lh_noun_LH_C_1_3 with
            | `LH_N -> 
              (if ((inList__d1_d1 _lh_noun_LH_C_0_2) (`LH_C((`LH_C('a', (`LH_N))), (`LH_C((`LH_C('a', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))), (`LH_N)))))))) then
                (noun__d4 (`LH_C(((mappend__d2_d4 ((mappend__d2_d5 _lh_noun_LH_C_0_2) (`LH_C(' ', (`LH_N))))) _lh_noun_LH_C_0_3), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d1_d2 _lh_noun_LH_C_0_2)) && ((head__d1_d3 _lh_noun_LH_C_0_2) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_2))
          else
            (`Term(_lh_noun_LH_C_0_2, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d5 _lh_noun_arg1_3 =
  (match _lh_noun_arg1_3 with
    | `LH_C(_lh_noun_LH_C_0_6, _lh_noun_LH_C_1_6) -> 
      (match _lh_noun_LH_C_1_6 with
        | `LH_C(_lh_noun_LH_C_0_7, _lh_noun_LH_C_1_7) -> 
          (match _lh_noun_LH_C_1_7 with
            | `LH_N -> 
              (if ((inList__d1_d2 _lh_noun_LH_C_0_6) (`LH_C((`LH_C('a', (`LH_N))), (`LH_C((`LH_C('a', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))), (`LH_N)))))))) then
                (noun__d5 (`LH_C(((mappend__d2_d6 ((mappend__d2_d7 _lh_noun_LH_C_0_6) (`LH_C(' ', (`LH_N))))) _lh_noun_LH_C_0_7), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d1_d4 _lh_noun_LH_C_0_6)) && ((head__d1_d5 _lh_noun_LH_C_0_6) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_6))
          else
            (`Term(_lh_noun_LH_C_0_6, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and nub__d0 _lh_nub_arg1_1 =
  (match _lh_nub_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nub_LH_C_0_1, _lh_nub_LH_C_1_1) -> 
      (`LH_C(_lh_nub_LH_C_0_1, (nub__d0 ((filter__d0 (fun y_2 -> 
        (not (_lh_nub_LH_C_0_1 = y_2)))) _lh_nub_LH_C_1_1))))
    | _ -> 
      (failwith "error"))
and nub__d1 _lh_nub_arg1_3 =
  (match _lh_nub_arg1_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nub_LH_C_0_3, _lh_nub_LH_C_1_3) -> 
      (`LH_C(_lh_nub_LH_C_0_3, (nub__d1 ((filter__d1 (fun y_5 -> 
        (not (_lh_nub_LH_C_0_3 = y_5)))) _lh_nub_LH_C_1_3))))
    | _ -> 
      (failwith "error"))
and nub__d2 _lh_nub_arg1_2 =
  (match _lh_nub_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nub_LH_C_0_2, _lh_nub_LH_C_1_2) -> 
      (`LH_C(_lh_nub_LH_C_0_2, (nub__d2 ((filter__d2 (fun y_3 -> 
        (not (_lh_nub_LH_C_0_2 = y_3)))) _lh_nub_LH_C_1_2))))
    | _ -> 
      (failwith "error"))
and occurs__d0 _lh_occurs_arg1_1 _lh_occurs_arg2_1 =
  (match _lh_occurs_arg2_1 with
    | `Term(_lh_occurs_Term_0_1, _lh_occurs_Term_1_1) -> 
      (or__d0 (let rec _lh_listcomp_fun_3_1 = (fun _lh_listcomp_fun_para_3_1 -> 
        (match _lh_listcomp_fun_para_3_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_1, _lh_listcomp_fun_ls_t_3_1) -> 
            (`LH_C(((occurs__d0 _lh_occurs_arg1_1) _lh_listcomp_fun_ls_h_3_1), (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_3_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3_1 _lh_occurs_Term_1_1)))
    | _ -> 
      (match _lh_occurs_arg1_1 with
        | `Var(_lh_occurs_Var_0_4) -> 
          (match _lh_occurs_arg2_1 with
            | `Var(_lh_occurs_Var_0_5) -> 
              (_lh_occurs_Var_0_4 = _lh_occurs_Var_0_5)
            | _ -> 
              (match _lh_occurs_arg2_1 with
                | `Var(_lh_occurs_Var_0_6) -> 
                  false
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_occurs_arg2_1 with
            | `Var(_lh_occurs_Var_0_7) -> 
              false
            | _ -> 
              (failwith "error"))))
and process__d0 _lh_process_arg1_1 _lh_process_arg2_1 =
  let rec problem_1 = (fun _lh_problem_arg1_1 -> 
    (goal__d1 (words__d1 (head__d1_d6 (lines__d0 _lh_problem_arg1_1)))))
  and replies_1 = (fun _lh_replies_arg1_1 -> 
    (let rec _lh_listcomp_fun_5_2 = (fun _lh_listcomp_fun_para_5_2 -> 
      (match _lh_listcomp_fun_para_5_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_5_2, _lh_listcomp_fun_ls_t_5_2) -> 
          (`LH_C(((words__d2 _lh_listcomp_fun_ls_h_5_2) <> (`LH_C((`LH_C('n', (`LH_C('o', (`LH_N))))), (`LH_N)))), (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_5_2)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_5_2 (lines__d1 _lh_replies_arg1_1))))
  and db_1 = (fun _lh_db_arg1_1 _lh_db_arg2_1 -> 
    (`LH_P2((defs_1 _lh_db_arg1_1), ((info_1 _lh_db_arg1_1) _lh_db_arg2_1))))
  and info_1 = (fun _lh_info_arg1_1 _lh_info_arg2_1 -> 
    ((enterList__d0 newTable__d1) (let rec _lh_listcomp_fun_5_0 = (fun _lh_listcomp_fun_para_5_0 -> 
      (match _lh_listcomp_fun_para_5_0 with
        | `LH_C(_lh_listcomp_fun_ls_h_5_0, _lh_listcomp_fun_ls_t_5_0) -> 
          (match _lh_listcomp_fun_ls_h_5_0 with
            | `LH_P2(_lh_info_LH_P2_0_1, _lh_info_LH_P2_1_1) -> 
              (match _lh_info_LH_P2_0_1 with
                | `Question(_lh_info_Question_0_1) -> 
                  (`LH_C((`LH_P2(_lh_info_Question_0_1, _lh_info_LH_P2_1_1)), (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_5_0)))
                | _ -> 
                  (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_5_0))
            | _ -> 
              (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_5_0))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_5_0 ((zip__d2 ((results_1 _lh_info_arg1_1) _lh_info_arg2_1)) (replies_1 _lh_info_arg2_1))))))
  and results_1 = (fun _lh_results_arg1_1 _lh_results_arg2_1 -> 
    ((strip__d0 (`LH_N)) (((solve__d0 ((db_1 _lh_results_arg1_1) _lh_results_arg2_1)) newsoln_1) (problem_1 _lh_results_arg1_1))))
  and newsoln_1 = (`Soln(newTable__d2, (let rec _lh_listcomp_fun_5_1 = (fun _lh_listcomp_fun_para_5_1 -> 
    (match _lh_listcomp_fun_para_5_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_5_1, _lh_listcomp_fun_ls_t_5_1) -> 
        (`LH_C((`LH_C('X', (string_of_int _lh_listcomp_fun_ls_h_5_1))), (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_5_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5_1 ((enumFromTo__d0 0) 1)))))
  and defs_1 = (fun _lh_defs_arg1_1 -> 
    (definitions__d0 (tail__d1_d0 (lines__d2 _lh_defs_arg1_1))))
  in ((mappend__d2_d8 ((mappend__d2_d9 ((mappend__d3_d0 (`LH_C('S', (`LH_C('o', (`LH_C('l', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))) (showPhrase__d1 (problem_1 _lh_process_arg1_1)))) (`LH_C('|', (`LH_N))))) (((display__d0 ((results_1 _lh_process_arg1_1) _lh_process_arg2_1)) (vars__d1 (problem_1 _lh_process_arg1_1))) (replies_1 _lh_process_arg2_1)))
and relation__d0 _lh_relation_arg1_2 =
  (let rec verbs_4 = (`LH_C((`LH_C('i', (`LH_C('s', (`LH_N))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))), (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))), (`LH_C((`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))), (`LH_N))))))))))) in
    (let rec verb_4 = (head__d0 (let rec _lh_listcomp_fun_3_6 = (fun _lh_listcomp_fun_para_3_6 -> 
      (match _lh_listcomp_fun_para_3_6 with
        | `LH_C(_lh_listcomp_fun_ls_h_3_6, _lh_listcomp_fun_ls_t_3_6) -> 
          (if ((inList__d2 _lh_listcomp_fun_ls_h_3_6) verbs_4) then
            (`LH_C(_lh_listcomp_fun_ls_h_3_6, (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_3_6)))
          else
            (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_3_6))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_3_6 _lh_relation_arg1_2))) in
      ((((split__d0 _lh_relation_arg1_2) noun__d0) verb_4) noun__d1)))
and relation__d1 _lh_relation_arg1_3 =
  (let rec verbs_5 = (`LH_C((`LH_C('i', (`LH_C('s', (`LH_N))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))), (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))), (`LH_C((`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))), (`LH_N))))))))))) in
    (let rec verb_5 = (head__d5 (let rec _lh_listcomp_fun_4_6 = (fun _lh_listcomp_fun_para_4_6 -> 
      (match _lh_listcomp_fun_para_4_6 with
        | `LH_C(_lh_listcomp_fun_ls_h_4_6, _lh_listcomp_fun_ls_t_4_6) -> 
          (if ((inList__d5 _lh_listcomp_fun_ls_h_4_6) verbs_5) then
            (`LH_C(_lh_listcomp_fun_ls_h_4_6, (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_4_6)))
          else
            (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_4_6))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_4_6 _lh_relation_arg1_3))) in
      ((((split__d3 _lh_relation_arg1_3) noun__d2) verb_5) noun__d3)))
and relation__d2 _lh_relation_arg1_1 =
  (let rec verbs_2 = (`LH_C((`LH_C('i', (`LH_C('s', (`LH_N))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))), (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))), (`LH_C((`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))), (`LH_N))))))))))) in
    (let rec verb_2 = (head__d1_d1 (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_3_0 -> 
      (match _lh_listcomp_fun_para_3_0 with
        | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_3_0) -> 
          (if ((inList__d1_d0 _lh_listcomp_fun_ls_h_3_0) verbs_2) then
            (`LH_C(_lh_listcomp_fun_ls_h_3_0, (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_3_0)))
          else
            (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_3_0))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_3_0 _lh_relation_arg1_1))) in
      ((((split__d5 _lh_relation_arg1_1) noun__d4) verb_2) noun__d5)))
and relevant__d0 _lh_relevant_arg1_1 _lh_relevant_arg2_1 =
  (match _lh_relevant_arg2_1 with
    | `Term(_lh_relevant_Term_0_1, _lh_relevant_Term_1_1) -> 
      (let rec lookup_5 = ((find__d6 _lh_relevant_arg1_1) _lh_relevant_Term_0_1) in
        (if (fails__d7 lookup_5) then
          (`LH_N)
        else
          (answer__d8 lookup_5)))
    | _ -> 
      (failwith "error"))
and rule__d0 _lh_rule_arg1_1 =
  ((((split__d4 _lh_rule_arg1_1) relation__d1) (`LH_C('i', (`LH_C('f', (`LH_N)))))) goal__d0)
and showPhrase__d0 _lh_showPhrase_arg1_2 =
  (match _lh_showPhrase_arg1_2 with
    | `Var(_lh_showPhrase_Var_0_2) -> 
      _lh_showPhrase_Var_0_2
    | `Term(_lh_showPhrase_Term_0_2, _lh_showPhrase_Term_1_2) -> 
      (match _lh_showPhrase_Term_1_2 with
        | `LH_N -> 
          _lh_showPhrase_Term_0_2
        | `LH_C(_lh_showPhrase_LH_C_0_4, _lh_showPhrase_LH_C_1_4) -> 
          (match _lh_showPhrase_LH_C_1_4 with
            | `LH_C(_lh_showPhrase_LH_C_0_5, _lh_showPhrase_LH_C_1_5) -> 
              (match _lh_showPhrase_LH_C_1_5 with
                | `LH_N -> 
                  ((mappend__d2_d0 ((mappend__d2_d1 ((mappend__d2_d2 ((mappend__d2_d3 (showPhrase__d0 _lh_showPhrase_LH_C_0_4)) (`LH_C(' ', (`LH_N))))) _lh_showPhrase_Term_0_2)) (`LH_C(' ', (`LH_N))))) (showPhrase__d0 _lh_showPhrase_LH_C_0_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showPhrase__d1 _lh_showPhrase_arg1_1 =
  (match _lh_showPhrase_arg1_1 with
    | `Var(_lh_showPhrase_Var_0_1) -> 
      _lh_showPhrase_Var_0_1
    | `Term(_lh_showPhrase_Term_0_1, _lh_showPhrase_Term_1_1) -> 
      (match _lh_showPhrase_Term_1_1 with
        | `LH_N -> 
          _lh_showPhrase_Term_0_1
        | `LH_C(_lh_showPhrase_LH_C_0_2, _lh_showPhrase_LH_C_1_2) -> 
          (match _lh_showPhrase_LH_C_1_2 with
            | `LH_C(_lh_showPhrase_LH_C_0_3, _lh_showPhrase_LH_C_1_3) -> 
              (match _lh_showPhrase_LH_C_1_3 with
                | `LH_N -> 
                  ((mappend__d3_d1 ((mappend__d3_d2 ((mappend__d3_d3 ((mappend__d3_d4 (showPhrase__d1 _lh_showPhrase_LH_C_0_2)) (`LH_C(' ', (`LH_N))))) _lh_showPhrase_Term_0_1)) (`LH_C(' ', (`LH_N))))) (showPhrase__d1 _lh_showPhrase_LH_C_0_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showPhrase__d2 _lh_showPhrase_arg1_3 =
  (match _lh_showPhrase_arg1_3 with
    | `Var(_lh_showPhrase_Var_0_3) -> 
      _lh_showPhrase_Var_0_3
    | `Term(_lh_showPhrase_Term_0_3, _lh_showPhrase_Term_1_3) -> 
      (match _lh_showPhrase_Term_1_3 with
        | `LH_N -> 
          _lh_showPhrase_Term_0_3
        | `LH_C(_lh_showPhrase_LH_C_0_6, _lh_showPhrase_LH_C_1_6) -> 
          (match _lh_showPhrase_LH_C_1_6 with
            | `LH_C(_lh_showPhrase_LH_C_0_7, _lh_showPhrase_LH_C_1_7) -> 
              (match _lh_showPhrase_LH_C_1_7 with
                | `LH_N -> 
                  ((mappend__d3_d5 ((mappend__d3_d6 ((mappend__d3_d7 ((mappend__d3_d8 (showPhrase__d2 _lh_showPhrase_LH_C_0_6)) (`LH_C(' ', (`LH_N))))) _lh_showPhrase_Term_0_3)) (`LH_C(' ', (`LH_N))))) (showPhrase__d2 _lh_showPhrase_LH_C_0_7))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showVars__d0 _lh_showVars_arg1_1 _lh_showVars_arg2_1 =
  (let rec join_1 = (fun x_2_2 y_4 -> 
    ((mappend__d1_d6 ((mappend__d1_d7 x_2_2) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) y_4)) in
    (let rec showVar_1 = (fun v_3 -> 
      ((mappend__d1_d8 ((mappend__d1_d9 v_3) (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_N))))))))) (showPhrase__d0 ((subst__d0 _lh_showVars_arg1_1) (`Var(v_3)))))) in
      ((foldr1__d0 join_1) ((map__d0 showVar_1) _lh_showVars_arg2_1))))
and solve__d0 _lh_solve_arg1_1 _lh_solve_arg2_1 _lh_solve_arg3_1 =
  (match _lh_solve_arg2_1 with
    | `Question(_lh_solve_Question_0_1) -> 
      (`LH_C((`Question(_lh_solve_Question_0_1)), (`LH_N)))
    | _ -> 
      (match _lh_solve_arg3_1 with
        | `Term(_lh_solve_Term_0_1_0, _lh_solve_Term_1_1_0) -> 
          (match _lh_solve_Term_0_1_0 with
            | `LH_C(_lh_solve_LH_C_0_4_9, _lh_solve_LH_C_1_4_9) -> 
              (match _lh_solve_LH_C_0_4_9 with
                | 'o' -> 
                  (match _lh_solve_LH_C_1_4_9 with
                    | `LH_C(_lh_solve_LH_C_0_5_0, _lh_solve_LH_C_1_5_0) -> 
                      (match _lh_solve_LH_C_0_5_0 with
                        | 'r' -> 
                          (match _lh_solve_LH_C_1_5_0 with
                            | `LH_N -> 
                              (match _lh_solve_Term_1_1_0 with
                                | `LH_C(_lh_solve_LH_C_0_5_1, _lh_solve_LH_C_1_5_1) -> 
                                  (match _lh_solve_LH_C_1_5_1 with
                                    | `LH_C(_lh_solve_LH_C_0_5_2, _lh_solve_LH_C_1_5_2) -> 
                                      (match _lh_solve_LH_C_1_5_2 with
                                        | `LH_N -> 
                                          ((mappend__d4_d4 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_5_1)) (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_5_2))
                                        | _ -> 
                                          (match _lh_solve_arg3_1 with
                                            | `Term(_lh_solve_Term_0_1_1, _lh_solve_Term_1_1_1) -> 
                                              (match _lh_solve_Term_0_1_1 with
                                                | `LH_C(_lh_solve_LH_C_0_5_3, _lh_solve_LH_C_1_5_3) -> 
                                                  (match _lh_solve_LH_C_0_5_3 with
                                                    | 'a' -> 
                                                      (match _lh_solve_LH_C_1_5_3 with
                                                        | `LH_C(_lh_solve_LH_C_0_5_4, _lh_solve_LH_C_1_5_4) -> 
                                                          (match _lh_solve_LH_C_0_5_4 with
                                                            | 'n' -> 
                                                              (match _lh_solve_LH_C_1_5_4 with
                                                                | `LH_C(_lh_solve_LH_C_0_5_5, _lh_solve_LH_C_1_5_5) -> 
                                                                  (match _lh_solve_LH_C_0_5_5 with
                                                                    | 'd' -> 
                                                                      (match _lh_solve_LH_C_1_5_5 with
                                                                        | `LH_N -> 
                                                                          (match _lh_solve_Term_1_1_1 with
                                                                            | `LH_C(_lh_solve_LH_C_0_5_6, _lh_solve_LH_C_1_5_6) -> 
                                                                              (match _lh_solve_LH_C_1_5_6 with
                                                                                | `LH_C(_lh_solve_LH_C_0_5_7, _lh_solve_LH_C_1_5_7) -> 
                                                                                  (match _lh_solve_LH_C_1_5_7 with
                                                                                    | `LH_N -> 
                                                                                      (concat__d0 (let rec _lh_listcomp_fun_3_7 = (fun _lh_listcomp_fun_para_3_7 -> 
                                                                                        (match _lh_listcomp_fun_para_3_7 with
                                                                                          | `LH_C(_lh_listcomp_fun_ls_h_3_7, _lh_listcomp_fun_ls_t_3_7) -> 
                                                                                            (`LH_C((((solve__d0 _lh_solve_arg1_1) _lh_listcomp_fun_ls_h_3_7) _lh_solve_LH_C_0_5_7), (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_3_7)))
                                                                                          | `LH_N -> 
                                                                                            (`LH_N))) in
                                                                                        (_lh_listcomp_fun_3_7 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_5_6))))
                                                                                    | _ -> 
                                                                                      (let rec _lh_matchIdent_1_2_1 = _lh_solve_arg1_1 in
                                                                                        (match _lh_matchIdent_1_2_1 with
                                                                                          | `LH_P2(_lh_solve_LH_P2_0_9_9, _lh_solve_LH_P2_1_9_9) -> 
                                                                                            (let rec rs_1_0_1 = ((relevant__d0 _lh_solve_LH_P2_0_9_9) _lh_solve_arg3_1) in
                                                                                              (if (not (null__d0 rs_1_0_1)) then
                                                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_0_1)
                                                                                              else
                                                                                                (((ask__d0 _lh_solve_LH_P2_1_9_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                                          | _ -> 
                                                                                            (failwith "error"))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_1_2_2 = _lh_solve_arg1_1 in
                                                                                    (match _lh_matchIdent_1_2_2 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_0_0, _lh_solve_LH_P2_1_1_0_0) -> 
                                                                                        (let rec rs_1_0_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_0) _lh_solve_arg3_1) in
                                                                                          (if (not (null__d0 rs_1_0_2)) then
                                                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_0_2)
                                                                                          else
                                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_0_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_1_2_3 = _lh_solve_arg1_1 in
                                                                                (match _lh_matchIdent_1_2_3 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_0_1, _lh_solve_LH_P2_1_1_0_1) -> 
                                                                                    (let rec rs_1_0_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_1) _lh_solve_arg3_1) in
                                                                                      (if (not (null__d0 rs_1_0_3)) then
                                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_0_3)
                                                                                      else
                                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_0_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_1_2_4 = _lh_solve_arg1_1 in
                                                                            (match _lh_matchIdent_1_2_4 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_1_0_2, _lh_solve_LH_P2_1_1_0_2) -> 
                                                                                (let rec rs_1_0_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_2) _lh_solve_arg3_1) in
                                                                                  (if (not (null__d0 rs_1_0_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_0_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_0_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_1_2_5 = _lh_solve_arg1_1 in
                                                                        (match _lh_matchIdent_1_2_5 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_1_0_3, _lh_solve_LH_P2_1_1_0_3) -> 
                                                                            (let rec rs_1_0_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_3) _lh_solve_arg3_1) in
                                                                              (if (not (null__d0 rs_1_0_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_0_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_1_0_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_1_2_6 = _lh_solve_arg1_1 in
                                                                    (match _lh_matchIdent_1_2_6 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_0_4, _lh_solve_LH_P2_1_1_0_4) -> 
                                                                        (let rec rs_1_0_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_4) _lh_solve_arg3_1) in
                                                                          (if (not (null__d0 rs_1_0_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_0_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_0_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_2_7 = _lh_solve_arg1_1 in
                                                                (match _lh_matchIdent_1_2_7 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_0_5, _lh_solve_LH_P2_1_1_0_5) -> 
                                                                    (let rec rs_1_0_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_5) _lh_solve_arg3_1) in
                                                                      (if (not (null__d0 rs_1_0_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_0_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_0_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_2_8 = _lh_solve_arg1_1 in
                                                            (match _lh_matchIdent_1_2_8 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_0_6, _lh_solve_LH_P2_1_1_0_6) -> 
                                                                (let rec rs_1_0_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_6) _lh_solve_arg3_1) in
                                                                  (if (not (null__d0 rs_1_0_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_0_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_0_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_2_9 = _lh_solve_arg1_1 in
                                                        (match _lh_matchIdent_1_2_9 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_0_7, _lh_solve_LH_P2_1_1_0_7) -> 
                                                            (let rec rs_1_0_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_7) _lh_solve_arg3_1) in
                                                              (if (not (null__d0 rs_1_0_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_0_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_0_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_3_0 = _lh_solve_arg1_1 in
                                                    (match _lh_matchIdent_1_3_0 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_0_8, _lh_solve_LH_P2_1_1_0_8) -> 
                                                        (let rec rs_1_1_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_8) _lh_solve_arg3_1) in
                                                          (if (not (null__d0 rs_1_1_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_0_8) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_3_1 = _lh_solve_arg1_1 in
                                                (match _lh_matchIdent_1_3_1 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_0_9, _lh_solve_LH_P2_1_1_0_9) -> 
                                                    (let rec rs_1_1_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_0_9) _lh_solve_arg3_1) in
                                                      (if (not (null__d0 rs_1_1_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_0_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                  | _ -> 
                                                    (failwith "error")))))
                                    | _ -> 
                                      (match _lh_solve_arg3_1 with
                                        | `Term(_lh_solve_Term_0_1_2, _lh_solve_Term_1_1_2) -> 
                                          (match _lh_solve_Term_0_1_2 with
                                            | `LH_C(_lh_solve_LH_C_0_5_8, _lh_solve_LH_C_1_5_8) -> 
                                              (match _lh_solve_LH_C_0_5_8 with
                                                | 'a' -> 
                                                  (match _lh_solve_LH_C_1_5_8 with
                                                    | `LH_C(_lh_solve_LH_C_0_5_9, _lh_solve_LH_C_1_5_9) -> 
                                                      (match _lh_solve_LH_C_0_5_9 with
                                                        | 'n' -> 
                                                          (match _lh_solve_LH_C_1_5_9 with
                                                            | `LH_C(_lh_solve_LH_C_0_6_0, _lh_solve_LH_C_1_6_0) -> 
                                                              (match _lh_solve_LH_C_0_6_0 with
                                                                | 'd' -> 
                                                                  (match _lh_solve_LH_C_1_6_0 with
                                                                    | `LH_N -> 
                                                                      (match _lh_solve_Term_1_1_2 with
                                                                        | `LH_C(_lh_solve_LH_C_0_6_1, _lh_solve_LH_C_1_6_1) -> 
                                                                          (match _lh_solve_LH_C_1_6_1 with
                                                                            | `LH_C(_lh_solve_LH_C_0_6_2, _lh_solve_LH_C_1_6_2) -> 
                                                                              (match _lh_solve_LH_C_1_6_2 with
                                                                                | `LH_N -> 
                                                                                  (concat__d0 (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_3_8 -> 
                                                                                    (match _lh_listcomp_fun_para_3_8 with
                                                                                      | `LH_C(_lh_listcomp_fun_ls_h_3_8, _lh_listcomp_fun_ls_t_3_8) -> 
                                                                                        (`LH_C((((solve__d0 _lh_solve_arg1_1) _lh_listcomp_fun_ls_h_3_8) _lh_solve_LH_C_0_6_2), (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_3_8)))
                                                                                      | `LH_N -> 
                                                                                        (`LH_N))) in
                                                                                    (_lh_listcomp_fun_3_8 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_6_1))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_1_3_2 = _lh_solve_arg1_1 in
                                                                                    (match _lh_matchIdent_1_3_2 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_1_0, _lh_solve_LH_P2_1_1_1_0) -> 
                                                                                        (let rec rs_1_1_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_0) _lh_solve_arg3_1) in
                                                                                          (if (not (null__d0 rs_1_1_2)) then
                                                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_2)
                                                                                          else
                                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_1_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_1_3_3 = _lh_solve_arg1_1 in
                                                                                (match _lh_matchIdent_1_3_3 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_1_1, _lh_solve_LH_P2_1_1_1_1) -> 
                                                                                    (let rec rs_1_1_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_1) _lh_solve_arg3_1) in
                                                                                      (if (not (null__d0 rs_1_1_3)) then
                                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_3)
                                                                                      else
                                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_1_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_1_3_4 = _lh_solve_arg1_1 in
                                                                            (match _lh_matchIdent_1_3_4 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_1_1_2, _lh_solve_LH_P2_1_1_1_2) -> 
                                                                                (let rec rs_1_1_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_2) _lh_solve_arg3_1) in
                                                                                  (if (not (null__d0 rs_1_1_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_1_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_1_3_5 = _lh_solve_arg1_1 in
                                                                        (match _lh_matchIdent_1_3_5 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_1_1_3, _lh_solve_LH_P2_1_1_1_3) -> 
                                                                            (let rec rs_1_1_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_3) _lh_solve_arg3_1) in
                                                                              (if (not (null__d0 rs_1_1_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_1_1_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_1_3_6 = _lh_solve_arg1_1 in
                                                                    (match _lh_matchIdent_1_3_6 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_1_4, _lh_solve_LH_P2_1_1_1_4) -> 
                                                                        (let rec rs_1_1_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_4) _lh_solve_arg3_1) in
                                                                          (if (not (null__d0 rs_1_1_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_1_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_3_7 = _lh_solve_arg1_1 in
                                                                (match _lh_matchIdent_1_3_7 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_1_5, _lh_solve_LH_P2_1_1_1_5) -> 
                                                                    (let rec rs_1_1_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_5) _lh_solve_arg3_1) in
                                                                      (if (not (null__d0 rs_1_1_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_1_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_3_8 = _lh_solve_arg1_1 in
                                                            (match _lh_matchIdent_1_3_8 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_1_6, _lh_solve_LH_P2_1_1_1_6) -> 
                                                                (let rec rs_1_1_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_6) _lh_solve_arg3_1) in
                                                                  (if (not (null__d0 rs_1_1_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_1_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_3_9 = _lh_solve_arg1_1 in
                                                        (match _lh_matchIdent_1_3_9 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_1_7, _lh_solve_LH_P2_1_1_1_7) -> 
                                                            (let rec rs_1_1_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_7) _lh_solve_arg3_1) in
                                                              (if (not (null__d0 rs_1_1_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_1_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_1_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_4_0 = _lh_solve_arg1_1 in
                                                    (match _lh_matchIdent_1_4_0 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_1_8, _lh_solve_LH_P2_1_1_1_8) -> 
                                                        (let rec rs_1_2_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_8) _lh_solve_arg3_1) in
                                                          (if (not (null__d0 rs_1_2_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_1_8) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_4_1 = _lh_solve_arg1_1 in
                                                (match _lh_matchIdent_1_4_1 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_1_9, _lh_solve_LH_P2_1_1_1_9) -> 
                                                    (let rec rs_1_2_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_1_9) _lh_solve_arg3_1) in
                                                      (if (not (null__d0 rs_1_2_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_1_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_4_2 = _lh_solve_arg1_1 in
                                            (match _lh_matchIdent_1_4_2 with
                                              | `LH_P2(_lh_solve_LH_P2_0_1_2_0, _lh_solve_LH_P2_1_1_2_0) -> 
                                                (let rec rs_1_2_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_0) _lh_solve_arg3_1) in
                                                  (if (not (null__d0 rs_1_2_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_1_2_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                              | _ -> 
                                                (failwith "error")))))
                                | _ -> 
                                  (match _lh_solve_arg3_1 with
                                    | `Term(_lh_solve_Term_0_1_3, _lh_solve_Term_1_1_3) -> 
                                      (match _lh_solve_Term_0_1_3 with
                                        | `LH_C(_lh_solve_LH_C_0_6_3, _lh_solve_LH_C_1_6_3) -> 
                                          (match _lh_solve_LH_C_0_6_3 with
                                            | 'a' -> 
                                              (match _lh_solve_LH_C_1_6_3 with
                                                | `LH_C(_lh_solve_LH_C_0_6_4, _lh_solve_LH_C_1_6_4) -> 
                                                  (match _lh_solve_LH_C_0_6_4 with
                                                    | 'n' -> 
                                                      (match _lh_solve_LH_C_1_6_4 with
                                                        | `LH_C(_lh_solve_LH_C_0_6_5, _lh_solve_LH_C_1_6_5) -> 
                                                          (match _lh_solve_LH_C_0_6_5 with
                                                            | 'd' -> 
                                                              (match _lh_solve_LH_C_1_6_5 with
                                                                | `LH_N -> 
                                                                  (match _lh_solve_Term_1_1_3 with
                                                                    | `LH_C(_lh_solve_LH_C_0_6_6, _lh_solve_LH_C_1_6_6) -> 
                                                                      (match _lh_solve_LH_C_1_6_6 with
                                                                        | `LH_C(_lh_solve_LH_C_0_6_7, _lh_solve_LH_C_1_6_7) -> 
                                                                          (match _lh_solve_LH_C_1_6_7 with
                                                                            | `LH_N -> 
                                                                              (concat__d0 (let rec _lh_listcomp_fun_3_9 = (fun _lh_listcomp_fun_para_3_9 -> 
                                                                                (match _lh_listcomp_fun_para_3_9 with
                                                                                  | `LH_C(_lh_listcomp_fun_ls_h_3_9, _lh_listcomp_fun_ls_t_3_9) -> 
                                                                                    (`LH_C((((solve__d0 _lh_solve_arg1_1) _lh_listcomp_fun_ls_h_3_9) _lh_solve_LH_C_0_6_7), (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_3_9)))
                                                                                  | `LH_N -> 
                                                                                    (`LH_N))) in
                                                                                (_lh_listcomp_fun_3_9 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_6_6))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_1_4_3 = _lh_solve_arg1_1 in
                                                                                (match _lh_matchIdent_1_4_3 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_2_1, _lh_solve_LH_P2_1_1_2_1) -> 
                                                                                    (let rec rs_1_2_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_1) _lh_solve_arg3_1) in
                                                                                      (if (not (null__d0 rs_1_2_3)) then
                                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_3)
                                                                                      else
                                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_2_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_1_4_4 = _lh_solve_arg1_1 in
                                                                            (match _lh_matchIdent_1_4_4 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_1_2_2, _lh_solve_LH_P2_1_1_2_2) -> 
                                                                                (let rec rs_1_2_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_2) _lh_solve_arg3_1) in
                                                                                  (if (not (null__d0 rs_1_2_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_2_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_1_4_5 = _lh_solve_arg1_1 in
                                                                        (match _lh_matchIdent_1_4_5 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_1_2_3, _lh_solve_LH_P2_1_1_2_3) -> 
                                                                            (let rec rs_1_2_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_3) _lh_solve_arg3_1) in
                                                                              (if (not (null__d0 rs_1_2_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_1_2_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_1_4_6 = _lh_solve_arg1_1 in
                                                                    (match _lh_matchIdent_1_4_6 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_2_4, _lh_solve_LH_P2_1_1_2_4) -> 
                                                                        (let rec rs_1_2_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_4) _lh_solve_arg3_1) in
                                                                          (if (not (null__d0 rs_1_2_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_2_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_4_7 = _lh_solve_arg1_1 in
                                                                (match _lh_matchIdent_1_4_7 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_2_5, _lh_solve_LH_P2_1_1_2_5) -> 
                                                                    (let rec rs_1_2_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_5) _lh_solve_arg3_1) in
                                                                      (if (not (null__d0 rs_1_2_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_2_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_4_8 = _lh_solve_arg1_1 in
                                                            (match _lh_matchIdent_1_4_8 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_2_6, _lh_solve_LH_P2_1_1_2_6) -> 
                                                                (let rec rs_1_2_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_6) _lh_solve_arg3_1) in
                                                                  (if (not (null__d0 rs_1_2_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_2_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_4_9 = _lh_solve_arg1_1 in
                                                        (match _lh_matchIdent_1_4_9 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_2_7, _lh_solve_LH_P2_1_1_2_7) -> 
                                                            (let rec rs_1_2_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_7) _lh_solve_arg3_1) in
                                                              (if (not (null__d0 rs_1_2_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_2_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_2_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_5_0 = _lh_solve_arg1_1 in
                                                    (match _lh_matchIdent_1_5_0 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_2_8, _lh_solve_LH_P2_1_1_2_8) -> 
                                                        (let rec rs_1_3_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_8) _lh_solve_arg3_1) in
                                                          (if (not (null__d0 rs_1_3_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_2_8) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_5_1 = _lh_solve_arg1_1 in
                                                (match _lh_matchIdent_1_5_1 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_2_9, _lh_solve_LH_P2_1_1_2_9) -> 
                                                    (let rec rs_1_3_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_2_9) _lh_solve_arg3_1) in
                                                      (if (not (null__d0 rs_1_3_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_2_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_5_2 = _lh_solve_arg1_1 in
                                            (match _lh_matchIdent_1_5_2 with
                                              | `LH_P2(_lh_solve_LH_P2_0_1_3_0, _lh_solve_LH_P2_1_1_3_0) -> 
                                                (let rec rs_1_3_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_0) _lh_solve_arg3_1) in
                                                  (if (not (null__d0 rs_1_3_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_1_3_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_5_3 = _lh_solve_arg1_1 in
                                        (match _lh_matchIdent_1_5_3 with
                                          | `LH_P2(_lh_solve_LH_P2_0_1_3_1, _lh_solve_LH_P2_1_1_3_1) -> 
                                            (let rec rs_1_3_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_1) _lh_solve_arg3_1) in
                                              (if (not (null__d0 rs_1_3_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_1_3_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                          | _ -> 
                                            (failwith "error")))))
                            | _ -> 
                              (match _lh_solve_arg3_1 with
                                | `Term(_lh_solve_Term_0_1_4, _lh_solve_Term_1_1_4) -> 
                                  (match _lh_solve_Term_0_1_4 with
                                    | `LH_C(_lh_solve_LH_C_0_6_8, _lh_solve_LH_C_1_6_8) -> 
                                      (match _lh_solve_LH_C_0_6_8 with
                                        | 'a' -> 
                                          (match _lh_solve_LH_C_1_6_8 with
                                            | `LH_C(_lh_solve_LH_C_0_6_9, _lh_solve_LH_C_1_6_9) -> 
                                              (match _lh_solve_LH_C_0_6_9 with
                                                | 'n' -> 
                                                  (match _lh_solve_LH_C_1_6_9 with
                                                    | `LH_C(_lh_solve_LH_C_0_7_0, _lh_solve_LH_C_1_7_0) -> 
                                                      (match _lh_solve_LH_C_0_7_0 with
                                                        | 'd' -> 
                                                          (match _lh_solve_LH_C_1_7_0 with
                                                            | `LH_N -> 
                                                              (match _lh_solve_Term_1_1_4 with
                                                                | `LH_C(_lh_solve_LH_C_0_7_1, _lh_solve_LH_C_1_7_1) -> 
                                                                  (match _lh_solve_LH_C_1_7_1 with
                                                                    | `LH_C(_lh_solve_LH_C_0_7_2, _lh_solve_LH_C_1_7_2) -> 
                                                                      (match _lh_solve_LH_C_1_7_2 with
                                                                        | `LH_N -> 
                                                                          (concat__d0 (let rec _lh_listcomp_fun_4_0 = (fun _lh_listcomp_fun_para_4_0 -> 
                                                                            (match _lh_listcomp_fun_para_4_0 with
                                                                              | `LH_C(_lh_listcomp_fun_ls_h_4_0, _lh_listcomp_fun_ls_t_4_0) -> 
                                                                                (`LH_C((((solve__d0 _lh_solve_arg1_1) _lh_listcomp_fun_ls_h_4_0) _lh_solve_LH_C_0_7_2), (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_4_0)))
                                                                              | `LH_N -> 
                                                                                (`LH_N))) in
                                                                            (_lh_listcomp_fun_4_0 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_7_1))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_1_5_4 = _lh_solve_arg1_1 in
                                                                            (match _lh_matchIdent_1_5_4 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_1_3_2, _lh_solve_LH_P2_1_1_3_2) -> 
                                                                                (let rec rs_1_3_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_2) _lh_solve_arg3_1) in
                                                                                  (if (not (null__d0 rs_1_3_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_3_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_1_5_5 = _lh_solve_arg1_1 in
                                                                        (match _lh_matchIdent_1_5_5 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_1_3_3, _lh_solve_LH_P2_1_1_3_3) -> 
                                                                            (let rec rs_1_3_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_3) _lh_solve_arg3_1) in
                                                                              (if (not (null__d0 rs_1_3_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_1_3_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_1_5_6 = _lh_solve_arg1_1 in
                                                                    (match _lh_matchIdent_1_5_6 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_3_4, _lh_solve_LH_P2_1_1_3_4) -> 
                                                                        (let rec rs_1_3_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_4) _lh_solve_arg3_1) in
                                                                          (if (not (null__d0 rs_1_3_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_3_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_5_7 = _lh_solve_arg1_1 in
                                                                (match _lh_matchIdent_1_5_7 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_3_5, _lh_solve_LH_P2_1_1_3_5) -> 
                                                                    (let rec rs_1_3_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_5) _lh_solve_arg3_1) in
                                                                      (if (not (null__d0 rs_1_3_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_3_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_5_8 = _lh_solve_arg1_1 in
                                                            (match _lh_matchIdent_1_5_8 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_3_6, _lh_solve_LH_P2_1_1_3_6) -> 
                                                                (let rec rs_1_3_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_6) _lh_solve_arg3_1) in
                                                                  (if (not (null__d0 rs_1_3_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_3_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_5_9 = _lh_solve_arg1_1 in
                                                        (match _lh_matchIdent_1_5_9 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_3_7, _lh_solve_LH_P2_1_1_3_7) -> 
                                                            (let rec rs_1_3_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_7) _lh_solve_arg3_1) in
                                                              (if (not (null__d0 rs_1_3_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_3_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_3_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_6_0 = _lh_solve_arg1_1 in
                                                    (match _lh_matchIdent_1_6_0 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_3_8, _lh_solve_LH_P2_1_1_3_8) -> 
                                                        (let rec rs_1_4_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_8) _lh_solve_arg3_1) in
                                                          (if (not (null__d0 rs_1_4_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_3_8) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_6_1 = _lh_solve_arg1_1 in
                                                (match _lh_matchIdent_1_6_1 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_3_9, _lh_solve_LH_P2_1_1_3_9) -> 
                                                    (let rec rs_1_4_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_3_9) _lh_solve_arg3_1) in
                                                      (if (not (null__d0 rs_1_4_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_3_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_6_2 = _lh_solve_arg1_1 in
                                            (match _lh_matchIdent_1_6_2 with
                                              | `LH_P2(_lh_solve_LH_P2_0_1_4_0, _lh_solve_LH_P2_1_1_4_0) -> 
                                                (let rec rs_1_4_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_0) _lh_solve_arg3_1) in
                                                  (if (not (null__d0 rs_1_4_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_1_4_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_6_3 = _lh_solve_arg1_1 in
                                        (match _lh_matchIdent_1_6_3 with
                                          | `LH_P2(_lh_solve_LH_P2_0_1_4_1, _lh_solve_LH_P2_1_1_4_1) -> 
                                            (let rec rs_1_4_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_1) _lh_solve_arg3_1) in
                                              (if (not (null__d0 rs_1_4_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_1_4_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_6_4 = _lh_solve_arg1_1 in
                                    (match _lh_matchIdent_1_6_4 with
                                      | `LH_P2(_lh_solve_LH_P2_0_1_4_2, _lh_solve_LH_P2_1_1_4_2) -> 
                                        (let rec rs_1_4_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_2) _lh_solve_arg3_1) in
                                          (if (not (null__d0 rs_1_4_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_1_4_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                      | _ -> 
                                        (failwith "error")))))
                        | _ -> 
                          (match _lh_solve_arg3_1 with
                            | `Term(_lh_solve_Term_0_1_5, _lh_solve_Term_1_1_5) -> 
                              (match _lh_solve_Term_0_1_5 with
                                | `LH_C(_lh_solve_LH_C_0_7_3, _lh_solve_LH_C_1_7_3) -> 
                                  (match _lh_solve_LH_C_0_7_3 with
                                    | 'a' -> 
                                      (match _lh_solve_LH_C_1_7_3 with
                                        | `LH_C(_lh_solve_LH_C_0_7_4, _lh_solve_LH_C_1_7_4) -> 
                                          (match _lh_solve_LH_C_0_7_4 with
                                            | 'n' -> 
                                              (match _lh_solve_LH_C_1_7_4 with
                                                | `LH_C(_lh_solve_LH_C_0_7_5, _lh_solve_LH_C_1_7_5) -> 
                                                  (match _lh_solve_LH_C_0_7_5 with
                                                    | 'd' -> 
                                                      (match _lh_solve_LH_C_1_7_5 with
                                                        | `LH_N -> 
                                                          (match _lh_solve_Term_1_1_5 with
                                                            | `LH_C(_lh_solve_LH_C_0_7_6, _lh_solve_LH_C_1_7_6) -> 
                                                              (match _lh_solve_LH_C_1_7_6 with
                                                                | `LH_C(_lh_solve_LH_C_0_7_7, _lh_solve_LH_C_1_7_7) -> 
                                                                  (match _lh_solve_LH_C_1_7_7 with
                                                                    | `LH_N -> 
                                                                      (concat__d0 (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_4_1 -> 
                                                                        (match _lh_listcomp_fun_para_4_1 with
                                                                          | `LH_C(_lh_listcomp_fun_ls_h_4_1, _lh_listcomp_fun_ls_t_4_1) -> 
                                                                            (`LH_C((((solve__d0 _lh_solve_arg1_1) _lh_listcomp_fun_ls_h_4_1) _lh_solve_LH_C_0_7_7), (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_4_1)))
                                                                          | `LH_N -> 
                                                                            (`LH_N))) in
                                                                        (_lh_listcomp_fun_4_1 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_7_6))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_1_6_5 = _lh_solve_arg1_1 in
                                                                        (match _lh_matchIdent_1_6_5 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_1_4_3, _lh_solve_LH_P2_1_1_4_3) -> 
                                                                            (let rec rs_1_4_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_3) _lh_solve_arg3_1) in
                                                                              (if (not (null__d0 rs_1_4_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_1_4_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_1_6_6 = _lh_solve_arg1_1 in
                                                                    (match _lh_matchIdent_1_6_6 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_4_4, _lh_solve_LH_P2_1_1_4_4) -> 
                                                                        (let rec rs_1_4_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_4) _lh_solve_arg3_1) in
                                                                          (if (not (null__d0 rs_1_4_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_4_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_6_7 = _lh_solve_arg1_1 in
                                                                (match _lh_matchIdent_1_6_7 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_4_5, _lh_solve_LH_P2_1_1_4_5) -> 
                                                                    (let rec rs_1_4_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_5) _lh_solve_arg3_1) in
                                                                      (if (not (null__d0 rs_1_4_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_4_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_6_8 = _lh_solve_arg1_1 in
                                                            (match _lh_matchIdent_1_6_8 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_4_6, _lh_solve_LH_P2_1_1_4_6) -> 
                                                                (let rec rs_1_4_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_6) _lh_solve_arg3_1) in
                                                                  (if (not (null__d0 rs_1_4_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_4_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_6_9 = _lh_solve_arg1_1 in
                                                        (match _lh_matchIdent_1_6_9 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_4_7, _lh_solve_LH_P2_1_1_4_7) -> 
                                                            (let rec rs_1_4_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_7) _lh_solve_arg3_1) in
                                                              (if (not (null__d0 rs_1_4_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_4_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_4_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_7_0 = _lh_solve_arg1_1 in
                                                    (match _lh_matchIdent_1_7_0 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_4_8, _lh_solve_LH_P2_1_1_4_8) -> 
                                                        (let rec rs_1_5_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_8) _lh_solve_arg3_1) in
                                                          (if (not (null__d0 rs_1_5_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_4_8) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_7_1 = _lh_solve_arg1_1 in
                                                (match _lh_matchIdent_1_7_1 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_4_9, _lh_solve_LH_P2_1_1_4_9) -> 
                                                    (let rec rs_1_5_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_4_9) _lh_solve_arg3_1) in
                                                      (if (not (null__d0 rs_1_5_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_4_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_7_2 = _lh_solve_arg1_1 in
                                            (match _lh_matchIdent_1_7_2 with
                                              | `LH_P2(_lh_solve_LH_P2_0_1_5_0, _lh_solve_LH_P2_1_1_5_0) -> 
                                                (let rec rs_1_5_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_0) _lh_solve_arg3_1) in
                                                  (if (not (null__d0 rs_1_5_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_1_5_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_7_3 = _lh_solve_arg1_1 in
                                        (match _lh_matchIdent_1_7_3 with
                                          | `LH_P2(_lh_solve_LH_P2_0_1_5_1, _lh_solve_LH_P2_1_1_5_1) -> 
                                            (let rec rs_1_5_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_1) _lh_solve_arg3_1) in
                                              (if (not (null__d0 rs_1_5_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_1_5_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_7_4 = _lh_solve_arg1_1 in
                                    (match _lh_matchIdent_1_7_4 with
                                      | `LH_P2(_lh_solve_LH_P2_0_1_5_2, _lh_solve_LH_P2_1_1_5_2) -> 
                                        (let rec rs_1_5_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_2) _lh_solve_arg3_1) in
                                          (if (not (null__d0 rs_1_5_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_1_5_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_7_5 = _lh_solve_arg1_1 in
                                (match _lh_matchIdent_1_7_5 with
                                  | `LH_P2(_lh_solve_LH_P2_0_1_5_3, _lh_solve_LH_P2_1_1_5_3) -> 
                                    (let rec rs_1_5_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_3) _lh_solve_arg3_1) in
                                      (if (not (null__d0 rs_1_5_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_1_5_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                  | _ -> 
                                    (failwith "error")))))
                    | _ -> 
                      (match _lh_solve_arg3_1 with
                        | `Term(_lh_solve_Term_0_1_6, _lh_solve_Term_1_1_6) -> 
                          (match _lh_solve_Term_0_1_6 with
                            | `LH_C(_lh_solve_LH_C_0_7_8, _lh_solve_LH_C_1_7_8) -> 
                              (match _lh_solve_LH_C_0_7_8 with
                                | 'a' -> 
                                  (match _lh_solve_LH_C_1_7_8 with
                                    | `LH_C(_lh_solve_LH_C_0_7_9, _lh_solve_LH_C_1_7_9) -> 
                                      (match _lh_solve_LH_C_0_7_9 with
                                        | 'n' -> 
                                          (match _lh_solve_LH_C_1_7_9 with
                                            | `LH_C(_lh_solve_LH_C_0_8_0, _lh_solve_LH_C_1_8_0) -> 
                                              (match _lh_solve_LH_C_0_8_0 with
                                                | 'd' -> 
                                                  (match _lh_solve_LH_C_1_8_0 with
                                                    | `LH_N -> 
                                                      (match _lh_solve_Term_1_1_6 with
                                                        | `LH_C(_lh_solve_LH_C_0_8_1, _lh_solve_LH_C_1_8_1) -> 
                                                          (match _lh_solve_LH_C_1_8_1 with
                                                            | `LH_C(_lh_solve_LH_C_0_8_2, _lh_solve_LH_C_1_8_2) -> 
                                                              (match _lh_solve_LH_C_1_8_2 with
                                                                | `LH_N -> 
                                                                  (concat__d0 (let rec _lh_listcomp_fun_4_2 = (fun _lh_listcomp_fun_para_4_2 -> 
                                                                    (match _lh_listcomp_fun_para_4_2 with
                                                                      | `LH_C(_lh_listcomp_fun_ls_h_4_2, _lh_listcomp_fun_ls_t_4_2) -> 
                                                                        (`LH_C((((solve__d0 _lh_solve_arg1_1) _lh_listcomp_fun_ls_h_4_2) _lh_solve_LH_C_0_8_2), (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_4_2)))
                                                                      | `LH_N -> 
                                                                        (`LH_N))) in
                                                                    (_lh_listcomp_fun_4_2 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_8_1))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_1_7_6 = _lh_solve_arg1_1 in
                                                                    (match _lh_matchIdent_1_7_6 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_5_4, _lh_solve_LH_P2_1_1_5_4) -> 
                                                                        (let rec rs_1_5_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_4) _lh_solve_arg3_1) in
                                                                          (if (not (null__d0 rs_1_5_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_5_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_7_7 = _lh_solve_arg1_1 in
                                                                (match _lh_matchIdent_1_7_7 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_5_5, _lh_solve_LH_P2_1_1_5_5) -> 
                                                                    (let rec rs_1_5_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_5) _lh_solve_arg3_1) in
                                                                      (if (not (null__d0 rs_1_5_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_5_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_7_8 = _lh_solve_arg1_1 in
                                                            (match _lh_matchIdent_1_7_8 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_5_6, _lh_solve_LH_P2_1_1_5_6) -> 
                                                                (let rec rs_1_5_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_6) _lh_solve_arg3_1) in
                                                                  (if (not (null__d0 rs_1_5_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_5_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_7_9 = _lh_solve_arg1_1 in
                                                        (match _lh_matchIdent_1_7_9 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_5_7, _lh_solve_LH_P2_1_1_5_7) -> 
                                                            (let rec rs_1_5_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_7) _lh_solve_arg3_1) in
                                                              (if (not (null__d0 rs_1_5_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_5_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_5_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_8_0 = _lh_solve_arg1_1 in
                                                    (match _lh_matchIdent_1_8_0 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_5_8, _lh_solve_LH_P2_1_1_5_8) -> 
                                                        (let rec rs_1_6_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_8) _lh_solve_arg3_1) in
                                                          (if (not (null__d0 rs_1_6_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_5_8) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_8_1 = _lh_solve_arg1_1 in
                                                (match _lh_matchIdent_1_8_1 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_5_9, _lh_solve_LH_P2_1_1_5_9) -> 
                                                    (let rec rs_1_6_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_5_9) _lh_solve_arg3_1) in
                                                      (if (not (null__d0 rs_1_6_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_5_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_8_2 = _lh_solve_arg1_1 in
                                            (match _lh_matchIdent_1_8_2 with
                                              | `LH_P2(_lh_solve_LH_P2_0_1_6_0, _lh_solve_LH_P2_1_1_6_0) -> 
                                                (let rec rs_1_6_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_0) _lh_solve_arg3_1) in
                                                  (if (not (null__d0 rs_1_6_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_1_6_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_8_3 = _lh_solve_arg1_1 in
                                        (match _lh_matchIdent_1_8_3 with
                                          | `LH_P2(_lh_solve_LH_P2_0_1_6_1, _lh_solve_LH_P2_1_1_6_1) -> 
                                            (let rec rs_1_6_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_1) _lh_solve_arg3_1) in
                                              (if (not (null__d0 rs_1_6_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_1_6_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_8_4 = _lh_solve_arg1_1 in
                                    (match _lh_matchIdent_1_8_4 with
                                      | `LH_P2(_lh_solve_LH_P2_0_1_6_2, _lh_solve_LH_P2_1_1_6_2) -> 
                                        (let rec rs_1_6_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_2) _lh_solve_arg3_1) in
                                          (if (not (null__d0 rs_1_6_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_1_6_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_8_5 = _lh_solve_arg1_1 in
                                (match _lh_matchIdent_1_8_5 with
                                  | `LH_P2(_lh_solve_LH_P2_0_1_6_3, _lh_solve_LH_P2_1_1_6_3) -> 
                                    (let rec rs_1_6_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_3) _lh_solve_arg3_1) in
                                      (if (not (null__d0 rs_1_6_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_1_6_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_8_6 = _lh_solve_arg1_1 in
                            (match _lh_matchIdent_1_8_6 with
                              | `LH_P2(_lh_solve_LH_P2_0_1_6_4, _lh_solve_LH_P2_1_1_6_4) -> 
                                (let rec rs_1_6_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_4) _lh_solve_arg3_1) in
                                  (if (not (null__d0 rs_1_6_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_1_6_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                              | _ -> 
                                (failwith "error")))))
                | _ -> 
                  (match _lh_solve_arg3_1 with
                    | `Term(_lh_solve_Term_0_1_7, _lh_solve_Term_1_1_7) -> 
                      (match _lh_solve_Term_0_1_7 with
                        | `LH_C(_lh_solve_LH_C_0_8_3, _lh_solve_LH_C_1_8_3) -> 
                          (match _lh_solve_LH_C_0_8_3 with
                            | 'a' -> 
                              (match _lh_solve_LH_C_1_8_3 with
                                | `LH_C(_lh_solve_LH_C_0_8_4, _lh_solve_LH_C_1_8_4) -> 
                                  (match _lh_solve_LH_C_0_8_4 with
                                    | 'n' -> 
                                      (match _lh_solve_LH_C_1_8_4 with
                                        | `LH_C(_lh_solve_LH_C_0_8_5, _lh_solve_LH_C_1_8_5) -> 
                                          (match _lh_solve_LH_C_0_8_5 with
                                            | 'd' -> 
                                              (match _lh_solve_LH_C_1_8_5 with
                                                | `LH_N -> 
                                                  (match _lh_solve_Term_1_1_7 with
                                                    | `LH_C(_lh_solve_LH_C_0_8_6, _lh_solve_LH_C_1_8_6) -> 
                                                      (match _lh_solve_LH_C_1_8_6 with
                                                        | `LH_C(_lh_solve_LH_C_0_8_7, _lh_solve_LH_C_1_8_7) -> 
                                                          (match _lh_solve_LH_C_1_8_7 with
                                                            | `LH_N -> 
                                                              (concat__d0 (let rec _lh_listcomp_fun_4_3 = (fun _lh_listcomp_fun_para_4_3 -> 
                                                                (match _lh_listcomp_fun_para_4_3 with
                                                                  | `LH_C(_lh_listcomp_fun_ls_h_4_3, _lh_listcomp_fun_ls_t_4_3) -> 
                                                                    (`LH_C((((solve__d0 _lh_solve_arg1_1) _lh_listcomp_fun_ls_h_4_3) _lh_solve_LH_C_0_8_7), (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_4_3)))
                                                                  | `LH_N -> 
                                                                    (`LH_N))) in
                                                                (_lh_listcomp_fun_4_3 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_8_6))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_8_7 = _lh_solve_arg1_1 in
                                                                (match _lh_matchIdent_1_8_7 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_6_5, _lh_solve_LH_P2_1_1_6_5) -> 
                                                                    (let rec rs_1_6_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_5) _lh_solve_arg3_1) in
                                                                      (if (not (null__d0 rs_1_6_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_6_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_8_8 = _lh_solve_arg1_1 in
                                                            (match _lh_matchIdent_1_8_8 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_6_6, _lh_solve_LH_P2_1_1_6_6) -> 
                                                                (let rec rs_1_6_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_6) _lh_solve_arg3_1) in
                                                                  (if (not (null__d0 rs_1_6_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_6_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_8_9 = _lh_solve_arg1_1 in
                                                        (match _lh_matchIdent_1_8_9 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_6_7, _lh_solve_LH_P2_1_1_6_7) -> 
                                                            (let rec rs_1_6_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_7) _lh_solve_arg3_1) in
                                                              (if (not (null__d0 rs_1_6_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_6_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_6_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_9_0 = _lh_solve_arg1_1 in
                                                    (match _lh_matchIdent_1_9_0 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_6_8, _lh_solve_LH_P2_1_1_6_8) -> 
                                                        (let rec rs_1_7_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_8) _lh_solve_arg3_1) in
                                                          (if (not (null__d0 rs_1_7_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_6_8) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_9_1 = _lh_solve_arg1_1 in
                                                (match _lh_matchIdent_1_9_1 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_6_9, _lh_solve_LH_P2_1_1_6_9) -> 
                                                    (let rec rs_1_7_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_6_9) _lh_solve_arg3_1) in
                                                      (if (not (null__d0 rs_1_7_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_6_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_9_2 = _lh_solve_arg1_1 in
                                            (match _lh_matchIdent_1_9_2 with
                                              | `LH_P2(_lh_solve_LH_P2_0_1_7_0, _lh_solve_LH_P2_1_1_7_0) -> 
                                                (let rec rs_1_7_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_0) _lh_solve_arg3_1) in
                                                  (if (not (null__d0 rs_1_7_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_1_7_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_9_3 = _lh_solve_arg1_1 in
                                        (match _lh_matchIdent_1_9_3 with
                                          | `LH_P2(_lh_solve_LH_P2_0_1_7_1, _lh_solve_LH_P2_1_1_7_1) -> 
                                            (let rec rs_1_7_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_1) _lh_solve_arg3_1) in
                                              (if (not (null__d0 rs_1_7_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_1_7_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_9_4 = _lh_solve_arg1_1 in
                                    (match _lh_matchIdent_1_9_4 with
                                      | `LH_P2(_lh_solve_LH_P2_0_1_7_2, _lh_solve_LH_P2_1_1_7_2) -> 
                                        (let rec rs_1_7_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_2) _lh_solve_arg3_1) in
                                          (if (not (null__d0 rs_1_7_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_1_7_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_9_5 = _lh_solve_arg1_1 in
                                (match _lh_matchIdent_1_9_5 with
                                  | `LH_P2(_lh_solve_LH_P2_0_1_7_3, _lh_solve_LH_P2_1_1_7_3) -> 
                                    (let rec rs_1_7_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_3) _lh_solve_arg3_1) in
                                      (if (not (null__d0 rs_1_7_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_1_7_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_9_6 = _lh_solve_arg1_1 in
                            (match _lh_matchIdent_1_9_6 with
                              | `LH_P2(_lh_solve_LH_P2_0_1_7_4, _lh_solve_LH_P2_1_1_7_4) -> 
                                (let rec rs_1_7_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_4) _lh_solve_arg3_1) in
                                  (if (not (null__d0 rs_1_7_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_1_7_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_1_9_7 = _lh_solve_arg1_1 in
                        (match _lh_matchIdent_1_9_7 with
                          | `LH_P2(_lh_solve_LH_P2_0_1_7_5, _lh_solve_LH_P2_1_1_7_5) -> 
                            (let rec rs_1_7_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_5) _lh_solve_arg3_1) in
                              (if (not (null__d0 rs_1_7_7)) then
                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_7)
                              else
                                (((ask__d0 _lh_solve_LH_P2_1_1_7_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                          | _ -> 
                            (failwith "error")))))
            | _ -> 
              (match _lh_solve_arg3_1 with
                | `Term(_lh_solve_Term_0_1_8, _lh_solve_Term_1_1_8) -> 
                  (match _lh_solve_Term_0_1_8 with
                    | `LH_C(_lh_solve_LH_C_0_8_8, _lh_solve_LH_C_1_8_8) -> 
                      (match _lh_solve_LH_C_0_8_8 with
                        | 'a' -> 
                          (match _lh_solve_LH_C_1_8_8 with
                            | `LH_C(_lh_solve_LH_C_0_8_9, _lh_solve_LH_C_1_8_9) -> 
                              (match _lh_solve_LH_C_0_8_9 with
                                | 'n' -> 
                                  (match _lh_solve_LH_C_1_8_9 with
                                    | `LH_C(_lh_solve_LH_C_0_9_0, _lh_solve_LH_C_1_9_0) -> 
                                      (match _lh_solve_LH_C_0_9_0 with
                                        | 'd' -> 
                                          (match _lh_solve_LH_C_1_9_0 with
                                            | `LH_N -> 
                                              (match _lh_solve_Term_1_1_8 with
                                                | `LH_C(_lh_solve_LH_C_0_9_1, _lh_solve_LH_C_1_9_1) -> 
                                                  (match _lh_solve_LH_C_1_9_1 with
                                                    | `LH_C(_lh_solve_LH_C_0_9_2, _lh_solve_LH_C_1_9_2) -> 
                                                      (match _lh_solve_LH_C_1_9_2 with
                                                        | `LH_N -> 
                                                          (concat__d0 (let rec _lh_listcomp_fun_4_4 = (fun _lh_listcomp_fun_para_4_4 -> 
                                                            (match _lh_listcomp_fun_para_4_4 with
                                                              | `LH_C(_lh_listcomp_fun_ls_h_4_4, _lh_listcomp_fun_ls_t_4_4) -> 
                                                                (`LH_C((((solve__d0 _lh_solve_arg1_1) _lh_listcomp_fun_ls_h_4_4) _lh_solve_LH_C_0_9_2), (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_4_4)))
                                                              | `LH_N -> 
                                                                (`LH_N))) in
                                                            (_lh_listcomp_fun_4_4 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_9_1))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_9_8 = _lh_solve_arg1_1 in
                                                            (match _lh_matchIdent_1_9_8 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_7_6, _lh_solve_LH_P2_1_1_7_6) -> 
                                                                (let rec rs_1_7_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_6) _lh_solve_arg3_1) in
                                                                  (if (not (null__d0 rs_1_7_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_7_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_9_9 = _lh_solve_arg1_1 in
                                                        (match _lh_matchIdent_1_9_9 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_7_7, _lh_solve_LH_P2_1_1_7_7) -> 
                                                            (let rec rs_1_7_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_7) _lh_solve_arg3_1) in
                                                              (if (not (null__d0 rs_1_7_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_7_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_7_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_2_0_0 = _lh_solve_arg1_1 in
                                                    (match _lh_matchIdent_2_0_0 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_7_8, _lh_solve_LH_P2_1_1_7_8) -> 
                                                        (let rec rs_1_8_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_8) _lh_solve_arg3_1) in
                                                          (if (not (null__d0 rs_1_8_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_7_8) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_2_0_1 = _lh_solve_arg1_1 in
                                                (match _lh_matchIdent_2_0_1 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_7_9, _lh_solve_LH_P2_1_1_7_9) -> 
                                                    (let rec rs_1_8_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_7_9) _lh_solve_arg3_1) in
                                                      (if (not (null__d0 rs_1_8_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_7_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_2_0_2 = _lh_solve_arg1_1 in
                                            (match _lh_matchIdent_2_0_2 with
                                              | `LH_P2(_lh_solve_LH_P2_0_1_8_0, _lh_solve_LH_P2_1_1_8_0) -> 
                                                (let rec rs_1_8_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_0) _lh_solve_arg3_1) in
                                                  (if (not (null__d0 rs_1_8_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_1_8_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_2_0_3 = _lh_solve_arg1_1 in
                                        (match _lh_matchIdent_2_0_3 with
                                          | `LH_P2(_lh_solve_LH_P2_0_1_8_1, _lh_solve_LH_P2_1_1_8_1) -> 
                                            (let rec rs_1_8_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_1) _lh_solve_arg3_1) in
                                              (if (not (null__d0 rs_1_8_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_1_8_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_2_0_4 = _lh_solve_arg1_1 in
                                    (match _lh_matchIdent_2_0_4 with
                                      | `LH_P2(_lh_solve_LH_P2_0_1_8_2, _lh_solve_LH_P2_1_1_8_2) -> 
                                        (let rec rs_1_8_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_2) _lh_solve_arg3_1) in
                                          (if (not (null__d0 rs_1_8_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_1_8_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_2_0_5 = _lh_solve_arg1_1 in
                                (match _lh_matchIdent_2_0_5 with
                                  | `LH_P2(_lh_solve_LH_P2_0_1_8_3, _lh_solve_LH_P2_1_1_8_3) -> 
                                    (let rec rs_1_8_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_3) _lh_solve_arg3_1) in
                                      (if (not (null__d0 rs_1_8_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_1_8_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_2_0_6 = _lh_solve_arg1_1 in
                            (match _lh_matchIdent_2_0_6 with
                              | `LH_P2(_lh_solve_LH_P2_0_1_8_4, _lh_solve_LH_P2_1_1_8_4) -> 
                                (let rec rs_1_8_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_4) _lh_solve_arg3_1) in
                                  (if (not (null__d0 rs_1_8_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_1_8_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_2_0_7 = _lh_solve_arg1_1 in
                        (match _lh_matchIdent_2_0_7 with
                          | `LH_P2(_lh_solve_LH_P2_0_1_8_5, _lh_solve_LH_P2_1_1_8_5) -> 
                            (let rec rs_1_8_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_5) _lh_solve_arg3_1) in
                              (if (not (null__d0 rs_1_8_7)) then
                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_7)
                              else
                                (((ask__d0 _lh_solve_LH_P2_1_1_8_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_2_0_8 = _lh_solve_arg1_1 in
                    (match _lh_matchIdent_2_0_8 with
                      | `LH_P2(_lh_solve_LH_P2_0_1_8_6, _lh_solve_LH_P2_1_1_8_6) -> 
                        (let rec rs_1_8_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_6) _lh_solve_arg3_1) in
                          (if (not (null__d0 rs_1_8_8)) then
                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_8)
                          else
                            (((ask__d0 _lh_solve_LH_P2_1_1_8_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                      | _ -> 
                        (failwith "error")))))
        | _ -> 
          (match _lh_solve_arg3_1 with
            | `Term(_lh_solve_Term_0_1_9, _lh_solve_Term_1_1_9) -> 
              (match _lh_solve_Term_0_1_9 with
                | `LH_C(_lh_solve_LH_C_0_9_3, _lh_solve_LH_C_1_9_3) -> 
                  (match _lh_solve_LH_C_0_9_3 with
                    | 'a' -> 
                      (match _lh_solve_LH_C_1_9_3 with
                        | `LH_C(_lh_solve_LH_C_0_9_4, _lh_solve_LH_C_1_9_4) -> 
                          (match _lh_solve_LH_C_0_9_4 with
                            | 'n' -> 
                              (match _lh_solve_LH_C_1_9_4 with
                                | `LH_C(_lh_solve_LH_C_0_9_5, _lh_solve_LH_C_1_9_5) -> 
                                  (match _lh_solve_LH_C_0_9_5 with
                                    | 'd' -> 
                                      (match _lh_solve_LH_C_1_9_5 with
                                        | `LH_N -> 
                                          (match _lh_solve_Term_1_1_9 with
                                            | `LH_C(_lh_solve_LH_C_0_9_6, _lh_solve_LH_C_1_9_6) -> 
                                              (match _lh_solve_LH_C_1_9_6 with
                                                | `LH_C(_lh_solve_LH_C_0_9_7, _lh_solve_LH_C_1_9_7) -> 
                                                  (match _lh_solve_LH_C_1_9_7 with
                                                    | `LH_N -> 
                                                      (concat__d0 (let rec _lh_listcomp_fun_4_5 = (fun _lh_listcomp_fun_para_4_5 -> 
                                                        (match _lh_listcomp_fun_para_4_5 with
                                                          | `LH_C(_lh_listcomp_fun_ls_h_4_5, _lh_listcomp_fun_ls_t_4_5) -> 
                                                            (`LH_C((((solve__d0 _lh_solve_arg1_1) _lh_listcomp_fun_ls_h_4_5) _lh_solve_LH_C_0_9_7), (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_4_5)))
                                                          | `LH_N -> 
                                                            (`LH_N))) in
                                                        (_lh_listcomp_fun_4_5 (((solve__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_LH_C_0_9_6))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_2_0_9 = _lh_solve_arg1_1 in
                                                        (match _lh_matchIdent_2_0_9 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_8_7, _lh_solve_LH_P2_1_1_8_7) -> 
                                                            (let rec rs_1_8_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_7) _lh_solve_arg3_1) in
                                                              (if (not (null__d0 rs_1_8_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_8_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_8_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_2_1_0 = _lh_solve_arg1_1 in
                                                    (match _lh_matchIdent_2_1_0 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_8_8, _lh_solve_LH_P2_1_1_8_8) -> 
                                                        (let rec rs_1_9_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_8) _lh_solve_arg3_1) in
                                                          (if (not (null__d0 rs_1_9_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_8_8) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_2_1_1 = _lh_solve_arg1_1 in
                                                (match _lh_matchIdent_2_1_1 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_8_9, _lh_solve_LH_P2_1_1_8_9) -> 
                                                    (let rec rs_1_9_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_8_9) _lh_solve_arg3_1) in
                                                      (if (not (null__d0 rs_1_9_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_8_9) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_2_1_2 = _lh_solve_arg1_1 in
                                            (match _lh_matchIdent_2_1_2 with
                                              | `LH_P2(_lh_solve_LH_P2_0_1_9_0, _lh_solve_LH_P2_1_1_9_0) -> 
                                                (let rec rs_1_9_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_9_0) _lh_solve_arg3_1) in
                                                  (if (not (null__d0 rs_1_9_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_1_9_0) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_2_1_3 = _lh_solve_arg1_1 in
                                        (match _lh_matchIdent_2_1_3 with
                                          | `LH_P2(_lh_solve_LH_P2_0_1_9_1, _lh_solve_LH_P2_1_1_9_1) -> 
                                            (let rec rs_1_9_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_9_1) _lh_solve_arg3_1) in
                                              (if (not (null__d0 rs_1_9_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_1_9_1) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_2_1_4 = _lh_solve_arg1_1 in
                                    (match _lh_matchIdent_2_1_4 with
                                      | `LH_P2(_lh_solve_LH_P2_0_1_9_2, _lh_solve_LH_P2_1_1_9_2) -> 
                                        (let rec rs_1_9_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_9_2) _lh_solve_arg3_1) in
                                          (if (not (null__d0 rs_1_9_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_1_9_2) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_2_1_5 = _lh_solve_arg1_1 in
                                (match _lh_matchIdent_2_1_5 with
                                  | `LH_P2(_lh_solve_LH_P2_0_1_9_3, _lh_solve_LH_P2_1_1_9_3) -> 
                                    (let rec rs_1_9_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_9_3) _lh_solve_arg3_1) in
                                      (if (not (null__d0 rs_1_9_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_1_9_3) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_2_1_6 = _lh_solve_arg1_1 in
                            (match _lh_matchIdent_2_1_6 with
                              | `LH_P2(_lh_solve_LH_P2_0_1_9_4, _lh_solve_LH_P2_1_1_9_4) -> 
                                (let rec rs_1_9_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_9_4) _lh_solve_arg3_1) in
                                  (if (not (null__d0 rs_1_9_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_1_9_4) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_2_1_7 = _lh_solve_arg1_1 in
                        (match _lh_matchIdent_2_1_7 with
                          | `LH_P2(_lh_solve_LH_P2_0_1_9_5, _lh_solve_LH_P2_1_1_9_5) -> 
                            (let rec rs_1_9_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_9_5) _lh_solve_arg3_1) in
                              (if (not (null__d0 rs_1_9_7)) then
                                ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_7)
                              else
                                (((ask__d0 _lh_solve_LH_P2_1_1_9_5) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_2_1_8 = _lh_solve_arg1_1 in
                    (match _lh_matchIdent_2_1_8 with
                      | `LH_P2(_lh_solve_LH_P2_0_1_9_6, _lh_solve_LH_P2_1_1_9_6) -> 
                        (let rec rs_1_9_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_9_6) _lh_solve_arg3_1) in
                          (if (not (null__d0 rs_1_9_8)) then
                            ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_8)
                          else
                            (((ask__d0 _lh_solve_LH_P2_1_1_9_6) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_2_1_9 = _lh_solve_arg1_1 in
                (match _lh_matchIdent_2_1_9 with
                  | `LH_P2(_lh_solve_LH_P2_0_1_9_7, _lh_solve_LH_P2_1_1_9_7) -> 
                    (let rec rs_1_9_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_9_7) _lh_solve_arg3_1) in
                      (if (not (null__d0 rs_1_9_9)) then
                        ((((lookUp__d0 _lh_solve_arg1_1) _lh_solve_arg2_1) _lh_solve_arg3_1) rs_1_9_9)
                      else
                        (((ask__d0 _lh_solve_LH_P2_1_1_9_7) _lh_solve_arg2_1) _lh_solve_arg3_1)))
                  | _ -> 
                    (failwith "error"))))))
and sortKey__d0 _lh_sortKey_arg1_1 =
  (let rec insertKey_1 = (fun _lh_insertKey_arg1_1 _lh_insertKey_arg2_1 -> 
    (match _lh_insertKey_arg2_1 with
      | `LH_N -> 
        (`LH_C(_lh_insertKey_arg1_1, (`LH_N)))
      | _ -> 
        (match _lh_insertKey_arg1_1 with
          | `LH_P2(_lh_insertKey_LH_P2_0_2, _lh_insertKey_LH_P2_1_2) -> 
            (match _lh_insertKey_arg2_1 with
              | `LH_C(_lh_insertKey_LH_C_0_1, _lh_insertKey_LH_C_1_1) -> 
                (match _lh_insertKey_LH_C_0_1 with
                  | `LH_P2(_lh_insertKey_LH_P2_0_3, _lh_insertKey_LH_P2_1_3) -> 
                    (if (_lh_insertKey_LH_P2_0_2 <= _lh_insertKey_LH_P2_0_3) then
                      (`LH_C((`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_2, _lh_insertKey_LH_P2_1_2)), (`LH_P2(_lh_insertKey_LH_P2_0_3, _lh_insertKey_LH_P2_1_3)))), _lh_insertKey_LH_C_1_1))
                    else
                      (`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_3, _lh_insertKey_LH_P2_1_3)), ((insertKey_1 (`LH_P2(_lh_insertKey_LH_P2_0_2, _lh_insertKey_LH_P2_1_2))) _lh_insertKey_LH_C_1_1))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))) in
    (((foldr__d0 insertKey_1) (`LH_N)) _lh_sortKey_arg1_1))
and sortKey__d1 _lh_sortKey_arg1_2 =
  (let rec insertKey_2 = (fun _lh_insertKey_arg1_2 _lh_insertKey_arg2_2 -> 
    (match _lh_insertKey_arg2_2 with
      | `LH_N -> 
        (`LH_C(_lh_insertKey_arg1_2, (`LH_N)))
      | _ -> 
        (match _lh_insertKey_arg1_2 with
          | `LH_P2(_lh_insertKey_LH_P2_0_4, _lh_insertKey_LH_P2_1_4) -> 
            (match _lh_insertKey_arg2_2 with
              | `LH_C(_lh_insertKey_LH_C_0_2, _lh_insertKey_LH_C_1_2) -> 
                (match _lh_insertKey_LH_C_0_2 with
                  | `LH_P2(_lh_insertKey_LH_P2_0_5, _lh_insertKey_LH_P2_1_5) -> 
                    (if (_lh_insertKey_LH_P2_0_4 <= _lh_insertKey_LH_P2_0_5) then
                      (`LH_C((`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_4, _lh_insertKey_LH_P2_1_4)), (`LH_P2(_lh_insertKey_LH_P2_0_5, _lh_insertKey_LH_P2_1_5)))), _lh_insertKey_LH_C_1_2))
                    else
                      (`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_5, _lh_insertKey_LH_P2_1_5)), ((insertKey_2 (`LH_P2(_lh_insertKey_LH_P2_0_4, _lh_insertKey_LH_P2_1_4))) _lh_insertKey_LH_C_1_2))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))) in
    (((foldr__d1 insertKey_2) (`LH_N)) _lh_sortKey_arg1_2))
and split__d0 _lh_split_arg1_8 _lh_split_arg2_8 _lh_split_arg3_8 _lh_split_arg4_8 =
  (`Term(_lh_split_arg3_8, (`LH_C((_lh_split_arg2_8 ((takeWhile__d0 (fun x_2_6 -> 
    (not ((strEq__d1 x_2_6) _lh_split_arg3_8)))) _lh_split_arg1_8)), (`LH_C((_lh_split_arg4_8 (tail__d0 ((dropWhile__d0 (fun x_2_7 -> 
    (not ((strEq__d0 x_2_7) _lh_split_arg3_8)))) _lh_split_arg1_8))), (`LH_N)))))))
and split__d1 _lh_split_arg1_7 _lh_split_arg2_7 _lh_split_arg3_7 _lh_split_arg4_7 =
  (`Term(_lh_split_arg3_7, (`LH_C((_lh_split_arg2_7 ((takeWhile__d1 (fun x_2_4 -> 
    (not ((strEq__d3 x_2_4) _lh_split_arg3_7)))) _lh_split_arg1_7)), (`LH_C((_lh_split_arg4_7 (tail__d1 ((dropWhile__d1 (fun x_2_5 -> 
    (not ((strEq__d2 x_2_5) _lh_split_arg3_7)))) _lh_split_arg1_7))), (`LH_N)))))))
and split__d2 _lh_split_arg1_6 _lh_split_arg2_6 _lh_split_arg3_6 _lh_split_arg4_6 =
  (`Term(_lh_split_arg3_6, (`LH_C((_lh_split_arg2_6 ((takeWhile__d2 (fun x_2_0 -> 
    (not ((strEq__d5 x_2_0) _lh_split_arg3_6)))) _lh_split_arg1_6)), (`LH_C((_lh_split_arg4_6 (tail__d2 ((dropWhile__d2 (fun x_2_1 -> 
    (not ((strEq__d4 x_2_1) _lh_split_arg3_6)))) _lh_split_arg1_6))), (`LH_N)))))))
and split__d3 _lh_split_arg1_5 _lh_split_arg2_5 _lh_split_arg3_5 _lh_split_arg4_5 =
  (`Term(_lh_split_arg3_5, (`LH_C((_lh_split_arg2_5 ((takeWhile__d3 (fun x_1_8 -> 
    (not ((strEq__d7 x_1_8) _lh_split_arg3_5)))) _lh_split_arg1_5)), (`LH_C((_lh_split_arg4_5 (tail__d3 ((dropWhile__d3 (fun x_1_9 -> 
    (not ((strEq__d6 x_1_9) _lh_split_arg3_5)))) _lh_split_arg1_5))), (`LH_N)))))))
and split__d4 _lh_split_arg1_4 _lh_split_arg2_4 _lh_split_arg3_4 _lh_split_arg4_4 =
  (`Term(_lh_split_arg3_4, (`LH_C((_lh_split_arg2_4 ((takeWhile__d4 (fun x_1_5 -> 
    (not ((strEq__d9 x_1_5) _lh_split_arg3_4)))) _lh_split_arg1_4)), (`LH_C((_lh_split_arg4_4 (tail__d4 ((dropWhile__d4 (fun x_1_6 -> 
    (not ((strEq__d8 x_1_6) _lh_split_arg3_4)))) _lh_split_arg1_4))), (`LH_N)))))))
and split__d5 _lh_split_arg1_3 _lh_split_arg2_3 _lh_split_arg3_3 _lh_split_arg4_3 =
  (`Term(_lh_split_arg3_3, (`LH_C((_lh_split_arg2_3 ((takeWhile__d5 (fun x_1_2 -> 
    (not ((strEq__d1_d1 x_1_2) _lh_split_arg3_3)))) _lh_split_arg1_3)), (`LH_C((_lh_split_arg4_3 (tail__d7 ((dropWhile__d6 (fun x_1_3 -> 
    (not ((strEq__d1_d0 x_1_3) _lh_split_arg3_3)))) _lh_split_arg1_3))), (`LH_N)))))))
and split__d6 _lh_split_arg1_2 _lh_split_arg2_2 _lh_split_arg3_2 _lh_split_arg4_2 =
  (`Term(_lh_split_arg3_2, (`LH_C((_lh_split_arg2_2 ((takeWhile__d6 (fun x_9 -> 
    (not ((strEq__d1_d3 x_9) _lh_split_arg3_2)))) _lh_split_arg1_2)), (`LH_C((_lh_split_arg4_2 (tail__d8 ((dropWhile__d7 (fun x_1_0 -> 
    (not ((strEq__d1_d2 x_1_0) _lh_split_arg3_2)))) _lh_split_arg1_2))), (`LH_N)))))))
and split__d7 _lh_split_arg1_1 _lh_split_arg2_1 _lh_split_arg3_1 _lh_split_arg4_1 =
  (`Term(_lh_split_arg3_1, (`LH_C((_lh_split_arg2_1 ((takeWhile__d7 (fun x_7 -> 
    (not ((strEq__d1_d5 x_7) _lh_split_arg3_1)))) _lh_split_arg1_1)), (`LH_C((_lh_split_arg4_1 (tail__d9 ((dropWhile__d8 (fun x_8 -> 
    (not ((strEq__d1_d4 x_8) _lh_split_arg3_1)))) _lh_split_arg1_1))), (`LH_N)))))))
and strip__d0 _lh_strip_arg1_1 _lh_strip_arg2_1 =
  (match _lh_strip_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_strip_LH_C_0_1, _lh_strip_LH_C_1_1) -> 
      (match _lh_strip_LH_C_0_1 with
        | `Question(_lh_strip_Question_0_1) -> 
          (if ((inList__d1_d3 _lh_strip_Question_0_1) _lh_strip_arg1_1) then
            ((strip__d0 _lh_strip_arg1_1) _lh_strip_LH_C_1_1)
          else
            (`LH_C((`Question(_lh_strip_Question_0_1)), ((strip__d0 (`LH_C(_lh_strip_Question_0_1, _lh_strip_arg1_1))) _lh_strip_LH_C_1_1))))
        | _ -> 
          (`LH_C(_lh_strip_LH_C_0_1, ((strip__d0 _lh_strip_arg1_1) _lh_strip_LH_C_1_1))))
    | _ -> 
      (failwith "error"))
and subst__d0 _lh_subst_arg1_3 _lh_subst_arg2_3 =
  (match _lh_subst_arg2_3 with
    | `Term(_lh_subst_Term_0_3, _lh_subst_Term_1_3) -> 
      (`Term(_lh_subst_Term_0_3, (let rec _lh_listcomp_fun_4_9 = (fun _lh_listcomp_fun_para_4_9 -> 
        (match _lh_listcomp_fun_para_4_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_9, _lh_listcomp_fun_ls_t_4_9) -> 
            (`LH_C(((subst__d0 _lh_subst_arg1_3) _lh_listcomp_fun_ls_h_4_9), (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_4_9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_9 _lh_subst_Term_1_3))))
    | `Var(_lh_subst_Var_0_3) -> 
      (let rec lookup_4 = ((find__d0 _lh_subst_arg1_3) _lh_subst_Var_0_3) in
        (if (fails__d0 lookup_4) then
          (`Var(_lh_subst_Var_0_3))
        else
          ((subst__d0 _lh_subst_arg1_3) (answer__d0 lookup_4))))
    | _ -> 
      (failwith "error"))
and subst__d1 _lh_subst_arg1_4 _lh_subst_arg2_4 =
  (match _lh_subst_arg2_4 with
    | `Term(_lh_subst_Term_0_4, _lh_subst_Term_1_4) -> 
      (`Term(_lh_subst_Term_0_4, (let rec _lh_listcomp_fun_6_3 = (fun _lh_listcomp_fun_para_6_3 -> 
        (match _lh_listcomp_fun_para_6_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_6_3, _lh_listcomp_fun_ls_t_6_3) -> 
            (`LH_C(((subst__d1 _lh_subst_arg1_4) _lh_listcomp_fun_ls_h_6_3), (_lh_listcomp_fun_6_3 _lh_listcomp_fun_ls_t_6_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_6_3 _lh_subst_Term_1_4))))
    | `Var(_lh_subst_Var_0_4) -> 
      (let rec lookup_6 = ((find__d2 _lh_subst_arg1_4) _lh_subst_Var_0_4) in
        (if (fails__d1 lookup_6) then
          (`Var(_lh_subst_Var_0_4))
        else
          ((subst__d1 _lh_subst_arg1_4) (answer__d2 lookup_6))))
    | _ -> 
      (failwith "error"))
and subst__d2 _lh_subst_arg1_2 _lh_subst_arg2_2 =
  (match _lh_subst_arg2_2 with
    | `Term(_lh_subst_Term_0_2, _lh_subst_Term_1_2) -> 
      (`Term(_lh_subst_Term_0_2, (let rec _lh_listcomp_fun_4_8 = (fun _lh_listcomp_fun_para_4_8 -> 
        (match _lh_listcomp_fun_para_4_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_8, _lh_listcomp_fun_ls_t_4_8) -> 
            (`LH_C(((subst__d2 _lh_subst_arg1_2) _lh_listcomp_fun_ls_h_4_8), (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_4_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_8 _lh_subst_Term_1_2))))
    | `Var(_lh_subst_Var_0_2) -> 
      (let rec lookup_3 = ((find__d3 _lh_subst_arg1_2) _lh_subst_Var_0_2) in
        (if (fails__d2 lookup_3) then
          (`Var(_lh_subst_Var_0_2))
        else
          ((subst__d2 _lh_subst_arg1_2) (answer__d3 lookup_3))))
    | _ -> 
      (failwith "error"))
and subst__d3 _lh_subst_arg1_5 _lh_subst_arg2_5 =
  (match _lh_subst_arg2_5 with
    | `Term(_lh_subst_Term_0_5, _lh_subst_Term_1_5) -> 
      (`Term(_lh_subst_Term_0_5, (let rec _lh_listcomp_fun_6_4 = (fun _lh_listcomp_fun_para_6_4 -> 
        (match _lh_listcomp_fun_para_6_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_6_4, _lh_listcomp_fun_ls_t_6_4) -> 
            (`LH_C(((subst__d3 _lh_subst_arg1_5) _lh_listcomp_fun_ls_h_6_4), (_lh_listcomp_fun_6_4 _lh_listcomp_fun_ls_t_6_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_6_4 _lh_subst_Term_1_5))))
    | `Var(_lh_subst_Var_0_5) -> 
      (let rec lookup_7 = ((find__d4 _lh_subst_arg1_5) _lh_subst_Var_0_5) in
        (if (fails__d5 lookup_7) then
          (`Var(_lh_subst_Var_0_5))
        else
          ((subst__d3 _lh_subst_arg1_5) (answer__d6 lookup_7))))
    | _ -> 
      (failwith "error"))
and subst__d4 _lh_subst_arg1_1 _lh_subst_arg2_1 =
  (match _lh_subst_arg2_1 with
    | `Term(_lh_subst_Term_0_1, _lh_subst_Term_1_1) -> 
      (`Term(_lh_subst_Term_0_1, (let rec _lh_listcomp_fun_4_7 = (fun _lh_listcomp_fun_para_4_7 -> 
        (match _lh_listcomp_fun_para_4_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_7, _lh_listcomp_fun_ls_t_4_7) -> 
            (`LH_C(((subst__d4 _lh_subst_arg1_1) _lh_listcomp_fun_ls_h_4_7), (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_4_7)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_7 _lh_subst_Term_1_1))))
    | `Var(_lh_subst_Var_0_1) -> 
      (let rec lookup_2 = ((find__d5 _lh_subst_arg1_1) _lh_subst_Var_0_1) in
        (if (fails__d6 lookup_2) then
          (`Var(_lh_subst_Var_0_1))
        else
          ((subst__d4 _lh_subst_arg1_1) (answer__d7 lookup_2))))
    | _ -> 
      (failwith "error"))
and testExpert_nofib__d0 _lh_testExpert_nofib_arg1_1 =
  (let rec animals_1 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('o', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('w', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('g', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('r', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('e', (`LH_C('o', (`LH_C('w', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('i', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('l', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('f', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('g', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('s', (`LH_C('w', (`LH_C('i', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec contents_1 = (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('|', (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_C('b', (`LH_C('e', (`LH_C('|', (`LH_C('A', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C('?', (`LH_C('|', (`LH_C('U', (`LH_C('n', (`LH_C('h', (`LH_C('u', (`LH_C('h', (`LH_C('|', (`LH_C('Y', (`LH_C('e', (`LH_C('p', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      ((fun _lh_funcomp_x_5 -> 
        ((fun _lh_funcomp_x_6 -> 
          (length__d0 ((process__d0 animals_1) _lh_funcomp_x_6))) ((take__d3 (_lh_testExpert_nofib_arg1_1 + 9999)) _lh_funcomp_x_5))) contents_1)))
and try__d0 _lh_try_arg1_1 _lh_try_arg2_1 _lh_try_arg3_1 _lh_try_arg4_1 =
  (match _lh_try_arg2_1 with
    | `Soln(_lh_try_Soln_0_1, _lh_try_Soln_1_1) -> 
      (match _lh_try_arg4_1 with
        | `Term(_lh_try_Term_0_1, _lh_try_Term_1_1) -> 
          (match _lh_try_Term_0_1 with
            | `LH_C(_lh_try_LH_C_0_4, _lh_try_LH_C_1_4) -> 
              (match _lh_try_LH_C_0_4 with
                | 'i' -> 
                  (match _lh_try_LH_C_1_4 with
                    | `LH_C(_lh_try_LH_C_0_5, _lh_try_LH_C_1_5) -> 
                      (match _lh_try_LH_C_0_5 with
                        | 'f' -> 
                          (match _lh_try_LH_C_1_5 with
                            | `LH_N -> 
                              (match _lh_try_Term_1_1 with
                                | `LH_C(_lh_try_LH_C_0_6, _lh_try_LH_C_1_6) -> 
                                  (match _lh_try_LH_C_1_6 with
                                    | `LH_C(_lh_try_LH_C_0_7, _lh_try_LH_C_1_7) -> 
                                      (match _lh_try_LH_C_1_7 with
                                        | `LH_N -> 
                                          (let rec m_2 = (((match__d0 _lh_try_Soln_0_1) _lh_try_arg3_1) _lh_try_LH_C_0_6) in
                                            (if (fails__d3 m_2) then
                                              (`LH_N)
                                            else
                                              (((solve__d0 _lh_try_arg1_1) (`Soln((answer__d4 m_2), _lh_try_Soln_1_1))) _lh_try_LH_C_0_7)))
                                        | _ -> 
                                          (failwith "error"))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and updateList__d0 _lh_updateList_arg1_1 _lh_updateList_arg2_1 =
  let rec unique_1 = (fun _lh_unique_arg1_1 -> 
    (match _lh_unique_arg1_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_unique_LH_C_0_2, _lh_unique_LH_C_1_2) -> 
        (match _lh_unique_LH_C_1_2 with
          | `LH_N -> 
            (`LH_C(_lh_unique_LH_C_0_2, (`LH_N)))
          | _ -> 
            (match _lh_unique_LH_C_0_2 with
              | `LH_P2(_lh_unique_LH_P2_0_2, _lh_unique_LH_P2_1_2) -> 
                (match _lh_unique_LH_C_1_2 with
                  | `LH_C(_lh_unique_LH_C_0_3, _lh_unique_LH_C_1_3) -> 
                    (match _lh_unique_LH_C_0_3 with
                      | `LH_P2(_lh_unique_LH_P2_0_3, _lh_unique_LH_P2_1_3) -> 
                        (if (_lh_unique_LH_P2_0_2 = _lh_unique_LH_P2_0_3) then
                          (unique_1 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_3, _lh_unique_LH_P2_1_3)), _lh_unique_LH_C_1_3)))
                        else
                          (`LH_C((`LH_P2(_lh_unique_LH_P2_0_2, _lh_unique_LH_P2_1_2)), (unique_1 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_3, _lh_unique_LH_P2_1_3)), _lh_unique_LH_C_1_3))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
      | _ -> 
        (failwith "error")))
  and balance_1 = (fun _lh_balance_arg1_1 -> 
    (match _lh_balance_arg1_1 with
      | `LH_N -> 
        (`Empty)
      | _ -> 
        (let rec m_3 = ((length__d1 _lh_balance_arg1_1) / 2) in
          (let rec left_2 = (balance_1 ((take__d0 m_3) _lh_balance_arg1_1)) in
            (let rec right_2 = (balance_1 ((drop__d0 (m_3 + 1)) _lh_balance_arg1_1)) in
              (`Fork(left_2, ((atIndex__d0 m_3) _lh_balance_arg1_1), right_2)))))))
  in (balance_1 ((mergeKey__d0 (entries__d0 _lh_updateList_arg1_1)) (unique_1 (sortKey__d0 _lh_updateList_arg2_1))))
and updateList__d1 _lh_updateList_arg1_2 _lh_updateList_arg2_2 =
  let rec balance_2 = (fun _lh_balance_arg1_2 -> 
    (match _lh_balance_arg1_2 with
      | `LH_N -> 
        (`Empty)
      | _ -> 
        (let rec m_4 = ((length__d3 _lh_balance_arg1_2) / 2) in
          (let rec left_4 = (balance_2 ((take__d2 m_4) _lh_balance_arg1_2)) in
            (let rec right_4 = (balance_2 ((drop__d2 (m_4 + 1)) _lh_balance_arg1_2)) in
              (`Fork(left_4, ((atIndex__d1 m_4) _lh_balance_arg1_2), right_4)))))))
  and unique_2 = (fun _lh_unique_arg1_2 -> 
    (match _lh_unique_arg1_2 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_unique_LH_C_0_4, _lh_unique_LH_C_1_4) -> 
        (match _lh_unique_LH_C_1_4 with
          | `LH_N -> 
            (`LH_C(_lh_unique_LH_C_0_4, (`LH_N)))
          | _ -> 
            (match _lh_unique_LH_C_0_4 with
              | `LH_P2(_lh_unique_LH_P2_0_4, _lh_unique_LH_P2_1_4) -> 
                (match _lh_unique_LH_C_1_4 with
                  | `LH_C(_lh_unique_LH_C_0_5, _lh_unique_LH_C_1_5) -> 
                    (match _lh_unique_LH_C_0_5 with
                      | `LH_P2(_lh_unique_LH_P2_0_5, _lh_unique_LH_P2_1_5) -> 
                        (if (_lh_unique_LH_P2_0_4 = _lh_unique_LH_P2_0_5) then
                          (unique_2 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_5, _lh_unique_LH_P2_1_5)), _lh_unique_LH_C_1_5)))
                        else
                          (`LH_C((`LH_P2(_lh_unique_LH_P2_0_4, _lh_unique_LH_P2_1_4)), (unique_2 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_5, _lh_unique_LH_P2_1_5)), _lh_unique_LH_C_1_5))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
      | _ -> 
        (failwith "error")))
  in (balance_2 ((mergeKey__d1 (entries__d1 _lh_updateList_arg1_2)) (unique_2 (sortKey__d1 _lh_updateList_arg2_2))))
and vars__d0 _lh_vars_arg1_1 =
  (let rec names_1 = (fun _lh_names_arg1_1 -> 
    (match _lh_names_arg1_1 with
      | `Var(_lh_names_Var_0_1) -> 
        (`LH_C(_lh_names_Var_0_1, (`LH_N)))
      | `Term(_lh_names_Term_0_1, _lh_names_Term_1_1) -> 
        (concat__d2 (let rec _lh_listcomp_fun_2_9 = (fun _lh_listcomp_fun_para_2_9 -> 
          (match _lh_listcomp_fun_para_2_9 with
            | `LH_C(_lh_listcomp_fun_ls_h_2_9, _lh_listcomp_fun_ls_t_2_9) -> 
              (`LH_C((names_1 _lh_listcomp_fun_ls_h_2_9), (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_9)))
            | `LH_N -> 
              (`LH_N))) in
          (_lh_listcomp_fun_2_9 _lh_names_Term_1_1)))
      | _ -> 
        (failwith "error"))) in
    (nub__d1 (names_1 _lh_vars_arg1_1)))
and vars__d1 _lh_vars_arg1_2 =
  (let rec names_2 = (fun _lh_names_arg1_2 -> 
    (match _lh_names_arg1_2 with
      | `Var(_lh_names_Var_0_2) -> 
        (`LH_C(_lh_names_Var_0_2, (`LH_N)))
      | `Term(_lh_names_Term_0_2, _lh_names_Term_1_2) -> 
        (concat__d3 (let rec _lh_listcomp_fun_5_3 = (fun _lh_listcomp_fun_para_5_3 -> 
          (match _lh_listcomp_fun_para_5_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_3, _lh_listcomp_fun_ls_t_5_3) -> 
              (`LH_C((names_2 _lh_listcomp_fun_ls_h_5_3), (_lh_listcomp_fun_5_3 _lh_listcomp_fun_ls_t_5_3)))
            | `LH_N -> 
              (`LH_N))) in
          (_lh_listcomp_fun_5_3 _lh_names_Term_1_2)))
      | _ -> 
        (failwith "error"))) in
    (nub__d2 (names_2 _lh_vars_arg1_2)))
and words__d0 _lh_words_arg1_3 =
  (let rec _lh_matchIdent_2_3_4 = ((dropWhile__d5 isSpace__d0) _lh_words_arg1_3) in
    (match _lh_matchIdent_2_3_4 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_3, _lh_words_LH_C_1_3) -> 
        (let rec _lh_matchIdent_2_3_5 = ((break__d0 isSpace__d1) (`LH_C(_lh_words_LH_C_0_3, _lh_words_LH_C_1_3))) in
          (match _lh_matchIdent_2_3_5 with
            | `LH_P2(_lh_words_LH_P2_0_3, _lh_words_LH_P2_1_3) -> 
              (`LH_C(_lh_words_LH_P2_0_3, (words__d0 _lh_words_LH_P2_1_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and words__d1 _lh_words_arg1_2 =
  (let rec _lh_matchIdent_2_2_2 = ((dropWhile__d9 isSpace__d2) _lh_words_arg1_2) in
    (match _lh_matchIdent_2_2_2 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_2, _lh_words_LH_C_1_2) -> 
        (let rec _lh_matchIdent_2_2_3 = ((break__d4 isSpace__d3) (`LH_C(_lh_words_LH_C_0_2, _lh_words_LH_C_1_2))) in
          (match _lh_matchIdent_2_2_3 with
            | `LH_P2(_lh_words_LH_P2_0_2, _lh_words_LH_P2_1_2) -> 
              (`LH_C(_lh_words_LH_P2_0_2, (words__d1 _lh_words_LH_P2_1_2)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and words__d2 _lh_words_arg1_1 =
  (let rec _lh_matchIdent_1_1_8 = ((dropWhile__d1_d0 isSpace__d4) _lh_words_arg1_1) in
    (match _lh_matchIdent_1_1_8 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1) -> 
        (let rec _lh_matchIdent_1_1_9 = ((break__d5 isSpace__d5) (`LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1))) in
          (match _lh_matchIdent_1_1_9 with
            | `LH_P2(_lh_words_LH_P2_0_1, _lh_words_LH_P2_1_1) -> 
              (`LH_C(_lh_words_LH_P2_0_1, (words__d2 _lh_words_LH_P2_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec answer__d0 _lh_answer_arg1_7 =
  (match _lh_answer_arg1_7 with
    | `Answer(_lh_answer_Answer_0_7) -> 
      _lh_answer_Answer_0_7
    | _ -> 
      (failwith "error"));;
let rec answer__d1 _lh_answer_arg1_3 =
  (match _lh_answer_arg1_3 with
    | `Answer(_lh_answer_Answer_0_3) -> 
      _lh_answer_Answer_0_3
    | _ -> 
      (failwith "error"));;
let rec answer__d2 _lh_answer_arg1_0 =
  (match _lh_answer_arg1_0 with
    | `Answer(_lh_answer_Answer_0_0) -> 
      _lh_answer_Answer_0_0
    | _ -> 
      (failwith "error"));;
let rec answer__d3 _lh_answer_arg1_1 =
  (match _lh_answer_arg1_1 with
    | `Answer(_lh_answer_Answer_0_1) -> 
      _lh_answer_Answer_0_1
    | _ -> 
      (failwith "error"));;
let rec answer__d4 _lh_answer_arg1_6 =
  (match _lh_answer_arg1_6 with
    | `Answer(_lh_answer_Answer_0_6) -> 
      _lh_answer_Answer_0_6
    | _ -> 
      (failwith "error"));;
let rec answer__d5 _lh_answer_arg1_5 =
  (match _lh_answer_arg1_5 with
    | `Answer(_lh_answer_Answer_0_5) -> 
      _lh_answer_Answer_0_5
    | _ -> 
      (failwith "error"));;
let rec answer__d6 _lh_answer_arg1_4 =
  (match _lh_answer_arg1_4 with
    | `Answer(_lh_answer_Answer_0_4) -> 
      _lh_answer_Answer_0_4
    | _ -> 
      (failwith "error"));;
let rec answer__d7 _lh_answer_arg1_8 =
  (match _lh_answer_arg1_8 with
    | `Answer(_lh_answer_Answer_0_8) -> 
      _lh_answer_Answer_0_8
    | _ -> 
      (failwith "error"));;
let rec answer__d8 _lh_answer_arg1_2 =
  (match _lh_answer_arg1_2 with
    | `Answer(_lh_answer_Answer_0_2) -> 
      _lh_answer_Answer_0_2
    | _ -> 
      (failwith "error"));;
let rec atIndex__d0 n_6 ls_4_3 =
  (if (n_6 < 0) then
    (failwith "error")
  else
    (match ls_4_3 with
      | `LH_C(h_1_5_3, t_1_9_5) -> 
        (if (n_6 = 0) then
          h_1_5_3
        else
          ((atIndex__d0 (n_6 - 1)) t_1_9_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1 n_2 ls_2_1 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match ls_2_1 with
      | `LH_C(h_4_0, t_4_0) -> 
        (if (n_2 = 0) then
          h_4_0
        else
          ((atIndex__d1 (n_2 - 1)) t_4_0))
      | `LH_N -> 
        (failwith "error")));;
let rec break__d0 _lh_break_arg1_8 _lh_break_arg2_5 =
  (match _lh_break_arg2_5 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_5, _lh_break_LH_C_1_5) -> 
      (if (_lh_break_arg1_8 _lh_break_LH_C_0_5) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_5, _lh_break_LH_C_1_5))))
      else
        (let rec _lh_matchIdent_1_5_5 = ((break__d0 _lh_break_arg1_8) _lh_break_LH_C_1_5) in
          (match _lh_matchIdent_1_5_5 with
            | `LH_P2(_lh_break_LH_P2_0_5, _lh_break_LH_P2_1_5) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_5, _lh_break_LH_P2_0_5)), _lh_break_LH_P2_1_5))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d2 _lh_break_arg1_1 _lh_break_arg2_1 =
  (_lh_break_arg2_1 _lh_break_arg1_1);;
let rec break__d4 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_1 = ((break__d4 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_1 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d5 _lh_break_arg1_6 _lh_break_arg2_3 =
  (match _lh_break_arg2_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_3, _lh_break_LH_C_1_3) -> 
      (if (_lh_break_arg1_6 _lh_break_LH_C_0_3) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_3, _lh_break_LH_C_1_3))))
      else
        (let rec _lh_matchIdent_2_8 = ((break__d5 _lh_break_arg1_6) _lh_break_LH_C_1_3) in
          (match _lh_matchIdent_2_8 with
            | `LH_P2(_lh_break_LH_P2_0_3, _lh_break_LH_P2_1_3) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_3, _lh_break_LH_P2_0_3)), _lh_break_LH_P2_1_3))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec concat__d0 lss_1 =
  (lss_1 99);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
let rec concat__d2 lss_3 =
  (lss_3 99);;
let rec concat__d3 lss_2 =
  (lss_2 99);;
let rec dropWhile__d0 _lh_dropWhile_arg1_8 _lh_dropWhile_arg2_8 =
  (match _lh_dropWhile_arg2_8 with
    | `LH_N -> 
      (fun _lh_dummy_8_7 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_8, _lh_dropWhile_LH_C_1_8) -> 
      (if (_lh_dropWhile_arg1_8 _lh_dropWhile_LH_C_0_8) then
        ((dropWhile__d0 _lh_dropWhile_arg1_8) _lh_dropWhile_LH_C_1_8)
      else
        (let rec t_1_8_5 = _lh_dropWhile_LH_C_1_8 in
          (fun _lh_dummy_8_8 -> 
            t_1_8_5)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d1 _lh_dropWhile_arg1_5 _lh_dropWhile_arg2_5 =
  (match _lh_dropWhile_arg2_5 with
    | `LH_N -> 
      (fun _lh_dummy_5_9 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_5, _lh_dropWhile_LH_C_1_5) -> 
      (if (_lh_dropWhile_arg1_5 _lh_dropWhile_LH_C_0_5) then
        ((dropWhile__d1 _lh_dropWhile_arg1_5) _lh_dropWhile_LH_C_1_5)
      else
        (let rec t_1_5_2 = _lh_dropWhile_LH_C_1_5 in
          (fun _lh_dummy_6_0 -> 
            t_1_5_2)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d2 _lh_dropWhile_arg1_4 _lh_dropWhile_arg2_4 =
  (match _lh_dropWhile_arg2_4 with
    | `LH_N -> 
      (fun _lh_dummy_2_5 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_4, _lh_dropWhile_LH_C_1_4) -> 
      (if (_lh_dropWhile_arg1_4 _lh_dropWhile_LH_C_0_4) then
        ((dropWhile__d2 _lh_dropWhile_arg1_4) _lh_dropWhile_LH_C_1_4)
      else
        (let rec t_8_5 = _lh_dropWhile_LH_C_1_4 in
          (fun _lh_dummy_2_6 -> 
            t_8_5)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d3 _lh_dropWhile_arg1_1_0 _lh_dropWhile_arg2_1_0 =
  (match _lh_dropWhile_arg2_1_0 with
    | `LH_N -> 
      (fun _lh_dummy_9_1 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_1_0, _lh_dropWhile_LH_C_1_1_0) -> 
      (if (_lh_dropWhile_arg1_1_0 _lh_dropWhile_LH_C_0_1_0) then
        ((dropWhile__d3 _lh_dropWhile_arg1_1_0) _lh_dropWhile_LH_C_1_1_0)
      else
        (let rec t_1_8_8 = _lh_dropWhile_LH_C_1_1_0 in
          (fun _lh_dummy_9_2 -> 
            t_1_8_8)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d4 _lh_dropWhile_arg1_6 _lh_dropWhile_arg2_6 =
  (match _lh_dropWhile_arg2_6 with
    | `LH_N -> 
      (fun _lh_dummy_8_3 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_6, _lh_dropWhile_LH_C_1_6) -> 
      (if (_lh_dropWhile_arg1_6 _lh_dropWhile_LH_C_0_6) then
        ((dropWhile__d4 _lh_dropWhile_arg1_6) _lh_dropWhile_LH_C_1_6)
      else
        (let rec t_1_7_6 = _lh_dropWhile_LH_C_1_6 in
          (fun _lh_dummy_8_4 -> 
            t_1_7_6)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d6 _lh_dropWhile_arg1_2 _lh_dropWhile_arg2_2 =
  (match _lh_dropWhile_arg2_2 with
    | `LH_N -> 
      (fun _lh_dummy_2_1 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2) -> 
      (if (_lh_dropWhile_arg1_2 _lh_dropWhile_LH_C_0_2) then
        ((dropWhile__d6 _lh_dropWhile_arg1_2) _lh_dropWhile_LH_C_1_2)
      else
        (let rec t_8_3 = _lh_dropWhile_LH_C_1_2 in
          (fun _lh_dummy_2_2 -> 
            t_8_3)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d7 _lh_dropWhile_arg1_9 _lh_dropWhile_arg2_9 =
  (match _lh_dropWhile_arg2_9 with
    | `LH_N -> 
      (fun _lh_dummy_8_9 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_9, _lh_dropWhile_LH_C_1_9) -> 
      (if (_lh_dropWhile_arg1_9 _lh_dropWhile_LH_C_0_9) then
        ((dropWhile__d7 _lh_dropWhile_arg1_9) _lh_dropWhile_LH_C_1_9)
      else
        (let rec t_1_8_7 = _lh_dropWhile_LH_C_1_9 in
          (fun _lh_dummy_9_0 -> 
            t_1_8_7)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d8 _lh_dropWhile_arg1_7 _lh_dropWhile_arg2_7 =
  (match _lh_dropWhile_arg2_7 with
    | `LH_N -> 
      (fun _lh_dummy_8_5 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_7, _lh_dropWhile_LH_C_1_7) -> 
      (if (_lh_dropWhile_arg1_7 _lh_dropWhile_LH_C_0_7) then
        ((dropWhile__d8 _lh_dropWhile_arg1_7) _lh_dropWhile_LH_C_1_7)
      else
        (let rec t_1_8_0 = _lh_dropWhile_LH_C_1_7 in
          (fun _lh_dummy_8_6 -> 
            t_1_8_0)))
    | _ -> 
      (failwith "error"));;
let rec drop__d0 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 > 0) then
        ((drop__d0 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2)
      else
        (`LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec drop__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec drop__d2 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d2 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_8 = a_0 in
        (fun _lh_listcomp_fun_1_8 -> 
          (`LH_C((`LH_C('X', (string_of_int _lh_listcomp_fun_ls_h_8))), (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_9))))))
  else
    (fun _lh_listcomp_fun_1_9 -> 
      (`LH_N)));;
let rec failure__d0 _lh_failure_arg1_7 =
  (`Reason(_lh_failure_arg1_7));;
let rec failure__d1 _lh_failure_arg1_3 =
  (`Reason(_lh_failure_arg1_3));;
let rec failure__d2 _lh_failure_arg1_0 =
  (`Reason(_lh_failure_arg1_0));;
let rec failure__d3 _lh_failure_arg1_1 =
  (`Reason(_lh_failure_arg1_1));;
let rec failure__d4 _lh_failure_arg1_8 =
  (`Reason(_lh_failure_arg1_8));;
let rec failure__d5 _lh_failure_arg1_5 =
  (`Reason(_lh_failure_arg1_5));;
let rec failure__d6 _lh_failure_arg1_2 =
  (`Reason(_lh_failure_arg1_2));;
let rec failure__d7 _lh_failure_arg1_6 =
  (`Reason(_lh_failure_arg1_6));;
let rec failure__d8 _lh_failure_arg1_4 =
  (`Reason(_lh_failure_arg1_4));;
let rec filter__d0 f_8 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_6_3, t_6_6) -> 
      (if (f_8 h_6_3) then
        (`LH_C(h_6_3, ((filter__d0 f_8) t_6_6)))
      else
        ((filter__d0 f_8) t_6_6))
    | `LH_N -> 
      (`LH_N));;
let rec filter__d1 f_3 ls_8 =
  (match ls_8 with
    | `LH_C(h_9, t_9) -> 
      (if (f_3 h_9) then
        (`LH_C(h_9, ((filter__d1 f_3) t_9)))
      else
        ((filter__d1 f_3) t_9))
    | `LH_N -> 
      (`LH_N));;
let rec filter__d2 f_5 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_4_6, t_4_7) -> 
      (if (f_5 h_4_6) then
        (`LH_C(h_4_6, ((filter__d2 f_5) t_4_7)))
      else
        ((filter__d2 f_5) t_4_7))
    | `LH_N -> 
      (`LH_N));;
let rec find__d3 _lh_find_arg1_3 _lh_find_arg2_5 =
  (let rec _lh_matchIdent_3_3 = _lh_find_arg1_3 in
    (_lh_matchIdent_3_3 _lh_find_arg2_5));;
let rec find__d6 _lh_find_arg1_5 _lh_find_arg2_9 =
  (let rec _lh_matchIdent_1_5_2 = _lh_find_arg1_5 in
    (_lh_matchIdent_1_5_2 _lh_find_arg2_9));;
let rec foldr1__d0 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1__d0 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_1 i_1 ls_5 =
  ((ls_5 f_1) i_1);;
let rec foldr__d1 f_0 i_0 ls_1 =
  ((ls_1 f_0) i_0);;
let rec fst__d0 _lh_fst_arg1_4 =
  (match _lh_fst_arg1_4 with
    | `LH_P2(_lh_fst_LH_P2_0_4, _lh_fst_LH_P2_1_4) -> 
      _lh_fst_LH_P2_0_4
    | _ -> 
      (failwith "error"));;
let rec fst__d1 _lh_fst_arg1_2 =
  (match _lh_fst_arg1_2 with
    | `LH_P2(_lh_fst_LH_P2_0_2, _lh_fst_LH_P2_1_2) -> 
      _lh_fst_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec fst__d2 _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec fst__d3 _lh_fst_arg1_3 =
  (match _lh_fst_arg1_3 with
    | `LH_P2(_lh_fst_LH_P2_0_3, _lh_fst_LH_P2_1_3) -> 
      _lh_fst_LH_P2_0_3
    | _ -> 
      (failwith "error"));;
let rec fst__d4 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_1, _lh_fst_LH_P2_1_1) -> 
      _lh_fst_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec fst__d5 _lh_fst_arg1_5 =
  (match _lh_fst_arg1_5 with
    | `LH_P2(_lh_fst_LH_P2_0_5, _lh_fst_LH_P2_1_5) -> 
      _lh_fst_LH_P2_0_5
    | _ -> 
      (failwith "error"));;
let rec head__d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_3_9, t_3_9) -> 
      h_3_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_2_9, t_2_9) -> 
      h_2_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d1 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_2_5, t_2_5) -> 
      h_2_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d2 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_4_3, t_4_3) -> 
      h_4_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d3 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_1_4_6, t_1_8_6) -> 
      h_1_4_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d4 ls_2 =
  (match ls_2 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d5 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_2_8, t_2_8) -> 
      h_2_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d6 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_1_3_6, t_1_7_3) -> 
      h_1_3_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d2 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_5_8, t_6_0) -> 
      h_5_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d3 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_1_5_2, t_1_9_4) -> 
      h_1_5_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d4 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_7_9, t_8_4) -> 
      h_7_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d5 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_1_8, t_1_8) -> 
      h_1_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d6 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_1_4_2, t_1_8_1) -> 
      h_1_4_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d7 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_3_3, t_3_3) -> 
      h_3_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d8 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_7, t_1_7) -> 
      h_1_7
    | `LH_N -> 
      (failwith "error"));;
let rec head__d9 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_1_4_5, t_1_8_4) -> 
      h_1_4_5
    | `LH_N -> 
      (failwith "error"));;
let rec inList__d0 _lh_inList_arg1_4_2 _lh_inList_arg2_8 =
  (match _lh_inList_arg2_8 with
    | `LH_C(_lh_inList_LH_C_0_2_7, _lh_inList_LH_C_1_2_7) -> 
      (if (_lh_inList_arg1_4_2 = _lh_inList_LH_C_0_2_7) then
        true
      else
        ((inList__d0 _lh_inList_arg1_4_2) _lh_inList_LH_C_1_2_7))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1 _lh_inList_arg1_4_4 _lh_inList_arg2_1_0 =
  (match _lh_inList_arg2_1_0 with
    | `LH_C(_lh_inList_LH_C_0_2_8, _lh_inList_LH_C_1_2_8) -> 
      (if (_lh_inList_arg1_4_4 = _lh_inList_LH_C_0_2_8) then
        true
      else
        ((inList__d1 _lh_inList_arg1_4_4) _lh_inList_LH_C_1_2_8))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1_d0 _lh_inList_arg1_3_5 _lh_inList_arg2_7 =
  (_lh_inList_arg2_7 _lh_inList_arg1_3_5);;
let rec inList__d1_d1 _lh_inList_arg1_5_3 _lh_inList_arg2_1_3 =
  (_lh_inList_arg2_1_3 _lh_inList_arg1_5_3);;
let rec inList__d1_d2 _lh_inList_arg1_5 _lh_inList_arg2_1 =
  (_lh_inList_arg2_1 _lh_inList_arg1_5);;
let rec inList__d1_d3 _lh_inList_arg1_4_3 _lh_inList_arg2_9 =
  (_lh_inList_arg2_9 _lh_inList_arg1_4_3);;
let rec inList__d2 _lh_inList_arg1_1_0 _lh_inList_arg2_2 =
  (_lh_inList_arg2_2 _lh_inList_arg1_1_0);;
let rec inList__d3 _lh_inList_arg1_2_5 _lh_inList_arg2_6 =
  (_lh_inList_arg2_6 _lh_inList_arg1_2_5);;
let rec inList__d4 _lh_inList_arg1_4 _lh_inList_arg2_0 =
  (_lh_inList_arg2_0 _lh_inList_arg1_4);;
let rec inList__d5 _lh_inList_arg1_1_6 _lh_inList_arg2_4 =
  (_lh_inList_arg2_4 _lh_inList_arg1_1_6);;
let rec inList__d6 _lh_inList_arg1_5_1 _lh_inList_arg2_1_1 =
  (_lh_inList_arg2_1_1 _lh_inList_arg1_5_1);;
let rec inList__d7 _lh_inList_arg1_1_7 _lh_inList_arg2_5 =
  (_lh_inList_arg2_5 _lh_inList_arg1_1_7);;
let rec inList__d8 _lh_inList_arg1_5_2 _lh_inList_arg2_1_2 =
  (match _lh_inList_arg2_1_2 with
    | `LH_C(_lh_inList_LH_C_0_3_4, _lh_inList_LH_C_1_3_4) -> 
      (if (_lh_inList_arg1_5_2 = _lh_inList_LH_C_0_3_4) then
        true
      else
        ((inList__d8 _lh_inList_arg1_5_2) _lh_inList_LH_C_1_3_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d9 _lh_inList_arg1_1_5 _lh_inList_arg2_3 =
  (match _lh_inList_arg2_3 with
    | `LH_C(_lh_inList_LH_C_0_9, _lh_inList_LH_C_1_9) -> 
      (if (_lh_inList_arg1_1_5 = _lh_inList_LH_C_0_9) then
        true
      else
        ((inList__d9 _lh_inList_arg1_1_5) _lh_inList_LH_C_1_9))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec isSpace__d0 _lh_isSpace_arg1_3 =
  (_lh_isSpace_arg1_3 = ' ');;
let rec isSpace__d1 _lh_isSpace_arg1_2 =
  (_lh_isSpace_arg1_2 = ' ');;
let rec isSpace__d2 _lh_isSpace_arg1_4 =
  (_lh_isSpace_arg1_4 = ' ');;
let rec isSpace__d3 _lh_isSpace_arg1_5 =
  (_lh_isSpace_arg1_5 = ' ');;
let rec isSpace__d4 _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec isSpace__d5 _lh_isSpace_arg1_1 =
  (_lh_isSpace_arg1_1 = ' ');;
let rec length__d0 ls_3_8 =
  (ls_3_8 99);;
let rec length__d1 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_1_3_9, t_1_7_7) -> 
      (1 + (length__d1 t_1_7_7))
    | `LH_N -> 
      0);;
let rec length__d2 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_3_1, t_3_1) -> 
      (1 + (length__d2 t_3_1))
    | `LH_N -> 
      0);;
let rec length__d3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_1_3_5, t_1_7_2) -> 
      (1 + (length__d3 t_1_7_2))
    | `LH_N -> 
      0);;
let rec map__d0 f_2 ls_7 =
  (ls_7 f_2);;
let rec mappend__d0 xs_1_1 ys_2_0 =
  (xs_1_1 ys_2_0);;
let rec mappend__d1_d0 xs_3_3 ys_1_2_1 =
  (xs_3_3 ys_1_2_1);;
let rec mappend__d1_d2 xs_4_1 ys_1_3_7 =
  (xs_4_1 ys_1_3_7);;
let rec mappend__d1_d3 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend__d1_d5 xs_3_0 ys_7_5 =
  (xs_3_0 ys_7_5);;
let rec mappend__d1_d6 xs_1_9 ys_3_5 =
  (xs_1_9 ys_3_5);;
let rec mappend__d1_d8 xs_3_6 ys_1_3_1 =
  (xs_3_6 ys_1_3_1);;
let rec mappend__d2 xs_4_0 ys_1_3_6 =
  (xs_4_0 ys_1_3_6);;
let rec mappend__d2_d0 xs_1_5 ys_2_7 =
  (xs_1_5 ys_2_7);;
let rec mappend__d2_d2 xs_6 ys_9 =
  (xs_6 ys_9);;
let rec mappend__d2_d4 xs_1_3 ys_2_2 =
  (xs_1_3 ys_2_2);;
let rec mappend__d2_d6 xs_3_4 ys_1_2_4 =
  (xs_3_4 ys_1_2_4);;
let rec mappend__d2_d8 xs_4_3 ys_1_4_0 =
  (xs_4_3 ys_1_4_0);;
let rec mappend__d3_d0 xs_3_8 ys_1_3_4 =
  (xs_3_8 ys_1_3_4);;
let rec mappend__d3_d1 xs_3_2 ys_1_2_0 =
  (xs_3_2 ys_1_2_0);;
let rec mappend__d3_d3 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d3_d5 xs_3_9 ys_1_3_5 =
  (xs_3_9 ys_1_3_5);;
let rec mappend__d3_d7 xs_1_2 ys_2_1 =
  (xs_1_2 ys_2_1);;
let rec mappend__d3_d9 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend__d3_d9 t_2) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend__d4 xs_4 ys_6 =
  (xs_4 ys_6);;
let rec mappend__d4_d0 xs_2_9 ys_5_8 =
  (match xs_2_9 with
    | `LH_C(h_6_2, t_6_5) -> 
      (`LH_C(h_6_2, ((mappend__d4_d0 t_6_5) ys_5_8)))
    | `LH_N -> 
      ys_5_8);;
let rec mappend__d4_d1 xs_2_3 ys_4_0 =
  (xs_2_3 ys_4_0);;
let rec mappend__d4_d3 xs_3 ys_5 =
  (match xs_3 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend__d4_d3 t_5) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend__d4_d4 xs_1_0 ys_1_9 =
  (match xs_1_0 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend__d4_d4 t_1_6) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d4_d5 xs_4_5 ys_1_4_7 =
  (match xs_4_5 with
    | `LH_C(h_1_4_9, t_1_9_1) -> 
      (`LH_C(h_1_4_9, ((mappend__d4_d5 t_1_9_1) ys_1_4_7)))
    | `LH_N -> 
      ys_1_4_7);;
let rec mappend__d6 xs_4_7 ys_1_5_0 =
  (xs_4_7 ys_1_5_0);;
let rec mappend__d8 xs_4_9 ys_1_5_2 =
  (xs_4_9 ys_1_5_2);;
let rec matchList__d0 _lh_matchList_arg1_4 _lh_matchList_arg2_0 =
  (_lh_matchList_arg2_0 _lh_matchList_arg1_4);;
let rec mergeKey__d0 _lh_mergeKey_arg1_1 _lh_mergeKey_arg2_1 =
  (match _lh_mergeKey_arg1_1 with
    | `LH_N -> 
      _lh_mergeKey_arg2_1
    | _ -> 
      (match _lh_mergeKey_arg2_1 with
        | `LH_N -> 
          _lh_mergeKey_arg1_1
        | _ -> 
          (match _lh_mergeKey_arg1_1 with
            | `LH_C(_lh_mergeKey_LH_C_0_2, _lh_mergeKey_LH_C_1_2) -> 
              (match _lh_mergeKey_LH_C_0_2 with
                | `LH_P2(_lh_mergeKey_LH_P2_0_2, _lh_mergeKey_LH_P2_1_2) -> 
                  (match _lh_mergeKey_arg2_1 with
                    | `LH_C(_lh_mergeKey_LH_C_0_3, _lh_mergeKey_LH_C_1_3) -> 
                      (match _lh_mergeKey_LH_C_0_3 with
                        | `LH_P2(_lh_mergeKey_LH_P2_0_3, _lh_mergeKey_LH_P2_1_3) -> 
                          (if (_lh_mergeKey_LH_P2_0_2 <= _lh_mergeKey_LH_P2_0_3) then
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_2, _lh_mergeKey_LH_P2_1_2)), ((mergeKey__d0 _lh_mergeKey_LH_C_1_2) (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_3, _lh_mergeKey_LH_P2_1_3)), _lh_mergeKey_LH_C_1_3)))))
                          else
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_3, _lh_mergeKey_LH_P2_1_3)), ((mergeKey__d0 (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_2, _lh_mergeKey_LH_P2_1_2)), _lh_mergeKey_LH_C_1_2))) _lh_mergeKey_LH_C_1_3))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec mergeKey__d1 _lh_mergeKey_arg1_0 _lh_mergeKey_arg2_0 =
  (match _lh_mergeKey_arg1_0 with
    | `LH_N -> 
      _lh_mergeKey_arg2_0
    | _ -> 
      (match _lh_mergeKey_arg2_0 with
        | `LH_N -> 
          _lh_mergeKey_arg1_0
        | _ -> 
          (match _lh_mergeKey_arg1_0 with
            | `LH_C(_lh_mergeKey_LH_C_0_0, _lh_mergeKey_LH_C_1_0) -> 
              (match _lh_mergeKey_LH_C_0_0 with
                | `LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0) -> 
                  (match _lh_mergeKey_arg2_0 with
                    | `LH_C(_lh_mergeKey_LH_C_0_1, _lh_mergeKey_LH_C_1_1) -> 
                      (match _lh_mergeKey_LH_C_0_1 with
                        | `LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1) -> 
                          (if (_lh_mergeKey_LH_P2_0_0 <= _lh_mergeKey_LH_P2_0_1) then
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0)), ((mergeKey__d1 _lh_mergeKey_LH_C_1_0) (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1)), _lh_mergeKey_LH_C_1_1)))))
                          else
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1)), ((mergeKey__d1 (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0)), _lh_mergeKey_LH_C_1_0))) _lh_mergeKey_LH_C_1_1))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec newTable__d0 =
  (`Empty);;
let rec newTable__d1 =
  (`Empty);;
let rec newTable__d2 =
  (`Empty);;
let rec newTable__d3 =
  (`Empty);;
let rec null__d0 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec or__d0 _lh_or_arg1_0 =
  (_lh_or_arg1_0 99);;
let rec showPhrase__d0 _lh_showPhrase_arg1_0 =
  (_lh_showPhrase_arg1_0 99);;
let rec showPhrase__d2 _lh_showPhrase_arg1_2 =
  (_lh_showPhrase_arg1_2 99);;
let rec strEq__d0 _lh_strEq_arg1_6 _lh_strEq_arg2_6 =
  (match _lh_strEq_arg1_6 with
    | `LH_C(_lh_strEq_LH_C_0_1_8, _lh_strEq_LH_C_1_1_8) -> 
      (let rec _lh_matchIdent_1_9 = _lh_strEq_arg2_6 in
        (match _lh_matchIdent_1_9 with
          | `LH_C(_lh_strEq_LH_C_0_1_9, _lh_strEq_LH_C_1_1_9) -> 
            (if (_lh_strEq_LH_C_0_1_8 = _lh_strEq_LH_C_0_1_9) then
              ((strEq__d0 _lh_strEq_LH_C_1_1_8) _lh_strEq_LH_C_1_1_9)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_0 = _lh_strEq_arg2_6 in
        (match _lh_matchIdent_2_0 with
          | `LH_C(_lh_strEq_LH_C_0_2_0, _lh_strEq_LH_C_1_2_0) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1 _lh_strEq_arg1_1 _lh_strEq_arg2_1 =
  (match _lh_strEq_arg1_1 with
    | `LH_C(_lh_strEq_LH_C_0_3, _lh_strEq_LH_C_1_3) -> 
      (let rec _lh_matchIdent_5 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_5 with
          | `LH_C(_lh_strEq_LH_C_0_4, _lh_strEq_LH_C_1_4) -> 
            (if (_lh_strEq_LH_C_0_3 = _lh_strEq_LH_C_0_4) then
              ((strEq__d1 _lh_strEq_LH_C_1_3) _lh_strEq_LH_C_1_4)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_6 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_6 with
          | `LH_C(_lh_strEq_LH_C_0_5, _lh_strEq_LH_C_1_5) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d0 _lh_strEq_arg1_1_2 _lh_strEq_arg2_1_2 =
  (match _lh_strEq_arg1_1_2 with
    | `LH_C(_lh_strEq_LH_C_0_3_6, _lh_strEq_LH_C_1_3_6) -> 
      (let rec _lh_matchIdent_1_4_1 = _lh_strEq_arg2_1_2 in
        (match _lh_matchIdent_1_4_1 with
          | `LH_C(_lh_strEq_LH_C_0_3_7, _lh_strEq_LH_C_1_3_7) -> 
            (if (_lh_strEq_LH_C_0_3_6 = _lh_strEq_LH_C_0_3_7) then
              ((strEq__d1_d0 _lh_strEq_LH_C_1_3_6) _lh_strEq_LH_C_1_3_7)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_4_2 = _lh_strEq_arg2_1_2 in
        (match _lh_matchIdent_1_4_2 with
          | `LH_C(_lh_strEq_LH_C_0_3_8, _lh_strEq_LH_C_1_3_8) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d1 _lh_strEq_arg1_8 _lh_strEq_arg2_8 =
  (match _lh_strEq_arg1_8 with
    | `LH_C(_lh_strEq_LH_C_0_2_4, _lh_strEq_LH_C_1_2_4) -> 
      (let rec _lh_matchIdent_2_9 = _lh_strEq_arg2_8 in
        (match _lh_matchIdent_2_9 with
          | `LH_C(_lh_strEq_LH_C_0_2_5, _lh_strEq_LH_C_1_2_5) -> 
            (if (_lh_strEq_LH_C_0_2_4 = _lh_strEq_LH_C_0_2_5) then
              ((strEq__d1_d1 _lh_strEq_LH_C_1_2_4) _lh_strEq_LH_C_1_2_5)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_3_0 = _lh_strEq_arg2_8 in
        (match _lh_matchIdent_3_0 with
          | `LH_C(_lh_strEq_LH_C_0_2_6, _lh_strEq_LH_C_1_2_6) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d2 _lh_strEq_arg1_0 _lh_strEq_arg2_0 =
  (match _lh_strEq_arg1_0 with
    | `LH_C(_lh_strEq_LH_C_0_0, _lh_strEq_LH_C_1_0) -> 
      (let rec _lh_matchIdent_2 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_2 with
          | `LH_C(_lh_strEq_LH_C_0_1, _lh_strEq_LH_C_1_1) -> 
            (if (_lh_strEq_LH_C_0_0 = _lh_strEq_LH_C_0_1) then
              ((strEq__d1_d2 _lh_strEq_LH_C_1_0) _lh_strEq_LH_C_1_1)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_3 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_3 with
          | `LH_C(_lh_strEq_LH_C_0_2, _lh_strEq_LH_C_1_2) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d3 _lh_strEq_arg1_9 _lh_strEq_arg2_9 =
  (match _lh_strEq_arg1_9 with
    | `LH_C(_lh_strEq_LH_C_0_2_7, _lh_strEq_LH_C_1_2_7) -> 
      (let rec _lh_matchIdent_3_5 = _lh_strEq_arg2_9 in
        (match _lh_matchIdent_3_5 with
          | `LH_C(_lh_strEq_LH_C_0_2_8, _lh_strEq_LH_C_1_2_8) -> 
            (if (_lh_strEq_LH_C_0_2_7 = _lh_strEq_LH_C_0_2_8) then
              ((strEq__d1_d3 _lh_strEq_LH_C_1_2_7) _lh_strEq_LH_C_1_2_8)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_3_6 = _lh_strEq_arg2_9 in
        (match _lh_matchIdent_3_6 with
          | `LH_C(_lh_strEq_LH_C_0_2_9, _lh_strEq_LH_C_1_2_9) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d4 _lh_strEq_arg1_1_4 _lh_strEq_arg2_1_4 =
  (match _lh_strEq_arg1_1_4 with
    | `LH_C(_lh_strEq_LH_C_0_4_2, _lh_strEq_LH_C_1_4_2) -> 
      (let rec _lh_matchIdent_1_5_0 = _lh_strEq_arg2_1_4 in
        (match _lh_matchIdent_1_5_0 with
          | `LH_C(_lh_strEq_LH_C_0_4_3, _lh_strEq_LH_C_1_4_3) -> 
            (if (_lh_strEq_LH_C_0_4_2 = _lh_strEq_LH_C_0_4_3) then
              ((strEq__d1_d4 _lh_strEq_LH_C_1_4_2) _lh_strEq_LH_C_1_4_3)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_5_1 = _lh_strEq_arg2_1_4 in
        (match _lh_matchIdent_1_5_1 with
          | `LH_C(_lh_strEq_LH_C_0_4_4, _lh_strEq_LH_C_1_4_4) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d5 _lh_strEq_arg1_5 _lh_strEq_arg2_5 =
  (match _lh_strEq_arg1_5 with
    | `LH_C(_lh_strEq_LH_C_0_1_5, _lh_strEq_LH_C_1_1_5) -> 
      (let rec _lh_matchIdent_1_7 = _lh_strEq_arg2_5 in
        (match _lh_matchIdent_1_7 with
          | `LH_C(_lh_strEq_LH_C_0_1_6, _lh_strEq_LH_C_1_1_6) -> 
            (if (_lh_strEq_LH_C_0_1_5 = _lh_strEq_LH_C_0_1_6) then
              ((strEq__d1_d5 _lh_strEq_LH_C_1_1_5) _lh_strEq_LH_C_1_1_6)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_8 = _lh_strEq_arg2_5 in
        (match _lh_matchIdent_1_8 with
          | `LH_C(_lh_strEq_LH_C_0_1_7, _lh_strEq_LH_C_1_1_7) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d2 _lh_strEq_arg1_1_3 _lh_strEq_arg2_1_3 =
  (match _lh_strEq_arg1_1_3 with
    | `LH_C(_lh_strEq_LH_C_0_3_9, _lh_strEq_LH_C_1_3_9) -> 
      (let rec _lh_matchIdent_1_4_5 = _lh_strEq_arg2_1_3 in
        (match _lh_matchIdent_1_4_5 with
          | `LH_C(_lh_strEq_LH_C_0_4_0, _lh_strEq_LH_C_1_4_0) -> 
            (if (_lh_strEq_LH_C_0_3_9 = _lh_strEq_LH_C_0_4_0) then
              ((strEq__d2 _lh_strEq_LH_C_1_3_9) _lh_strEq_LH_C_1_4_0)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_4_6 = _lh_strEq_arg2_1_3 in
        (match _lh_matchIdent_1_4_6 with
          | `LH_C(_lh_strEq_LH_C_0_4_1, _lh_strEq_LH_C_1_4_1) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d3 _lh_strEq_arg1_4 _lh_strEq_arg2_4 =
  (match _lh_strEq_arg1_4 with
    | `LH_C(_lh_strEq_LH_C_0_1_2, _lh_strEq_LH_C_1_1_2) -> 
      (let rec _lh_matchIdent_1_5 = _lh_strEq_arg2_4 in
        (match _lh_matchIdent_1_5 with
          | `LH_C(_lh_strEq_LH_C_0_1_3, _lh_strEq_LH_C_1_1_3) -> 
            (if (_lh_strEq_LH_C_0_1_2 = _lh_strEq_LH_C_0_1_3) then
              ((strEq__d3 _lh_strEq_LH_C_1_1_2) _lh_strEq_LH_C_1_1_3)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_6 = _lh_strEq_arg2_4 in
        (match _lh_matchIdent_1_6 with
          | `LH_C(_lh_strEq_LH_C_0_1_4, _lh_strEq_LH_C_1_1_4) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d4 _lh_strEq_arg1_1_5 _lh_strEq_arg2_1_5 =
  (match _lh_strEq_arg1_1_5 with
    | `LH_C(_lh_strEq_LH_C_0_4_5, _lh_strEq_LH_C_1_4_5) -> 
      (let rec _lh_matchIdent_1_5_3 = _lh_strEq_arg2_1_5 in
        (match _lh_matchIdent_1_5_3 with
          | `LH_C(_lh_strEq_LH_C_0_4_6, _lh_strEq_LH_C_1_4_6) -> 
            (if (_lh_strEq_LH_C_0_4_5 = _lh_strEq_LH_C_0_4_6) then
              ((strEq__d4 _lh_strEq_LH_C_1_4_5) _lh_strEq_LH_C_1_4_6)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_5_4 = _lh_strEq_arg2_1_5 in
        (match _lh_matchIdent_1_5_4 with
          | `LH_C(_lh_strEq_LH_C_0_4_7, _lh_strEq_LH_C_1_4_7) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d5 _lh_strEq_arg1_1_1 _lh_strEq_arg2_1_1 =
  (match _lh_strEq_arg1_1_1 with
    | `LH_C(_lh_strEq_LH_C_0_3_3, _lh_strEq_LH_C_1_3_3) -> 
      (let rec _lh_matchIdent_1_3_9 = _lh_strEq_arg2_1_1 in
        (match _lh_matchIdent_1_3_9 with
          | `LH_C(_lh_strEq_LH_C_0_3_4, _lh_strEq_LH_C_1_3_4) -> 
            (if (_lh_strEq_LH_C_0_3_3 = _lh_strEq_LH_C_0_3_4) then
              ((strEq__d5 _lh_strEq_LH_C_1_3_3) _lh_strEq_LH_C_1_3_4)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_4_0 = _lh_strEq_arg2_1_1 in
        (match _lh_matchIdent_1_4_0 with
          | `LH_C(_lh_strEq_LH_C_0_3_5, _lh_strEq_LH_C_1_3_5) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d6 _lh_strEq_arg1_7 _lh_strEq_arg2_7 =
  (match _lh_strEq_arg1_7 with
    | `LH_C(_lh_strEq_LH_C_0_2_1, _lh_strEq_LH_C_1_2_1) -> 
      (let rec _lh_matchIdent_2_3 = _lh_strEq_arg2_7 in
        (match _lh_matchIdent_2_3 with
          | `LH_C(_lh_strEq_LH_C_0_2_2, _lh_strEq_LH_C_1_2_2) -> 
            (if (_lh_strEq_LH_C_0_2_1 = _lh_strEq_LH_C_0_2_2) then
              ((strEq__d6 _lh_strEq_LH_C_1_2_1) _lh_strEq_LH_C_1_2_2)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_4 = _lh_strEq_arg2_7 in
        (match _lh_matchIdent_2_4 with
          | `LH_C(_lh_strEq_LH_C_0_2_3, _lh_strEq_LH_C_1_2_3) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d7 _lh_strEq_arg1_3 _lh_strEq_arg2_3 =
  (match _lh_strEq_arg1_3 with
    | `LH_C(_lh_strEq_LH_C_0_9, _lh_strEq_LH_C_1_9) -> 
      (let rec _lh_matchIdent_1_2 = _lh_strEq_arg2_3 in
        (match _lh_matchIdent_1_2 with
          | `LH_C(_lh_strEq_LH_C_0_1_0, _lh_strEq_LH_C_1_1_0) -> 
            (if (_lh_strEq_LH_C_0_9 = _lh_strEq_LH_C_0_1_0) then
              ((strEq__d7 _lh_strEq_LH_C_1_9) _lh_strEq_LH_C_1_1_0)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_3 = _lh_strEq_arg2_3 in
        (match _lh_matchIdent_1_3 with
          | `LH_C(_lh_strEq_LH_C_0_1_1, _lh_strEq_LH_C_1_1_1) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d8 _lh_strEq_arg1_2 _lh_strEq_arg2_2 =
  (match _lh_strEq_arg1_2 with
    | `LH_C(_lh_strEq_LH_C_0_6, _lh_strEq_LH_C_1_6) -> 
      (let rec _lh_matchIdent_1_0 = _lh_strEq_arg2_2 in
        (match _lh_matchIdent_1_0 with
          | `LH_C(_lh_strEq_LH_C_0_7, _lh_strEq_LH_C_1_7) -> 
            (if (_lh_strEq_LH_C_0_6 = _lh_strEq_LH_C_0_7) then
              ((strEq__d8 _lh_strEq_LH_C_1_6) _lh_strEq_LH_C_1_7)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_1 = _lh_strEq_arg2_2 in
        (match _lh_matchIdent_1_1 with
          | `LH_C(_lh_strEq_LH_C_0_8, _lh_strEq_LH_C_1_8) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d9 _lh_strEq_arg1_1_0 _lh_strEq_arg2_1_0 =
  (match _lh_strEq_arg1_1_0 with
    | `LH_C(_lh_strEq_LH_C_0_3_0, _lh_strEq_LH_C_1_3_0) -> 
      (let rec _lh_matchIdent_3_7 = _lh_strEq_arg2_1_0 in
        (match _lh_matchIdent_3_7 with
          | `LH_C(_lh_strEq_LH_C_0_3_1, _lh_strEq_LH_C_1_3_1) -> 
            (if (_lh_strEq_LH_C_0_3_0 = _lh_strEq_LH_C_0_3_1) then
              ((strEq__d9 _lh_strEq_LH_C_1_3_0) _lh_strEq_LH_C_1_3_1)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_3_8 = _lh_strEq_arg2_1_0 in
        (match _lh_matchIdent_3_8 with
          | `LH_C(_lh_strEq_LH_C_0_3_2, _lh_strEq_LH_C_1_3_2) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec succeeds__d0 _lh_succeeds_arg1_2 =
  (match _lh_succeeds_arg1_2 with
    | `Answer(_lh_succeeds_Answer_0_2) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d1 _lh_succeeds_arg1_6 =
  (match _lh_succeeds_arg1_6 with
    | `Answer(_lh_succeeds_Answer_0_6) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d2 _lh_succeeds_arg1_0 =
  (match _lh_succeeds_arg1_0 with
    | `Answer(_lh_succeeds_Answer_0_0) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d3 _lh_succeeds_arg1_4 =
  (match _lh_succeeds_arg1_4 with
    | `Answer(_lh_succeeds_Answer_0_4) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d4 _lh_succeeds_arg1_1 =
  (match _lh_succeeds_arg1_1 with
    | `Answer(_lh_succeeds_Answer_0_1) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d5 _lh_succeeds_arg1_7 =
  (match _lh_succeeds_arg1_7 with
    | `Answer(_lh_succeeds_Answer_0_7) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d6 _lh_succeeds_arg1_3 =
  (match _lh_succeeds_arg1_3 with
    | `Answer(_lh_succeeds_Answer_0_3) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d7 _lh_succeeds_arg1_5 =
  (match _lh_succeeds_arg1_5 with
    | `Answer(_lh_succeeds_Answer_0_5) -> 
      true
    | _ -> 
      false);;
let rec success__d0 _lh_success_arg1_3 =
  (`Answer(_lh_success_arg1_3));;
let rec success__d1 _lh_success_arg1_0 =
  (`Answer(_lh_success_arg1_0));;
let rec success__d1_d0 _lh_success_arg1_1 =
  (`Answer(_lh_success_arg1_1));;
let rec success__d2 _lh_success_arg1_6 =
  (`Answer(_lh_success_arg1_6));;
let rec success__d3 _lh_success_arg1_8 =
  (`Answer(_lh_success_arg1_8));;
let rec success__d4 _lh_success_arg1_9 =
  (`Answer(_lh_success_arg1_9));;
let rec success__d5 _lh_success_arg1_4 =
  (`Answer(_lh_success_arg1_4));;
let rec success__d6 _lh_success_arg1_2 =
  (`Answer(_lh_success_arg1_2));;
let rec success__d7 _lh_success_arg1_1_0 =
  (`Answer(_lh_success_arg1_1_0));;
let rec success__d8 _lh_success_arg1_5 =
  (`Answer(_lh_success_arg1_5));;
let rec success__d9 _lh_success_arg1_7 =
  (`Answer(_lh_success_arg1_7));;
let rec tail__d0 ls_2_7 =
  (ls_2_7 99);;
let rec tail__d1 ls_4_2 =
  (ls_4_2 99);;
let rec tail__d1_d0 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_1_3_4, t_1_7_1) -> 
      t_1_7_1
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_1_3 =
  (ls_1_3 99);;
let rec tail__d3 ls_2_9 =
  (ls_2_9 99);;
let rec tail__d4 ls_3_6 =
  (ls_3_6 99);;
let rec tail__d5 ls_6 =
  (match ls_6 with
    | `LH_C(h_6, t_6) -> 
      t_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d6 ls_4 =
  (match ls_4 with
    | `LH_C(h_3, t_3) -> 
      t_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d7 ls_0 =
  (ls_0 99);;
let rec tail__d8 ls_2_3 =
  (ls_2_3 99);;
let rec tail__d9 ls_1_9 =
  (ls_1_9 99);;
let rec takeWhile__d0 _lh_takeWhile_arg1_4 _lh_takeWhile_arg2_4 =
  (match _lh_takeWhile_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_4, _lh_takeWhile_LH_C_1_4) -> 
      (if (_lh_takeWhile_arg1_4 _lh_takeWhile_LH_C_0_4) then
        (`LH_C(_lh_takeWhile_LH_C_0_4, ((takeWhile__d0 _lh_takeWhile_arg1_4) _lh_takeWhile_LH_C_1_4)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d1 _lh_takeWhile_arg1_7 _lh_takeWhile_arg2_7 =
  (match _lh_takeWhile_arg2_7 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_7, _lh_takeWhile_LH_C_1_7) -> 
      (if (_lh_takeWhile_arg1_7 _lh_takeWhile_LH_C_0_7) then
        (`LH_C(_lh_takeWhile_LH_C_0_7, ((takeWhile__d1 _lh_takeWhile_arg1_7) _lh_takeWhile_LH_C_1_7)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d2 _lh_takeWhile_arg1_3 _lh_takeWhile_arg2_3 =
  (match _lh_takeWhile_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_3, _lh_takeWhile_LH_C_1_3) -> 
      (if (_lh_takeWhile_arg1_3 _lh_takeWhile_LH_C_0_3) then
        (`LH_C(_lh_takeWhile_LH_C_0_3, ((takeWhile__d2 _lh_takeWhile_arg1_3) _lh_takeWhile_LH_C_1_3)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d3 _lh_takeWhile_arg1_6 _lh_takeWhile_arg2_6 =
  (match _lh_takeWhile_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_6, _lh_takeWhile_LH_C_1_6) -> 
      (if (_lh_takeWhile_arg1_6 _lh_takeWhile_LH_C_0_6) then
        (`LH_C(_lh_takeWhile_LH_C_0_6, ((takeWhile__d3 _lh_takeWhile_arg1_6) _lh_takeWhile_LH_C_1_6)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d4 _lh_takeWhile_arg1_2 _lh_takeWhile_arg2_2 =
  (match _lh_takeWhile_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_2, _lh_takeWhile_LH_C_1_2) -> 
      (if (_lh_takeWhile_arg1_2 _lh_takeWhile_LH_C_0_2) then
        (`LH_C(_lh_takeWhile_LH_C_0_2, ((takeWhile__d4 _lh_takeWhile_arg1_2) _lh_takeWhile_LH_C_1_2)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d5 _lh_takeWhile_arg1_1 _lh_takeWhile_arg2_1 =
  (match _lh_takeWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_1, _lh_takeWhile_LH_C_1_1) -> 
      (if (_lh_takeWhile_arg1_1 _lh_takeWhile_LH_C_0_1) then
        (`LH_C(_lh_takeWhile_LH_C_0_1, ((takeWhile__d5 _lh_takeWhile_arg1_1) _lh_takeWhile_LH_C_1_1)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d6 _lh_takeWhile_arg1_0 _lh_takeWhile_arg2_0 =
  (match _lh_takeWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_0, _lh_takeWhile_LH_C_1_0) -> 
      (if (_lh_takeWhile_arg1_0 _lh_takeWhile_LH_C_0_0) then
        (`LH_C(_lh_takeWhile_LH_C_0_0, ((takeWhile__d6 _lh_takeWhile_arg1_0) _lh_takeWhile_LH_C_1_0)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d7 _lh_takeWhile_arg1_5 _lh_takeWhile_arg2_5 =
  (match _lh_takeWhile_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_5, _lh_takeWhile_LH_C_1_5) -> 
      (if (_lh_takeWhile_arg1_5 _lh_takeWhile_LH_C_0_5) then
        (`LH_C(_lh_takeWhile_LH_C_0_5, ((takeWhile__d7 _lh_takeWhile_arg1_5) _lh_takeWhile_LH_C_1_5)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec take__d0 n_3 ls_2_2 =
  (if (n_3 > 0) then
    (match ls_2_2 with
      | `LH_C(h_4_1, t_4_1) -> 
        (`LH_C(h_4_1, ((take__d0 (n_3 - 1)) t_4_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2 n_0 ls_1_1 =
  (if (n_0 > 0) then
    (match ls_1_1 with
      | `LH_C(h_1_9, t_1_9) -> 
        (`LH_C(h_1_9, ((take__d2 (n_0 - 1)) t_1_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec try__d0 _lh_try_arg1_1 _lh_try_arg2_0 _lh_try_arg3_1 _lh_try_arg4_1 =
  (((_lh_try_arg2_0 _lh_try_arg1_1) _lh_try_arg3_1) _lh_try_arg4_1);;
let rec update__d0 _lh_update_arg1_0 _lh_update_arg2_0 _lh_update_arg3_0 =
  (match _lh_update_arg1_0 with
    | `Empty -> 
      (`Fork((`Empty), (`LH_P2(_lh_update_arg2_0, _lh_update_arg3_0)), (`Empty)))
    | `Fork(_lh_update_Fork_0_0, _lh_update_Fork_1_0, _lh_update_Fork_2_0) -> 
      (match _lh_update_Fork_1_0 with
        | `LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0) -> 
          (if (_lh_update_arg2_0 < _lh_update_LH_P2_0_0) then
            (`Fork((((update__d0 _lh_update_Fork_0_0) _lh_update_arg2_0) _lh_update_arg3_0), (`LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0)), _lh_update_Fork_2_0))
          else
            (if (_lh_update_arg2_0 = _lh_update_LH_P2_0_0) then
              (`Fork(_lh_update_Fork_0_0, (`LH_P2(_lh_update_arg2_0, _lh_update_arg3_0)), _lh_update_Fork_2_0))
            else
              (if (_lh_update_arg2_0 > _lh_update_LH_P2_0_0) then
                (`Fork(_lh_update_Fork_0_0, (`LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0)), (((update__d0 _lh_update_Fork_2_0) _lh_update_arg2_0) _lh_update_arg3_0)))
              else
                ((failwith "error") (`LH_C('u', (`LH_C('p', (`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec update__d1 _lh_update_arg1_1 _lh_update_arg2_1 _lh_update_arg3_1 =
  (match _lh_update_arg1_1 with
    | `Empty -> 
      (`Fork((`Empty), (`LH_P2(_lh_update_arg2_1, _lh_update_arg3_1)), (`Empty)))
    | `Fork(_lh_update_Fork_0_1, _lh_update_Fork_1_1, _lh_update_Fork_2_1) -> 
      (match _lh_update_Fork_1_1 with
        | `LH_P2(_lh_update_LH_P2_0_1, _lh_update_LH_P2_1_1) -> 
          (if (_lh_update_arg2_1 < _lh_update_LH_P2_0_1) then
            (`Fork((((update__d1 _lh_update_Fork_0_1) _lh_update_arg2_1) _lh_update_arg3_1), (`LH_P2(_lh_update_LH_P2_0_1, _lh_update_LH_P2_1_1)), _lh_update_Fork_2_1))
          else
            (if (_lh_update_arg2_1 = _lh_update_LH_P2_0_1) then
              (`Fork(_lh_update_Fork_0_1, (`LH_P2(_lh_update_arg2_1, _lh_update_arg3_1)), _lh_update_Fork_2_1))
            else
              (if (_lh_update_arg2_1 > _lh_update_LH_P2_0_1) then
                (`Fork(_lh_update_Fork_0_1, (`LH_P2(_lh_update_LH_P2_0_1, _lh_update_LH_P2_1_1)), (((update__d1 _lh_update_Fork_2_1) _lh_update_arg2_1) _lh_update_arg3_1)))
              else
                ((failwith "error") (`LH_C('u', (`LH_C('p', (`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec zip__d0 xs_8 ys_1_6 =
  (match xs_8 with
    | `LH_C(hx_0, tx_0) -> 
      ((ys_1_6 hx_0) tx_0)
    | `LH_N -> 
      (fun f_4 i_2 -> 
        i_2));;
let rec zip__d2 xs_4_8 ys_1_5_1 =
  (match xs_4_8 with
    | `LH_C(hx_5, tx_5) -> 
      (match ys_1_5_1 with
        | `LH_C(hy_2, ty_2) -> 
          (let rec _lh_listcomp_fun_ls_t_3_6 = ((zip__d2 tx_5) ty_2) in
            (let rec _lh_listcomp_fun_ls_h_3_5 = (let rec _lh_info_LH_P2_1_0 = hy_2 in
              (let rec _lh_info_LH_P2_0_0 = hx_5 in
                (fun _lh_listcomp_fun_ls_t_3_7 _lh_listcomp_fun_4_9 -> 
                  (match _lh_info_LH_P2_0_0 with
                    | `Question(_lh_info_Question_0_0) -> 
                      (`LH_C((`LH_P2(_lh_info_Question_0_0, _lh_info_LH_P2_1_0)), (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_3_7)))
                    | _ -> 
                      (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_3_7))))) in
              (fun _lh_listcomp_fun_5_0 -> 
                ((_lh_listcomp_fun_ls_h_3_5 _lh_listcomp_fun_ls_t_3_6) _lh_listcomp_fun_5_0))))
        | `LH_N -> 
          (fun _lh_listcomp_fun_5_1 -> 
            (`LH_N)))
    | `LH_N -> 
      (fun _lh_listcomp_fun_5_2 -> 
        (`LH_N)));;
let rec ask__d0 _lh_ask_arg1_0 _lh_ask_arg2_0 _lh_ask_arg3_0 =
  (match _lh_ask_arg2_0 with
    | `Soln(_lh_ask_Soln_0_0, _lh_ask_Soln_1_0) -> 
      (let rec sp_0 = (showPhrase__d2 ((subst__d1 _lh_ask_Soln_0_0) _lh_ask_arg3_0)) in
        (let rec ans_0 = (answer__d1 ((find__d1 _lh_ask_arg1_0) sp_0)) in
          (`LH_C((`Question(sp_0)), (if ans_0 then
            (`LH_C((`Soln(_lh_ask_Soln_0_0, _lh_ask_Soln_1_0)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"))
and break__d1 _lh_break_arg1_7 _lh_break_arg2_4 =
  (match _lh_break_arg2_4 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_8_1 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_4, _lh_break_LH_C_1_4) -> 
      (if (_lh_break_arg1_7 _lh_break_LH_C_0_4) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_2 = _lh_break_LH_C_1_4 in
          (fun _lh_dummy_8_2 -> 
            (lines__d0 _lh_lines_LH_C_1_2)))))
      else
        (let rec _lh_matchIdent_1_3_8 = ((break__d1 _lh_break_arg1_7) _lh_break_LH_C_1_4) in
          (match _lh_matchIdent_1_3_8 with
            | `LH_P2(_lh_break_LH_P2_0_4, _lh_break_LH_P2_1_4) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_4, _lh_break_LH_P2_0_4)), _lh_break_LH_P2_1_4))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and break__d3 _lh_break_arg1_5 _lh_break_arg2_2 =
  (match _lh_break_arg2_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_8 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_2, _lh_break_LH_C_1_2) -> 
      (if (_lh_break_arg1_5 _lh_break_LH_C_0_2) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_1 = _lh_break_LH_C_1_2 in
          (fun _lh_dummy_9 -> 
            (lines__d2 _lh_lines_LH_C_1_1)))))
      else
        (let rec _lh_matchIdent_1_4 = ((break__d3 _lh_break_arg1_5) _lh_break_LH_C_1_2) in
          (match _lh_matchIdent_1_4 with
            | `LH_P2(_lh_break_LH_P2_0_2, _lh_break_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_2, _lh_break_LH_P2_0_2)), _lh_break_LH_P2_1_2))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and compear__d0 _lh_compear_arg1_0 _lh_compear_arg2_0 _lh_compear_arg3_0 =
  (match _lh_compear_arg2_0 with
    | `Term(_lh_compear_Term_0_0, _lh_compear_Term_1_0) -> 
      (match _lh_compear_arg3_0 with
        | `Term(_lh_compear_Term_0_1, _lh_compear_Term_1_1) -> 
          (if (_lh_compear_Term_0_0 = _lh_compear_Term_0_1) then
            ((matchList__d0 _lh_compear_arg1_0) ((zip__d1 _lh_compear_Term_1_0) _lh_compear_Term_1_1))
          else
            (failure__d4 (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))
        | _ -> 
          (match _lh_compear_arg3_0 with
            | `Var(_lh_compear_Var_0_0) -> 
              (((compear__d0 _lh_compear_arg1_0) (`Var(_lh_compear_Var_0_0))) _lh_compear_arg2_0)
            | _ -> 
              (failwith "error")))
    | `Var(_lh_compear_Var_0_1) -> 
      (match _lh_compear_arg3_0 with
        | `Var(_lh_compear_Var_0_2) -> 
          (if (_lh_compear_Var_0_1 <> _lh_compear_Var_0_2) then
            (success__d6 (((update__d1 _lh_compear_arg1_0) _lh_compear_Var_0_1) (`Var(_lh_compear_Var_0_2))))
          else
            (success__d7 _lh_compear_arg1_0))
        | _ -> 
          (if (not ((occurs__d0 (let rec _lh_occurs_Var_0_0 = _lh_compear_Var_0_1 in
            (fun _lh_occurs_arg2_0 -> 
              (match _lh_occurs_arg2_0 with
                | `Var(_lh_occurs_Var_0_1) -> 
                  (_lh_occurs_Var_0_0 = _lh_occurs_Var_0_1)
                | _ -> 
                  (match _lh_occurs_arg2_0 with
                    | `Var(_lh_occurs_Var_0_2) -> 
                      false
                    | _ -> 
                      (failwith "error")))))) _lh_compear_arg3_0)) then
            (success__d5 (((update__d0 _lh_compear_arg1_0) _lh_compear_Var_0_1) _lh_compear_arg3_0))
          else
            (failure__d5 (`LH_C('o', (`LH_C('c', (`LH_C('c', (`LH_C('u', (`LH_C('r', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C(' ', (`LH_C('f', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C('d', (`LH_N))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (match _lh_compear_arg3_0 with
        | `Var(_lh_compear_Var_0_3) -> 
          (((compear__d0 _lh_compear_arg1_0) (`Var(_lh_compear_Var_0_3))) _lh_compear_arg2_0)
        | _ -> 
          (failwith "error")))
and definitions__d0 _lh_definitions_arg1_0 =
  (let rec verb_1 = (fun x_1_1 -> 
    (let rec _lh_matchIdent_2_6 = x_1_1 in
      (match _lh_matchIdent_2_6 with
        | `Term(_lh_definitions_Term_0_0, _lh_definitions_Term_1_0) -> 
          (match _lh_definitions_Term_0_0 with
            | `LH_C(_lh_definitions_LH_C_0_0, _lh_definitions_LH_C_1_0) -> 
              (match _lh_definitions_LH_C_0_0 with
                | 'i' -> 
                  (match _lh_definitions_LH_C_1_0 with
                    | `LH_C(_lh_definitions_LH_C_0_1, _lh_definitions_LH_C_1_1) -> 
                      (match _lh_definitions_LH_C_0_1 with
                        | 'f' -> 
                          (match _lh_definitions_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_definitions_Term_1_0 with
                                | `LH_C(_lh_definitions_LH_C_0_2, _lh_definitions_LH_C_1_2) -> 
                                  (match _lh_definitions_LH_C_0_2 with
                                    | `Term(_lh_definitions_Term_0_1, _lh_definitions_Term_1_1) -> 
                                      (match _lh_definitions_LH_C_1_2 with
                                        | `LH_C(_lh_definitions_LH_C_0_3, _lh_definitions_LH_C_1_3) -> 
                                          (match _lh_definitions_LH_C_1_3 with
                                            | `LH_N -> 
                                              _lh_definitions_Term_0_1
                                            | _ -> 
                                              (failwith "error"))
                                        | _ -> 
                                          (failwith "error"))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    (let rec rs_0 = (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_1_2 -> 
      (match _lh_listcomp_fun_para_1_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_1) -> 
          (`LH_C((rule__d0 (words__d0 _lh_listcomp_fun_ls_h_1_0)), (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_1)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_2_1 _lh_definitions_arg1_0)) in
      (let rec verbs_1 = (nub__d0 (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_1_3 -> 
        (match _lh_listcomp_fun_para_1_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_2) -> 
            (`LH_C((verb_1 _lh_listcomp_fun_ls_h_1_1), (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_2 rs_0))) in
        (let rec def_2 = (fun v_1 -> 
          (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_1_4 -> 
            (match _lh_listcomp_fun_para_1_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_3) -> 
                (if ((verb_1 _lh_listcomp_fun_ls_h_1_2) = v_1) then
                  (`LH_C(_lh_listcomp_fun_ls_h_1_2, (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_3)))
                else
                  (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_3))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_2_3 rs_0))) in
          ((updateList__d0 newTable__d0) (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_1_5 -> 
            ((_lh_listcomp_fun_para_1_5 _lh_listcomp_fun_2_4) def_2)) in
            (_lh_listcomp_fun_2_4 verbs_1)))))))
and display__d0 _lh_display_arg1_0 _lh_display_arg2_0 _lh_display_arg3_0 =
  (match _lh_display_arg1_0 with
    | `LH_N -> 
      (let rec t_8_6 = (let rec t_8_7 = (let rec t_8_8 = (let rec t_8_9 = (let rec t_9_0 = (let rec t_9_1 = (let rec t_9_2 = (let rec t_9_3 = (let rec t_9_4 = (let rec t_9_5 = (let rec t_9_6 = (let rec t_9_7 = (let rec t_9_8 = (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (fun _lh_dummy_2_7 -> 
        0) in
        (fun _lh_dummy_2_8 -> 
          (1 + (length__d0 t_1_0_5)))) in
        (fun _lh_dummy_2_9 -> 
          (1 + (length__d0 t_1_0_4)))) in
        (fun _lh_dummy_3_0 -> 
          (1 + (length__d0 t_1_0_3)))) in
        (fun _lh_dummy_3_1 -> 
          (1 + (length__d0 t_1_0_2)))) in
        (fun _lh_dummy_3_2 -> 
          (1 + (length__d0 t_1_0_1)))) in
        (fun _lh_dummy_3_3 -> 
          (1 + (length__d0 t_1_0_0)))) in
        (fun _lh_dummy_3_4 -> 
          (1 + (length__d0 t_9_9)))) in
        (fun _lh_dummy_3_5 -> 
          (1 + (length__d0 t_9_8)))) in
        (fun _lh_dummy_3_6 -> 
          (1 + (length__d0 t_9_7)))) in
        (fun _lh_dummy_3_7 -> 
          (1 + (length__d0 t_9_6)))) in
        (fun _lh_dummy_3_8 -> 
          (1 + (length__d0 t_9_5)))) in
        (fun _lh_dummy_3_9 -> 
          (1 + (length__d0 t_9_4)))) in
        (fun _lh_dummy_4_0 -> 
          (1 + (length__d0 t_9_3)))) in
        (fun _lh_dummy_4_1 -> 
          (1 + (length__d0 t_9_2)))) in
        (fun _lh_dummy_4_2 -> 
          (1 + (length__d0 t_9_1)))) in
        (fun _lh_dummy_4_3 -> 
          (1 + (length__d0 t_9_0)))) in
        (fun _lh_dummy_4_4 -> 
          (1 + (length__d0 t_8_9)))) in
        (fun _lh_dummy_4_5 -> 
          (1 + (length__d0 t_8_8)))) in
        (fun _lh_dummy_4_6 -> 
          (1 + (length__d0 t_8_7)))) in
        (fun _lh_dummy_4_7 -> 
          (1 + (length__d0 t_8_6))))
    | `LH_C(_lh_display_LH_C_0_0, _lh_display_LH_C_1_0) -> 
      (match _lh_display_LH_C_0_0 with
        | `Question(_lh_display_Question_0_0) -> 
          ((mappend__d1_d0 ((mappend__d1_d1 ((mappend__d1_d2 (let rec t_1_0_6 = (let rec t_1_0_7 = (let rec t_1_0_8 = (let rec t_1_0_9 = (let rec t_1_1_0 = (let rec t_1_1_1 = (let rec t_1_1_2 = (let rec t_1_1_3 = (let rec t_1_1_4 = (let rec t_1_1_5 = (let rec t_1_1_6 = (let rec t_1_1_7 = (let rec t_1_1_8 = (let rec t_1_1_9 = (let rec t_1_2_0 = (let rec t_1_2_1 = (fun ys_8_0 -> 
            ys_8_0) in
            (let rec h_8_0 = ' ' in
              (fun ys_8_1 -> 
                (`LH_C(h_8_0, ((mappend__d1_d2 t_1_2_1) ys_8_1)))))) in
            (let rec h_8_1 = 't' in
              (fun ys_8_2 -> 
                (`LH_C(h_8_1, ((mappend__d1_d2 t_1_2_0) ys_8_2)))))) in
            (let rec h_8_2 = 'a' in
              (fun ys_8_3 -> 
                (`LH_C(h_8_2, ((mappend__d1_d2 t_1_1_9) ys_8_3)))))) in
            (let rec h_8_3 = 'h' in
              (fun ys_8_4 -> 
                (`LH_C(h_8_3, ((mappend__d1_d2 t_1_1_8) ys_8_4)))))) in
            (let rec h_8_4 = 't' in
              (fun ys_8_5 -> 
                (`LH_C(h_8_4, ((mappend__d1_d2 t_1_1_7) ys_8_5)))))) in
            (let rec h_8_5 = ' ' in
              (fun ys_8_6 -> 
                (`LH_C(h_8_5, ((mappend__d1_d2 t_1_1_6) ys_8_6)))))) in
            (let rec h_8_6 = 'e' in
              (fun ys_8_7 -> 
                (`LH_C(h_8_6, ((mappend__d1_d2 t_1_1_5) ys_8_7)))))) in
            (let rec h_8_7 = 'u' in
              (fun ys_8_8 -> 
                (`LH_C(h_8_7, ((mappend__d1_d2 t_1_1_4) ys_8_8)))))) in
            (let rec h_8_8 = 'r' in
              (fun ys_8_9 -> 
                (`LH_C(h_8_8, ((mappend__d1_d2 t_1_1_3) ys_8_9)))))) in
            (let rec h_8_9 = 't' in
              (fun ys_9_0 -> 
                (`LH_C(h_8_9, ((mappend__d1_d2 t_1_1_2) ys_9_0)))))) in
            (let rec h_9_0 = ' ' in
              (fun ys_9_1 -> 
                (`LH_C(h_9_0, ((mappend__d1_d2 t_1_1_1) ys_9_1)))))) in
            (let rec h_9_1 = 't' in
              (fun ys_9_2 -> 
                (`LH_C(h_9_1, ((mappend__d1_d2 t_1_1_0) ys_9_2)))))) in
            (let rec h_9_2 = 'i' in
              (fun ys_9_3 -> 
                (`LH_C(h_9_2, ((mappend__d1_d2 t_1_0_9) ys_9_3)))))) in
            (let rec h_9_3 = ' ' in
              (fun ys_9_4 -> 
                (`LH_C(h_9_3, ((mappend__d1_d2 t_1_0_8) ys_9_4)))))) in
            (let rec h_9_4 = 's' in
              (fun ys_9_5 -> 
                (`LH_C(h_9_4, ((mappend__d1_d2 t_1_0_7) ys_9_5)))))) in
            (let rec h_9_5 = 'I' in
              (fun ys_9_6 -> 
                (`LH_C(h_9_5, ((mappend__d1_d2 t_1_0_6) ys_9_6))))))) _lh_display_Question_0_0)) (let rec t_1_2_2 = (let rec t_1_2_3 = (fun ys_9_7 -> 
            ys_9_7) in
            (let rec h_9_6 = '|' in
              (fun ys_9_8 -> 
                (let rec t_1_2_4 = ((mappend__d1_d0 t_1_2_3) ys_9_8) in
                  (fun _lh_dummy_4_8 -> 
                    (1 + (length__d0 t_1_2_4))))))) in
            (let rec h_9_7 = '?' in
              (fun ys_9_9 -> 
                (let rec t_1_2_5 = ((mappend__d1_d0 t_1_2_2) ys_9_9) in
                  (fun _lh_dummy_4_9 -> 
                    (1 + (length__d0 t_1_2_5))))))))) (((display__d0 _lh_display_LH_C_1_0) _lh_display_arg2_0) (tail__d5 _lh_display_arg3_0)))
        | `Soln(_lh_display_Soln_0_0, _lh_display_Soln_1_0) -> 
          (let rec sol_0 = ((showVars__d0 _lh_display_Soln_0_0) _lh_display_arg2_0) in
            (let rec etc_0 = (if ((_lh_display_arg3_0 = (`LH_N)) || ((head__d1_d0 _lh_display_arg3_0) = false)) then
              (fun _lh_dummy_5_0 -> 
                0)
            else
              (((display__d0 _lh_display_LH_C_1_0) _lh_display_arg2_0) (tail__d6 _lh_display_arg3_0))) in
              ((mappend__d1_d3 ((mappend__d1_d4 ((mappend__d1_d5 (let rec t_1_2_6 = (let rec t_1_2_7 = (let rec t_1_2_8 = (let rec t_1_2_9 = (let rec t_1_3_0 = (let rec t_1_3_1 = (let rec t_1_3_2 = (let rec t_1_3_3 = (let rec t_1_3_4 = (let rec t_1_3_5 = (fun ys_1_0_0 -> 
                ys_1_0_0) in
                (let rec h_9_8 = ' ' in
                  (fun ys_1_0_1 -> 
                    (`LH_C(h_9_8, ((mappend__d1_d5 t_1_3_5) ys_1_0_1)))))) in
                (let rec h_9_9 = ':' in
                  (fun ys_1_0_2 -> 
                    (`LH_C(h_9_9, ((mappend__d1_d5 t_1_3_4) ys_1_0_2)))))) in
                (let rec h_1_0_0 = 'n' in
                  (fun ys_1_0_3 -> 
                    (`LH_C(h_1_0_0, ((mappend__d1_d5 t_1_3_3) ys_1_0_3)))))) in
                (let rec h_1_0_1 = 'o' in
                  (fun ys_1_0_4 -> 
                    (`LH_C(h_1_0_1, ((mappend__d1_d5 t_1_3_2) ys_1_0_4)))))) in
                (let rec h_1_0_2 = 'i' in
                  (fun ys_1_0_5 -> 
                    (`LH_C(h_1_0_2, ((mappend__d1_d5 t_1_3_1) ys_1_0_5)))))) in
                (let rec h_1_0_3 = 't' in
                  (fun ys_1_0_6 -> 
                    (`LH_C(h_1_0_3, ((mappend__d1_d5 t_1_3_0) ys_1_0_6)))))) in
                (let rec h_1_0_4 = 'u' in
                  (fun ys_1_0_7 -> 
                    (`LH_C(h_1_0_4, ((mappend__d1_d5 t_1_2_9) ys_1_0_7)))))) in
                (let rec h_1_0_5 = 'l' in
                  (fun ys_1_0_8 -> 
                    (`LH_C(h_1_0_5, ((mappend__d1_d5 t_1_2_8) ys_1_0_8)))))) in
                (let rec h_1_0_6 = 'o' in
                  (fun ys_1_0_9 -> 
                    (`LH_C(h_1_0_6, ((mappend__d1_d5 t_1_2_7) ys_1_0_9)))))) in
                (let rec h_1_0_7 = 'S' in
                  (fun ys_1_1_0 -> 
                    (`LH_C(h_1_0_7, ((mappend__d1_d5 t_1_2_6) ys_1_1_0))))))) sol_0)) (let rec t_1_3_6 = (let rec t_1_3_7 = (let rec t_1_3_8 = (let rec t_1_3_9 = (let rec t_1_4_0 = (let rec t_1_4_1 = (let rec t_1_4_2 = (let rec t_1_4_3 = (fun ys_1_1_1 -> 
                ys_1_1_1) in
                (let rec h_1_0_8 = '|' in
                  (fun ys_1_1_2 -> 
                    (let rec t_1_4_4 = ((mappend__d1_d3 t_1_4_3) ys_1_1_2) in
                      (fun _lh_dummy_5_1 -> 
                        (1 + (length__d0 t_1_4_4))))))) in
                (let rec h_1_0_9 = '?' in
                  (fun ys_1_1_3 -> 
                    (let rec t_1_4_5 = ((mappend__d1_d3 t_1_4_2) ys_1_1_3) in
                      (fun _lh_dummy_5_2 -> 
                        (1 + (length__d0 t_1_4_5))))))) in
                (let rec h_1_1_0 = 'e' in
                  (fun ys_1_1_4 -> 
                    (let rec t_1_4_6 = ((mappend__d1_d3 t_1_4_1) ys_1_1_4) in
                      (fun _lh_dummy_5_3 -> 
                        (1 + (length__d0 t_1_4_6))))))) in
                (let rec h_1_1_1 = 'r' in
                  (fun ys_1_1_5 -> 
                    (let rec t_1_4_7 = ((mappend__d1_d3 t_1_4_0) ys_1_1_5) in
                      (fun _lh_dummy_5_4 -> 
                        (1 + (length__d0 t_1_4_7))))))) in
                (let rec h_1_1_2 = 'o' in
                  (fun ys_1_1_6 -> 
                    (let rec t_1_4_8 = ((mappend__d1_d3 t_1_3_9) ys_1_1_6) in
                      (fun _lh_dummy_5_5 -> 
                        (1 + (length__d0 t_1_4_8))))))) in
                (let rec h_1_1_3 = 'M' in
                  (fun ys_1_1_7 -> 
                    (let rec t_1_4_9 = ((mappend__d1_d3 t_1_3_8) ys_1_1_7) in
                      (fun _lh_dummy_5_6 -> 
                        (1 + (length__d0 t_1_4_9))))))) in
                (let rec h_1_1_4 = ' ' in
                  (fun ys_1_1_8 -> 
                    (let rec t_1_5_0 = ((mappend__d1_d3 t_1_3_7) ys_1_1_8) in
                      (fun _lh_dummy_5_7 -> 
                        (1 + (length__d0 t_1_5_0))))))) in
                (let rec h_1_1_5 = '.' in
                  (fun ys_1_1_9 -> 
                    (let rec t_1_5_1 = ((mappend__d1_d3 t_1_3_6) ys_1_1_9) in
                      (fun _lh_dummy_5_8 -> 
                        (1 + (length__d0 t_1_5_1))))))))) etc_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and dropWhile__d1_d0 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (fun _lh_dummy_1_9 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile__d1_d0 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (let rec _lh_words_LH_C_1_1 = _lh_dropWhile_LH_C_1_1 in
          (let rec _lh_words_LH_C_0_1 = _lh_dropWhile_LH_C_0_1 in
            (fun _lh_dummy_2_0 -> 
              (let rec _lh_matchIdent_2_2 = ((break__d5 isSpace__d5) (`LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1))) in
                (match _lh_matchIdent_2_2 with
                  | `LH_P2(_lh_words_LH_P2_0_1, _lh_words_LH_P2_1_1) -> 
                    (`LH_C(_lh_words_LH_P2_0_1, (words__d2 _lh_words_LH_P2_1_1)))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"))
and dropWhile__d5 _lh_dropWhile_arg1_3 _lh_dropWhile_arg2_3 =
  (match _lh_dropWhile_arg2_3 with
    | `LH_N -> 
      (fun _lh_dummy_2_3 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_3, _lh_dropWhile_LH_C_1_3) -> 
      (if (_lh_dropWhile_arg1_3 _lh_dropWhile_LH_C_0_3) then
        ((dropWhile__d5 _lh_dropWhile_arg1_3) _lh_dropWhile_LH_C_1_3)
      else
        (let rec _lh_words_LH_C_1_2 = _lh_dropWhile_LH_C_1_3 in
          (let rec _lh_words_LH_C_0_2 = _lh_dropWhile_LH_C_0_3 in
            (fun _lh_dummy_2_4 -> 
              (let rec _lh_matchIdent_2_5 = ((break__d0 isSpace__d1) (`LH_C(_lh_words_LH_C_0_2, _lh_words_LH_C_1_2))) in
                (match _lh_matchIdent_2_5 with
                  | `LH_P2(_lh_words_LH_P2_0_2, _lh_words_LH_P2_1_2) -> 
                    (`LH_C(_lh_words_LH_P2_0_2, (words__d0 _lh_words_LH_P2_1_2)))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"))
and dropWhile__d9 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (fun _lh_dummy_2 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile__d9 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (let rec _lh_words_LH_C_1_0 = _lh_dropWhile_LH_C_1_0 in
          (let rec _lh_words_LH_C_0_0 = _lh_dropWhile_LH_C_0_0 in
            (fun _lh_dummy_3 -> 
              (let rec _lh_matchIdent_4 = ((break__d4 isSpace__d3) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
                (match _lh_matchIdent_4 with
                  | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
                    (`LH_C(_lh_words_LH_P2_0_0, (words__d1 _lh_words_LH_P2_1_0)))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"))
and enterList__d0 _lh_enterList_arg1_0 _lh_enterList_arg2_0 =
  (match _lh_enterList_arg2_0 with
    | `LH_N -> 
      _lh_enterList_arg1_0
    | _ -> 
      (match _lh_enterList_arg1_0 with
        | `Empty -> 
          (match _lh_enterList_arg2_0 with
            | `LH_C(_lh_enterList_LH_C_0_0, _lh_enterList_LH_C_1_0) -> 
              (let rec k_0 = (fst__d3 _lh_enterList_LH_C_0_0) in
                (let rec left_2 = ((enterList__d0 (`Empty)) (let rec _lh_listcomp_fun_3_7 = (fun _lh_listcomp_fun_para_2_7 -> 
                  (match _lh_listcomp_fun_para_2_7 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_t_2_6) -> 
                      (if ((fst__d4 _lh_listcomp_fun_ls_h_2_5) < k_0) then
                        (`LH_C(_lh_listcomp_fun_ls_h_2_5, (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_6)))
                      else
                        (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_6))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_3_7 _lh_enterList_LH_C_1_0))) in
                  (let rec right_2 = ((enterList__d0 (`Empty)) (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_2_8 -> 
                    (match _lh_listcomp_fun_para_2_8 with
                      | `LH_C(_lh_listcomp_fun_ls_h_2_6, _lh_listcomp_fun_ls_t_2_7) -> 
                        (if ((fst__d5 _lh_listcomp_fun_ls_h_2_6) > k_0) then
                          (`LH_C(_lh_listcomp_fun_ls_h_2_6, (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_7)))
                        else
                          (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_7))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_3_8 _lh_enterList_LH_C_1_0))) in
                    (`Fork(left_2, _lh_enterList_LH_C_0_0, right_2)))))
            | _ -> 
              (match _lh_enterList_arg1_0 with
                | `Fork(_lh_enterList_Fork_0_0, _lh_enterList_Fork_1_0, _lh_enterList_Fork_2_0) -> 
                  (let rec k_1 = (fst__d0 _lh_enterList_Fork_1_0) in
                    (let rec left'_0 = ((enterList__d0 _lh_enterList_Fork_0_0) (let rec _lh_listcomp_fun_3_9 = (fun _lh_listcomp_fun_para_2_9 -> 
                      (match _lh_listcomp_fun_para_2_9 with
                        | `LH_C(_lh_listcomp_fun_ls_h_2_7, _lh_listcomp_fun_ls_t_2_8) -> 
                          (if ((fst__d1 _lh_listcomp_fun_ls_h_2_7) < k_1) then
                            (`LH_C(_lh_listcomp_fun_ls_h_2_7, (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_8)))
                          else
                            (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_8))
                        | `LH_N -> 
                          (`LH_N))) in
                      (_lh_listcomp_fun_3_9 _lh_enterList_arg2_0))) in
                      (let rec right'_0 = ((enterList__d0 _lh_enterList_Fork_2_0) (let rec _lh_listcomp_fun_4_0 = (fun _lh_listcomp_fun_para_3_0 -> 
                        (match _lh_listcomp_fun_para_3_0 with
                          | `LH_C(_lh_listcomp_fun_ls_h_2_8, _lh_listcomp_fun_ls_t_2_9) -> 
                            (if ((fst__d2 _lh_listcomp_fun_ls_h_2_8) > k_1) then
                              (`LH_C(_lh_listcomp_fun_ls_h_2_8, (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_2_9)))
                            else
                              (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_2_9))
                          | `LH_N -> 
                            (`LH_N))) in
                        (_lh_listcomp_fun_4_0 _lh_enterList_arg2_0))) in
                        (`Fork(left'_0, _lh_enterList_Fork_1_0, right'_0)))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_enterList_arg1_0 with
            | `Fork(_lh_enterList_Fork_0_1, _lh_enterList_Fork_1_1, _lh_enterList_Fork_2_1) -> 
              (let rec k_2 = (fst__d0 _lh_enterList_Fork_1_1) in
                (let rec left'_1 = ((enterList__d0 _lh_enterList_Fork_0_1) (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_3_1 -> 
                  (match _lh_listcomp_fun_para_3_1 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2_9, _lh_listcomp_fun_ls_t_3_0) -> 
                      (if ((fst__d1 _lh_listcomp_fun_ls_h_2_9) < k_2) then
                        (`LH_C(_lh_listcomp_fun_ls_h_2_9, (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_3_0)))
                      else
                        (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_3_0))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_4_1 _lh_enterList_arg2_0))) in
                  (let rec right'_1 = ((enterList__d0 _lh_enterList_Fork_2_1) (let rec _lh_listcomp_fun_4_2 = (fun _lh_listcomp_fun_para_3_2 -> 
                    (match _lh_listcomp_fun_para_3_2 with
                      | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_3_1) -> 
                        (if ((fst__d2 _lh_listcomp_fun_ls_h_3_0) > k_2) then
                          (`LH_C(_lh_listcomp_fun_ls_h_3_0, (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_1)))
                        else
                          (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_1))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_4_2 _lh_enterList_arg2_0))) in
                    (`Fork(left'_1, _lh_enterList_Fork_1_1, right'_1)))))
            | _ -> 
              (failwith "error"))))
and entries__d0 _lh_entries_arg1_1 =
  (match _lh_entries_arg1_1 with
    | `Empty -> 
      (`LH_N)
    | `Fork(_lh_entries_Fork_0_1, _lh_entries_Fork_1_1, _lh_entries_Fork_2_1) -> 
      ((mappend__d8 ((mappend__d9 (entries__d0 _lh_entries_Fork_0_1)) (let rec t_1_5_7 = (fun ys_1_2_9 -> 
        ys_1_2_9) in
        (let rec h_1_2_0 = _lh_entries_Fork_1_1 in
          (fun ys_1_3_0 -> 
            (`LH_C(h_1_2_0, ((mappend__d8 t_1_5_7) ys_1_3_0)))))))) (entries__d0 _lh_entries_Fork_2_1))
    | _ -> 
      (failwith "error"))
and entries__d1 _lh_entries_arg1_0 =
  (match _lh_entries_arg1_0 with
    | `Empty -> 
      (`LH_N)
    | `Fork(_lh_entries_Fork_0_0, _lh_entries_Fork_1_0, _lh_entries_Fork_2_0) -> 
      ((mappend__d4_d1 ((mappend__d4_d2 (entries__d1 _lh_entries_Fork_0_0)) (let rec t_8_2 = (fun ys_7_8 -> 
        ys_7_8) in
        (let rec h_7_8 = _lh_entries_Fork_1_0 in
          (fun ys_7_9 -> 
            (`LH_C(h_7_8, ((mappend__d4_d1 t_8_2) ys_7_9)))))))) (entries__d1 _lh_entries_Fork_2_0))
    | _ -> 
      (failwith "error"))
and fails__d0 _lh_fails_arg1_4 =
  ((fun _lh_funcomp_x_6 -> 
    (not (succeeds__d0 _lh_funcomp_x_6))) _lh_fails_arg1_4)
and fails__d1 _lh_fails_arg1_7 =
  ((fun _lh_funcomp_x_9 -> 
    (not (succeeds__d1 _lh_funcomp_x_9))) _lh_fails_arg1_7)
and fails__d2 _lh_fails_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    (not (succeeds__d2 _lh_funcomp_x_2))) _lh_fails_arg1_0)
and fails__d3 _lh_fails_arg1_2 =
  ((fun _lh_funcomp_x_4 -> 
    (not (succeeds__d3 _lh_funcomp_x_4))) _lh_fails_arg1_2)
and fails__d4 _lh_fails_arg1_3 =
  ((fun _lh_funcomp_x_5 -> 
    (not (succeeds__d4 _lh_funcomp_x_5))) _lh_fails_arg1_3)
and fails__d5 _lh_fails_arg1_6 =
  ((fun _lh_funcomp_x_8 -> 
    (not (succeeds__d5 _lh_funcomp_x_8))) _lh_fails_arg1_6)
and fails__d6 _lh_fails_arg1_5 =
  ((fun _lh_funcomp_x_7 -> 
    (not (succeeds__d6 _lh_funcomp_x_7))) _lh_fails_arg1_5)
and fails__d7 _lh_fails_arg1_1 =
  ((fun _lh_funcomp_x_3 -> 
    (not (succeeds__d7 _lh_funcomp_x_3))) _lh_fails_arg1_1)
and find__d0 _lh_find_arg1_0 _lh_find_arg2_0 =
  (let rec _lh_matchIdent_0 = _lh_find_arg1_0 in
    (match _lh_matchIdent_0 with
      | `Empty -> 
        (failure__d0 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_0, _lh_find_Fork_1_0, _lh_find_Fork_2_0) -> 
        (match _lh_find_Fork_1_0 with
          | `LH_P2(_lh_find_LH_P2_0_0, _lh_find_LH_P2_1_0) -> 
            (if (_lh_find_arg2_0 < _lh_find_LH_P2_0_0) then
              ((find__d0 _lh_find_Fork_0_0) _lh_find_arg2_0)
            else
              (if (_lh_find_arg2_0 = _lh_find_LH_P2_0_0) then
                (success__d0 _lh_find_LH_P2_1_0)
              else
                (if (_lh_find_arg2_0 > _lh_find_LH_P2_0_0) then
                  ((find__d0 _lh_find_Fork_2_0) _lh_find_arg2_0)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d1 _lh_find_arg1_6 _lh_find_arg2_1_0 =
  (let rec _lh_matchIdent_1_5_6 = _lh_find_arg1_6 in
    (match _lh_matchIdent_1_5_6 with
      | `Empty -> 
        (failure__d1 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_6, _lh_find_Fork_1_6, _lh_find_Fork_2_6) -> 
        (match _lh_find_Fork_1_6 with
          | `LH_P2(_lh_find_LH_P2_0_6, _lh_find_LH_P2_1_6) -> 
            (if (_lh_find_arg2_1_0 < _lh_find_LH_P2_0_6) then
              ((find__d1 _lh_find_Fork_0_6) _lh_find_arg2_1_0)
            else
              (if (_lh_find_arg2_1_0 = _lh_find_LH_P2_0_6) then
                (success__d1 _lh_find_LH_P2_1_6)
              else
                (if (_lh_find_arg2_1_0 > _lh_find_LH_P2_0_6) then
                  ((find__d1 _lh_find_Fork_2_6) _lh_find_arg2_1_0)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d2 _lh_find_arg1_2 _lh_find_arg2_4 =
  (let rec _lh_matchIdent_2_7 = _lh_find_arg1_2 in
    (match _lh_matchIdent_2_7 with
      | `Empty -> 
        (failure__d2 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_3, _lh_find_Fork_1_3, _lh_find_Fork_2_3) -> 
        (match _lh_find_Fork_1_3 with
          | `LH_P2(_lh_find_LH_P2_0_3, _lh_find_LH_P2_1_3) -> 
            (if (_lh_find_arg2_4 < _lh_find_LH_P2_0_3) then
              ((find__d2 _lh_find_Fork_0_3) _lh_find_arg2_4)
            else
              (if (_lh_find_arg2_4 = _lh_find_LH_P2_0_3) then
                (success__d2 _lh_find_LH_P2_1_3)
              else
                (if (_lh_find_arg2_4 > _lh_find_LH_P2_0_3) then
                  ((find__d2 _lh_find_Fork_2_3) _lh_find_arg2_4)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d4 _lh_find_arg1_4 _lh_find_arg2_6 =
  (let rec _lh_matchIdent_3_4 = _lh_find_arg1_4 in
    (match _lh_matchIdent_3_4 with
      | `Empty -> 
        (failure__d6 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_4, _lh_find_Fork_1_4, _lh_find_Fork_2_4) -> 
        (match _lh_find_Fork_1_4 with
          | `LH_P2(_lh_find_LH_P2_0_4, _lh_find_LH_P2_1_4) -> 
            (if (_lh_find_arg2_6 < _lh_find_LH_P2_0_4) then
              ((find__d4 _lh_find_Fork_0_4) _lh_find_arg2_6)
            else
              (if (_lh_find_arg2_6 = _lh_find_LH_P2_0_4) then
                (success__d8 _lh_find_LH_P2_1_4)
              else
                (if (_lh_find_arg2_6 > _lh_find_LH_P2_0_4) then
                  ((find__d4 _lh_find_Fork_2_4) _lh_find_arg2_6)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d5 _lh_find_arg1_1 _lh_find_arg2_3 =
  (let rec _lh_matchIdent_2_1 = _lh_find_arg1_1 in
    (match _lh_matchIdent_2_1 with
      | `Empty -> 
        (failure__d7 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_2, _lh_find_Fork_1_2, _lh_find_Fork_2_2) -> 
        (match _lh_find_Fork_1_2 with
          | `LH_P2(_lh_find_LH_P2_0_2, _lh_find_LH_P2_1_2) -> 
            (if (_lh_find_arg2_3 < _lh_find_LH_P2_0_2) then
              ((find__d5 _lh_find_Fork_0_2) _lh_find_arg2_3)
            else
              (if (_lh_find_arg2_3 = _lh_find_LH_P2_0_2) then
                (success__d9 _lh_find_LH_P2_1_2)
              else
                (if (_lh_find_arg2_3 > _lh_find_LH_P2_0_2) then
                  ((find__d5 _lh_find_Fork_2_2) _lh_find_arg2_3)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and freshCopy__d0 _lh_freshCopy_arg1_0 _lh_freshCopy_arg2_0 =
  (match _lh_freshCopy_arg1_0 with
    | `Soln(_lh_freshCopy_Soln_0_0, _lh_freshCopy_Soln_1_0) -> 
      (let rec xs_2_2 = (vars__d0 _lh_freshCopy_arg2_0) in
        (let rec n_4 = (length__d2 xs_2_2) in
          (let rec tab_0 = ((updateList__d1 newTable__d3) ((zip__d0 xs_2_2) (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_5 -> 
            (_lh_listcomp_fun_para_5 _lh_listcomp_fun_9)) in
            (_lh_listcomp_fun_9 ((take__d1 n_4) _lh_freshCopy_Soln_1_0))))) in
            (let rec _lh_lookUp_LH_P2_1_0 = ((subst__d2 tab_0) _lh_freshCopy_arg2_0) in
              (let rec _lh_lookUp_LH_P2_0_0 = (let rec _lh_try_Soln_1_0 = ((drop__d1 n_4) _lh_freshCopy_Soln_1_0) in
                (let rec _lh_try_Soln_0_0 = _lh_freshCopy_Soln_0_0 in
                  (fun _lh_try_arg1_0 _lh_try_arg3_0 _lh_try_arg4_0 -> 
                    (match _lh_try_arg4_0 with
                      | `Term(_lh_try_Term_0_0, _lh_try_Term_1_0) -> 
                        (match _lh_try_Term_0_0 with
                          | `LH_C(_lh_try_LH_C_0_0, _lh_try_LH_C_1_0) -> 
                            (match _lh_try_LH_C_0_0 with
                              | 'i' -> 
                                (match _lh_try_LH_C_1_0 with
                                  | `LH_C(_lh_try_LH_C_0_1, _lh_try_LH_C_1_1) -> 
                                    (match _lh_try_LH_C_0_1 with
                                      | 'f' -> 
                                        (match _lh_try_LH_C_1_1 with
                                          | `LH_N -> 
                                            (match _lh_try_Term_1_0 with
                                              | `LH_C(_lh_try_LH_C_0_2, _lh_try_LH_C_1_2) -> 
                                                (match _lh_try_LH_C_1_2 with
                                                  | `LH_C(_lh_try_LH_C_0_3, _lh_try_LH_C_1_3) -> 
                                                    (match _lh_try_LH_C_1_3 with
                                                      | `LH_N -> 
                                                        (let rec m_1 = (((match__d0 _lh_try_Soln_0_0) _lh_try_arg3_0) _lh_try_LH_C_0_2) in
                                                          (if (fails__d3 m_1) then
                                                            (`LH_N)
                                                          else
                                                            (((solve__d0 _lh_try_arg1_0) (`Soln((answer__d4 m_1), _lh_try_Soln_1_0))) _lh_try_LH_C_0_3)))
                                                      | _ -> 
                                                        (failwith "error"))
                                                  | _ -> 
                                                    (failwith "error"))
                                              | _ -> 
                                                (failwith "error"))
                                          | _ -> 
                                            (failwith "error"))
                                      | _ -> 
                                        (failwith "error"))
                                  | _ -> 
                                    (failwith "error"))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))))) in
                (fun _lh_listcomp_fun_ls_t_5 _lh_listcomp_fun_1_0 _lh_lookUp_arg1_3 _lh_lookUp_arg3_3 -> 
                  (let rec t_4_2 = (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_5) in
                    (let rec h_4_2 = ((((try__d0 _lh_lookUp_arg1_3) _lh_lookUp_LH_P2_0_0) _lh_lookUp_arg3_3) _lh_lookUp_LH_P2_1_0) in
                      (fun _lh_dummy_1_2 -> 
                        ((mappend__d4_d0 h_4_2) (concat__d1 t_4_2)))))))))))
    | _ -> 
      (failwith "error"))
and goal__d0 _lh_goal_arg1_0 =
  (if ((inList__d0 (`LH_C('o', (`LH_C('r', (`LH_N)))))) _lh_goal_arg1_0) then
    ((((split__d1 _lh_goal_arg1_0) goal__d0) (`LH_C('o', (`LH_C('r', (`LH_N)))))) goal__d0)
  else
    (if ((inList__d1 (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) _lh_goal_arg1_0) then
      ((((split__d2 _lh_goal_arg1_0) goal__d0) (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) goal__d0)
    else
      (relation__d0 _lh_goal_arg1_0)))
and goal__d1 _lh_goal_arg1_1 =
  (if ((inList__d8 (`LH_C('o', (`LH_C('r', (`LH_N)))))) _lh_goal_arg1_1) then
    ((((split__d6 _lh_goal_arg1_1) goal__d1) (`LH_C('o', (`LH_C('r', (`LH_N)))))) goal__d1)
  else
    (if ((inList__d9 (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) _lh_goal_arg1_1) then
      ((((split__d7 _lh_goal_arg1_1) goal__d1) (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) goal__d1)
    else
      (relation__d2 _lh_goal_arg1_1)))
and lines__d0 _lh_lines_arg1_2 =
  (let rec _lh_matchIdent_1_4_8 = ((break__d1 (fun x_2_0 -> 
    (x_2_0 = '|'))) _lh_lines_arg1_2) in
    (match _lh_matchIdent_1_4_8 with
      | `LH_P2(_lh_lines_LH_P2_0_2, _lh_lines_LH_P2_1_2) -> 
        (`LH_C(_lh_lines_LH_P2_0_2, (let rec _lh_matchIdent_1_4_9 = _lh_lines_LH_P2_1_2 in
          (_lh_matchIdent_1_4_9 99))))
      | _ -> 
        (failwith "error")))
and lines__d1 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_3_1 = ((break__d2 (fun x_1_4 -> 
    (x_1_4 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_3_1 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (let rec _lh_listcomp_fun_ls_t_1_4 = (let rec _lh_matchIdent_3_2 = _lh_lines_LH_P2_1_0 in
          (_lh_matchIdent_3_2 99)) in
          (let rec _lh_listcomp_fun_ls_h_1_3 = _lh_lines_LH_P2_0_0 in
            (fun _lh_listcomp_fun_2_5 -> 
              (`LH_C(((words__d2 _lh_listcomp_fun_ls_h_1_3) <> (`LH_C((`LH_C('n', (`LH_C('o', (`LH_N))))), (`LH_N)))), (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_4))))))
      | _ -> 
        (failwith "error")))
and lines__d2 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_1_4_3 = ((break__d3 (fun x_1_7 -> 
    (x_1_7 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_1_4_3 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_1_4_4 = _lh_lines_LH_P2_1_1 in
          (_lh_matchIdent_1_4_4 99))))
      | _ -> 
        (failwith "error")))
and lookUp__d0 _lh_lookUp_arg1_0 _lh_lookUp_arg2_0 _lh_lookUp_arg3_0 _lh_lookUp_arg4_0 =
  (let rec copies_0 = (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (let rec _lh_listcomp_fun_ls_t_2 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
          (let rec _lh_listcomp_fun_ls_h_2 = ((freshCopy__d0 _lh_lookUp_arg2_0) _lh_listcomp_fun_ls_h_1) in
            (fun _lh_listcomp_fun_2 _lh_lookUp_arg1_1 _lh_lookUp_arg3_1 -> 
              ((((_lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_2) _lh_lookUp_arg1_1) _lh_lookUp_arg3_1))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_3 _lh_lookUp_arg1_2 _lh_lookUp_arg3_2 _lh_dummy_4 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_1 _lh_lookUp_arg4_0)) in
    (concat__d1 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
      (((_lh_listcomp_fun_para_2 _lh_listcomp_fun_4) _lh_lookUp_arg1_0) _lh_lookUp_arg3_0)) in
      (_lh_listcomp_fun_4 copies_0))))
and mappend__d1 xs_3_1 ys_7_6 =
  (match xs_3_1 with
    | `LH_C(h_7_6, t_8_0) -> 
      (let rec t_8_1 = ((mappend__d1 t_8_0) ys_7_6) in
        (let rec h_7_7 = h_7_6 in
          (fun ys_7_7 -> 
            (`LH_C(h_7_7, ((mappend__d0 t_8_1) ys_7_7))))))
    | `LH_N -> 
      ys_7_6)
and mappend__d1_d1 xs_2_6 ys_5_2 =
  (match xs_2_6 with
    | `LH_C(h_5_4, t_5_5) -> 
      (let rec t_5_6 = ((mappend__d1_d1 t_5_5) ys_5_2) in
        (let rec h_5_5 = h_5_4 in
          (fun ys_5_3 -> 
            (let rec t_5_7 = ((mappend__d1_d0 t_5_6) ys_5_3) in
              (fun _lh_dummy_1_4 -> 
                (1 + (length__d0 t_5_7)))))))
    | `LH_N -> 
      ys_5_2)
and mappend__d1_d4 xs_2_8 ys_5_6 =
  (match xs_2_8 with
    | `LH_C(h_5_9, t_6_1) -> 
      (let rec t_6_2 = ((mappend__d1_d4 t_6_1) ys_5_6) in
        (let rec h_6_0 = h_5_9 in
          (fun ys_5_7 -> 
            (let rec t_6_3 = ((mappend__d1_d3 t_6_2) ys_5_7) in
              (fun _lh_dummy_1_5 -> 
                (1 + (length__d0 t_6_3)))))))
    | `LH_N -> 
      ys_5_6)
and mappend__d1_d7 xs_1_4 ys_2_3 =
  (match xs_1_4 with
    | `LH_C(h_2_0, t_2_0) -> 
      (let rec t_2_1 = ((mappend__d1_d7 t_2_0) ys_2_3) in
        (let rec h_2_1 = h_2_0 in
          (fun ys_2_4 -> 
            (`LH_C(h_2_1, ((mappend__d1_d6 t_2_1) ys_2_4))))))
    | `LH_N -> 
      ys_2_3)
and mappend__d1_d9 xs_9 ys_1_7 =
  (match xs_9 with
    | `LH_C(h_1_4, t_1_4) -> 
      (let rec t_1_5 = ((mappend__d1_d9 t_1_4) ys_1_7) in
        (let rec h_1_5 = h_1_4 in
          (fun ys_1_8 -> 
            (`LH_C(h_1_5, ((mappend__d1_d8 t_1_5) ys_1_8))))))
    | `LH_N -> 
      ys_1_7)
and mappend__d2_d1 xs_2_1 ys_3_8 =
  (match xs_2_1 with
    | `LH_C(h_3_6, t_3_6) -> 
      (let rec t_3_7 = ((mappend__d2_d1 t_3_6) ys_3_8) in
        (let rec h_3_7 = h_3_6 in
          (fun ys_3_9 -> 
            (`LH_C(h_3_7, ((mappend__d2_d0 t_3_7) ys_3_9))))))
    | `LH_N -> 
      ys_3_8)
and mappend__d2_d3 xs_3_7 ys_1_3_2 =
  (match xs_3_7 with
    | `LH_C(h_1_2_2, t_1_5_9) -> 
      (let rec t_1_6_0 = ((mappend__d2_d3 t_1_5_9) ys_1_3_2) in
        (let rec h_1_2_3 = h_1_2_2 in
          (fun ys_1_3_3 -> 
            (`LH_C(h_1_2_3, ((mappend__d2_d2 t_1_6_0) ys_1_3_3))))))
    | `LH_N -> 
      ys_1_3_2)
and mappend__d2_d5 xs_1_7 ys_3_0 =
  (match xs_1_7 with
    | `LH_C(h_2_6, t_2_6) -> 
      (let rec t_2_7 = ((mappend__d2_d5 t_2_6) ys_3_0) in
        (let rec h_2_7 = h_2_6 in
          (fun ys_3_1 -> 
            (`LH_C(h_2_7, ((mappend__d2_d4 t_2_7) ys_3_1))))))
    | `LH_N -> 
      ys_3_0)
and mappend__d2_d7 xs_2_0 ys_3_6 =
  (match xs_2_0 with
    | `LH_C(h_3_4, t_3_4) -> 
      (let rec t_3_5 = ((mappend__d2_d7 t_3_4) ys_3_6) in
        (let rec h_3_5 = h_3_4 in
          (fun ys_3_7 -> 
            (`LH_C(h_3_5, ((mappend__d2_d6 t_3_5) ys_3_7))))))
    | `LH_N -> 
      ys_3_6)
and mappend__d2_d9 xs_2_4 ys_4_1 =
  (match xs_2_4 with
    | `LH_C(h_4_4, t_4_4) -> 
      (let rec t_4_5 = ((mappend__d2_d9 t_4_4) ys_4_1) in
        (let rec h_4_5 = h_4_4 in
          (fun ys_4_2 -> 
            (let rec t_4_6 = ((mappend__d2_d8 t_4_5) ys_4_2) in
              (fun _lh_dummy_1_3 -> 
                (1 + (length__d0 t_4_6)))))))
    | `LH_N -> 
      ys_4_1)
and mappend__d3 xs_4_2 ys_1_3_8 =
  (match xs_4_2 with
    | `LH_C(h_1_4_0, t_1_7_8) -> 
      (let rec t_1_7_9 = ((mappend__d3 t_1_7_8) ys_1_3_8) in
        (let rec h_1_4_1 = h_1_4_0 in
          (fun ys_1_3_9 -> 
            (`LH_C(h_1_4_1, ((mappend__d2 t_1_7_9) ys_1_3_9))))))
    | `LH_N -> 
      ys_1_3_8)
and mappend__d3_d2 xs_4_6 ys_1_4_8 =
  (match xs_4_6 with
    | `LH_C(h_1_5_0, t_1_9_2) -> 
      (let rec t_1_9_3 = ((mappend__d3_d2 t_1_9_2) ys_1_4_8) in
        (let rec h_1_5_1 = h_1_5_0 in
          (fun ys_1_4_9 -> 
            (`LH_C(h_1_5_1, ((mappend__d3_d1 t_1_9_3) ys_1_4_9))))))
    | `LH_N -> 
      ys_1_4_8)
and mappend__d3_d4 xs_1_6 ys_2_8 =
  (match xs_1_6 with
    | `LH_C(h_2_3, t_2_3) -> 
      (let rec t_2_4 = ((mappend__d3_d4 t_2_3) ys_2_8) in
        (let rec h_2_4 = h_2_3 in
          (fun ys_2_9 -> 
            (`LH_C(h_2_4, ((mappend__d3_d3 t_2_4) ys_2_9))))))
    | `LH_N -> 
      ys_2_8)
and mappend__d3_d6 xs_2_7 ys_5_4 =
  (match xs_2_7 with
    | `LH_C(h_5_6, t_5_8) -> 
      (let rec t_5_9 = ((mappend__d3_d6 t_5_8) ys_5_4) in
        (let rec h_5_7 = h_5_6 in
          (fun ys_5_5 -> 
            (`LH_C(h_5_7, ((mappend__d3_d5 t_5_9) ys_5_5))))))
    | `LH_N -> 
      ys_5_4)
and mappend__d3_d8 xs_4_4 ys_1_4_1 =
  (match xs_4_4 with
    | `LH_C(h_1_4_3, t_1_8_2) -> 
      (let rec t_1_8_3 = ((mappend__d3_d8 t_1_8_2) ys_1_4_1) in
        (let rec h_1_4_4 = h_1_4_3 in
          (fun ys_1_4_2 -> 
            (`LH_C(h_1_4_4, ((mappend__d3_d7 t_1_8_3) ys_1_4_2))))))
    | `LH_N -> 
      ys_1_4_1)
and mappend__d4_d2 xs_2_5 ys_5_0 =
  (match xs_2_5 with
    | `LH_C(h_5_2, t_5_3) -> 
      (let rec t_5_4 = ((mappend__d4_d2 t_5_3) ys_5_0) in
        (let rec h_5_3 = h_5_2 in
          (fun ys_5_1 -> 
            (`LH_C(h_5_3, ((mappend__d4_d1 t_5_4) ys_5_1))))))
    | `LH_N -> 
      ys_5_0)
and mappend__d5 xs_5 ys_7 =
  (match xs_5 with
    | `LH_C(h_7, t_7) -> 
      (let rec t_8 = ((mappend__d5 t_7) ys_7) in
        (let rec h_8 = h_7 in
          (fun ys_8 -> 
            (`LH_C(h_8, ((mappend__d4 t_8) ys_8))))))
    | `LH_N -> 
      ys_7)
and mappend__d7 xs_7 ys_1_4 =
  (match xs_7 with
    | `LH_C(h_1_2, t_1_2) -> 
      (let rec t_1_3 = ((mappend__d7 t_1_2) ys_1_4) in
        (let rec h_1_3 = h_1_2 in
          (fun ys_1_5 -> 
            (`LH_C(h_1_3, ((mappend__d6 t_1_3) ys_1_5))))))
    | `LH_N -> 
      ys_1_4)
and mappend__d9 xs_3_5 ys_1_2_5 =
  (match xs_3_5 with
    | `LH_C(h_1_1_7, t_1_5_4) -> 
      (let rec t_1_5_5 = ((mappend__d9 t_1_5_4) ys_1_2_5) in
        (let rec h_1_1_8 = h_1_1_7 in
          (fun ys_1_2_6 -> 
            (`LH_C(h_1_1_8, ((mappend__d8 t_1_5_5) ys_1_2_6))))))
    | `LH_N -> 
      ys_1_2_5)
and match__d0 _lh_match_arg1_0 _lh_match_arg2_0 _lh_match_arg3_0 =
  (((compear__d0 _lh_match_arg1_0) ((subst__d3 _lh_match_arg1_0) _lh_match_arg2_0)) ((subst__d4 _lh_match_arg1_0) _lh_match_arg3_0))
and noun__d0 _lh_noun_arg1_0 =
  (match _lh_noun_arg1_0 with
    | `LH_C(_lh_noun_LH_C_0_0, _lh_noun_LH_C_1_0) -> 
      (match _lh_noun_LH_C_1_0 with
        | `LH_C(_lh_noun_LH_C_0_1, _lh_noun_LH_C_1_1) -> 
          (match _lh_noun_LH_C_1_1 with
            | `LH_N -> 
              (if ((inList__d3 _lh_noun_LH_C_0_0) (let rec _lh_inList_LH_C_1_0 = (let rec _lh_inList_LH_C_1_1 = (let rec _lh_inList_LH_C_1_2 = (fun _lh_inList_arg1_0 -> 
                false) in
                (let rec _lh_inList_LH_C_0_0 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_1 -> 
                    (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_0) then
                      true
                    else
                      ((inList__d3 _lh_inList_arg1_1) _lh_inList_LH_C_1_2))))) in
                (let rec _lh_inList_LH_C_0_1 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_2 -> 
                    (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_1) then
                      true
                    else
                      ((inList__d3 _lh_inList_arg1_2) _lh_inList_LH_C_1_1))))) in
                (let rec _lh_inList_LH_C_0_2 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_3 -> 
                    (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_2) then
                      true
                    else
                      ((inList__d3 _lh_inList_arg1_3) _lh_inList_LH_C_1_0)))))) then
                (noun__d0 (`LH_C(((mappend__d0 ((mappend__d1 _lh_noun_LH_C_0_0) (let rec t_4 = (fun ys_3 -> 
                  ys_3) in
                  (let rec h_4 = ' ' in
                    (fun ys_4 -> 
                      (`LH_C(h_4, ((mappend__d0 t_4) ys_4)))))))) _lh_noun_LH_C_0_1), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d1 _lh_noun_LH_C_0_0)) && ((head__d2 _lh_noun_LH_C_0_0) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_0))
          else
            (`Term(_lh_noun_LH_C_0_0, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d1 _lh_noun_arg1_3 =
  (match _lh_noun_arg1_3 with
    | `LH_C(_lh_noun_LH_C_0_6, _lh_noun_LH_C_1_6) -> 
      (match _lh_noun_LH_C_1_6 with
        | `LH_C(_lh_noun_LH_C_0_7, _lh_noun_LH_C_1_7) -> 
          (match _lh_noun_LH_C_1_7 with
            | `LH_N -> 
              (if ((inList__d4 _lh_noun_LH_C_0_6) (let rec _lh_inList_LH_C_1_1_5 = (let rec _lh_inList_LH_C_1_1_6 = (let rec _lh_inList_LH_C_1_1_7 = (fun _lh_inList_arg1_2_6 -> 
                false) in
                (let rec _lh_inList_LH_C_0_1_5 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_2_7 -> 
                    (if (_lh_inList_arg1_2_7 = _lh_inList_LH_C_0_1_5) then
                      true
                    else
                      ((inList__d4 _lh_inList_arg1_2_7) _lh_inList_LH_C_1_1_7))))) in
                (let rec _lh_inList_LH_C_0_1_6 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_2_8 -> 
                    (if (_lh_inList_arg1_2_8 = _lh_inList_LH_C_0_1_6) then
                      true
                    else
                      ((inList__d4 _lh_inList_arg1_2_8) _lh_inList_LH_C_1_1_6))))) in
                (let rec _lh_inList_LH_C_0_1_7 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_2_9 -> 
                    (if (_lh_inList_arg1_2_9 = _lh_inList_LH_C_0_1_7) then
                      true
                    else
                      ((inList__d4 _lh_inList_arg1_2_9) _lh_inList_LH_C_1_1_5)))))) then
                (noun__d1 (`LH_C(((mappend__d2 ((mappend__d3 _lh_noun_LH_C_0_6) (let rec t_1_5_3 = (fun ys_1_2_2 -> 
                  ys_1_2_2) in
                  (let rec h_1_1_6 = ' ' in
                    (fun ys_1_2_3 -> 
                      (`LH_C(h_1_1_6, ((mappend__d2 t_1_5_3) ys_1_2_3)))))))) _lh_noun_LH_C_0_7), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d3 _lh_noun_LH_C_0_6)) && ((head__d4 _lh_noun_LH_C_0_6) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_6))
          else
            (`Term(_lh_noun_LH_C_0_6, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d2 _lh_noun_arg1_5 =
  (match _lh_noun_arg1_5 with
    | `LH_C(_lh_noun_LH_C_0_1_0, _lh_noun_LH_C_1_1_0) -> 
      (match _lh_noun_LH_C_1_1_0 with
        | `LH_C(_lh_noun_LH_C_0_1_1, _lh_noun_LH_C_1_1_1) -> 
          (match _lh_noun_LH_C_1_1_1 with
            | `LH_N -> 
              (if ((inList__d6 _lh_noun_LH_C_0_1_0) (let rec _lh_inList_LH_C_1_3_5 = (let rec _lh_inList_LH_C_1_3_6 = (let rec _lh_inList_LH_C_1_3_7 = (fun _lh_inList_arg1_5_4 -> 
                false) in
                (let rec _lh_inList_LH_C_0_3_5 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_5_5 -> 
                    (if (_lh_inList_arg1_5_5 = _lh_inList_LH_C_0_3_5) then
                      true
                    else
                      ((inList__d6 _lh_inList_arg1_5_5) _lh_inList_LH_C_1_3_7))))) in
                (let rec _lh_inList_LH_C_0_3_6 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_5_6 -> 
                    (if (_lh_inList_arg1_5_6 = _lh_inList_LH_C_0_3_6) then
                      true
                    else
                      ((inList__d6 _lh_inList_arg1_5_6) _lh_inList_LH_C_1_3_6))))) in
                (let rec _lh_inList_LH_C_0_3_7 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_5_7 -> 
                    (if (_lh_inList_arg1_5_7 = _lh_inList_LH_C_0_3_7) then
                      true
                    else
                      ((inList__d6 _lh_inList_arg1_5_7) _lh_inList_LH_C_1_3_5)))))) then
                (noun__d2 (`LH_C(((mappend__d4 ((mappend__d5 _lh_noun_LH_C_0_1_0) (let rec t_1_9_6 = (fun ys_1_5_3 -> 
                  ys_1_5_3) in
                  (let rec h_1_5_4 = ' ' in
                    (fun ys_1_5_4 -> 
                      (`LH_C(h_1_5_4, ((mappend__d4 t_1_9_6) ys_1_5_4)))))))) _lh_noun_LH_C_0_1_1), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d6 _lh_noun_LH_C_0_1_0)) && ((head__d7 _lh_noun_LH_C_0_1_0) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_1_0))
          else
            (`Term(_lh_noun_LH_C_0_1_0, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d3 _lh_noun_arg1_1 =
  (match _lh_noun_arg1_1 with
    | `LH_C(_lh_noun_LH_C_0_2, _lh_noun_LH_C_1_2) -> 
      (match _lh_noun_LH_C_1_2 with
        | `LH_C(_lh_noun_LH_C_0_3, _lh_noun_LH_C_1_3) -> 
          (match _lh_noun_LH_C_1_3 with
            | `LH_N -> 
              (if ((inList__d7 _lh_noun_LH_C_0_2) (let rec _lh_inList_LH_C_1_3 = (let rec _lh_inList_LH_C_1_4 = (let rec _lh_inList_LH_C_1_5 = (fun _lh_inList_arg1_6 -> 
                false) in
                (let rec _lh_inList_LH_C_0_3 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_7 -> 
                    (if (_lh_inList_arg1_7 = _lh_inList_LH_C_0_3) then
                      true
                    else
                      ((inList__d7 _lh_inList_arg1_7) _lh_inList_LH_C_1_5))))) in
                (let rec _lh_inList_LH_C_0_4 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_8 -> 
                    (if (_lh_inList_arg1_8 = _lh_inList_LH_C_0_4) then
                      true
                    else
                      ((inList__d7 _lh_inList_arg1_8) _lh_inList_LH_C_1_4))))) in
                (let rec _lh_inList_LH_C_0_5 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_9 -> 
                    (if (_lh_inList_arg1_9 = _lh_inList_LH_C_0_5) then
                      true
                    else
                      ((inList__d7 _lh_inList_arg1_9) _lh_inList_LH_C_1_3)))))) then
                (noun__d3 (`LH_C(((mappend__d6 ((mappend__d7 _lh_noun_LH_C_0_2) (let rec t_2_2 = (fun ys_2_5 -> 
                  ys_2_5) in
                  (let rec h_2_2 = ' ' in
                    (fun ys_2_6 -> 
                      (`LH_C(h_2_2, ((mappend__d6 t_2_2) ys_2_6)))))))) _lh_noun_LH_C_0_3), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d8 _lh_noun_LH_C_0_2)) && ((head__d9 _lh_noun_LH_C_0_2) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_2))
          else
            (`Term(_lh_noun_LH_C_0_2, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d4 _lh_noun_arg1_4 =
  (match _lh_noun_arg1_4 with
    | `LH_C(_lh_noun_LH_C_0_8, _lh_noun_LH_C_1_8) -> 
      (match _lh_noun_LH_C_1_8 with
        | `LH_C(_lh_noun_LH_C_0_9, _lh_noun_LH_C_1_9) -> 
          (match _lh_noun_LH_C_1_9 with
            | `LH_N -> 
              (if ((inList__d1_d1 _lh_noun_LH_C_0_8) (let rec _lh_inList_LH_C_1_1_8 = (let rec _lh_inList_LH_C_1_1_9 = (let rec _lh_inList_LH_C_1_2_0 = (fun _lh_inList_arg1_3_0 -> 
                false) in
                (let rec _lh_inList_LH_C_0_1_8 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_3_1 -> 
                    (if (_lh_inList_arg1_3_1 = _lh_inList_LH_C_0_1_8) then
                      true
                    else
                      ((inList__d1_d1 _lh_inList_arg1_3_1) _lh_inList_LH_C_1_2_0))))) in
                (let rec _lh_inList_LH_C_0_1_9 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_3_2 -> 
                    (if (_lh_inList_arg1_3_2 = _lh_inList_LH_C_0_1_9) then
                      true
                    else
                      ((inList__d1_d1 _lh_inList_arg1_3_2) _lh_inList_LH_C_1_1_9))))) in
                (let rec _lh_inList_LH_C_0_2_0 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_3_3 -> 
                    (if (_lh_inList_arg1_3_3 = _lh_inList_LH_C_0_2_0) then
                      true
                    else
                      ((inList__d1_d1 _lh_inList_arg1_3_3) _lh_inList_LH_C_1_1_8)))))) then
                (noun__d4 (`LH_C(((mappend__d2_d4 ((mappend__d2_d5 _lh_noun_LH_C_0_8) (let rec t_1_5_6 = (fun ys_1_2_7 -> 
                  ys_1_2_7) in
                  (let rec h_1_1_9 = ' ' in
                    (fun ys_1_2_8 -> 
                      (`LH_C(h_1_1_9, ((mappend__d2_d4 t_1_5_6) ys_1_2_8)))))))) _lh_noun_LH_C_0_9), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d1_d2 _lh_noun_LH_C_0_8)) && ((head__d1_d3 _lh_noun_LH_C_0_8) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_8))
          else
            (`Term(_lh_noun_LH_C_0_8, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d5 _lh_noun_arg1_2 =
  (match _lh_noun_arg1_2 with
    | `LH_C(_lh_noun_LH_C_0_4, _lh_noun_LH_C_1_4) -> 
      (match _lh_noun_LH_C_1_4 with
        | `LH_C(_lh_noun_LH_C_0_5, _lh_noun_LH_C_1_5) -> 
          (match _lh_noun_LH_C_1_5 with
            | `LH_N -> 
              (if ((inList__d1_d2 _lh_noun_LH_C_0_4) (let rec _lh_inList_LH_C_1_6 = (let rec _lh_inList_LH_C_1_7 = (let rec _lh_inList_LH_C_1_8 = (fun _lh_inList_arg1_1_1 -> 
                false) in
                (let rec _lh_inList_LH_C_0_6 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_1_2 -> 
                    (if (_lh_inList_arg1_1_2 = _lh_inList_LH_C_0_6) then
                      true
                    else
                      ((inList__d1_d2 _lh_inList_arg1_1_2) _lh_inList_LH_C_1_8))))) in
                (let rec _lh_inList_LH_C_0_7 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_1_3 -> 
                    (if (_lh_inList_arg1_1_3 = _lh_inList_LH_C_0_7) then
                      true
                    else
                      ((inList__d1_d2 _lh_inList_arg1_1_3) _lh_inList_LH_C_1_7))))) in
                (let rec _lh_inList_LH_C_0_8 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_1_4 -> 
                    (if (_lh_inList_arg1_1_4 = _lh_inList_LH_C_0_8) then
                      true
                    else
                      ((inList__d1_d2 _lh_inList_arg1_1_4) _lh_inList_LH_C_1_6)))))) then
                (noun__d5 (`LH_C(((mappend__d2_d6 ((mappend__d2_d7 _lh_noun_LH_C_0_4) (let rec t_3_2 = (fun ys_3_3 -> 
                  ys_3_3) in
                  (let rec h_3_2 = ' ' in
                    (fun ys_3_4 -> 
                      (`LH_C(h_3_2, ((mappend__d2_d6 t_3_2) ys_3_4)))))))) _lh_noun_LH_C_0_5), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d1_d4 _lh_noun_LH_C_0_4)) && ((head__d1_d5 _lh_noun_LH_C_0_4) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_4))
          else
            (`Term(_lh_noun_LH_C_0_4, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and nub__d0 _lh_nub_arg1_1 =
  (match _lh_nub_arg1_1 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_1_2 def_0 f_6 i_3 -> 
        i_3)
    | `LH_C(_lh_nub_LH_C_0_1, _lh_nub_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_ls_t_7 = (nub__d0 ((filter__d0 (fun y_2 -> 
        (not (_lh_nub_LH_C_0_1 = y_2)))) _lh_nub_LH_C_1_1)) in
        (let rec _lh_listcomp_fun_ls_h_6 = _lh_nub_LH_C_0_1 in
          (fun _lh_listcomp_fun_1_3 def_1 -> 
            (let rec t_6_4 = (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_7) in
              (let rec h_6_1 = (`LH_P2(_lh_listcomp_fun_ls_h_6, (def_1 _lh_listcomp_fun_ls_h_6))) in
                (fun f_7 i_4 -> 
                  ((f_7 h_6_1) (((foldr__d0 f_7) i_4) t_6_4))))))))
    | _ -> 
      (failwith "error"))
and nub__d1 _lh_nub_arg1_0 =
  (match _lh_nub_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nub_LH_C_0_0, _lh_nub_LH_C_1_0) -> 
      (`LH_C(_lh_nub_LH_C_0_0, (nub__d1 ((filter__d1 (fun y_0 -> 
        (not (_lh_nub_LH_C_0_0 = y_0)))) _lh_nub_LH_C_1_0))))
    | _ -> 
      (failwith "error"))
and nub__d2 _lh_nub_arg1_2 =
  (match _lh_nub_arg1_2 with
    | `LH_N -> 
      (fun f_9 -> 
        (`LH_N))
    | `LH_C(_lh_nub_LH_C_0_2, _lh_nub_LH_C_1_2) -> 
      (let rec t_1_6_1 = (nub__d2 ((filter__d2 (fun y_3 -> 
        (not (_lh_nub_LH_C_0_2 = y_3)))) _lh_nub_LH_C_1_2)) in
        (let rec h_1_2_4 = _lh_nub_LH_C_0_2 in
          (fun f_1_0 -> 
            (`LH_C((f_1_0 h_1_2_4), ((map__d0 f_1_0) t_1_6_1))))))
    | _ -> 
      (failwith "error"))
and occurs__d0 _lh_occurs_arg1_0 _lh_occurs_arg2_1 =
  (match _lh_occurs_arg2_1 with
    | `Term(_lh_occurs_Term_0_0, _lh_occurs_Term_1_0) -> 
      (or__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_or_LH_C_1_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec _lh_or_LH_C_0_0 = ((occurs__d0 _lh_occurs_arg1_0) _lh_listcomp_fun_ls_h_0) in
                (fun _lh_dummy_0 -> 
                  (if _lh_or_LH_C_0_0 then
                    true
                  else
                    (or__d0 _lh_or_LH_C_1_0)))))
          | `LH_N -> 
            (fun _lh_dummy_1 -> 
              false))) in
        (_lh_listcomp_fun_0 _lh_occurs_Term_1_0)))
    | _ -> 
      (_lh_occurs_arg1_0 _lh_occurs_arg2_1))
and process__d0 _lh_process_arg1_0 _lh_process_arg2_0 =
  let rec info_0 = (fun _lh_info_arg1_0 _lh_info_arg2_0 -> 
    ((enterList__d0 newTable__d1) (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_7 -> 
      (_lh_listcomp_fun_para_7 _lh_listcomp_fun_1_4)) in
      (_lh_listcomp_fun_1_4 ((zip__d2 ((results_0 _lh_info_arg1_0) _lh_info_arg2_0)) (replies_0 _lh_info_arg2_0))))))
  and problem_0 = (fun _lh_problem_arg1_0 -> 
    (goal__d1 (words__d1 (head__d1_d6 (lines__d0 _lh_problem_arg1_0)))))
  and defs_0 = (fun _lh_defs_arg1_0 -> 
    (definitions__d0 (tail__d1_d0 (lines__d2 _lh_defs_arg1_0))))
  and newsoln_0 = (`Soln(newTable__d2, (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_9 -> 
    (_lh_listcomp_fun_para_9 _lh_listcomp_fun_1_6)) in
    (_lh_listcomp_fun_1_6 ((enumFromTo__d0 0) 1)))))
  and replies_0 = (fun _lh_replies_arg1_0 -> 
    (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_8 -> 
      (_lh_listcomp_fun_para_8 _lh_listcomp_fun_1_5)) in
      (_lh_listcomp_fun_1_5 (lines__d1 _lh_replies_arg1_0))))
  and db_0 = (fun _lh_db_arg1_0 _lh_db_arg2_0 -> 
    (`LH_P2((defs_0 _lh_db_arg1_0), ((info_0 _lh_db_arg1_0) _lh_db_arg2_0))))
  and results_0 = (fun _lh_results_arg1_0 _lh_results_arg2_0 -> 
    ((strip__d0 (fun _lh_inList_arg1_2_4 -> 
      false)) (((solve__d0 ((db_0 _lh_results_arg1_0) _lh_results_arg2_0)) newsoln_0) (problem_0 _lh_results_arg1_0))))
  in ((mappend__d2_d8 ((mappend__d2_d9 ((mappend__d3_d0 (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (fun ys_5_9 -> 
    ys_5_9) in
    (let rec h_6_4 = ' ' in
      (fun ys_6_0 -> 
        (`LH_C(h_6_4, ((mappend__d3_d0 t_7_5) ys_6_0)))))) in
    (let rec h_6_5 = ':' in
      (fun ys_6_1 -> 
        (`LH_C(h_6_5, ((mappend__d3_d0 t_7_4) ys_6_1)))))) in
    (let rec h_6_6 = 'g' in
      (fun ys_6_2 -> 
        (`LH_C(h_6_6, ((mappend__d3_d0 t_7_3) ys_6_2)))))) in
    (let rec h_6_7 = 'n' in
      (fun ys_6_3 -> 
        (`LH_C(h_6_7, ((mappend__d3_d0 t_7_2) ys_6_3)))))) in
    (let rec h_6_8 = 'i' in
      (fun ys_6_4 -> 
        (`LH_C(h_6_8, ((mappend__d3_d0 t_7_1) ys_6_4)))))) in
    (let rec h_6_9 = 'v' in
      (fun ys_6_5 -> 
        (`LH_C(h_6_9, ((mappend__d3_d0 t_7_0) ys_6_5)))))) in
    (let rec h_7_0 = 'l' in
      (fun ys_6_6 -> 
        (`LH_C(h_7_0, ((mappend__d3_d0 t_6_9) ys_6_6)))))) in
    (let rec h_7_1 = 'o' in
      (fun ys_6_7 -> 
        (`LH_C(h_7_1, ((mappend__d3_d0 t_6_8) ys_6_7)))))) in
    (let rec h_7_2 = 'S' in
      (fun ys_6_8 -> 
        (`LH_C(h_7_2, ((mappend__d3_d0 t_6_7) ys_6_8))))))) (showPhrase__d1 (problem_0 _lh_process_arg1_0)))) (let rec t_7_6 = (fun ys_6_9 -> 
    ys_6_9) in
    (let rec h_7_3 = '|' in
      (fun ys_7_0 -> 
        (let rec t_7_7 = ((mappend__d2_d8 t_7_6) ys_7_0) in
          (fun _lh_dummy_1_6 -> 
            (1 + (length__d0 t_7_7))))))))) (((display__d0 ((results_0 _lh_process_arg1_0) _lh_process_arg2_0)) (vars__d1 (problem_0 _lh_process_arg1_0))) (replies_0 _lh_process_arg2_0)))
and relation__d0 _lh_relation_arg1_0 =
  (let rec verbs_0 = (let rec _lh_inList_LH_C_1_1_0 = (let rec _lh_inList_LH_C_1_1_1 = (let rec _lh_inList_LH_C_1_1_2 = (let rec _lh_inList_LH_C_1_1_3 = (let rec _lh_inList_LH_C_1_1_4 = (fun _lh_inList_arg1_1_8 -> 
    false) in
    (let rec _lh_inList_LH_C_0_1_0 = (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))) in
      (fun _lh_inList_arg1_1_9 -> 
        (if (_lh_inList_arg1_1_9 = _lh_inList_LH_C_0_1_0) then
          true
        else
          ((inList__d2 _lh_inList_arg1_1_9) _lh_inList_LH_C_1_1_4))))) in
    (let rec _lh_inList_LH_C_0_1_1 = (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))) in
      (fun _lh_inList_arg1_2_0 -> 
        (if (_lh_inList_arg1_2_0 = _lh_inList_LH_C_0_1_1) then
          true
        else
          ((inList__d2 _lh_inList_arg1_2_0) _lh_inList_LH_C_1_1_3))))) in
    (let rec _lh_inList_LH_C_0_1_2 = (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))) in
      (fun _lh_inList_arg1_2_1 -> 
        (if (_lh_inList_arg1_2_1 = _lh_inList_LH_C_0_1_2) then
          true
        else
          ((inList__d2 _lh_inList_arg1_2_1) _lh_inList_LH_C_1_1_2))))) in
    (let rec _lh_inList_LH_C_0_1_3 = (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))) in
      (fun _lh_inList_arg1_2_2 -> 
        (if (_lh_inList_arg1_2_2 = _lh_inList_LH_C_0_1_3) then
          true
        else
          ((inList__d2 _lh_inList_arg1_2_2) _lh_inList_LH_C_1_1_1))))) in
    (let rec _lh_inList_LH_C_0_1_4 = (`LH_C('i', (`LH_C('s', (`LH_N))))) in
      (fun _lh_inList_arg1_2_3 -> 
        (if (_lh_inList_arg1_2_3 = _lh_inList_LH_C_0_1_4) then
          true
        else
          ((inList__d2 _lh_inList_arg1_2_3) _lh_inList_LH_C_1_1_0))))) in
    (let rec verb_0 = (head__d0 (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_6 -> 
      (match _lh_listcomp_fun_para_6 with
        | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_6) -> 
          (if ((inList__d2 _lh_listcomp_fun_ls_h_5) verbs_0) then
            (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_6)))
          else
            (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_6))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_1_1 _lh_relation_arg1_0))) in
      ((((split__d0 _lh_relation_arg1_0) noun__d0) verb_0) noun__d1)))
and relation__d1 _lh_relation_arg1_1 =
  (let rec verbs_2 = (let rec _lh_inList_LH_C_1_2_2 = (let rec _lh_inList_LH_C_1_2_3 = (let rec _lh_inList_LH_C_1_2_4 = (let rec _lh_inList_LH_C_1_2_5 = (let rec _lh_inList_LH_C_1_2_6 = (fun _lh_inList_arg1_3_6 -> 
    false) in
    (let rec _lh_inList_LH_C_0_2_2 = (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))) in
      (fun _lh_inList_arg1_3_7 -> 
        (if (_lh_inList_arg1_3_7 = _lh_inList_LH_C_0_2_2) then
          true
        else
          ((inList__d5 _lh_inList_arg1_3_7) _lh_inList_LH_C_1_2_6))))) in
    (let rec _lh_inList_LH_C_0_2_3 = (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))) in
      (fun _lh_inList_arg1_3_8 -> 
        (if (_lh_inList_arg1_3_8 = _lh_inList_LH_C_0_2_3) then
          true
        else
          ((inList__d5 _lh_inList_arg1_3_8) _lh_inList_LH_C_1_2_5))))) in
    (let rec _lh_inList_LH_C_0_2_4 = (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))) in
      (fun _lh_inList_arg1_3_9 -> 
        (if (_lh_inList_arg1_3_9 = _lh_inList_LH_C_0_2_4) then
          true
        else
          ((inList__d5 _lh_inList_arg1_3_9) _lh_inList_LH_C_1_2_4))))) in
    (let rec _lh_inList_LH_C_0_2_5 = (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))) in
      (fun _lh_inList_arg1_4_0 -> 
        (if (_lh_inList_arg1_4_0 = _lh_inList_LH_C_0_2_5) then
          true
        else
          ((inList__d5 _lh_inList_arg1_4_0) _lh_inList_LH_C_1_2_3))))) in
    (let rec _lh_inList_LH_C_0_2_6 = (`LH_C('i', (`LH_C('s', (`LH_N))))) in
      (fun _lh_inList_arg1_4_1 -> 
        (if (_lh_inList_arg1_4_1 = _lh_inList_LH_C_0_2_6) then
          true
        else
          ((inList__d5 _lh_inList_arg1_4_1) _lh_inList_LH_C_1_2_2))))) in
    (let rec verb_2 = (head__d5 (let rec _lh_listcomp_fun_2_7 = (fun _lh_listcomp_fun_para_1_7 -> 
      (match _lh_listcomp_fun_para_1_7 with
        | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_6) -> 
          (if ((inList__d5 _lh_listcomp_fun_ls_h_1_5) verbs_2) then
            (`LH_C(_lh_listcomp_fun_ls_h_1_5, (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_1_6)))
          else
            (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_1_6))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_2_7 _lh_relation_arg1_1))) in
      ((((split__d3 _lh_relation_arg1_1) noun__d2) verb_2) noun__d3)))
and relation__d2 _lh_relation_arg1_2 =
  (let rec verbs_3 = (let rec _lh_inList_LH_C_1_2_9 = (let rec _lh_inList_LH_C_1_3_0 = (let rec _lh_inList_LH_C_1_3_1 = (let rec _lh_inList_LH_C_1_3_2 = (let rec _lh_inList_LH_C_1_3_3 = (fun _lh_inList_arg1_4_5 -> 
    false) in
    (let rec _lh_inList_LH_C_0_2_9 = (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))) in
      (fun _lh_inList_arg1_4_6 -> 
        (if (_lh_inList_arg1_4_6 = _lh_inList_LH_C_0_2_9) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_4_6) _lh_inList_LH_C_1_3_3))))) in
    (let rec _lh_inList_LH_C_0_3_0 = (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))) in
      (fun _lh_inList_arg1_4_7 -> 
        (if (_lh_inList_arg1_4_7 = _lh_inList_LH_C_0_3_0) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_4_7) _lh_inList_LH_C_1_3_2))))) in
    (let rec _lh_inList_LH_C_0_3_1 = (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))) in
      (fun _lh_inList_arg1_4_8 -> 
        (if (_lh_inList_arg1_4_8 = _lh_inList_LH_C_0_3_1) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_4_8) _lh_inList_LH_C_1_3_1))))) in
    (let rec _lh_inList_LH_C_0_3_2 = (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))) in
      (fun _lh_inList_arg1_4_9 -> 
        (if (_lh_inList_arg1_4_9 = _lh_inList_LH_C_0_3_2) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_4_9) _lh_inList_LH_C_1_3_0))))) in
    (let rec _lh_inList_LH_C_0_3_3 = (`LH_C('i', (`LH_C('s', (`LH_N))))) in
      (fun _lh_inList_arg1_5_0 -> 
        (if (_lh_inList_arg1_5_0 = _lh_inList_LH_C_0_3_3) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_5_0) _lh_inList_LH_C_1_2_9))))) in
    (let rec verb_3 = (head__d1_d1 (let rec _lh_listcomp_fun_4_6 = (fun _lh_listcomp_fun_para_3_3 -> 
      (match _lh_listcomp_fun_para_3_3 with
        | `LH_C(_lh_listcomp_fun_ls_h_3_2, _lh_listcomp_fun_ls_t_3_3) -> 
          (if ((inList__d1_d0 _lh_listcomp_fun_ls_h_3_2) verbs_3) then
            (`LH_C(_lh_listcomp_fun_ls_h_3_2, (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_3_3)))
          else
            (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_3_3))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_4_6 _lh_relation_arg1_2))) in
      ((((split__d5 _lh_relation_arg1_2) noun__d4) verb_3) noun__d5)))
and relevant__d0 _lh_relevant_arg1_0 _lh_relevant_arg2_0 =
  (match _lh_relevant_arg2_0 with
    | `Term(_lh_relevant_Term_0_0, _lh_relevant_Term_1_0) -> 
      (let rec lookup_3 = ((find__d6 _lh_relevant_arg1_0) _lh_relevant_Term_0_0) in
        (if (fails__d7 lookup_3) then
          (`LH_N)
        else
          (answer__d8 lookup_3)))
    | _ -> 
      (failwith "error"))
and rule__d0 _lh_rule_arg1_0 =
  ((((split__d4 _lh_rule_arg1_0) relation__d1) (`LH_C('i', (`LH_C('f', (`LH_N)))))) goal__d0)
and showPhrase__d1 _lh_showPhrase_arg1_1 =
  (match _lh_showPhrase_arg1_1 with
    | `Var(_lh_showPhrase_Var_0_0) -> 
      _lh_showPhrase_Var_0_0
    | `Term(_lh_showPhrase_Term_0_0, _lh_showPhrase_Term_1_0) -> 
      (match _lh_showPhrase_Term_1_0 with
        | `LH_N -> 
          _lh_showPhrase_Term_0_0
        | `LH_C(_lh_showPhrase_LH_C_0_0, _lh_showPhrase_LH_C_1_0) -> 
          (match _lh_showPhrase_LH_C_1_0 with
            | `LH_C(_lh_showPhrase_LH_C_0_1, _lh_showPhrase_LH_C_1_1) -> 
              (match _lh_showPhrase_LH_C_1_1 with
                | `LH_N -> 
                  ((mappend__d3_d1 ((mappend__d3_d2 ((mappend__d3_d3 ((mappend__d3_d4 (showPhrase__d1 _lh_showPhrase_LH_C_0_0)) (let rec t_1_0 = (fun ys_1_0 -> 
                    ys_1_0) in
                    (let rec h_1_0 = ' ' in
                      (fun ys_1_1 -> 
                        (`LH_C(h_1_0, ((mappend__d3_d3 t_1_0) ys_1_1)))))))) _lh_showPhrase_Term_0_0)) (let rec t_1_1 = (fun ys_1_2 -> 
                    ys_1_2) in
                    (let rec h_1_1 = ' ' in
                      (fun ys_1_3 -> 
                        (`LH_C(h_1_1, ((mappend__d3_d1 t_1_1) ys_1_3)))))))) (showPhrase__d1 _lh_showPhrase_LH_C_0_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showVars__d0 _lh_showVars_arg1_0 _lh_showVars_arg2_0 =
  (let rec join_0 = (fun x_8 y_1 -> 
    ((mappend__d1_d6 ((mappend__d1_d7 x_8) (let rec t_4_8 = (let rec t_4_9 = (fun ys_4_3 -> 
      ys_4_3) in
      (let rec h_4_7 = ' ' in
        (fun ys_4_4 -> 
          (`LH_C(h_4_7, ((mappend__d1_d6 t_4_9) ys_4_4)))))) in
      (let rec h_4_8 = ';' in
        (fun ys_4_5 -> 
          (`LH_C(h_4_8, ((mappend__d1_d6 t_4_8) ys_4_5)))))))) y_1)) in
    (let rec showVar_0 = (fun v_0 -> 
      ((mappend__d1_d8 ((mappend__d1_d9 v_0) (let rec t_5_0 = (let rec t_5_1 = (let rec t_5_2 = (fun ys_4_6 -> 
        ys_4_6) in
        (let rec h_4_9 = ' ' in
          (fun ys_4_7 -> 
            (`LH_C(h_4_9, ((mappend__d1_d8 t_5_2) ys_4_7)))))) in
        (let rec h_5_0 = '=' in
          (fun ys_4_8 -> 
            (`LH_C(h_5_0, ((mappend__d1_d8 t_5_1) ys_4_8)))))) in
        (let rec h_5_1 = ' ' in
          (fun ys_4_9 -> 
            (`LH_C(h_5_1, ((mappend__d1_d8 t_5_0) ys_4_9)))))))) (showPhrase__d0 ((subst__d0 _lh_showVars_arg1_0) (`Var(v_0)))))) in
      ((foldr1__d0 join_0) ((map__d0 showVar_0) _lh_showVars_arg2_0))))
and solve__d0 _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (match _lh_solve_arg2_0 with
    | `Question(_lh_solve_Question_0_0) -> 
      (`LH_C((`Question(_lh_solve_Question_0_0)), (`LH_N)))
    | _ -> 
      (match _lh_solve_arg3_0 with
        | `Term(_lh_solve_Term_0_0, _lh_solve_Term_1_0) -> 
          (match _lh_solve_Term_0_0 with
            | `LH_C(_lh_solve_LH_C_0_0, _lh_solve_LH_C_1_0) -> 
              (match _lh_solve_LH_C_0_0 with
                | 'o' -> 
                  (match _lh_solve_LH_C_1_0 with
                    | `LH_C(_lh_solve_LH_C_0_1, _lh_solve_LH_C_1_1) -> 
                      (match _lh_solve_LH_C_0_1 with
                        | 'r' -> 
                          (match _lh_solve_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_solve_Term_1_0 with
                                | `LH_C(_lh_solve_LH_C_0_2, _lh_solve_LH_C_1_2) -> 
                                  (match _lh_solve_LH_C_1_2 with
                                    | `LH_C(_lh_solve_LH_C_0_3, _lh_solve_LH_C_1_3) -> 
                                      (match _lh_solve_LH_C_1_3 with
                                        | `LH_N -> 
                                          ((mappend__d4_d4 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2)) (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3))
                                        | _ -> 
                                          (match _lh_solve_arg3_0 with
                                            | `Term(_lh_solve_Term_0_1, _lh_solve_Term_1_1) -> 
                                              (match _lh_solve_Term_0_1 with
                                                | `LH_C(_lh_solve_LH_C_0_4, _lh_solve_LH_C_1_4) -> 
                                                  (match _lh_solve_LH_C_0_4 with
                                                    | 'a' -> 
                                                      (match _lh_solve_LH_C_1_4 with
                                                        | `LH_C(_lh_solve_LH_C_0_5, _lh_solve_LH_C_1_5) -> 
                                                          (match _lh_solve_LH_C_0_5 with
                                                            | 'n' -> 
                                                              (match _lh_solve_LH_C_1_5 with
                                                                | `LH_C(_lh_solve_LH_C_0_6, _lh_solve_LH_C_1_6) -> 
                                                                  (match _lh_solve_LH_C_0_6 with
                                                                    | 'd' -> 
                                                                      (match _lh_solve_LH_C_1_6 with
                                                                        | `LH_N -> 
                                                                          (match _lh_solve_Term_1_1 with
                                                                            | `LH_C(_lh_solve_LH_C_0_7, _lh_solve_LH_C_1_7) -> 
                                                                              (match _lh_solve_LH_C_1_7 with
                                                                                | `LH_C(_lh_solve_LH_C_0_8, _lh_solve_LH_C_1_8) -> 
                                                                                  (match _lh_solve_LH_C_1_8 with
                                                                                    | `LH_N -> 
                                                                                      (concat__d0 (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_1_8 -> 
                                                                                        (match _lh_listcomp_fun_para_1_8 with
                                                                                          | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_7) -> 
                                                                                            (let rec t_1_6_2 = (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_1_7) in
                                                                                              (let rec h_1_2_5 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_6) _lh_solve_LH_C_0_8) in
                                                                                                (fun _lh_dummy_6_3 -> 
                                                                                                  ((mappend__d3_d9 h_1_2_5) (concat__d0 t_1_6_2)))))
                                                                                          | `LH_N -> 
                                                                                            (fun _lh_dummy_6_4 -> 
                                                                                              (`LH_N)))) in
                                                                                        (_lh_listcomp_fun_2_8 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_7))))
                                                                                    | _ -> 
                                                                                      (let rec _lh_matchIdent_3_9 = _lh_solve_arg1_0 in
                                                                                        (match _lh_matchIdent_3_9 with
                                                                                          | `LH_P2(_lh_solve_LH_P2_0_0, _lh_solve_LH_P2_1_0) -> 
                                                                                            (let rec rs_1 = ((relevant__d0 _lh_solve_LH_P2_0_0) _lh_solve_arg3_0) in
                                                                                              (if (not (null__d0 rs_1)) then
                                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1)
                                                                                              else
                                                                                                (((ask__d0 _lh_solve_LH_P2_1_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                          | _ -> 
                                                                                            (failwith "error"))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_4_0 = _lh_solve_arg1_0 in
                                                                                    (match _lh_matchIdent_4_0 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1, _lh_solve_LH_P2_1_1) -> 
                                                                                        (let rec rs_2 = ((relevant__d0 _lh_solve_LH_P2_0_1) _lh_solve_arg3_0) in
                                                                                          (if (not (null__d0 rs_2)) then
                                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2)
                                                                                          else
                                                                                            (((ask__d0 _lh_solve_LH_P2_1_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_4_1 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_4_1 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_2, _lh_solve_LH_P2_1_2) -> 
                                                                                    (let rec rs_3 = ((relevant__d0 _lh_solve_LH_P2_0_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null__d0 rs_3)) then
                                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3)
                                                                                      else
                                                                                        (((ask__d0 _lh_solve_LH_P2_1_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_4_2 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_4_2 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_3, _lh_solve_LH_P2_1_3) -> 
                                                                                (let rec rs_4 = ((relevant__d0 _lh_solve_LH_P2_0_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null__d0 rs_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_4_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_4_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_4, _lh_solve_LH_P2_1_4) -> 
                                                                            (let rec rs_5 = ((relevant__d0 _lh_solve_LH_P2_0_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_4_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_4_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_5, _lh_solve_LH_P2_1_5) -> 
                                                                        (let rec rs_6 = ((relevant__d0 _lh_solve_LH_P2_0_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_4_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_4_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_6, _lh_solve_LH_P2_1_6) -> 
                                                                    (let rec rs_7 = ((relevant__d0 _lh_solve_LH_P2_0_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_4_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_4_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_7, _lh_solve_LH_P2_1_7) -> 
                                                                (let rec rs_8 = ((relevant__d0 _lh_solve_LH_P2_0_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_4_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_4_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_8, _lh_solve_LH_P2_1_8) -> 
                                                            (let rec rs_9 = ((relevant__d0 _lh_solve_LH_P2_0_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_4_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_4_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_9, _lh_solve_LH_P2_1_9) -> 
                                                        (let rec rs_1_0 = ((relevant__d0 _lh_solve_LH_P2_0_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_1_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_4_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_4_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_0, _lh_solve_LH_P2_1_1_0) -> 
                                                    (let rec rs_1_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_1_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error")))))
                                    | _ -> 
                                      (match _lh_solve_arg3_0 with
                                        | `Term(_lh_solve_Term_0_2, _lh_solve_Term_1_2) -> 
                                          (match _lh_solve_Term_0_2 with
                                            | `LH_C(_lh_solve_LH_C_0_9, _lh_solve_LH_C_1_9) -> 
                                              (match _lh_solve_LH_C_0_9 with
                                                | 'a' -> 
                                                  (match _lh_solve_LH_C_1_9 with
                                                    | `LH_C(_lh_solve_LH_C_0_1_0, _lh_solve_LH_C_1_1_0) -> 
                                                      (match _lh_solve_LH_C_0_1_0 with
                                                        | 'n' -> 
                                                          (match _lh_solve_LH_C_1_1_0 with
                                                            | `LH_C(_lh_solve_LH_C_0_1_1, _lh_solve_LH_C_1_1_1) -> 
                                                              (match _lh_solve_LH_C_0_1_1 with
                                                                | 'd' -> 
                                                                  (match _lh_solve_LH_C_1_1_1 with
                                                                    | `LH_N -> 
                                                                      (match _lh_solve_Term_1_2 with
                                                                        | `LH_C(_lh_solve_LH_C_0_1_2, _lh_solve_LH_C_1_1_2) -> 
                                                                          (match _lh_solve_LH_C_1_1_2 with
                                                                            | `LH_C(_lh_solve_LH_C_0_1_3, _lh_solve_LH_C_1_1_3) -> 
                                                                              (match _lh_solve_LH_C_1_1_3 with
                                                                                | `LH_N -> 
                                                                                  (concat__d0 (let rec _lh_listcomp_fun_2_9 = (fun _lh_listcomp_fun_para_1_9 -> 
                                                                                    (match _lh_listcomp_fun_para_1_9 with
                                                                                      | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_8) -> 
                                                                                        (let rec t_1_6_3 = (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_1_8) in
                                                                                          (let rec h_1_2_6 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_7) _lh_solve_LH_C_0_1_3) in
                                                                                            (fun _lh_dummy_6_5 -> 
                                                                                              ((mappend__d3_d9 h_1_2_6) (concat__d0 t_1_6_3)))))
                                                                                      | `LH_N -> 
                                                                                        (fun _lh_dummy_6_6 -> 
                                                                                          (`LH_N)))) in
                                                                                    (_lh_listcomp_fun_2_9 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_1_2))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_5_0 = _lh_solve_arg1_0 in
                                                                                    (match _lh_matchIdent_5_0 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_1, _lh_solve_LH_P2_1_1_1) -> 
                                                                                        (let rec rs_1_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_1) _lh_solve_arg3_0) in
                                                                                          (if (not (null__d0 rs_1_2)) then
                                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_2)
                                                                                          else
                                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_5_1 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_5_1 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_2, _lh_solve_LH_P2_1_1_2) -> 
                                                                                    (let rec rs_1_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null__d0 rs_1_3)) then
                                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_3)
                                                                                      else
                                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_5_2 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_5_2 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_1_3, _lh_solve_LH_P2_1_1_3) -> 
                                                                                (let rec rs_1_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null__d0 rs_1_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_5_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_5_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_1_4, _lh_solve_LH_P2_1_1_4) -> 
                                                                            (let rec rs_1_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_1_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_1_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_5_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_5_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_5, _lh_solve_LH_P2_1_1_5) -> 
                                                                        (let rec rs_1_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_1_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_5_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_5_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_6, _lh_solve_LH_P2_1_1_6) -> 
                                                                    (let rec rs_1_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_1_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_5_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_5_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_7, _lh_solve_LH_P2_1_1_7) -> 
                                                                (let rec rs_1_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_1_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_5_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_5_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_8, _lh_solve_LH_P2_1_1_8) -> 
                                                            (let rec rs_1_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_1_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_5_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_5_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_9, _lh_solve_LH_P2_1_1_9) -> 
                                                        (let rec rs_2_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_2_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_5_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_5_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_2_0, _lh_solve_LH_P2_1_2_0) -> 
                                                    (let rec rs_2_1 = ((relevant__d0 _lh_solve_LH_P2_0_2_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_2_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_2_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_6_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_6_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_2_1, _lh_solve_LH_P2_1_2_1) -> 
                                                (let rec rs_2_2 = ((relevant__d0 _lh_solve_LH_P2_0_2_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_2_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_2_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error")))))
                                | _ -> 
                                  (match _lh_solve_arg3_0 with
                                    | `Term(_lh_solve_Term_0_3, _lh_solve_Term_1_3) -> 
                                      (match _lh_solve_Term_0_3 with
                                        | `LH_C(_lh_solve_LH_C_0_1_4, _lh_solve_LH_C_1_1_4) -> 
                                          (match _lh_solve_LH_C_0_1_4 with
                                            | 'a' -> 
                                              (match _lh_solve_LH_C_1_1_4 with
                                                | `LH_C(_lh_solve_LH_C_0_1_5, _lh_solve_LH_C_1_1_5) -> 
                                                  (match _lh_solve_LH_C_0_1_5 with
                                                    | 'n' -> 
                                                      (match _lh_solve_LH_C_1_1_5 with
                                                        | `LH_C(_lh_solve_LH_C_0_1_6, _lh_solve_LH_C_1_1_6) -> 
                                                          (match _lh_solve_LH_C_0_1_6 with
                                                            | 'd' -> 
                                                              (match _lh_solve_LH_C_1_1_6 with
                                                                | `LH_N -> 
                                                                  (match _lh_solve_Term_1_3 with
                                                                    | `LH_C(_lh_solve_LH_C_0_1_7, _lh_solve_LH_C_1_1_7) -> 
                                                                      (match _lh_solve_LH_C_1_1_7 with
                                                                        | `LH_C(_lh_solve_LH_C_0_1_8, _lh_solve_LH_C_1_1_8) -> 
                                                                          (match _lh_solve_LH_C_1_1_8 with
                                                                            | `LH_N -> 
                                                                              (concat__d0 (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_2_0 -> 
                                                                                (match _lh_listcomp_fun_para_2_0 with
                                                                                  | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_1_9) -> 
                                                                                    (let rec t_1_6_4 = (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_1_9) in
                                                                                      (let rec h_1_2_7 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_8) _lh_solve_LH_C_0_1_8) in
                                                                                        (fun _lh_dummy_6_7 -> 
                                                                                          ((mappend__d3_d9 h_1_2_7) (concat__d0 t_1_6_4)))))
                                                                                  | `LH_N -> 
                                                                                    (fun _lh_dummy_6_8 -> 
                                                                                      (`LH_N)))) in
                                                                                (_lh_listcomp_fun_3_0 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_1_7))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_6_1 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_6_1 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_2_2, _lh_solve_LH_P2_1_2_2) -> 
                                                                                    (let rec rs_2_3 = ((relevant__d0 _lh_solve_LH_P2_0_2_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null__d0 rs_2_3)) then
                                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_3)
                                                                                      else
                                                                                        (((ask__d0 _lh_solve_LH_P2_1_2_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_6_2 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_6_2 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_2_3, _lh_solve_LH_P2_1_2_3) -> 
                                                                                (let rec rs_2_4 = ((relevant__d0 _lh_solve_LH_P2_0_2_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null__d0 rs_2_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_2_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_6_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_6_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_2_4, _lh_solve_LH_P2_1_2_4) -> 
                                                                            (let rec rs_2_5 = ((relevant__d0 _lh_solve_LH_P2_0_2_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_2_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_2_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_6_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_6_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_2_5, _lh_solve_LH_P2_1_2_5) -> 
                                                                        (let rec rs_2_6 = ((relevant__d0 _lh_solve_LH_P2_0_2_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_2_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_2_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_6_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_6_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_2_6, _lh_solve_LH_P2_1_2_6) -> 
                                                                    (let rec rs_2_7 = ((relevant__d0 _lh_solve_LH_P2_0_2_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_2_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_2_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_6_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_6_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_2_7, _lh_solve_LH_P2_1_2_7) -> 
                                                                (let rec rs_2_8 = ((relevant__d0 _lh_solve_LH_P2_0_2_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_2_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_2_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_6_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_6_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_2_8, _lh_solve_LH_P2_1_2_8) -> 
                                                            (let rec rs_2_9 = ((relevant__d0 _lh_solve_LH_P2_0_2_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_2_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_2_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_6_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_6_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_2_9, _lh_solve_LH_P2_1_2_9) -> 
                                                        (let rec rs_3_0 = ((relevant__d0 _lh_solve_LH_P2_0_2_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_3_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_2_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_6_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_6_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_3_0, _lh_solve_LH_P2_1_3_0) -> 
                                                    (let rec rs_3_1 = ((relevant__d0 _lh_solve_LH_P2_0_3_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_3_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_3_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_7_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_7_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_3_1, _lh_solve_LH_P2_1_3_1) -> 
                                                (let rec rs_3_2 = ((relevant__d0 _lh_solve_LH_P2_0_3_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_3_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_3_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_7_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_7_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_3_2, _lh_solve_LH_P2_1_3_2) -> 
                                            (let rec rs_3_3 = ((relevant__d0 _lh_solve_LH_P2_0_3_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_3_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_3_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error")))))
                            | _ -> 
                              (match _lh_solve_arg3_0 with
                                | `Term(_lh_solve_Term_0_4, _lh_solve_Term_1_4) -> 
                                  (match _lh_solve_Term_0_4 with
                                    | `LH_C(_lh_solve_LH_C_0_1_9, _lh_solve_LH_C_1_1_9) -> 
                                      (match _lh_solve_LH_C_0_1_9 with
                                        | 'a' -> 
                                          (match _lh_solve_LH_C_1_1_9 with
                                            | `LH_C(_lh_solve_LH_C_0_2_0, _lh_solve_LH_C_1_2_0) -> 
                                              (match _lh_solve_LH_C_0_2_0 with
                                                | 'n' -> 
                                                  (match _lh_solve_LH_C_1_2_0 with
                                                    | `LH_C(_lh_solve_LH_C_0_2_1, _lh_solve_LH_C_1_2_1) -> 
                                                      (match _lh_solve_LH_C_0_2_1 with
                                                        | 'd' -> 
                                                          (match _lh_solve_LH_C_1_2_1 with
                                                            | `LH_N -> 
                                                              (match _lh_solve_Term_1_4 with
                                                                | `LH_C(_lh_solve_LH_C_0_2_2, _lh_solve_LH_C_1_2_2) -> 
                                                                  (match _lh_solve_LH_C_1_2_2 with
                                                                    | `LH_C(_lh_solve_LH_C_0_2_3, _lh_solve_LH_C_1_2_3) -> 
                                                                      (match _lh_solve_LH_C_1_2_3 with
                                                                        | `LH_N -> 
                                                                          (concat__d0 (let rec _lh_listcomp_fun_3_1 = (fun _lh_listcomp_fun_para_2_1 -> 
                                                                            (match _lh_listcomp_fun_para_2_1 with
                                                                              | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_2_0) -> 
                                                                                (let rec t_1_6_5 = (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_2_0) in
                                                                                  (let rec h_1_2_8 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_9) _lh_solve_LH_C_0_2_3) in
                                                                                    (fun _lh_dummy_6_9 -> 
                                                                                      ((mappend__d3_d9 h_1_2_8) (concat__d0 t_1_6_5)))))
                                                                              | `LH_N -> 
                                                                                (fun _lh_dummy_7_0 -> 
                                                                                  (`LH_N)))) in
                                                                            (_lh_listcomp_fun_3_1 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2_2))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_7_2 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_7_2 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_3_3, _lh_solve_LH_P2_1_3_3) -> 
                                                                                (let rec rs_3_4 = ((relevant__d0 _lh_solve_LH_P2_0_3_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null__d0 rs_3_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_3_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_7_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_7_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_3_4, _lh_solve_LH_P2_1_3_4) -> 
                                                                            (let rec rs_3_5 = ((relevant__d0 _lh_solve_LH_P2_0_3_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_3_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_3_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_7_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_7_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_3_5, _lh_solve_LH_P2_1_3_5) -> 
                                                                        (let rec rs_3_6 = ((relevant__d0 _lh_solve_LH_P2_0_3_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_3_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_3_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_7_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_7_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_3_6, _lh_solve_LH_P2_1_3_6) -> 
                                                                    (let rec rs_3_7 = ((relevant__d0 _lh_solve_LH_P2_0_3_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_3_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_3_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_7_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_7_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_3_7, _lh_solve_LH_P2_1_3_7) -> 
                                                                (let rec rs_3_8 = ((relevant__d0 _lh_solve_LH_P2_0_3_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_3_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_3_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_7_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_7_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_3_8, _lh_solve_LH_P2_1_3_8) -> 
                                                            (let rec rs_3_9 = ((relevant__d0 _lh_solve_LH_P2_0_3_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_3_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_3_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_7_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_7_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_3_9, _lh_solve_LH_P2_1_3_9) -> 
                                                        (let rec rs_4_0 = ((relevant__d0 _lh_solve_LH_P2_0_3_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_4_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_3_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_7_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_7_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_4_0, _lh_solve_LH_P2_1_4_0) -> 
                                                    (let rec rs_4_1 = ((relevant__d0 _lh_solve_LH_P2_0_4_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_4_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_4_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_8_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_8_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_4_1, _lh_solve_LH_P2_1_4_1) -> 
                                                (let rec rs_4_2 = ((relevant__d0 _lh_solve_LH_P2_0_4_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_4_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_4_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_8_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_8_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_4_2, _lh_solve_LH_P2_1_4_2) -> 
                                            (let rec rs_4_3 = ((relevant__d0 _lh_solve_LH_P2_0_4_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_4_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_4_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_8_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_8_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_4_3, _lh_solve_LH_P2_1_4_3) -> 
                                        (let rec rs_4_4 = ((relevant__d0 _lh_solve_LH_P2_0_4_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_4_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_4_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error")))))
                        | _ -> 
                          (match _lh_solve_arg3_0 with
                            | `Term(_lh_solve_Term_0_5, _lh_solve_Term_1_5) -> 
                              (match _lh_solve_Term_0_5 with
                                | `LH_C(_lh_solve_LH_C_0_2_4, _lh_solve_LH_C_1_2_4) -> 
                                  (match _lh_solve_LH_C_0_2_4 with
                                    | 'a' -> 
                                      (match _lh_solve_LH_C_1_2_4 with
                                        | `LH_C(_lh_solve_LH_C_0_2_5, _lh_solve_LH_C_1_2_5) -> 
                                          (match _lh_solve_LH_C_0_2_5 with
                                            | 'n' -> 
                                              (match _lh_solve_LH_C_1_2_5 with
                                                | `LH_C(_lh_solve_LH_C_0_2_6, _lh_solve_LH_C_1_2_6) -> 
                                                  (match _lh_solve_LH_C_0_2_6 with
                                                    | 'd' -> 
                                                      (match _lh_solve_LH_C_1_2_6 with
                                                        | `LH_N -> 
                                                          (match _lh_solve_Term_1_5 with
                                                            | `LH_C(_lh_solve_LH_C_0_2_7, _lh_solve_LH_C_1_2_7) -> 
                                                              (match _lh_solve_LH_C_1_2_7 with
                                                                | `LH_C(_lh_solve_LH_C_0_2_8, _lh_solve_LH_C_1_2_8) -> 
                                                                  (match _lh_solve_LH_C_1_2_8 with
                                                                    | `LH_N -> 
                                                                      (concat__d0 (let rec _lh_listcomp_fun_3_2 = (fun _lh_listcomp_fun_para_2_2 -> 
                                                                        (match _lh_listcomp_fun_para_2_2 with
                                                                          | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_1) -> 
                                                                            (let rec t_1_6_6 = (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_2_1) in
                                                                              (let rec h_1_2_9 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_0) _lh_solve_LH_C_0_2_8) in
                                                                                (fun _lh_dummy_7_1 -> 
                                                                                  ((mappend__d3_d9 h_1_2_9) (concat__d0 t_1_6_6)))))
                                                                          | `LH_N -> 
                                                                            (fun _lh_dummy_7_2 -> 
                                                                              (`LH_N)))) in
                                                                        (_lh_listcomp_fun_3_2 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2_7))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_8_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_8_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_4_4, _lh_solve_LH_P2_1_4_4) -> 
                                                                            (let rec rs_4_5 = ((relevant__d0 _lh_solve_LH_P2_0_4_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_4_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_4_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_8_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_8_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_4_5, _lh_solve_LH_P2_1_4_5) -> 
                                                                        (let rec rs_4_6 = ((relevant__d0 _lh_solve_LH_P2_0_4_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_4_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_4_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_8_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_8_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_4_6, _lh_solve_LH_P2_1_4_6) -> 
                                                                    (let rec rs_4_7 = ((relevant__d0 _lh_solve_LH_P2_0_4_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_4_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_4_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_8_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_8_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_4_7, _lh_solve_LH_P2_1_4_7) -> 
                                                                (let rec rs_4_8 = ((relevant__d0 _lh_solve_LH_P2_0_4_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_4_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_4_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_8_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_8_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_4_8, _lh_solve_LH_P2_1_4_8) -> 
                                                            (let rec rs_4_9 = ((relevant__d0 _lh_solve_LH_P2_0_4_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_4_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_4_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_8_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_8_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_4_9, _lh_solve_LH_P2_1_4_9) -> 
                                                        (let rec rs_5_0 = ((relevant__d0 _lh_solve_LH_P2_0_4_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_5_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_4_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_8_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_8_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_5_0, _lh_solve_LH_P2_1_5_0) -> 
                                                    (let rec rs_5_1 = ((relevant__d0 _lh_solve_LH_P2_0_5_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_5_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_5_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_9_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_9_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_5_1, _lh_solve_LH_P2_1_5_1) -> 
                                                (let rec rs_5_2 = ((relevant__d0 _lh_solve_LH_P2_0_5_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_5_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_5_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_9_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_9_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_5_2, _lh_solve_LH_P2_1_5_2) -> 
                                            (let rec rs_5_3 = ((relevant__d0 _lh_solve_LH_P2_0_5_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_5_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_5_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_9_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_9_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_5_3, _lh_solve_LH_P2_1_5_3) -> 
                                        (let rec rs_5_4 = ((relevant__d0 _lh_solve_LH_P2_0_5_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_5_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_5_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_9_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_9_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_5_4, _lh_solve_LH_P2_1_5_4) -> 
                                    (let rec rs_5_5 = ((relevant__d0 _lh_solve_LH_P2_0_5_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_5_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_5_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error")))))
                    | _ -> 
                      (match _lh_solve_arg3_0 with
                        | `Term(_lh_solve_Term_0_6, _lh_solve_Term_1_6) -> 
                          (match _lh_solve_Term_0_6 with
                            | `LH_C(_lh_solve_LH_C_0_2_9, _lh_solve_LH_C_1_2_9) -> 
                              (match _lh_solve_LH_C_0_2_9 with
                                | 'a' -> 
                                  (match _lh_solve_LH_C_1_2_9 with
                                    | `LH_C(_lh_solve_LH_C_0_3_0, _lh_solve_LH_C_1_3_0) -> 
                                      (match _lh_solve_LH_C_0_3_0 with
                                        | 'n' -> 
                                          (match _lh_solve_LH_C_1_3_0 with
                                            | `LH_C(_lh_solve_LH_C_0_3_1, _lh_solve_LH_C_1_3_1) -> 
                                              (match _lh_solve_LH_C_0_3_1 with
                                                | 'd' -> 
                                                  (match _lh_solve_LH_C_1_3_1 with
                                                    | `LH_N -> 
                                                      (match _lh_solve_Term_1_6 with
                                                        | `LH_C(_lh_solve_LH_C_0_3_2, _lh_solve_LH_C_1_3_2) -> 
                                                          (match _lh_solve_LH_C_1_3_2 with
                                                            | `LH_C(_lh_solve_LH_C_0_3_3, _lh_solve_LH_C_1_3_3) -> 
                                                              (match _lh_solve_LH_C_1_3_3 with
                                                                | `LH_N -> 
                                                                  (concat__d0 (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_2_3 -> 
                                                                    (match _lh_listcomp_fun_para_2_3 with
                                                                      | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_2) -> 
                                                                        (let rec t_1_6_7 = (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_2_2) in
                                                                          (let rec h_1_3_0 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_1) _lh_solve_LH_C_0_3_3) in
                                                                            (fun _lh_dummy_7_3 -> 
                                                                              ((mappend__d3_d9 h_1_3_0) (concat__d0 t_1_6_7)))))
                                                                      | `LH_N -> 
                                                                        (fun _lh_dummy_7_4 -> 
                                                                          (`LH_N)))) in
                                                                    (_lh_listcomp_fun_3_3 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3_2))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_9_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_9_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_5_5, _lh_solve_LH_P2_1_5_5) -> 
                                                                        (let rec rs_5_6 = ((relevant__d0 _lh_solve_LH_P2_0_5_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_5_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_5_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_9_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_9_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_5_6, _lh_solve_LH_P2_1_5_6) -> 
                                                                    (let rec rs_5_7 = ((relevant__d0 _lh_solve_LH_P2_0_5_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_5_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_5_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_9_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_9_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_5_7, _lh_solve_LH_P2_1_5_7) -> 
                                                                (let rec rs_5_8 = ((relevant__d0 _lh_solve_LH_P2_0_5_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_5_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_5_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_9_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_9_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_5_8, _lh_solve_LH_P2_1_5_8) -> 
                                                            (let rec rs_5_9 = ((relevant__d0 _lh_solve_LH_P2_0_5_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_5_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_5_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_9_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_9_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_5_9, _lh_solve_LH_P2_1_5_9) -> 
                                                        (let rec rs_6_0 = ((relevant__d0 _lh_solve_LH_P2_0_5_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_6_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_5_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_9_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_9_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_6_0, _lh_solve_LH_P2_1_6_0) -> 
                                                    (let rec rs_6_1 = ((relevant__d0 _lh_solve_LH_P2_0_6_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_6_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_6_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_0_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_1_0_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_6_1, _lh_solve_LH_P2_1_6_1) -> 
                                                (let rec rs_6_2 = ((relevant__d0 _lh_solve_LH_P2_0_6_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_6_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_6_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_0_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_1_0_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_6_2, _lh_solve_LH_P2_1_6_2) -> 
                                            (let rec rs_6_3 = ((relevant__d0 _lh_solve_LH_P2_0_6_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_6_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_6_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_0_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_1_0_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_6_3, _lh_solve_LH_P2_1_6_3) -> 
                                        (let rec rs_6_4 = ((relevant__d0 _lh_solve_LH_P2_0_6_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_6_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_6_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_0_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_1_0_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_6_4, _lh_solve_LH_P2_1_6_4) -> 
                                    (let rec rs_6_5 = ((relevant__d0 _lh_solve_LH_P2_0_6_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_6_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_6_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_0_4 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_1_0_4 with
                              | `LH_P2(_lh_solve_LH_P2_0_6_5, _lh_solve_LH_P2_1_6_5) -> 
                                (let rec rs_6_6 = ((relevant__d0 _lh_solve_LH_P2_0_6_5) _lh_solve_arg3_0) in
                                  (if (not (null__d0 rs_6_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_6_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error")))))
                | _ -> 
                  (match _lh_solve_arg3_0 with
                    | `Term(_lh_solve_Term_0_7, _lh_solve_Term_1_7) -> 
                      (match _lh_solve_Term_0_7 with
                        | `LH_C(_lh_solve_LH_C_0_3_4, _lh_solve_LH_C_1_3_4) -> 
                          (match _lh_solve_LH_C_0_3_4 with
                            | 'a' -> 
                              (match _lh_solve_LH_C_1_3_4 with
                                | `LH_C(_lh_solve_LH_C_0_3_5, _lh_solve_LH_C_1_3_5) -> 
                                  (match _lh_solve_LH_C_0_3_5 with
                                    | 'n' -> 
                                      (match _lh_solve_LH_C_1_3_5 with
                                        | `LH_C(_lh_solve_LH_C_0_3_6, _lh_solve_LH_C_1_3_6) -> 
                                          (match _lh_solve_LH_C_0_3_6 with
                                            | 'd' -> 
                                              (match _lh_solve_LH_C_1_3_6 with
                                                | `LH_N -> 
                                                  (match _lh_solve_Term_1_7 with
                                                    | `LH_C(_lh_solve_LH_C_0_3_7, _lh_solve_LH_C_1_3_7) -> 
                                                      (match _lh_solve_LH_C_1_3_7 with
                                                        | `LH_C(_lh_solve_LH_C_0_3_8, _lh_solve_LH_C_1_3_8) -> 
                                                          (match _lh_solve_LH_C_1_3_8 with
                                                            | `LH_N -> 
                                                              (concat__d0 (let rec _lh_listcomp_fun_3_4 = (fun _lh_listcomp_fun_para_2_4 -> 
                                                                (match _lh_listcomp_fun_para_2_4 with
                                                                  | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_3) -> 
                                                                    (let rec t_1_6_8 = (_lh_listcomp_fun_3_4 _lh_listcomp_fun_ls_t_2_3) in
                                                                      (let rec h_1_3_1 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_2) _lh_solve_LH_C_0_3_8) in
                                                                        (fun _lh_dummy_7_5 -> 
                                                                          ((mappend__d3_d9 h_1_3_1) (concat__d0 t_1_6_8)))))
                                                                  | `LH_N -> 
                                                                    (fun _lh_dummy_7_6 -> 
                                                                      (`LH_N)))) in
                                                                (_lh_listcomp_fun_3_4 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3_7))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_0_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_1_0_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_6_6, _lh_solve_LH_P2_1_6_6) -> 
                                                                    (let rec rs_6_7 = ((relevant__d0 _lh_solve_LH_P2_0_6_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_6_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_6_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_0_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_1_0_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_6_7, _lh_solve_LH_P2_1_6_7) -> 
                                                                (let rec rs_6_8 = ((relevant__d0 _lh_solve_LH_P2_0_6_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_6_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_6_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_0_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_1_0_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_6_8, _lh_solve_LH_P2_1_6_8) -> 
                                                            (let rec rs_6_9 = ((relevant__d0 _lh_solve_LH_P2_0_6_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_6_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_6_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_0_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_1_0_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_6_9, _lh_solve_LH_P2_1_6_9) -> 
                                                        (let rec rs_7_0 = ((relevant__d0 _lh_solve_LH_P2_0_6_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_7_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_6_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_0_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_1_0_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_7_0, _lh_solve_LH_P2_1_7_0) -> 
                                                    (let rec rs_7_1 = ((relevant__d0 _lh_solve_LH_P2_0_7_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_7_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_7_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_1_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_1_1_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_7_1, _lh_solve_LH_P2_1_7_1) -> 
                                                (let rec rs_7_2 = ((relevant__d0 _lh_solve_LH_P2_0_7_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_7_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_7_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_1_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_1_1_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_7_2, _lh_solve_LH_P2_1_7_2) -> 
                                            (let rec rs_7_3 = ((relevant__d0 _lh_solve_LH_P2_0_7_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_7_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_7_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_1_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_1_1_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_7_3, _lh_solve_LH_P2_1_7_3) -> 
                                        (let rec rs_7_4 = ((relevant__d0 _lh_solve_LH_P2_0_7_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_7_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_7_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_1_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_1_1_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_7_4, _lh_solve_LH_P2_1_7_4) -> 
                                    (let rec rs_7_5 = ((relevant__d0 _lh_solve_LH_P2_0_7_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_7_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_7_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_1_4 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_1_1_4 with
                              | `LH_P2(_lh_solve_LH_P2_0_7_5, _lh_solve_LH_P2_1_7_5) -> 
                                (let rec rs_7_6 = ((relevant__d0 _lh_solve_LH_P2_0_7_5) _lh_solve_arg3_0) in
                                  (if (not (null__d0 rs_7_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_7_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_1_1_5 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_1_1_5 with
                          | `LH_P2(_lh_solve_LH_P2_0_7_6, _lh_solve_LH_P2_1_7_6) -> 
                            (let rec rs_7_7 = ((relevant__d0 _lh_solve_LH_P2_0_7_6) _lh_solve_arg3_0) in
                              (if (not (null__d0 rs_7_7)) then
                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_7)
                              else
                                (((ask__d0 _lh_solve_LH_P2_1_7_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error")))))
            | _ -> 
              (match _lh_solve_arg3_0 with
                | `Term(_lh_solve_Term_0_8, _lh_solve_Term_1_8) -> 
                  (match _lh_solve_Term_0_8 with
                    | `LH_C(_lh_solve_LH_C_0_3_9, _lh_solve_LH_C_1_3_9) -> 
                      (match _lh_solve_LH_C_0_3_9 with
                        | 'a' -> 
                          (match _lh_solve_LH_C_1_3_9 with
                            | `LH_C(_lh_solve_LH_C_0_4_0, _lh_solve_LH_C_1_4_0) -> 
                              (match _lh_solve_LH_C_0_4_0 with
                                | 'n' -> 
                                  (match _lh_solve_LH_C_1_4_0 with
                                    | `LH_C(_lh_solve_LH_C_0_4_1, _lh_solve_LH_C_1_4_1) -> 
                                      (match _lh_solve_LH_C_0_4_1 with
                                        | 'd' -> 
                                          (match _lh_solve_LH_C_1_4_1 with
                                            | `LH_N -> 
                                              (match _lh_solve_Term_1_8 with
                                                | `LH_C(_lh_solve_LH_C_0_4_2, _lh_solve_LH_C_1_4_2) -> 
                                                  (match _lh_solve_LH_C_1_4_2 with
                                                    | `LH_C(_lh_solve_LH_C_0_4_3, _lh_solve_LH_C_1_4_3) -> 
                                                      (match _lh_solve_LH_C_1_4_3 with
                                                        | `LH_N -> 
                                                          (concat__d0 (let rec _lh_listcomp_fun_3_5 = (fun _lh_listcomp_fun_para_2_5 -> 
                                                            (match _lh_listcomp_fun_para_2_5 with
                                                              | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_4) -> 
                                                                (let rec t_1_6_9 = (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_4) in
                                                                  (let rec h_1_3_2 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_3) _lh_solve_LH_C_0_4_3) in
                                                                    (fun _lh_dummy_7_7 -> 
                                                                      ((mappend__d3_d9 h_1_3_2) (concat__d0 t_1_6_9)))))
                                                              | `LH_N -> 
                                                                (fun _lh_dummy_7_8 -> 
                                                                  (`LH_N)))) in
                                                            (_lh_listcomp_fun_3_5 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_4_2))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_1_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_1_1_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_7_7, _lh_solve_LH_P2_1_7_7) -> 
                                                                (let rec rs_7_8 = ((relevant__d0 _lh_solve_LH_P2_0_7_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_7_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_7_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_1_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_1_1_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_7_8, _lh_solve_LH_P2_1_7_8) -> 
                                                            (let rec rs_7_9 = ((relevant__d0 _lh_solve_LH_P2_0_7_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_7_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_7_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_1_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_1_1_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_7_9, _lh_solve_LH_P2_1_7_9) -> 
                                                        (let rec rs_8_0 = ((relevant__d0 _lh_solve_LH_P2_0_7_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_8_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_7_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_1_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_1_1_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_8_0, _lh_solve_LH_P2_1_8_0) -> 
                                                    (let rec rs_8_1 = ((relevant__d0 _lh_solve_LH_P2_0_8_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_8_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_8_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_2_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_1_2_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_8_1, _lh_solve_LH_P2_1_8_1) -> 
                                                (let rec rs_8_2 = ((relevant__d0 _lh_solve_LH_P2_0_8_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_8_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_8_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_2_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_1_2_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_8_2, _lh_solve_LH_P2_1_8_2) -> 
                                            (let rec rs_8_3 = ((relevant__d0 _lh_solve_LH_P2_0_8_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_8_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_8_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_2_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_1_2_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_8_3, _lh_solve_LH_P2_1_8_3) -> 
                                        (let rec rs_8_4 = ((relevant__d0 _lh_solve_LH_P2_0_8_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_8_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_8_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_2_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_1_2_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_8_4, _lh_solve_LH_P2_1_8_4) -> 
                                    (let rec rs_8_5 = ((relevant__d0 _lh_solve_LH_P2_0_8_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_8_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_8_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_2_4 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_1_2_4 with
                              | `LH_P2(_lh_solve_LH_P2_0_8_5, _lh_solve_LH_P2_1_8_5) -> 
                                (let rec rs_8_6 = ((relevant__d0 _lh_solve_LH_P2_0_8_5) _lh_solve_arg3_0) in
                                  (if (not (null__d0 rs_8_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_8_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_1_2_5 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_1_2_5 with
                          | `LH_P2(_lh_solve_LH_P2_0_8_6, _lh_solve_LH_P2_1_8_6) -> 
                            (let rec rs_8_7 = ((relevant__d0 _lh_solve_LH_P2_0_8_6) _lh_solve_arg3_0) in
                              (if (not (null__d0 rs_8_7)) then
                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_7)
                              else
                                (((ask__d0 _lh_solve_LH_P2_1_8_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_1_2_6 = _lh_solve_arg1_0 in
                    (match _lh_matchIdent_1_2_6 with
                      | `LH_P2(_lh_solve_LH_P2_0_8_7, _lh_solve_LH_P2_1_8_7) -> 
                        (let rec rs_8_8 = ((relevant__d0 _lh_solve_LH_P2_0_8_7) _lh_solve_arg3_0) in
                          (if (not (null__d0 rs_8_8)) then
                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_8)
                          else
                            (((ask__d0 _lh_solve_LH_P2_1_8_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                      | _ -> 
                        (failwith "error")))))
        | _ -> 
          (match _lh_solve_arg3_0 with
            | `Term(_lh_solve_Term_0_9, _lh_solve_Term_1_9) -> 
              (match _lh_solve_Term_0_9 with
                | `LH_C(_lh_solve_LH_C_0_4_4, _lh_solve_LH_C_1_4_4) -> 
                  (match _lh_solve_LH_C_0_4_4 with
                    | 'a' -> 
                      (match _lh_solve_LH_C_1_4_4 with
                        | `LH_C(_lh_solve_LH_C_0_4_5, _lh_solve_LH_C_1_4_5) -> 
                          (match _lh_solve_LH_C_0_4_5 with
                            | 'n' -> 
                              (match _lh_solve_LH_C_1_4_5 with
                                | `LH_C(_lh_solve_LH_C_0_4_6, _lh_solve_LH_C_1_4_6) -> 
                                  (match _lh_solve_LH_C_0_4_6 with
                                    | 'd' -> 
                                      (match _lh_solve_LH_C_1_4_6 with
                                        | `LH_N -> 
                                          (match _lh_solve_Term_1_9 with
                                            | `LH_C(_lh_solve_LH_C_0_4_7, _lh_solve_LH_C_1_4_7) -> 
                                              (match _lh_solve_LH_C_1_4_7 with
                                                | `LH_C(_lh_solve_LH_C_0_4_8, _lh_solve_LH_C_1_4_8) -> 
                                                  (match _lh_solve_LH_C_1_4_8 with
                                                    | `LH_N -> 
                                                      (concat__d0 (let rec _lh_listcomp_fun_3_6 = (fun _lh_listcomp_fun_para_2_6 -> 
                                                        (match _lh_listcomp_fun_para_2_6 with
                                                          | `LH_C(_lh_listcomp_fun_ls_h_2_4, _lh_listcomp_fun_ls_t_2_5) -> 
                                                            (let rec t_1_7_0 = (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_2_5) in
                                                              (let rec h_1_3_3 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_4) _lh_solve_LH_C_0_4_8) in
                                                                (fun _lh_dummy_7_9 -> 
                                                                  ((mappend__d3_d9 h_1_3_3) (concat__d0 t_1_7_0)))))
                                                          | `LH_N -> 
                                                            (fun _lh_dummy_8_0 -> 
                                                              (`LH_N)))) in
                                                        (_lh_listcomp_fun_3_6 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_4_7))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_2_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_1_2_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_8_8, _lh_solve_LH_P2_1_8_8) -> 
                                                            (let rec rs_8_9 = ((relevant__d0 _lh_solve_LH_P2_0_8_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_8_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_8_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_2_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_1_2_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_8_9, _lh_solve_LH_P2_1_8_9) -> 
                                                        (let rec rs_9_0 = ((relevant__d0 _lh_solve_LH_P2_0_8_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_9_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_8_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_2_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_1_2_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_9_0, _lh_solve_LH_P2_1_9_0) -> 
                                                    (let rec rs_9_1 = ((relevant__d0 _lh_solve_LH_P2_0_9_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_9_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_9_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_3_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_1_3_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_9_1, _lh_solve_LH_P2_1_9_1) -> 
                                                (let rec rs_9_2 = ((relevant__d0 _lh_solve_LH_P2_0_9_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_9_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_9_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_3_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_1_3_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_9_2, _lh_solve_LH_P2_1_9_2) -> 
                                            (let rec rs_9_3 = ((relevant__d0 _lh_solve_LH_P2_0_9_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_9_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_9_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_3_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_1_3_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_9_3, _lh_solve_LH_P2_1_9_3) -> 
                                        (let rec rs_9_4 = ((relevant__d0 _lh_solve_LH_P2_0_9_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_9_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_9_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_3_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_1_3_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_9_4, _lh_solve_LH_P2_1_9_4) -> 
                                    (let rec rs_9_5 = ((relevant__d0 _lh_solve_LH_P2_0_9_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_9_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_9_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_3_4 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_1_3_4 with
                              | `LH_P2(_lh_solve_LH_P2_0_9_5, _lh_solve_LH_P2_1_9_5) -> 
                                (let rec rs_9_6 = ((relevant__d0 _lh_solve_LH_P2_0_9_5) _lh_solve_arg3_0) in
                                  (if (not (null__d0 rs_9_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_9_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_1_3_5 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_1_3_5 with
                          | `LH_P2(_lh_solve_LH_P2_0_9_6, _lh_solve_LH_P2_1_9_6) -> 
                            (let rec rs_9_7 = ((relevant__d0 _lh_solve_LH_P2_0_9_6) _lh_solve_arg3_0) in
                              (if (not (null__d0 rs_9_7)) then
                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_7)
                              else
                                (((ask__d0 _lh_solve_LH_P2_1_9_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_1_3_6 = _lh_solve_arg1_0 in
                    (match _lh_matchIdent_1_3_6 with
                      | `LH_P2(_lh_solve_LH_P2_0_9_7, _lh_solve_LH_P2_1_9_7) -> 
                        (let rec rs_9_8 = ((relevant__d0 _lh_solve_LH_P2_0_9_7) _lh_solve_arg3_0) in
                          (if (not (null__d0 rs_9_8)) then
                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_8)
                          else
                            (((ask__d0 _lh_solve_LH_P2_1_9_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_1_3_7 = _lh_solve_arg1_0 in
                (match _lh_matchIdent_1_3_7 with
                  | `LH_P2(_lh_solve_LH_P2_0_9_8, _lh_solve_LH_P2_1_9_8) -> 
                    (let rec rs_9_9 = ((relevant__d0 _lh_solve_LH_P2_0_9_8) _lh_solve_arg3_0) in
                      (if (not (null__d0 rs_9_9)) then
                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_9)
                      else
                        (((ask__d0 _lh_solve_LH_P2_1_9_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                  | _ -> 
                    (failwith "error"))))))
and sortKey__d0 _lh_sortKey_arg1_1 =
  (let rec insertKey_1 = (fun _lh_insertKey_arg1_1 _lh_insertKey_arg2_1 -> 
    (match _lh_insertKey_arg2_1 with
      | `LH_N -> 
        (`LH_C(_lh_insertKey_arg1_1, (`LH_N)))
      | _ -> 
        (match _lh_insertKey_arg1_1 with
          | `LH_P2(_lh_insertKey_LH_P2_0_2, _lh_insertKey_LH_P2_1_2) -> 
            (match _lh_insertKey_arg2_1 with
              | `LH_C(_lh_insertKey_LH_C_0_1, _lh_insertKey_LH_C_1_1) -> 
                (match _lh_insertKey_LH_C_0_1 with
                  | `LH_P2(_lh_insertKey_LH_P2_0_3, _lh_insertKey_LH_P2_1_3) -> 
                    (if (_lh_insertKey_LH_P2_0_2 <= _lh_insertKey_LH_P2_0_3) then
                      (`LH_C((`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_2, _lh_insertKey_LH_P2_1_2)), (`LH_P2(_lh_insertKey_LH_P2_0_3, _lh_insertKey_LH_P2_1_3)))), _lh_insertKey_LH_C_1_1))
                    else
                      (`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_3, _lh_insertKey_LH_P2_1_3)), ((insertKey_1 (`LH_P2(_lh_insertKey_LH_P2_0_2, _lh_insertKey_LH_P2_1_2))) _lh_insertKey_LH_C_1_1))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))) in
    (((foldr__d0 insertKey_1) (`LH_N)) _lh_sortKey_arg1_1))
and sortKey__d1 _lh_sortKey_arg1_0 =
  (let rec insertKey_0 = (fun _lh_insertKey_arg1_0 _lh_insertKey_arg2_0 -> 
    (match _lh_insertKey_arg2_0 with
      | `LH_N -> 
        (`LH_C(_lh_insertKey_arg1_0, (`LH_N)))
      | _ -> 
        (match _lh_insertKey_arg1_0 with
          | `LH_P2(_lh_insertKey_LH_P2_0_0, _lh_insertKey_LH_P2_1_0) -> 
            (match _lh_insertKey_arg2_0 with
              | `LH_C(_lh_insertKey_LH_C_0_0, _lh_insertKey_LH_C_1_0) -> 
                (match _lh_insertKey_LH_C_0_0 with
                  | `LH_P2(_lh_insertKey_LH_P2_0_1, _lh_insertKey_LH_P2_1_1) -> 
                    (if (_lh_insertKey_LH_P2_0_0 <= _lh_insertKey_LH_P2_0_1) then
                      (`LH_C((`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_0, _lh_insertKey_LH_P2_1_0)), (`LH_P2(_lh_insertKey_LH_P2_0_1, _lh_insertKey_LH_P2_1_1)))), _lh_insertKey_LH_C_1_0))
                    else
                      (`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_1, _lh_insertKey_LH_P2_1_1)), ((insertKey_0 (`LH_P2(_lh_insertKey_LH_P2_0_0, _lh_insertKey_LH_P2_1_0))) _lh_insertKey_LH_C_1_0))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))) in
    (((foldr__d1 insertKey_0) (`LH_N)) _lh_sortKey_arg1_0))
and split__d0 _lh_split_arg1_3 _lh_split_arg2_3 _lh_split_arg3_3 _lh_split_arg4_3 =
  (`Term(_lh_split_arg3_3, (`LH_C((_lh_split_arg2_3 ((takeWhile__d0 (fun x_6 -> 
    (not ((strEq__d1 x_6) _lh_split_arg3_3)))) _lh_split_arg1_3)), (`LH_C((_lh_split_arg4_3 (tail__d0 ((dropWhile__d0 (fun x_7 -> 
    (not ((strEq__d0 x_7) _lh_split_arg3_3)))) _lh_split_arg1_3))), (`LH_N)))))))
and split__d1 _lh_split_arg1_0 _lh_split_arg2_0 _lh_split_arg3_0 _lh_split_arg4_0 =
  (`Term(_lh_split_arg3_0, (`LH_C((_lh_split_arg2_0 ((takeWhile__d1 (fun x_0 -> 
    (not ((strEq__d3 x_0) _lh_split_arg3_0)))) _lh_split_arg1_0)), (`LH_C((_lh_split_arg4_0 (tail__d1 ((dropWhile__d1 (fun x_1 -> 
    (not ((strEq__d2 x_1) _lh_split_arg3_0)))) _lh_split_arg1_0))), (`LH_N)))))))
and split__d2 _lh_split_arg1_4 _lh_split_arg2_4 _lh_split_arg3_4 _lh_split_arg4_4 =
  (`Term(_lh_split_arg3_4, (`LH_C((_lh_split_arg2_4 ((takeWhile__d2 (fun x_9 -> 
    (not ((strEq__d5 x_9) _lh_split_arg3_4)))) _lh_split_arg1_4)), (`LH_C((_lh_split_arg4_4 (tail__d2 ((dropWhile__d2 (fun x_1_0 -> 
    (not ((strEq__d4 x_1_0) _lh_split_arg3_4)))) _lh_split_arg1_4))), (`LH_N)))))))
and split__d3 _lh_split_arg1_2 _lh_split_arg2_2 _lh_split_arg3_2 _lh_split_arg4_2 =
  (`Term(_lh_split_arg3_2, (`LH_C((_lh_split_arg2_2 ((takeWhile__d3 (fun x_4 -> 
    (not ((strEq__d7 x_4) _lh_split_arg3_2)))) _lh_split_arg1_2)), (`LH_C((_lh_split_arg4_2 (tail__d3 ((dropWhile__d3 (fun x_5 -> 
    (not ((strEq__d6 x_5) _lh_split_arg3_2)))) _lh_split_arg1_2))), (`LH_N)))))))
and split__d4 _lh_split_arg1_5 _lh_split_arg2_5 _lh_split_arg3_5 _lh_split_arg4_5 =
  (`Term(_lh_split_arg3_5, (`LH_C((_lh_split_arg2_5 ((takeWhile__d4 (fun x_1_2 -> 
    (not ((strEq__d9 x_1_2) _lh_split_arg3_5)))) _lh_split_arg1_5)), (`LH_C((_lh_split_arg4_5 (tail__d4 ((dropWhile__d4 (fun x_1_3 -> 
    (not ((strEq__d8 x_1_3) _lh_split_arg3_5)))) _lh_split_arg1_5))), (`LH_N)))))))
and split__d5 _lh_split_arg1_7 _lh_split_arg2_7 _lh_split_arg3_7 _lh_split_arg4_7 =
  (`Term(_lh_split_arg3_7, (`LH_C((_lh_split_arg2_7 ((takeWhile__d5 (fun x_1_8 -> 
    (not ((strEq__d1_d1 x_1_8) _lh_split_arg3_7)))) _lh_split_arg1_7)), (`LH_C((_lh_split_arg4_7 (tail__d7 ((dropWhile__d6 (fun x_1_9 -> 
    (not ((strEq__d1_d0 x_1_9) _lh_split_arg3_7)))) _lh_split_arg1_7))), (`LH_N)))))))
and split__d6 _lh_split_arg1_1 _lh_split_arg2_1 _lh_split_arg3_1 _lh_split_arg4_1 =
  (`Term(_lh_split_arg3_1, (`LH_C((_lh_split_arg2_1 ((takeWhile__d6 (fun x_2 -> 
    (not ((strEq__d1_d3 x_2) _lh_split_arg3_1)))) _lh_split_arg1_1)), (`LH_C((_lh_split_arg4_1 (tail__d8 ((dropWhile__d7 (fun x_3 -> 
    (not ((strEq__d1_d2 x_3) _lh_split_arg3_1)))) _lh_split_arg1_1))), (`LH_N)))))))
and split__d7 _lh_split_arg1_6 _lh_split_arg2_6 _lh_split_arg3_6 _lh_split_arg4_6 =
  (`Term(_lh_split_arg3_6, (`LH_C((_lh_split_arg2_6 ((takeWhile__d7 (fun x_1_5 -> 
    (not ((strEq__d1_d5 x_1_5) _lh_split_arg3_6)))) _lh_split_arg1_6)), (`LH_C((_lh_split_arg4_6 (tail__d9 ((dropWhile__d8 (fun x_1_6 -> 
    (not ((strEq__d1_d4 x_1_6) _lh_split_arg3_6)))) _lh_split_arg1_6))), (`LH_N)))))))
and strip__d0 _lh_strip_arg1_0 _lh_strip_arg2_0 =
  (match _lh_strip_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_strip_LH_C_0_0, _lh_strip_LH_C_1_0) -> 
      (match _lh_strip_LH_C_0_0 with
        | `Question(_lh_strip_Question_0_0) -> 
          (if ((inList__d1_d3 _lh_strip_Question_0_0) _lh_strip_arg1_0) then
            ((strip__d0 _lh_strip_arg1_0) _lh_strip_LH_C_1_0)
          else
            (`LH_C((`Question(_lh_strip_Question_0_0)), ((strip__d0 (let rec _lh_inList_LH_C_1_2_1 = _lh_strip_arg1_0 in
              (let rec _lh_inList_LH_C_0_2_1 = _lh_strip_Question_0_0 in
                (fun _lh_inList_arg1_3_4 -> 
                  (if (_lh_inList_arg1_3_4 = _lh_inList_LH_C_0_2_1) then
                    true
                  else
                    ((inList__d1_d3 _lh_inList_arg1_3_4) _lh_inList_LH_C_1_2_1)))))) _lh_strip_LH_C_1_0))))
        | _ -> 
          (`LH_C(_lh_strip_LH_C_0_0, ((strip__d0 _lh_strip_arg1_0) _lh_strip_LH_C_1_0))))
    | _ -> 
      (failwith "error"))
and subst__d0 _lh_subst_arg1_1 _lh_subst_arg2_1 =
  (match _lh_subst_arg2_1 with
    | `Term(_lh_subst_Term_0_1, _lh_subst_Term_1_1) -> 
      (let rec _lh_showPhrase_Term_1_1 = (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_0 -> 
        (match _lh_listcomp_fun_para_1_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_8) -> 
            (`LH_C(((subst__d0 _lh_subst_arg1_1) _lh_listcomp_fun_ls_h_7), (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_7 _lh_subst_Term_1_1)) in
        (let rec _lh_showPhrase_Term_0_1 = _lh_subst_Term_0_1 in
          (fun _lh_dummy_1_7 -> 
            (match _lh_showPhrase_Term_1_1 with
              | `LH_N -> 
                _lh_showPhrase_Term_0_1
              | `LH_C(_lh_showPhrase_LH_C_0_2, _lh_showPhrase_LH_C_1_2) -> 
                (match _lh_showPhrase_LH_C_1_2 with
                  | `LH_C(_lh_showPhrase_LH_C_0_3, _lh_showPhrase_LH_C_1_3) -> 
                    (match _lh_showPhrase_LH_C_1_3 with
                      | `LH_N -> 
                        ((mappend__d2_d0 ((mappend__d2_d1 ((mappend__d2_d2 ((mappend__d2_d3 (showPhrase__d0 _lh_showPhrase_LH_C_0_2)) (let rec t_7_8 = (fun ys_7_1 -> 
                          ys_7_1) in
                          (let rec h_7_4 = ' ' in
                            (fun ys_7_2 -> 
                              (`LH_C(h_7_4, ((mappend__d2_d2 t_7_8) ys_7_2)))))))) _lh_showPhrase_Term_0_1)) (let rec t_7_9 = (fun ys_7_3 -> 
                          ys_7_3) in
                          (let rec h_7_5 = ' ' in
                            (fun ys_7_4 -> 
                              (`LH_C(h_7_5, ((mappend__d2_d0 t_7_9) ys_7_4)))))))) (showPhrase__d0 _lh_showPhrase_LH_C_0_3))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
    | `Var(_lh_subst_Var_0_1) -> 
      (let rec lookup_1 = ((find__d0 _lh_subst_arg1_1) _lh_subst_Var_0_1) in
        (if (fails__d0 lookup_1) then
          (let rec _lh_showPhrase_Var_0_1 = _lh_subst_Var_0_1 in
            (fun _lh_dummy_1_8 -> 
              _lh_showPhrase_Var_0_1))
        else
          ((subst__d0 _lh_subst_arg1_1) (answer__d0 lookup_1))))
    | _ -> 
      (failwith "error"))
and subst__d1 _lh_subst_arg1_3 _lh_subst_arg2_3 =
  (match _lh_subst_arg2_3 with
    | `Term(_lh_subst_Term_0_3, _lh_subst_Term_1_3) -> 
      (let rec _lh_showPhrase_Term_1_2 = (let rec _lh_listcomp_fun_4_7 = (fun _lh_listcomp_fun_para_3_4 -> 
        (match _lh_listcomp_fun_para_3_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_3, _lh_listcomp_fun_ls_t_3_4) -> 
            (`LH_C(((subst__d1 _lh_subst_arg1_3) _lh_listcomp_fun_ls_h_3_3), (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_3_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_7 _lh_subst_Term_1_3)) in
        (let rec _lh_showPhrase_Term_0_2 = _lh_subst_Term_0_3 in
          (fun _lh_dummy_9_3 -> 
            (match _lh_showPhrase_Term_1_2 with
              | `LH_N -> 
                _lh_showPhrase_Term_0_2
              | `LH_C(_lh_showPhrase_LH_C_0_4, _lh_showPhrase_LH_C_1_4) -> 
                (match _lh_showPhrase_LH_C_1_4 with
                  | `LH_C(_lh_showPhrase_LH_C_0_5, _lh_showPhrase_LH_C_1_5) -> 
                    (match _lh_showPhrase_LH_C_1_5 with
                      | `LH_N -> 
                        ((mappend__d3_d5 ((mappend__d3_d6 ((mappend__d3_d7 ((mappend__d3_d8 (showPhrase__d2 _lh_showPhrase_LH_C_0_4)) (let rec t_1_8_9 = (fun ys_1_4_3 -> 
                          ys_1_4_3) in
                          (let rec h_1_4_7 = ' ' in
                            (fun ys_1_4_4 -> 
                              (`LH_C(h_1_4_7, ((mappend__d3_d7 t_1_8_9) ys_1_4_4)))))))) _lh_showPhrase_Term_0_2)) (let rec t_1_9_0 = (fun ys_1_4_5 -> 
                          ys_1_4_5) in
                          (let rec h_1_4_8 = ' ' in
                            (fun ys_1_4_6 -> 
                              (`LH_C(h_1_4_8, ((mappend__d3_d5 t_1_9_0) ys_1_4_6)))))))) (showPhrase__d2 _lh_showPhrase_LH_C_0_5))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
    | `Var(_lh_subst_Var_0_3) -> 
      (let rec lookup_4 = ((find__d2 _lh_subst_arg1_3) _lh_subst_Var_0_3) in
        (if (fails__d1 lookup_4) then
          (let rec _lh_showPhrase_Var_0_2 = _lh_subst_Var_0_3 in
            (fun _lh_dummy_9_4 -> 
              _lh_showPhrase_Var_0_2))
        else
          ((subst__d1 _lh_subst_arg1_3) (answer__d2 lookup_4))))
    | _ -> 
      (failwith "error"))
and subst__d2 _lh_subst_arg1_0 _lh_subst_arg2_0 =
  (match _lh_subst_arg2_0 with
    | `Term(_lh_subst_Term_0_0, _lh_subst_Term_1_0) -> 
      (`Term(_lh_subst_Term_0_0, (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (`LH_C(((subst__d2 _lh_subst_arg1_0) _lh_listcomp_fun_ls_h_3), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_5 _lh_subst_Term_1_0))))
    | `Var(_lh_subst_Var_0_0) -> 
      (let rec lookup_0 = ((find__d3 _lh_subst_arg1_0) _lh_subst_Var_0_0) in
        (if (fails__d2 lookup_0) then
          (`Var(_lh_subst_Var_0_0))
        else
          ((subst__d2 _lh_subst_arg1_0) (answer__d3 lookup_0))))
    | _ -> 
      (failwith "error"))
and subst__d3 _lh_subst_arg1_2 _lh_subst_arg2_2 =
  (match _lh_subst_arg2_2 with
    | `Term(_lh_subst_Term_0_2, _lh_subst_Term_1_2) -> 
      (`Term(_lh_subst_Term_0_2, (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_1_1 -> 
        (match _lh_listcomp_fun_para_1_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_1_0) -> 
            (`LH_C(((subst__d3 _lh_subst_arg1_2) _lh_listcomp_fun_ls_h_9), (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_0 _lh_subst_Term_1_2))))
    | `Var(_lh_subst_Var_0_2) -> 
      (let rec lookup_2 = ((find__d4 _lh_subst_arg1_2) _lh_subst_Var_0_2) in
        (if (fails__d5 lookup_2) then
          (`Var(_lh_subst_Var_0_2))
        else
          ((subst__d3 _lh_subst_arg1_2) (answer__d6 lookup_2))))
    | _ -> 
      (failwith "error"))
and subst__d4 _lh_subst_arg1_4 _lh_subst_arg2_4 =
  (match _lh_subst_arg2_4 with
    | `Term(_lh_subst_Term_0_4, _lh_subst_Term_1_4) -> 
      (`Term(_lh_subst_Term_0_4, (let rec _lh_listcomp_fun_4_8 = (fun _lh_listcomp_fun_para_3_5 -> 
        (match _lh_listcomp_fun_para_3_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_4, _lh_listcomp_fun_ls_t_3_5) -> 
            (`LH_C(((subst__d4 _lh_subst_arg1_4) _lh_listcomp_fun_ls_h_3_4), (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_3_5)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_8 _lh_subst_Term_1_4))))
    | `Var(_lh_subst_Var_0_4) -> 
      (let rec lookup_5 = ((find__d5 _lh_subst_arg1_4) _lh_subst_Var_0_4) in
        (if (fails__d6 lookup_5) then
          (`Var(_lh_subst_Var_0_4))
        else
          ((subst__d4 _lh_subst_arg1_4) (answer__d7 lookup_5))))
    | _ -> 
      (failwith "error"))
and take__d1 n_5 ls_3_4 =
  (if (n_5 > 0) then
    (match ls_3_4 with
      | `LH_C(h_1_3_7, t_1_7_4) -> 
        (let rec _lh_listcomp_fun_ls_t_3_2 = ((take__d1 (n_5 - 1)) t_1_7_4) in
          (let rec _lh_listcomp_fun_ls_h_3_1 = h_1_3_7 in
            (fun _lh_listcomp_fun_4_3 -> 
              (let rec ty_1 = (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_3_2) in
                (let rec hy_1 = (`Var(_lh_listcomp_fun_ls_h_3_1)) in
                  (fun hx_2 tx_2 -> 
                    (let rec t_1_7_5 = ((zip__d0 tx_2) ty_1) in
                      (let rec h_1_3_8 = (`LH_P2(hx_2, hy_1)) in
                        (fun f_1_1 i_5 -> 
                          ((f_1_1 h_1_3_8) (((foldr__d1 f_1_1) i_5) t_1_7_5)))))))))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_4_4 hx_3 tx_3 f_1_2 i_6 -> 
          i_6))
  else
    (fun _lh_listcomp_fun_4_5 hx_4 tx_4 f_1_3 i_7 -> 
      i_7))
and take__d3 n_1 ls_1_6 =
  (if (n_1 > 0) then
    (match ls_1_6 with
      | `LH_C(h_3_0, t_3_0) -> 
        (let rec _lh_break_LH_C_1_1 = ((take__d3 (n_1 - 1)) t_3_0) in
          (let rec _lh_break_LH_C_0_1 = h_3_0 in
            (fun _lh_break_arg1_2 -> 
              (if (_lh_break_arg1_2 _lh_break_LH_C_0_1) then
                (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_1 in
                  (fun _lh_dummy_5 -> 
                    (lines__d1 _lh_lines_LH_C_1_0)))))
              else
                (let rec _lh_matchIdent_9 = ((break__d2 _lh_break_arg1_2) _lh_break_LH_C_1_1) in
                  (match _lh_matchIdent_9 with
                    | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
                      (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
                    | _ -> 
                      (failwith "error")))))))
      | `LH_N -> 
        (fun _lh_break_arg1_3 -> 
          (`LH_P2((`LH_N), (fun _lh_dummy_6 _lh_listcomp_fun_6 -> 
            (`LH_N))))))
  else
    (fun _lh_break_arg1_4 -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_7 _lh_listcomp_fun_7 -> 
        (`LH_N))))))
and testExpert_nofib__d0 _lh_testExpert_nofib_arg1_0 =
  (let rec animals_0 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('o', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('w', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('g', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('r', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('e', (`LH_C('o', (`LH_C('w', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('i', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('l', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('f', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('g', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('s', (`LH_C('w', (`LH_C('i', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec contents_0 = (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('|', (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_C('b', (`LH_C('e', (`LH_C('|', (`LH_C('A', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C('?', (`LH_C('|', (`LH_C('U', (`LH_C('n', (`LH_C('h', (`LH_C('u', (`LH_C('h', (`LH_C('|', (`LH_C('Y', (`LH_C('e', (`LH_C('p', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      ((fun _lh_funcomp_x_0 -> 
        ((fun _lh_funcomp_x_1 -> 
          (length__d0 ((process__d0 animals_0) _lh_funcomp_x_1))) ((take__d3 (_lh_testExpert_nofib_arg1_0 + 9999)) _lh_funcomp_x_0))) contents_0)))
and updateList__d0 _lh_updateList_arg1_0 _lh_updateList_arg2_0 =
  let rec unique_0 = (fun _lh_unique_arg1_0 -> 
    (match _lh_unique_arg1_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_unique_LH_C_0_0, _lh_unique_LH_C_1_0) -> 
        (match _lh_unique_LH_C_1_0 with
          | `LH_N -> 
            (`LH_C(_lh_unique_LH_C_0_0, (`LH_N)))
          | _ -> 
            (match _lh_unique_LH_C_0_0 with
              | `LH_P2(_lh_unique_LH_P2_0_0, _lh_unique_LH_P2_1_0) -> 
                (match _lh_unique_LH_C_1_0 with
                  | `LH_C(_lh_unique_LH_C_0_1, _lh_unique_LH_C_1_1) -> 
                    (match _lh_unique_LH_C_0_1 with
                      | `LH_P2(_lh_unique_LH_P2_0_1, _lh_unique_LH_P2_1_1) -> 
                        (if (_lh_unique_LH_P2_0_0 = _lh_unique_LH_P2_0_1) then
                          (unique_0 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_1, _lh_unique_LH_P2_1_1)), _lh_unique_LH_C_1_1)))
                        else
                          (`LH_C((`LH_P2(_lh_unique_LH_P2_0_0, _lh_unique_LH_P2_1_0)), (unique_0 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_1, _lh_unique_LH_P2_1_1)), _lh_unique_LH_C_1_1))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
      | _ -> 
        (failwith "error")))
  and balance_0 = (fun _lh_balance_arg1_0 -> 
    (match _lh_balance_arg1_0 with
      | `LH_N -> 
        (fun _lh_find_arg2_1 -> 
          (failure__d8 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N)))))))))))))))))))))
      | _ -> 
        (let rec m_0 = ((length__d1 _lh_balance_arg1_0) / 2) in
          (let rec left_0 = (balance_0 ((take__d0 m_0) _lh_balance_arg1_0)) in
            (let rec right_0 = (balance_0 ((drop__d0 (m_0 + 1)) _lh_balance_arg1_0)) in
              (let rec _lh_find_Fork_2_1 = right_0 in
                (let rec _lh_find_Fork_1_1 = ((atIndex__d0 m_0) _lh_balance_arg1_0) in
                  (let rec _lh_find_Fork_0_1 = left_0 in
                    (fun _lh_find_arg2_2 -> 
                      (match _lh_find_Fork_1_1 with
                        | `LH_P2(_lh_find_LH_P2_0_1, _lh_find_LH_P2_1_1) -> 
                          (if (_lh_find_arg2_2 < _lh_find_LH_P2_0_1) then
                            ((find__d6 _lh_find_Fork_0_1) _lh_find_arg2_2)
                          else
                            (if (_lh_find_arg2_2 = _lh_find_LH_P2_0_1) then
                              (success__d1_d0 _lh_find_LH_P2_1_1)
                            else
                              (if (_lh_find_arg2_2 > _lh_find_LH_P2_0_1) then
                                ((find__d6 _lh_find_Fork_2_1) _lh_find_arg2_2)
                              else
                                ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
                        | _ -> 
                          (failwith "error")))))))))))
  in (balance_0 ((mergeKey__d0 (entries__d0 _lh_updateList_arg1_0)) (unique_0 (sortKey__d0 _lh_updateList_arg2_0))))
and updateList__d1 _lh_updateList_arg1_1 _lh_updateList_arg2_1 =
  let rec unique_1 = (fun _lh_unique_arg1_1 -> 
    (match _lh_unique_arg1_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_unique_LH_C_0_2, _lh_unique_LH_C_1_2) -> 
        (match _lh_unique_LH_C_1_2 with
          | `LH_N -> 
            (`LH_C(_lh_unique_LH_C_0_2, (`LH_N)))
          | _ -> 
            (match _lh_unique_LH_C_0_2 with
              | `LH_P2(_lh_unique_LH_P2_0_2, _lh_unique_LH_P2_1_2) -> 
                (match _lh_unique_LH_C_1_2 with
                  | `LH_C(_lh_unique_LH_C_0_3, _lh_unique_LH_C_1_3) -> 
                    (match _lh_unique_LH_C_0_3 with
                      | `LH_P2(_lh_unique_LH_P2_0_3, _lh_unique_LH_P2_1_3) -> 
                        (if (_lh_unique_LH_P2_0_2 = _lh_unique_LH_P2_0_3) then
                          (unique_1 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_3, _lh_unique_LH_P2_1_3)), _lh_unique_LH_C_1_3)))
                        else
                          (`LH_C((`LH_P2(_lh_unique_LH_P2_0_2, _lh_unique_LH_P2_1_2)), (unique_1 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_3, _lh_unique_LH_P2_1_3)), _lh_unique_LH_C_1_3))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
      | _ -> 
        (failwith "error")))
  and balance_1 = (fun _lh_balance_arg1_1 -> 
    (match _lh_balance_arg1_1 with
      | `LH_N -> 
        (fun _lh_find_arg2_7 -> 
          (failure__d3 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N)))))))))))))))))))))
      | _ -> 
        (let rec m_2 = ((length__d3 _lh_balance_arg1_1) / 2) in
          (let rec left_1 = (balance_1 ((take__d2 m_2) _lh_balance_arg1_1)) in
            (let rec right_1 = (balance_1 ((drop__d2 (m_2 + 1)) _lh_balance_arg1_1)) in
              (let rec _lh_find_Fork_2_5 = right_1 in
                (let rec _lh_find_Fork_1_5 = ((atIndex__d1 m_2) _lh_balance_arg1_1) in
                  (let rec _lh_find_Fork_0_5 = left_1 in
                    (fun _lh_find_arg2_8 -> 
                      (match _lh_find_Fork_1_5 with
                        | `LH_P2(_lh_find_LH_P2_0_5, _lh_find_LH_P2_1_5) -> 
                          (if (_lh_find_arg2_8 < _lh_find_LH_P2_0_5) then
                            ((find__d3 _lh_find_Fork_0_5) _lh_find_arg2_8)
                          else
                            (if (_lh_find_arg2_8 = _lh_find_LH_P2_0_5) then
                              (success__d3 _lh_find_LH_P2_1_5)
                            else
                              (if (_lh_find_arg2_8 > _lh_find_LH_P2_0_5) then
                                ((find__d3 _lh_find_Fork_2_5) _lh_find_arg2_8)
                              else
                                ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
                        | _ -> 
                          (failwith "error")))))))))))
  in (balance_1 ((mergeKey__d1 (entries__d1 _lh_updateList_arg1_1)) (unique_1 (sortKey__d1 _lh_updateList_arg2_1))))
and vars__d0 _lh_vars_arg1_0 =
  (let rec names_0 = (fun _lh_names_arg1_0 -> 
    (match _lh_names_arg1_0 with
      | `Var(_lh_names_Var_0_0) -> 
        (`LH_C(_lh_names_Var_0_0, (`LH_N)))
      | `Term(_lh_names_Term_0_0, _lh_names_Term_1_0) -> 
        (concat__d2 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_4 -> 
          (match _lh_listcomp_fun_para_4 with
            | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
              (let rec t_3_8 = (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_4) in
                (let rec h_3_8 = (names_0 _lh_listcomp_fun_ls_h_4) in
                  (fun _lh_dummy_1_0 -> 
                    ((mappend__d4_d3 h_3_8) (concat__d2 t_3_8)))))
            | `LH_N -> 
              (fun _lh_dummy_1_1 -> 
                (`LH_N)))) in
          (_lh_listcomp_fun_8 _lh_names_Term_1_0)))
      | _ -> 
        (failwith "error"))) in
    (nub__d1 (names_0 _lh_vars_arg1_0)))
and vars__d1 _lh_vars_arg1_1 =
  (let rec names_1 = (fun _lh_names_arg1_1 -> 
    (match _lh_names_arg1_1 with
      | `Var(_lh_names_Var_0_1) -> 
        (`LH_C(_lh_names_Var_0_1, (`LH_N)))
      | `Term(_lh_names_Term_0_1, _lh_names_Term_1_1) -> 
        (concat__d3 (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_1_6 -> 
          (match _lh_listcomp_fun_para_1_6 with
            | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_5) -> 
              (let rec t_1_5_8 = (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_1_5) in
                (let rec h_1_2_1 = (names_1 _lh_listcomp_fun_ls_h_1_4) in
                  (fun _lh_dummy_6_1 -> 
                    ((mappend__d4_d5 h_1_2_1) (concat__d3 t_1_5_8)))))
            | `LH_N -> 
              (fun _lh_dummy_6_2 -> 
                (`LH_N)))) in
          (_lh_listcomp_fun_2_6 _lh_names_Term_1_1)))
      | _ -> 
        (failwith "error"))) in
    (nub__d2 (names_1 _lh_vars_arg1_1)))
and words__d0 _lh_words_arg1_1 =
  (let rec _lh_matchIdent_8 = ((dropWhile__d5 isSpace__d0) _lh_words_arg1_1) in
    (_lh_matchIdent_8 99))
and words__d1 _lh_words_arg1_2 =
  (let rec _lh_matchIdent_1_4_7 = ((dropWhile__d9 isSpace__d2) _lh_words_arg1_2) in
    (_lh_matchIdent_1_4_7 99))
and words__d2 _lh_words_arg1_0 =
  (let rec _lh_matchIdent_7 = ((dropWhile__d1_d0 isSpace__d4) _lh_words_arg1_0) in
    (_lh_matchIdent_7 99))
and zip__d1 xs_1_8 ys_3_2 =
  (match xs_1_8 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_3_2 with
        | `LH_C(hy_0, ty_0) -> 
          (let rec _lh_matchList_LH_C_1_0 = ((zip__d1 tx_1) ty_0) in
            (let rec _lh_matchList_LH_C_0_0 = (let rec _lh_matchList_LH_P2_1_0 = hy_0 in
              (let rec _lh_matchList_LH_P2_0_0 = hx_1 in
                (fun _lh_matchList_LH_C_1_1 _lh_matchList_arg1_0 -> 
                  (let rec res_0 = (((match__d0 _lh_matchList_arg1_0) _lh_matchList_LH_P2_0_0) _lh_matchList_LH_P2_1_0) in
                    (if (fails__d4 res_0) then
                      res_0
                    else
                      ((matchList__d0 (answer__d5 res_0)) _lh_matchList_LH_C_1_1)))))) in
              (fun _lh_matchList_arg1_1 -> 
                ((_lh_matchList_LH_C_0_0 _lh_matchList_LH_C_1_0) _lh_matchList_arg1_1))))
        | `LH_N -> 
          (fun _lh_matchList_arg1_2 -> 
            (success__d4 _lh_matchList_arg1_2)))
    | `LH_N -> 
      (fun _lh_matchList_arg1_3 -> 
        (success__d4 _lh_matchList_arg1_3)));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec answer__d0 _lh_answer_arg1_7 =
  (match _lh_answer_arg1_7 with
    | `Answer(_lh_answer_Answer_0_7) -> 
      _lh_answer_Answer_0_7
    | _ -> 
      (failwith "error"));;
let rec answer__d1 _lh_answer_arg1_3 =
  (match _lh_answer_arg1_3 with
    | `Answer(_lh_answer_Answer_0_3) -> 
      _lh_answer_Answer_0_3
    | _ -> 
      (failwith "error"));;
let rec answer__d2 _lh_answer_arg1_0 =
  (match _lh_answer_arg1_0 with
    | `Answer(_lh_answer_Answer_0_0) -> 
      _lh_answer_Answer_0_0
    | _ -> 
      (failwith "error"));;
let rec answer__d3 _lh_answer_arg1_1 =
  (match _lh_answer_arg1_1 with
    | `Answer(_lh_answer_Answer_0_1) -> 
      _lh_answer_Answer_0_1
    | _ -> 
      (failwith "error"));;
let rec answer__d4 _lh_answer_arg1_6 =
  (match _lh_answer_arg1_6 with
    | `Answer(_lh_answer_Answer_0_6) -> 
      _lh_answer_Answer_0_6
    | _ -> 
      (failwith "error"));;
let rec answer__d5 _lh_answer_arg1_5 =
  (match _lh_answer_arg1_5 with
    | `Answer(_lh_answer_Answer_0_5) -> 
      _lh_answer_Answer_0_5
    | _ -> 
      (failwith "error"));;
let rec answer__d6 _lh_answer_arg1_4 =
  (match _lh_answer_arg1_4 with
    | `Answer(_lh_answer_Answer_0_4) -> 
      _lh_answer_Answer_0_4
    | _ -> 
      (failwith "error"));;
let rec answer__d7 _lh_answer_arg1_8 =
  (match _lh_answer_arg1_8 with
    | `Answer(_lh_answer_Answer_0_8) -> 
      _lh_answer_Answer_0_8
    | _ -> 
      (failwith "error"));;
let rec answer__d8 _lh_answer_arg1_2 =
  (match _lh_answer_arg1_2 with
    | `Answer(_lh_answer_Answer_0_2) -> 
      _lh_answer_Answer_0_2
    | _ -> 
      (failwith "error"));;
let rec atIndex__d0 n_6 ls_4_3 =
  (if (n_6 < 0) then
    (failwith "error")
  else
    (match ls_4_3 with
      | `LH_C(h_1_5_3, t_1_9_5) -> 
        (if (n_6 = 0) then
          h_1_5_3
        else
          ((atIndex__d0 (n_6 - 1)) t_1_9_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1 n_2 ls_2_1 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match ls_2_1 with
      | `LH_C(h_4_0, t_4_0) -> 
        (if (n_2 = 0) then
          h_4_0
        else
          ((atIndex__d1 (n_2 - 1)) t_4_0))
      | `LH_N -> 
        (failwith "error")));;
let rec break__d0 _lh_break_arg1_8 _lh_break_arg2_5 =
  (match _lh_break_arg2_5 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_5, _lh_break_LH_C_1_5) -> 
      (if (_lh_break_arg1_8 _lh_break_LH_C_0_5) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_5, _lh_break_LH_C_1_5))))
      else
        (let rec _lh_matchIdent_1_5_5 = ((break__d0 _lh_break_arg1_8) _lh_break_LH_C_1_5) in
          (match _lh_matchIdent_1_5_5 with
            | `LH_P2(_lh_break_LH_P2_0_5, _lh_break_LH_P2_1_5) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_5, _lh_break_LH_P2_0_5)), _lh_break_LH_P2_1_5))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d2 _lh_break_arg1_1 _lh_break_arg2_1 =
  (_lh_break_arg2_1 _lh_break_arg1_1);;
let rec break__d4 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_1 = ((break__d4 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_1 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d5 _lh_break_arg1_6 _lh_break_arg2_3 =
  (match _lh_break_arg2_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_3, _lh_break_LH_C_1_3) -> 
      (if (_lh_break_arg1_6 _lh_break_LH_C_0_3) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_3, _lh_break_LH_C_1_3))))
      else
        (let rec _lh_matchIdent_2_8 = ((break__d5 _lh_break_arg1_6) _lh_break_LH_C_1_3) in
          (match _lh_matchIdent_2_8 with
            | `LH_P2(_lh_break_LH_P2_0_3, _lh_break_LH_P2_1_3) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_3, _lh_break_LH_P2_0_3)), _lh_break_LH_P2_1_3))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec concat__d0 lss_1 =
  (lss_1 99);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
let rec concat__d2 lss_3 =
  (lss_3 99);;
let rec concat__d3 lss_2 =
  (lss_2 99);;
let rec dropWhile__d0 _lh_dropWhile_arg1_8 _lh_dropWhile_arg2_8 =
  (match _lh_dropWhile_arg2_8 with
    | `LH_N -> 
      (fun _lh_dummy_8_7 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_8, _lh_dropWhile_LH_C_1_8) -> 
      (if (_lh_dropWhile_arg1_8 _lh_dropWhile_LH_C_0_8) then
        ((dropWhile__d0 _lh_dropWhile_arg1_8) _lh_dropWhile_LH_C_1_8)
      else
        (let rec t_1_8_5 = _lh_dropWhile_LH_C_1_8 in
          (fun _lh_dummy_8_8 -> 
            t_1_8_5)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d1 _lh_dropWhile_arg1_5 _lh_dropWhile_arg2_5 =
  (match _lh_dropWhile_arg2_5 with
    | `LH_N -> 
      (fun _lh_dummy_5_9 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_5, _lh_dropWhile_LH_C_1_5) -> 
      (if (_lh_dropWhile_arg1_5 _lh_dropWhile_LH_C_0_5) then
        ((dropWhile__d1 _lh_dropWhile_arg1_5) _lh_dropWhile_LH_C_1_5)
      else
        (let rec t_1_5_2 = _lh_dropWhile_LH_C_1_5 in
          (fun _lh_dummy_6_0 -> 
            t_1_5_2)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d2 _lh_dropWhile_arg1_4 _lh_dropWhile_arg2_4 =
  (match _lh_dropWhile_arg2_4 with
    | `LH_N -> 
      (fun _lh_dummy_2_5 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_4, _lh_dropWhile_LH_C_1_4) -> 
      (if (_lh_dropWhile_arg1_4 _lh_dropWhile_LH_C_0_4) then
        ((dropWhile__d2 _lh_dropWhile_arg1_4) _lh_dropWhile_LH_C_1_4)
      else
        (let rec t_8_5 = _lh_dropWhile_LH_C_1_4 in
          (fun _lh_dummy_2_6 -> 
            t_8_5)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d3 _lh_dropWhile_arg1_1_0 _lh_dropWhile_arg2_1_0 =
  (match _lh_dropWhile_arg2_1_0 with
    | `LH_N -> 
      (fun _lh_dummy_9_1 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_1_0, _lh_dropWhile_LH_C_1_1_0) -> 
      (if (_lh_dropWhile_arg1_1_0 _lh_dropWhile_LH_C_0_1_0) then
        ((dropWhile__d3 _lh_dropWhile_arg1_1_0) _lh_dropWhile_LH_C_1_1_0)
      else
        (let rec t_1_8_8 = _lh_dropWhile_LH_C_1_1_0 in
          (fun _lh_dummy_9_2 -> 
            t_1_8_8)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d4 _lh_dropWhile_arg1_6 _lh_dropWhile_arg2_6 =
  (match _lh_dropWhile_arg2_6 with
    | `LH_N -> 
      (fun _lh_dummy_8_3 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_6, _lh_dropWhile_LH_C_1_6) -> 
      (if (_lh_dropWhile_arg1_6 _lh_dropWhile_LH_C_0_6) then
        ((dropWhile__d4 _lh_dropWhile_arg1_6) _lh_dropWhile_LH_C_1_6)
      else
        (let rec t_1_7_6 = _lh_dropWhile_LH_C_1_6 in
          (fun _lh_dummy_8_4 -> 
            t_1_7_6)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d6 _lh_dropWhile_arg1_2 _lh_dropWhile_arg2_2 =
  (match _lh_dropWhile_arg2_2 with
    | `LH_N -> 
      (fun _lh_dummy_2_1 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2) -> 
      (if (_lh_dropWhile_arg1_2 _lh_dropWhile_LH_C_0_2) then
        ((dropWhile__d6 _lh_dropWhile_arg1_2) _lh_dropWhile_LH_C_1_2)
      else
        (let rec t_8_3 = _lh_dropWhile_LH_C_1_2 in
          (fun _lh_dummy_2_2 -> 
            t_8_3)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d7 _lh_dropWhile_arg1_9 _lh_dropWhile_arg2_9 =
  (match _lh_dropWhile_arg2_9 with
    | `LH_N -> 
      (fun _lh_dummy_8_9 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_9, _lh_dropWhile_LH_C_1_9) -> 
      (if (_lh_dropWhile_arg1_9 _lh_dropWhile_LH_C_0_9) then
        ((dropWhile__d7 _lh_dropWhile_arg1_9) _lh_dropWhile_LH_C_1_9)
      else
        (let rec t_1_8_7 = _lh_dropWhile_LH_C_1_9 in
          (fun _lh_dummy_9_0 -> 
            t_1_8_7)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d8 _lh_dropWhile_arg1_7 _lh_dropWhile_arg2_7 =
  (match _lh_dropWhile_arg2_7 with
    | `LH_N -> 
      (fun _lh_dummy_8_5 -> 
        (failwith "error"))
    | `LH_C(_lh_dropWhile_LH_C_0_7, _lh_dropWhile_LH_C_1_7) -> 
      (if (_lh_dropWhile_arg1_7 _lh_dropWhile_LH_C_0_7) then
        ((dropWhile__d8 _lh_dropWhile_arg1_7) _lh_dropWhile_LH_C_1_7)
      else
        (let rec t_1_8_0 = _lh_dropWhile_LH_C_1_7 in
          (fun _lh_dummy_8_6 -> 
            t_1_8_0)))
    | _ -> 
      (failwith "error"));;
let rec drop__d0 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 > 0) then
        ((drop__d0 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2)
      else
        (`LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec drop__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec drop__d2 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d2 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_0 b_0 _lh_popOutId_0_4 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_8 = a_0 in
        (`LH_C((`LH_C('X', (string_of_int _lh_listcomp_fun_ls_h_8))), (_lh_popOutId_0_4 _lh_listcomp_fun_ls_t_9)))))
  else
    (`LH_N));;
let rec failure__d0 _lh_failure_arg1_7 =
  (`Reason(_lh_failure_arg1_7));;
let rec failure__d1 _lh_failure_arg1_3 =
  (`Reason(_lh_failure_arg1_3));;
let rec failure__d2 _lh_failure_arg1_0 =
  (`Reason(_lh_failure_arg1_0));;
let rec failure__d3 _lh_failure_arg1_1 =
  (`Reason(_lh_failure_arg1_1));;
let rec failure__d4 _lh_failure_arg1_8 =
  (`Reason(_lh_failure_arg1_8));;
let rec failure__d5 _lh_failure_arg1_5 =
  (`Reason(_lh_failure_arg1_5));;
let rec failure__d6 _lh_failure_arg1_2 =
  (`Reason(_lh_failure_arg1_2));;
let rec failure__d7 _lh_failure_arg1_6 =
  (`Reason(_lh_failure_arg1_6));;
let rec failure__d8 _lh_failure_arg1_4 =
  (`Reason(_lh_failure_arg1_4));;
let rec filter__d0 f_8 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_6_3, t_6_6) -> 
      (if (f_8 h_6_3) then
        (`LH_C(h_6_3, ((filter__d0 f_8) t_6_6)))
      else
        ((filter__d0 f_8) t_6_6))
    | `LH_N -> 
      (`LH_N));;
let rec filter__d1 f_3 ls_8 =
  (match ls_8 with
    | `LH_C(h_9, t_9) -> 
      (if (f_3 h_9) then
        (`LH_C(h_9, ((filter__d1 f_3) t_9)))
      else
        ((filter__d1 f_3) t_9))
    | `LH_N -> 
      (`LH_N));;
let rec filter__d2 f_5 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_4_6, t_4_7) -> 
      (if (f_5 h_4_6) then
        (`LH_C(h_4_6, ((filter__d2 f_5) t_4_7)))
      else
        ((filter__d2 f_5) t_4_7))
    | `LH_N -> 
      (`LH_N));;
let rec find__d3 _lh_find_arg1_3 _lh_find_arg2_5 =
  (let rec _lh_matchIdent_3_3 = _lh_find_arg1_3 in
    (_lh_matchIdent_3_3 _lh_find_arg2_5));;
let rec find__d6 _lh_find_arg1_5 _lh_find_arg2_9 =
  (let rec _lh_matchIdent_1_5_2 = _lh_find_arg1_5 in
    (_lh_matchIdent_1_5_2 _lh_find_arg2_9));;
let rec foldr1__d0 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1__d0 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_1 i_1 ls_5 =
  ((ls_5 f_1) i_1);;
let rec foldr__d1 f_0 i_0 ls_1 =
  ((ls_1 f_0) i_0);;
let rec fst__d0 _lh_fst_arg1_4 =
  (match _lh_fst_arg1_4 with
    | `LH_P2(_lh_fst_LH_P2_0_4, _lh_fst_LH_P2_1_4) -> 
      _lh_fst_LH_P2_0_4
    | _ -> 
      (failwith "error"));;
let rec fst__d1 _lh_fst_arg1_2 =
  (match _lh_fst_arg1_2 with
    | `LH_P2(_lh_fst_LH_P2_0_2, _lh_fst_LH_P2_1_2) -> 
      _lh_fst_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec fst__d2 _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec fst__d3 _lh_fst_arg1_3 =
  (match _lh_fst_arg1_3 with
    | `LH_P2(_lh_fst_LH_P2_0_3, _lh_fst_LH_P2_1_3) -> 
      _lh_fst_LH_P2_0_3
    | _ -> 
      (failwith "error"));;
let rec fst__d4 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_1, _lh_fst_LH_P2_1_1) -> 
      _lh_fst_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec fst__d5 _lh_fst_arg1_5 =
  (match _lh_fst_arg1_5 with
    | `LH_P2(_lh_fst_LH_P2_0_5, _lh_fst_LH_P2_1_5) -> 
      _lh_fst_LH_P2_0_5
    | _ -> 
      (failwith "error"));;
let rec head__d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_3_9, t_3_9) -> 
      h_3_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_2_9, t_2_9) -> 
      h_2_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d1 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_2_5, t_2_5) -> 
      h_2_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d2 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_4_3, t_4_3) -> 
      h_4_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d3 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_1_4_6, t_1_8_6) -> 
      h_1_4_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d4 ls_2 =
  (match ls_2 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d5 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_2_8, t_2_8) -> 
      h_2_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d6 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_1_3_6, t_1_7_3) -> 
      h_1_3_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d2 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_5_8, t_6_0) -> 
      h_5_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d3 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_1_5_2, t_1_9_4) -> 
      h_1_5_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d4 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_7_9, t_8_4) -> 
      h_7_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d5 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_1_8, t_1_8) -> 
      h_1_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d6 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_1_4_2, t_1_8_1) -> 
      h_1_4_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d7 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_3_3, t_3_3) -> 
      h_3_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d8 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_7, t_1_7) -> 
      h_1_7
    | `LH_N -> 
      (failwith "error"));;
let rec head__d9 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_1_4_5, t_1_8_4) -> 
      h_1_4_5
    | `LH_N -> 
      (failwith "error"));;
let rec inList__d0 _lh_inList_arg1_4_2 _lh_inList_arg2_8 =
  (match _lh_inList_arg2_8 with
    | `LH_C(_lh_inList_LH_C_0_2_7, _lh_inList_LH_C_1_2_7) -> 
      (if (_lh_inList_arg1_4_2 = _lh_inList_LH_C_0_2_7) then
        true
      else
        ((inList__d0 _lh_inList_arg1_4_2) _lh_inList_LH_C_1_2_7))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1 _lh_inList_arg1_4_4 _lh_inList_arg2_1_0 =
  (match _lh_inList_arg2_1_0 with
    | `LH_C(_lh_inList_LH_C_0_2_8, _lh_inList_LH_C_1_2_8) -> 
      (if (_lh_inList_arg1_4_4 = _lh_inList_LH_C_0_2_8) then
        true
      else
        ((inList__d1 _lh_inList_arg1_4_4) _lh_inList_LH_C_1_2_8))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1_d0 _lh_inList_arg1_3_5 _lh_inList_arg2_7 =
  (_lh_inList_arg2_7 _lh_inList_arg1_3_5);;
let rec inList__d1_d1 _lh_inList_arg1_5_3 _lh_inList_arg2_1_3 =
  (_lh_inList_arg2_1_3 _lh_inList_arg1_5_3);;
let rec inList__d1_d2 _lh_inList_arg1_5 _lh_inList_arg2_1 =
  (_lh_inList_arg2_1 _lh_inList_arg1_5);;
let rec inList__d1_d3 _lh_inList_arg1_4_3 _lh_inList_arg2_9 =
  (_lh_inList_arg2_9 _lh_inList_arg1_4_3);;
let rec inList__d2 _lh_inList_arg1_1_0 _lh_inList_arg2_2 =
  (_lh_inList_arg2_2 _lh_inList_arg1_1_0);;
let rec inList__d3 _lh_inList_arg1_2_5 _lh_inList_arg2_6 =
  (_lh_inList_arg2_6 _lh_inList_arg1_2_5);;
let rec inList__d4 _lh_inList_arg1_4 _lh_inList_arg2_0 =
  (_lh_inList_arg2_0 _lh_inList_arg1_4);;
let rec inList__d5 _lh_inList_arg1_1_6 _lh_inList_arg2_4 =
  (_lh_inList_arg2_4 _lh_inList_arg1_1_6);;
let rec inList__d6 _lh_inList_arg1_5_1 _lh_inList_arg2_1_1 =
  (_lh_inList_arg2_1_1 _lh_inList_arg1_5_1);;
let rec inList__d7 _lh_inList_arg1_1_7 _lh_inList_arg2_5 =
  (_lh_inList_arg2_5 _lh_inList_arg1_1_7);;
let rec inList__d8 _lh_inList_arg1_5_2 _lh_inList_arg2_1_2 =
  (match _lh_inList_arg2_1_2 with
    | `LH_C(_lh_inList_LH_C_0_3_4, _lh_inList_LH_C_1_3_4) -> 
      (if (_lh_inList_arg1_5_2 = _lh_inList_LH_C_0_3_4) then
        true
      else
        ((inList__d8 _lh_inList_arg1_5_2) _lh_inList_LH_C_1_3_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d9 _lh_inList_arg1_1_5 _lh_inList_arg2_3 =
  (match _lh_inList_arg2_3 with
    | `LH_C(_lh_inList_LH_C_0_9, _lh_inList_LH_C_1_9) -> 
      (if (_lh_inList_arg1_1_5 = _lh_inList_LH_C_0_9) then
        true
      else
        ((inList__d9 _lh_inList_arg1_1_5) _lh_inList_LH_C_1_9))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec isSpace__d0 _lh_isSpace_arg1_3 =
  (_lh_isSpace_arg1_3 = ' ');;
let rec isSpace__d1 _lh_isSpace_arg1_2 =
  (_lh_isSpace_arg1_2 = ' ');;
let rec isSpace__d2 _lh_isSpace_arg1_4 =
  (_lh_isSpace_arg1_4 = ' ');;
let rec isSpace__d3 _lh_isSpace_arg1_5 =
  (_lh_isSpace_arg1_5 = ' ');;
let rec isSpace__d4 _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec isSpace__d5 _lh_isSpace_arg1_1 =
  (_lh_isSpace_arg1_1 = ' ');;
let rec length__d0 ls_3_8 =
  (ls_3_8 99);;
let rec length__d1 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_1_3_9, t_1_7_7) -> 
      (1 + (length__d1 t_1_7_7))
    | `LH_N -> 
      0);;
let rec length__d2 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_3_1, t_3_1) -> 
      (1 + (length__d2 t_3_1))
    | `LH_N -> 
      0);;
let rec length__d3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_1_3_5, t_1_7_2) -> 
      (1 + (length__d3 t_1_7_2))
    | `LH_N -> 
      0);;
let rec map__d0 f_2 ls_7 =
  (ls_7 f_2);;
let rec mappend__d0 xs_1_1 ys_2_0 =
  (xs_1_1 ys_2_0);;
let rec mappend__d1_d0 xs_3_3 ys_1_2_1 =
  (xs_3_3 ys_1_2_1);;
let rec mappend__d1_d2 xs_4_1 ys_1_3_7 =
  (xs_4_1 ys_1_3_7);;
let rec mappend__d1_d3 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend__d1_d5 xs_3_0 ys_7_5 =
  (xs_3_0 ys_7_5);;
let rec mappend__d1_d6 xs_1_9 ys_3_5 =
  (xs_1_9 ys_3_5);;
let rec mappend__d1_d8 xs_3_6 ys_1_3_1 =
  (xs_3_6 ys_1_3_1);;
let rec mappend__d2 xs_4_0 ys_1_3_6 =
  (xs_4_0 ys_1_3_6);;
let rec mappend__d2_d0 xs_1_5 ys_2_7 =
  (xs_1_5 ys_2_7);;
let rec mappend__d2_d2 xs_6 ys_9 =
  (xs_6 ys_9);;
let rec mappend__d2_d4 xs_1_3 ys_2_2 =
  (xs_1_3 ys_2_2);;
let rec mappend__d2_d6 xs_3_4 ys_1_2_4 =
  (xs_3_4 ys_1_2_4);;
let rec mappend__d2_d8 xs_4_3 ys_1_4_0 =
  (xs_4_3 ys_1_4_0);;
let rec mappend__d3_d0 xs_3_8 ys_1_3_4 =
  (xs_3_8 ys_1_3_4);;
let rec mappend__d3_d1 xs_3_2 ys_1_2_0 =
  (xs_3_2 ys_1_2_0);;
let rec mappend__d3_d3 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d3_d5 xs_3_9 ys_1_3_5 =
  (xs_3_9 ys_1_3_5);;
let rec mappend__d3_d7 xs_1_2 ys_2_1 =
  (xs_1_2 ys_2_1);;
let rec mappend__d3_d9 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend__d3_d9 t_2) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend__d4 xs_4 ys_6 =
  (xs_4 ys_6);;
let rec mappend__d4_d0 xs_2_9 ys_5_8 =
  (match xs_2_9 with
    | `LH_C(h_6_2, t_6_5) -> 
      (`LH_C(h_6_2, ((mappend__d4_d0 t_6_5) ys_5_8)))
    | `LH_N -> 
      ys_5_8);;
let rec mappend__d4_d1 xs_2_3 ys_4_0 =
  (xs_2_3 ys_4_0);;
let rec mappend__d4_d3 xs_3 ys_5 =
  (match xs_3 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend__d4_d3 t_5) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend__d4_d4 xs_1_0 ys_1_9 =
  (match xs_1_0 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend__d4_d4 t_1_6) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d4_d5 xs_4_5 ys_1_4_7 =
  (match xs_4_5 with
    | `LH_C(h_1_4_9, t_1_9_1) -> 
      (`LH_C(h_1_4_9, ((mappend__d4_d5 t_1_9_1) ys_1_4_7)))
    | `LH_N -> 
      ys_1_4_7);;
let rec mappend__d6 xs_4_7 ys_1_5_0 =
  (xs_4_7 ys_1_5_0);;
let rec mappend__d8 xs_4_9 ys_1_5_2 =
  (xs_4_9 ys_1_5_2);;
let rec matchList__d0 _lh_matchList_arg1_4 _lh_matchList_arg2_0 =
  (_lh_matchList_arg2_0 _lh_matchList_arg1_4);;
let rec mergeKey__d0 _lh_mergeKey_arg1_1 _lh_mergeKey_arg2_1 =
  (match _lh_mergeKey_arg1_1 with
    | `LH_N -> 
      _lh_mergeKey_arg2_1
    | _ -> 
      (match _lh_mergeKey_arg2_1 with
        | `LH_N -> 
          _lh_mergeKey_arg1_1
        | _ -> 
          (match _lh_mergeKey_arg1_1 with
            | `LH_C(_lh_mergeKey_LH_C_0_2, _lh_mergeKey_LH_C_1_2) -> 
              (match _lh_mergeKey_LH_C_0_2 with
                | `LH_P2(_lh_mergeKey_LH_P2_0_2, _lh_mergeKey_LH_P2_1_2) -> 
                  (match _lh_mergeKey_arg2_1 with
                    | `LH_C(_lh_mergeKey_LH_C_0_3, _lh_mergeKey_LH_C_1_3) -> 
                      (match _lh_mergeKey_LH_C_0_3 with
                        | `LH_P2(_lh_mergeKey_LH_P2_0_3, _lh_mergeKey_LH_P2_1_3) -> 
                          (if (_lh_mergeKey_LH_P2_0_2 <= _lh_mergeKey_LH_P2_0_3) then
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_2, _lh_mergeKey_LH_P2_1_2)), ((mergeKey__d0 _lh_mergeKey_LH_C_1_2) (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_3, _lh_mergeKey_LH_P2_1_3)), _lh_mergeKey_LH_C_1_3)))))
                          else
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_3, _lh_mergeKey_LH_P2_1_3)), ((mergeKey__d0 (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_2, _lh_mergeKey_LH_P2_1_2)), _lh_mergeKey_LH_C_1_2))) _lh_mergeKey_LH_C_1_3))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec mergeKey__d1 _lh_mergeKey_arg1_0 _lh_mergeKey_arg2_0 =
  (match _lh_mergeKey_arg1_0 with
    | `LH_N -> 
      _lh_mergeKey_arg2_0
    | _ -> 
      (match _lh_mergeKey_arg2_0 with
        | `LH_N -> 
          _lh_mergeKey_arg1_0
        | _ -> 
          (match _lh_mergeKey_arg1_0 with
            | `LH_C(_lh_mergeKey_LH_C_0_0, _lh_mergeKey_LH_C_1_0) -> 
              (match _lh_mergeKey_LH_C_0_0 with
                | `LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0) -> 
                  (match _lh_mergeKey_arg2_0 with
                    | `LH_C(_lh_mergeKey_LH_C_0_1, _lh_mergeKey_LH_C_1_1) -> 
                      (match _lh_mergeKey_LH_C_0_1 with
                        | `LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1) -> 
                          (if (_lh_mergeKey_LH_P2_0_0 <= _lh_mergeKey_LH_P2_0_1) then
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0)), ((mergeKey__d1 _lh_mergeKey_LH_C_1_0) (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1)), _lh_mergeKey_LH_C_1_1)))))
                          else
                            (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_1, _lh_mergeKey_LH_P2_1_1)), ((mergeKey__d1 (`LH_C((`LH_P2(_lh_mergeKey_LH_P2_0_0, _lh_mergeKey_LH_P2_1_0)), _lh_mergeKey_LH_C_1_0))) _lh_mergeKey_LH_C_1_1))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec newTable__d0 =
  (`Empty);;
let rec newTable__d1 =
  (`Empty);;
let rec newTable__d2 =
  (`Empty);;
let rec newTable__d3 =
  (`Empty);;
let rec null__d0 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec or__d0 _lh_or_arg1_0 =
  (_lh_or_arg1_0 99);;
let rec showPhrase__d0 _lh_showPhrase_arg1_0 =
  (_lh_showPhrase_arg1_0 99);;
let rec showPhrase__d2 _lh_showPhrase_arg1_2 =
  (_lh_showPhrase_arg1_2 99);;
let rec strEq__d0 _lh_strEq_arg1_6 _lh_strEq_arg2_6 =
  (match _lh_strEq_arg1_6 with
    | `LH_C(_lh_strEq_LH_C_0_1_8, _lh_strEq_LH_C_1_1_8) -> 
      (let rec _lh_matchIdent_1_9 = _lh_strEq_arg2_6 in
        (match _lh_matchIdent_1_9 with
          | `LH_C(_lh_strEq_LH_C_0_1_9, _lh_strEq_LH_C_1_1_9) -> 
            (if (_lh_strEq_LH_C_0_1_8 = _lh_strEq_LH_C_0_1_9) then
              ((strEq__d0 _lh_strEq_LH_C_1_1_8) _lh_strEq_LH_C_1_1_9)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_0 = _lh_strEq_arg2_6 in
        (match _lh_matchIdent_2_0 with
          | `LH_C(_lh_strEq_LH_C_0_2_0, _lh_strEq_LH_C_1_2_0) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1 _lh_strEq_arg1_1 _lh_strEq_arg2_1 =
  (match _lh_strEq_arg1_1 with
    | `LH_C(_lh_strEq_LH_C_0_3, _lh_strEq_LH_C_1_3) -> 
      (let rec _lh_matchIdent_5 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_5 with
          | `LH_C(_lh_strEq_LH_C_0_4, _lh_strEq_LH_C_1_4) -> 
            (if (_lh_strEq_LH_C_0_3 = _lh_strEq_LH_C_0_4) then
              ((strEq__d1 _lh_strEq_LH_C_1_3) _lh_strEq_LH_C_1_4)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_6 = _lh_strEq_arg2_1 in
        (match _lh_matchIdent_6 with
          | `LH_C(_lh_strEq_LH_C_0_5, _lh_strEq_LH_C_1_5) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d0 _lh_strEq_arg1_1_2 _lh_strEq_arg2_1_2 =
  (match _lh_strEq_arg1_1_2 with
    | `LH_C(_lh_strEq_LH_C_0_3_6, _lh_strEq_LH_C_1_3_6) -> 
      (let rec _lh_matchIdent_1_4_1 = _lh_strEq_arg2_1_2 in
        (match _lh_matchIdent_1_4_1 with
          | `LH_C(_lh_strEq_LH_C_0_3_7, _lh_strEq_LH_C_1_3_7) -> 
            (if (_lh_strEq_LH_C_0_3_6 = _lh_strEq_LH_C_0_3_7) then
              ((strEq__d1_d0 _lh_strEq_LH_C_1_3_6) _lh_strEq_LH_C_1_3_7)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_4_2 = _lh_strEq_arg2_1_2 in
        (match _lh_matchIdent_1_4_2 with
          | `LH_C(_lh_strEq_LH_C_0_3_8, _lh_strEq_LH_C_1_3_8) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d1 _lh_strEq_arg1_8 _lh_strEq_arg2_8 =
  (match _lh_strEq_arg1_8 with
    | `LH_C(_lh_strEq_LH_C_0_2_4, _lh_strEq_LH_C_1_2_4) -> 
      (let rec _lh_matchIdent_2_9 = _lh_strEq_arg2_8 in
        (match _lh_matchIdent_2_9 with
          | `LH_C(_lh_strEq_LH_C_0_2_5, _lh_strEq_LH_C_1_2_5) -> 
            (if (_lh_strEq_LH_C_0_2_4 = _lh_strEq_LH_C_0_2_5) then
              ((strEq__d1_d1 _lh_strEq_LH_C_1_2_4) _lh_strEq_LH_C_1_2_5)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_3_0 = _lh_strEq_arg2_8 in
        (match _lh_matchIdent_3_0 with
          | `LH_C(_lh_strEq_LH_C_0_2_6, _lh_strEq_LH_C_1_2_6) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d2 _lh_strEq_arg1_0 _lh_strEq_arg2_0 =
  (match _lh_strEq_arg1_0 with
    | `LH_C(_lh_strEq_LH_C_0_0, _lh_strEq_LH_C_1_0) -> 
      (let rec _lh_matchIdent_2 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_2 with
          | `LH_C(_lh_strEq_LH_C_0_1, _lh_strEq_LH_C_1_1) -> 
            (if (_lh_strEq_LH_C_0_0 = _lh_strEq_LH_C_0_1) then
              ((strEq__d1_d2 _lh_strEq_LH_C_1_0) _lh_strEq_LH_C_1_1)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_3 = _lh_strEq_arg2_0 in
        (match _lh_matchIdent_3 with
          | `LH_C(_lh_strEq_LH_C_0_2, _lh_strEq_LH_C_1_2) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d3 _lh_strEq_arg1_9 _lh_strEq_arg2_9 =
  (match _lh_strEq_arg1_9 with
    | `LH_C(_lh_strEq_LH_C_0_2_7, _lh_strEq_LH_C_1_2_7) -> 
      (let rec _lh_matchIdent_3_5 = _lh_strEq_arg2_9 in
        (match _lh_matchIdent_3_5 with
          | `LH_C(_lh_strEq_LH_C_0_2_8, _lh_strEq_LH_C_1_2_8) -> 
            (if (_lh_strEq_LH_C_0_2_7 = _lh_strEq_LH_C_0_2_8) then
              ((strEq__d1_d3 _lh_strEq_LH_C_1_2_7) _lh_strEq_LH_C_1_2_8)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_3_6 = _lh_strEq_arg2_9 in
        (match _lh_matchIdent_3_6 with
          | `LH_C(_lh_strEq_LH_C_0_2_9, _lh_strEq_LH_C_1_2_9) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d4 _lh_strEq_arg1_1_4 _lh_strEq_arg2_1_4 =
  (match _lh_strEq_arg1_1_4 with
    | `LH_C(_lh_strEq_LH_C_0_4_2, _lh_strEq_LH_C_1_4_2) -> 
      (let rec _lh_matchIdent_1_5_0 = _lh_strEq_arg2_1_4 in
        (match _lh_matchIdent_1_5_0 with
          | `LH_C(_lh_strEq_LH_C_0_4_3, _lh_strEq_LH_C_1_4_3) -> 
            (if (_lh_strEq_LH_C_0_4_2 = _lh_strEq_LH_C_0_4_3) then
              ((strEq__d1_d4 _lh_strEq_LH_C_1_4_2) _lh_strEq_LH_C_1_4_3)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_5_1 = _lh_strEq_arg2_1_4 in
        (match _lh_matchIdent_1_5_1 with
          | `LH_C(_lh_strEq_LH_C_0_4_4, _lh_strEq_LH_C_1_4_4) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d1_d5 _lh_strEq_arg1_5 _lh_strEq_arg2_5 =
  (match _lh_strEq_arg1_5 with
    | `LH_C(_lh_strEq_LH_C_0_1_5, _lh_strEq_LH_C_1_1_5) -> 
      (let rec _lh_matchIdent_1_7 = _lh_strEq_arg2_5 in
        (match _lh_matchIdent_1_7 with
          | `LH_C(_lh_strEq_LH_C_0_1_6, _lh_strEq_LH_C_1_1_6) -> 
            (if (_lh_strEq_LH_C_0_1_5 = _lh_strEq_LH_C_0_1_6) then
              ((strEq__d1_d5 _lh_strEq_LH_C_1_1_5) _lh_strEq_LH_C_1_1_6)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_8 = _lh_strEq_arg2_5 in
        (match _lh_matchIdent_1_8 with
          | `LH_C(_lh_strEq_LH_C_0_1_7, _lh_strEq_LH_C_1_1_7) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d2 _lh_strEq_arg1_1_3 _lh_strEq_arg2_1_3 =
  (match _lh_strEq_arg1_1_3 with
    | `LH_C(_lh_strEq_LH_C_0_3_9, _lh_strEq_LH_C_1_3_9) -> 
      (let rec _lh_matchIdent_1_4_5 = _lh_strEq_arg2_1_3 in
        (match _lh_matchIdent_1_4_5 with
          | `LH_C(_lh_strEq_LH_C_0_4_0, _lh_strEq_LH_C_1_4_0) -> 
            (if (_lh_strEq_LH_C_0_3_9 = _lh_strEq_LH_C_0_4_0) then
              ((strEq__d2 _lh_strEq_LH_C_1_3_9) _lh_strEq_LH_C_1_4_0)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_4_6 = _lh_strEq_arg2_1_3 in
        (match _lh_matchIdent_1_4_6 with
          | `LH_C(_lh_strEq_LH_C_0_4_1, _lh_strEq_LH_C_1_4_1) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d3 _lh_strEq_arg1_4 _lh_strEq_arg2_4 =
  (match _lh_strEq_arg1_4 with
    | `LH_C(_lh_strEq_LH_C_0_1_2, _lh_strEq_LH_C_1_1_2) -> 
      (let rec _lh_matchIdent_1_5 = _lh_strEq_arg2_4 in
        (match _lh_matchIdent_1_5 with
          | `LH_C(_lh_strEq_LH_C_0_1_3, _lh_strEq_LH_C_1_1_3) -> 
            (if (_lh_strEq_LH_C_0_1_2 = _lh_strEq_LH_C_0_1_3) then
              ((strEq__d3 _lh_strEq_LH_C_1_1_2) _lh_strEq_LH_C_1_1_3)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_6 = _lh_strEq_arg2_4 in
        (match _lh_matchIdent_1_6 with
          | `LH_C(_lh_strEq_LH_C_0_1_4, _lh_strEq_LH_C_1_1_4) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d4 _lh_strEq_arg1_1_5 _lh_strEq_arg2_1_5 =
  (match _lh_strEq_arg1_1_5 with
    | `LH_C(_lh_strEq_LH_C_0_4_5, _lh_strEq_LH_C_1_4_5) -> 
      (let rec _lh_matchIdent_1_5_3 = _lh_strEq_arg2_1_5 in
        (match _lh_matchIdent_1_5_3 with
          | `LH_C(_lh_strEq_LH_C_0_4_6, _lh_strEq_LH_C_1_4_6) -> 
            (if (_lh_strEq_LH_C_0_4_5 = _lh_strEq_LH_C_0_4_6) then
              ((strEq__d4 _lh_strEq_LH_C_1_4_5) _lh_strEq_LH_C_1_4_6)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_5_4 = _lh_strEq_arg2_1_5 in
        (match _lh_matchIdent_1_5_4 with
          | `LH_C(_lh_strEq_LH_C_0_4_7, _lh_strEq_LH_C_1_4_7) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d5 _lh_strEq_arg1_1_1 _lh_strEq_arg2_1_1 =
  (match _lh_strEq_arg1_1_1 with
    | `LH_C(_lh_strEq_LH_C_0_3_3, _lh_strEq_LH_C_1_3_3) -> 
      (let rec _lh_matchIdent_1_3_9 = _lh_strEq_arg2_1_1 in
        (match _lh_matchIdent_1_3_9 with
          | `LH_C(_lh_strEq_LH_C_0_3_4, _lh_strEq_LH_C_1_3_4) -> 
            (if (_lh_strEq_LH_C_0_3_3 = _lh_strEq_LH_C_0_3_4) then
              ((strEq__d5 _lh_strEq_LH_C_1_3_3) _lh_strEq_LH_C_1_3_4)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_4_0 = _lh_strEq_arg2_1_1 in
        (match _lh_matchIdent_1_4_0 with
          | `LH_C(_lh_strEq_LH_C_0_3_5, _lh_strEq_LH_C_1_3_5) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d6 _lh_strEq_arg1_7 _lh_strEq_arg2_7 =
  (match _lh_strEq_arg1_7 with
    | `LH_C(_lh_strEq_LH_C_0_2_1, _lh_strEq_LH_C_1_2_1) -> 
      (let rec _lh_matchIdent_2_3 = _lh_strEq_arg2_7 in
        (match _lh_matchIdent_2_3 with
          | `LH_C(_lh_strEq_LH_C_0_2_2, _lh_strEq_LH_C_1_2_2) -> 
            (if (_lh_strEq_LH_C_0_2_1 = _lh_strEq_LH_C_0_2_2) then
              ((strEq__d6 _lh_strEq_LH_C_1_2_1) _lh_strEq_LH_C_1_2_2)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_2_4 = _lh_strEq_arg2_7 in
        (match _lh_matchIdent_2_4 with
          | `LH_C(_lh_strEq_LH_C_0_2_3, _lh_strEq_LH_C_1_2_3) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d7 _lh_strEq_arg1_3 _lh_strEq_arg2_3 =
  (match _lh_strEq_arg1_3 with
    | `LH_C(_lh_strEq_LH_C_0_9, _lh_strEq_LH_C_1_9) -> 
      (let rec _lh_matchIdent_1_2 = _lh_strEq_arg2_3 in
        (match _lh_matchIdent_1_2 with
          | `LH_C(_lh_strEq_LH_C_0_1_0, _lh_strEq_LH_C_1_1_0) -> 
            (if (_lh_strEq_LH_C_0_9 = _lh_strEq_LH_C_0_1_0) then
              ((strEq__d7 _lh_strEq_LH_C_1_9) _lh_strEq_LH_C_1_1_0)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_3 = _lh_strEq_arg2_3 in
        (match _lh_matchIdent_1_3 with
          | `LH_C(_lh_strEq_LH_C_0_1_1, _lh_strEq_LH_C_1_1_1) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d8 _lh_strEq_arg1_2 _lh_strEq_arg2_2 =
  (match _lh_strEq_arg1_2 with
    | `LH_C(_lh_strEq_LH_C_0_6, _lh_strEq_LH_C_1_6) -> 
      (let rec _lh_matchIdent_1_0 = _lh_strEq_arg2_2 in
        (match _lh_matchIdent_1_0 with
          | `LH_C(_lh_strEq_LH_C_0_7, _lh_strEq_LH_C_1_7) -> 
            (if (_lh_strEq_LH_C_0_6 = _lh_strEq_LH_C_0_7) then
              ((strEq__d8 _lh_strEq_LH_C_1_6) _lh_strEq_LH_C_1_7)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_1_1 = _lh_strEq_arg2_2 in
        (match _lh_matchIdent_1_1 with
          | `LH_C(_lh_strEq_LH_C_0_8, _lh_strEq_LH_C_1_8) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec strEq__d9 _lh_strEq_arg1_1_0 _lh_strEq_arg2_1_0 =
  (match _lh_strEq_arg1_1_0 with
    | `LH_C(_lh_strEq_LH_C_0_3_0, _lh_strEq_LH_C_1_3_0) -> 
      (let rec _lh_matchIdent_3_7 = _lh_strEq_arg2_1_0 in
        (match _lh_matchIdent_3_7 with
          | `LH_C(_lh_strEq_LH_C_0_3_1, _lh_strEq_LH_C_1_3_1) -> 
            (if (_lh_strEq_LH_C_0_3_0 = _lh_strEq_LH_C_0_3_1) then
              ((strEq__d9 _lh_strEq_LH_C_1_3_0) _lh_strEq_LH_C_1_3_1)
            else
              false)
          | `LH_N -> 
            false
          | _ -> 
            (failwith "error")))
    | `LH_N -> 
      (let rec _lh_matchIdent_3_8 = _lh_strEq_arg2_1_0 in
        (match _lh_matchIdent_3_8 with
          | `LH_C(_lh_strEq_LH_C_0_3_2, _lh_strEq_LH_C_1_3_2) -> 
            false
          | `LH_N -> 
            true
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec succeeds__d0 _lh_succeeds_arg1_2 =
  (match _lh_succeeds_arg1_2 with
    | `Answer(_lh_succeeds_Answer_0_2) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d1 _lh_succeeds_arg1_6 =
  (match _lh_succeeds_arg1_6 with
    | `Answer(_lh_succeeds_Answer_0_6) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d2 _lh_succeeds_arg1_0 =
  (match _lh_succeeds_arg1_0 with
    | `Answer(_lh_succeeds_Answer_0_0) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d3 _lh_succeeds_arg1_4 =
  (match _lh_succeeds_arg1_4 with
    | `Answer(_lh_succeeds_Answer_0_4) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d4 _lh_succeeds_arg1_1 =
  (match _lh_succeeds_arg1_1 with
    | `Answer(_lh_succeeds_Answer_0_1) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d5 _lh_succeeds_arg1_7 =
  (match _lh_succeeds_arg1_7 with
    | `Answer(_lh_succeeds_Answer_0_7) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d6 _lh_succeeds_arg1_3 =
  (match _lh_succeeds_arg1_3 with
    | `Answer(_lh_succeeds_Answer_0_3) -> 
      true
    | _ -> 
      false);;
let rec succeeds__d7 _lh_succeeds_arg1_5 =
  (match _lh_succeeds_arg1_5 with
    | `Answer(_lh_succeeds_Answer_0_5) -> 
      true
    | _ -> 
      false);;
let rec success__d0 _lh_success_arg1_3 =
  (`Answer(_lh_success_arg1_3));;
let rec success__d1 _lh_success_arg1_0 =
  (`Answer(_lh_success_arg1_0));;
let rec success__d1_d0 _lh_success_arg1_1 =
  (`Answer(_lh_success_arg1_1));;
let rec success__d2 _lh_success_arg1_6 =
  (`Answer(_lh_success_arg1_6));;
let rec success__d3 _lh_success_arg1_8 =
  (`Answer(_lh_success_arg1_8));;
let rec success__d4 _lh_success_arg1_9 =
  (`Answer(_lh_success_arg1_9));;
let rec success__d5 _lh_success_arg1_4 =
  (`Answer(_lh_success_arg1_4));;
let rec success__d6 _lh_success_arg1_2 =
  (`Answer(_lh_success_arg1_2));;
let rec success__d7 _lh_success_arg1_1_0 =
  (`Answer(_lh_success_arg1_1_0));;
let rec success__d8 _lh_success_arg1_5 =
  (`Answer(_lh_success_arg1_5));;
let rec success__d9 _lh_success_arg1_7 =
  (`Answer(_lh_success_arg1_7));;
let rec tail__d0 ls_2_7 =
  (ls_2_7 99);;
let rec tail__d1 ls_4_2 =
  (ls_4_2 99);;
let rec tail__d1_d0 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_1_3_4, t_1_7_1) -> 
      t_1_7_1
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_1_3 =
  (ls_1_3 99);;
let rec tail__d3 ls_2_9 =
  (ls_2_9 99);;
let rec tail__d4 ls_3_6 =
  (ls_3_6 99);;
let rec tail__d5 ls_6 =
  (match ls_6 with
    | `LH_C(h_6, t_6) -> 
      t_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d6 ls_4 =
  (match ls_4 with
    | `LH_C(h_3, t_3) -> 
      t_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d7 ls_0 =
  (ls_0 99);;
let rec tail__d8 ls_2_3 =
  (ls_2_3 99);;
let rec tail__d9 ls_1_9 =
  (ls_1_9 99);;
let rec takeWhile__d0 _lh_takeWhile_arg1_4 _lh_takeWhile_arg2_4 =
  (match _lh_takeWhile_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_4, _lh_takeWhile_LH_C_1_4) -> 
      (if (_lh_takeWhile_arg1_4 _lh_takeWhile_LH_C_0_4) then
        (`LH_C(_lh_takeWhile_LH_C_0_4, ((takeWhile__d0 _lh_takeWhile_arg1_4) _lh_takeWhile_LH_C_1_4)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d1 _lh_takeWhile_arg1_7 _lh_takeWhile_arg2_7 =
  (match _lh_takeWhile_arg2_7 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_7, _lh_takeWhile_LH_C_1_7) -> 
      (if (_lh_takeWhile_arg1_7 _lh_takeWhile_LH_C_0_7) then
        (`LH_C(_lh_takeWhile_LH_C_0_7, ((takeWhile__d1 _lh_takeWhile_arg1_7) _lh_takeWhile_LH_C_1_7)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d2 _lh_takeWhile_arg1_3 _lh_takeWhile_arg2_3 =
  (match _lh_takeWhile_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_3, _lh_takeWhile_LH_C_1_3) -> 
      (if (_lh_takeWhile_arg1_3 _lh_takeWhile_LH_C_0_3) then
        (`LH_C(_lh_takeWhile_LH_C_0_3, ((takeWhile__d2 _lh_takeWhile_arg1_3) _lh_takeWhile_LH_C_1_3)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d3 _lh_takeWhile_arg1_6 _lh_takeWhile_arg2_6 =
  (match _lh_takeWhile_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_6, _lh_takeWhile_LH_C_1_6) -> 
      (if (_lh_takeWhile_arg1_6 _lh_takeWhile_LH_C_0_6) then
        (`LH_C(_lh_takeWhile_LH_C_0_6, ((takeWhile__d3 _lh_takeWhile_arg1_6) _lh_takeWhile_LH_C_1_6)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d4 _lh_takeWhile_arg1_2 _lh_takeWhile_arg2_2 =
  (match _lh_takeWhile_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_2, _lh_takeWhile_LH_C_1_2) -> 
      (if (_lh_takeWhile_arg1_2 _lh_takeWhile_LH_C_0_2) then
        (`LH_C(_lh_takeWhile_LH_C_0_2, ((takeWhile__d4 _lh_takeWhile_arg1_2) _lh_takeWhile_LH_C_1_2)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d5 _lh_takeWhile_arg1_1 _lh_takeWhile_arg2_1 =
  (match _lh_takeWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_1, _lh_takeWhile_LH_C_1_1) -> 
      (if (_lh_takeWhile_arg1_1 _lh_takeWhile_LH_C_0_1) then
        (`LH_C(_lh_takeWhile_LH_C_0_1, ((takeWhile__d5 _lh_takeWhile_arg1_1) _lh_takeWhile_LH_C_1_1)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d6 _lh_takeWhile_arg1_0 _lh_takeWhile_arg2_0 =
  (match _lh_takeWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_0, _lh_takeWhile_LH_C_1_0) -> 
      (if (_lh_takeWhile_arg1_0 _lh_takeWhile_LH_C_0_0) then
        (`LH_C(_lh_takeWhile_LH_C_0_0, ((takeWhile__d6 _lh_takeWhile_arg1_0) _lh_takeWhile_LH_C_1_0)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec takeWhile__d7 _lh_takeWhile_arg1_5 _lh_takeWhile_arg2_5 =
  (match _lh_takeWhile_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_5, _lh_takeWhile_LH_C_1_5) -> 
      (if (_lh_takeWhile_arg1_5 _lh_takeWhile_LH_C_0_5) then
        (`LH_C(_lh_takeWhile_LH_C_0_5, ((takeWhile__d7 _lh_takeWhile_arg1_5) _lh_takeWhile_LH_C_1_5)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec take__d0 n_3 ls_2_2 =
  (if (n_3 > 0) then
    (match ls_2_2 with
      | `LH_C(h_4_1, t_4_1) -> 
        (`LH_C(h_4_1, ((take__d0 (n_3 - 1)) t_4_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2 n_0 ls_1_1 =
  (if (n_0 > 0) then
    (match ls_1_1 with
      | `LH_C(h_1_9, t_1_9) -> 
        (`LH_C(h_1_9, ((take__d2 (n_0 - 1)) t_1_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec try__d0 _lh_try_arg1_1 _lh_try_arg2_0 _lh_try_arg3_1 _lh_try_arg4_1 =
  (((_lh_try_arg2_0 _lh_try_arg1_1) _lh_try_arg3_1) _lh_try_arg4_1);;
let rec update__d0 _lh_update_arg1_0 _lh_update_arg2_0 _lh_update_arg3_0 =
  (match _lh_update_arg1_0 with
    | `Empty -> 
      (`Fork((`Empty), (`LH_P2(_lh_update_arg2_0, _lh_update_arg3_0)), (`Empty)))
    | `Fork(_lh_update_Fork_0_0, _lh_update_Fork_1_0, _lh_update_Fork_2_0) -> 
      (match _lh_update_Fork_1_0 with
        | `LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0) -> 
          (if (_lh_update_arg2_0 < _lh_update_LH_P2_0_0) then
            (`Fork((((update__d0 _lh_update_Fork_0_0) _lh_update_arg2_0) _lh_update_arg3_0), (`LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0)), _lh_update_Fork_2_0))
          else
            (if (_lh_update_arg2_0 = _lh_update_LH_P2_0_0) then
              (`Fork(_lh_update_Fork_0_0, (`LH_P2(_lh_update_arg2_0, _lh_update_arg3_0)), _lh_update_Fork_2_0))
            else
              (if (_lh_update_arg2_0 > _lh_update_LH_P2_0_0) then
                (`Fork(_lh_update_Fork_0_0, (`LH_P2(_lh_update_LH_P2_0_0, _lh_update_LH_P2_1_0)), (((update__d0 _lh_update_Fork_2_0) _lh_update_arg2_0) _lh_update_arg3_0)))
              else
                ((failwith "error") (`LH_C('u', (`LH_C('p', (`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec update__d1 _lh_update_arg1_1 _lh_update_arg2_1 _lh_update_arg3_1 =
  (match _lh_update_arg1_1 with
    | `Empty -> 
      (`Fork((`Empty), (`LH_P2(_lh_update_arg2_1, _lh_update_arg3_1)), (`Empty)))
    | `Fork(_lh_update_Fork_0_1, _lh_update_Fork_1_1, _lh_update_Fork_2_1) -> 
      (match _lh_update_Fork_1_1 with
        | `LH_P2(_lh_update_LH_P2_0_1, _lh_update_LH_P2_1_1) -> 
          (if (_lh_update_arg2_1 < _lh_update_LH_P2_0_1) then
            (`Fork((((update__d1 _lh_update_Fork_0_1) _lh_update_arg2_1) _lh_update_arg3_1), (`LH_P2(_lh_update_LH_P2_0_1, _lh_update_LH_P2_1_1)), _lh_update_Fork_2_1))
          else
            (if (_lh_update_arg2_1 = _lh_update_LH_P2_0_1) then
              (`Fork(_lh_update_Fork_0_1, (`LH_P2(_lh_update_arg2_1, _lh_update_arg3_1)), _lh_update_Fork_2_1))
            else
              (if (_lh_update_arg2_1 > _lh_update_LH_P2_0_1) then
                (`Fork(_lh_update_Fork_0_1, (`LH_P2(_lh_update_LH_P2_0_1, _lh_update_LH_P2_1_1)), (((update__d1 _lh_update_Fork_2_1) _lh_update_arg2_1) _lh_update_arg3_1)))
              else
                ((failwith "error") (`LH_C('u', (`LH_C('p', (`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec zip__d0 xs_8 ys_1_6 =
  (match xs_8 with
    | `LH_C(hx_0, tx_0) -> 
      ((ys_1_6 hx_0) tx_0)
    | `LH_N -> 
      (fun f_4 i_2 -> 
        i_2));;
let rec zip__d2 xs_4_8 ys_1_5_1 _lh_popOutId_0_8 =
  (match xs_4_8 with
    | `LH_C(hx_5, tx_5) -> 
      (match ys_1_5_1 with
        | `LH_C(hy_2, ty_2) -> 
          (let rec _lh_listcomp_fun_ls_t_3_6 = ((zip__d2 tx_5) ty_2) in
            (let rec _lh_listcomp_fun_ls_h_3_5 = (let rec _lh_info_LH_P2_1_0 = hy_2 in
              (let rec _lh_info_LH_P2_0_0 = hx_5 in
                (fun _lh_listcomp_fun_ls_t_3_7 _lh_listcomp_fun_4_9 -> 
                  (match _lh_info_LH_P2_0_0 with
                    | `Question(_lh_info_Question_0_0) -> 
                      (`LH_C((`LH_P2(_lh_info_Question_0_0, _lh_info_LH_P2_1_0)), (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_3_7)))
                    | _ -> 
                      (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_3_7))))) in
              ((_lh_listcomp_fun_ls_h_3_5 _lh_listcomp_fun_ls_t_3_6) _lh_popOutId_0_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec ask__d0 _lh_ask_arg1_0 _lh_ask_arg2_0 _lh_ask_arg3_0 =
  (match _lh_ask_arg2_0 with
    | `Soln(_lh_ask_Soln_0_0, _lh_ask_Soln_1_0) -> 
      (let rec sp_0 = (showPhrase__d2 ((subst__d1 _lh_ask_Soln_0_0) _lh_ask_arg3_0)) in
        (let rec ans_0 = (answer__d1 ((find__d1 _lh_ask_arg1_0) sp_0)) in
          (`LH_C((`Question(sp_0)), (if ans_0 then
            (`LH_C((`Soln(_lh_ask_Soln_0_0, _lh_ask_Soln_1_0)), (`LH_N)))
          else
            (`LH_N))))))
    | _ -> 
      (failwith "error"))
and break__d1 _lh_break_arg1_7 _lh_break_arg2_4 =
  (match _lh_break_arg2_4 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_8_1 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_4, _lh_break_LH_C_1_4) -> 
      (if (_lh_break_arg1_7 _lh_break_LH_C_0_4) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_2 = _lh_break_LH_C_1_4 in
          (fun _lh_dummy_8_2 -> 
            (lines__d0 _lh_lines_LH_C_1_2)))))
      else
        (let rec _lh_matchIdent_1_3_8 = ((break__d1 _lh_break_arg1_7) _lh_break_LH_C_1_4) in
          (match _lh_matchIdent_1_3_8 with
            | `LH_P2(_lh_break_LH_P2_0_4, _lh_break_LH_P2_1_4) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_4, _lh_break_LH_P2_0_4)), _lh_break_LH_P2_1_4))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and break__d3 _lh_break_arg1_5 _lh_break_arg2_2 =
  (match _lh_break_arg2_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_8 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_2, _lh_break_LH_C_1_2) -> 
      (if (_lh_break_arg1_5 _lh_break_LH_C_0_2) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_1 = _lh_break_LH_C_1_2 in
          (fun _lh_dummy_9 -> 
            (lines__d2 _lh_lines_LH_C_1_1)))))
      else
        (let rec _lh_matchIdent_1_4 = ((break__d3 _lh_break_arg1_5) _lh_break_LH_C_1_2) in
          (match _lh_matchIdent_1_4 with
            | `LH_P2(_lh_break_LH_P2_0_2, _lh_break_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_2, _lh_break_LH_P2_0_2)), _lh_break_LH_P2_1_2))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and compear__d0 _lh_compear_arg1_0 _lh_compear_arg2_0 _lh_compear_arg3_0 =
  (match _lh_compear_arg2_0 with
    | `Term(_lh_compear_Term_0_0, _lh_compear_Term_1_0) -> 
      (match _lh_compear_arg3_0 with
        | `Term(_lh_compear_Term_0_1, _lh_compear_Term_1_1) -> 
          (if (_lh_compear_Term_0_0 = _lh_compear_Term_0_1) then
            ((matchList__d0 _lh_compear_arg1_0) ((zip__d1 _lh_compear_Term_1_0) _lh_compear_Term_1_1))
          else
            (failure__d4 (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))
        | _ -> 
          (match _lh_compear_arg3_0 with
            | `Var(_lh_compear_Var_0_0) -> 
              (((compear__d0 _lh_compear_arg1_0) (`Var(_lh_compear_Var_0_0))) _lh_compear_arg2_0)
            | _ -> 
              (failwith "error")))
    | `Var(_lh_compear_Var_0_1) -> 
      (match _lh_compear_arg3_0 with
        | `Var(_lh_compear_Var_0_2) -> 
          (if (_lh_compear_Var_0_1 <> _lh_compear_Var_0_2) then
            (success__d6 (((update__d1 _lh_compear_arg1_0) _lh_compear_Var_0_1) (`Var(_lh_compear_Var_0_2))))
          else
            (success__d7 _lh_compear_arg1_0))
        | _ -> 
          (if (not ((occurs__d0 (let rec _lh_occurs_Var_0_0 = _lh_compear_Var_0_1 in
            (fun _lh_occurs_arg2_0 -> 
              (match _lh_occurs_arg2_0 with
                | `Var(_lh_occurs_Var_0_1) -> 
                  (_lh_occurs_Var_0_0 = _lh_occurs_Var_0_1)
                | _ -> 
                  (match _lh_occurs_arg2_0 with
                    | `Var(_lh_occurs_Var_0_2) -> 
                      false
                    | _ -> 
                      (failwith "error")))))) _lh_compear_arg3_0)) then
            (success__d5 (((update__d0 _lh_compear_arg1_0) _lh_compear_Var_0_1) _lh_compear_arg3_0))
          else
            (failure__d5 (`LH_C('o', (`LH_C('c', (`LH_C('c', (`LH_C('u', (`LH_C('r', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C(' ', (`LH_C('f', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C('d', (`LH_N))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (match _lh_compear_arg3_0 with
        | `Var(_lh_compear_Var_0_3) -> 
          (((compear__d0 _lh_compear_arg1_0) (`Var(_lh_compear_Var_0_3))) _lh_compear_arg2_0)
        | _ -> 
          (failwith "error")))
and definitions__d0 _lh_definitions_arg1_0 =
  (let rec verb_1 = (fun x_1_1 -> 
    (let rec _lh_matchIdent_2_6 = x_1_1 in
      (match _lh_matchIdent_2_6 with
        | `Term(_lh_definitions_Term_0_0, _lh_definitions_Term_1_0) -> 
          (match _lh_definitions_Term_0_0 with
            | `LH_C(_lh_definitions_LH_C_0_0, _lh_definitions_LH_C_1_0) -> 
              (match _lh_definitions_LH_C_0_0 with
                | 'i' -> 
                  (match _lh_definitions_LH_C_1_0 with
                    | `LH_C(_lh_definitions_LH_C_0_1, _lh_definitions_LH_C_1_1) -> 
                      (match _lh_definitions_LH_C_0_1 with
                        | 'f' -> 
                          (match _lh_definitions_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_definitions_Term_1_0 with
                                | `LH_C(_lh_definitions_LH_C_0_2, _lh_definitions_LH_C_1_2) -> 
                                  (match _lh_definitions_LH_C_0_2 with
                                    | `Term(_lh_definitions_Term_0_1, _lh_definitions_Term_1_1) -> 
                                      (match _lh_definitions_LH_C_1_2 with
                                        | `LH_C(_lh_definitions_LH_C_0_3, _lh_definitions_LH_C_1_3) -> 
                                          (match _lh_definitions_LH_C_1_3 with
                                            | `LH_N -> 
                                              _lh_definitions_Term_0_1
                                            | _ -> 
                                              (failwith "error"))
                                        | _ -> 
                                          (failwith "error"))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    (let rec rs_0 = (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_1_2 -> 
      (match _lh_listcomp_fun_para_1_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_1) -> 
          (`LH_C((rule__d0 (words__d0 _lh_listcomp_fun_ls_h_1_0)), (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_1)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_2_1 _lh_definitions_arg1_0)) in
      (let rec verbs_1 = (nub__d0 (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_1_3 -> 
        (match _lh_listcomp_fun_para_1_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_2) -> 
            (`LH_C((verb_1 _lh_listcomp_fun_ls_h_1_1), (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_2 rs_0))) in
        (let rec def_2 = (fun v_1 -> 
          (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_1_4 -> 
            (match _lh_listcomp_fun_para_1_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_3) -> 
                (if ((verb_1 _lh_listcomp_fun_ls_h_1_2) = v_1) then
                  (`LH_C(_lh_listcomp_fun_ls_h_1_2, (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_3)))
                else
                  (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_3))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_2_3 rs_0))) in
          ((updateList__d0 newTable__d0) (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_1_5 -> 
            ((_lh_listcomp_fun_para_1_5 _lh_listcomp_fun_2_4) def_2)) in
            (_lh_listcomp_fun_2_4 verbs_1)))))))
and display__d0 _lh_display_arg1_0 _lh_display_arg2_0 _lh_display_arg3_0 =
  (match _lh_display_arg1_0 with
    | `LH_N -> 
      (let rec t_8_6 = (let rec t_8_7 = (let rec t_8_8 = (let rec t_8_9 = (let rec t_9_0 = (let rec t_9_1 = (let rec t_9_2 = (let rec t_9_3 = (let rec t_9_4 = (let rec t_9_5 = (let rec t_9_6 = (let rec t_9_7 = (let rec t_9_8 = (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (fun _lh_dummy_2_7 -> 
        0) in
        (fun _lh_dummy_2_8 -> 
          (1 + (length__d0 t_1_0_5)))) in
        (fun _lh_dummy_2_9 -> 
          (1 + (length__d0 t_1_0_4)))) in
        (fun _lh_dummy_3_0 -> 
          (1 + (length__d0 t_1_0_3)))) in
        (fun _lh_dummy_3_1 -> 
          (1 + (length__d0 t_1_0_2)))) in
        (fun _lh_dummy_3_2 -> 
          (1 + (length__d0 t_1_0_1)))) in
        (fun _lh_dummy_3_3 -> 
          (1 + (length__d0 t_1_0_0)))) in
        (fun _lh_dummy_3_4 -> 
          (1 + (length__d0 t_9_9)))) in
        (fun _lh_dummy_3_5 -> 
          (1 + (length__d0 t_9_8)))) in
        (fun _lh_dummy_3_6 -> 
          (1 + (length__d0 t_9_7)))) in
        (fun _lh_dummy_3_7 -> 
          (1 + (length__d0 t_9_6)))) in
        (fun _lh_dummy_3_8 -> 
          (1 + (length__d0 t_9_5)))) in
        (fun _lh_dummy_3_9 -> 
          (1 + (length__d0 t_9_4)))) in
        (fun _lh_dummy_4_0 -> 
          (1 + (length__d0 t_9_3)))) in
        (fun _lh_dummy_4_1 -> 
          (1 + (length__d0 t_9_2)))) in
        (fun _lh_dummy_4_2 -> 
          (1 + (length__d0 t_9_1)))) in
        (fun _lh_dummy_4_3 -> 
          (1 + (length__d0 t_9_0)))) in
        (fun _lh_dummy_4_4 -> 
          (1 + (length__d0 t_8_9)))) in
        (fun _lh_dummy_4_5 -> 
          (1 + (length__d0 t_8_8)))) in
        (fun _lh_dummy_4_6 -> 
          (1 + (length__d0 t_8_7)))) in
        (fun _lh_dummy_4_7 -> 
          (1 + (length__d0 t_8_6))))
    | `LH_C(_lh_display_LH_C_0_0, _lh_display_LH_C_1_0) -> 
      (match _lh_display_LH_C_0_0 with
        | `Question(_lh_display_Question_0_0) -> 
          ((mappend__d1_d0 ((mappend__d1_d1 ((mappend__d1_d2 (let rec t_1_0_6 = (let rec t_1_0_7 = (let rec t_1_0_8 = (let rec t_1_0_9 = (let rec t_1_1_0 = (let rec t_1_1_1 = (let rec t_1_1_2 = (let rec t_1_1_3 = (let rec t_1_1_4 = (let rec t_1_1_5 = (let rec t_1_1_6 = (let rec t_1_1_7 = (let rec t_1_1_8 = (let rec t_1_1_9 = (let rec t_1_2_0 = (let rec t_1_2_1 = (fun ys_8_0 -> 
            ys_8_0) in
            (let rec h_8_0 = ' ' in
              (fun ys_8_1 -> 
                (`LH_C(h_8_0, ((mappend__d1_d2 t_1_2_1) ys_8_1)))))) in
            (let rec h_8_1 = 't' in
              (fun ys_8_2 -> 
                (`LH_C(h_8_1, ((mappend__d1_d2 t_1_2_0) ys_8_2)))))) in
            (let rec h_8_2 = 'a' in
              (fun ys_8_3 -> 
                (`LH_C(h_8_2, ((mappend__d1_d2 t_1_1_9) ys_8_3)))))) in
            (let rec h_8_3 = 'h' in
              (fun ys_8_4 -> 
                (`LH_C(h_8_3, ((mappend__d1_d2 t_1_1_8) ys_8_4)))))) in
            (let rec h_8_4 = 't' in
              (fun ys_8_5 -> 
                (`LH_C(h_8_4, ((mappend__d1_d2 t_1_1_7) ys_8_5)))))) in
            (let rec h_8_5 = ' ' in
              (fun ys_8_6 -> 
                (`LH_C(h_8_5, ((mappend__d1_d2 t_1_1_6) ys_8_6)))))) in
            (let rec h_8_6 = 'e' in
              (fun ys_8_7 -> 
                (`LH_C(h_8_6, ((mappend__d1_d2 t_1_1_5) ys_8_7)))))) in
            (let rec h_8_7 = 'u' in
              (fun ys_8_8 -> 
                (`LH_C(h_8_7, ((mappend__d1_d2 t_1_1_4) ys_8_8)))))) in
            (let rec h_8_8 = 'r' in
              (fun ys_8_9 -> 
                (`LH_C(h_8_8, ((mappend__d1_d2 t_1_1_3) ys_8_9)))))) in
            (let rec h_8_9 = 't' in
              (fun ys_9_0 -> 
                (`LH_C(h_8_9, ((mappend__d1_d2 t_1_1_2) ys_9_0)))))) in
            (let rec h_9_0 = ' ' in
              (fun ys_9_1 -> 
                (`LH_C(h_9_0, ((mappend__d1_d2 t_1_1_1) ys_9_1)))))) in
            (let rec h_9_1 = 't' in
              (fun ys_9_2 -> 
                (`LH_C(h_9_1, ((mappend__d1_d2 t_1_1_0) ys_9_2)))))) in
            (let rec h_9_2 = 'i' in
              (fun ys_9_3 -> 
                (`LH_C(h_9_2, ((mappend__d1_d2 t_1_0_9) ys_9_3)))))) in
            (let rec h_9_3 = ' ' in
              (fun ys_9_4 -> 
                (`LH_C(h_9_3, ((mappend__d1_d2 t_1_0_8) ys_9_4)))))) in
            (let rec h_9_4 = 's' in
              (fun ys_9_5 -> 
                (`LH_C(h_9_4, ((mappend__d1_d2 t_1_0_7) ys_9_5)))))) in
            (let rec h_9_5 = 'I' in
              (fun ys_9_6 -> 
                (`LH_C(h_9_5, ((mappend__d1_d2 t_1_0_6) ys_9_6))))))) _lh_display_Question_0_0)) (let rec t_1_2_2 = (let rec t_1_2_3 = (fun ys_9_7 -> 
            ys_9_7) in
            (let rec h_9_6 = '|' in
              (fun ys_9_8 -> 
                (let rec t_1_2_4 = ((mappend__d1_d0 t_1_2_3) ys_9_8) in
                  (fun _lh_dummy_4_8 -> 
                    (1 + (length__d0 t_1_2_4))))))) in
            (let rec h_9_7 = '?' in
              (fun ys_9_9 -> 
                (let rec t_1_2_5 = ((mappend__d1_d0 t_1_2_2) ys_9_9) in
                  (fun _lh_dummy_4_9 -> 
                    (1 + (length__d0 t_1_2_5))))))))) (((display__d0 _lh_display_LH_C_1_0) _lh_display_arg2_0) (tail__d5 _lh_display_arg3_0)))
        | `Soln(_lh_display_Soln_0_0, _lh_display_Soln_1_0) -> 
          (let rec sol_0 = ((showVars__d0 _lh_display_Soln_0_0) _lh_display_arg2_0) in
            (let rec etc_0 = (if ((_lh_display_arg3_0 = (`LH_N)) || ((head__d1_d0 _lh_display_arg3_0) = false)) then
              (fun _lh_dummy_5_0 -> 
                0)
            else
              (((display__d0 _lh_display_LH_C_1_0) _lh_display_arg2_0) (tail__d6 _lh_display_arg3_0))) in
              ((mappend__d1_d3 ((mappend__d1_d4 ((mappend__d1_d5 (let rec t_1_2_6 = (let rec t_1_2_7 = (let rec t_1_2_8 = (let rec t_1_2_9 = (let rec t_1_3_0 = (let rec t_1_3_1 = (let rec t_1_3_2 = (let rec t_1_3_3 = (let rec t_1_3_4 = (let rec t_1_3_5 = (fun ys_1_0_0 -> 
                ys_1_0_0) in
                (let rec h_9_8 = ' ' in
                  (fun ys_1_0_1 -> 
                    (`LH_C(h_9_8, ((mappend__d1_d5 t_1_3_5) ys_1_0_1)))))) in
                (let rec h_9_9 = ':' in
                  (fun ys_1_0_2 -> 
                    (`LH_C(h_9_9, ((mappend__d1_d5 t_1_3_4) ys_1_0_2)))))) in
                (let rec h_1_0_0 = 'n' in
                  (fun ys_1_0_3 -> 
                    (`LH_C(h_1_0_0, ((mappend__d1_d5 t_1_3_3) ys_1_0_3)))))) in
                (let rec h_1_0_1 = 'o' in
                  (fun ys_1_0_4 -> 
                    (`LH_C(h_1_0_1, ((mappend__d1_d5 t_1_3_2) ys_1_0_4)))))) in
                (let rec h_1_0_2 = 'i' in
                  (fun ys_1_0_5 -> 
                    (`LH_C(h_1_0_2, ((mappend__d1_d5 t_1_3_1) ys_1_0_5)))))) in
                (let rec h_1_0_3 = 't' in
                  (fun ys_1_0_6 -> 
                    (`LH_C(h_1_0_3, ((mappend__d1_d5 t_1_3_0) ys_1_0_6)))))) in
                (let rec h_1_0_4 = 'u' in
                  (fun ys_1_0_7 -> 
                    (`LH_C(h_1_0_4, ((mappend__d1_d5 t_1_2_9) ys_1_0_7)))))) in
                (let rec h_1_0_5 = 'l' in
                  (fun ys_1_0_8 -> 
                    (`LH_C(h_1_0_5, ((mappend__d1_d5 t_1_2_8) ys_1_0_8)))))) in
                (let rec h_1_0_6 = 'o' in
                  (fun ys_1_0_9 -> 
                    (`LH_C(h_1_0_6, ((mappend__d1_d5 t_1_2_7) ys_1_0_9)))))) in
                (let rec h_1_0_7 = 'S' in
                  (fun ys_1_1_0 -> 
                    (`LH_C(h_1_0_7, ((mappend__d1_d5 t_1_2_6) ys_1_1_0))))))) sol_0)) (let rec t_1_3_6 = (let rec t_1_3_7 = (let rec t_1_3_8 = (let rec t_1_3_9 = (let rec t_1_4_0 = (let rec t_1_4_1 = (let rec t_1_4_2 = (let rec t_1_4_3 = (fun ys_1_1_1 -> 
                ys_1_1_1) in
                (let rec h_1_0_8 = '|' in
                  (fun ys_1_1_2 -> 
                    (let rec t_1_4_4 = ((mappend__d1_d3 t_1_4_3) ys_1_1_2) in
                      (fun _lh_dummy_5_1 -> 
                        (1 + (length__d0 t_1_4_4))))))) in
                (let rec h_1_0_9 = '?' in
                  (fun ys_1_1_3 -> 
                    (let rec t_1_4_5 = ((mappend__d1_d3 t_1_4_2) ys_1_1_3) in
                      (fun _lh_dummy_5_2 -> 
                        (1 + (length__d0 t_1_4_5))))))) in
                (let rec h_1_1_0 = 'e' in
                  (fun ys_1_1_4 -> 
                    (let rec t_1_4_6 = ((mappend__d1_d3 t_1_4_1) ys_1_1_4) in
                      (fun _lh_dummy_5_3 -> 
                        (1 + (length__d0 t_1_4_6))))))) in
                (let rec h_1_1_1 = 'r' in
                  (fun ys_1_1_5 -> 
                    (let rec t_1_4_7 = ((mappend__d1_d3 t_1_4_0) ys_1_1_5) in
                      (fun _lh_dummy_5_4 -> 
                        (1 + (length__d0 t_1_4_7))))))) in
                (let rec h_1_1_2 = 'o' in
                  (fun ys_1_1_6 -> 
                    (let rec t_1_4_8 = ((mappend__d1_d3 t_1_3_9) ys_1_1_6) in
                      (fun _lh_dummy_5_5 -> 
                        (1 + (length__d0 t_1_4_8))))))) in
                (let rec h_1_1_3 = 'M' in
                  (fun ys_1_1_7 -> 
                    (let rec t_1_4_9 = ((mappend__d1_d3 t_1_3_8) ys_1_1_7) in
                      (fun _lh_dummy_5_6 -> 
                        (1 + (length__d0 t_1_4_9))))))) in
                (let rec h_1_1_4 = ' ' in
                  (fun ys_1_1_8 -> 
                    (let rec t_1_5_0 = ((mappend__d1_d3 t_1_3_7) ys_1_1_8) in
                      (fun _lh_dummy_5_7 -> 
                        (1 + (length__d0 t_1_5_0))))))) in
                (let rec h_1_1_5 = '.' in
                  (fun ys_1_1_9 -> 
                    (let rec t_1_5_1 = ((mappend__d1_d3 t_1_3_6) ys_1_1_9) in
                      (fun _lh_dummy_5_8 -> 
                        (1 + (length__d0 t_1_5_1))))))))) etc_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and dropWhile__d1_d0 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (fun _lh_dummy_1_9 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile__d1_d0 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (let rec _lh_words_LH_C_1_1 = _lh_dropWhile_LH_C_1_1 in
          (let rec _lh_words_LH_C_0_1 = _lh_dropWhile_LH_C_0_1 in
            (fun _lh_dummy_2_0 -> 
              (let rec _lh_matchIdent_2_2 = ((break__d5 isSpace__d5) (`LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1))) in
                (match _lh_matchIdent_2_2 with
                  | `LH_P2(_lh_words_LH_P2_0_1, _lh_words_LH_P2_1_1) -> 
                    (`LH_C(_lh_words_LH_P2_0_1, (words__d2 _lh_words_LH_P2_1_1)))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"))
and dropWhile__d5 _lh_dropWhile_arg1_3 _lh_dropWhile_arg2_3 =
  (match _lh_dropWhile_arg2_3 with
    | `LH_N -> 
      (fun _lh_dummy_2_3 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_3, _lh_dropWhile_LH_C_1_3) -> 
      (if (_lh_dropWhile_arg1_3 _lh_dropWhile_LH_C_0_3) then
        ((dropWhile__d5 _lh_dropWhile_arg1_3) _lh_dropWhile_LH_C_1_3)
      else
        (let rec _lh_words_LH_C_1_2 = _lh_dropWhile_LH_C_1_3 in
          (let rec _lh_words_LH_C_0_2 = _lh_dropWhile_LH_C_0_3 in
            (fun _lh_dummy_2_4 -> 
              (let rec _lh_matchIdent_2_5 = ((break__d0 isSpace__d1) (`LH_C(_lh_words_LH_C_0_2, _lh_words_LH_C_1_2))) in
                (match _lh_matchIdent_2_5 with
                  | `LH_P2(_lh_words_LH_P2_0_2, _lh_words_LH_P2_1_2) -> 
                    (`LH_C(_lh_words_LH_P2_0_2, (words__d0 _lh_words_LH_P2_1_2)))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"))
and dropWhile__d9 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (fun _lh_dummy_2 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile__d9 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (let rec _lh_words_LH_C_1_0 = _lh_dropWhile_LH_C_1_0 in
          (let rec _lh_words_LH_C_0_0 = _lh_dropWhile_LH_C_0_0 in
            (fun _lh_dummy_3 -> 
              (let rec _lh_matchIdent_4 = ((break__d4 isSpace__d3) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
                (match _lh_matchIdent_4 with
                  | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
                    (`LH_C(_lh_words_LH_P2_0_0, (words__d1 _lh_words_LH_P2_1_0)))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"))
and enterList__d0 _lh_enterList_arg1_0 _lh_enterList_arg2_0 =
  (match _lh_enterList_arg2_0 with
    | `LH_N -> 
      _lh_enterList_arg1_0
    | _ -> 
      (match _lh_enterList_arg1_0 with
        | `Empty -> 
          (match _lh_enterList_arg2_0 with
            | `LH_C(_lh_enterList_LH_C_0_0, _lh_enterList_LH_C_1_0) -> 
              (let rec k_0 = (fst__d3 _lh_enterList_LH_C_0_0) in
                (let rec left_2 = ((enterList__d0 (`Empty)) (let rec _lh_listcomp_fun_3_7 = (fun _lh_listcomp_fun_para_2_7 -> 
                  (match _lh_listcomp_fun_para_2_7 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_t_2_6) -> 
                      (if ((fst__d4 _lh_listcomp_fun_ls_h_2_5) < k_0) then
                        (`LH_C(_lh_listcomp_fun_ls_h_2_5, (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_6)))
                      else
                        (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_6))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_3_7 _lh_enterList_LH_C_1_0))) in
                  (let rec right_2 = ((enterList__d0 (`Empty)) (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_2_8 -> 
                    (match _lh_listcomp_fun_para_2_8 with
                      | `LH_C(_lh_listcomp_fun_ls_h_2_6, _lh_listcomp_fun_ls_t_2_7) -> 
                        (if ((fst__d5 _lh_listcomp_fun_ls_h_2_6) > k_0) then
                          (`LH_C(_lh_listcomp_fun_ls_h_2_6, (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_7)))
                        else
                          (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_7))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_3_8 _lh_enterList_LH_C_1_0))) in
                    (`Fork(left_2, _lh_enterList_LH_C_0_0, right_2)))))
            | _ -> 
              (match _lh_enterList_arg1_0 with
                | `Fork(_lh_enterList_Fork_0_0, _lh_enterList_Fork_1_0, _lh_enterList_Fork_2_0) -> 
                  (let rec k_1 = (fst__d0 _lh_enterList_Fork_1_0) in
                    (let rec left'_0 = ((enterList__d0 _lh_enterList_Fork_0_0) (let rec _lh_listcomp_fun_3_9 = (fun _lh_listcomp_fun_para_2_9 -> 
                      (match _lh_listcomp_fun_para_2_9 with
                        | `LH_C(_lh_listcomp_fun_ls_h_2_7, _lh_listcomp_fun_ls_t_2_8) -> 
                          (if ((fst__d1 _lh_listcomp_fun_ls_h_2_7) < k_1) then
                            (`LH_C(_lh_listcomp_fun_ls_h_2_7, (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_8)))
                          else
                            (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_8))
                        | `LH_N -> 
                          (`LH_N))) in
                      (_lh_listcomp_fun_3_9 _lh_enterList_arg2_0))) in
                      (let rec right'_0 = ((enterList__d0 _lh_enterList_Fork_2_0) (let rec _lh_listcomp_fun_4_0 = (fun _lh_listcomp_fun_para_3_0 -> 
                        (match _lh_listcomp_fun_para_3_0 with
                          | `LH_C(_lh_listcomp_fun_ls_h_2_8, _lh_listcomp_fun_ls_t_2_9) -> 
                            (if ((fst__d2 _lh_listcomp_fun_ls_h_2_8) > k_1) then
                              (`LH_C(_lh_listcomp_fun_ls_h_2_8, (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_2_9)))
                            else
                              (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_2_9))
                          | `LH_N -> 
                            (`LH_N))) in
                        (_lh_listcomp_fun_4_0 _lh_enterList_arg2_0))) in
                        (`Fork(left'_0, _lh_enterList_Fork_1_0, right'_0)))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_enterList_arg1_0 with
            | `Fork(_lh_enterList_Fork_0_1, _lh_enterList_Fork_1_1, _lh_enterList_Fork_2_1) -> 
              (let rec k_2 = (fst__d0 _lh_enterList_Fork_1_1) in
                (let rec left'_1 = ((enterList__d0 _lh_enterList_Fork_0_1) (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_3_1 -> 
                  (match _lh_listcomp_fun_para_3_1 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2_9, _lh_listcomp_fun_ls_t_3_0) -> 
                      (if ((fst__d1 _lh_listcomp_fun_ls_h_2_9) < k_2) then
                        (`LH_C(_lh_listcomp_fun_ls_h_2_9, (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_3_0)))
                      else
                        (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_3_0))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_4_1 _lh_enterList_arg2_0))) in
                  (let rec right'_1 = ((enterList__d0 _lh_enterList_Fork_2_1) (let rec _lh_listcomp_fun_4_2 = (fun _lh_listcomp_fun_para_3_2 -> 
                    (match _lh_listcomp_fun_para_3_2 with
                      | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_3_1) -> 
                        (if ((fst__d2 _lh_listcomp_fun_ls_h_3_0) > k_2) then
                          (`LH_C(_lh_listcomp_fun_ls_h_3_0, (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_1)))
                        else
                          (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_1))
                      | `LH_N -> 
                        (`LH_N))) in
                    (_lh_listcomp_fun_4_2 _lh_enterList_arg2_0))) in
                    (`Fork(left'_1, _lh_enterList_Fork_1_1, right'_1)))))
            | _ -> 
              (failwith "error"))))
and entries__d0 _lh_entries_arg1_1 =
  (match _lh_entries_arg1_1 with
    | `Empty -> 
      (`LH_N)
    | `Fork(_lh_entries_Fork_0_1, _lh_entries_Fork_1_1, _lh_entries_Fork_2_1) -> 
      ((mappend__d8 ((mappend__d9 (entries__d0 _lh_entries_Fork_0_1)) (let rec t_1_5_7 = (fun ys_1_2_9 -> 
        ys_1_2_9) in
        (let rec h_1_2_0 = _lh_entries_Fork_1_1 in
          (fun ys_1_3_0 -> 
            (`LH_C(h_1_2_0, ((mappend__d8 t_1_5_7) ys_1_3_0)))))))) (entries__d0 _lh_entries_Fork_2_1))
    | _ -> 
      (failwith "error"))
and entries__d1 _lh_entries_arg1_0 =
  (match _lh_entries_arg1_0 with
    | `Empty -> 
      (`LH_N)
    | `Fork(_lh_entries_Fork_0_0, _lh_entries_Fork_1_0, _lh_entries_Fork_2_0) -> 
      ((mappend__d4_d1 ((mappend__d4_d2 (entries__d1 _lh_entries_Fork_0_0)) (let rec t_8_2 = (fun ys_7_8 -> 
        ys_7_8) in
        (let rec h_7_8 = _lh_entries_Fork_1_0 in
          (fun ys_7_9 -> 
            (`LH_C(h_7_8, ((mappend__d4_d1 t_8_2) ys_7_9)))))))) (entries__d1 _lh_entries_Fork_2_0))
    | _ -> 
      (failwith "error"))
and fails__d0 _lh_fails_arg1_4 =
  ((fun _lh_funcomp_x_6 -> 
    (not (succeeds__d0 _lh_funcomp_x_6))) _lh_fails_arg1_4)
and fails__d1 _lh_fails_arg1_7 =
  ((fun _lh_funcomp_x_9 -> 
    (not (succeeds__d1 _lh_funcomp_x_9))) _lh_fails_arg1_7)
and fails__d2 _lh_fails_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    (not (succeeds__d2 _lh_funcomp_x_2))) _lh_fails_arg1_0)
and fails__d3 _lh_fails_arg1_2 =
  ((fun _lh_funcomp_x_4 -> 
    (not (succeeds__d3 _lh_funcomp_x_4))) _lh_fails_arg1_2)
and fails__d4 _lh_fails_arg1_3 =
  ((fun _lh_funcomp_x_5 -> 
    (not (succeeds__d4 _lh_funcomp_x_5))) _lh_fails_arg1_3)
and fails__d5 _lh_fails_arg1_6 =
  ((fun _lh_funcomp_x_8 -> 
    (not (succeeds__d5 _lh_funcomp_x_8))) _lh_fails_arg1_6)
and fails__d6 _lh_fails_arg1_5 =
  ((fun _lh_funcomp_x_7 -> 
    (not (succeeds__d6 _lh_funcomp_x_7))) _lh_fails_arg1_5)
and fails__d7 _lh_fails_arg1_1 =
  ((fun _lh_funcomp_x_3 -> 
    (not (succeeds__d7 _lh_funcomp_x_3))) _lh_fails_arg1_1)
and find__d0 _lh_find_arg1_0 _lh_find_arg2_0 =
  (let rec _lh_matchIdent_0 = _lh_find_arg1_0 in
    (match _lh_matchIdent_0 with
      | `Empty -> 
        (failure__d0 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_0, _lh_find_Fork_1_0, _lh_find_Fork_2_0) -> 
        (match _lh_find_Fork_1_0 with
          | `LH_P2(_lh_find_LH_P2_0_0, _lh_find_LH_P2_1_0) -> 
            (if (_lh_find_arg2_0 < _lh_find_LH_P2_0_0) then
              ((find__d0 _lh_find_Fork_0_0) _lh_find_arg2_0)
            else
              (if (_lh_find_arg2_0 = _lh_find_LH_P2_0_0) then
                (success__d0 _lh_find_LH_P2_1_0)
              else
                (if (_lh_find_arg2_0 > _lh_find_LH_P2_0_0) then
                  ((find__d0 _lh_find_Fork_2_0) _lh_find_arg2_0)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d1 _lh_find_arg1_6 _lh_find_arg2_1_0 =
  (let rec _lh_matchIdent_1_5_6 = _lh_find_arg1_6 in
    (match _lh_matchIdent_1_5_6 with
      | `Empty -> 
        (failure__d1 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_6, _lh_find_Fork_1_6, _lh_find_Fork_2_6) -> 
        (match _lh_find_Fork_1_6 with
          | `LH_P2(_lh_find_LH_P2_0_6, _lh_find_LH_P2_1_6) -> 
            (if (_lh_find_arg2_1_0 < _lh_find_LH_P2_0_6) then
              ((find__d1 _lh_find_Fork_0_6) _lh_find_arg2_1_0)
            else
              (if (_lh_find_arg2_1_0 = _lh_find_LH_P2_0_6) then
                (success__d1 _lh_find_LH_P2_1_6)
              else
                (if (_lh_find_arg2_1_0 > _lh_find_LH_P2_0_6) then
                  ((find__d1 _lh_find_Fork_2_6) _lh_find_arg2_1_0)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d2 _lh_find_arg1_2 _lh_find_arg2_4 =
  (let rec _lh_matchIdent_2_7 = _lh_find_arg1_2 in
    (match _lh_matchIdent_2_7 with
      | `Empty -> 
        (failure__d2 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_3, _lh_find_Fork_1_3, _lh_find_Fork_2_3) -> 
        (match _lh_find_Fork_1_3 with
          | `LH_P2(_lh_find_LH_P2_0_3, _lh_find_LH_P2_1_3) -> 
            (if (_lh_find_arg2_4 < _lh_find_LH_P2_0_3) then
              ((find__d2 _lh_find_Fork_0_3) _lh_find_arg2_4)
            else
              (if (_lh_find_arg2_4 = _lh_find_LH_P2_0_3) then
                (success__d2 _lh_find_LH_P2_1_3)
              else
                (if (_lh_find_arg2_4 > _lh_find_LH_P2_0_3) then
                  ((find__d2 _lh_find_Fork_2_3) _lh_find_arg2_4)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d4 _lh_find_arg1_4 _lh_find_arg2_6 =
  (let rec _lh_matchIdent_3_4 = _lh_find_arg1_4 in
    (match _lh_matchIdent_3_4 with
      | `Empty -> 
        (failure__d6 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_4, _lh_find_Fork_1_4, _lh_find_Fork_2_4) -> 
        (match _lh_find_Fork_1_4 with
          | `LH_P2(_lh_find_LH_P2_0_4, _lh_find_LH_P2_1_4) -> 
            (if (_lh_find_arg2_6 < _lh_find_LH_P2_0_4) then
              ((find__d4 _lh_find_Fork_0_4) _lh_find_arg2_6)
            else
              (if (_lh_find_arg2_6 = _lh_find_LH_P2_0_4) then
                (success__d8 _lh_find_LH_P2_1_4)
              else
                (if (_lh_find_arg2_6 > _lh_find_LH_P2_0_4) then
                  ((find__d4 _lh_find_Fork_2_4) _lh_find_arg2_6)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and find__d5 _lh_find_arg1_1 _lh_find_arg2_3 =
  (let rec _lh_matchIdent_2_1 = _lh_find_arg1_1 in
    (match _lh_matchIdent_2_1 with
      | `Empty -> 
        (failure__d7 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N))))))))))))))))))))
      | `Fork(_lh_find_Fork_0_2, _lh_find_Fork_1_2, _lh_find_Fork_2_2) -> 
        (match _lh_find_Fork_1_2 with
          | `LH_P2(_lh_find_LH_P2_0_2, _lh_find_LH_P2_1_2) -> 
            (if (_lh_find_arg2_3 < _lh_find_LH_P2_0_2) then
              ((find__d5 _lh_find_Fork_0_2) _lh_find_arg2_3)
            else
              (if (_lh_find_arg2_3 = _lh_find_LH_P2_0_2) then
                (success__d9 _lh_find_LH_P2_1_2)
              else
                (if (_lh_find_arg2_3 > _lh_find_LH_P2_0_2) then
                  ((find__d5 _lh_find_Fork_2_2) _lh_find_arg2_3)
                else
                  ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and freshCopy__d0 _lh_freshCopy_arg1_0 _lh_freshCopy_arg2_0 =
  (match _lh_freshCopy_arg1_0 with
    | `Soln(_lh_freshCopy_Soln_0_0, _lh_freshCopy_Soln_1_0) -> 
      (let rec xs_2_2 = (vars__d0 _lh_freshCopy_arg2_0) in
        (let rec n_4 = (length__d2 xs_2_2) in
          (let rec tab_0 = ((updateList__d1 newTable__d3) ((zip__d0 xs_2_2) (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_5 -> 
            (_lh_listcomp_fun_para_5 _lh_listcomp_fun_9)) in
            (_lh_listcomp_fun_9 ((take__d1 n_4) _lh_freshCopy_Soln_1_0))))) in
            (let rec _lh_lookUp_LH_P2_1_0 = ((subst__d2 tab_0) _lh_freshCopy_arg2_0) in
              (let rec _lh_lookUp_LH_P2_0_0 = (let rec _lh_try_Soln_1_0 = ((drop__d1 n_4) _lh_freshCopy_Soln_1_0) in
                (let rec _lh_try_Soln_0_0 = _lh_freshCopy_Soln_0_0 in
                  (fun _lh_try_arg1_0 _lh_try_arg3_0 _lh_try_arg4_0 -> 
                    (match _lh_try_arg4_0 with
                      | `Term(_lh_try_Term_0_0, _lh_try_Term_1_0) -> 
                        (match _lh_try_Term_0_0 with
                          | `LH_C(_lh_try_LH_C_0_0, _lh_try_LH_C_1_0) -> 
                            (match _lh_try_LH_C_0_0 with
                              | 'i' -> 
                                (match _lh_try_LH_C_1_0 with
                                  | `LH_C(_lh_try_LH_C_0_1, _lh_try_LH_C_1_1) -> 
                                    (match _lh_try_LH_C_0_1 with
                                      | 'f' -> 
                                        (match _lh_try_LH_C_1_1 with
                                          | `LH_N -> 
                                            (match _lh_try_Term_1_0 with
                                              | `LH_C(_lh_try_LH_C_0_2, _lh_try_LH_C_1_2) -> 
                                                (match _lh_try_LH_C_1_2 with
                                                  | `LH_C(_lh_try_LH_C_0_3, _lh_try_LH_C_1_3) -> 
                                                    (match _lh_try_LH_C_1_3 with
                                                      | `LH_N -> 
                                                        (let rec m_1 = (((match__d0 _lh_try_Soln_0_0) _lh_try_arg3_0) _lh_try_LH_C_0_2) in
                                                          (if (fails__d3 m_1) then
                                                            (`LH_N)
                                                          else
                                                            (((solve__d0 _lh_try_arg1_0) (`Soln((answer__d4 m_1), _lh_try_Soln_1_0))) _lh_try_LH_C_0_3)))
                                                      | _ -> 
                                                        (failwith "error"))
                                                  | _ -> 
                                                    (failwith "error"))
                                              | _ -> 
                                                (failwith "error"))
                                          | _ -> 
                                            (failwith "error"))
                                      | _ -> 
                                        (failwith "error"))
                                  | _ -> 
                                    (failwith "error"))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))))) in
                (fun _lh_listcomp_fun_ls_t_5 _lh_listcomp_fun_1_0 _lh_lookUp_arg1_3 _lh_lookUp_arg3_3 -> 
                  (let rec t_4_2 = (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_5) in
                    (let rec h_4_2 = ((((try__d0 _lh_lookUp_arg1_3) _lh_lookUp_LH_P2_0_0) _lh_lookUp_arg3_3) _lh_lookUp_LH_P2_1_0) in
                      (fun _lh_dummy_1_2 -> 
                        ((mappend__d4_d0 h_4_2) (concat__d1 t_4_2)))))))))))
    | _ -> 
      (failwith "error"))
and goal__d0 _lh_goal_arg1_0 =
  (if ((inList__d0 (`LH_C('o', (`LH_C('r', (`LH_N)))))) _lh_goal_arg1_0) then
    ((((split__d1 _lh_goal_arg1_0) goal__d0) (`LH_C('o', (`LH_C('r', (`LH_N)))))) goal__d0)
  else
    (if ((inList__d1 (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) _lh_goal_arg1_0) then
      ((((split__d2 _lh_goal_arg1_0) goal__d0) (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) goal__d0)
    else
      (relation__d0 _lh_goal_arg1_0)))
and goal__d1 _lh_goal_arg1_1 =
  (if ((inList__d8 (`LH_C('o', (`LH_C('r', (`LH_N)))))) _lh_goal_arg1_1) then
    ((((split__d6 _lh_goal_arg1_1) goal__d1) (`LH_C('o', (`LH_C('r', (`LH_N)))))) goal__d1)
  else
    (if ((inList__d9 (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) _lh_goal_arg1_1) then
      ((((split__d7 _lh_goal_arg1_1) goal__d1) (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_N)))))))) goal__d1)
    else
      (relation__d2 _lh_goal_arg1_1)))
and lines__d0 _lh_lines_arg1_2 =
  (let rec _lh_matchIdent_1_4_8 = ((break__d1 (fun x_2_0 -> 
    (x_2_0 = '|'))) _lh_lines_arg1_2) in
    (match _lh_matchIdent_1_4_8 with
      | `LH_P2(_lh_lines_LH_P2_0_2, _lh_lines_LH_P2_1_2) -> 
        (`LH_C(_lh_lines_LH_P2_0_2, (let rec _lh_matchIdent_1_4_9 = _lh_lines_LH_P2_1_2 in
          (_lh_matchIdent_1_4_9 99))))
      | _ -> 
        (failwith "error")))
and lines__d1 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_3_1 = ((break__d2 (fun x_1_4 -> 
    (x_1_4 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_3_1 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (let rec _lh_listcomp_fun_ls_t_1_4 = (let rec _lh_matchIdent_3_2 = _lh_lines_LH_P2_1_0 in
          (_lh_matchIdent_3_2 99)) in
          (let rec _lh_listcomp_fun_ls_h_1_3 = _lh_lines_LH_P2_0_0 in
            (fun _lh_listcomp_fun_2_5 -> 
              (`LH_C(((words__d2 _lh_listcomp_fun_ls_h_1_3) <> (`LH_C((`LH_C('n', (`LH_C('o', (`LH_N))))), (`LH_N)))), (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_4))))))
      | _ -> 
        (failwith "error")))
and lines__d2 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_1_4_3 = ((break__d3 (fun x_1_7 -> 
    (x_1_7 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_1_4_3 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_1_4_4 = _lh_lines_LH_P2_1_1 in
          (_lh_matchIdent_1_4_4 99))))
      | _ -> 
        (failwith "error")))
and lookUp__d0 _lh_lookUp_arg1_0 _lh_lookUp_arg2_0 _lh_lookUp_arg3_0 _lh_lookUp_arg4_0 =
  (let rec copies_0 = (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (let rec _lh_listcomp_fun_ls_t_2 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
          (let rec _lh_listcomp_fun_ls_h_2 = ((freshCopy__d0 _lh_lookUp_arg2_0) _lh_listcomp_fun_ls_h_1) in
            (fun _lh_listcomp_fun_2 _lh_lookUp_arg1_1 _lh_lookUp_arg3_1 -> 
              ((((_lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_2) _lh_lookUp_arg1_1) _lh_lookUp_arg3_1))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_3 _lh_lookUp_arg1_2 _lh_lookUp_arg3_2 _lh_dummy_4 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_1 _lh_lookUp_arg4_0)) in
    (concat__d1 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
      (((_lh_listcomp_fun_para_2 _lh_listcomp_fun_4) _lh_lookUp_arg1_0) _lh_lookUp_arg3_0)) in
      (_lh_listcomp_fun_4 copies_0))))
and mappend__d1 xs_3_1 ys_7_6 =
  (match xs_3_1 with
    | `LH_C(h_7_6, t_8_0) -> 
      (let rec t_8_1 = ((mappend__d1 t_8_0) ys_7_6) in
        (let rec h_7_7 = h_7_6 in
          (fun ys_7_7 -> 
            (`LH_C(h_7_7, ((mappend__d0 t_8_1) ys_7_7))))))
    | `LH_N -> 
      ys_7_6)
and mappend__d1_d1 xs_2_6 ys_5_2 =
  (match xs_2_6 with
    | `LH_C(h_5_4, t_5_5) -> 
      (let rec t_5_6 = ((mappend__d1_d1 t_5_5) ys_5_2) in
        (let rec h_5_5 = h_5_4 in
          (fun ys_5_3 -> 
            (let rec t_5_7 = ((mappend__d1_d0 t_5_6) ys_5_3) in
              (fun _lh_dummy_1_4 -> 
                (1 + (length__d0 t_5_7)))))))
    | `LH_N -> 
      ys_5_2)
and mappend__d1_d4 xs_2_8 ys_5_6 =
  (match xs_2_8 with
    | `LH_C(h_5_9, t_6_1) -> 
      (let rec t_6_2 = ((mappend__d1_d4 t_6_1) ys_5_6) in
        (let rec h_6_0 = h_5_9 in
          (fun ys_5_7 -> 
            (let rec t_6_3 = ((mappend__d1_d3 t_6_2) ys_5_7) in
              (fun _lh_dummy_1_5 -> 
                (1 + (length__d0 t_6_3)))))))
    | `LH_N -> 
      ys_5_6)
and mappend__d1_d7 xs_1_4 ys_2_3 =
  (match xs_1_4 with
    | `LH_C(h_2_0, t_2_0) -> 
      (let rec t_2_1 = ((mappend__d1_d7 t_2_0) ys_2_3) in
        (let rec h_2_1 = h_2_0 in
          (fun ys_2_4 -> 
            (`LH_C(h_2_1, ((mappend__d1_d6 t_2_1) ys_2_4))))))
    | `LH_N -> 
      ys_2_3)
and mappend__d1_d9 xs_9 ys_1_7 =
  (match xs_9 with
    | `LH_C(h_1_4, t_1_4) -> 
      (let rec t_1_5 = ((mappend__d1_d9 t_1_4) ys_1_7) in
        (let rec h_1_5 = h_1_4 in
          (fun ys_1_8 -> 
            (`LH_C(h_1_5, ((mappend__d1_d8 t_1_5) ys_1_8))))))
    | `LH_N -> 
      ys_1_7)
and mappend__d2_d1 xs_2_1 ys_3_8 =
  (match xs_2_1 with
    | `LH_C(h_3_6, t_3_6) -> 
      (let rec t_3_7 = ((mappend__d2_d1 t_3_6) ys_3_8) in
        (let rec h_3_7 = h_3_6 in
          (fun ys_3_9 -> 
            (`LH_C(h_3_7, ((mappend__d2_d0 t_3_7) ys_3_9))))))
    | `LH_N -> 
      ys_3_8)
and mappend__d2_d3 xs_3_7 ys_1_3_2 =
  (match xs_3_7 with
    | `LH_C(h_1_2_2, t_1_5_9) -> 
      (let rec t_1_6_0 = ((mappend__d2_d3 t_1_5_9) ys_1_3_2) in
        (let rec h_1_2_3 = h_1_2_2 in
          (fun ys_1_3_3 -> 
            (`LH_C(h_1_2_3, ((mappend__d2_d2 t_1_6_0) ys_1_3_3))))))
    | `LH_N -> 
      ys_1_3_2)
and mappend__d2_d5 xs_1_7 ys_3_0 =
  (match xs_1_7 with
    | `LH_C(h_2_6, t_2_6) -> 
      (let rec t_2_7 = ((mappend__d2_d5 t_2_6) ys_3_0) in
        (let rec h_2_7 = h_2_6 in
          (fun ys_3_1 -> 
            (`LH_C(h_2_7, ((mappend__d2_d4 t_2_7) ys_3_1))))))
    | `LH_N -> 
      ys_3_0)
and mappend__d2_d7 xs_2_0 ys_3_6 =
  (match xs_2_0 with
    | `LH_C(h_3_4, t_3_4) -> 
      (let rec t_3_5 = ((mappend__d2_d7 t_3_4) ys_3_6) in
        (let rec h_3_5 = h_3_4 in
          (fun ys_3_7 -> 
            (`LH_C(h_3_5, ((mappend__d2_d6 t_3_5) ys_3_7))))))
    | `LH_N -> 
      ys_3_6)
and mappend__d2_d9 xs_2_4 ys_4_1 =
  (match xs_2_4 with
    | `LH_C(h_4_4, t_4_4) -> 
      (let rec t_4_5 = ((mappend__d2_d9 t_4_4) ys_4_1) in
        (let rec h_4_5 = h_4_4 in
          (fun ys_4_2 -> 
            (let rec t_4_6 = ((mappend__d2_d8 t_4_5) ys_4_2) in
              (fun _lh_dummy_1_3 -> 
                (1 + (length__d0 t_4_6)))))))
    | `LH_N -> 
      ys_4_1)
and mappend__d3 xs_4_2 ys_1_3_8 =
  (match xs_4_2 with
    | `LH_C(h_1_4_0, t_1_7_8) -> 
      (let rec t_1_7_9 = ((mappend__d3 t_1_7_8) ys_1_3_8) in
        (let rec h_1_4_1 = h_1_4_0 in
          (fun ys_1_3_9 -> 
            (`LH_C(h_1_4_1, ((mappend__d2 t_1_7_9) ys_1_3_9))))))
    | `LH_N -> 
      ys_1_3_8)
and mappend__d3_d2 xs_4_6 ys_1_4_8 =
  (match xs_4_6 with
    | `LH_C(h_1_5_0, t_1_9_2) -> 
      (let rec t_1_9_3 = ((mappend__d3_d2 t_1_9_2) ys_1_4_8) in
        (let rec h_1_5_1 = h_1_5_0 in
          (fun ys_1_4_9 -> 
            (`LH_C(h_1_5_1, ((mappend__d3_d1 t_1_9_3) ys_1_4_9))))))
    | `LH_N -> 
      ys_1_4_8)
and mappend__d3_d4 xs_1_6 ys_2_8 =
  (match xs_1_6 with
    | `LH_C(h_2_3, t_2_3) -> 
      (let rec t_2_4 = ((mappend__d3_d4 t_2_3) ys_2_8) in
        (let rec h_2_4 = h_2_3 in
          (fun ys_2_9 -> 
            (`LH_C(h_2_4, ((mappend__d3_d3 t_2_4) ys_2_9))))))
    | `LH_N -> 
      ys_2_8)
and mappend__d3_d6 xs_2_7 ys_5_4 =
  (match xs_2_7 with
    | `LH_C(h_5_6, t_5_8) -> 
      (let rec t_5_9 = ((mappend__d3_d6 t_5_8) ys_5_4) in
        (let rec h_5_7 = h_5_6 in
          (fun ys_5_5 -> 
            (`LH_C(h_5_7, ((mappend__d3_d5 t_5_9) ys_5_5))))))
    | `LH_N -> 
      ys_5_4)
and mappend__d3_d8 xs_4_4 ys_1_4_1 =
  (match xs_4_4 with
    | `LH_C(h_1_4_3, t_1_8_2) -> 
      (let rec t_1_8_3 = ((mappend__d3_d8 t_1_8_2) ys_1_4_1) in
        (let rec h_1_4_4 = h_1_4_3 in
          (fun ys_1_4_2 -> 
            (`LH_C(h_1_4_4, ((mappend__d3_d7 t_1_8_3) ys_1_4_2))))))
    | `LH_N -> 
      ys_1_4_1)
and mappend__d4_d2 xs_2_5 ys_5_0 =
  (match xs_2_5 with
    | `LH_C(h_5_2, t_5_3) -> 
      (let rec t_5_4 = ((mappend__d4_d2 t_5_3) ys_5_0) in
        (let rec h_5_3 = h_5_2 in
          (fun ys_5_1 -> 
            (`LH_C(h_5_3, ((mappend__d4_d1 t_5_4) ys_5_1))))))
    | `LH_N -> 
      ys_5_0)
and mappend__d5 xs_5 ys_7 =
  (match xs_5 with
    | `LH_C(h_7, t_7) -> 
      (let rec t_8 = ((mappend__d5 t_7) ys_7) in
        (let rec h_8 = h_7 in
          (fun ys_8 -> 
            (`LH_C(h_8, ((mappend__d4 t_8) ys_8))))))
    | `LH_N -> 
      ys_7)
and mappend__d7 xs_7 ys_1_4 =
  (match xs_7 with
    | `LH_C(h_1_2, t_1_2) -> 
      (let rec t_1_3 = ((mappend__d7 t_1_2) ys_1_4) in
        (let rec h_1_3 = h_1_2 in
          (fun ys_1_5 -> 
            (`LH_C(h_1_3, ((mappend__d6 t_1_3) ys_1_5))))))
    | `LH_N -> 
      ys_1_4)
and mappend__d9 xs_3_5 ys_1_2_5 =
  (match xs_3_5 with
    | `LH_C(h_1_1_7, t_1_5_4) -> 
      (let rec t_1_5_5 = ((mappend__d9 t_1_5_4) ys_1_2_5) in
        (let rec h_1_1_8 = h_1_1_7 in
          (fun ys_1_2_6 -> 
            (`LH_C(h_1_1_8, ((mappend__d8 t_1_5_5) ys_1_2_6))))))
    | `LH_N -> 
      ys_1_2_5)
and match__d0 _lh_match_arg1_0 _lh_match_arg2_0 _lh_match_arg3_0 =
  (((compear__d0 _lh_match_arg1_0) ((subst__d3 _lh_match_arg1_0) _lh_match_arg2_0)) ((subst__d4 _lh_match_arg1_0) _lh_match_arg3_0))
and noun__d0 _lh_noun_arg1_0 =
  (match _lh_noun_arg1_0 with
    | `LH_C(_lh_noun_LH_C_0_0, _lh_noun_LH_C_1_0) -> 
      (match _lh_noun_LH_C_1_0 with
        | `LH_C(_lh_noun_LH_C_0_1, _lh_noun_LH_C_1_1) -> 
          (match _lh_noun_LH_C_1_1 with
            | `LH_N -> 
              (if ((inList__d3 _lh_noun_LH_C_0_0) (let rec _lh_inList_LH_C_1_0 = (let rec _lh_inList_LH_C_1_1 = (let rec _lh_inList_LH_C_1_2 = (fun _lh_inList_arg1_0 -> 
                false) in
                (let rec _lh_inList_LH_C_0_0 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_1 -> 
                    (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_0) then
                      true
                    else
                      ((inList__d3 _lh_inList_arg1_1) _lh_inList_LH_C_1_2))))) in
                (let rec _lh_inList_LH_C_0_1 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_2 -> 
                    (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_1) then
                      true
                    else
                      ((inList__d3 _lh_inList_arg1_2) _lh_inList_LH_C_1_1))))) in
                (let rec _lh_inList_LH_C_0_2 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_3 -> 
                    (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_2) then
                      true
                    else
                      ((inList__d3 _lh_inList_arg1_3) _lh_inList_LH_C_1_0)))))) then
                (noun__d0 (`LH_C(((mappend__d0 ((mappend__d1 _lh_noun_LH_C_0_0) (let rec t_4 = (fun ys_3 -> 
                  ys_3) in
                  (let rec h_4 = ' ' in
                    (fun ys_4 -> 
                      (`LH_C(h_4, ((mappend__d0 t_4) ys_4)))))))) _lh_noun_LH_C_0_1), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d1 _lh_noun_LH_C_0_0)) && ((head__d2 _lh_noun_LH_C_0_0) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_0))
          else
            (`Term(_lh_noun_LH_C_0_0, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d1 _lh_noun_arg1_3 =
  (match _lh_noun_arg1_3 with
    | `LH_C(_lh_noun_LH_C_0_6, _lh_noun_LH_C_1_6) -> 
      (match _lh_noun_LH_C_1_6 with
        | `LH_C(_lh_noun_LH_C_0_7, _lh_noun_LH_C_1_7) -> 
          (match _lh_noun_LH_C_1_7 with
            | `LH_N -> 
              (if ((inList__d4 _lh_noun_LH_C_0_6) (let rec _lh_inList_LH_C_1_1_5 = (let rec _lh_inList_LH_C_1_1_6 = (let rec _lh_inList_LH_C_1_1_7 = (fun _lh_inList_arg1_2_6 -> 
                false) in
                (let rec _lh_inList_LH_C_0_1_5 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_2_7 -> 
                    (if (_lh_inList_arg1_2_7 = _lh_inList_LH_C_0_1_5) then
                      true
                    else
                      ((inList__d4 _lh_inList_arg1_2_7) _lh_inList_LH_C_1_1_7))))) in
                (let rec _lh_inList_LH_C_0_1_6 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_2_8 -> 
                    (if (_lh_inList_arg1_2_8 = _lh_inList_LH_C_0_1_6) then
                      true
                    else
                      ((inList__d4 _lh_inList_arg1_2_8) _lh_inList_LH_C_1_1_6))))) in
                (let rec _lh_inList_LH_C_0_1_7 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_2_9 -> 
                    (if (_lh_inList_arg1_2_9 = _lh_inList_LH_C_0_1_7) then
                      true
                    else
                      ((inList__d4 _lh_inList_arg1_2_9) _lh_inList_LH_C_1_1_5)))))) then
                (noun__d1 (`LH_C(((mappend__d2 ((mappend__d3 _lh_noun_LH_C_0_6) (let rec t_1_5_3 = (fun ys_1_2_2 -> 
                  ys_1_2_2) in
                  (let rec h_1_1_6 = ' ' in
                    (fun ys_1_2_3 -> 
                      (`LH_C(h_1_1_6, ((mappend__d2 t_1_5_3) ys_1_2_3)))))))) _lh_noun_LH_C_0_7), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d3 _lh_noun_LH_C_0_6)) && ((head__d4 _lh_noun_LH_C_0_6) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_6))
          else
            (`Term(_lh_noun_LH_C_0_6, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d2 _lh_noun_arg1_5 =
  (match _lh_noun_arg1_5 with
    | `LH_C(_lh_noun_LH_C_0_1_0, _lh_noun_LH_C_1_1_0) -> 
      (match _lh_noun_LH_C_1_1_0 with
        | `LH_C(_lh_noun_LH_C_0_1_1, _lh_noun_LH_C_1_1_1) -> 
          (match _lh_noun_LH_C_1_1_1 with
            | `LH_N -> 
              (if ((inList__d6 _lh_noun_LH_C_0_1_0) (let rec _lh_inList_LH_C_1_3_5 = (let rec _lh_inList_LH_C_1_3_6 = (let rec _lh_inList_LH_C_1_3_7 = (fun _lh_inList_arg1_5_4 -> 
                false) in
                (let rec _lh_inList_LH_C_0_3_5 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_5_5 -> 
                    (if (_lh_inList_arg1_5_5 = _lh_inList_LH_C_0_3_5) then
                      true
                    else
                      ((inList__d6 _lh_inList_arg1_5_5) _lh_inList_LH_C_1_3_7))))) in
                (let rec _lh_inList_LH_C_0_3_6 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_5_6 -> 
                    (if (_lh_inList_arg1_5_6 = _lh_inList_LH_C_0_3_6) then
                      true
                    else
                      ((inList__d6 _lh_inList_arg1_5_6) _lh_inList_LH_C_1_3_6))))) in
                (let rec _lh_inList_LH_C_0_3_7 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_5_7 -> 
                    (if (_lh_inList_arg1_5_7 = _lh_inList_LH_C_0_3_7) then
                      true
                    else
                      ((inList__d6 _lh_inList_arg1_5_7) _lh_inList_LH_C_1_3_5)))))) then
                (noun__d2 (`LH_C(((mappend__d4 ((mappend__d5 _lh_noun_LH_C_0_1_0) (let rec t_1_9_6 = (fun ys_1_5_3 -> 
                  ys_1_5_3) in
                  (let rec h_1_5_4 = ' ' in
                    (fun ys_1_5_4 -> 
                      (`LH_C(h_1_5_4, ((mappend__d4 t_1_9_6) ys_1_5_4)))))))) _lh_noun_LH_C_0_1_1), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d6 _lh_noun_LH_C_0_1_0)) && ((head__d7 _lh_noun_LH_C_0_1_0) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_1_0))
          else
            (`Term(_lh_noun_LH_C_0_1_0, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d3 _lh_noun_arg1_1 =
  (match _lh_noun_arg1_1 with
    | `LH_C(_lh_noun_LH_C_0_2, _lh_noun_LH_C_1_2) -> 
      (match _lh_noun_LH_C_1_2 with
        | `LH_C(_lh_noun_LH_C_0_3, _lh_noun_LH_C_1_3) -> 
          (match _lh_noun_LH_C_1_3 with
            | `LH_N -> 
              (if ((inList__d7 _lh_noun_LH_C_0_2) (let rec _lh_inList_LH_C_1_3 = (let rec _lh_inList_LH_C_1_4 = (let rec _lh_inList_LH_C_1_5 = (fun _lh_inList_arg1_6 -> 
                false) in
                (let rec _lh_inList_LH_C_0_3 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_7 -> 
                    (if (_lh_inList_arg1_7 = _lh_inList_LH_C_0_3) then
                      true
                    else
                      ((inList__d7 _lh_inList_arg1_7) _lh_inList_LH_C_1_5))))) in
                (let rec _lh_inList_LH_C_0_4 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_8 -> 
                    (if (_lh_inList_arg1_8 = _lh_inList_LH_C_0_4) then
                      true
                    else
                      ((inList__d7 _lh_inList_arg1_8) _lh_inList_LH_C_1_4))))) in
                (let rec _lh_inList_LH_C_0_5 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_9 -> 
                    (if (_lh_inList_arg1_9 = _lh_inList_LH_C_0_5) then
                      true
                    else
                      ((inList__d7 _lh_inList_arg1_9) _lh_inList_LH_C_1_3)))))) then
                (noun__d3 (`LH_C(((mappend__d6 ((mappend__d7 _lh_noun_LH_C_0_2) (let rec t_2_2 = (fun ys_2_5 -> 
                  ys_2_5) in
                  (let rec h_2_2 = ' ' in
                    (fun ys_2_6 -> 
                      (`LH_C(h_2_2, ((mappend__d6 t_2_2) ys_2_6)))))))) _lh_noun_LH_C_0_3), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d8 _lh_noun_LH_C_0_2)) && ((head__d9 _lh_noun_LH_C_0_2) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_2))
          else
            (`Term(_lh_noun_LH_C_0_2, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d4 _lh_noun_arg1_4 =
  (match _lh_noun_arg1_4 with
    | `LH_C(_lh_noun_LH_C_0_8, _lh_noun_LH_C_1_8) -> 
      (match _lh_noun_LH_C_1_8 with
        | `LH_C(_lh_noun_LH_C_0_9, _lh_noun_LH_C_1_9) -> 
          (match _lh_noun_LH_C_1_9 with
            | `LH_N -> 
              (if ((inList__d1_d1 _lh_noun_LH_C_0_8) (let rec _lh_inList_LH_C_1_1_8 = (let rec _lh_inList_LH_C_1_1_9 = (let rec _lh_inList_LH_C_1_2_0 = (fun _lh_inList_arg1_3_0 -> 
                false) in
                (let rec _lh_inList_LH_C_0_1_8 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_3_1 -> 
                    (if (_lh_inList_arg1_3_1 = _lh_inList_LH_C_0_1_8) then
                      true
                    else
                      ((inList__d1_d1 _lh_inList_arg1_3_1) _lh_inList_LH_C_1_2_0))))) in
                (let rec _lh_inList_LH_C_0_1_9 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_3_2 -> 
                    (if (_lh_inList_arg1_3_2 = _lh_inList_LH_C_0_1_9) then
                      true
                    else
                      ((inList__d1_d1 _lh_inList_arg1_3_2) _lh_inList_LH_C_1_1_9))))) in
                (let rec _lh_inList_LH_C_0_2_0 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_3_3 -> 
                    (if (_lh_inList_arg1_3_3 = _lh_inList_LH_C_0_2_0) then
                      true
                    else
                      ((inList__d1_d1 _lh_inList_arg1_3_3) _lh_inList_LH_C_1_1_8)))))) then
                (noun__d4 (`LH_C(((mappend__d2_d4 ((mappend__d2_d5 _lh_noun_LH_C_0_8) (let rec t_1_5_6 = (fun ys_1_2_7 -> 
                  ys_1_2_7) in
                  (let rec h_1_1_9 = ' ' in
                    (fun ys_1_2_8 -> 
                      (`LH_C(h_1_1_9, ((mappend__d2_d4 t_1_5_6) ys_1_2_8)))))))) _lh_noun_LH_C_0_9), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d1_d2 _lh_noun_LH_C_0_8)) && ((head__d1_d3 _lh_noun_LH_C_0_8) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_8))
          else
            (`Term(_lh_noun_LH_C_0_8, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and noun__d5 _lh_noun_arg1_2 =
  (match _lh_noun_arg1_2 with
    | `LH_C(_lh_noun_LH_C_0_4, _lh_noun_LH_C_1_4) -> 
      (match _lh_noun_LH_C_1_4 with
        | `LH_C(_lh_noun_LH_C_0_5, _lh_noun_LH_C_1_5) -> 
          (match _lh_noun_LH_C_1_5 with
            | `LH_N -> 
              (if ((inList__d1_d2 _lh_noun_LH_C_0_4) (let rec _lh_inList_LH_C_1_6 = (let rec _lh_inList_LH_C_1_7 = (let rec _lh_inList_LH_C_1_8 = (fun _lh_inList_arg1_1_1 -> 
                false) in
                (let rec _lh_inList_LH_C_0_6 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_N))))))) in
                  (fun _lh_inList_arg1_1_2 -> 
                    (if (_lh_inList_arg1_1_2 = _lh_inList_LH_C_0_6) then
                      true
                    else
                      ((inList__d1_d2 _lh_inList_arg1_1_2) _lh_inList_LH_C_1_8))))) in
                (let rec _lh_inList_LH_C_0_7 = (`LH_C('a', (`LH_C('n', (`LH_N))))) in
                  (fun _lh_inList_arg1_1_3 -> 
                    (if (_lh_inList_arg1_1_3 = _lh_inList_LH_C_0_7) then
                      true
                    else
                      ((inList__d1_d2 _lh_inList_arg1_1_3) _lh_inList_LH_C_1_7))))) in
                (let rec _lh_inList_LH_C_0_8 = (`LH_C('a', (`LH_N))) in
                  (fun _lh_inList_arg1_1_4 -> 
                    (if (_lh_inList_arg1_1_4 = _lh_inList_LH_C_0_8) then
                      true
                    else
                      ((inList__d1_d2 _lh_inList_arg1_1_4) _lh_inList_LH_C_1_6)))))) then
                (noun__d5 (`LH_C(((mappend__d2_d6 ((mappend__d2_d7 _lh_noun_LH_C_0_4) (let rec t_3_2 = (fun ys_3_3 -> 
                  ys_3_3) in
                  (let rec h_3_2 = ' ' in
                    (fun ys_3_4 -> 
                      (`LH_C(h_3_2, ((mappend__d2_d6 t_3_2) ys_3_4)))))))) _lh_noun_LH_C_0_5), (`LH_N))))
              else
                ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))
            | _ -> 
              (failwith "error"))
        | `LH_N -> 
          (if (('A' <= (head__d1_d4 _lh_noun_LH_C_0_4)) && ((head__d1_d5 _lh_noun_LH_C_0_4) <= 'Z')) then
            (`Var(_lh_noun_LH_C_0_4))
          else
            (`Term(_lh_noun_LH_C_0_4, (`LH_N))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and nub__d0 _lh_nub_arg1_1 =
  (match _lh_nub_arg1_1 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_1_2 def_0 f_6 i_3 -> 
        i_3)
    | `LH_C(_lh_nub_LH_C_0_1, _lh_nub_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_ls_t_7 = (nub__d0 ((filter__d0 (fun y_2 -> 
        (not (_lh_nub_LH_C_0_1 = y_2)))) _lh_nub_LH_C_1_1)) in
        (let rec _lh_listcomp_fun_ls_h_6 = _lh_nub_LH_C_0_1 in
          (fun _lh_listcomp_fun_1_3 def_1 -> 
            (let rec t_6_4 = (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_7) in
              (let rec h_6_1 = (`LH_P2(_lh_listcomp_fun_ls_h_6, (def_1 _lh_listcomp_fun_ls_h_6))) in
                (fun f_7 i_4 -> 
                  ((f_7 h_6_1) (((foldr__d0 f_7) i_4) t_6_4))))))))
    | _ -> 
      (failwith "error"))
and nub__d1 _lh_nub_arg1_0 =
  (match _lh_nub_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nub_LH_C_0_0, _lh_nub_LH_C_1_0) -> 
      (`LH_C(_lh_nub_LH_C_0_0, (nub__d1 ((filter__d1 (fun y_0 -> 
        (not (_lh_nub_LH_C_0_0 = y_0)))) _lh_nub_LH_C_1_0))))
    | _ -> 
      (failwith "error"))
and nub__d2 _lh_nub_arg1_2 =
  (match _lh_nub_arg1_2 with
    | `LH_N -> 
      (fun f_9 -> 
        (`LH_N))
    | `LH_C(_lh_nub_LH_C_0_2, _lh_nub_LH_C_1_2) -> 
      (let rec t_1_6_1 = (nub__d2 ((filter__d2 (fun y_3 -> 
        (not (_lh_nub_LH_C_0_2 = y_3)))) _lh_nub_LH_C_1_2)) in
        (let rec h_1_2_4 = _lh_nub_LH_C_0_2 in
          (fun f_1_0 -> 
            (`LH_C((f_1_0 h_1_2_4), ((map__d0 f_1_0) t_1_6_1))))))
    | _ -> 
      (failwith "error"))
and occurs__d0 _lh_occurs_arg1_0 _lh_occurs_arg2_1 =
  (match _lh_occurs_arg2_1 with
    | `Term(_lh_occurs_Term_0_0, _lh_occurs_Term_1_0) -> 
      (or__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_or_LH_C_1_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec _lh_or_LH_C_0_0 = ((occurs__d0 _lh_occurs_arg1_0) _lh_listcomp_fun_ls_h_0) in
                (fun _lh_dummy_0 -> 
                  (if _lh_or_LH_C_0_0 then
                    true
                  else
                    (or__d0 _lh_or_LH_C_1_0)))))
          | `LH_N -> 
            (fun _lh_dummy_1 -> 
              false))) in
        (_lh_listcomp_fun_0 _lh_occurs_Term_1_0)))
    | _ -> 
      (_lh_occurs_arg1_0 _lh_occurs_arg2_1))
and process__d0 _lh_process_arg1_0 _lh_process_arg2_0 =
  let rec info_0 = (fun _lh_info_arg1_0 _lh_info_arg2_0 -> 
    ((enterList__d0 newTable__d1) (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_7 -> 
      (_lh_listcomp_fun_para_7 _lh_listcomp_fun_1_4)) in
      (_lh_listcomp_fun_1_4 ((zip__d2 ((results_0 _lh_info_arg1_0) _lh_info_arg2_0)) (replies_0 _lh_info_arg2_0))))))
  and problem_0 = (fun _lh_problem_arg1_0 -> 
    (goal__d1 (words__d1 (head__d1_d6 (lines__d0 _lh_problem_arg1_0)))))
  and defs_0 = (fun _lh_defs_arg1_0 -> 
    (definitions__d0 (tail__d1_d0 (lines__d2 _lh_defs_arg1_0))))
  and newsoln_0 = (`Soln(newTable__d2, (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_8 -> 
    (_lh_listcomp_fun_para_8 _lh_listcomp_fun_1_5)) in
    (_lh_listcomp_fun_1_5 ((enumFromTo__d0 0) 1)))))
  and replies_0 = (fun _lh_replies_arg1_0 -> 
    (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_9 -> 
      (_lh_listcomp_fun_para_9 _lh_listcomp_fun_1_6)) in
      (_lh_listcomp_fun_1_6 (lines__d1 _lh_replies_arg1_0))))
  and db_0 = (fun _lh_db_arg1_0 _lh_db_arg2_0 -> 
    (`LH_P2((defs_0 _lh_db_arg1_0), ((info_0 _lh_db_arg1_0) _lh_db_arg2_0))))
  and results_0 = (fun _lh_results_arg1_0 _lh_results_arg2_0 -> 
    ((strip__d0 (fun _lh_inList_arg1_2_4 -> 
      false)) (((solve__d0 ((db_0 _lh_results_arg1_0) _lh_results_arg2_0)) newsoln_0) (problem_0 _lh_results_arg1_0))))
  in ((mappend__d2_d8 ((mappend__d2_d9 ((mappend__d3_d0 (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (fun ys_5_9 -> 
    ys_5_9) in
    (let rec h_6_4 = ' ' in
      (fun ys_6_0 -> 
        (`LH_C(h_6_4, ((mappend__d3_d0 t_7_5) ys_6_0)))))) in
    (let rec h_6_5 = ':' in
      (fun ys_6_1 -> 
        (`LH_C(h_6_5, ((mappend__d3_d0 t_7_4) ys_6_1)))))) in
    (let rec h_6_6 = 'g' in
      (fun ys_6_2 -> 
        (`LH_C(h_6_6, ((mappend__d3_d0 t_7_3) ys_6_2)))))) in
    (let rec h_6_7 = 'n' in
      (fun ys_6_3 -> 
        (`LH_C(h_6_7, ((mappend__d3_d0 t_7_2) ys_6_3)))))) in
    (let rec h_6_8 = 'i' in
      (fun ys_6_4 -> 
        (`LH_C(h_6_8, ((mappend__d3_d0 t_7_1) ys_6_4)))))) in
    (let rec h_6_9 = 'v' in
      (fun ys_6_5 -> 
        (`LH_C(h_6_9, ((mappend__d3_d0 t_7_0) ys_6_5)))))) in
    (let rec h_7_0 = 'l' in
      (fun ys_6_6 -> 
        (`LH_C(h_7_0, ((mappend__d3_d0 t_6_9) ys_6_6)))))) in
    (let rec h_7_1 = 'o' in
      (fun ys_6_7 -> 
        (`LH_C(h_7_1, ((mappend__d3_d0 t_6_8) ys_6_7)))))) in
    (let rec h_7_2 = 'S' in
      (fun ys_6_8 -> 
        (`LH_C(h_7_2, ((mappend__d3_d0 t_6_7) ys_6_8))))))) (showPhrase__d1 (problem_0 _lh_process_arg1_0)))) (let rec t_7_6 = (fun ys_6_9 -> 
    ys_6_9) in
    (let rec h_7_3 = '|' in
      (fun ys_7_0 -> 
        (let rec t_7_7 = ((mappend__d2_d8 t_7_6) ys_7_0) in
          (fun _lh_dummy_1_6 -> 
            (1 + (length__d0 t_7_7))))))))) (((display__d0 ((results_0 _lh_process_arg1_0) _lh_process_arg2_0)) (vars__d1 (problem_0 _lh_process_arg1_0))) (replies_0 _lh_process_arg2_0)))
and relation__d0 _lh_relation_arg1_0 =
  (let rec verbs_0 = (let rec _lh_inList_LH_C_1_1_0 = (let rec _lh_inList_LH_C_1_1_1 = (let rec _lh_inList_LH_C_1_1_2 = (let rec _lh_inList_LH_C_1_1_3 = (let rec _lh_inList_LH_C_1_1_4 = (fun _lh_inList_arg1_1_8 -> 
    false) in
    (let rec _lh_inList_LH_C_0_1_0 = (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))) in
      (fun _lh_inList_arg1_1_9 -> 
        (if (_lh_inList_arg1_1_9 = _lh_inList_LH_C_0_1_0) then
          true
        else
          ((inList__d2 _lh_inList_arg1_1_9) _lh_inList_LH_C_1_1_4))))) in
    (let rec _lh_inList_LH_C_0_1_1 = (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))) in
      (fun _lh_inList_arg1_2_0 -> 
        (if (_lh_inList_arg1_2_0 = _lh_inList_LH_C_0_1_1) then
          true
        else
          ((inList__d2 _lh_inList_arg1_2_0) _lh_inList_LH_C_1_1_3))))) in
    (let rec _lh_inList_LH_C_0_1_2 = (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))) in
      (fun _lh_inList_arg1_2_1 -> 
        (if (_lh_inList_arg1_2_1 = _lh_inList_LH_C_0_1_2) then
          true
        else
          ((inList__d2 _lh_inList_arg1_2_1) _lh_inList_LH_C_1_1_2))))) in
    (let rec _lh_inList_LH_C_0_1_3 = (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))) in
      (fun _lh_inList_arg1_2_2 -> 
        (if (_lh_inList_arg1_2_2 = _lh_inList_LH_C_0_1_3) then
          true
        else
          ((inList__d2 _lh_inList_arg1_2_2) _lh_inList_LH_C_1_1_1))))) in
    (let rec _lh_inList_LH_C_0_1_4 = (`LH_C('i', (`LH_C('s', (`LH_N))))) in
      (fun _lh_inList_arg1_2_3 -> 
        (if (_lh_inList_arg1_2_3 = _lh_inList_LH_C_0_1_4) then
          true
        else
          ((inList__d2 _lh_inList_arg1_2_3) _lh_inList_LH_C_1_1_0))))) in
    (let rec verb_0 = (head__d0 (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_6 -> 
      (match _lh_listcomp_fun_para_6 with
        | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_6) -> 
          (if ((inList__d2 _lh_listcomp_fun_ls_h_5) verbs_0) then
            (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_6)))
          else
            (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_6))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_1_1 _lh_relation_arg1_0))) in
      ((((split__d0 _lh_relation_arg1_0) noun__d0) verb_0) noun__d1)))
and relation__d1 _lh_relation_arg1_1 =
  (let rec verbs_2 = (let rec _lh_inList_LH_C_1_2_2 = (let rec _lh_inList_LH_C_1_2_3 = (let rec _lh_inList_LH_C_1_2_4 = (let rec _lh_inList_LH_C_1_2_5 = (let rec _lh_inList_LH_C_1_2_6 = (fun _lh_inList_arg1_3_6 -> 
    false) in
    (let rec _lh_inList_LH_C_0_2_2 = (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))) in
      (fun _lh_inList_arg1_3_7 -> 
        (if (_lh_inList_arg1_3_7 = _lh_inList_LH_C_0_2_2) then
          true
        else
          ((inList__d5 _lh_inList_arg1_3_7) _lh_inList_LH_C_1_2_6))))) in
    (let rec _lh_inList_LH_C_0_2_3 = (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))) in
      (fun _lh_inList_arg1_3_8 -> 
        (if (_lh_inList_arg1_3_8 = _lh_inList_LH_C_0_2_3) then
          true
        else
          ((inList__d5 _lh_inList_arg1_3_8) _lh_inList_LH_C_1_2_5))))) in
    (let rec _lh_inList_LH_C_0_2_4 = (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))) in
      (fun _lh_inList_arg1_3_9 -> 
        (if (_lh_inList_arg1_3_9 = _lh_inList_LH_C_0_2_4) then
          true
        else
          ((inList__d5 _lh_inList_arg1_3_9) _lh_inList_LH_C_1_2_4))))) in
    (let rec _lh_inList_LH_C_0_2_5 = (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))) in
      (fun _lh_inList_arg1_4_0 -> 
        (if (_lh_inList_arg1_4_0 = _lh_inList_LH_C_0_2_5) then
          true
        else
          ((inList__d5 _lh_inList_arg1_4_0) _lh_inList_LH_C_1_2_3))))) in
    (let rec _lh_inList_LH_C_0_2_6 = (`LH_C('i', (`LH_C('s', (`LH_N))))) in
      (fun _lh_inList_arg1_4_1 -> 
        (if (_lh_inList_arg1_4_1 = _lh_inList_LH_C_0_2_6) then
          true
        else
          ((inList__d5 _lh_inList_arg1_4_1) _lh_inList_LH_C_1_2_2))))) in
    (let rec verb_2 = (head__d5 (let rec _lh_listcomp_fun_2_7 = (fun _lh_listcomp_fun_para_1_7 -> 
      (match _lh_listcomp_fun_para_1_7 with
        | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_6) -> 
          (if ((inList__d5 _lh_listcomp_fun_ls_h_1_5) verbs_2) then
            (`LH_C(_lh_listcomp_fun_ls_h_1_5, (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_1_6)))
          else
            (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_1_6))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_2_7 _lh_relation_arg1_1))) in
      ((((split__d3 _lh_relation_arg1_1) noun__d2) verb_2) noun__d3)))
and relation__d2 _lh_relation_arg1_2 =
  (let rec verbs_3 = (let rec _lh_inList_LH_C_1_2_9 = (let rec _lh_inList_LH_C_1_3_0 = (let rec _lh_inList_LH_C_1_3_1 = (let rec _lh_inList_LH_C_1_3_2 = (let rec _lh_inList_LH_C_1_3_3 = (fun _lh_inList_arg1_4_5 -> 
    false) in
    (let rec _lh_inList_LH_C_0_2_9 = (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_N))))))))) in
      (fun _lh_inList_arg1_4_6 -> 
        (if (_lh_inList_arg1_4_6 = _lh_inList_LH_C_0_2_9) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_4_6) _lh_inList_LH_C_1_3_3))))) in
    (let rec _lh_inList_LH_C_0_3_0 = (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))) in
      (fun _lh_inList_arg1_4_7 -> 
        (if (_lh_inList_arg1_4_7 = _lh_inList_LH_C_0_3_0) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_4_7) _lh_inList_LH_C_1_3_2))))) in
    (let rec _lh_inList_LH_C_0_3_1 = (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_N))))))) in
      (fun _lh_inList_arg1_4_8 -> 
        (if (_lh_inList_arg1_4_8 = _lh_inList_LH_C_0_3_1) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_4_8) _lh_inList_LH_C_1_3_1))))) in
    (let rec _lh_inList_LH_C_0_3_2 = (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_N))))))))))))))))))) in
      (fun _lh_inList_arg1_4_9 -> 
        (if (_lh_inList_arg1_4_9 = _lh_inList_LH_C_0_3_2) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_4_9) _lh_inList_LH_C_1_3_0))))) in
    (let rec _lh_inList_LH_C_0_3_3 = (`LH_C('i', (`LH_C('s', (`LH_N))))) in
      (fun _lh_inList_arg1_5_0 -> 
        (if (_lh_inList_arg1_5_0 = _lh_inList_LH_C_0_3_3) then
          true
        else
          ((inList__d1_d0 _lh_inList_arg1_5_0) _lh_inList_LH_C_1_2_9))))) in
    (let rec verb_3 = (head__d1_d1 (let rec _lh_listcomp_fun_4_6 = (fun _lh_listcomp_fun_para_3_3 -> 
      (match _lh_listcomp_fun_para_3_3 with
        | `LH_C(_lh_listcomp_fun_ls_h_3_2, _lh_listcomp_fun_ls_t_3_3) -> 
          (if ((inList__d1_d0 _lh_listcomp_fun_ls_h_3_2) verbs_3) then
            (`LH_C(_lh_listcomp_fun_ls_h_3_2, (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_3_3)))
          else
            (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_3_3))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_4_6 _lh_relation_arg1_2))) in
      ((((split__d5 _lh_relation_arg1_2) noun__d4) verb_3) noun__d5)))
and relevant__d0 _lh_relevant_arg1_0 _lh_relevant_arg2_0 =
  (match _lh_relevant_arg2_0 with
    | `Term(_lh_relevant_Term_0_0, _lh_relevant_Term_1_0) -> 
      (let rec lookup_3 = ((find__d6 _lh_relevant_arg1_0) _lh_relevant_Term_0_0) in
        (if (fails__d7 lookup_3) then
          (`LH_N)
        else
          (answer__d8 lookup_3)))
    | _ -> 
      (failwith "error"))
and rule__d0 _lh_rule_arg1_0 =
  ((((split__d4 _lh_rule_arg1_0) relation__d1) (`LH_C('i', (`LH_C('f', (`LH_N)))))) goal__d0)
and showPhrase__d1 _lh_showPhrase_arg1_1 =
  (match _lh_showPhrase_arg1_1 with
    | `Var(_lh_showPhrase_Var_0_0) -> 
      _lh_showPhrase_Var_0_0
    | `Term(_lh_showPhrase_Term_0_0, _lh_showPhrase_Term_1_0) -> 
      (match _lh_showPhrase_Term_1_0 with
        | `LH_N -> 
          _lh_showPhrase_Term_0_0
        | `LH_C(_lh_showPhrase_LH_C_0_0, _lh_showPhrase_LH_C_1_0) -> 
          (match _lh_showPhrase_LH_C_1_0 with
            | `LH_C(_lh_showPhrase_LH_C_0_1, _lh_showPhrase_LH_C_1_1) -> 
              (match _lh_showPhrase_LH_C_1_1 with
                | `LH_N -> 
                  ((mappend__d3_d1 ((mappend__d3_d2 ((mappend__d3_d3 ((mappend__d3_d4 (showPhrase__d1 _lh_showPhrase_LH_C_0_0)) (let rec t_1_0 = (fun ys_1_0 -> 
                    ys_1_0) in
                    (let rec h_1_0 = ' ' in
                      (fun ys_1_1 -> 
                        (`LH_C(h_1_0, ((mappend__d3_d3 t_1_0) ys_1_1)))))))) _lh_showPhrase_Term_0_0)) (let rec t_1_1 = (fun ys_1_2 -> 
                    ys_1_2) in
                    (let rec h_1_1 = ' ' in
                      (fun ys_1_3 -> 
                        (`LH_C(h_1_1, ((mappend__d3_d1 t_1_1) ys_1_3)))))))) (showPhrase__d1 _lh_showPhrase_LH_C_0_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showVars__d0 _lh_showVars_arg1_0 _lh_showVars_arg2_0 =
  (let rec join_0 = (fun x_8 y_1 -> 
    ((mappend__d1_d6 ((mappend__d1_d7 x_8) (let rec t_4_8 = (let rec t_4_9 = (fun ys_4_3 -> 
      ys_4_3) in
      (let rec h_4_7 = ' ' in
        (fun ys_4_4 -> 
          (`LH_C(h_4_7, ((mappend__d1_d6 t_4_9) ys_4_4)))))) in
      (let rec h_4_8 = ';' in
        (fun ys_4_5 -> 
          (`LH_C(h_4_8, ((mappend__d1_d6 t_4_8) ys_4_5)))))))) y_1)) in
    (let rec showVar_0 = (fun v_0 -> 
      ((mappend__d1_d8 ((mappend__d1_d9 v_0) (let rec t_5_0 = (let rec t_5_1 = (let rec t_5_2 = (fun ys_4_6 -> 
        ys_4_6) in
        (let rec h_4_9 = ' ' in
          (fun ys_4_7 -> 
            (`LH_C(h_4_9, ((mappend__d1_d8 t_5_2) ys_4_7)))))) in
        (let rec h_5_0 = '=' in
          (fun ys_4_8 -> 
            (`LH_C(h_5_0, ((mappend__d1_d8 t_5_1) ys_4_8)))))) in
        (let rec h_5_1 = ' ' in
          (fun ys_4_9 -> 
            (`LH_C(h_5_1, ((mappend__d1_d8 t_5_0) ys_4_9)))))))) (showPhrase__d0 ((subst__d0 _lh_showVars_arg1_0) (`Var(v_0)))))) in
      ((foldr1__d0 join_0) ((map__d0 showVar_0) _lh_showVars_arg2_0))))
and solve__d0 _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (match _lh_solve_arg2_0 with
    | `Question(_lh_solve_Question_0_0) -> 
      (`LH_C((`Question(_lh_solve_Question_0_0)), (`LH_N)))
    | _ -> 
      (match _lh_solve_arg3_0 with
        | `Term(_lh_solve_Term_0_0, _lh_solve_Term_1_0) -> 
          (match _lh_solve_Term_0_0 with
            | `LH_C(_lh_solve_LH_C_0_0, _lh_solve_LH_C_1_0) -> 
              (match _lh_solve_LH_C_0_0 with
                | 'o' -> 
                  (match _lh_solve_LH_C_1_0 with
                    | `LH_C(_lh_solve_LH_C_0_1, _lh_solve_LH_C_1_1) -> 
                      (match _lh_solve_LH_C_0_1 with
                        | 'r' -> 
                          (match _lh_solve_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_solve_Term_1_0 with
                                | `LH_C(_lh_solve_LH_C_0_2, _lh_solve_LH_C_1_2) -> 
                                  (match _lh_solve_LH_C_1_2 with
                                    | `LH_C(_lh_solve_LH_C_0_3, _lh_solve_LH_C_1_3) -> 
                                      (match _lh_solve_LH_C_1_3 with
                                        | `LH_N -> 
                                          ((mappend__d4_d4 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2)) (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3))
                                        | _ -> 
                                          (match _lh_solve_arg3_0 with
                                            | `Term(_lh_solve_Term_0_1, _lh_solve_Term_1_1) -> 
                                              (match _lh_solve_Term_0_1 with
                                                | `LH_C(_lh_solve_LH_C_0_4, _lh_solve_LH_C_1_4) -> 
                                                  (match _lh_solve_LH_C_0_4 with
                                                    | 'a' -> 
                                                      (match _lh_solve_LH_C_1_4 with
                                                        | `LH_C(_lh_solve_LH_C_0_5, _lh_solve_LH_C_1_5) -> 
                                                          (match _lh_solve_LH_C_0_5 with
                                                            | 'n' -> 
                                                              (match _lh_solve_LH_C_1_5 with
                                                                | `LH_C(_lh_solve_LH_C_0_6, _lh_solve_LH_C_1_6) -> 
                                                                  (match _lh_solve_LH_C_0_6 with
                                                                    | 'd' -> 
                                                                      (match _lh_solve_LH_C_1_6 with
                                                                        | `LH_N -> 
                                                                          (match _lh_solve_Term_1_1 with
                                                                            | `LH_C(_lh_solve_LH_C_0_7, _lh_solve_LH_C_1_7) -> 
                                                                              (match _lh_solve_LH_C_1_7 with
                                                                                | `LH_C(_lh_solve_LH_C_0_8, _lh_solve_LH_C_1_8) -> 
                                                                                  (match _lh_solve_LH_C_1_8 with
                                                                                    | `LH_N -> 
                                                                                      (concat__d0 (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_1_8 -> 
                                                                                        (match _lh_listcomp_fun_para_1_8 with
                                                                                          | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_7) -> 
                                                                                            (let rec t_1_6_2 = (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_1_7) in
                                                                                              (let rec h_1_2_5 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_6) _lh_solve_LH_C_0_8) in
                                                                                                (fun _lh_dummy_6_3 -> 
                                                                                                  ((mappend__d3_d9 h_1_2_5) (concat__d0 t_1_6_2)))))
                                                                                          | `LH_N -> 
                                                                                            (fun _lh_dummy_6_4 -> 
                                                                                              (`LH_N)))) in
                                                                                        (_lh_listcomp_fun_2_8 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_7))))
                                                                                    | _ -> 
                                                                                      (let rec _lh_matchIdent_3_9 = _lh_solve_arg1_0 in
                                                                                        (match _lh_matchIdent_3_9 with
                                                                                          | `LH_P2(_lh_solve_LH_P2_0_0, _lh_solve_LH_P2_1_0) -> 
                                                                                            (let rec rs_1 = ((relevant__d0 _lh_solve_LH_P2_0_0) _lh_solve_arg3_0) in
                                                                                              (if (not (null__d0 rs_1)) then
                                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1)
                                                                                              else
                                                                                                (((ask__d0 _lh_solve_LH_P2_1_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                          | _ -> 
                                                                                            (failwith "error"))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_4_0 = _lh_solve_arg1_0 in
                                                                                    (match _lh_matchIdent_4_0 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1, _lh_solve_LH_P2_1_1) -> 
                                                                                        (let rec rs_2 = ((relevant__d0 _lh_solve_LH_P2_0_1) _lh_solve_arg3_0) in
                                                                                          (if (not (null__d0 rs_2)) then
                                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2)
                                                                                          else
                                                                                            (((ask__d0 _lh_solve_LH_P2_1_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_4_1 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_4_1 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_2, _lh_solve_LH_P2_1_2) -> 
                                                                                    (let rec rs_3 = ((relevant__d0 _lh_solve_LH_P2_0_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null__d0 rs_3)) then
                                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3)
                                                                                      else
                                                                                        (((ask__d0 _lh_solve_LH_P2_1_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_4_2 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_4_2 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_3, _lh_solve_LH_P2_1_3) -> 
                                                                                (let rec rs_4 = ((relevant__d0 _lh_solve_LH_P2_0_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null__d0 rs_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_4_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_4_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_4, _lh_solve_LH_P2_1_4) -> 
                                                                            (let rec rs_5 = ((relevant__d0 _lh_solve_LH_P2_0_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_4_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_4_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_5, _lh_solve_LH_P2_1_5) -> 
                                                                        (let rec rs_6 = ((relevant__d0 _lh_solve_LH_P2_0_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_4_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_4_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_6, _lh_solve_LH_P2_1_6) -> 
                                                                    (let rec rs_7 = ((relevant__d0 _lh_solve_LH_P2_0_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_4_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_4_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_7, _lh_solve_LH_P2_1_7) -> 
                                                                (let rec rs_8 = ((relevant__d0 _lh_solve_LH_P2_0_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_4_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_4_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_8, _lh_solve_LH_P2_1_8) -> 
                                                            (let rec rs_9 = ((relevant__d0 _lh_solve_LH_P2_0_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_4_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_4_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_9, _lh_solve_LH_P2_1_9) -> 
                                                        (let rec rs_1_0 = ((relevant__d0 _lh_solve_LH_P2_0_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_1_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_4_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_4_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_1_0, _lh_solve_LH_P2_1_1_0) -> 
                                                    (let rec rs_1_1 = ((relevant__d0 _lh_solve_LH_P2_0_1_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_1_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_1_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error")))))
                                    | _ -> 
                                      (match _lh_solve_arg3_0 with
                                        | `Term(_lh_solve_Term_0_2, _lh_solve_Term_1_2) -> 
                                          (match _lh_solve_Term_0_2 with
                                            | `LH_C(_lh_solve_LH_C_0_9, _lh_solve_LH_C_1_9) -> 
                                              (match _lh_solve_LH_C_0_9 with
                                                | 'a' -> 
                                                  (match _lh_solve_LH_C_1_9 with
                                                    | `LH_C(_lh_solve_LH_C_0_1_0, _lh_solve_LH_C_1_1_0) -> 
                                                      (match _lh_solve_LH_C_0_1_0 with
                                                        | 'n' -> 
                                                          (match _lh_solve_LH_C_1_1_0 with
                                                            | `LH_C(_lh_solve_LH_C_0_1_1, _lh_solve_LH_C_1_1_1) -> 
                                                              (match _lh_solve_LH_C_0_1_1 with
                                                                | 'd' -> 
                                                                  (match _lh_solve_LH_C_1_1_1 with
                                                                    | `LH_N -> 
                                                                      (match _lh_solve_Term_1_2 with
                                                                        | `LH_C(_lh_solve_LH_C_0_1_2, _lh_solve_LH_C_1_1_2) -> 
                                                                          (match _lh_solve_LH_C_1_1_2 with
                                                                            | `LH_C(_lh_solve_LH_C_0_1_3, _lh_solve_LH_C_1_1_3) -> 
                                                                              (match _lh_solve_LH_C_1_1_3 with
                                                                                | `LH_N -> 
                                                                                  (concat__d0 (let rec _lh_listcomp_fun_2_9 = (fun _lh_listcomp_fun_para_1_9 -> 
                                                                                    (match _lh_listcomp_fun_para_1_9 with
                                                                                      | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_8) -> 
                                                                                        (let rec t_1_6_3 = (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_1_8) in
                                                                                          (let rec h_1_2_6 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_7) _lh_solve_LH_C_0_1_3) in
                                                                                            (fun _lh_dummy_6_5 -> 
                                                                                              ((mappend__d3_d9 h_1_2_6) (concat__d0 t_1_6_3)))))
                                                                                      | `LH_N -> 
                                                                                        (fun _lh_dummy_6_6 -> 
                                                                                          (`LH_N)))) in
                                                                                    (_lh_listcomp_fun_2_9 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_1_2))))
                                                                                | _ -> 
                                                                                  (let rec _lh_matchIdent_5_0 = _lh_solve_arg1_0 in
                                                                                    (match _lh_matchIdent_5_0 with
                                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_1, _lh_solve_LH_P2_1_1_1) -> 
                                                                                        (let rec rs_1_2 = ((relevant__d0 _lh_solve_LH_P2_0_1_1) _lh_solve_arg3_0) in
                                                                                          (if (not (null__d0 rs_1_2)) then
                                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_2)
                                                                                          else
                                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                      | _ -> 
                                                                                        (failwith "error"))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_5_1 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_5_1 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_2, _lh_solve_LH_P2_1_1_2) -> 
                                                                                    (let rec rs_1_3 = ((relevant__d0 _lh_solve_LH_P2_0_1_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null__d0 rs_1_3)) then
                                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_3)
                                                                                      else
                                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_5_2 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_5_2 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_1_3, _lh_solve_LH_P2_1_1_3) -> 
                                                                                (let rec rs_1_4 = ((relevant__d0 _lh_solve_LH_P2_0_1_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null__d0 rs_1_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_5_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_5_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_1_4, _lh_solve_LH_P2_1_1_4) -> 
                                                                            (let rec rs_1_5 = ((relevant__d0 _lh_solve_LH_P2_0_1_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_1_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_1_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_5_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_5_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_1_5, _lh_solve_LH_P2_1_1_5) -> 
                                                                        (let rec rs_1_6 = ((relevant__d0 _lh_solve_LH_P2_0_1_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_1_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_1_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_5_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_5_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_1_6, _lh_solve_LH_P2_1_1_6) -> 
                                                                    (let rec rs_1_7 = ((relevant__d0 _lh_solve_LH_P2_0_1_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_1_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_1_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_5_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_5_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_1_7, _lh_solve_LH_P2_1_1_7) -> 
                                                                (let rec rs_1_8 = ((relevant__d0 _lh_solve_LH_P2_0_1_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_1_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_1_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_5_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_5_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_1_8, _lh_solve_LH_P2_1_1_8) -> 
                                                            (let rec rs_1_9 = ((relevant__d0 _lh_solve_LH_P2_0_1_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_1_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_1_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_1_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_5_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_5_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_1_9, _lh_solve_LH_P2_1_1_9) -> 
                                                        (let rec rs_2_0 = ((relevant__d0 _lh_solve_LH_P2_0_1_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_2_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_1_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_5_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_5_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_2_0, _lh_solve_LH_P2_1_2_0) -> 
                                                    (let rec rs_2_1 = ((relevant__d0 _lh_solve_LH_P2_0_2_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_2_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_2_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_6_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_6_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_2_1, _lh_solve_LH_P2_1_2_1) -> 
                                                (let rec rs_2_2 = ((relevant__d0 _lh_solve_LH_P2_0_2_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_2_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_2_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error")))))
                                | _ -> 
                                  (match _lh_solve_arg3_0 with
                                    | `Term(_lh_solve_Term_0_3, _lh_solve_Term_1_3) -> 
                                      (match _lh_solve_Term_0_3 with
                                        | `LH_C(_lh_solve_LH_C_0_1_4, _lh_solve_LH_C_1_1_4) -> 
                                          (match _lh_solve_LH_C_0_1_4 with
                                            | 'a' -> 
                                              (match _lh_solve_LH_C_1_1_4 with
                                                | `LH_C(_lh_solve_LH_C_0_1_5, _lh_solve_LH_C_1_1_5) -> 
                                                  (match _lh_solve_LH_C_0_1_5 with
                                                    | 'n' -> 
                                                      (match _lh_solve_LH_C_1_1_5 with
                                                        | `LH_C(_lh_solve_LH_C_0_1_6, _lh_solve_LH_C_1_1_6) -> 
                                                          (match _lh_solve_LH_C_0_1_6 with
                                                            | 'd' -> 
                                                              (match _lh_solve_LH_C_1_1_6 with
                                                                | `LH_N -> 
                                                                  (match _lh_solve_Term_1_3 with
                                                                    | `LH_C(_lh_solve_LH_C_0_1_7, _lh_solve_LH_C_1_1_7) -> 
                                                                      (match _lh_solve_LH_C_1_1_7 with
                                                                        | `LH_C(_lh_solve_LH_C_0_1_8, _lh_solve_LH_C_1_1_8) -> 
                                                                          (match _lh_solve_LH_C_1_1_8 with
                                                                            | `LH_N -> 
                                                                              (concat__d0 (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_2_0 -> 
                                                                                (match _lh_listcomp_fun_para_2_0 with
                                                                                  | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_1_9) -> 
                                                                                    (let rec t_1_6_4 = (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_1_9) in
                                                                                      (let rec h_1_2_7 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_8) _lh_solve_LH_C_0_1_8) in
                                                                                        (fun _lh_dummy_6_7 -> 
                                                                                          ((mappend__d3_d9 h_1_2_7) (concat__d0 t_1_6_4)))))
                                                                                  | `LH_N -> 
                                                                                    (fun _lh_dummy_6_8 -> 
                                                                                      (`LH_N)))) in
                                                                                (_lh_listcomp_fun_3_0 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_1_7))))
                                                                            | _ -> 
                                                                              (let rec _lh_matchIdent_6_1 = _lh_solve_arg1_0 in
                                                                                (match _lh_matchIdent_6_1 with
                                                                                  | `LH_P2(_lh_solve_LH_P2_0_2_2, _lh_solve_LH_P2_1_2_2) -> 
                                                                                    (let rec rs_2_3 = ((relevant__d0 _lh_solve_LH_P2_0_2_2) _lh_solve_arg3_0) in
                                                                                      (if (not (null__d0 rs_2_3)) then
                                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_3)
                                                                                      else
                                                                                        (((ask__d0 _lh_solve_LH_P2_1_2_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                                  | _ -> 
                                                                                    (failwith "error"))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_6_2 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_6_2 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_2_3, _lh_solve_LH_P2_1_2_3) -> 
                                                                                (let rec rs_2_4 = ((relevant__d0 _lh_solve_LH_P2_0_2_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null__d0 rs_2_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_2_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_6_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_6_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_2_4, _lh_solve_LH_P2_1_2_4) -> 
                                                                            (let rec rs_2_5 = ((relevant__d0 _lh_solve_LH_P2_0_2_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_2_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_2_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_6_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_6_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_2_5, _lh_solve_LH_P2_1_2_5) -> 
                                                                        (let rec rs_2_6 = ((relevant__d0 _lh_solve_LH_P2_0_2_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_2_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_2_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_6_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_6_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_2_6, _lh_solve_LH_P2_1_2_6) -> 
                                                                    (let rec rs_2_7 = ((relevant__d0 _lh_solve_LH_P2_0_2_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_2_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_2_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_6_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_6_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_2_7, _lh_solve_LH_P2_1_2_7) -> 
                                                                (let rec rs_2_8 = ((relevant__d0 _lh_solve_LH_P2_0_2_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_2_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_2_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_6_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_6_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_2_8, _lh_solve_LH_P2_1_2_8) -> 
                                                            (let rec rs_2_9 = ((relevant__d0 _lh_solve_LH_P2_0_2_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_2_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_2_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_2_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_6_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_6_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_2_9, _lh_solve_LH_P2_1_2_9) -> 
                                                        (let rec rs_3_0 = ((relevant__d0 _lh_solve_LH_P2_0_2_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_3_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_2_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_6_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_6_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_3_0, _lh_solve_LH_P2_1_3_0) -> 
                                                    (let rec rs_3_1 = ((relevant__d0 _lh_solve_LH_P2_0_3_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_3_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_3_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_7_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_7_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_3_1, _lh_solve_LH_P2_1_3_1) -> 
                                                (let rec rs_3_2 = ((relevant__d0 _lh_solve_LH_P2_0_3_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_3_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_3_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_7_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_7_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_3_2, _lh_solve_LH_P2_1_3_2) -> 
                                            (let rec rs_3_3 = ((relevant__d0 _lh_solve_LH_P2_0_3_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_3_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_3_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error")))))
                            | _ -> 
                              (match _lh_solve_arg3_0 with
                                | `Term(_lh_solve_Term_0_4, _lh_solve_Term_1_4) -> 
                                  (match _lh_solve_Term_0_4 with
                                    | `LH_C(_lh_solve_LH_C_0_1_9, _lh_solve_LH_C_1_1_9) -> 
                                      (match _lh_solve_LH_C_0_1_9 with
                                        | 'a' -> 
                                          (match _lh_solve_LH_C_1_1_9 with
                                            | `LH_C(_lh_solve_LH_C_0_2_0, _lh_solve_LH_C_1_2_0) -> 
                                              (match _lh_solve_LH_C_0_2_0 with
                                                | 'n' -> 
                                                  (match _lh_solve_LH_C_1_2_0 with
                                                    | `LH_C(_lh_solve_LH_C_0_2_1, _lh_solve_LH_C_1_2_1) -> 
                                                      (match _lh_solve_LH_C_0_2_1 with
                                                        | 'd' -> 
                                                          (match _lh_solve_LH_C_1_2_1 with
                                                            | `LH_N -> 
                                                              (match _lh_solve_Term_1_4 with
                                                                | `LH_C(_lh_solve_LH_C_0_2_2, _lh_solve_LH_C_1_2_2) -> 
                                                                  (match _lh_solve_LH_C_1_2_2 with
                                                                    | `LH_C(_lh_solve_LH_C_0_2_3, _lh_solve_LH_C_1_2_3) -> 
                                                                      (match _lh_solve_LH_C_1_2_3 with
                                                                        | `LH_N -> 
                                                                          (concat__d0 (let rec _lh_listcomp_fun_3_1 = (fun _lh_listcomp_fun_para_2_1 -> 
                                                                            (match _lh_listcomp_fun_para_2_1 with
                                                                              | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_2_0) -> 
                                                                                (let rec t_1_6_5 = (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_2_0) in
                                                                                  (let rec h_1_2_8 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_1_9) _lh_solve_LH_C_0_2_3) in
                                                                                    (fun _lh_dummy_6_9 -> 
                                                                                      ((mappend__d3_d9 h_1_2_8) (concat__d0 t_1_6_5)))))
                                                                              | `LH_N -> 
                                                                                (fun _lh_dummy_7_0 -> 
                                                                                  (`LH_N)))) in
                                                                            (_lh_listcomp_fun_3_1 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2_2))))
                                                                        | _ -> 
                                                                          (let rec _lh_matchIdent_7_2 = _lh_solve_arg1_0 in
                                                                            (match _lh_matchIdent_7_2 with
                                                                              | `LH_P2(_lh_solve_LH_P2_0_3_3, _lh_solve_LH_P2_1_3_3) -> 
                                                                                (let rec rs_3_4 = ((relevant__d0 _lh_solve_LH_P2_0_3_3) _lh_solve_arg3_0) in
                                                                                  (if (not (null__d0 rs_3_4)) then
                                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_4)
                                                                                  else
                                                                                    (((ask__d0 _lh_solve_LH_P2_1_3_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                              | _ -> 
                                                                                (failwith "error"))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_7_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_7_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_3_4, _lh_solve_LH_P2_1_3_4) -> 
                                                                            (let rec rs_3_5 = ((relevant__d0 _lh_solve_LH_P2_0_3_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_3_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_3_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_7_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_7_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_3_5, _lh_solve_LH_P2_1_3_5) -> 
                                                                        (let rec rs_3_6 = ((relevant__d0 _lh_solve_LH_P2_0_3_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_3_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_3_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_7_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_7_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_3_6, _lh_solve_LH_P2_1_3_6) -> 
                                                                    (let rec rs_3_7 = ((relevant__d0 _lh_solve_LH_P2_0_3_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_3_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_3_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_7_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_7_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_3_7, _lh_solve_LH_P2_1_3_7) -> 
                                                                (let rec rs_3_8 = ((relevant__d0 _lh_solve_LH_P2_0_3_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_3_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_3_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_7_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_7_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_3_8, _lh_solve_LH_P2_1_3_8) -> 
                                                            (let rec rs_3_9 = ((relevant__d0 _lh_solve_LH_P2_0_3_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_3_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_3_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_3_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_7_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_7_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_3_9, _lh_solve_LH_P2_1_3_9) -> 
                                                        (let rec rs_4_0 = ((relevant__d0 _lh_solve_LH_P2_0_3_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_4_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_3_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_7_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_7_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_4_0, _lh_solve_LH_P2_1_4_0) -> 
                                                    (let rec rs_4_1 = ((relevant__d0 _lh_solve_LH_P2_0_4_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_4_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_4_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_8_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_8_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_4_1, _lh_solve_LH_P2_1_4_1) -> 
                                                (let rec rs_4_2 = ((relevant__d0 _lh_solve_LH_P2_0_4_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_4_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_4_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_8_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_8_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_4_2, _lh_solve_LH_P2_1_4_2) -> 
                                            (let rec rs_4_3 = ((relevant__d0 _lh_solve_LH_P2_0_4_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_4_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_4_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_8_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_8_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_4_3, _lh_solve_LH_P2_1_4_3) -> 
                                        (let rec rs_4_4 = ((relevant__d0 _lh_solve_LH_P2_0_4_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_4_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_4_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error")))))
                        | _ -> 
                          (match _lh_solve_arg3_0 with
                            | `Term(_lh_solve_Term_0_5, _lh_solve_Term_1_5) -> 
                              (match _lh_solve_Term_0_5 with
                                | `LH_C(_lh_solve_LH_C_0_2_4, _lh_solve_LH_C_1_2_4) -> 
                                  (match _lh_solve_LH_C_0_2_4 with
                                    | 'a' -> 
                                      (match _lh_solve_LH_C_1_2_4 with
                                        | `LH_C(_lh_solve_LH_C_0_2_5, _lh_solve_LH_C_1_2_5) -> 
                                          (match _lh_solve_LH_C_0_2_5 with
                                            | 'n' -> 
                                              (match _lh_solve_LH_C_1_2_5 with
                                                | `LH_C(_lh_solve_LH_C_0_2_6, _lh_solve_LH_C_1_2_6) -> 
                                                  (match _lh_solve_LH_C_0_2_6 with
                                                    | 'd' -> 
                                                      (match _lh_solve_LH_C_1_2_6 with
                                                        | `LH_N -> 
                                                          (match _lh_solve_Term_1_5 with
                                                            | `LH_C(_lh_solve_LH_C_0_2_7, _lh_solve_LH_C_1_2_7) -> 
                                                              (match _lh_solve_LH_C_1_2_7 with
                                                                | `LH_C(_lh_solve_LH_C_0_2_8, _lh_solve_LH_C_1_2_8) -> 
                                                                  (match _lh_solve_LH_C_1_2_8 with
                                                                    | `LH_N -> 
                                                                      (concat__d0 (let rec _lh_listcomp_fun_3_2 = (fun _lh_listcomp_fun_para_2_2 -> 
                                                                        (match _lh_listcomp_fun_para_2_2 with
                                                                          | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_1) -> 
                                                                            (let rec t_1_6_6 = (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_2_1) in
                                                                              (let rec h_1_2_9 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_0) _lh_solve_LH_C_0_2_8) in
                                                                                (fun _lh_dummy_7_1 -> 
                                                                                  ((mappend__d3_d9 h_1_2_9) (concat__d0 t_1_6_6)))))
                                                                          | `LH_N -> 
                                                                            (fun _lh_dummy_7_2 -> 
                                                                              (`LH_N)))) in
                                                                        (_lh_listcomp_fun_3_2 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_2_7))))
                                                                    | _ -> 
                                                                      (let rec _lh_matchIdent_8_3 = _lh_solve_arg1_0 in
                                                                        (match _lh_matchIdent_8_3 with
                                                                          | `LH_P2(_lh_solve_LH_P2_0_4_4, _lh_solve_LH_P2_1_4_4) -> 
                                                                            (let rec rs_4_5 = ((relevant__d0 _lh_solve_LH_P2_0_4_4) _lh_solve_arg3_0) in
                                                                              (if (not (null__d0 rs_4_5)) then
                                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_5)
                                                                              else
                                                                                (((ask__d0 _lh_solve_LH_P2_1_4_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                          | _ -> 
                                                                            (failwith "error"))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_8_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_8_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_4_5, _lh_solve_LH_P2_1_4_5) -> 
                                                                        (let rec rs_4_6 = ((relevant__d0 _lh_solve_LH_P2_0_4_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_4_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_4_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_8_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_8_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_4_6, _lh_solve_LH_P2_1_4_6) -> 
                                                                    (let rec rs_4_7 = ((relevant__d0 _lh_solve_LH_P2_0_4_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_4_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_4_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_8_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_8_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_4_7, _lh_solve_LH_P2_1_4_7) -> 
                                                                (let rec rs_4_8 = ((relevant__d0 _lh_solve_LH_P2_0_4_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_4_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_4_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_8_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_8_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_4_8, _lh_solve_LH_P2_1_4_8) -> 
                                                            (let rec rs_4_9 = ((relevant__d0 _lh_solve_LH_P2_0_4_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_4_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_4_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_4_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_8_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_8_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_4_9, _lh_solve_LH_P2_1_4_9) -> 
                                                        (let rec rs_5_0 = ((relevant__d0 _lh_solve_LH_P2_0_4_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_5_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_4_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_8_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_8_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_5_0, _lh_solve_LH_P2_1_5_0) -> 
                                                    (let rec rs_5_1 = ((relevant__d0 _lh_solve_LH_P2_0_5_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_5_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_5_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_9_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_9_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_5_1, _lh_solve_LH_P2_1_5_1) -> 
                                                (let rec rs_5_2 = ((relevant__d0 _lh_solve_LH_P2_0_5_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_5_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_5_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_9_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_9_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_5_2, _lh_solve_LH_P2_1_5_2) -> 
                                            (let rec rs_5_3 = ((relevant__d0 _lh_solve_LH_P2_0_5_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_5_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_5_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_9_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_9_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_5_3, _lh_solve_LH_P2_1_5_3) -> 
                                        (let rec rs_5_4 = ((relevant__d0 _lh_solve_LH_P2_0_5_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_5_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_5_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_9_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_9_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_5_4, _lh_solve_LH_P2_1_5_4) -> 
                                    (let rec rs_5_5 = ((relevant__d0 _lh_solve_LH_P2_0_5_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_5_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_5_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error")))))
                    | _ -> 
                      (match _lh_solve_arg3_0 with
                        | `Term(_lh_solve_Term_0_6, _lh_solve_Term_1_6) -> 
                          (match _lh_solve_Term_0_6 with
                            | `LH_C(_lh_solve_LH_C_0_2_9, _lh_solve_LH_C_1_2_9) -> 
                              (match _lh_solve_LH_C_0_2_9 with
                                | 'a' -> 
                                  (match _lh_solve_LH_C_1_2_9 with
                                    | `LH_C(_lh_solve_LH_C_0_3_0, _lh_solve_LH_C_1_3_0) -> 
                                      (match _lh_solve_LH_C_0_3_0 with
                                        | 'n' -> 
                                          (match _lh_solve_LH_C_1_3_0 with
                                            | `LH_C(_lh_solve_LH_C_0_3_1, _lh_solve_LH_C_1_3_1) -> 
                                              (match _lh_solve_LH_C_0_3_1 with
                                                | 'd' -> 
                                                  (match _lh_solve_LH_C_1_3_1 with
                                                    | `LH_N -> 
                                                      (match _lh_solve_Term_1_6 with
                                                        | `LH_C(_lh_solve_LH_C_0_3_2, _lh_solve_LH_C_1_3_2) -> 
                                                          (match _lh_solve_LH_C_1_3_2 with
                                                            | `LH_C(_lh_solve_LH_C_0_3_3, _lh_solve_LH_C_1_3_3) -> 
                                                              (match _lh_solve_LH_C_1_3_3 with
                                                                | `LH_N -> 
                                                                  (concat__d0 (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_2_3 -> 
                                                                    (match _lh_listcomp_fun_para_2_3 with
                                                                      | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_2) -> 
                                                                        (let rec t_1_6_7 = (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_2_2) in
                                                                          (let rec h_1_3_0 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_1) _lh_solve_LH_C_0_3_3) in
                                                                            (fun _lh_dummy_7_3 -> 
                                                                              ((mappend__d3_d9 h_1_3_0) (concat__d0 t_1_6_7)))))
                                                                      | `LH_N -> 
                                                                        (fun _lh_dummy_7_4 -> 
                                                                          (`LH_N)))) in
                                                                    (_lh_listcomp_fun_3_3 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3_2))))
                                                                | _ -> 
                                                                  (let rec _lh_matchIdent_9_4 = _lh_solve_arg1_0 in
                                                                    (match _lh_matchIdent_9_4 with
                                                                      | `LH_P2(_lh_solve_LH_P2_0_5_5, _lh_solve_LH_P2_1_5_5) -> 
                                                                        (let rec rs_5_6 = ((relevant__d0 _lh_solve_LH_P2_0_5_5) _lh_solve_arg3_0) in
                                                                          (if (not (null__d0 rs_5_6)) then
                                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_6)
                                                                          else
                                                                            (((ask__d0 _lh_solve_LH_P2_1_5_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                      | _ -> 
                                                                        (failwith "error"))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_9_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_9_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_5_6, _lh_solve_LH_P2_1_5_6) -> 
                                                                    (let rec rs_5_7 = ((relevant__d0 _lh_solve_LH_P2_0_5_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_5_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_5_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_9_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_9_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_5_7, _lh_solve_LH_P2_1_5_7) -> 
                                                                (let rec rs_5_8 = ((relevant__d0 _lh_solve_LH_P2_0_5_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_5_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_5_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_9_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_9_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_5_8, _lh_solve_LH_P2_1_5_8) -> 
                                                            (let rec rs_5_9 = ((relevant__d0 _lh_solve_LH_P2_0_5_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_5_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_5_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_5_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_9_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_9_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_5_9, _lh_solve_LH_P2_1_5_9) -> 
                                                        (let rec rs_6_0 = ((relevant__d0 _lh_solve_LH_P2_0_5_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_6_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_5_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_9_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_9_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_6_0, _lh_solve_LH_P2_1_6_0) -> 
                                                    (let rec rs_6_1 = ((relevant__d0 _lh_solve_LH_P2_0_6_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_6_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_6_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_0_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_1_0_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_6_1, _lh_solve_LH_P2_1_6_1) -> 
                                                (let rec rs_6_2 = ((relevant__d0 _lh_solve_LH_P2_0_6_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_6_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_6_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_0_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_1_0_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_6_2, _lh_solve_LH_P2_1_6_2) -> 
                                            (let rec rs_6_3 = ((relevant__d0 _lh_solve_LH_P2_0_6_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_6_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_6_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_0_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_1_0_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_6_3, _lh_solve_LH_P2_1_6_3) -> 
                                        (let rec rs_6_4 = ((relevant__d0 _lh_solve_LH_P2_0_6_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_6_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_6_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_0_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_1_0_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_6_4, _lh_solve_LH_P2_1_6_4) -> 
                                    (let rec rs_6_5 = ((relevant__d0 _lh_solve_LH_P2_0_6_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_6_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_6_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_0_4 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_1_0_4 with
                              | `LH_P2(_lh_solve_LH_P2_0_6_5, _lh_solve_LH_P2_1_6_5) -> 
                                (let rec rs_6_6 = ((relevant__d0 _lh_solve_LH_P2_0_6_5) _lh_solve_arg3_0) in
                                  (if (not (null__d0 rs_6_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_6_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error")))))
                | _ -> 
                  (match _lh_solve_arg3_0 with
                    | `Term(_lh_solve_Term_0_7, _lh_solve_Term_1_7) -> 
                      (match _lh_solve_Term_0_7 with
                        | `LH_C(_lh_solve_LH_C_0_3_4, _lh_solve_LH_C_1_3_4) -> 
                          (match _lh_solve_LH_C_0_3_4 with
                            | 'a' -> 
                              (match _lh_solve_LH_C_1_3_4 with
                                | `LH_C(_lh_solve_LH_C_0_3_5, _lh_solve_LH_C_1_3_5) -> 
                                  (match _lh_solve_LH_C_0_3_5 with
                                    | 'n' -> 
                                      (match _lh_solve_LH_C_1_3_5 with
                                        | `LH_C(_lh_solve_LH_C_0_3_6, _lh_solve_LH_C_1_3_6) -> 
                                          (match _lh_solve_LH_C_0_3_6 with
                                            | 'd' -> 
                                              (match _lh_solve_LH_C_1_3_6 with
                                                | `LH_N -> 
                                                  (match _lh_solve_Term_1_7 with
                                                    | `LH_C(_lh_solve_LH_C_0_3_7, _lh_solve_LH_C_1_3_7) -> 
                                                      (match _lh_solve_LH_C_1_3_7 with
                                                        | `LH_C(_lh_solve_LH_C_0_3_8, _lh_solve_LH_C_1_3_8) -> 
                                                          (match _lh_solve_LH_C_1_3_8 with
                                                            | `LH_N -> 
                                                              (concat__d0 (let rec _lh_listcomp_fun_3_4 = (fun _lh_listcomp_fun_para_2_4 -> 
                                                                (match _lh_listcomp_fun_para_2_4 with
                                                                  | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_3) -> 
                                                                    (let rec t_1_6_8 = (_lh_listcomp_fun_3_4 _lh_listcomp_fun_ls_t_2_3) in
                                                                      (let rec h_1_3_1 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_2) _lh_solve_LH_C_0_3_8) in
                                                                        (fun _lh_dummy_7_5 -> 
                                                                          ((mappend__d3_d9 h_1_3_1) (concat__d0 t_1_6_8)))))
                                                                  | `LH_N -> 
                                                                    (fun _lh_dummy_7_6 -> 
                                                                      (`LH_N)))) in
                                                                (_lh_listcomp_fun_3_4 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_3_7))))
                                                            | _ -> 
                                                              (let rec _lh_matchIdent_1_0_5 = _lh_solve_arg1_0 in
                                                                (match _lh_matchIdent_1_0_5 with
                                                                  | `LH_P2(_lh_solve_LH_P2_0_6_6, _lh_solve_LH_P2_1_6_6) -> 
                                                                    (let rec rs_6_7 = ((relevant__d0 _lh_solve_LH_P2_0_6_6) _lh_solve_arg3_0) in
                                                                      (if (not (null__d0 rs_6_7)) then
                                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_7)
                                                                      else
                                                                        (((ask__d0 _lh_solve_LH_P2_1_6_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                                  | _ -> 
                                                                    (failwith "error"))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_0_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_1_0_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_6_7, _lh_solve_LH_P2_1_6_7) -> 
                                                                (let rec rs_6_8 = ((relevant__d0 _lh_solve_LH_P2_0_6_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_6_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_6_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_0_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_1_0_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_6_8, _lh_solve_LH_P2_1_6_8) -> 
                                                            (let rec rs_6_9 = ((relevant__d0 _lh_solve_LH_P2_0_6_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_6_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_6_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_6_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_0_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_1_0_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_6_9, _lh_solve_LH_P2_1_6_9) -> 
                                                        (let rec rs_7_0 = ((relevant__d0 _lh_solve_LH_P2_0_6_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_7_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_6_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_0_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_1_0_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_7_0, _lh_solve_LH_P2_1_7_0) -> 
                                                    (let rec rs_7_1 = ((relevant__d0 _lh_solve_LH_P2_0_7_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_7_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_7_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_1_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_1_1_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_7_1, _lh_solve_LH_P2_1_7_1) -> 
                                                (let rec rs_7_2 = ((relevant__d0 _lh_solve_LH_P2_0_7_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_7_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_7_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_1_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_1_1_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_7_2, _lh_solve_LH_P2_1_7_2) -> 
                                            (let rec rs_7_3 = ((relevant__d0 _lh_solve_LH_P2_0_7_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_7_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_7_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_1_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_1_1_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_7_3, _lh_solve_LH_P2_1_7_3) -> 
                                        (let rec rs_7_4 = ((relevant__d0 _lh_solve_LH_P2_0_7_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_7_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_7_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_1_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_1_1_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_7_4, _lh_solve_LH_P2_1_7_4) -> 
                                    (let rec rs_7_5 = ((relevant__d0 _lh_solve_LH_P2_0_7_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_7_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_7_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_1_4 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_1_1_4 with
                              | `LH_P2(_lh_solve_LH_P2_0_7_5, _lh_solve_LH_P2_1_7_5) -> 
                                (let rec rs_7_6 = ((relevant__d0 _lh_solve_LH_P2_0_7_5) _lh_solve_arg3_0) in
                                  (if (not (null__d0 rs_7_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_7_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_1_1_5 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_1_1_5 with
                          | `LH_P2(_lh_solve_LH_P2_0_7_6, _lh_solve_LH_P2_1_7_6) -> 
                            (let rec rs_7_7 = ((relevant__d0 _lh_solve_LH_P2_0_7_6) _lh_solve_arg3_0) in
                              (if (not (null__d0 rs_7_7)) then
                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_7)
                              else
                                (((ask__d0 _lh_solve_LH_P2_1_7_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error")))))
            | _ -> 
              (match _lh_solve_arg3_0 with
                | `Term(_lh_solve_Term_0_8, _lh_solve_Term_1_8) -> 
                  (match _lh_solve_Term_0_8 with
                    | `LH_C(_lh_solve_LH_C_0_3_9, _lh_solve_LH_C_1_3_9) -> 
                      (match _lh_solve_LH_C_0_3_9 with
                        | 'a' -> 
                          (match _lh_solve_LH_C_1_3_9 with
                            | `LH_C(_lh_solve_LH_C_0_4_0, _lh_solve_LH_C_1_4_0) -> 
                              (match _lh_solve_LH_C_0_4_0 with
                                | 'n' -> 
                                  (match _lh_solve_LH_C_1_4_0 with
                                    | `LH_C(_lh_solve_LH_C_0_4_1, _lh_solve_LH_C_1_4_1) -> 
                                      (match _lh_solve_LH_C_0_4_1 with
                                        | 'd' -> 
                                          (match _lh_solve_LH_C_1_4_1 with
                                            | `LH_N -> 
                                              (match _lh_solve_Term_1_8 with
                                                | `LH_C(_lh_solve_LH_C_0_4_2, _lh_solve_LH_C_1_4_2) -> 
                                                  (match _lh_solve_LH_C_1_4_2 with
                                                    | `LH_C(_lh_solve_LH_C_0_4_3, _lh_solve_LH_C_1_4_3) -> 
                                                      (match _lh_solve_LH_C_1_4_3 with
                                                        | `LH_N -> 
                                                          (concat__d0 (let rec _lh_listcomp_fun_3_5 = (fun _lh_listcomp_fun_para_2_5 -> 
                                                            (match _lh_listcomp_fun_para_2_5 with
                                                              | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_4) -> 
                                                                (let rec t_1_6_9 = (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_4) in
                                                                  (let rec h_1_3_2 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_3) _lh_solve_LH_C_0_4_3) in
                                                                    (fun _lh_dummy_7_7 -> 
                                                                      ((mappend__d3_d9 h_1_3_2) (concat__d0 t_1_6_9)))))
                                                              | `LH_N -> 
                                                                (fun _lh_dummy_7_8 -> 
                                                                  (`LH_N)))) in
                                                            (_lh_listcomp_fun_3_5 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_4_2))))
                                                        | _ -> 
                                                          (let rec _lh_matchIdent_1_1_6 = _lh_solve_arg1_0 in
                                                            (match _lh_matchIdent_1_1_6 with
                                                              | `LH_P2(_lh_solve_LH_P2_0_7_7, _lh_solve_LH_P2_1_7_7) -> 
                                                                (let rec rs_7_8 = ((relevant__d0 _lh_solve_LH_P2_0_7_7) _lh_solve_arg3_0) in
                                                                  (if (not (null__d0 rs_7_8)) then
                                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_8)
                                                                  else
                                                                    (((ask__d0 _lh_solve_LH_P2_1_7_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                              | _ -> 
                                                                (failwith "error"))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_1_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_1_1_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_7_8, _lh_solve_LH_P2_1_7_8) -> 
                                                            (let rec rs_7_9 = ((relevant__d0 _lh_solve_LH_P2_0_7_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_7_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_7_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_7_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_1_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_1_1_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_7_9, _lh_solve_LH_P2_1_7_9) -> 
                                                        (let rec rs_8_0 = ((relevant__d0 _lh_solve_LH_P2_0_7_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_8_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_7_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_1_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_1_1_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_8_0, _lh_solve_LH_P2_1_8_0) -> 
                                                    (let rec rs_8_1 = ((relevant__d0 _lh_solve_LH_P2_0_8_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_8_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_8_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_2_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_1_2_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_8_1, _lh_solve_LH_P2_1_8_1) -> 
                                                (let rec rs_8_2 = ((relevant__d0 _lh_solve_LH_P2_0_8_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_8_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_8_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_2_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_1_2_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_8_2, _lh_solve_LH_P2_1_8_2) -> 
                                            (let rec rs_8_3 = ((relevant__d0 _lh_solve_LH_P2_0_8_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_8_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_8_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_2_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_1_2_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_8_3, _lh_solve_LH_P2_1_8_3) -> 
                                        (let rec rs_8_4 = ((relevant__d0 _lh_solve_LH_P2_0_8_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_8_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_8_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_2_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_1_2_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_8_4, _lh_solve_LH_P2_1_8_4) -> 
                                    (let rec rs_8_5 = ((relevant__d0 _lh_solve_LH_P2_0_8_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_8_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_8_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_2_4 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_1_2_4 with
                              | `LH_P2(_lh_solve_LH_P2_0_8_5, _lh_solve_LH_P2_1_8_5) -> 
                                (let rec rs_8_6 = ((relevant__d0 _lh_solve_LH_P2_0_8_5) _lh_solve_arg3_0) in
                                  (if (not (null__d0 rs_8_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_8_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_1_2_5 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_1_2_5 with
                          | `LH_P2(_lh_solve_LH_P2_0_8_6, _lh_solve_LH_P2_1_8_6) -> 
                            (let rec rs_8_7 = ((relevant__d0 _lh_solve_LH_P2_0_8_6) _lh_solve_arg3_0) in
                              (if (not (null__d0 rs_8_7)) then
                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_7)
                              else
                                (((ask__d0 _lh_solve_LH_P2_1_8_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_1_2_6 = _lh_solve_arg1_0 in
                    (match _lh_matchIdent_1_2_6 with
                      | `LH_P2(_lh_solve_LH_P2_0_8_7, _lh_solve_LH_P2_1_8_7) -> 
                        (let rec rs_8_8 = ((relevant__d0 _lh_solve_LH_P2_0_8_7) _lh_solve_arg3_0) in
                          (if (not (null__d0 rs_8_8)) then
                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_8)
                          else
                            (((ask__d0 _lh_solve_LH_P2_1_8_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                      | _ -> 
                        (failwith "error")))))
        | _ -> 
          (match _lh_solve_arg3_0 with
            | `Term(_lh_solve_Term_0_9, _lh_solve_Term_1_9) -> 
              (match _lh_solve_Term_0_9 with
                | `LH_C(_lh_solve_LH_C_0_4_4, _lh_solve_LH_C_1_4_4) -> 
                  (match _lh_solve_LH_C_0_4_4 with
                    | 'a' -> 
                      (match _lh_solve_LH_C_1_4_4 with
                        | `LH_C(_lh_solve_LH_C_0_4_5, _lh_solve_LH_C_1_4_5) -> 
                          (match _lh_solve_LH_C_0_4_5 with
                            | 'n' -> 
                              (match _lh_solve_LH_C_1_4_5 with
                                | `LH_C(_lh_solve_LH_C_0_4_6, _lh_solve_LH_C_1_4_6) -> 
                                  (match _lh_solve_LH_C_0_4_6 with
                                    | 'd' -> 
                                      (match _lh_solve_LH_C_1_4_6 with
                                        | `LH_N -> 
                                          (match _lh_solve_Term_1_9 with
                                            | `LH_C(_lh_solve_LH_C_0_4_7, _lh_solve_LH_C_1_4_7) -> 
                                              (match _lh_solve_LH_C_1_4_7 with
                                                | `LH_C(_lh_solve_LH_C_0_4_8, _lh_solve_LH_C_1_4_8) -> 
                                                  (match _lh_solve_LH_C_1_4_8 with
                                                    | `LH_N -> 
                                                      (concat__d0 (let rec _lh_listcomp_fun_3_6 = (fun _lh_listcomp_fun_para_2_6 -> 
                                                        (match _lh_listcomp_fun_para_2_6 with
                                                          | `LH_C(_lh_listcomp_fun_ls_h_2_4, _lh_listcomp_fun_ls_t_2_5) -> 
                                                            (let rec t_1_7_0 = (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_2_5) in
                                                              (let rec h_1_3_3 = (((solve__d0 _lh_solve_arg1_0) _lh_listcomp_fun_ls_h_2_4) _lh_solve_LH_C_0_4_8) in
                                                                (fun _lh_dummy_7_9 -> 
                                                                  ((mappend__d3_d9 h_1_3_3) (concat__d0 t_1_7_0)))))
                                                          | `LH_N -> 
                                                            (fun _lh_dummy_8_0 -> 
                                                              (`LH_N)))) in
                                                        (_lh_listcomp_fun_3_6 (((solve__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_LH_C_0_4_7))))
                                                    | _ -> 
                                                      (let rec _lh_matchIdent_1_2_7 = _lh_solve_arg1_0 in
                                                        (match _lh_matchIdent_1_2_7 with
                                                          | `LH_P2(_lh_solve_LH_P2_0_8_8, _lh_solve_LH_P2_1_8_8) -> 
                                                            (let rec rs_8_9 = ((relevant__d0 _lh_solve_LH_P2_0_8_8) _lh_solve_arg3_0) in
                                                              (if (not (null__d0 rs_8_9)) then
                                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_8_9)
                                                              else
                                                                (((ask__d0 _lh_solve_LH_P2_1_8_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                          | _ -> 
                                                            (failwith "error"))))
                                                | _ -> 
                                                  (let rec _lh_matchIdent_1_2_8 = _lh_solve_arg1_0 in
                                                    (match _lh_matchIdent_1_2_8 with
                                                      | `LH_P2(_lh_solve_LH_P2_0_8_9, _lh_solve_LH_P2_1_8_9) -> 
                                                        (let rec rs_9_0 = ((relevant__d0 _lh_solve_LH_P2_0_8_9) _lh_solve_arg3_0) in
                                                          (if (not (null__d0 rs_9_0)) then
                                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_0)
                                                          else
                                                            (((ask__d0 _lh_solve_LH_P2_1_8_9) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                      | _ -> 
                                                        (failwith "error"))))
                                            | _ -> 
                                              (let rec _lh_matchIdent_1_2_9 = _lh_solve_arg1_0 in
                                                (match _lh_matchIdent_1_2_9 with
                                                  | `LH_P2(_lh_solve_LH_P2_0_9_0, _lh_solve_LH_P2_1_9_0) -> 
                                                    (let rec rs_9_1 = ((relevant__d0 _lh_solve_LH_P2_0_9_0) _lh_solve_arg3_0) in
                                                      (if (not (null__d0 rs_9_1)) then
                                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_1)
                                                      else
                                                        (((ask__d0 _lh_solve_LH_P2_1_9_0) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                                  | _ -> 
                                                    (failwith "error"))))
                                        | _ -> 
                                          (let rec _lh_matchIdent_1_3_0 = _lh_solve_arg1_0 in
                                            (match _lh_matchIdent_1_3_0 with
                                              | `LH_P2(_lh_solve_LH_P2_0_9_1, _lh_solve_LH_P2_1_9_1) -> 
                                                (let rec rs_9_2 = ((relevant__d0 _lh_solve_LH_P2_0_9_1) _lh_solve_arg3_0) in
                                                  (if (not (null__d0 rs_9_2)) then
                                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_2)
                                                  else
                                                    (((ask__d0 _lh_solve_LH_P2_1_9_1) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                              | _ -> 
                                                (failwith "error"))))
                                    | _ -> 
                                      (let rec _lh_matchIdent_1_3_1 = _lh_solve_arg1_0 in
                                        (match _lh_matchIdent_1_3_1 with
                                          | `LH_P2(_lh_solve_LH_P2_0_9_2, _lh_solve_LH_P2_1_9_2) -> 
                                            (let rec rs_9_3 = ((relevant__d0 _lh_solve_LH_P2_0_9_2) _lh_solve_arg3_0) in
                                              (if (not (null__d0 rs_9_3)) then
                                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_3)
                                              else
                                                (((ask__d0 _lh_solve_LH_P2_1_9_2) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                          | _ -> 
                                            (failwith "error"))))
                                | _ -> 
                                  (let rec _lh_matchIdent_1_3_2 = _lh_solve_arg1_0 in
                                    (match _lh_matchIdent_1_3_2 with
                                      | `LH_P2(_lh_solve_LH_P2_0_9_3, _lh_solve_LH_P2_1_9_3) -> 
                                        (let rec rs_9_4 = ((relevant__d0 _lh_solve_LH_P2_0_9_3) _lh_solve_arg3_0) in
                                          (if (not (null__d0 rs_9_4)) then
                                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_4)
                                          else
                                            (((ask__d0 _lh_solve_LH_P2_1_9_3) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                      | _ -> 
                                        (failwith "error"))))
                            | _ -> 
                              (let rec _lh_matchIdent_1_3_3 = _lh_solve_arg1_0 in
                                (match _lh_matchIdent_1_3_3 with
                                  | `LH_P2(_lh_solve_LH_P2_0_9_4, _lh_solve_LH_P2_1_9_4) -> 
                                    (let rec rs_9_5 = ((relevant__d0 _lh_solve_LH_P2_0_9_4) _lh_solve_arg3_0) in
                                      (if (not (null__d0 rs_9_5)) then
                                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_5)
                                      else
                                        (((ask__d0 _lh_solve_LH_P2_1_9_4) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                                  | _ -> 
                                    (failwith "error"))))
                        | _ -> 
                          (let rec _lh_matchIdent_1_3_4 = _lh_solve_arg1_0 in
                            (match _lh_matchIdent_1_3_4 with
                              | `LH_P2(_lh_solve_LH_P2_0_9_5, _lh_solve_LH_P2_1_9_5) -> 
                                (let rec rs_9_6 = ((relevant__d0 _lh_solve_LH_P2_0_9_5) _lh_solve_arg3_0) in
                                  (if (not (null__d0 rs_9_6)) then
                                    ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_6)
                                  else
                                    (((ask__d0 _lh_solve_LH_P2_1_9_5) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                              | _ -> 
                                (failwith "error"))))
                    | _ -> 
                      (let rec _lh_matchIdent_1_3_5 = _lh_solve_arg1_0 in
                        (match _lh_matchIdent_1_3_5 with
                          | `LH_P2(_lh_solve_LH_P2_0_9_6, _lh_solve_LH_P2_1_9_6) -> 
                            (let rec rs_9_7 = ((relevant__d0 _lh_solve_LH_P2_0_9_6) _lh_solve_arg3_0) in
                              (if (not (null__d0 rs_9_7)) then
                                ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_7)
                              else
                                (((ask__d0 _lh_solve_LH_P2_1_9_6) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                          | _ -> 
                            (failwith "error"))))
                | _ -> 
                  (let rec _lh_matchIdent_1_3_6 = _lh_solve_arg1_0 in
                    (match _lh_matchIdent_1_3_6 with
                      | `LH_P2(_lh_solve_LH_P2_0_9_7, _lh_solve_LH_P2_1_9_7) -> 
                        (let rec rs_9_8 = ((relevant__d0 _lh_solve_LH_P2_0_9_7) _lh_solve_arg3_0) in
                          (if (not (null__d0 rs_9_8)) then
                            ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_8)
                          else
                            (((ask__d0 _lh_solve_LH_P2_1_9_7) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_1_3_7 = _lh_solve_arg1_0 in
                (match _lh_matchIdent_1_3_7 with
                  | `LH_P2(_lh_solve_LH_P2_0_9_8, _lh_solve_LH_P2_1_9_8) -> 
                    (let rec rs_9_9 = ((relevant__d0 _lh_solve_LH_P2_0_9_8) _lh_solve_arg3_0) in
                      (if (not (null__d0 rs_9_9)) then
                        ((((lookUp__d0 _lh_solve_arg1_0) _lh_solve_arg2_0) _lh_solve_arg3_0) rs_9_9)
                      else
                        (((ask__d0 _lh_solve_LH_P2_1_9_8) _lh_solve_arg2_0) _lh_solve_arg3_0)))
                  | _ -> 
                    (failwith "error"))))))
and sortKey__d0 _lh_sortKey_arg1_1 =
  (let rec insertKey_1 = (fun _lh_insertKey_arg1_1 _lh_insertKey_arg2_1 -> 
    (match _lh_insertKey_arg2_1 with
      | `LH_N -> 
        (`LH_C(_lh_insertKey_arg1_1, (`LH_N)))
      | _ -> 
        (match _lh_insertKey_arg1_1 with
          | `LH_P2(_lh_insertKey_LH_P2_0_2, _lh_insertKey_LH_P2_1_2) -> 
            (match _lh_insertKey_arg2_1 with
              | `LH_C(_lh_insertKey_LH_C_0_1, _lh_insertKey_LH_C_1_1) -> 
                (match _lh_insertKey_LH_C_0_1 with
                  | `LH_P2(_lh_insertKey_LH_P2_0_3, _lh_insertKey_LH_P2_1_3) -> 
                    (if (_lh_insertKey_LH_P2_0_2 <= _lh_insertKey_LH_P2_0_3) then
                      (`LH_C((`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_2, _lh_insertKey_LH_P2_1_2)), (`LH_P2(_lh_insertKey_LH_P2_0_3, _lh_insertKey_LH_P2_1_3)))), _lh_insertKey_LH_C_1_1))
                    else
                      (`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_3, _lh_insertKey_LH_P2_1_3)), ((insertKey_1 (`LH_P2(_lh_insertKey_LH_P2_0_2, _lh_insertKey_LH_P2_1_2))) _lh_insertKey_LH_C_1_1))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))) in
    (((foldr__d0 insertKey_1) (`LH_N)) _lh_sortKey_arg1_1))
and sortKey__d1 _lh_sortKey_arg1_0 =
  (let rec insertKey_0 = (fun _lh_insertKey_arg1_0 _lh_insertKey_arg2_0 -> 
    (match _lh_insertKey_arg2_0 with
      | `LH_N -> 
        (`LH_C(_lh_insertKey_arg1_0, (`LH_N)))
      | _ -> 
        (match _lh_insertKey_arg1_0 with
          | `LH_P2(_lh_insertKey_LH_P2_0_0, _lh_insertKey_LH_P2_1_0) -> 
            (match _lh_insertKey_arg2_0 with
              | `LH_C(_lh_insertKey_LH_C_0_0, _lh_insertKey_LH_C_1_0) -> 
                (match _lh_insertKey_LH_C_0_0 with
                  | `LH_P2(_lh_insertKey_LH_P2_0_1, _lh_insertKey_LH_P2_1_1) -> 
                    (if (_lh_insertKey_LH_P2_0_0 <= _lh_insertKey_LH_P2_0_1) then
                      (`LH_C((`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_0, _lh_insertKey_LH_P2_1_0)), (`LH_P2(_lh_insertKey_LH_P2_0_1, _lh_insertKey_LH_P2_1_1)))), _lh_insertKey_LH_C_1_0))
                    else
                      (`LH_C((`LH_P2(_lh_insertKey_LH_P2_0_1, _lh_insertKey_LH_P2_1_1)), ((insertKey_0 (`LH_P2(_lh_insertKey_LH_P2_0_0, _lh_insertKey_LH_P2_1_0))) _lh_insertKey_LH_C_1_0))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))) in
    (((foldr__d1 insertKey_0) (`LH_N)) _lh_sortKey_arg1_0))
and split__d0 _lh_split_arg1_3 _lh_split_arg2_3 _lh_split_arg3_3 _lh_split_arg4_3 =
  (`Term(_lh_split_arg3_3, (`LH_C((_lh_split_arg2_3 ((takeWhile__d0 (fun x_6 -> 
    (not ((strEq__d1 x_6) _lh_split_arg3_3)))) _lh_split_arg1_3)), (`LH_C((_lh_split_arg4_3 (tail__d0 ((dropWhile__d0 (fun x_7 -> 
    (not ((strEq__d0 x_7) _lh_split_arg3_3)))) _lh_split_arg1_3))), (`LH_N)))))))
and split__d1 _lh_split_arg1_0 _lh_split_arg2_0 _lh_split_arg3_0 _lh_split_arg4_0 =
  (`Term(_lh_split_arg3_0, (`LH_C((_lh_split_arg2_0 ((takeWhile__d1 (fun x_0 -> 
    (not ((strEq__d3 x_0) _lh_split_arg3_0)))) _lh_split_arg1_0)), (`LH_C((_lh_split_arg4_0 (tail__d1 ((dropWhile__d1 (fun x_1 -> 
    (not ((strEq__d2 x_1) _lh_split_arg3_0)))) _lh_split_arg1_0))), (`LH_N)))))))
and split__d2 _lh_split_arg1_4 _lh_split_arg2_4 _lh_split_arg3_4 _lh_split_arg4_4 =
  (`Term(_lh_split_arg3_4, (`LH_C((_lh_split_arg2_4 ((takeWhile__d2 (fun x_9 -> 
    (not ((strEq__d5 x_9) _lh_split_arg3_4)))) _lh_split_arg1_4)), (`LH_C((_lh_split_arg4_4 (tail__d2 ((dropWhile__d2 (fun x_1_0 -> 
    (not ((strEq__d4 x_1_0) _lh_split_arg3_4)))) _lh_split_arg1_4))), (`LH_N)))))))
and split__d3 _lh_split_arg1_2 _lh_split_arg2_2 _lh_split_arg3_2 _lh_split_arg4_2 =
  (`Term(_lh_split_arg3_2, (`LH_C((_lh_split_arg2_2 ((takeWhile__d3 (fun x_4 -> 
    (not ((strEq__d7 x_4) _lh_split_arg3_2)))) _lh_split_arg1_2)), (`LH_C((_lh_split_arg4_2 (tail__d3 ((dropWhile__d3 (fun x_5 -> 
    (not ((strEq__d6 x_5) _lh_split_arg3_2)))) _lh_split_arg1_2))), (`LH_N)))))))
and split__d4 _lh_split_arg1_5 _lh_split_arg2_5 _lh_split_arg3_5 _lh_split_arg4_5 =
  (`Term(_lh_split_arg3_5, (`LH_C((_lh_split_arg2_5 ((takeWhile__d4 (fun x_1_2 -> 
    (not ((strEq__d9 x_1_2) _lh_split_arg3_5)))) _lh_split_arg1_5)), (`LH_C((_lh_split_arg4_5 (tail__d4 ((dropWhile__d4 (fun x_1_3 -> 
    (not ((strEq__d8 x_1_3) _lh_split_arg3_5)))) _lh_split_arg1_5))), (`LH_N)))))))
and split__d5 _lh_split_arg1_7 _lh_split_arg2_7 _lh_split_arg3_7 _lh_split_arg4_7 =
  (`Term(_lh_split_arg3_7, (`LH_C((_lh_split_arg2_7 ((takeWhile__d5 (fun x_1_8 -> 
    (not ((strEq__d1_d1 x_1_8) _lh_split_arg3_7)))) _lh_split_arg1_7)), (`LH_C((_lh_split_arg4_7 (tail__d7 ((dropWhile__d6 (fun x_1_9 -> 
    (not ((strEq__d1_d0 x_1_9) _lh_split_arg3_7)))) _lh_split_arg1_7))), (`LH_N)))))))
and split__d6 _lh_split_arg1_1 _lh_split_arg2_1 _lh_split_arg3_1 _lh_split_arg4_1 =
  (`Term(_lh_split_arg3_1, (`LH_C((_lh_split_arg2_1 ((takeWhile__d6 (fun x_2 -> 
    (not ((strEq__d1_d3 x_2) _lh_split_arg3_1)))) _lh_split_arg1_1)), (`LH_C((_lh_split_arg4_1 (tail__d8 ((dropWhile__d7 (fun x_3 -> 
    (not ((strEq__d1_d2 x_3) _lh_split_arg3_1)))) _lh_split_arg1_1))), (`LH_N)))))))
and split__d7 _lh_split_arg1_6 _lh_split_arg2_6 _lh_split_arg3_6 _lh_split_arg4_6 =
  (`Term(_lh_split_arg3_6, (`LH_C((_lh_split_arg2_6 ((takeWhile__d7 (fun x_1_5 -> 
    (not ((strEq__d1_d5 x_1_5) _lh_split_arg3_6)))) _lh_split_arg1_6)), (`LH_C((_lh_split_arg4_6 (tail__d9 ((dropWhile__d8 (fun x_1_6 -> 
    (not ((strEq__d1_d4 x_1_6) _lh_split_arg3_6)))) _lh_split_arg1_6))), (`LH_N)))))))
and strip__d0 _lh_strip_arg1_0 _lh_strip_arg2_0 =
  (match _lh_strip_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_strip_LH_C_0_0, _lh_strip_LH_C_1_0) -> 
      (match _lh_strip_LH_C_0_0 with
        | `Question(_lh_strip_Question_0_0) -> 
          (if ((inList__d1_d3 _lh_strip_Question_0_0) _lh_strip_arg1_0) then
            ((strip__d0 _lh_strip_arg1_0) _lh_strip_LH_C_1_0)
          else
            (`LH_C((`Question(_lh_strip_Question_0_0)), ((strip__d0 (let rec _lh_inList_LH_C_1_2_1 = _lh_strip_arg1_0 in
              (let rec _lh_inList_LH_C_0_2_1 = _lh_strip_Question_0_0 in
                (fun _lh_inList_arg1_3_4 -> 
                  (if (_lh_inList_arg1_3_4 = _lh_inList_LH_C_0_2_1) then
                    true
                  else
                    ((inList__d1_d3 _lh_inList_arg1_3_4) _lh_inList_LH_C_1_2_1)))))) _lh_strip_LH_C_1_0))))
        | _ -> 
          (`LH_C(_lh_strip_LH_C_0_0, ((strip__d0 _lh_strip_arg1_0) _lh_strip_LH_C_1_0))))
    | _ -> 
      (failwith "error"))
and subst__d0 _lh_subst_arg1_1 _lh_subst_arg2_1 =
  (match _lh_subst_arg2_1 with
    | `Term(_lh_subst_Term_0_1, _lh_subst_Term_1_1) -> 
      (let rec _lh_showPhrase_Term_1_1 = (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_0 -> 
        (match _lh_listcomp_fun_para_1_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_8) -> 
            (`LH_C(((subst__d0 _lh_subst_arg1_1) _lh_listcomp_fun_ls_h_7), (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_7 _lh_subst_Term_1_1)) in
        (let rec _lh_showPhrase_Term_0_1 = _lh_subst_Term_0_1 in
          (fun _lh_dummy_1_7 -> 
            (match _lh_showPhrase_Term_1_1 with
              | `LH_N -> 
                _lh_showPhrase_Term_0_1
              | `LH_C(_lh_showPhrase_LH_C_0_2, _lh_showPhrase_LH_C_1_2) -> 
                (match _lh_showPhrase_LH_C_1_2 with
                  | `LH_C(_lh_showPhrase_LH_C_0_3, _lh_showPhrase_LH_C_1_3) -> 
                    (match _lh_showPhrase_LH_C_1_3 with
                      | `LH_N -> 
                        ((mappend__d2_d0 ((mappend__d2_d1 ((mappend__d2_d2 ((mappend__d2_d3 (showPhrase__d0 _lh_showPhrase_LH_C_0_2)) (let rec t_7_8 = (fun ys_7_1 -> 
                          ys_7_1) in
                          (let rec h_7_4 = ' ' in
                            (fun ys_7_2 -> 
                              (`LH_C(h_7_4, ((mappend__d2_d2 t_7_8) ys_7_2)))))))) _lh_showPhrase_Term_0_1)) (let rec t_7_9 = (fun ys_7_3 -> 
                          ys_7_3) in
                          (let rec h_7_5 = ' ' in
                            (fun ys_7_4 -> 
                              (`LH_C(h_7_5, ((mappend__d2_d0 t_7_9) ys_7_4)))))))) (showPhrase__d0 _lh_showPhrase_LH_C_0_3))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
    | `Var(_lh_subst_Var_0_1) -> 
      (let rec lookup_1 = ((find__d0 _lh_subst_arg1_1) _lh_subst_Var_0_1) in
        (if (fails__d0 lookup_1) then
          (let rec _lh_showPhrase_Var_0_1 = _lh_subst_Var_0_1 in
            (fun _lh_dummy_1_8 -> 
              _lh_showPhrase_Var_0_1))
        else
          ((subst__d0 _lh_subst_arg1_1) (answer__d0 lookup_1))))
    | _ -> 
      (failwith "error"))
and subst__d1 _lh_subst_arg1_3 _lh_subst_arg2_3 =
  (match _lh_subst_arg2_3 with
    | `Term(_lh_subst_Term_0_3, _lh_subst_Term_1_3) -> 
      (let rec _lh_showPhrase_Term_1_2 = (let rec _lh_listcomp_fun_4_7 = (fun _lh_listcomp_fun_para_3_4 -> 
        (match _lh_listcomp_fun_para_3_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_3, _lh_listcomp_fun_ls_t_3_4) -> 
            (`LH_C(((subst__d1 _lh_subst_arg1_3) _lh_listcomp_fun_ls_h_3_3), (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_3_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_7 _lh_subst_Term_1_3)) in
        (let rec _lh_showPhrase_Term_0_2 = _lh_subst_Term_0_3 in
          (fun _lh_dummy_9_3 -> 
            (match _lh_showPhrase_Term_1_2 with
              | `LH_N -> 
                _lh_showPhrase_Term_0_2
              | `LH_C(_lh_showPhrase_LH_C_0_4, _lh_showPhrase_LH_C_1_4) -> 
                (match _lh_showPhrase_LH_C_1_4 with
                  | `LH_C(_lh_showPhrase_LH_C_0_5, _lh_showPhrase_LH_C_1_5) -> 
                    (match _lh_showPhrase_LH_C_1_5 with
                      | `LH_N -> 
                        ((mappend__d3_d5 ((mappend__d3_d6 ((mappend__d3_d7 ((mappend__d3_d8 (showPhrase__d2 _lh_showPhrase_LH_C_0_4)) (let rec t_1_8_9 = (fun ys_1_4_3 -> 
                          ys_1_4_3) in
                          (let rec h_1_4_7 = ' ' in
                            (fun ys_1_4_4 -> 
                              (`LH_C(h_1_4_7, ((mappend__d3_d7 t_1_8_9) ys_1_4_4)))))))) _lh_showPhrase_Term_0_2)) (let rec t_1_9_0 = (fun ys_1_4_5 -> 
                          ys_1_4_5) in
                          (let rec h_1_4_8 = ' ' in
                            (fun ys_1_4_6 -> 
                              (`LH_C(h_1_4_8, ((mappend__d3_d5 t_1_9_0) ys_1_4_6)))))))) (showPhrase__d2 _lh_showPhrase_LH_C_0_5))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))))
    | `Var(_lh_subst_Var_0_3) -> 
      (let rec lookup_4 = ((find__d2 _lh_subst_arg1_3) _lh_subst_Var_0_3) in
        (if (fails__d1 lookup_4) then
          (let rec _lh_showPhrase_Var_0_2 = _lh_subst_Var_0_3 in
            (fun _lh_dummy_9_4 -> 
              _lh_showPhrase_Var_0_2))
        else
          ((subst__d1 _lh_subst_arg1_3) (answer__d2 lookup_4))))
    | _ -> 
      (failwith "error"))
and subst__d2 _lh_subst_arg1_0 _lh_subst_arg2_0 =
  (match _lh_subst_arg2_0 with
    | `Term(_lh_subst_Term_0_0, _lh_subst_Term_1_0) -> 
      (`Term(_lh_subst_Term_0_0, (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (`LH_C(((subst__d2 _lh_subst_arg1_0) _lh_listcomp_fun_ls_h_3), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_5 _lh_subst_Term_1_0))))
    | `Var(_lh_subst_Var_0_0) -> 
      (let rec lookup_0 = ((find__d3 _lh_subst_arg1_0) _lh_subst_Var_0_0) in
        (if (fails__d2 lookup_0) then
          (`Var(_lh_subst_Var_0_0))
        else
          ((subst__d2 _lh_subst_arg1_0) (answer__d3 lookup_0))))
    | _ -> 
      (failwith "error"))
and subst__d3 _lh_subst_arg1_2 _lh_subst_arg2_2 =
  (match _lh_subst_arg2_2 with
    | `Term(_lh_subst_Term_0_2, _lh_subst_Term_1_2) -> 
      (`Term(_lh_subst_Term_0_2, (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_1_1 -> 
        (match _lh_listcomp_fun_para_1_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_1_0) -> 
            (`LH_C(((subst__d3 _lh_subst_arg1_2) _lh_listcomp_fun_ls_h_9), (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_0 _lh_subst_Term_1_2))))
    | `Var(_lh_subst_Var_0_2) -> 
      (let rec lookup_2 = ((find__d4 _lh_subst_arg1_2) _lh_subst_Var_0_2) in
        (if (fails__d5 lookup_2) then
          (`Var(_lh_subst_Var_0_2))
        else
          ((subst__d3 _lh_subst_arg1_2) (answer__d6 lookup_2))))
    | _ -> 
      (failwith "error"))
and subst__d4 _lh_subst_arg1_4 _lh_subst_arg2_4 =
  (match _lh_subst_arg2_4 with
    | `Term(_lh_subst_Term_0_4, _lh_subst_Term_1_4) -> 
      (`Term(_lh_subst_Term_0_4, (let rec _lh_listcomp_fun_4_8 = (fun _lh_listcomp_fun_para_3_5 -> 
        (match _lh_listcomp_fun_para_3_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_4, _lh_listcomp_fun_ls_t_3_5) -> 
            (`LH_C(((subst__d4 _lh_subst_arg1_4) _lh_listcomp_fun_ls_h_3_4), (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_3_5)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_8 _lh_subst_Term_1_4))))
    | `Var(_lh_subst_Var_0_4) -> 
      (let rec lookup_5 = ((find__d5 _lh_subst_arg1_4) _lh_subst_Var_0_4) in
        (if (fails__d6 lookup_5) then
          (`Var(_lh_subst_Var_0_4))
        else
          ((subst__d4 _lh_subst_arg1_4) (answer__d7 lookup_5))))
    | _ -> 
      (failwith "error"))
and take__d1 n_5 ls_3_4 _lh_popOutId_0_6 _lh_popOutId_1_1 _lh_popOutId_2_1 _lh_popOutId_3_1 _lh_popOutId_4_1 =
  (if (n_5 > 0) then
    (match ls_3_4 with
      | `LH_C(h_1_3_7, t_1_7_4) -> 
        (let rec _lh_listcomp_fun_ls_t_3_2 = ((take__d1 (n_5 - 1)) t_1_7_4) in
          (let rec _lh_listcomp_fun_ls_h_3_1 = h_1_3_7 in
            (let rec ty_1 = (_lh_popOutId_0_6 _lh_listcomp_fun_ls_t_3_2) in
              (let rec hy_1 = (`Var(_lh_listcomp_fun_ls_h_3_1)) in
                (let rec t_1_7_5 = ((zip__d0 _lh_popOutId_2_1) ty_1) in
                  (let rec h_1_3_8 = (`LH_P2(_lh_popOutId_1_1, hy_1)) in
                    ((_lh_popOutId_3_1 h_1_3_8) (((foldr__d1 _lh_popOutId_3_1) _lh_popOutId_4_1) t_1_7_5))))))))
      | `LH_N -> 
        _lh_popOutId_4_1)
  else
    _lh_popOutId_4_1)
and take__d3 n_1 ls_1_6 _lh_popOutId_0_3 =
  (if (n_1 > 0) then
    (match ls_1_6 with
      | `LH_C(h_3_0, t_3_0) -> 
        (let rec _lh_break_LH_C_1_1 = ((take__d3 (n_1 - 1)) t_3_0) in
          (let rec _lh_break_LH_C_0_1 = h_3_0 in
            (if (_lh_popOutId_0_3 _lh_break_LH_C_0_1) then
              (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_1 in
                (fun _lh_dummy_5 -> 
                  (lines__d1 _lh_lines_LH_C_1_0)))))
            else
              (let rec _lh_matchIdent_9 = ((break__d2 _lh_popOutId_0_3) _lh_break_LH_C_1_1) in
                (match _lh_matchIdent_9 with
                  | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
                    (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
                  | _ -> 
                    (failwith "error"))))))
      | `LH_N -> 
        (`LH_P2((`LH_N), (fun _lh_dummy_6 _lh_listcomp_fun_6 -> 
          (`LH_N)))))
  else
    (`LH_P2((`LH_N), (fun _lh_dummy_7 _lh_listcomp_fun_7 -> 
      (`LH_N)))))
and testExpert_nofib__d0 _lh_testExpert_nofib_arg1_0 =
  (let rec animals_0 = (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('o', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('p', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('w', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('g', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('r', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('e', (`LH_C('o', (`LH_C('w', (`LH_C('|', (`LH_C('m', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('i', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('i', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('l', (`LH_C('k', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('f', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('g', (`LH_C('g', (`LH_C('s', (`LH_C('|', (`LH_C('X', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('s', (`LH_C('w', (`LH_C('i', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec contents_0 = (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('N', (`LH_C('o', (`LH_C('|', (`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('|', (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_C('b', (`LH_C('e', (`LH_C('|', (`LH_C('A', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('g', (`LH_C('e', (`LH_C('r', (`LH_C('?', (`LH_C('|', (`LH_C('U', (`LH_C('n', (`LH_C('h', (`LH_C('u', (`LH_C('h', (`LH_C('|', (`LH_C('Y', (`LH_C('e', (`LH_C('p', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('y', (`LH_C('|', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      ((fun _lh_funcomp_x_0 -> 
        ((fun _lh_funcomp_x_1 -> 
          (length__d0 ((process__d0 animals_0) _lh_funcomp_x_1))) ((take__d3 (_lh_testExpert_nofib_arg1_0 + 9999)) _lh_funcomp_x_0))) contents_0)))
and updateList__d0 _lh_updateList_arg1_0 _lh_updateList_arg2_0 =
  let rec unique_0 = (fun _lh_unique_arg1_0 -> 
    (match _lh_unique_arg1_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_unique_LH_C_0_0, _lh_unique_LH_C_1_0) -> 
        (match _lh_unique_LH_C_1_0 with
          | `LH_N -> 
            (`LH_C(_lh_unique_LH_C_0_0, (`LH_N)))
          | _ -> 
            (match _lh_unique_LH_C_0_0 with
              | `LH_P2(_lh_unique_LH_P2_0_0, _lh_unique_LH_P2_1_0) -> 
                (match _lh_unique_LH_C_1_0 with
                  | `LH_C(_lh_unique_LH_C_0_1, _lh_unique_LH_C_1_1) -> 
                    (match _lh_unique_LH_C_0_1 with
                      | `LH_P2(_lh_unique_LH_P2_0_1, _lh_unique_LH_P2_1_1) -> 
                        (if (_lh_unique_LH_P2_0_0 = _lh_unique_LH_P2_0_1) then
                          (unique_0 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_1, _lh_unique_LH_P2_1_1)), _lh_unique_LH_C_1_1)))
                        else
                          (`LH_C((`LH_P2(_lh_unique_LH_P2_0_0, _lh_unique_LH_P2_1_0)), (unique_0 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_1, _lh_unique_LH_P2_1_1)), _lh_unique_LH_C_1_1))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
      | _ -> 
        (failwith "error")))
  and balance_0 = (fun _lh_balance_arg1_0 -> 
    (match _lh_balance_arg1_0 with
      | `LH_N -> 
        (fun _lh_find_arg2_1 -> 
          (failure__d8 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N)))))))))))))))))))))
      | _ -> 
        (let rec m_0 = ((length__d1 _lh_balance_arg1_0) / 2) in
          (let rec left_0 = (balance_0 ((take__d0 m_0) _lh_balance_arg1_0)) in
            (let rec right_0 = (balance_0 ((drop__d0 (m_0 + 1)) _lh_balance_arg1_0)) in
              (let rec _lh_find_Fork_2_1 = right_0 in
                (let rec _lh_find_Fork_1_1 = ((atIndex__d0 m_0) _lh_balance_arg1_0) in
                  (let rec _lh_find_Fork_0_1 = left_0 in
                    (fun _lh_find_arg2_2 -> 
                      (match _lh_find_Fork_1_1 with
                        | `LH_P2(_lh_find_LH_P2_0_1, _lh_find_LH_P2_1_1) -> 
                          (if (_lh_find_arg2_2 < _lh_find_LH_P2_0_1) then
                            ((find__d6 _lh_find_Fork_0_1) _lh_find_arg2_2)
                          else
                            (if (_lh_find_arg2_2 = _lh_find_LH_P2_0_1) then
                              (success__d1_d0 _lh_find_LH_P2_1_1)
                            else
                              (if (_lh_find_arg2_2 > _lh_find_LH_P2_0_1) then
                                ((find__d6 _lh_find_Fork_2_1) _lh_find_arg2_2)
                              else
                                ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
                        | _ -> 
                          (failwith "error")))))))))))
  in (balance_0 ((mergeKey__d0 (entries__d0 _lh_updateList_arg1_0)) (unique_0 (sortKey__d0 _lh_updateList_arg2_0))))
and updateList__d1 _lh_updateList_arg1_1 _lh_updateList_arg2_1 =
  let rec unique_1 = (fun _lh_unique_arg1_1 -> 
    (match _lh_unique_arg1_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_unique_LH_C_0_2, _lh_unique_LH_C_1_2) -> 
        (match _lh_unique_LH_C_1_2 with
          | `LH_N -> 
            (`LH_C(_lh_unique_LH_C_0_2, (`LH_N)))
          | _ -> 
            (match _lh_unique_LH_C_0_2 with
              | `LH_P2(_lh_unique_LH_P2_0_2, _lh_unique_LH_P2_1_2) -> 
                (match _lh_unique_LH_C_1_2 with
                  | `LH_C(_lh_unique_LH_C_0_3, _lh_unique_LH_C_1_3) -> 
                    (match _lh_unique_LH_C_0_3 with
                      | `LH_P2(_lh_unique_LH_P2_0_3, _lh_unique_LH_P2_1_3) -> 
                        (if (_lh_unique_LH_P2_0_2 = _lh_unique_LH_P2_0_3) then
                          (unique_1 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_3, _lh_unique_LH_P2_1_3)), _lh_unique_LH_C_1_3)))
                        else
                          (`LH_C((`LH_P2(_lh_unique_LH_P2_0_2, _lh_unique_LH_P2_1_2)), (unique_1 (`LH_C((`LH_P2(_lh_unique_LH_P2_0_3, _lh_unique_LH_P2_1_3)), _lh_unique_LH_C_1_3))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
      | _ -> 
        (failwith "error")))
  and balance_1 = (fun _lh_balance_arg1_1 -> 
    (match _lh_balance_arg1_1 with
      | `LH_N -> 
        (fun _lh_find_arg2_7 -> 
          (failure__d3 (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_N)))))))))))))))))))))
      | _ -> 
        (let rec m_2 = ((length__d3 _lh_balance_arg1_1) / 2) in
          (let rec left_1 = (balance_1 ((take__d2 m_2) _lh_balance_arg1_1)) in
            (let rec right_1 = (balance_1 ((drop__d2 (m_2 + 1)) _lh_balance_arg1_1)) in
              (let rec _lh_find_Fork_2_5 = right_1 in
                (let rec _lh_find_Fork_1_5 = ((atIndex__d1 m_2) _lh_balance_arg1_1) in
                  (let rec _lh_find_Fork_0_5 = left_1 in
                    (fun _lh_find_arg2_8 -> 
                      (match _lh_find_Fork_1_5 with
                        | `LH_P2(_lh_find_LH_P2_0_5, _lh_find_LH_P2_1_5) -> 
                          (if (_lh_find_arg2_8 < _lh_find_LH_P2_0_5) then
                            ((find__d3 _lh_find_Fork_0_5) _lh_find_arg2_8)
                          else
                            (if (_lh_find_arg2_8 = _lh_find_LH_P2_0_5) then
                              (success__d3 _lh_find_LH_P2_1_5)
                            else
                              (if (_lh_find_arg2_8 > _lh_find_LH_P2_0_5) then
                                ((find__d3 _lh_find_Fork_2_5) _lh_find_arg2_8)
                              else
                                ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
                        | _ -> 
                          (failwith "error")))))))))))
  in (balance_1 ((mergeKey__d1 (entries__d1 _lh_updateList_arg1_1)) (unique_1 (sortKey__d1 _lh_updateList_arg2_1))))
and vars__d0 _lh_vars_arg1_0 =
  (let rec names_0 = (fun _lh_names_arg1_0 -> 
    (match _lh_names_arg1_0 with
      | `Var(_lh_names_Var_0_0) -> 
        (`LH_C(_lh_names_Var_0_0, (`LH_N)))
      | `Term(_lh_names_Term_0_0, _lh_names_Term_1_0) -> 
        (concat__d2 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_4 -> 
          (match _lh_listcomp_fun_para_4 with
            | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
              (let rec t_3_8 = (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_4) in
                (let rec h_3_8 = (names_0 _lh_listcomp_fun_ls_h_4) in
                  (fun _lh_dummy_1_0 -> 
                    ((mappend__d4_d3 h_3_8) (concat__d2 t_3_8)))))
            | `LH_N -> 
              (fun _lh_dummy_1_1 -> 
                (`LH_N)))) in
          (_lh_listcomp_fun_8 _lh_names_Term_1_0)))
      | _ -> 
        (failwith "error"))) in
    (nub__d1 (names_0 _lh_vars_arg1_0)))
and vars__d1 _lh_vars_arg1_1 =
  (let rec names_1 = (fun _lh_names_arg1_1 -> 
    (match _lh_names_arg1_1 with
      | `Var(_lh_names_Var_0_1) -> 
        (`LH_C(_lh_names_Var_0_1, (`LH_N)))
      | `Term(_lh_names_Term_0_1, _lh_names_Term_1_1) -> 
        (concat__d3 (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_1_6 -> 
          (match _lh_listcomp_fun_para_1_6 with
            | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_5) -> 
              (let rec t_1_5_8 = (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_1_5) in
                (let rec h_1_2_1 = (names_1 _lh_listcomp_fun_ls_h_1_4) in
                  (fun _lh_dummy_6_1 -> 
                    ((mappend__d4_d5 h_1_2_1) (concat__d3 t_1_5_8)))))
            | `LH_N -> 
              (fun _lh_dummy_6_2 -> 
                (`LH_N)))) in
          (_lh_listcomp_fun_2_6 _lh_names_Term_1_1)))
      | _ -> 
        (failwith "error"))) in
    (nub__d2 (names_1 _lh_vars_arg1_1)))
and words__d0 _lh_words_arg1_1 =
  (let rec _lh_matchIdent_8 = ((dropWhile__d5 isSpace__d0) _lh_words_arg1_1) in
    (_lh_matchIdent_8 99))
and words__d1 _lh_words_arg1_2 =
  (let rec _lh_matchIdent_1_4_7 = ((dropWhile__d9 isSpace__d2) _lh_words_arg1_2) in
    (_lh_matchIdent_1_4_7 99))
and words__d2 _lh_words_arg1_0 =
  (let rec _lh_matchIdent_7 = ((dropWhile__d1_d0 isSpace__d4) _lh_words_arg1_0) in
    (_lh_matchIdent_7 99))
and zip__d1 xs_1_8 ys_3_2 _lh_popOutId_0_1 =
  (match xs_1_8 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_3_2 with
        | `LH_C(hy_0, ty_0) -> 
          (let rec _lh_matchList_LH_C_1_0 = ((zip__d1 tx_1) ty_0) in
            (let rec _lh_matchList_LH_C_0_0 = (let rec _lh_matchList_LH_P2_1_0 = hy_0 in
              (let rec _lh_matchList_LH_P2_0_0 = hx_1 in
                (fun _lh_matchList_LH_C_1_1 _lh_matchList_arg1_0 -> 
                  (let rec res_0 = (((match__d0 _lh_matchList_arg1_0) _lh_matchList_LH_P2_0_0) _lh_matchList_LH_P2_1_0) in
                    (if (fails__d4 res_0) then
                      res_0
                    else
                      ((matchList__d0 (answer__d5 res_0)) _lh_matchList_LH_C_1_1)))))) in
              ((_lh_matchList_LH_C_0_0 _lh_matchList_LH_C_1_0) _lh_popOutId_0_1)))
        | `LH_N -> 
          (success__d4 _lh_popOutId_0_1))
    | `LH_N -> 
      (success__d4 _lh_popOutId_0_1));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Expert_nofib" (fun () -> ignore (let open Module_original in ((testExpert_nofib__d0 3))));
  Bench.Test.create ~name:"lumberhack_Expert_nofib" (fun () -> ignore (let open Module_lumberhack in ((testExpert_nofib__d0 3))));
  Bench.Test.create ~name:"lumberhack_pop_out_Expert_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testExpert_nofib__d0 3))));
])
