(*
touch ./Tak_nofib.mli && ocamlc ./Tak_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Tak_nofib.ml -o "./Tak_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Tak_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec tak__d0 _lh_tak_arg1_1 _lh_tak_arg2_1 _lh_tak_arg3_1 =
  (if (not (_lh_tak_arg2_1 < _lh_tak_arg1_1)) then
    _lh_tak_arg3_1
  else
    (((tak__d0 (((tak__d0 (_lh_tak_arg1_1 - 1)) _lh_tak_arg2_1) _lh_tak_arg3_1)) (((tak__d0 (_lh_tak_arg2_1 - 1)) _lh_tak_arg3_1) _lh_tak_arg1_1)) (((tak__d0 (_lh_tak_arg3_1 - 1)) _lh_tak_arg1_1) _lh_tak_arg2_1)));;
let rec testTak_nofib__d0 _lh_testTak_nofib_arg1_1 =
  (((tak__d0 31) 16) 8);;

(* lumberhack *)
let rec tak__d0__d0 _lh_tak_arg1_0 _lh_tak_arg2_0 _lh_tak_arg3_0 =
  (if (not (_lh_tak_arg2_0 < _lh_tak_arg1_0)) then
    _lh_tak_arg3_0
  else
    (((tak__d0__d0 (((tak__d0__d0 (_lh_tak_arg1_0 - 1)) _lh_tak_arg2_0) _lh_tak_arg3_0)) (((tak__d0__d0 (_lh_tak_arg2_0 - 1)) _lh_tak_arg3_0) _lh_tak_arg1_0)) (((tak__d0__d0 (_lh_tak_arg3_0 - 1)) _lh_tak_arg1_0) _lh_tak_arg2_0)));;
let rec testTak_nofib__d0__d0 _lh_testTak_nofib_arg1_0 =
  (((tak__d0__d0 31) 16) 8);;

(* lumberhack_pop_out *)
let rec tak__d0__d0__d0 _lh_tak_arg1_1 _lh_tak_arg2_1 _lh_tak_arg3_1 =
  (if (not (_lh_tak_arg2_1 < _lh_tak_arg1_1)) then
    _lh_tak_arg3_1
  else
    (((tak__d0__d0__d0 (((tak__d0__d0__d0 (_lh_tak_arg1_1 - 1)) _lh_tak_arg2_1) _lh_tak_arg3_1)) (((tak__d0__d0__d0 (_lh_tak_arg2_1 - 1)) _lh_tak_arg3_1) _lh_tak_arg1_1)) (((tak__d0__d0__d0 (_lh_tak_arg3_1 - 1)) _lh_tak_arg1_1) _lh_tak_arg2_1)));;
let rec testTak_nofib__d0__d0__d0 _lh_testTak_nofib_arg1_1 =
  (((tak__d0__d0__d0 31) 16) 8);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Tak_nofib" (fun () -> ignore ((testTak_nofib__d0 0)));
  Bench.Test.create ~name:"lumberhack_Tak_nofib" (fun () -> ignore ((testTak_nofib__d0__d0 0)));
  Bench.Test.create ~name:"lumberhack_pop_out_Tak_nofib" (fun () -> ignore ((testTak_nofib__d0__d0__d0 0)));
])
