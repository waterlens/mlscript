(*
touch ./DigitsOfE1_nofib.mli && ocamlc ./DigitsOfE1_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./DigitsOfE1_nofib.ml -o "./DigitsOfE1_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./DigitsOfE1_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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

(* lumberhack *)
let rec abs__d0__d0 _lh_abs_arg1_1 =
  (if (_lh_abs_arg1_1 < 0) then
    (0 - _lh_abs_arg1_1)
  else
    _lh_abs_arg1_1);;
let rec abs__d1__d0 _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 < 0) then
    (0 - _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec aux__d0__d0 _lh_aux_arg1_0 =
  (lazy (`LH_C(1, (lazy (`LH_C(_lh_aux_arg1_0, (lazy (`LH_C(1, (aux__d0__d0 (_lh_aux_arg1_0 + 2)))))))))));;
let rec signum__d0__d0 _lh_signum_arg1_1 =
  (match _lh_signum_arg1_1 with
    | 0 -> 
      0
    | _ -> 
      (if (_lh_signum_arg1_1 > 0) then
        1
      else
        (0 - 1)));;
let rec signum__d1__d0 _lh_signum_arg1_0 =
  (match _lh_signum_arg1_0 with
    | 0 -> 
      0
    | _ -> 
      (if (_lh_signum_arg1_0 > 0) then
        1
      else
        (0 - 1)));;
let rec eContFrac__d0__d0 =
  (lazy (`LH_C(2, (aux__d0__d0 2))))
and ratTrans__d0__d0 _lh_ratTrans_arg1_0 _lh_ratTrans_arg2_0 =
  (match _lh_ratTrans_arg1_0 with
    | `LH_P4(_lh_ratTrans_LH_P4_0_0, _lh_ratTrans_LH_P4_1_0, _lh_ratTrans_LH_P4_2_0, _lh_ratTrans_LH_P4_3_0) -> 
      (let rec _lh_matchIdent_1 = (Lazy.force _lh_ratTrans_arg2_0) in
        (match _lh_matchIdent_1 with
          | `LH_N -> 
            (failwith "error")
          | `LH_C(_lh_ratTrans_LH_C_0_0, _lh_ratTrans_LH_C_1_0) -> 
            (if (_lh_ratTrans_LH_P4_3_0 = 0) then
              ((ratTrans__d0__d0 (`LH_P4(_lh_ratTrans_LH_P4_1_0, (_lh_ratTrans_LH_P4_0_0 + (_lh_ratTrans_LH_C_0_0 * _lh_ratTrans_LH_P4_1_0)), _lh_ratTrans_LH_P4_3_0, (_lh_ratTrans_LH_P4_2_0 + (_lh_ratTrans_LH_C_0_0 * _lh_ratTrans_LH_P4_3_0))))) _lh_ratTrans_LH_C_1_0)
            else
              (let rec q_0 = (_lh_ratTrans_LH_P4_1_0 / _lh_ratTrans_LH_P4_3_0) in
                (if (((((signum__d0__d0 _lh_ratTrans_LH_P4_2_0) = (signum__d1__d0 _lh_ratTrans_LH_P4_3_0)) || ((abs__d0__d0 _lh_ratTrans_LH_P4_2_0) < (abs__d1__d0 _lh_ratTrans_LH_P4_3_0))) && (((_lh_ratTrans_LH_P4_2_0 + _lh_ratTrans_LH_P4_3_0) * q_0) <= (_lh_ratTrans_LH_P4_0_0 + _lh_ratTrans_LH_P4_1_0))) && ((((_lh_ratTrans_LH_P4_2_0 + _lh_ratTrans_LH_P4_3_0) * q_0) + (_lh_ratTrans_LH_P4_2_0 + _lh_ratTrans_LH_P4_3_0)) > (_lh_ratTrans_LH_P4_0_0 + _lh_ratTrans_LH_P4_1_0))) then
                  (lazy (`LH_C(q_0, ((ratTrans__d0__d0 (`LH_P4(_lh_ratTrans_LH_P4_2_0, _lh_ratTrans_LH_P4_3_0, (_lh_ratTrans_LH_P4_0_0 - (q_0 * _lh_ratTrans_LH_P4_2_0)), (_lh_ratTrans_LH_P4_1_0 - (q_0 * _lh_ratTrans_LH_P4_3_0))))) (lazy (`LH_C(_lh_ratTrans_LH_C_0_0, _lh_ratTrans_LH_C_1_0)))))))
                else
                  ((ratTrans__d0__d0 (`LH_P4(_lh_ratTrans_LH_P4_1_0, (_lh_ratTrans_LH_P4_0_0 + (_lh_ratTrans_LH_C_0_0 * _lh_ratTrans_LH_P4_1_0)), _lh_ratTrans_LH_P4_3_0, (_lh_ratTrans_LH_P4_2_0 + (_lh_ratTrans_LH_C_0_0 * _lh_ratTrans_LH_P4_3_0))))) _lh_ratTrans_LH_C_1_0))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and takeDigits__d0__d0 _lh_takeDigits_arg1_0 _lh_takeDigits_arg2_0 =
  (if (_lh_takeDigits_arg1_0 > 0) then
    (let rec _lh_matchIdent_0 = (Lazy.force _lh_takeDigits_arg2_0) in
      (match _lh_matchIdent_0 with
        | `LH_N -> 
          (failwith "error")
        | `LH_C(_lh_takeDigits_LH_C_0_0, _lh_takeDigits_LH_C_1_0) -> 
          (`LH_C(_lh_takeDigits_LH_C_0_0, ((takeDigits__d0__d0 (_lh_takeDigits_arg1_0 - 1)) ((ratTrans__d0__d0 (`LH_P4(10, 0, 0, 1))) _lh_takeDigits_LH_C_1_0))))
        | _ -> 
          (failwith "error")))
  else
    (`LH_N))
and testDigitsOfE1_nofib__d0__d0 _lh_testDigitsOfE1_nofib_arg1_0 =
  ((takeDigits__d0__d0 _lh_testDigitsOfE1_nofib_arg1_0) eContFrac__d0__d0);;

(* lumberhack_pop_out *)
let rec abs__d0__d0__d0 _lh_abs_arg1_3 =
  (if (_lh_abs_arg1_3 < 0) then
    (0 - _lh_abs_arg1_3)
  else
    _lh_abs_arg1_3);;
let rec abs__d1__d0__d0 _lh_abs_arg1_2 =
  (if (_lh_abs_arg1_2 < 0) then
    (0 - _lh_abs_arg1_2)
  else
    _lh_abs_arg1_2);;
let rec aux__d0__d0__d0 _lh_aux_arg1_1 =
  (lazy (`LH_C(1, (lazy (`LH_C(_lh_aux_arg1_1, (lazy (`LH_C(1, (aux__d0__d0__d0 (_lh_aux_arg1_1 + 2)))))))))));;
let rec signum__d0__d0__d0 _lh_signum_arg1_3 =
  (match _lh_signum_arg1_3 with
    | 0 -> 
      0
    | _ -> 
      (if (_lh_signum_arg1_3 > 0) then
        1
      else
        (0 - 1)));;
let rec signum__d1__d0__d0 _lh_signum_arg1_2 =
  (match _lh_signum_arg1_2 with
    | 0 -> 
      0
    | _ -> 
      (if (_lh_signum_arg1_2 > 0) then
        1
      else
        (0 - 1)));;
let rec eContFrac__d0__d0__d0 =
  (lazy (`LH_C(2, (aux__d0__d0__d0 2))))
and ratTrans__d0__d0__d0 _lh_ratTrans_arg1_1 _lh_ratTrans_arg2_1 =
  (match _lh_ratTrans_arg1_1 with
    | `LH_P4(_lh_ratTrans_LH_P4_0_1, _lh_ratTrans_LH_P4_1_1, _lh_ratTrans_LH_P4_2_1, _lh_ratTrans_LH_P4_3_1) -> 
      (let rec _lh_matchIdent_2 = (Lazy.force _lh_ratTrans_arg2_1) in
        (match _lh_matchIdent_2 with
          | `LH_N -> 
            (failwith "error")
          | `LH_C(_lh_ratTrans_LH_C_0_1, _lh_ratTrans_LH_C_1_1) -> 
            (if (_lh_ratTrans_LH_P4_3_1 = 0) then
              ((ratTrans__d0__d0__d0 (`LH_P4(_lh_ratTrans_LH_P4_1_1, (_lh_ratTrans_LH_P4_0_1 + (_lh_ratTrans_LH_C_0_1 * _lh_ratTrans_LH_P4_1_1)), _lh_ratTrans_LH_P4_3_1, (_lh_ratTrans_LH_P4_2_1 + (_lh_ratTrans_LH_C_0_1 * _lh_ratTrans_LH_P4_3_1))))) _lh_ratTrans_LH_C_1_1)
            else
              (let rec q_1 = (_lh_ratTrans_LH_P4_1_1 / _lh_ratTrans_LH_P4_3_1) in
                (if (((((signum__d0__d0__d0 _lh_ratTrans_LH_P4_2_1) = (signum__d1__d0__d0 _lh_ratTrans_LH_P4_3_1)) || ((abs__d0__d0__d0 _lh_ratTrans_LH_P4_2_1) < (abs__d1__d0__d0 _lh_ratTrans_LH_P4_3_1))) && (((_lh_ratTrans_LH_P4_2_1 + _lh_ratTrans_LH_P4_3_1) * q_1) <= (_lh_ratTrans_LH_P4_0_1 + _lh_ratTrans_LH_P4_1_1))) && ((((_lh_ratTrans_LH_P4_2_1 + _lh_ratTrans_LH_P4_3_1) * q_1) + (_lh_ratTrans_LH_P4_2_1 + _lh_ratTrans_LH_P4_3_1)) > (_lh_ratTrans_LH_P4_0_1 + _lh_ratTrans_LH_P4_1_1))) then
                  (lazy (`LH_C(q_1, ((ratTrans__d0__d0__d0 (`LH_P4(_lh_ratTrans_LH_P4_2_1, _lh_ratTrans_LH_P4_3_1, (_lh_ratTrans_LH_P4_0_1 - (q_1 * _lh_ratTrans_LH_P4_2_1)), (_lh_ratTrans_LH_P4_1_1 - (q_1 * _lh_ratTrans_LH_P4_3_1))))) (lazy (`LH_C(_lh_ratTrans_LH_C_0_1, _lh_ratTrans_LH_C_1_1)))))))
                else
                  ((ratTrans__d0__d0__d0 (`LH_P4(_lh_ratTrans_LH_P4_1_1, (_lh_ratTrans_LH_P4_0_1 + (_lh_ratTrans_LH_C_0_1 * _lh_ratTrans_LH_P4_1_1)), _lh_ratTrans_LH_P4_3_1, (_lh_ratTrans_LH_P4_2_1 + (_lh_ratTrans_LH_C_0_1 * _lh_ratTrans_LH_P4_3_1))))) _lh_ratTrans_LH_C_1_1))))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and takeDigits__d0__d0__d0 _lh_takeDigits_arg1_1 _lh_takeDigits_arg2_1 =
  (if (_lh_takeDigits_arg1_1 > 0) then
    (let rec _lh_matchIdent_3 = (Lazy.force _lh_takeDigits_arg2_1) in
      (match _lh_matchIdent_3 with
        | `LH_N -> 
          (failwith "error")
        | `LH_C(_lh_takeDigits_LH_C_0_1, _lh_takeDigits_LH_C_1_1) -> 
          (`LH_C(_lh_takeDigits_LH_C_0_1, ((takeDigits__d0__d0__d0 (_lh_takeDigits_arg1_1 - 1)) ((ratTrans__d0__d0__d0 (`LH_P4(10, 0, 0, 1))) _lh_takeDigits_LH_C_1_1))))
        | _ -> 
          (failwith "error")))
  else
    (`LH_N))
and testDigitsOfE1_nofib__d0__d0__d0 _lh_testDigitsOfE1_nofib_arg1_1 =
  ((takeDigits__d0__d0__d0 _lh_testDigitsOfE1_nofib_arg1_1) eContFrac__d0__d0__d0);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_DigitsOfE1_nofib" (fun () -> ignore ((testDigitsOfE1_nofib__d0 300)));
  Bench.Test.create ~name:"lumberhack_DigitsOfE1_nofib" (fun () -> ignore ((testDigitsOfE1_nofib__d0__d0 300)));
  Bench.Test.create ~name:"lumberhack_pop_out_DigitsOfE1_nofib" (fun () -> ignore ((testDigitsOfE1_nofib__d0__d0__d0 300)));
])